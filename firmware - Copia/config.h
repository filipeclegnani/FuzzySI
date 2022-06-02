#ifndef CONFIG_H
#define CONFIG_H

//-----------------------------------------------------------------------------
// Configuração dos Fuses do Microcontrolador.
#pragma config FOSC  = HS   	// Oscillator Selection bits (HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN).
#pragma config WDTE  = OFF  	// Watchdog Timer Enable bit (WDT disabled).
#pragma config PWRTE = ON   	// Power-up Timer Enable bit (PWRT enabled).
#pragma config BOREN = OFF		// Brown-out Detect Enable bit (BOD disabled).
#pragma config LVP   = OFF  	// Low-Voltage Programming Enable bit (RB4/PGM pin has digital I/O function, HV on MCLR must be used for programming).
#pragma config CPD   = OFF  	// Data EE Memory Code Protection bit (Data memory code protection off).
#pragma config CP    = OFF  	// Flash Program Memory Code Protection bit (Code protection off).

//-----------------------------------------------------------------------------
// Biblioteca padrão.
#include <xc.h>

//-----------------------------------------------------------------------------
// Definições do sistema.
#define _XTAL_FREQ	   	18432000 // Cristal de 18.432 Mhz.

//-----------------------------------------------------------------------------

#endif