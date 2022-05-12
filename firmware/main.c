#define PASSO_PWM 100
#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))
#define FUZZY_AND(a,b) (((a)<(b))?(a):(b))
#define FUZZY_OR(a,b) (((a)>(b))?(a):(b))

// Declaração das configurações e funcionalidades do PIC.
#include "config.h"

// Declaração das bibliotecas padrão da linguagem C.
#include <stdio.h>
#include <stdlib.h>		// comando ftoa().

// Declaração das bibliotecas com as configurações e funcionalidades do PIC.
#include "usart.h"
#include "adc.h"
#include "timers.h"
#include "lcd.h"
#include "i2c.h"
#include "spi.h"
#include "eeprom.h"
#include "pwm.h"

//Variáveis Globais de Controle.
unsigned short ADCResult = 0;
float temp_lida = 0;

//Configurações para formatação de dados de saída.
unsigned char display[10];
unsigned char buffer[7];
unsigned char receivedBuffer[7];

int receiveIndex = 0;

int status = 0;
unsigned int pulsos = 0;
unsigned int rpm = 0;

int ligado = 1;

unsigned int contagens_tm0 = 0;
unsigned int contador_rb6 = 0;
unsigned int tempo_rb6 = 0;

unsigned int setpoint = 0;
int erro_atual = 0;
int erro_anterior = 0;
int delta = 0;

float fuzzy_erro = 0;
float fuzzy_delta = 0;
float fuzzy = 0;
float variacao_fuzzy = 0;

unsigned int pwm = 0;



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


void send()
{

  //Formatação do Pacote de dados.
  buffer[0] = '#';
  buffer[1] = '$';
  buffer[2] = ':';

  // Medição
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
	// Tratamento da interrupção do buffer de recepção.
	if (PIR1bits.RCIF)
	{
		unsigned char byte = USART_ReceiveChar();
		if (byte == '#')
		{
			receiveIndex = 0;
		} else {
			receiveIndex++;
		}
		receivedBuffer[receiveIndex] = byte;

		if (receiveIndex >= 6) {
			receiveIndex = 0;
			
			if (receivedBuffer[1] == 'A' || receivedBuffer[2] == 'A' || receivedBuffer[3] == 'A') {
				send();
			} else if (receivedBuffer[0] == '#' && receivedBuffer[1] == '$' && receivedBuffer[2] == ':') {
				unsigned char checksum = 0x00;
				for (unsigned char index = 0; index < 6; index++) {
					checksum ^= receivedBuffer[index];
				}

				if (receivedBuffer[6] == checksum) {
					setpoint = (receivedBuffer[3] << 8) + (receivedBuffer[4]);
				}



			}
			

		}

		// Flag de status da Interrupção do buffer de recepção da USART.
		PIR1bits.RCIF = 0;
	}

	// Tratamento da interrupção do conversor A/D.
	if (PIR1bits.ADIF)
	{
		// Caso a interrupção seja ativada a manipulação dos dados pode ser feita aqui!	

		// Limpa a flag da interrupção do conversor A/D.
		PIR1bits.ADIF = 0;	
	}

	// Tratamento da interrupção do Timer0.
	// Controle da Interrupção do TIMER0.
	if (INTCONbits.T0IF)
	{
		// Carrega o valor equivalente a contagens de 1ms.
		TIMER0_Set(238);

		// Controle do número de contagens de tempo.
		if (contagens_tm0 < 499)		// (n-1) n=10ms, n=20ms, n=500ms
		{	
			// Variável de controle/incremento do período de tempo.  	
			contagens_tm0++;

     		// Variáveis de controle (nível alto).
			PORTBbits.RB6 = 1;
		}
		else
		{
			// Variável de controle do período de tempo.
			contagens_tm0 = 0;

			// Cálculo das rotações por minuto.
			pulsos = (TMR1H << 8) + TMR1L;
			rpm = ((pulsos / 7.0) * 120);

			erro_anterior = erro_atual;
			erro_atual = setpoint - rpm;
			delta = erro_atual - erro_anterior;

			fuzzy_erro = 1 - trimf(erro_atual, -9900, 0, 9900);
			fuzzy_delta = 1 - trimf(delta, -9900, 0, 9900);

			fuzzy = FUZZY_OR(fuzzy_erro, fuzzy_delta);

            variacao_fuzzy = PASSO_PWM * (erro_atual > 0 ? 1 : -1) * fuzzy;

			if (ligado) {
				pwm = MAX(MIN(pwm + (int) variacao_fuzzy, 1023), 0);
			} else {
				pwm = 0;
			}
            
			PWM_DutyCycle2(pwm);

			// Limpa registrador para nova contagem.
			TMR1L = 0x00;
			TMR1H = 0x00;

			// Variáveis de controle (nível baixo).
			PORTBbits.RB6 = 0;
		}

		// Resetar a flag do Timer0 para uma nova contagem.
		INTCONbits.T0IF = 0;
	}

	// Tratamento da interrupção do Timer1.
	if (PIR1bits.TMR1IF) 
	{
		// Caso a interrupção seja ativada a manipulação dos dados pode ser feita aqui!	

		// Resetar a flag do Timer1 para uma nova contagem.
        PIR1bits.TMR1IF = 0;		
	}

	// Tratamento da interrupção da SPI.
	if (PIR1bits.SSPIF) 
	{
		// Caso a interrupção seja ativada a manipulação dos dados pode ser feita aqui!	

		// Resetar a flag do SPI para uma nova contagem.
        PIR1bits.SSPIF = 0;		
	}
}

