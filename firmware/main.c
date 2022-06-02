// Declara��o das configura��es e funcionalidades do PIC.
#include "config.h"

// Declara��o das bibliotecas padr�o da linguagem C.
//#include <stdio.h>
#include <stdlib.h>

// Declara��o das bibliotecas com as configura��es e funcionalidades do PIC.
#include "usart.h"
#include "adc.h"
#include "timers.h"
#include "lcd.h"
#include "i2c.h"
#include "spi.h"
#include "eeprom.h"
#include "pwm.h"

float maximo(float a, float b)
{
  if (a > b)
  {
    return a;
  }
  return b;
}

float minimo(float a, float b)
{
  if (a < b)
  {
    return a;
  }
  return b;
}

// Vari�veis Globais de Controle.

// Configura��es para formata��o de dados de sa�da.
unsigned char buffer[7];

int receiveIndex = 0;

unsigned int pulsos = 0;
unsigned int rpm = 0;

unsigned int contagens_tm0 = 0;
unsigned int contador_rb6 = 0;
unsigned int tempo_rb6 = 0;

unsigned int setpoint = 5000;
int erro_atual = 0;
int erro_anterior = 0;

#define TAMANHO 15
float rBaixo[TAMANHO + 1];
float rMedio[TAMANHO + 1];
float rGrande[TAMANHO + 1];

unsigned int pwm = 0;

/*
float trimf(float x, float a, float b, float c)
{
    float ua = 0;

    if (x <= a)
        ua = 0;
    else if ((a < x) && (x <= b))
        ua = ((x - a) / (b - a));
    else if ((b < x) && (x <= c))
        ua = ((x - c) / (b - c));
    else if (x > c)
        ua = 0;

    return(ua);
}
*/

// Fun��o Trapezoidal
float trapmf(float x, float a, float b, float c, float d)
{
  float ua = 0;

  if (x <= a)
    ua = 0;
  else if ((a < x) && (x <= b))
    ua = ((x - a) / (b - a));
  else if ((b <= x) && (x <= c))
    ua = 1;
  else if ((c < x) && (x <= d))
    ua = ((d - x) / (d - c));
  else if (x > d)
    ua = 0;

  return (ua);
}

//-----------------------------------------------------------------------------
void interrupt ISR(void)
{
  // Tratamento da interrup��o do buffer de recep��o.
  if (PIR1bits.RCIF)
  {
    setpoint = (USART_ReceiveChar() - 48) * 1000;
    // Flag de status da Interrup��o do buffer de recep��o da USART.
    PIR1bits.RCIF = 0;
  }

  // Tratamento da interrup��o do conversor A/D.
  // if (PIR1bits.ADIF)
  // {
  // 	// Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!

  // 	// Limpa a flag da interrup��o do conversor A/D.
  // 	PIR1bits.ADIF = 0;
  // }

  // Tratamento da interrup��o do Timer0.
  // Controle da Interrup��o do TIMER0.
  if (INTCONbits.T0IF)
  {
    // Carrega o valor equivalente a contagens de 1ms.
    TIMER0_Set(238);

    // Controle do n�mero de contagens de tempo.
    if (contagens_tm0 < 499) // (n-1) n=10ms, n=20ms, n=500ms
    {
      // Vari�vel de controle/incremento do per�odo de tempo.
      contagens_tm0++;

      // Vari�veis de controle (n�vel alto).
      PORTBbits.RB6 = 1;
    }
    else
    {
      // Vari�vel de controle do per�odo de tempo.
      contagens_tm0 = 0;

      // C�lculo das rota��es por minuto.
      pulsos = (TMR1H << 8) + TMR1L;
      rpm = ((pulsos / 7) * 120);
      // Limpa registrador para nova contagem.
      TMR1L = 0x00;
      TMR1H = 0x00;

      int rpmAux = rpm;
      USART_WriteChar((rpmAux % 10) + 48);
      rpmAux /= 10;
      USART_WriteChar((rpmAux % 10) + 48);
      rpmAux /= 10;
      USART_WriteChar((rpmAux % 10) + 48);
      rpmAux /= 10;
      USART_WriteChar((rpmAux % 10) + 48);
      rpmAux /= 10;
      USART_WriteChar((rpmAux % 10) + 48);
      rpmAux /= 10;
      USART_WriteChar((rpmAux % 10) + 48);
      rpmAux /= 10;
      USART_WriteChar((rpmAux % 10) + 48);
      USART_WriteChar('\n');

      erro_anterior = erro_atual;
      erro_atual = minimo(abs(setpoint - rpm), 2000);
      int delta = maximo(minimo(abs(erro_atual - erro_anterior), 1000), 1);
      float x = 0;
      float rule = 0;

      // 1� regra - Se a proximidade � alta, ent�o o reajuste � baixo
      if (erro_atual <= 100)
      {
        // Fuzzificar as entradas e aplica��o dos operadores

        rule = trapmf(erro_atual, -1, 0, 1, 100);

        x = 0;
        for (int a = 0; a <= TAMANHO; a++)
        {
          rBaixo[a] = trapmf(x, -1, 0, 0, 5);
          if (rBaixo[a] >= rule)
          {
            rBaixo[a] = rule;
          }

          x += 1;
        }
      }

      // 2� regra - Se a proximidade � m�dia e est� em ajuste baixo, o reajuste � baixo
      if (erro_atual >= 100 && erro_atual <= 1001 && delta <= 200)
      {
        // Fuzzificar as entradas e aplica��o dos operadores
        rule = trapmf(erro_atual, 50, 800, 800, 1550) * (1 - trapmf(delta, -1, 0, 1, 200));

        x = 0;
        for (int a = 0; a <= TAMANHO; a++)
        {

          rBaixo[a] = trapmf(x, 2, 5, 5, 10);
          if (rBaixo[a] >= rule)
          {
            rBaixo[a] = rule;
          }

          x += 1;
        }
      }

      // 3� regra - Se a proximidade � m�dia e est� em ajuste alto, o reajuste � m�dio
      if (erro_atual >= 100 && erro_atual <= 1001 && delta >= 201)
      {
        // Fuzzificar as entradas e aplica��o dos operadores
        rule = trapmf(erro_atual, 50, 800, 800, 1550) * trapmf(delta, 200, 500, 2000, 2001);

        x = 0;
        for (int a = 0; a <= TAMANHO; a++)
        {
          rMedio[a] = trapmf(x, 2, 5, 5, 10);

          if (rMedio[a] >= rule)
          {
            rMedio[a] = rule;
          }

          x += 1;
        }
      }

      // 4� regra - Se a proximidade � baixa, ent�o o reajuste � alto
      if (erro_atual >= 1001)
      {
        // Fuzzificar as entradas e aplica��o dos operadores
        rule = trapmf(erro_atual, 1001, 1500, 2000, 2001);

        x = 0;
        for (int a = 0; a <= TAMANHO; a++)
        {
          rGrande[a] = trapmf(x, 5, 10, 15, 16);

          if (rGrande[a] >= rule)
          {
            rGrande[a] = rule;
          }

          x += 1;
        }
      }

      // Aplica��o do M�todo de agrega��o e implica��o dos antecedentes pelo consequente.
      x = 0;
      float total_area = 0;
      float soma = 0;
      for (int a = 0; a <= TAMANHO; a++)
      {
        if (a >= 0 && a <= 5)
        {
          total_area += rBaixo[a];
          soma += (x * rBaixo[a]);
        }

        if (a >= 5 && a <= 10)
        {
          total_area += rMedio[a];
          soma += (x * rMedio[a]);
        }

        if (a >= 10 && a <= TAMANHO)
        {
          total_area += rGrande[a];
          soma += (x * rGrande[a]);
        }
        x += 1;
      }

      // C�lculo da Centr�ide.
      float reajuste = 0;
      if (total_area != 0)
      {
        reajuste = soma / total_area;
      }

      // vAnterior + erro * (sentido) entre um maximo de 1023 e um minimo de 0
      pwm = maximo(minimo(pwm + ((int)minimo(reajuste, erro_atual)) * (setpoint > rpm ? 1 : -1), 1023), 0);

      PWM_DutyCycle2(pwm);

      // Vari�veis de controle (n�vel baixo).
      PORTBbits.RB6 = 0;
    }

    // Resetar a flag do Timer0 para uma nova contagem.
    INTCONbits.T0IF = 0;
  }

  // Tratamento da interrup��o do Timer1.
  if (PIR1bits.TMR1IF)
  {
    // Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!

    // Resetar a flag do Timer1 para uma nova contagem.
    PIR1bits.TMR1IF = 0;
  }

  // Tratamento da interrup��o da SPI.
  /*if (PIR1bits.SSPIF)
  {
      // Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!

      // Resetar a flag do SPI para uma nova contagem.
      PIR1bits.SSPIF = 0;
  }*/
}

