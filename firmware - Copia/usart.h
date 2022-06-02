//-----------------------------------------------------------------------------
#ifndef USART_H   		
#define USART_H
//-----------------------------------------------------------------------------

void USART_Init(long);
void USART_WriteChar(unsigned char);
void USART_WriteString(const char *);
unsigned char USART_ReceiveChar(void);

//-----------------------------------------------------------------------------
#endif
//-----------------------------------------------------------------------------
