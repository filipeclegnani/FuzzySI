#include "config.h"
#include "spi.h"

//-----------------------------------------------------------------------------
void SPI_Init()
{
	SSPCONbits.WCOL  = 0;		// Bit de colis�o de escrita, 1-colis�o detectada, 0-sem colis�o.
	SSPCONbits.SSPOV = 0;		// Bit de overflow, 1 - byte perdido, 0 - recep��o correta.
	SSPCONbits.SSPEN = 1;		// Ativa a comunica��o SPI (1-liga/configura pinos, 0-desl/pinos de I/O).
	SSPCONbits.CKP	 = 0;		// Configura��o da forma de onda do clock.
	SSPCONbits.SSPM3 = 0;		// Configura��o do modo MASTER ou SLAVE.
	SSPCONbits.SSPM2 = 0;		// 0010 = SPI Master mode, clock = FOSC/64.
	SSPCONbits.SSPM1 = 1;		// 0001 = SPI Master mode, clock = FOSC/16
	SSPCONbits.SSPM0 = 0;		// 0000 = SPI Master mode, clock = FOSC/4

  	SSPSTATbits.SMP	 = 0;		// Sistema de amostragem de dados (0-recep��o na borda do meio do periodo, 1-no final).
	SSPSTATbits.CKE	 = 0;		// Sistema de amostragem de dados (0-pulso do clock no inicio do periodo, 1-no final).
	SSPSTATbits.D_A	 = 0;		// I2C
	SSPSTATbits.P	 = 0;		// I2C
	SSPSTATbits.S	 = 0;		// I2C
	SSPSTATbits.R_W	 = 0;		// I2C
	SSPSTATbits.UA	 = 0;		// I2C
	SSPSTATbits.BF	 = 0;		// Bit de status de buffer (1-Recep��o completa, SSPBUF cheio, 0-SSPBUF vazio).

    // Configura��o da Interrup��o USART.
	PIE1bits.SSPIE 	 = 1;	   	// Habilita a Interrup��o da SPI.
	PIR1bits.SSPIF 	 = 0;		// Limpa a flag da Interrup��o da SPI.
}

//-----------------------------------------------------------------------------
unsigned char SPI_Write(unsigned char byte)
{
	SSPCONbits.WCOL = 0;		// Reseta a flag Write Collision, para permitir escrita.

	SSPBUF = byte;				// Grava o byte no buffer para envio.
	while (!SSPSTATbits.BF);	// Aguarda o final da Transmiss�o.

	return(SSPBUF);				// Leitura do byte recebido.
}

//-----------------------------------------------------------------------------
void SPI_Wait()
{
	while (!SSPSTATbits.BF);
}
//-----------------------------------------------------------------------------
