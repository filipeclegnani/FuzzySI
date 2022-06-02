#include "config.h"
#include "usart.h"

//-----------------------------------------------------------------------------

void USART_Init(long BaudRate)
{
	// Tempo de envio de um bit:                      
	// BaudRate =   9600 -> (1/baudrate) = 1/9600   = 1.041667e-4 = 104.16us
	// BaudRate = 115200 -> (1/baudrate) = 1/115200 = 8.680556e-6 =   8.68us
	                               
	// Cálculo do valor para o registrador SPBRG para uma determinada velocidade em bps.	
	SPBRG = (unsigned char)(_XTAL_FREQ / (16 * BaudRate)) - 1;
	
    // Configuração do Registrador TXSTA.
    TXSTAbits.CSRC	= 0;	// Seleção MASTER/SLAVE para o Modo Síncrono.
    TXSTAbits.TX9	= 0;	// Transmição de Dados em 8 Bits(0)/9 bits(1).
    TXSTAbits.TXEN	= 1; 	// Habilita a Transmição de Dados.
    TXSTAbits.SYNC	= 0; 	// Modo de Comunicação Assíncrono(0)/Síncrono(1).
    // U            = 0;    // Bit não implementado, ler/setar como 0.
    TXSTAbits.BRGH	= 1;	// Baud Rate em alta(1) ou baixa(0) velocidade.
    TXSTAbits.TRMT	= 1;	// Situação do Registrador Interno de Transmissão (TSR) (0-Cheio/1-vazio).
    TXSTAbits.TX9D	= 0;	// Valor a Ser Transmitido como 9º bit (Paridade/Endereçamento).

    // Configuração do Registrador RCSTA.
    RCSTAbits.SPEN	= 1;	// Habilita a porta serial (USART).
    RCSTAbits.RX9	= 0;    // Recepção de Dados em 8 Bits(0)/9 bits(1).
    RCSTAbits.SREN	= 0;	// Desabilita Recepção Unitária (Somente Modo Síncrono em MASTER).
    RCSTAbits.CREN	= 1;   	// Habilita a Recepção Contínua de Dados.
    RCSTAbits.ADDEN	= 0;  	// Desabilita o Sistema de Endereçamento.
    RCSTAbits.FERR	= 0;	// Erro de Stop Bit.
    RCSTAbits.OERR	= 0;	// Erro de Muitos Bytes Recebidos sem Leitura.
    RCSTAbits.RX9D	= 0;	// Valor a Ser Recebido como 9º bit (Paridade/Endereçamento).

    // Configuração das Interrupções da USART.
	PIE1bits.TXIE 	= 0;	// Habilita a interrupção de transmissão serial.
	PIR1bits.TXIF 	= 0;	// Flaf de status da interrupção de transmissão serial.
	PIE1bits.RCIE 	= 1;	// Habilita a interrupção de recepção serial.
	PIR1bits.RCIF 	= 0;	// Flaf de status da interrupção de recepção serial.
}

//-----------------------------------------------------------------------------

void USART_WriteChar(unsigned char byte)
{
	while(!PIR1bits.TXIF);	// Aguarda enquanto existem bits sendo transmitidos.
	TXREG = byte;			// Passa um byte para o registrador de transmissão.
}

//-----------------------------------------------------------------------------

void USART_WriteString(const char *str)
{
	while(*str != '\0')		// Efetua a transmissão da string para a USART.
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
		byte    		= RCREG;	// Recebe o byte da USART e atribui a variável USARTData.
    	PIR1bits.RCIF 	= 0;		// Limpa a Flag da Interrupção de Recepção.
	}
	else
	{
		USART_WriteString("\n\r ------- ESTOURO DE PILHA ------- \n\r ");

		RCSTAbits.CREN 	= 0;   		// Desabilita a Recepção Contínua de Dados Momentaneamente.
		byte	 		= RCREG;	// Recebe o byte da USART e atribui a variável USARTData.
		RCSTAbits.CREN 	= 1;   		// Habilita a Recepção Contínua de Dados Novamente.
    	PIR1bits.RCIF 	= 0;		// Limpa a Flag da Interrupção de Recepção.				
	}
	
	return(byte);
}

//-----------------------------------------------------------------------------
