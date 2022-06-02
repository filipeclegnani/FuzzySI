#define PASSO_PWM 100
#define STEP 15
#define MULTIPLICADOR 1
#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))
#define FUZZY_AND(a,b) (((a)<(b))?(a):(b))
#define FUZZY_OR(a,b) (((a)>(b))?(a):(b))

// Declara��o das configura��es e funcionalidades do PIC.
#include "config.h"

// Declara��o das bibliotecas padr�o da linguagem C.
//#include <stdio.h>
#include <stdlib.h>

// Declara��o das bibliotecas com as configura��es e funcionalidades do PIC.
#include "usart.h"
#include "adc.h"
#include "timers.h"
//#include "lcd.h"
#include "i2c.h"
#include "spi.h"
#include "eeprom.h"
#include "pwm.h"

//Vari�veis Globais de Controle.
unsigned short ADCResult = 0;

//Configura��es para formata��o de dados de sa�da.
unsigned char buffer[7];

int receiveIndex = 0;

int status = 0;
unsigned int pulsos = 0;
unsigned int rpm = 0;

int ligado = 1;

unsigned int contagens_tm0 = 0;
unsigned int contador_rb6 = 0;
unsigned int tempo_rb6 = 0;

unsigned int setpoint = 5000;
int erro_atual = 0;
int erro_anterior = 0;
int delta = 0;

float reajuste_baixo[STEP + 1];
float reajuste_medio[STEP + 1];
float reajuste_grande[STEP + 1];

unsigned int pwm = 0;

float fiDistancia = 0;
float fiDelta    = 0;
float foReajuste = 0;
float rule = 0;

// Vari�veis de auxilio ao c�lculo da centr�ide.
float sum = 0;
float total_area = 0;
float reajuste = 0;

float x=0;
float y=0;


float trimf(float x, float a, float b, float c)
{
    float ua = 0;

    if (x <= a)
        ua = 0;
    else if ((a < x) && (x <= b))
        ua = ((x - a) / (b - a));
    else if ((b < x) && (x <= c))
        ua = ((x - c) / (b - c));
    else if (x > c)
        ua = 0;

    return(ua);
}


// Fun��o Trapezoidal
float trapmf(float x, float a, float b, float c, float d)
{
    float ua = 0;

    if (x <= a)
        ua = 0;
    else if ((a < x) && (x <= b))
        ua = ((x - a) / (b - a));
    else if ((b <= x) && (x <= c))
        ua = 1;
    else if ((c < x) && (x <= d))
        ua = ((d - x) / (d - c));
    else if (x > d)
        ua = 0;

    return(ua);
}


void send()
{

  //Formata��o do Pacote de dados.
  buffer[0] = '#';
  buffer[1] = '$';
  buffer[2] = ':';

  // Medi��o
  buffer[3] = (rpm >> 8) & 0xFF;
  buffer[4] = rpm & 0xFF;
  buffer[5] = 0;

  unsigned char checksum = 0x00;
  for (unsigned char index = 0; index < 6; index++)
  {
    USART_WriteChar(buffer[index]);
    checksum ^= buffer[index];
  }
  buffer[6] = checksum;
  USART_WriteChar(buffer[6]);
}


