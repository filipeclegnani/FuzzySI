#define PASSO_PWM 100
#define MIN(a,b) (((a) < (b)) ? (a) : (b))
#define MAX(a,b) (((a) > (b)) ? (a) : (b))
#define FUZZY_AND(a,b) (((a) < (b)) ? (a) : (b))
#define FUZZY_OR(a,b) (((a) > (b)) ? (a) : (b))

// Declaraï¿½ï¿½o das configuraï¿½ï¿½es e funcionalidades do PIC.
#include "config.h"

// Declaraï¿½ï¿½o das bibliotecas padrï¿½o da linguagem C.
#include <stdio.h>
#include <stdlib.h> // comando ftoa().

// Declaraï¿½ï¿½o das bibliotecas com as configuraï¿½ï¿½es e funcionalidades do PIC.
#include "usart.h"
#include "adc.h"
#include "timers.h"
#include "lcd.h"
#include "i2c.h"
#include "spi.h"
#include "eeprom.h"
#include "pwm.h"

// Variï¿½veis Globais de Controle.
unsigned short ADCResult = 0;
float temp_lida = 0;

// Configuraï¿½ï¿½es para formataï¿½ï¿½o de dados de saï¿½da.
unsigned char display[10];

int receiveIndex = 0;

int status = 0;
unsigned int pulsos = 0;
unsigned int rpm = 0;

int ligado = 1;

unsigned int contagens_tm0 = 0;
unsigned int contador_rb6 = 0;
unsigned int tempo_rb6 = 0;

unsigned int setpoint = 3308;

int erro_atual = 0;




void clearDisplay(){
	display[0] = 0;
	display[1] = 0;
	display[2] = 0;
	display[3] = 0;
	display[4] = 0;
	display[5] = 0;
	display[6] = 0;
	display[7] = 0;
	display[8] = 0;
	display[9] = 0;
}	




float triangular(float x, float a, float b, float c)
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

	return (ua);
}

//---------------------------------------------------------------------

float trapezoidal(float x, float a, float b, float c, float d)
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

	return (ua);
}

void fuzzy(){
	// fuzzyfica 	
	float aceleraM = trapezoidal(erro_atual, -4000, -4300, -6000, -6000);
	float acelera  = trapezoidal(erro_atual, -80, -200, -3900, -4200);
	float mantem   = triangular (erro_atual, -100, -0, 100);
	float freia    = trapezoidal(erro_atual, 80, 200, 3900, 4200);
	float freiaM   = trapezoidal(erro_atual, 4000, 4300, 6000, 6000);
	// operador OR(max), Implicação e Agragação
	float maior = MAX(MAX(MAX(MAX(	// seleciona o maior número
		freiaM>.1?.1:freiaM,		// maxiomo 0.1
		freia>.25?.25:freia),		// maximo .25
		mantem>0.5?0.5:mantem),		// maximo .5
		acelera>.75?.75:acelera),	// maximo .75
		aceleraM);					// maximo 1
	// 
	// 
	// Defuzzyficacao
	PWM_DutyCycle2((int)(maior*1023));/*
	LCD_Clear();
	LCD_Cursor(0, 0);
	clearDisplay();
	itoa((int)(erro_atual), display, 10);
	LCD_WriteString(display);
	LCD_Cursor(1, 0);
	clearDisplay();
	itoa((int)(maior*1023), display, 10);
	LCD_WriteString(display);*/
}

//-----------------------------------------------------------------------------
void interrupt ISR(void)
{
	// Tratamento da interrupï¿½ï¿½o do buffer de recepï¿½ï¿½o.
	if (PIR1bits.RCIF)
	{

		// Flag de status da Interrupï¿½ï¿½o do buffer de recepï¿½ï¿½o da USART.
		PIR1bits.RCIF = 0;
	}

	// Tratamento da interrupï¿½ï¿½o do conversor A/D.
	if (PIR1bits.ADIF)
	{
		// Caso a interrupï¿½ï¿½o seja ativada a manipulaï¿½ï¿½o dos dados pode ser feita aqui!

		// Limpa a flag da interrupï¿½ï¿½o do conversor A/D.
		PIR1bits.ADIF = 0;
	}

	// Tratamento da interrupï¿½ï¿½o do Timer0.
	// Controle da Interrupï¿½ï¿½o do TIMER0.
	if (INTCONbits.T0IF)
	{
		// Carrega o valor equivalente a contagens de 1ms.
		TIMER0_Set(238);

		// Controle do nï¿½mero de contagens de tempo.
		if (contagens_tm0 < 499) // (n-1) n=10ms, n=20ms, n=500ms
		{
			// Variï¿½vel de controle/incremento do perï¿½odo de tempo.
			contagens_tm0++;

			// Variï¿½veis de controle (nï¿½vel alto).
			PORTBbits.RB6 = 1;
		}
		else
		{
			// Variï¿½vel de controle do perï¿½odo de tempo.
			contagens_tm0 = 0;

			// Cï¿½lculo das rotaï¿½ï¿½es por minuto.
			pulsos = (TMR1H << 8) + TMR1L;
			rpm = ((pulsos / 7.0) * 120);


			erro_atual = setpoint - rpm;
			fuzzy();


			// Limpa registrador para nova contagem.
			TMR1L = 0x00;
			TMR1H = 0x00;

			// Variï¿½veis de controle (nï¿½vel baixo).
			PORTBbits.RB6 = 0;
		}

		// Resetar a flag do Timer0 para uma nova contagem.
		INTCONbits.T0IF = 0;
	}

	// Tratamento da interrupï¿½ï¿½o do Timer1.
	if (PIR1bits.TMR1IF)
	{
		// Caso a interrupï¿½ï¿½o seja ativada a manipulaï¿½ï¿½o dos dados pode ser feita aqui!

		// Resetar a flag do Timer1 para uma nova contagem.
		PIR1bits.TMR1IF = 0;
	}

	// Tratamento da interrupï¿½ï¿½o da SPI.
	if (PIR1bits.SSPIF)
	{
		// Caso a interrupï¿½ï¿½o seja ativada a manipulaï¿½ï¿½o dos dados pode ser feita aqui!

		// Resetar a flag do SPI para uma nova contagem.
		PIR1bits.SSPIF = 0;
	}
}

