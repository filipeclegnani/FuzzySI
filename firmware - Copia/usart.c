#include "config.h"
#include "usart.h"

//-----------------------------------------------------------------------------

void USART_Init(long BaudRate)
{
	// Tempo de envio de um bit:                      
	// BaudRate =   9600 -> (1/baudrate) = 1/9600   = 1.041667e-4 = 104.16us
	// BaudRate = 115200 -> (1/baudrate) = 1/115200 = 8.680556e-6 =   8.68us
	                               
	// C�lculo do valor para o registrador SPBRG para uma determinada velocidade em bps.	
	SPBRG = (unsigned char)(_XTAL_FREQ / (16 * BaudRate)) - 1;
	
    // Configura��o do Registrador TXSTA.
    TXSTAbits.CSRC	= 0;	// Sele��o MASTER/SLAVE para o Modo S�ncrono.
    TXSTAbits.TX9	= 0;	// Transmi��o de Dados em 8 Bits(0)/9 bits(1).
    TXSTAbits.TXEN	= 1; 	// Habilita a Transmi��o de Dados.
    TXSTAbits.SYNC	= 0; 	// Modo de Comunica��o Ass�ncrono(0)/S�ncrono(1).
    // U            = 0;    // Bit n�o implementado, ler/setar como 0.
    TXSTAbits.BRGH	= 1;	// Baud Rate em alta(1) ou baixa(0) velocidade.
    TXSTAbits.TRMT	= 1;	// Situa��o do Registrador Interno de Transmiss�o (TSR) (0-Cheio/1-vazio).
    TXSTAbits.TX9D	= 0;	// Valor a Ser Transmitido como 9� bit (Paridade/Endere�amento).

    // Configura��o do Registrador RCSTA.
    RCSTAbits.SPEN	= 1;	// Habilita a porta serial (USART).
    RCSTAbits.RX9	= 0;    // Recep��o de Dados em 8 Bits(0)/9 bits(1).
    RCSTAbits.SREN	= 0;	// Desabilita Recep��o Unit�ria (Somente Modo S�ncrono em MASTER).
    RCSTAbits.CREN	= 1;   	// Habilita a Recep��o Cont�nua de Dados.
    RCSTAbits.ADDEN	= 0;  	// Desabilita o Sistema de Endere�amento.
    RCSTAbits.FERR	= 0;	// Erro de Stop Bit.
    RCSTAbits.OERR	= 0;	// Erro de Muitos Bytes Recebidos sem Leitura.
    RCSTAbits.RX9D	= 0;	// Valor a Ser Recebido como 9� bit (Paridade/Endere�amento).

    // Configura��o das Interrup��es da USART.
	PIE1bits.TXIE 	= 0;	// Habilita a interrup��o de transmiss�o serial.
	PIR1bits.TXIF 	= 0;	// Flaf de status da interrup��o de transmiss�o serial.
	PIE1bits.RCIE 	= 1;	// Habilita a interrup��o de recep��o serial.
	PIR1bits.RCIF 	= 0;	// Flaf de status da interrup��o de recep��o serial.
}

//-----------------------------------------------------------------------------

void USART_WriteChar(unsigned char byte)
{
	while(!PIR1bits.TXIF);	// Aguarda enquanto existem bits sendo transmitidos.
	TXREG = byte;			// Passa um byte para o registrador de transmiss�o.
}

//-----------------------------------------------------------------------------

void USART_WriteString(const char *str)
{
	while(*str != '\0')		// Efetua a transmiss�o da string para a USART.
  	{
		USART_WriteChar(*str);	// Envio da byte a byte.
      	str++;				// Incremento do ponteiro da string.
  	}
}

//-----------------------------------------------------------------------------

unsigned char USART_ReceiveChar(void)
{
	unsigned char byte;

	if (!OERR)						// Erro de Muitos Bytes Recebidos sem Nenhuma Leitura.
	{
		byte    		= RCREG;	// Recebe o byte da USART e atribui a vari�vel USARTData.
    	PIR1bits.RCIF 	= 0;		// Limpa a Flag da Interrup��o de Recep��o.
	}
	else
	{
		USART_WriteString("\n\r ------- ESTOURO DE PILHA ------- \n\r ");

		RCSTAbits.CREN 	= 0;   		// Desabilita a Recep��o Cont�nua de Dados Momentaneamente.
		byte	 		= RCREG;	// Recebe o byte da USART e atribui a vari�vel USARTData.
		RCSTAbits.CREN 	= 1;   		// Habilita a Recep��o Cont�nua de Dados Novamente.
    	PIR1bits.RCIF 	= 0;		// Limpa a Flag da Interrup��o de Recep��o.				
	}
	
	return(byte);
}

//-----------------------------------------------------------------------------
