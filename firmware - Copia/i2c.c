#include "config.h"
#include "i2c.h"

//-----------------------------------------------------------------------------

void I2C_Init(void)
{
	// Bits de configura��o e de Flags.
	SSPCON2bits.GCEN    = 0;	// Chamada geral de endere�o desligado - (escravo).
	SSPCON2bits.ACKSTAT = 0;	// Bit de estado do ACK pelo escravo, 0 - recebido, 1 - n�o recebido.
	SSPCON2bits.ACKDT   = 0;	// Bit de ACK (mestre), 1 - n�o houve ACK, 0 houve ACK.
	SSPCON2bits.ACKEN   = 0;	// Bit de habilita��o de ACK (mestre), 1 - iniciada, 0 - n�o iniciada.
	SSPCON2bits.RCEN    = 0;	// Bit de habilita��o da recep��o (mestre), 1 - habilita, 0 - Recep��o desligada.
	SSPCON2bits.PEN     = 0;	// Bit de habilita��o de condi��o de STOP (mestre), 1 - iniciada, 0 - n�o iniciada.
	SSPCON2bits.RSEN    = 0;	// Bit de habilita��o de RE-START (mestre), 1 - iniciada, 0 - n�o iniciada.
	SSPCON2bits.SEN     = 0;	// Bit de habilita��o de START (mestre), 1 - iniciada, 0 - n�o iniciada.
   	
	// Modo I2C Mestre                     18432000     400000
	SSPADD = 10;				// SSPADD = Fosc / [4 x baud_rate] - 1.
	
	SSPSTATbits.SMP = 1;		// Controle de interfer�ncia, 1 - desligado para 100 kbit/s, 0 - ligado para 400 kbit/s.
	SSPSTATbits.CKE = 0;		// Configura o tipo de comportamento da porta, 0 - padr�o I2C, 1 - SMBus.
	SSPSTATbits.D_A = 0;		// Bit de dados/endere�o, 1 - indica ultimo byte recebido � dados, 0 - endere�o.
	SSPSTATbits.P   = 0;		// Detec��o de STOP, 1 - STOP detectado, 0 - n�o detectado.
	SSPSTATbits.S   = 0;		// Detec��o de START, 1 - START detectado, 0 - n�o detectado.
	SSPSTATbits.R_W = 0;		// Bit que guarda o status (mestre), 1 - transmiss�o em progresso, 0 - parado. 
	SSPSTATbits.UA  = 0;		// Bit de atualiza��o de buffer SSPADD, 1 - necess�rio refresh, 0 - endere�o correto.
	SSPSTATbits.BF  = 0;		// Status de buffer, RX (1-completa, 0-n�o completa) TX (1-transmiss�o em andamento, 0-completo).

   	SSPCONbits.WCOL  = 0;		// Bit de colis�o de escrita, 1-colis�o detectada, 0-sem colis�o.
   	SSPCONbits.SSPOV = 0;		// Bit de overflow, 1 - byte perdido, 0 - recep��o correta.
   	SSPCONbits.SSPEN = 1;		// Bit que habilita a comunica��o I2C (1-liga/configura pinos, 0-desl/pinos de I/O).
   	SSPCONbits.CKP   = 0;		// N�o utilizado em I2C.
   	SSPCONbits.SSPM3 = 1;		// Bits de configura��o do modo I2C.
   	SSPCONbits.SSPM2 = 0;		// Bits de configura��o do modo I2C.
   	SSPCONbits.SSPM1 = 0;		// Bits de configura��o do modo I2C.
   	SSPCONbits.SSPM0 = 0;		// Bits de configura��o do modo I2C.
}

//-----------------------------------------------------------------------------

void I2C_Idle(void)
{
	// Verifica se a interface est� em uso ou n�o.
    while ((SSPCON2 & 0x1F) | (SSPSTATbits.R_W));	// De acordo com o livro.
}

//-----------------------------------------------------------------------------

void I2C_Start(void)
{ 
	// Inicializa a comunica��o I2C.
    I2C_Idle();
    SSPCON2bits.SEN = 1;	// Envia um start bit.
    while(SSPCON2bits.SEN); // Aguarda que o star bit seja enviado.
}

//-----------------------------------------------------------------------------

void I2C_Restart(void)
{
    // Reinicializa a comunica��o I2C.
    I2C_Idle();
    SSPCON2bits.RSEN = 1;
    while(SSPCON2bits.RSEN);  
}

//-----------------------------------------------------------------------------

void I2C_Write(unsigned char Byte)
{
    // Carrega o byte no buffer para ser transmitido pela interface I2C.
    I2C_Idle();
	SSPBUF = Byte;
	while(SSPSTATbits.BF);	// Aguarda at� os oito bits serem enviados.
}

//-----------------------------------------------------------------------------

unsigned char I2C_Read(void)
{
	// Efetua a leitura do byte recebido pela interface I2C.
    I2C_Idle();
    SSPCON2bits.RCEN = 1;
	while(!SSPSTATbits.BF);		// Aguarda at� os oito bits serem recebidos.

    return(SSPBUF);
}

//-----------------------------------------------------------------------------

void I2C_Stop(void)
{
	// Finaliza a comunica��o I2C.
    I2C_Idle();
    SSPCON2bits.PEN = 1;       // Envia stop bit.
    while(SSPCON2bits.PEN);    
}

//-----------------------------------------------------------------------------

void I2C_ACK(void)
{
	// Lan�a um ACK no barramento.
    I2C_Idle();
	SSPCON2bits.ACKDT = 0;      // Limpa Acknowledge Data Bit - Envio de ACK.
	SSPCON2bits.ACKEN = 1;      // Liga o bit que habilita a transmiss�o de um ACK.
}

//-----------------------------------------------------------------------------

void I2C_NACK(void)
{
	// Lan�a um NACK no barramento.
    I2C_Idle();
    SSPCON2bits.ACKDT = 1;     // Liga Not Acknowledge Data Bit - Envio de NACK.
    SSPCON2bits.ACKEN = 1;     // Liga o bit que habilita a transmiss�o de um NACK.
}
//-----------------------------------------------------------------------------
