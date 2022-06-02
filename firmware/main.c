#include "config.h"

// Declara��o das bibliotecas padr�o da linguagem C.
#include <stdio.h>
//#include <stdlib.h> // comando ftoa().

// Declara��o das bibliotecas com as configura��es e funcionalidades do PIC.
#include "usart.h"
//#include "adc.h"
#include "timers.h"
//#include "lcd.h"
//#include "i2c.h"
//#include "spi.h"
//#include "eeprom.h"
#include "pwm.h"


#define min_val(a,b) (((a)<(b))?(a):(b))
#define max_val(a,b) (((a)>(b))?(a):(b))

// Vari�veis Globais de Controle.

// Configura��es para formata��o de dados de sa�da.



unsigned int pulsos = 0;
unsigned int rpm = 0;
unsigned int contagens_tm0 = 0;
unsigned int setpoint = 3308;
int erro_atual = 0;
int erro_anterior = 0;
int variacao = 0;
int pwm = 0;
	
	
//---------------------------------------------------------------------

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

//---------------------------------------------------------------------


void fuzy(){
	float rule = 0.0;
	int x = 0;
	float y = 0;
	int total_area = 0;
	int soma = 0;

	// 1� regra - se a proximidade � alta ent�o o ajuste � baixo
	if (erro_atual <= 100)
	{
		// Fuzzificar as entradas.
		
		// Aplica��o dos operadores Fuzzy.
		rule = trapmf(erro_atual,-1,0,1,100);

		// Aplica��o do M�todo de Implica��o (valores m�nimos).
		x=0;
		y=0;
		for (int a=0; a<=15; a++)
		{
			y = trapmf(x,-1,0,0,5);
				
			total_area = (int)(total_area + (y >= rule)?rule:y);
			soma = soma + x*(y >= rule)?rule:y;
			x++;
		}
	}

	x = 0;
	rule = 0.0f;
	// 2� regra - se o erro e a varia��o � baixa ent�o o ajuste � baixo
	if (erro_atual >= 100 && erro_atual <= 1000 && variacao < 200)
	{
		// Fuzzificar as entradas.
		// Aplica��o dos operadores Fuzzy.
		float rule = max_val(trapmf(erro_atual,-1,0,800,1500),trapmf(variacao,-1,0,1,200));

		 // Aplica��o do M�todo de Implica��o (valores m�nimos).
		x=0;

		for (int a=0; a<=15; a++)
		{
			y = trapmf(x,2,5,5,10);
				
			total_area = (int)(total_area + (y >= rule)?rule:y);
			soma = soma + x*(y >= rule)?rule:y;
			x++;

		}
	}

	char buf[10];
	sprintf(buf,"%i", (int)(100*rule));
	USART_WriteString(buf);
	USART_WriteChar('\n');
	x = 0;

	// 3� regra - se o erro e baixo e a varia��o � alta e ent�o o ajuste � medio
	if (erro_atual >= 100 && erro_atual <= 1000 && variacao >= 200)
	{
		// Fuzzificar as entradas.
		// Aplica��o dos operadores Fuzzy.
		 rule = max_val(trapmf(erro_atual,50,800,800,1550),trapmf(variacao,200,500,2000,2001));


		x=0;

		for (int a=0; a<=15; a++)
		{

			y = trapmf(x,2,5,5,10);
				
			total_area = (int)(total_area + (y >= rule)?rule:y);
			soma = soma + x*(y >= rule)?rule:y;
			x++;
		}
	}

	x = 0;

	// 4� regra - se o erro � alto ent�o o ajuste � alto
	if (erro_atual > 1001)
	{
		// Fuzzificar as entradas.

		// Aplica��o dos operadores Fuzzy.
		float rule = trapmf(erro_atual, 1001,1500,2000,2001);

		// Aplica��o do M�todo de Implica��o (valores m�nimos).


		for (int a=0; a<=15; a++)
		{
			y = trapmf(x,5,10,15,16);
			total_area = (int)(total_area + (y >= rule)?rule:y);
			soma = soma + x*(y >= rule)?rule:y;
			x++;
		}
	}

	// Aplica��o do M�todo de Agrega��o.
	/*for (int a=0; a<=15; a++)
	{
		if (a >= 0 && a <= 5)
		{
			total_area = total_area+reajusteBaixo[a];
			soma = soma + (x*reajusteBaixo[a]);
		}

		if (a >= 5 && a <= 10)
		{
			total_area = total_area+reajusteMedio[a];
			soma = soma + (x*reajusteMedio[a]);
		}

		if (a >= 10 && a <= 15)
		{
			total_area = total_area+reajusteAlto[a];
			soma = soma + (x*reajusteAlto[a]);
		}
		x++;
	}*/

	float reajuste = 0.0f;
	// Implica��o dos antecedentes pelo consequente.
	if(total_area!= 0){
		reajuste = soma/(total_area);
	}else{
		reajuste = 0;
	}	
    // C�lculo da Centr�ide.
	
	pwm = (int)max_val(min_val(pwm + ((int) min_val(reajuste, erro_atual)) * (setpoint > rpm ? 1 : -1) * 1, 1023), 0);
	PWM_DutyCycle2(pwm);

}

