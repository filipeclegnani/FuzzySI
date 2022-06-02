#include "config.h"
#include "eeprom.h"

//-----------------------------------------------------------------------------
unsigned char EEPROM_Read(unsigned char Address)
{
	// Aguarda caso exista um dado sendo gravado na EEPROM.
	while(EECON1bits.WR);

	// Atribui��o da posi��o (endere�o) da mem�ria EEPROM para leitura.
    EEADR = Address;
	
	// Sele��o da mem�ria de dados (0-dados, 1-programa).
    EECON1bits.EEPGD = 0;
	
	// Inicializa o processo de leitura da EEPROM.
	EECON1bits.RD = 1;
	
	// Retorno do byte lido.
	return(EEDATA);
}
//-----------------------------------------------------------------------------
void EEPROM_Write(unsigned char Address, unsigned char Byte)
{
	// Aguarda caso exista um dado sendo gravado na EEPROM.
	while(EECON1bits.WR);
	
	// Atribui��o do endere�o da posi��o de mem�ria onde o byte ser� gravado.
    EEADR = Address;

	// Atribui��o do byte a ser gravado para o registrador EEDATA.
	EEDATA = Byte;

	// Sele��o da mem�ria de dados (0-dados, 1-programa).
    EECON1bits.EEPGD = 0;

	// Habilita a escrita de dados na EEPROM.
    EECON1bits.WREN = 1;
	
	// Desabilitar as interrup��es para evitar conflitos.
	INTCONbits.GIE = 0;

	// Prote��o da escrita de dados (carregar 0x55 e 0xAA para o registrador EECON2).
	EECON2 = 0x55;
	EECON2 = 0xAA;

	// Inicia a escrita de dados na EEPROM.
    EECON1bits.WR = 1;
	
	// Habilitar as interrup��es novamente.
	INTCONbits.GIE = 1;

	// Desabilita a escrita de dados na EEPROM.
    EECON1bits.WREN = 0;
}
//-----------------------------------------------------------------------------
void EEPROM_Erase()
{
	// Apaga todas as posi��es de mem�ria da EEPROM.
	int a = 0;
	for (a=0; a<256; a++)
		EEPROM_Write(a,0xFF);
}
//-----------------------------------------------------------------------------