//-----------------------------------------------------------------------------
void main(void)
{
  TRISA = 0b00000001; // Configura��o dos canais anal�gicos do PORTA.
  PORTA = 0b00000001; // Inicializa��o dos canais anal�gicos do PORTA.
  TRISB = 0b00000000; // Configura��o das entradas/sa�das do PORTB (RB4 e RB5 PWM).
  PORTB = 0b00000000; // Inicializa��o das entradas/sa�das do PORTB.
  TRISC = 0b10000001; // Configura��o do PORTC - pinos RC0(TIMER), RC7(RX) e RC6(TX).
  PORTC = 0b11000000; // Inicializa��o dos pinos RX e TX em n�vel alto (Modo IDLE).
  TRISD = 0b00000000; // Configura��o das entradas/sa�das do PORTD.
  PORTD = 0b00000000; // Inicializa��o das das entradas/sa�das do PORTD.
  TRISE = 0b00000000; // Configura��o dos canais anal�gicos do PORTE.
  PORTE = 0b00000000; // Inicializa��o dos canais anal�gicos do PORTE.

  // Configura��es do TIMER1 para contagem de pulsos externos.
  T1CON = 0x03;
  TMR1L = 0x00;
  TMR1H = 0x00;

  // Inicializa��o dos perif�ricos do microcontrolador.
  USART_Init(115200); // Inicializa��o do m�dulo USART.
  TIMER0_Init();      // Inicializa��o do m�dulo do Timer0.
  // ADC_Init();				// Inicializa��o do m�dulo do conversor A/D.
  PWM_Init(); // 1.125khz, prescaler 16, 1024 passos.
  // LCD_Init();				// Inicializa��o do LCD.

  // Ativa��o das interrup��es do microcontrolador.
  INTCONbits.PEIE = 1; // Habilita Interrup��o de Perif�ricos do Microcontrolador.
  INTCONbits.GIE = 1;  // Habilita Interrup��o Global.

  // Inicia os m�dulos PWM desligados.
  PWM_DutyCycle1(0);
  PWM_DutyCycle2(0);

  // Seta o TIMER 0 para estouro de 1 em 1ms.
  TIMER0_Set(238);

  // Delay para estabiliza��o.
  __delay_ms(1000);

  // La�o principal do firmware.
  while (1)
  {

    __delay_ms(200);
  }
}