//-----------------------------------------------------------------------------
void interrupt ISR(void)
{
	// Tratamento da interrup��o do buffer de recep��o.
	if (PIR1bits.RCIF)
	{
		
		setpoint = (USART_ReceiveChar() -48) *1000;
		
		// Flag de status da Interrup��o do buffer de recep��o da USART.
		PIR1bits.RCIF = 0;
	}

	// Tratamento da interrup��o do conversor A/D.
	

	// Tratamento da interrup��o do Timer0.
	// Controle da Interrup��o do TIMER0.
	if (INTCONbits.T0IF)
	{
		// Carrega o valor equivalente a contagens de 1ms.
		TIMER0_Set(238);

		// Controle do n�mero de contagens de tempo.
		if (contagens_tm0 < 499) // (n-1) n=10ms, n=20ms, n=500ms
		{
			// Vari�vel de controle/incremento do per�odo de tempo.
			contagens_tm0++;

			// Vari�is de controle (n�vel alto).
			PORTBbits.RB6 = 1;
		}
		else
		{
			// Vari�vel de controle do per�odo de tempo.
			contagens_tm0 = 0;

			// C�lculo das rota��es por minuto.
			pulsos = (TMR1H << 8) + TMR1L;
			rpm = (int)((pulsos / 7.0) * 120);

			variacao = erro_atual;
			erro_atual = (setpoint - rpm);
			erro_atual = erro_atual < 0 ? -erro_atual:erro_atual;
			variacao = erro_atual - variacao;
			variacao = variacao < 0 ? -variacao:variacao; 
			
			fuzy();


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
	/*if (PIR1bits.TMR1IF)
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
	}*/
}

//-----------------------------------------------------------------------------
void main(void)
{
	TRISA = 0b00000001; // Configura��o dos canais anal�gicos do PORTA.
	PORTA = 0b00000001; // Inicializa��o dos canais anal�gicos do PORTA.
	TRISB = 0b00000000; // Configura��o das entradas/sa�das do PORTB (RB4 e RB5 PWM).
	PORTB = 0b00000000; // Inicializa��o das entradas/sa�das do PORTB.
	TRISC = 0b10000001; // Configura��o do PORTC - pinos RC0(TIMER), RC7(RX) e RC6(TX).
	PORTC = 0b11000000; // Inicializa��o dos pinos RX e TX em n�vel alto (Modo IDLE).
	TRISD = 0b00000000; // Configura��o das entradas/sa�das do PORTD.
	PORTD = 0b00000000; // Inicializa��o das das entradas/sa�das do PORTD.
	TRISE = 0b00000000; // Configura��o dos canais anal�gicos do PORTE.
	PORTE = 0b00000000; // Inicializa��o dos canais anal�gicos do PORTE.

	// Configura��es do TIMER1 para contagem de pulsos externos.
	T1CON = 0x03;
	TMR1L = 0x00;
	TMR1H = 0x00;

	// Inicializa��o dos perif�ricos do microcontrolador.
	USART_Init(115200); // Inicializa��o do m�dulo USART.
	TIMER0_Init();		// Inicializa��o do m�dulo do Timer0.
	//ADC_Init();			// Inicializa��o do m�dulo do conversor A/D.
	PWM_Init();			// 1.125khz, prescaler 16, 1024 passos.
	//LCD_Init();			// Inicializa��o do LCD.

	// Ativa��o das interrup��es do microcontrolador.
	INTCONbits.PEIE = 1; // Habilita Interrup��o de Perif�ricos do Microcontrolador.
	INTCONbits.GIE = 1;	 // Habilita Interrup��o Global.

	// Rotinas do USART.
	// USART_WriteString("Inicializando o PIC16F877A\n\r");
	// USART_WriteString("USART: 115.200bps\n\r");

	// Rotinas do LCD.

	//LCD_Cursor(0, 0);					 // Posicionamento da string na linha 0 e coluna 0;
	//LCD_WriteString("Inicializando..."); // Escrita da string no LCD.

	// Inicia os m�dulos PWM desligados.
	PWM_DutyCycle1(0);
	PWM_DutyCycle2(0);

	// Seta o TIMER 0 para estouro de 1 em 1ms.
	TIMER0_Set(238);

	// Delay para estabiliza��o.
	__delay_ms(1000);

	// La�o principal do firmware.
	while (1)
	{
		// Formata os dados de rota��o para apresenta��o.
		//sprintf(display, "%04d", rpm);
		//clearDisplay();
		//itoa(rpm, display, 10);

		// Apresenta as informa��es na USART.
		// USART_WriteString(display);
		// USART_WriteString("\n\r");

		// Apresenta as informa��es no LCD.
		//LCD_Clear();
		//LCD_Cursor(0, 0);
		//LCD_WriteString("RPM: ");
		//LCD_Cursor(0, 6);
		//LCD_WriteString(display);

		//__delay_ms(200);
	}
}