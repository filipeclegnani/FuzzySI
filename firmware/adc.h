//-----------------------------------------------------------------------------
#ifndef ADC_H   		
#define ADC_H
//-----------------------------------------------------------------------------

void ADC_Init();
unsigned int ADC_Read(unsigned int channel);

//-----------------------------------------------------------------------------
#endif
//-----------------------------------------------------------------------------

/*
//-----------------------------------------------------------------------------
// Exemplo de utiliza��o da leitura do sensor LM35.
//-----------------------------------------------------------------------------

	// Inicializa��o do m�dulo do conversor A/D.
	ADC_Init();								

	// Converte em um valor de 10 bits o valor lido do canal 0.
	ADCResult = ADC_Read(0);

	// Formata��o do valor de 10 bits (0-1023) em tens�o (0V e 5V).	
	tensao = (ADCResult * 0.004887585533);	
	
	// Formata��o da temperatura em graus c�lsius.
	temperatura = (tensao * 100);			

	// Converte um valor real em string para visualiza��o.
	Display = ftoa(temperatura, &status);

	// Dados formatados por ftoa().
	USART_WriteString("\n\r");
	USART_WriteString("Temperatura: ");
	USART_WriteString(Display);
	USART_WriteString(".C");

	// Dados formatados por sprintf().
	sprintf(Display,"\n\rTemp: %10.0f graus", temperatura);
	USART_WriteString(Display);
*/