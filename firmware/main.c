#include "config.h"

// Declaraï¿½ï¿½o das bibliotecas padrï¿½o da linguagem C.
#include <stdio.h>
//#include <stdlib.h> // comando ftoa().

// Declaraï¿½ï¿½o das bibliotecas com as configuraï¿½ï¿½es e funcionalidades do PIC.
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

// Variï¿½veis Globais de Controle.

// Configuraï¿½ï¿½es para formataï¿½ï¿½o de dados de saï¿½da.



unsigned int pulsos = 0;
unsigned int rpm = 0;
unsigned int contagens_tm0 = 0;
unsigned int setpoint = 3308;
int erro_atual = 0;
int erro_anterior = 0;
int variacao = 0;
int pwm = 0;
	
	
//---------------------------------------------------------------------

// Função Trapezoidal
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

	// 1ª regra - se a proximidade é alta então o ajuste é baixo
	if (erro_atual <= 100)
	{
		// Fuzzificar as entradas.
		
		// Aplicação dos operadores Fuzzy.
		rule = trapmf(erro_atual,-1,0,1,100);

		// Aplicação do Método de Implicação (valores mínimos).
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
	// 2ª regra - se o erro e a variação é baixa então o ajuste é baixo
	if (erro_atual >= 100 && erro_atual <= 1000 && variacao < 200)
	{
		// Fuzzificar as entradas.
		// Aplicação dos operadores Fuzzy.
		float rule = max_val(trapmf(erro_atual,-1,0,800,1500),trapmf(variacao,-1,0,1,200));

		 // Aplicação do Método de Implicação (valores mínimos).
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

	// 3ª regra - se o erro e baixo e a variação é alta e então o ajuste é medio
	if (erro_atual >= 100 && erro_atual <= 1000 && variacao >= 200)
	{
		// Fuzzificar as entradas.
		// Aplicação dos operadores Fuzzy.
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

	// 4ª regra - se o erro é alto então o ajuste é alto
	if (erro_atual > 1001)
	{
		// Fuzzificar as entradas.

		// Aplicação dos operadores Fuzzy.
		float rule = trapmf(erro_atual, 1001,1500,2000,2001);

		// Aplicação do Método de Implicação (valores mínimos).


		for (int a=0; a<=15; a++)
		{
			y = trapmf(x,5,10,15,16);
			total_area = (int)(total_area + (y >= rule)?rule:y);
			soma = soma + x*(y >= rule)?rule:y;
			x++;
		}
	}

	// Aplicação do Método de Agregação.
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
	// Implicação dos antecedentes pelo consequente.
	if(total_area!= 0){
		reajuste = soma/(total_area);
	}else{
		reajuste = 0;
	}	
    // Cálculo da Centróide.
	
	pwm = (int)max_val(min_val(pwm + ((int) min_val(reajuste, erro_atual)) * (setpoint > rpm ? 1 : -1) * 1, 1023), 0);
	PWM_DutyCycle2(pwm);

}

//-----------------------------------------------------------------------------
void interrupt ISR(void)
{
	// Tratamento da interrupï¿½ï¿½o do buffer de recepï¿½ï¿½o.
	if (PIR1bits.RCIF)
	{
		
		setpoint = (USART_ReceiveChar() -48) *1000;
		
		// Flag de status da Interrupï¿½ï¿½o do buffer de recepï¿½ï¿½o da USART.
		PIR1bits.RCIF = 0;
	}

	// Tratamento da interrupï¿½ï¿½o do conversor A/D.
	

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

			// Variï¿is de controle (nï¿½vel alto).
			PORTBbits.RB6 = 1;
		}
		else
		{
			// Variï¿½vel de controle do perï¿½odo de tempo.
			contagens_tm0 = 0;

			// Cï¿½lculo das rotaï¿½ï¿½es por minuto.
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

			// Variï¿½veis de controle (nï¿½vel baixo).
			PORTBbits.RB6 = 0;
		}

		// Resetar a flag do Timer0 para uma nova contagem.
		INTCONbits.T0IF = 0;
	}

	// Tratamento da interrupï¿½ï¿½o do Timer1.
	/*if (PIR1bits.TMR1IF)
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
	}*/
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
	//ADC_Init();			// Inicializaï¿½ï¿½o do mï¿½dulo do conversor A/D.
	PWM_Init();			// 1.125khz, prescaler 16, 1024 passos.
	//LCD_Init();			// Inicializaï¿½ï¿½o do LCD.

	// Ativaï¿½ï¿½o das interrupï¿½ï¿½es do microcontrolador.
	INTCONbits.PEIE = 1; // Habilita Interrupï¿½ï¿½o de Perifï¿½ricos do Microcontrolador.
	INTCONbits.GIE = 1;	 // Habilita Interrupï¿½ï¿½o Global.

	// Rotinas do USART.
	// USART_WriteString("Inicializando o PIC16F877A\n\r");
	// USART_WriteString("USART: 115.200bps\n\r");

	// Rotinas do LCD.

	//LCD_Cursor(0, 0);					 // Posicionamento da string na linha 0 e coluna 0;
	//LCD_WriteString("Inicializando..."); // Escrita da string no LCD.

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
		//sprintf(display, "%04d", rpm);
		//clearDisplay();
		//itoa(rpm, display, 10);

		// Apresenta as informaï¿½ï¿½es na USART.
		// USART_WriteString(display);
		// USART_WriteString("\n\r");

		// Apresenta as informaï¿½ï¿½es no LCD.
		//LCD_Clear();
		//LCD_Cursor(0, 0);
		//LCD_WriteString("RPM: ");
		//LCD_Cursor(0, 6);
		//LCD_WriteString(display);

		//__delay_ms(200);
	}
}