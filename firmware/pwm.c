#include "config.h"
#include "pwm.h"

//-----------------------------------------------------------------------------
void PWM_Init()
{
	// Timer2 Clock Prescale Select bits.
	// T2CKPS1:T2CKPS0
	// 00 = Prescaler is 1
	// 01 = Prescaler is 4
	// 1x = Prescaler is 16

	// Ajuste do Prescaler 1:16.
	T2CONbits.T2CKPS1 = 1;
	T2CONbits.T2CKPS0 = 0;

	// Ajuste do Postscaler (não é necessário no PWM).
	T2CONbits.TOUTPS3 = 0;
	T2CONbits.TOUTPS2 = 0;
	T2CONbits.TOUTPS1 = 0;
	T2CONbits.TOUTPS0 = 0;
	
	// Ativação do Timer2.
	T2CONbits.TMR2ON = 1;
	
	// Ajuste do registrador PR2 que controla o período do PWM.
	PR2 = 255;

	// CCPx Mode Select bits.
	// CCPxM3:CCPxM0
	// 0000 = Capture/Compare/PWM disabled (resets CCPx module)
	// 0100 = Capture mode, every falling edge
	// 0101 = Capture mode, every rising edge
	// 0110 = Capture mode, every 4th rising edge
	// 0111 = Capture mode, every 16th rising edge
	// 1000 = Compare mode, set output on match (CCPxIF bit is set)
	// 1001 = Compare mode, clear output on match (CCPxIF bit is set)
	// 1010 = Compare mode, generate software interrupt on match
	// 1011 = Compare mode, trigger special event 
	// 11xx = PWM mode

	// Habilita o modo PWM.
	CCP1CONbits.CCP1M3 = 1;		
	CCP1CONbits.CCP1M2 = 1;	
	CCP1CONbits.CCP1M1 = 1;	
	CCP1CONbits.CCP1M0 = 1;	

	// Habilita o módulo CCP1.
    PIE1bits.CCP1IE = 1;
	PIR1bits.CCP1IF = 0;	
	    
	// Habilita o modo PWM.
	CCP2CONbits.CCP2M3 = 1;
	CCP2CONbits.CCP2M2 = 1;	
	CCP2CONbits.CCP2M1 = 1;	
	CCP2CONbits.CCP2M0 = 1;	
	
	// Habilita o módulo CCP2.
    PIE2bits.CCP2IE = 1;
	PIR2bits.CCP2IF = 0;	
}

//-----------------------------------------------------------------------------
void PWM_DutyCycle1(int valor)
{
/*
    //           							     CCPRxL  CCPxCON <5:4>     * o valor 0x0C é uma máscara - 1100,                                
	//           							     8 bits  2 bits            que liga o modo PWM no registrador CCPxCON <3:0>.                                
	//								           |--------|--|    
	// int valor_10bits = 783;     // 10 bits - 11000011 11
    //
	// unsigned char valor_8bits_parte_baixa = (int) (valor_10bits << 4) | 0x0C;
    // ao se deslocar << 4 bits para a esquerda (do valor 783 - 1100001111) 
	// resulta no valor 252 (11111100) que é carregado em CCPxCON.
    //
	// unsigned char valor_8bits_parte_alta = (int) (valor_10bits >> 2);
    // ao se deslocar >> 2 bits para a direita (do valor 783 - 1100001111) 
	// resulta no valor 195 (11000011) que é carregado em CCPRxL.
	//
    // ou seja,
	//
    // CCPR1L  = valor_8bits_parte_alta;    
	// CCP1CON = valor_8bits_parte_baixa;
	//
    // ou em
    //
	// CCPR2L  = valor_8bits_parte_alta;    
	// CCP2CON = valor_8bits_parte_baixa;
*/

	CCPR1L  = valor >> 2;
    CCP1CON = (valor << 4)|0X0C;	// Mantem os 4 bits mais baixos como 1100 - modo PWM.
//	PIR1bits.CCP1IF = 0;
}
//-----------------------------------------------------------------------------
void PWM_DutyCycle2(int valor)
{
    CCPR2L  = valor >> 2;
    CCP2CON = (valor << 4)|0X0C;	// Mantem os 4 bits mais baixos como 1100 - modo PWM.
}
//-----------------------------------------------------------------------------
