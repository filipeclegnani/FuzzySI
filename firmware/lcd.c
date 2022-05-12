#include "config.h"
#include "lcd.h"

//Declaração de Constantes
#define LCDBus	PORTD			// Barramento onde o LCD está conectado.
#define RS 		PORTEbits.RE0	// Pino de Ativação dos Modos Comando/Dado.
#define EN 		PORTEbits.RE1	// Pino para a Efetivação (Pulso Clock) do Comando/Dado passado ao LCD.

//-----------------------------------------------------------------------------
void LCD_Cursor(unsigned char Row, unsigned char Col)
{
	RS = 0; // Envia nível baixo para o pino RS.
	
	if (Row == 0)
	{
		LCDBus = 0x80 + Col; 
	}
	else
	{
		LCDBus = 0xC0 + Col;
	}	

	// Pulso para o pino EN do Display.
	EN = 1;	// Envia nível alto para o pino EN.

	__delay_us(40);

	EN = 0;	// Envia nível baixo para o pino EN.
}

//-----------------------------------------------------------------------------
void LCD_WriteCmd(unsigned char Byte)
{
	RS = 0; // Envia nível baixo para o pino RS.

	LCDBus = Byte;

	// Pulso para o pino EN do Display.
	EN = 1;	// Envia nível alto para o pino EN.

	__delay_us(40);

	EN = 0;	// Envia nível baixo para o pino EN.
}

//-----------------------------------------------------------------------------
void LCD_WriteData(unsigned char Byte)
{	
	RS = 1;				// Ativação do pino RS para envio de dados.

	LCDBus = Byte;		// Atribuição do Byte para o barramento do LCD.

	EN = 1;				// Envia nível alto para o pino EN do Display.

	__delay_us(40);		// Tempo necessário para efetivação do comando/dado.

	EN = 0;				// Envia nível baixo para o pino EN do Display.
}

//-----------------------------------------------------------------------------
void LCD_WriteString(const char *Str)
{
	while(*Str != '\0')			// Envio da string para o LCD.
  	{
    	LCD_WriteData(*Str);	// Envio da string byte a byte.
      	Str++;					// Incrmento da posição do ponteiro.
  	}
}

//-----------------------------------------------------------------------------
void LCD_Clear()
{
	LCD_WriteCmd(0x01); // Comando para limpar o display.

	__delay_ms(2); 

	LCD_WriteCmd(0x0C); // Comando para o controle da visualização dos caracteres no Display e do Cursor.

	__delay_us(40); 

	LCD_WriteCmd(0x06); // Modo de Operação. Deslocamento automático do cursor para a direita.

	__delay_us(40);
}

//-----------------------------------------------------------------------------
void LCD_Init()
{
	// Configuração necessaria para o PORTE como saída digital (conexão física na placa).
	ADCON1bits.PCFG3 = 0;
	ADCON1bits.PCFG2 = 1;
	ADCON1bits.PCFG1 = 0;
	ADCON1bits.PCFG0 = 0;

	__delay_ms(15);

	LCD_WriteCmd(0x30); 	// Comando de inicialização do display.
	__delay_ms(4); 

	LCD_WriteCmd(0x30); 	// Comando de inicialização do display.
	__delay_us(100); 

	LCD_WriteCmd(0x30); 	// Comando de inicialização do display.
	__delay_us(40); 

	LCD_WriteCmd(0x38); 	// Comando para configurar o display para 8 vias, duas linhas e matriz de 7x5.
	__delay_us(40); 

	LCD_WriteCmd(0x01); 	// Comando para limpar o display.
	__delay_ms(2); 

	LCD_WriteCmd(0x0C);		// Comando para o controle da visualização dos caracteres no Display e do Cursor.
	__delay_us(40); 

	LCD_WriteCmd(0x06); 	// Modo de Operação. Deslocamento automático do cursor para a direita.
	__delay_us(40); 
}

//-----------------------------------------------------------------------------
