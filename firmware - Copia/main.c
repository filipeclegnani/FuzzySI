// Declaração das configurações e funcionalidades do PIC.
#include "config.h"

// Declaração das bibliotecas padrão da linguagem C.
//#include <stdio.h>
#include <stdlib.h>

// Declaração das bibliotecas com as configurações e funcionalidades do PIC.
#include "adc.h"
#include "eeprom.h"
#include "i2c.h"
#include "lcd.h"
#include "pwm.h"
#include "spi.h"
#include "timers.h"
#include "usart.h"

float maximo(float a, float b) {
  if (a > b) {
    return a;
  }
  return b;
}

float minimo(float a, float b) {
  if (a < b) {
    return a;
  }
  return b;
}

// Variáveis Globais de Controle.

// Configurações para formatação de dados de saída.
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

// Função Trapezoidal
float trapmf(float x, float a, float b, float c, float d) {
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
void interrupt ISR(void) {
  // Tratamento da interrupção do buffer de recepção.
  if (PIR1bits.RCIF) {
    setpoint = (USART_ReceiveChar() - 48) * 1000;
    // Flag de status da Interrupção do buffer de recepção da USART.
    PIR1bits.RCIF = 0;
  }

  // Tratamento da interrupção do conversor A/D.
  // if (PIR1bits.ADIF)
  // {
  // Caso a interrupção seja ativada a manipulação dos dados pode ser feita
  //  aqui!

  // 	// Limpa a flag da interrupção do conversor A/D.
  // 	PIR1bits.ADIF = 0;
  // }

  // Tratamento da interrupção do Timer0.
  // Controle da Interrupção do TIMER0.
  if (INTCONbits.T0IF) {
    // Carrega o valor equivalente a contagens de 1ms.
    TIMER0_Set(238);

    // Controle do número de contagens de tempo.
    if (contagens_tm0 < 499) {  // (n-1) n=10ms, n=20ms, n=500ms
      // Variável de controle/incremento do período de tempo.
      contagens_tm0++;

      // Variáveis de controle (nível alto).
      PORTBbits.RB6 = 1;
    } else {
      // Variável de controle do período de tempo.
      contagens_tm0 = 0;

      // Cálculo das rotações por minuto.
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

      // 1ª regra - Se a proximidade é alta, então o reajuste é baixo
      if (erro_atual <= 100) {
        // Fuzzificar as entradas e aplicação dos operadores

        rule = trapmf(erro_atual, -1, 0, 1, 100);

        x = 0;
        for (int a = 0; a <= TAMANHO; a++) {
          rBaixo[a] = trapmf(x, -1, 0, 0, 5);
          if (rBaixo[a] >= rule) {
            rBaixo[a] = rule;
          }

          x += 1;
        }
      }

      // 2ª regra - Se a proximidade é média e está em ajuste baixo, o reajuste
      // é baixo
      if (erro_atual >= 100 && erro_atual <= 1001 && delta <= 200) {
        // Fuzzificar as entradas e aplicação dos operadores
        rule = trapmf(erro_atual, 50, 800, 800, 1550) *
               (1 - trapmf(delta, -1, 0, 1, 200));

        x = 0;
        for (int a = 0; a <= TAMANHO; a++) {
          rBaixo[a] = trapmf(x, 2, 5, 5, 10);
          if (rBaixo[a] >= rule) {
            rBaixo[a] = rule;
          }

          x += 1;
        }
      }

      // 3ª regra - Se a proximidade é média e está em ajuste alto, o reajuste é
      // médio
      if (erro_atual >= 100 && erro_atual <= 1001 && delta >= 201) {
        // Fuzzificar as entradas e aplicação dos operadores
        rule = trapmf(erro_atual, 50, 800, 800, 1550) *
               trapmf(delta, 200, 500, 2000, 2001);

        x = 0;
        for (int a = 0; a <= TAMANHO; a++) {
          rMedio[a] = trapmf(x, 2, 5, 5, 10);

          if (rMedio[a] >= rule) {
            rMedio[a] = rule;
          }

          x += 1;
        }
      }

      // 4ª regra - Se a proximidade é baixa, então o reajuste é alto
      if (erro_atual >= 1001) {
        // Fuzzificar as entradas e aplicação dos operadores
        rule = trapmf(erro_atual, 1001, 1500, 2000, 2001);

        x = 0;
        for (int a = 0; a <= TAMANHO; a++) {
          rGrande[a] = trapmf(x, 5, 10, 15, 16);

          if (rGrande[a] >= rule) {
            rGrande[a] = rule;
          }

          x += 1;
        }
      }

      // Aplicação do Método de agregação e implicação dos antecedentes pelo
      // consequente.
      x = 0;
      float total_area = 0;
      float soma = 0;
      for (int a = 0; a <= TAMANHO; a++) {
        if (a >= 0 && a <= 5) {
          total_area += rBaixo[a];
          soma += (x * rBaixo[a]);
        }

        if (a >= 5 && a <= 10) {
          total_area += rMedio[a];
          soma += (x * rMedio[a]);
        }

        if (a >= 10 && a <= TAMANHO) {
          total_area += rGrande[a];
          soma += (x * rGrande[a]);
        }
        x += 1;
      }

      // Cálculo da Centróide.
      float reajuste = 0;
      if (total_area != 0) {
        reajuste = soma / total_area;
      }

      // vAnterior + erro * (sentido) entre um maximo de 1023 e um minimo de 0
      pwm = maximo(minimo(pwm + ((int)minimo(reajuste, erro_atual)) * (setpoint > rpm ? 1 : -1), 1023), 0);

      PWM_DutyCycle2(pwm);

      // Variáveis de controle (nível baixo).
      PORTBbits.RB6 = 0;
    }

    // Resetar a flag do Timer0 para uma nova contagem.
    INTCONbits.T0IF = 0;
  }

  // Tratamento da interrupção do Timer1.
  if (PIR1bits.TMR1IF) {
    // Caso a interrupção seja ativada a manipulação dos dados pode ser feita
    // aqui!

    // Resetar a flag do Timer1 para uma nova contagem.
    PIR1bits.TMR1IF = 0;
  }

  // Tratamento da interrupção da SPI.
  /*if (PIR1bits.SSPIF)
  {
      // Caso a interrupção seja ativada a manipulação dos dados pode ser feita
  aqui!

      // Resetar a flag do SPI para uma nova contagem.
      PIR1bits.SSPIF = 0;
  }*/
}

//-----------------------------------------------------------------------------
void main(void) {
  TRISA = 0b00000001;  // Configuração dos canais analógicos do PORTA.
  PORTA = 0b00000001;  // Inicialização dos canais analógicos do PORTA.
  TRISB = 0b00000000;  // Configuração das entradas/saídas do PORTB (RB4 e RB5 PWM).
  PORTB = 0b00000000;  // Inicialização das entradas/saídas do PORTB.
  TRISC = 0b10000001;  // Configuração do PORTC - pinos RC0(TIMER), RC7(RX) e
                       // RC6(TX).
  PORTC = 0b11000000;  // Inicialização dos pinos RX e TX em nível alto (Modo IDLE).
  TRISD = 0b00000000;  // Configuração das entradas/saídas do PORTD.
  PORTD = 0b00000000;  // Inicialização das das entradas/saídas do PORTD.
  TRISE = 0b00000000;  // Configuração dos canais analógicos do PORTE.
  PORTE = 0b00000000;  // Inicialização dos canais analógicos do PORTE.

  // Configurações do TIMER1 para contagem de pulsos externos.
  T1CON = 0x03;
  TMR1L = 0x00;
  TMR1H = 0x00;

  // Inicialização dos periféricos do microcontrolador.
  USART_Init(115200);  // Inicialização do módulo USART.
  TIMER0_Init();       // Inicialização do módulo do Timer0.
  // ADC_Init();				// Inicialização do módulo do
  // conversor A/D.
  PWM_Init();  // 1.125khz, prescaler 16, 1024 passos.
  // LCD_Init();				// Inicialização do LCD.

  // Ativação das interrupções do microcontrolador.
  INTCONbits.PEIE =
      1;               // Habilita Interrupção de Periféricos do Microcontrolador.
  INTCONbits.GIE = 1;  // Habilita Interrupção Global.

  // Inicia os módulos PWM desligados.
  PWM_DutyCycle1(0);
  PWM_DutyCycle2(0);

  // Seta o TIMER 0 para estouro de 1 em 1ms.
  TIMER0_Set(238);

  // Delay para estabilização.
  __delay_ms(1000);

  // Laço principal do firmware.
  while (1) {
    __delay_ms(200);
  }
}