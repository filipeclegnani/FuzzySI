#include "config.h"
#include "eeprom.h"

//-----------------------------------------------------------------------------
unsigned char EEPROM_Read(unsigned char Address)
{
	// Aguarda caso exista um dado sendo gravado na EEPROM.
	while(EECON1bits.WR);

	// Atribuição da posição (endereço) da memória EEPROM para leitura.
    EEADR = Address;
	
	// Seleção da memória de dados (0-dados, 1-programa).
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
	
	// Atribuição do endereço da posição de memória onde o byte será gravado.
    EEADR = Address;

	// Atribuição do byte a ser gravado para o registrador EEDATA.
	EEDATA = Byte;

	// Seleção da memória de dados (0-dados, 1-programa).
    EECON1bits.EEPGD = 0;

	// Habilita a escrita de dados na EEPROM.
    EECON1bits.WREN = 1;
	
	// Desabilitar as interrupções para evitar conflitos.
	INTCONbits.GIE = 0;

	// Proteção da escrita de dados (carregar 0x55 e 0xAA para o registrador EECON2).
	EECON2 = 0x55;
	EECON2 = 0xAA;

	// Inicia a escrita de dados na EEPROM.
    EECON1bits.WR = 1;
	
	// Habilitar as interrupções novamente.
	INTCONbits.GIE = 1;

	// Desabilita a escrita de dados na EEPROM.
    EECON1bits.WREN = 0;
}
//-----------------------------------------------------------------------------
void EEPROM_Erase()
{
	// Apaga todas as posições de memória da EEPROM.
	int a = 0;
	for (a=0; a<256; a++)
		EEPROM_Write(a,0xFF);
}
//-----------------------------------------------------------------------------
