#include "config.h"
#include "timers.h"

//-----------------------------------------------------------------------------

void TIMER0_Init()
{
	OPTION_REGbits.T0CS = 0;	// Seleção do clock(0-interno, 1-pino RA4/T0CKI).
	OPTION_REGbits.T0SE = 0;	// Borda de Incremento (0-baixo/alto, 1-alto/baixo).
	OPTION_REGbits.PSA  = 0;	// Prescaler aplicado ao Timer0(0) ou a WDT(1).
	OPTION_REGbits.PS2  = 1;	// Prescaler 111 = 256.
	OPTION_REGbits.PS1  = 1;
	OPTION_REGbits.PS0  = 1;
	INTCONbits.TMR0IF   = 0;	// Bit de sinalização de interrupção.
	INTCONbits.TMR0IE   = 1;	// Habilita o módulo Timer0.
}

//-----------------------------------------------------------------------------

void TIMER0_Set(unsigned char contagens)
{
	TMR0 = contagens;			// Atribui o valor inicial para contagem do TIMER0.
}

//-----------------------------------------------------------------------------

void TIMER1_Init()
{
	// Inicialização do Timer 1.
	T1CONbits.T1CKPS1 = 1;	// Seleção do prescaler (11-1:8). 
	T1CONbits.T1CKPS0 = 1;  
	T1CONbits.T1OSCEN = 1; 	// Habilida oscilação interna (0-desligado, 1-ligado). 
	T1CONbits.nT1SYNC = 1;	// 
	T1CONbits.TMR1CS  = 0;
	T1CONbits.TMR1ON  = 1;
	PIE1bits.TMR1IE   = 1;
	PIR1bits.TMR1IF   = 0;
}

//-----------------------------------------------------------------------------

void TIMER1_Set(unsigned short contagens)
{
	TMR1 = contagens;			// Atribui o valor inicial para contagem do TIMER1.
}

//-----------------------------------------------------------------------------
