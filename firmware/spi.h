#ifndef SPI_H
#define SPI_H

//-----------------------------------------------------------------------------
void SPI_Init(void);
unsigned char SPI_Write(unsigned char);
void SPI_Wait();
//-----------------------------------------------------------------------------

#endif




/*
Exemplo de resposta dod escravo

	int r=0;

	// Aguarda pela resposta do escravo.
	i = 9;
	do
	{
		RB4 = 0;
		r = SPI_Write(0xFF);
		RB4 = 1;
	
		if (r != 0xFF) 
			break;

	} while (--i > 0);


*/