//-----------------------------------------------------------------------------
void interrupt ISR(void)
{
	// Tratamento da interrup��o do buffer de recep��o.
	if (PIR1bits.RCIF)
	{
		unsigned char byte = USART_ReceiveChar();
		if (byte == '#')
		{
			receiveIndex = 0;
		} else {
			receiveIndex++;
		}

		buffer[receiveIndex] = byte;

		if (receiveIndex >= 6) {
			receiveIndex = 0;
			
			if (buffer[1] == 'A' || buffer[2] == 'A' || buffer[3] == 'A') {
				send();
			} else if (buffer[0] == '#' && buffer[1] == '$' && buffer[2] == ':') {
				unsigned char checksum = 0x00;
				for (unsigned char index = 0; index < 6; index++) {
					checksum ^= buffer[index];
				}

				if (buffer[6] == checksum) {
					setpoint = (buffer[3] << 8) + (buffer[4]);
				}

			}
		}

		// Flag de status da Interrup��o do buffer de recep��o da USART.
		PIR1bits.RCIF = 0;
	}

	// Tratamento da interrup��o do conversor A/D.
	if (PIR1bits.ADIF)
	{
		// Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Limpa a flag da interrup��o do conversor A/D.
		PIR1bits.ADIF = 0;	
	}

	// Tratamento da interrup��o do Timer0.
	// Controle da Interrup��o do TIMER0.
	if (INTCONbits.T0IF)
	{
		// Carrega o valor equivalente a contagens de 1ms.
		TIMER0_Set(238);

		// Controle do n�mero de contagens de tempo.
		if (contagens_tm0 < 499)		// (n-1) n=10ms, n=20ms, n=500ms
		{	
			// Vari�vel de controle/incremento do per�odo de tempo.  	
			contagens_tm0++;

     		// Vari�veis de controle (n�vel alto).
			PORTBbits.RB6 = 1;
		}
		else
		{
			// Vari�vel de controle do per�odo de tempo.
			contagens_tm0 = 0;

			// C�lculo das rota��es por minuto.
			pulsos = (TMR1H << 8) + TMR1L;
			rpm = (int) ((pulsos / 7.0) * 120);

			erro_anterior = erro_atual;
			erro_atual = MIN(abs(setpoint - rpm), 2000);
			delta = MAX(MIN(abs(erro_atual - erro_anterior), 1000), 1);
					
			// 1� regra - Se a proximidade � exata, ent�o o reajuste � baixo
			if (erro_atual <= 100)
			{
				// Fuzzificar as entradas.
				fiDistancia = trapmf(erro_atual,-1,0,1,100);
		
				// Aplica��o dos operadores
				rule = fiDistancia;
		
				// Aplica��o do M�todo de Implica��o (valores m�nimos).
				x=0;
				y=0;
				for (int a=0; a<=STEP; a++)
				{
					y = trapmf(x,-1,0,0,5);
		
					if (y >= rule)
					{
						reajuste_baixo[a] = rule;
					}
					else
					{
						reajuste_baixo[a] = y;
					}
		
					x=x+1;
				}
			}
				
			// 2� regra - Se a proximidade � m�dia e est� em ajuste fino, o reajuste � baixo
			if (erro_atual >= 100 && erro_atual <= 1001 && delta <= 200)
			{
				// Fuzzificar as entradas.
				fiDistancia = trimf(erro_atual,50,800,1550);
				fiDelta = trapmf(delta,-1,0,1,200);
		
				// Aplica��o dos operadores
				rule = fiDistancia * (1 - fiDelta);
		
				 // Aplica��o do M�todo de Implica��o (valores m�nimos).
				x=0;
				y=0;
				for (int a=0; a<=STEP; a++)
				{
					y = trimf(x,2,5,10);
		
					if (y >= rule)
					{
						reajuste_baixo[a] = rule;
					}
					else
					{
						reajuste_baixo[a] = y;
					}
		
					x=x+1;
				}
			}
		
		
			// 3� regra - Se a proximidade � m�dia e est� em ajuste pesado, o reajuste � m�dio
			if (erro_atual >= 100 && erro_atual <= 1001 && delta >= 201)
			{
				// Fuzzificar as entradas.
				fiDistancia = trimf(erro_atual,50,800,1550);
				fiDelta = trapmf(delta,200,500,2000,2001);
		
				// Aplica��o dos operadores Fuzzy.
				rule = fiDistancia * fiDelta;
		
				 // Aplica��o do M�todo de Implica��o (valores m�nimos).
				x=0;
				y=0;
				for (int a=0; a<=STEP; a++)
				{
					y = trimf(x,2,5,10);
		
					if (y >= rule)
					{
						reajuste_medio[a] = rule;
					}
					else
					{
						reajuste_medio[a] = y;
					}
		
					x=x+1;
				}
			}
		
		
		
		
		
			// 4� regra - Se a proximidade � baixa, ent�o o reajuste � grande
			if (erro_atual >= 1001)
			{
				// Fuzzificar as entradas.
				fiDistancia = trapmf(erro_atual, 1001,1500,2000,2001);
		
				// Aplica��o dos operadores Fuzzy.
				rule = fiDistancia;
		
				// Aplica��o do M�todo de Implica��o (valores m�nimos).
				x=0;
				y=0;
				for (int a=0; a<=STEP; a++)
				{
					y = trapmf(x,5,10,15,16);
		
					if (y >= rule)
					{
						reajuste_grande[a] = rule;
					}
					else
					{
						reajuste_grande[a] = y;
					}
		
					x=x+1;
				}
			}
		
		
			// Aplica��o do M�todo de Agrega��o.
			// E implica��o dos antecedentes pelo consequente.
			x = 0;
			total_area = 0;
			sum = 0;
			for (int a=0; a<=STEP; a++)
			{
				if (a >= 0 && a <= 5)
				{
					total_area = total_area + reajuste_baixo[a];
					sum = sum + (x * reajuste_baixo[a]);
				}
		
				if (a >= 5 && a <= 10)
				{
					total_area = total_area + reajuste_medio[a];
					sum = sum + (x * reajuste_medio[a]);
				}
		
				if (a >= 10 && a <= STEP)
				{
					total_area = total_area + reajuste_grande[a];
					sum = sum + (x * reajuste_grande[a]);
				}
				x=x+1;
			}
		
			// C�lculo da Centr�ide.
			if (total_area != 0) {
			   reajuste = sum/total_area; 
			}  else {
		        reajuste = 0;
			}
		
			pwm = MAX(MIN(pwm + ((int) MIN(reajuste, erro_atual)) * (setpoint > rpm ? 1 : -1) * MULTIPLICADOR, 1023), 0);
            
			PWM_DutyCycle2(pwm);

			// Limpa registrador para nova contagem.
			TMR1L = 0x00;
			TMR1H = 0x00;

			// Vari�veis de controle (n�vel baixo).
			PORTBbits.RB6 = 0;
		}

		// Resetar a flag do Timer0 para uma nova contagem.
		INTCONbits.T0IF = 0;
	}

	// Tratamento da interrup��o do Timer1.
	if (PIR1bits.TMR1IF) 
	{
		// Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Resetar a flag do Timer1 para uma nova contagem.
        PIR1bits.TMR1IF = 0;		
	}

	// Tratamento da interrup��o da SPI.
	if (PIR1bits.SSPIF) 
	{
		// Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Resetar a flag do SPI para uma nova contagem.
        PIR1bits.SSPIF = 0;		
	}
}

