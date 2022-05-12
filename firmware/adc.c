#include "config.h"
#include "adc.h"

//-----------------------------------------------------------------------------

void ADC_Init()
{
	// Configuração do Registrador ADCON1 para a Conversão A/D.
	ADCON1bits.ADFM  = 1;	

	// Configuração dos Canais analógicos e digitais.
	// PCFG3:PCFG0: A/D Port Configuration Control bits
	// -----------------------------------------------------
	//  PCFG AN7 AN6 AN5 AN4 AN3 AN2 AN1 AN0 VREF+ VREF- C/R
	//  0000  A   A   A   A   A   A   A   A   VDD   VSS  8/0
	//  0001  A   A   A   A  VR+  A   A   A   AN3   VSS  7/1
	//  0010  D   D   D   A   A   A   A   A   VDD   VSS  5/0
	//  0011  D   D   D   A  VR+  A   A   A   AN3   VSS  4/1
    //  0100  D   D   D   D   A   D   A   A   VDD   VSS  3/0
	//  0101  D   D   D   D  VR+  D   A   A   AN3   VSS  2/1
	//  011x  D   D   D   D   D   D   D   D    —     —   0/0
	//  1000  A   A   A   A  VR+ VR-  A   A   AN3   AN2  6/2
    //  1001  D   D   A   A   A   A   A   A   VDD   VSS  6/0
	//  1010  D   D   A   A  VR+  A   A   A   AN3   VSS  5/1
	//  1011  D   D   A   A  VR+ VR-  A   A   AN3   AN2  4/2
	//  1100  D   D   D   A  VR+ VR-  A   A   AN3   AN2  3/2
	//  1101  D   D   D   D  VR+ VR-  A   A   AN3   AN2  2/2
    // >1110  D   D   D   D   D   D   D   A   VDD   VSS  1/0
	//  1111  D   D   D   D  VR+ VR-  D   A   AN3   AN2  1/2
	// -----------------------------------------------------

	ADCON1bits.PCFG3 = 1; 
	ADCON1bits.PCFG2 = 1;
	ADCON1bits.PCFG1 = 1;
	ADCON1bits.PCFG0 = 0;

	// Configuração do Registrador ADCON0 para a Conversão A/D.
	ADCON0bits.ADCS1 = 1;
	ADCON0bits.ADCS0 = 0;

	// Configuração dos Registradores PIE1 e PIR1 para a Conversão A/D.
	PIE1bits.ADIE = 0;
    PIR1bits.ADIF = 0;
}

//-----------------------------------------------------------------------------

unsigned int ADC_Read(unsigned int channel)
{
	unsigned int ADCResult = 0;

	ADCON0bits.CHS = channel;	// Configuração do canal a ser lido (mesmo que CHS2:CHS1:CHS0 em bits).
	ADCON0bits.ADON	= 1;		// Ativa o módulo do conversor A/D.

	__delay_us(25); 			// Espera o tempo requerido para adequação do conversor A/D.

	ADCON0bits.GO = 1;			// Ativa o sistema de conversão de dados.
	while(ADCON0bits.GO_DONE);	// Espera até que o dado lido no canal seja convertido.

	// Converte em um valor de 10 bits o valor lido do canal A/D e os dados são armazenados em ADRESH e ADRESL.
	ADCResult = ((ADRESH << 8) + ADRESL);
    
	PIR1bits.ADIF = 0;			// Caso esteja utilizando a interrupção A/D, limpa a flag para nova conversão.
	return (ADCResult);
}

//-----------------------------------------------------------------------------