//-----------------------------------------------------------------------------
void main(void)
{
	TRISA = 0b00000001; // Configuraï¿½ï¿½o dos canais analï¿½gicos do PORTA.
	PORTA = 0b00000001; // Inicializaï¿½ï¿½o dos canais analï¿½gicos do PORTA.
	TRISB = 0b00000000; // Configuraï¿½ï¿½o das entradas/saï¿½das do PORTB (RB4 e RB5 PWM).
	PORTB = 0b00000000; // Inicializaï¿½ï¿½o das entradas/saï¿½das do PORTB.
	TRISC = 0b10000001; // Configuraï¿½ï¿½o do PORTC - pinos RC0(TIMER), RC7(RX) e RC6(TX).
	PORTC = 0b11000000; // Inicializaï¿½ï¿½o dos pinos RX e TX em nï¿½vel alto (Modo IDLE).
	TRISD = 0b00000000; // Configuraï¿½ï¿½o das entradas/saï¿½das do PORTD.
	PORTD = 0b00000000; // Inicializaï¿½ï¿½o das das entradas/saï¿½das do PORTD.
	TRISE = 0b00000000; // Configuraï¿½ï¿½o dos canais analï¿½gicos do PORTE.
	PORTE = 0b00000000; // Inicializaï¿½ï¿½o dos canais analï¿½gicos do PORTE.

	// Configuraï¿½ï¿½es do TIMER1 para contagem de pulsos externos.
	T1CON = 0x03;
	TMR1L = 0x00;
	TMR1H = 0x00;

	// Inicializaï¿½ï¿½o dos perifï¿½ricos do microcontrolador.
	USART_Init(115200); // Inicializaï¿½ï¿½o do mï¿½dulo USART.
	TIMER0_Init();		// Inicializaï¿½ï¿½o do mï¿½dulo do Timer0.
	ADC_Init();			// Inicializaï¿½ï¿½o do mï¿½dulo do conversor A/D.
	PWM_Init();			// 1.125khz, prescaler 16, 1024 passos.
	LCD_Init();			// Inicializaï¿½ï¿½o do LCD.

	// Ativaï¿½ï¿½o das interrupï¿½ï¿½es do microcontrolador.
	INTCONbits.PEIE = 1; // Habilita Interrupï¿½ï¿½o de Perifï¿½ricos do Microcontrolador.
	INTCONbits.GIE = 1;	 // Habilita Interrupï¿½ï¿½o Global.

	// Rotinas do USART.
	// USART_WriteString("Inicializando o PIC16F877A\n\r");
	// USART_WriteString("USART: 115.200bps\n\r");

	// Rotinas do LCD.
	LCD_Init();							 // Inicializaï¿½ï¿½o do LCD.
	LCD_Cursor(0, 0);					 // Posicionamento da string na linha 0 e coluna 0;
	LCD_WriteString("Inicializando..."); // Escrita da string no LCD.

	// Inicia os mï¿½dulos PWM desligados.
	PWM_DutyCycle1(0);
	PWM_DutyCycle2(0);

	// Seta o TIMER 0 para estouro de 1 em 1ms.
	TIMER0_Set(238);

	// Delay para estabilizaï¿½ï¿½o.
	__delay_ms(1000);

	// Laï¿½o principal do firmware.
	while (1)
	{
		// Formata os dados de rotaï¿½ï¿½o para apresentaï¿½ï¿½o.
		sprintf(display, "%04d", rpm);

		// Apresenta as informaï¿½ï¿½es na USART.
		// USART_WriteString(display);
		// USART_WriteString("\n\r");

		// Apresenta as informaï¿½ï¿½es no LCD.
		LCD_Clear();
		LCD_Cursor(0, 0);
		LCD_WriteString("RPM: ");
		LCD_Cursor(0, 6);
		LCD_WriteString(display);

		__delay_ms(200);
	}
}
