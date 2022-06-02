//-----------------------------------------------------------------------------
#ifndef LCD_H   		
#define LCD_H
//-----------------------------------------------------------------------------

//Declara��o de Constantes
#define LCDBus	PORTD			// Barramento onde o LCD est� conectado.
#define RS 		PORTEbits.RE0	// Pino de Ativa��o dos Modos Comando/Dado.
#define EN 		PORTEbits.RE1	// Pino para a Efetiva��o (Pulso Clock) do Comando/Dado passado ao LCD.

//-----------------------------------------------------------------------------
void LCD_Cursor(unsigned char, unsigned char);
void LCD_WriteCmd(unsigned char);
void LCD_WriteData(unsigned char);
void LCD_WriteString(const char *);
void LCD_Clear();
void LCD_Init();

//-----------------------------------------------------------------------------
#endif
//-----------------------------------------------------------------------------