//-----------------------------------------------------------------------------
void main(void)
{
    TRISA = 0b00000001;		// Configuração dos canais analógicos do PORTA.
    PORTA = 0b00000001;  	// Inicialização dos canais analógicos do PORTA.
    TRISB = 0b00000000;		// Configuração das entradas/saídas do PORTB (RB4 e RB5 PWM).
    PORTB = 0b00000000;  	// Inicialização das entradas/saídas do PORTB.
	TRISC = 0b10000001;		// Configuração do PORTC - pinos RC0(TIMER), RC7(RX) e RC6(TX).
    PORTC = 0b11000000; 	// Inicialização dos pinos RX e TX em nível alto (Modo IDLE).
    TRISD = 0b00000000;		// Configuração das entradas/saídas do PORTD.		
    PORTD = 0b00000000;  	// Inicialização das das entradas/saídas do PORTD.
    TRISE = 0b00000000;		// Configuração dos canais analógicos do PORTE.
    PORTE = 0b00000000;  	// Inicialização dos canais analógicos do PORTE.

	// Configurações do TIMER1 para contagem de pulsos externos.
	T1CON = 0x03;
	TMR1L = 0x00;
	TMR1H = 0x00;
	
	// Inicialização dos periféricos do microcontrolador.
	USART_Init(115200);		// Inicialização do módulo USART.
	TIMER0_Init();			// Inicialização do módulo do Timer0.
	ADC_Init();				// Inicialização do módulo do conversor A/D.
	PWM_Init();	 			// 1.125khz, prescaler 16, 1024 passos.
	LCD_Init();				// Inicialização do LCD.
	
	// Ativação das interrupções do microcontrolador.
	INTCONbits.PEIE	= 1;	// Habilita Interrupção de Periféricos do Microcontrolador.
	INTCONbits.GIE	= 1;	// Habilita Interrupção Global.

	// Rotinas do USART.
 	// USART_WriteString("Inicializando o PIC16F877A\n\r");
 	// USART_WriteString("USART: 115.200bps\n\r");

	// Rotinas do LCD.
	LCD_Init();								// Inicialização do LCD.
	LCD_Cursor(0,0);						// Posicionamento da string na linha 0 e coluna 0;
	LCD_WriteString("Inicializando...");	// Escrita da string no LCD.

	// Inicia os módulos PWM desligados.
	PWM_DutyCycle1(0);
	PWM_DutyCycle2(0);

	// Seta o TIMER 0 para estouro de 1 em 1ms.
	TIMER0_Set(238);

	// Delay para estabilização.
	__delay_ms(1000);

	// Laço principal do firmware.
	while(1)
	{
		// Formata os dados de rotação para apresentação.
		sprintf(display,"%04d", rpm);

		// Apresenta as informações na USART.
		//USART_WriteString(display);
 		//USART_WriteString("\n\r");

     	// Apresenta as informações no LCD.
		LCD_Clear();
		LCD_Cursor(0,0);
		LCD_WriteString("RPM: ");
		LCD_Cursor(0,6);
		LCD_WriteString(display);

		__delay_ms(200);
	}
}