//-----------------------------------------------------------------------------
void main(void)
{
    TRISA = 0b00000001;		// Configura��o dos canais anal�gicos do PORTA.
    PORTA = 0b00000001;  	// Inicializa��o dos canais anal�gicos do PORTA.
    TRISB = 0b00000000;		// Configura��o das entradas/sa�das do PORTB (RB4 e RB5 PWM).
    PORTB = 0b00000000;  	// Inicializa��o das entradas/sa�das do PORTB.
	TRISC = 0b10000001;		// Configura��o do PORTC - pinos RC0(TIMER), RC7(RX) e RC6(TX).
    PORTC = 0b11000000; 	// Inicializa��o dos pinos RX e TX em n�vel alto (Modo IDLE).
    TRISD = 0b00000000;		// Configura��o das entradas/sa�das do PORTD.		
    PORTD = 0b00000000;  	// Inicializa��o das das entradas/sa�das do PORTD.
    TRISE = 0b00000000;		// Configura��o dos canais anal�gicos do PORTE.
    PORTE = 0b00000000;  	// Inicializa��o dos canais anal�gicos do PORTE.

	// Configura��es do TIMER1 para contagem de pulsos externos.
	T1CON = 0x03;
	TMR1L = 0x00;
	TMR1H = 0x00;
	
	// Inicializa��o dos perif�ricos do microcontrolador.
	USART_Init(115200);		// Inicializa��o do m�dulo USART.
	TIMER0_Init();			// Inicializa��o do m�dulo do Timer0.
	ADC_Init();				// Inicializa��o do m�dulo do conversor A/D.
	PWM_Init();	 			// 1.125khz, prescaler 16, 1024 passos.
	//LCD_Init();				// Inicializa��o do LCD.
	
	// Ativa��o das interrup��es do microcontrolador.
	INTCONbits.PEIE	= 1;	// Habilita Interrup��o de Perif�ricos do Microcontrolador.
	INTCONbits.GIE	= 1;	// Habilita Interrup��o Global.

	// Inicia os m�dulos PWM desligados.
	PWM_DutyCycle1(0);
	PWM_DutyCycle2(0);

	// Seta o TIMER 0 para estouro de 1 em 1ms.
	TIMER0_Set(238);

	// Delay para estabiliza��o.
	__delay_ms(1000);

	// La�o principal do firmware.
	while(1)
	{
		__delay_ms(200);
	}
}