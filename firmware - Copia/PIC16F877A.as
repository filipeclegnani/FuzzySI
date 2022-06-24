opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_PWM_DutyCycle1
	FNCALL	_main,_PWM_DutyCycle2
	FNCALL	_main,_PWM_Init
	FNCALL	_main,_TIMER0_Init
	FNCALL	_main,_TIMER0_Set
	FNCALL	_main,_USART_Init
	FNCALL	_main,_inicia
	FNCALL	_main,_res
	FNCALL	_main,_set
	FNCALL	_USART_Init,___aldiv
	FNCALL	_LCD_Init,_LCD_WriteCmd
	FNROOT	_main
	FNCALL	_ISR,_LCD_Cursor
	FNCALL	_ISR,_LCD_WriteData
	FNCALL	_ISR,_USART_ReceiveChar
	FNCALL	_ISR,___awtoft
	FNCALL	_ISR,___bmul
	FNCALL	_ISR,___ftadd
	FNCALL	_ISR,___ftdiv
	FNCALL	_ISR,___ftge
	FNCALL	_ISR,___ftmul
	FNCALL	_ISR,___ftneg
	FNCALL	_ISR,___fttol
	FNCALL	_ISR,___lwdiv
	FNCALL	_ISR,___lwtoft
	FNCALL	_ISR,___wmul
	FNCALL	_ISR,_abs
	FNCALL	_ISR,_maximo
	FNCALL	_ISR,_minimo
	FNCALL	_ISR,_send
	FNCALL	_ISR,_trapmf
	FNCALL	_ISR,i1_PWM_DutyCycle2
	FNCALL	_ISR,i1_TIMER0_Set
	FNCALL	_ISR,i1_inicia
	FNCALL	_ISR,i1_res
	FNCALL	_ISR,i1_set
	FNCALL	_trapmf,___ftadd
	FNCALL	_trapmf,___ftdiv
	FNCALL	_trapmf,___ftge
	FNCALL	_trapmf,___ftneg
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_send,_USART_WriteChar
	FNCALL	_send,___lwdiv
	FNCALL	_minimo,___ftge
	FNCALL	_maximo,___ftge
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_USART_ReceiveChar,_USART_WriteString
	FNCALL	_USART_WriteString,_USART_WriteChar
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_velocidadeSetada
	global	_setpoint
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	59

;initializer for _velocidadeSetada
	retlw	0E8h
	retlw	03h

psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	44

;initializer for _setpoint
	retlw	0E8h
	retlw	03h

	global	_contador_rb6
	global	_kmph
	global	_tempo_rb6
	global	_buffer
	global	_receivedBuffer
	global	_contagens_tm0
	global	_erro_anterior
	global	_erro_atual
	global	_pulsos
	global	_pwm
	global	_receiveIndex
	global	_rpm
	global	_pilotoAtivo
	global	_rGrande
	global	_rMedio
	global	_rBaixo
	global	_TMR1
_TMR1	set	0xE
	global	_ADCON0bits
_ADCON0bits	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCP1CONbits
_CCP1CONbits	set	0x17
	global	_CCP2CON
_CCP2CON	set	0x1D
	global	_CCP2CONbits
_CCP2CONbits	set	0x1D
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_CCPR2L
_CCPR2L	set	0x1B
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PIR2bits
_PIR2bits	set	0xD
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_PORTE
_PORTE	set	0x9
	global	_PORTEbits
_PORTEbits	set	0x9
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCONbits
_SSPCONbits	set	0x14
	global	_T1CON
_T1CON	set	0x10
	global	_T1CONbits
_T1CONbits	set	0x10
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_TMR0
_TMR0	set	0x1
	global	_TMR1H
_TMR1H	set	0xF
	global	_TMR1L
_TMR1L	set	0xE
	global	_TXREG
_TXREG	set	0x19
	global	_OERR
_OERR	set	0xC1
	global	_ADCON1bits
_ADCON1bits	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_PIE2bits
_PIE2bits	set	0x8D
	global	_PR2
_PR2	set	0x92
	global	_SPBRG
_SPBRG	set	0x99
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPCON2bits
_SSPCON2bits	set	0x91
	global	_SSPSTATbits
_SSPSTATbits	set	0x94
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_TRISE
_TRISE	set	0x89
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_EEADR
_EEADR	set	0x10D
	global	_EEDATA
_EEDATA	set	0x10C
	global	_EECON1bits
_EECON1bits	set	0x18C
	global	_EECON2
_EECON2	set	0x18D
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	10
	retlw	13
	retlw	32	;' '
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	10
	retlw	13
	retlw	32	;' '
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"PIC16F877A.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_contador_rb6:
       ds      2

_kmph:
       ds      2

_tempo_rb6:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	59
_velocidadeSetada:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_buffer:
       ds      9

_receivedBuffer:
       ds      5

_contagens_tm0:
       ds      2

_erro_anterior:
       ds      2

_erro_atual:
       ds      2

_pulsos:
       ds      2

_pwm:
       ds      2

_receiveIndex:
       ds      2

_rpm:
       ds      2

_pilotoAtivo:
       ds      1

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	44
_setpoint:
       ds      2

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_rBaixo:
       ds      48

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_rGrande:
       ds      48

_rMedio:
       ds      48

	file	"PIC16F877A.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+01Dh)
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+030h)
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK2)
	movwf	fsr
	movlw	low((__pbssBANK2)+060h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
??_TIMER0_Set:	; 0 bytes @ 0x0
?_PWM_DutyCycle2:	; 0 bytes @ 0x0
??_TIMER0_Init:	; 0 bytes @ 0x0
??_PWM_Init:	; 0 bytes @ 0x0
?_PWM_DutyCycle1:	; 0 bytes @ 0x0
??_inicia:	; 0 bytes @ 0x0
??_res:	; 0 bytes @ 0x0
??_set:	; 0 bytes @ 0x0
??_LCD_WriteCmd:	; 0 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	TIMER0_Set@contagens
TIMER0_Set@contagens:	; 1 bytes @ 0x0
	global	PWM_DutyCycle1@valor
PWM_DutyCycle1@valor:	; 2 bytes @ 0x0
	global	PWM_DutyCycle2@valor
PWM_DutyCycle2@valor:	; 2 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	LCD_WriteCmd@Byte
LCD_WriteCmd@Byte:	; 1 bytes @ 0x1
	ds	1
??_PWM_DutyCycle2:	; 0 bytes @ 0x2
??_LCD_Init:	; 0 bytes @ 0x2
??_PWM_DutyCycle1:	; 0 bytes @ 0x2
	ds	2
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	4
??___aldiv:	; 0 bytes @ 0x8
	ds	1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x9
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0xA
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xB
	ds	4
?_USART_Init:	; 0 bytes @ 0xF
	global	USART_Init@BaudRate
USART_Init@BaudRate:	; 4 bytes @ 0xF
	ds	4
??_USART_Init:	; 0 bytes @ 0x13
	ds	4
??_main:	; 0 bytes @ 0x17
	ds	3
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	ISR@rpmAux
ISR@rpmAux:	; 2 bytes @ 0x0
	ds	2
	global	_ISR$1667
_ISR$1667:	; 3 bytes @ 0x2
	ds	3
	global	_ISR$1668
_ISR$1668:	; 3 bytes @ 0x5
	ds	3
	global	ISR@reajuste
ISR@reajuste:	; 3 bytes @ 0x8
	ds	3
	global	ISR@auxiliar
ISR@auxiliar:	; 2 bytes @ 0xB
	ds	2
	global	ISR@checksum
ISR@checksum:	; 1 bytes @ 0xD
	ds	1
	global	ISR@byte
ISR@byte:	; 1 bytes @ 0xE
	ds	1
	global	ISR@index
ISR@index:	; 1 bytes @ 0xF
	ds	1
	global	ISR@delta
ISR@delta:	; 2 bytes @ 0x10
	ds	2
	global	ISR@soma
ISR@soma:	; 3 bytes @ 0x12
	ds	3
	global	ISR@a
ISR@a:	; 2 bytes @ 0x15
	ds	2
	global	ISR@a_243
ISR@a_243:	; 2 bytes @ 0x17
	ds	2
	global	ISR@a_244
ISR@a_244:	; 2 bytes @ 0x19
	ds	2
	global	ISR@a_245
ISR@a_245:	; 2 bytes @ 0x1B
	ds	2
	global	ISR@total_area
ISR@total_area:	; 3 bytes @ 0x1D
	ds	3
	global	ISR@rule
ISR@rule:	; 3 bytes @ 0x20
	ds	3
	global	ISR@a_248
ISR@a_248:	; 2 bytes @ 0x23
	ds	2
	global	ISR@x
ISR@x:	; 3 bytes @ 0x25
	ds	3
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_USART_WriteChar:	; 0 bytes @ 0x0
??_USART_WriteChar:	; 0 bytes @ 0x0
?_LCD_Cursor:	; 0 bytes @ 0x0
?_LCD_WriteData:	; 0 bytes @ 0x0
??_LCD_WriteData:	; 0 bytes @ 0x0
?_TIMER0_Set:	; 0 bytes @ 0x0
?_TIMER0_Init:	; 0 bytes @ 0x0
?_PWM_Init:	; 0 bytes @ 0x0
?_LCD_Init:	; 0 bytes @ 0x0
?_inicia:	; 0 bytes @ 0x0
?_res:	; 0 bytes @ 0x0
?_set:	; 0 bytes @ 0x0
?_send:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_USART_WriteString:	; 0 bytes @ 0x0
?_LCD_WriteCmd:	; 0 bytes @ 0x0
?i1_inicia:	; 0 bytes @ 0x0
??i1_inicia:	; 0 bytes @ 0x0
?i1_res:	; 0 bytes @ 0x0
??i1_res:	; 0 bytes @ 0x0
?i1_set:	; 0 bytes @ 0x0
??i1_set:	; 0 bytes @ 0x0
?i1_TIMER0_Set:	; 0 bytes @ 0x0
??i1_TIMER0_Set:	; 0 bytes @ 0x0
?i1_PWM_DutyCycle2:	; 0 bytes @ 0x0
?_USART_ReceiveChar:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	?_abs
?_abs:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	USART_WriteChar@byte
USART_WriteChar@byte:	; 1 bytes @ 0x0
	global	LCD_Cursor@Col
LCD_Cursor@Col:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	i1TIMER0_Set@contagens
i1TIMER0_Set@contagens:	; 1 bytes @ 0x0
	global	abs@a
abs@a:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	i1PWM_DutyCycle2@valor
i1PWM_DutyCycle2@valor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
??_LCD_Cursor:	; 0 bytes @ 0x1
??_USART_WriteString:	; 0 bytes @ 0x1
??___bmul:	; 0 bytes @ 0x1
	global	LCD_WriteData@Byte
LCD_WriteData@Byte:	; 1 bytes @ 0x1
	ds	1
??_abs:	; 0 bytes @ 0x2
??i1_PWM_DutyCycle2:	; 0 bytes @ 0x2
	global	USART_WriteString@str
USART_WriteString@str:	; 1 bytes @ 0x2
	global	LCD_Cursor@Row
LCD_Cursor@Row:	; 1 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_USART_ReceiveChar:	; 0 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
?___ftge:	; 1 bit 
??___lwdiv:	; 0 bytes @ 0x4
	global	USART_ReceiveChar@byte
USART_ReceiveChar@byte:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x7
	ds	1
??_send:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	1
	global	send@checksum
send@checksum:	; 1 bytes @ 0x9
	ds	1
	global	send@index
send@index:	; 1 bytes @ 0xA
	ds	1
??___awtoft:	; 0 bytes @ 0xB
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
??_maximo:	; 0 bytes @ 0xE
??_minimo:	; 0 bytes @ 0xE
??_trapmf:	; 0 bytes @ 0xE
??___wmul:	; 0 bytes @ 0xE
??___ftneg:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftge:	; 0 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	ds	3
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x3
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x3
	ds	3
	global	?_minimo
?_minimo:	; 3 bytes @ 0x6
	global	minimo@a
minimo@a:	; 3 bytes @ 0x6
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x6
	ds	3
??___ftadd:	; 0 bytes @ 0x9
	global	minimo@b
minimo@b:	; 3 bytes @ 0x9
	ds	3
	global	?_maximo
?_maximo:	; 3 bytes @ 0xC
	global	maximo@a
maximo@a:	; 3 bytes @ 0xC
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0xD
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0xE
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0xF
	global	maximo@b
maximo@b:	; 3 bytes @ 0xF
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x10
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x10
	ds	2
	global	?___fttol
?___fttol:	; 4 bytes @ 0x12
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x12
	ds	1
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x13
	ds	3
??___ftdiv:	; 0 bytes @ 0x16
??___fttol:	; 0 bytes @ 0x16
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1A
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x1A
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1B
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1B
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1E
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1F
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1F
	ds	1
	global	?___wmul
?___wmul:	; 2 bytes @ 0x20
	global	?_trapmf
?_trapmf:	; 3 bytes @ 0x20
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x20
	global	trapmf@x
trapmf@x:	; 3 bytes @ 0x20
	ds	2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x22
	ds	1
	global	trapmf@a
trapmf@a:	; 3 bytes @ 0x23
	ds	1
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x24
	ds	2
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x26
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x26
	global	trapmf@b
trapmf@b:	; 3 bytes @ 0x26
	ds	3
??___lwtoft:	; 0 bytes @ 0x29
	global	trapmf@c
trapmf@c:	; 3 bytes @ 0x29
	ds	3
	global	trapmf@d
trapmf@d:	; 3 bytes @ 0x2C
	ds	3
	global	trapmf@ua
trapmf@ua:	; 3 bytes @ 0x2F
	ds	3
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x32
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x32
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x35
	ds	3
??___ftmul:	; 0 bytes @ 0x38
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x3C
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x3D
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x40
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x41
	ds	1
??_ISR:	; 0 bytes @ 0x42
	ds	6
;!
;!Data Sizes:
;!    Strings     40
;!    Constant    0
;!    Data        4
;!    BSS         179
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     72      80
;!    BANK1            80     40      71
;!    BANK3            96     26      74
;!    BANK2            96      0      96

;!
;!Pointer List with Targets:
;!
;!    USART_WriteString@str	PTR const unsigned char  size(1) Largest target is 40
;!		 -> STR_1(CODE[40]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->___awtoft
;!    _trapmf->___awtoft
;!    ___ftneg->___awtoft
;!    ___ftadd->___awtoft
;!    _send->___lwdiv
;!    _minimo->___awtoft
;!    _maximo->___awtoft
;!    ___ftge->___bmul
;!    ___wmul->___awtoft
;!    ___lwtoft->___awtoft
;!    ___fttol->___awtoft
;!    ___ftmul->___awtoft
;!    ___awtoft->___ftpack
;!    _USART_ReceiveChar->_USART_WriteString
;!    _USART_WriteString->_USART_WriteChar
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    _ISR->___ftmul
;!    _trapmf->___ftdiv
;!    ___ftdiv->___ftadd
;!    ___ftadd->___ftneg
;!    _minimo->___ftge
;!    _maximo->_minimo
;!    ___wmul->___fttol
;!    ___lwtoft->___wmul
;!    ___fttol->_maximo
;!    ___ftmul->_trapmf
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    _main->_USART_Init
;!    _USART_Init->___aldiv
;!    _LCD_Init->_LCD_WriteCmd
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0     821
;!                                             23 BANK3      3     3      0
;!                           _LCD_Init
;!                     _PWM_DutyCycle1
;!                     _PWM_DutyCycle2
;!                           _PWM_Init
;!                        _TIMER0_Init
;!                         _TIMER0_Set
;!                         _USART_Init
;!                             _inicia
;!                                _res
;!                                _set
;! ---------------------------------------------------------------------------------
;! (1) _set                                                  1     1      0       0
;!                                              0 BANK3      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _res                                                  1     1      0       0
;!                                              0 BANK3      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _inicia                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _USART_Init                                           8     4      4     514
;!                                             15 BANK3      8     4      4
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     428
;!                                              0 BANK3     15     7      8
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Set                                           1     1      0      31
;!                                              0 BANK3      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle2                                       4     2      2     146
;!                                              0 BANK3      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle1                                       4     2      2     108
;!                                              0 BANK3      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0      22
;!                                              2 BANK3      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteCmd                                         2     2      0      22
;!                                              0 BANK3      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _ISR                                                 46    46      0   50503
;!                                             66 BANK0      6     6      0
;!                                              0 BANK1     40    40      0
;!                         _LCD_Cursor
;!                      _LCD_WriteData
;!                  _USART_ReceiveChar
;!                           ___awtoft
;!                             ___bmul
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                            ___lwdiv
;!                           ___lwtoft
;!                             ___wmul
;!                                _abs
;!                             _maximo
;!                             _minimo
;!                               _send
;!                             _trapmf
;!                   i1_PWM_DutyCycle2
;!                       i1_TIMER0_Set
;!                           i1_inicia
;!                              i1_res
;!                              i1_set
;! ---------------------------------------------------------------------------------
;! (4) i1_set                                                1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) i1_res                                                1     1      0       0
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) i1_inicia                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) i1_TIMER0_Set                                         1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) i1_PWM_DutyCycle2                                     4     2      2      70
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (4) _trapmf                                              18     3     15   17597
;!                                             32 BANK0     18     3     15
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftneg
;! ---------------------------------------------------------------------------------
;! (5) ___ftneg                                              3     0      3     365
;!                                              0 BANK0      3     0      3
;!                           ___awtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___ftdiv                                             16    10      6    2751
;!                                             16 BANK0     16    10      6
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___ftadd                                             13     7      6    6867
;!                                              3 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                             ___bmul (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) _send                                                 3     3      0     682
;!                                              8 COMMON     3     3      0
;!                    _USART_WriteChar
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (5) ___lwdiv                                              8     4      4     546
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (4) _minimo                                               6     0      6    2528
;!                                              6 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                             ___ftge
;!                                _abs (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _maximo                                               6     0      6    2272
;!                                             12 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                             ___ftge
;!                                _abs (ARG)
;!                             _minimo (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___ftge                                              12     6      6    1928
;!                                              4 COMMON     6     0      6
;!                                              0 BANK0      6     6      0
;!                             ___bmul (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _abs                                                  4     2      2     194
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (4) ___wmul                                               6     2      4    1844
;!                                             32 BANK0      6     2      4
;!                           ___awtoft (ARG)
;!                            ___fttol (ARG)
;!                            ___lwdiv (ARG)
;!                             _maximo (ARG)
;!                             _minimo (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___lwtoft                                             4     1      3    2173
;!                                             38 BANK0      4     1      3
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                            ___fttol (ARG)
;!                             ___wmul (ARG)
;!                             _maximo (ARG)
;!                             _minimo (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___fttol                                             14    10      4     508
;!                                             18 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                                _abs (ARG)
;!                             _maximo (ARG)
;!                             _minimo (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftmul                                             16    10      6    3053
;!                                             50 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                             ___bmul (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                             _trapmf (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___bmul                                               4     3      1     560
;!                                              0 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (4) ___awtoft                                             6     3      3    2754
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;!                                _abs (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftpack                                             8     3      5    2087
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (4) _USART_ReceiveChar                                    2     2      0     121
;!                                              3 COMMON     2     2      0
;!                  _USART_WriteString
;! ---------------------------------------------------------------------------------
;! (5) _USART_WriteString                                    2     2      0      97
;!                                              1 COMMON     2     2      0
;!                    _USART_WriteChar
;! ---------------------------------------------------------------------------------
;! (5) _USART_WriteChar                                      1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _LCD_WriteData                                        2     2      0      22
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (4) _LCD_Cursor                                           3     2      1     130
;!                                              0 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _LCD_Init
;!     _LCD_WriteCmd
;!   _PWM_DutyCycle1
;!   _PWM_DutyCycle2
;!   _PWM_Init
;!   _TIMER0_Init
;!   _TIMER0_Set
;!   _USART_Init
;!     ___aldiv
;!   _inicia
;!   _res
;!   _set
;!
;! _ISR (ROOT)
;!   _LCD_Cursor
;!   _LCD_WriteData
;!   _USART_ReceiveChar
;!     _USART_WriteString
;!       _USART_WriteChar
;!   ___awtoft
;!     ___ftpack
;!     _abs (ARG)
;!   ___bmul
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___ftpack
;!       _abs (ARG)
;!     ___bmul (ARG)
;!     ___ftneg (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!     ___ftpack (ARG)
;!   ___ftdiv
;!     ___ftadd (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___bmul (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!       ___ftpack (ARG)
;!     ___ftneg (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!     ___ftpack (ARG)
;!   ___ftge
;!     ___bmul (ARG)
;!   ___ftmul
;!     ___awtoft (ARG)
;!       ___ftpack
;!       _abs (ARG)
;!     ___bmul (ARG)
;!     ___ftadd (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___bmul (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!       ___ftpack (ARG)
;!     ___ftneg (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!     ___ftpack (ARG)
;!     _trapmf (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___bmul (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___bmul (ARG)
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!               _abs (ARG)
;!           ___ftpack (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!         ___ftpack (ARG)
;!       ___ftge (ARG)
;!         ___bmul (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!   ___ftneg
;!     ___awtoft (ARG)
;!       ___ftpack
;!       _abs (ARG)
;!   ___fttol
;!     ___awtoft (ARG)
;!       ___ftpack
;!       _abs (ARG)
;!     _abs (ARG)
;!     _maximo (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!         ___bmul (ARG)
;!       _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!           ___bmul (ARG)
;!         _abs (ARG)
;!     _minimo (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!         ___bmul (ARG)
;!       _abs (ARG)
;!   ___lwdiv
;!   ___lwtoft
;!     ___awtoft (ARG)
;!       ___ftpack
;!       _abs (ARG)
;!     ___ftpack (ARG)
;!     ___fttol (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       _abs (ARG)
;!       _maximo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!           ___bmul (ARG)
;!         _abs (ARG)
;!         _minimo (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftge (ARG)
;!             ___bmul (ARG)
;!           _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!           ___bmul (ARG)
;!         _abs (ARG)
;!     ___wmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___fttol (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         _abs (ARG)
;!         _maximo (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftge (ARG)
;!             ___bmul (ARG)
;!           _abs (ARG)
;!           _minimo (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!               _abs (ARG)
;!             ___ftge (ARG)
;!               ___bmul (ARG)
;!             _abs (ARG)
;!         _minimo (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftge (ARG)
;!             ___bmul (ARG)
;!           _abs (ARG)
;!       ___lwdiv (ARG)
;!       _maximo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!           ___bmul (ARG)
;!         _abs (ARG)
;!         _minimo (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftge (ARG)
;!             ___bmul (ARG)
;!           _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!           ___bmul (ARG)
;!         _abs (ARG)
;!     _maximo (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!         ___bmul (ARG)
;!       _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!           ___bmul (ARG)
;!         _abs (ARG)
;!     _minimo (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!         ___bmul (ARG)
;!       _abs (ARG)
;!   ___wmul
;!     ___awtoft (ARG)
;!       ___ftpack
;!       _abs (ARG)
;!     ___fttol (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       _abs (ARG)
;!       _maximo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!           ___bmul (ARG)
;!         _abs (ARG)
;!         _minimo (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftge (ARG)
;!             ___bmul (ARG)
;!           _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!           ___bmul (ARG)
;!         _abs (ARG)
;!     ___lwdiv (ARG)
;!     _maximo (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!         ___bmul (ARG)
;!       _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!           ___bmul (ARG)
;!         _abs (ARG)
;!     _minimo (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!         ___bmul (ARG)
;!       _abs (ARG)
;!   _abs
;!   _maximo
;!     ___awtoft (ARG)
;!       ___ftpack
;!       _abs (ARG)
;!     ___ftge (ARG)
;!       ___bmul (ARG)
;!     _abs (ARG)
;!     _minimo (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!         ___bmul (ARG)
;!       _abs (ARG)
;!   _minimo
;!     ___awtoft (ARG)
;!       ___ftpack
;!       _abs (ARG)
;!     ___ftge (ARG)
;!       ___bmul (ARG)
;!     _abs (ARG)
;!   _send
;!     _USART_WriteChar
;!     ___lwdiv
;!   _trapmf
;!     ___awtoft (ARG)
;!       ___ftpack
;!       _abs (ARG)
;!     ___ftadd (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___bmul (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!       ___ftpack (ARG)
;!     ___ftdiv (ARG)
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___bmul (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!       ___ftpack (ARG)
;!     ___ftge (ARG)
;!       ___bmul (ARG)
;!     ___ftneg (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!   i1_PWM_DutyCycle2
;!   i1_TIMER0_Set
;!   i1_inicia
;!   i1_res
;!   i1_set
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     1A      4A       9       77.1%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0      60      11      100.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     28      47       7       88.8%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     48      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0     14F      12        0.0%
;!ABS                  0      0     14F       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 413 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       3       0
;;      Totals:         0       0       0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_Init
;;		_PWM_DutyCycle1
;;		_PWM_DutyCycle2
;;		_PWM_Init
;;		_TIMER0_Init
;;		_TIMER0_Set
;;		_USART_Init
;;		_inicia
;;		_res
;;		_set
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	413
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	413
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	414
	
l3195:	
;main.c: 414: TRISA = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	415
;main.c: 415: PORTA = 0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	416
;main.c: 416: TRISB = 0b00001111;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	417
	
l3197:	
;main.c: 417: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	418
	
l3199:	
;main.c: 418: TRISC = 0b10000001;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	420
	
l3201:	
;main.c: 420: PORTC = 0b11000000;
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	421
	
l3203:	
;main.c: 421: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	422
	
l3205:	
;main.c: 422: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	423
	
l3207:	
;main.c: 423: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	424
	
l3209:	
;main.c: 424: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	427
	
l3211:	
;main.c: 427: T1CON = 0x03;
	movlw	(03h)
	movwf	(16)	;volatile
	line	428
;main.c: 428: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	429
;main.c: 429: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	433
	
l3213:	
;main.c: 433: USART_Init(115200);
	movlw	0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(USART_Init@BaudRate+3)^0180h
	movlw	01h
	movwf	(USART_Init@BaudRate+2)^0180h
	movlw	0C2h
	movwf	(USART_Init@BaudRate+1)^0180h
	movlw	0
	movwf	(USART_Init@BaudRate)^0180h

	fcall	_USART_Init
	line	434
	
l3215:	
;main.c: 434: TIMER0_Init();
	fcall	_TIMER0_Init
	line	437
	
l3217:	
;main.c: 437: PWM_Init();
	fcall	_PWM_Init
	line	438
	
l3219:	
;main.c: 438: LCD_Init();
	fcall	_LCD_Init
	line	441
	
l3221:	
;main.c: 441: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	442
	
l3223:	
;main.c: 442: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	445
	
l3225:	
;main.c: 445: PWM_DutyCycle1(0);
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(PWM_DutyCycle1@valor)^0180h
	movlw	high(0)
	movwf	((PWM_DutyCycle1@valor)^0180h)+1
	fcall	_PWM_DutyCycle1
	line	446
	
l3227:	
;main.c: 446: PWM_DutyCycle2(100);
	movlw	low(064h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(PWM_DutyCycle2@valor)^0180h
	movlw	high(064h)
	movwf	((PWM_DutyCycle2@valor)^0180h)+1
	fcall	_PWM_DutyCycle2
	line	449
	
l3229:	
;main.c: 449: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	_TIMER0_Set
	line	452
	
l3231:	
;main.c: 452: _delay((unsigned long)((1000)*(18432000/4000.0)));
	opt asmopt_off
movlw  24
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+2),f
movlw	97
movwf	((??_main+0)^0180h+0+1),f
	movlw	110
movwf	((??_main+0)^0180h+0),f
u5797:
	decfsz	((??_main+0)^0180h+0),f
	goto	u5797
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5797
	decfsz	((??_main+0)^0180h+0+2),f
	goto	u5797
	nop
opt asmopt_on

	goto	l3233
	line	455
;main.c: 455: while (1) {
	
l183:	
	line	457
	
l3233:	
;main.c: 457: if(PORTBbits.RB0 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),0	;volatile
	goto	u4051
	goto	u4050
u4051:
	goto	l3239
u4050:
	goto	l185
	line	458
	
l3235:	
;main.c: 458: while(PORTBbits.RB0 == 0);
	goto	l185
	
l186:	
	
l185:	
	btfss	(6),0	;volatile
	goto	u4061
	goto	u4060
u4061:
	goto	l185
u4060:
	goto	l3237
	
l187:	
	line	459
	
l3237:	
;main.c: 459: inicia();
	fcall	_inicia
	goto	l3239
	line	460
	
l184:	
	line	461
	
l3239:	
;main.c: 460: }
;main.c: 461: if(PORTBbits.RB1 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),1	;volatile
	goto	u4071
	goto	u4070
u4071:
	goto	l3247
u4070:
	goto	l189
	line	462
	
l3241:	
;main.c: 462: while(PORTBbits.RB1 == 0);
	goto	l189
	
l190:	
	
l189:	
	btfss	(6),1	;volatile
	goto	u4081
	goto	u4080
u4081:
	goto	l189
u4080:
	goto	l3243
	
l191:	
	line	463
	
l3243:	
;main.c: 463: _delay((unsigned long)((20)*(18432000/4000.0)));
	opt asmopt_off
movlw	120
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+1),f
	movlw	175
movwf	((??_main+0)^0180h+0),f
u5807:
	decfsz	((??_main+0)^0180h+0),f
	goto	u5807
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5807
opt asmopt_on

	line	464
;main.c: 464: while(PORTBbits.RB1 == 0);
	goto	l192
	
l193:	
	
l192:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),1	;volatile
	goto	u4091
	goto	u4090
u4091:
	goto	l192
u4090:
	goto	l3245
	
l194:	
	line	465
	
l3245:	
;main.c: 465: res();
	fcall	_res
	goto	l3247
	line	466
	
l188:	
	line	467
	
l3247:	
;main.c: 466: }
;main.c: 467: if(PORTBbits.RB2 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),2	;volatile
	goto	u4101
	goto	u4100
u4101:
	goto	l3255
u4100:
	goto	l196
	line	468
	
l3249:	
;main.c: 468: while(PORTBbits.RB2 == 0);
	goto	l196
	
l197:	
	
l196:	
	btfss	(6),2	;volatile
	goto	u4111
	goto	u4110
u4111:
	goto	l196
u4110:
	goto	l3251
	
l198:	
	line	469
	
l3251:	
;main.c: 469: _delay((unsigned long)((20)*(18432000/4000.0)));
	opt asmopt_off
movlw	120
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+1),f
	movlw	175
movwf	((??_main+0)^0180h+0),f
u5817:
	decfsz	((??_main+0)^0180h+0),f
	goto	u5817
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5817
opt asmopt_on

	line	470
;main.c: 470: while(PORTBbits.RB2 == 0);
	goto	l199
	
l200:	
	
l199:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(6),2	;volatile
	goto	u4121
	goto	u4120
u4121:
	goto	l199
u4120:
	goto	l3253
	
l201:	
	line	471
	
l3253:	
;main.c: 471: set();
	fcall	_set
	goto	l3255
	line	472
	
l195:	
	line	473
	
l3255:	
;main.c: 472: }
;main.c: 473: if(PORTBbits.RB3 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),3	;volatile
	goto	u4131
	goto	u4130
u4131:
	goto	l3263
u4130:
	goto	l203
	line	474
	
l3257:	
;main.c: 474: while(PORTBbits.RB3 == 0);
	goto	l203
	
l204:	
	
l203:	
	btfss	(6),3	;volatile
	goto	u4141
	goto	u4140
u4141:
	goto	l203
u4140:
	goto	l3259
	
l205:	
	line	475
	
l3259:	
;main.c: 475: _delay((unsigned long)((20)*(18432000/4000.0)));
	opt asmopt_off
movlw	120
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+1),f
	movlw	175
movwf	((??_main+0)^0180h+0),f
u5827:
	decfsz	((??_main+0)^0180h+0),f
	goto	u5827
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5827
opt asmopt_on

	line	476
	
l3261:	
;main.c: 476: pilotoAtivo = pilotoAtivo & 0b11111101;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pilotoAtivo)^080h,w
	andlw	0FDh
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_main+0)^0180h+0
	movf	(??_main+0)^0180h+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pilotoAtivo)^080h
	goto	l3263
	line	477
	
l202:	
	line	490
	
l3263:	
;main.c: 477: }
;main.c: 490: _delay((unsigned long)((200)*(18432000/4000.0)));
	opt asmopt_off
movlw  5
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+2),f
movlw	173
movwf	((??_main+0)^0180h+0+1),f
	movlw	224
movwf	((??_main+0)^0180h+0),f
u5837:
	decfsz	((??_main+0)^0180h+0),f
	goto	u5837
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5837
	decfsz	((??_main+0)^0180h+0+2),f
	goto	u5837
opt asmopt_on

	goto	l3233
	line	491
	
l206:	
	line	455
	goto	l3233
	
l207:	
	line	492
	
l208:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_set

;; *************** function _set *****************
;; Defined at:
;;		line 99 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	99
global __ptext1
__ptext1:	;psect for function _set
psect	text1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	99
	global	__size_of_set
	__size_of_set	equ	__end_of_set-_set
	
_set:	
;incstack = 0
	opt	stack 3
; Regs used in _set: [wreg+status,2+status,0]
	line	100
	
l2417:	
;main.c: 100: if(kmph > 40){
	movlw	high(029h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_kmph+1),w
	movlw	low(029h)
	skipnz
	subwf	(_kmph),w
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l112
u2830:
	line	102
	
l2419:	
;main.c: 102: if(pilotoAtivo == 3 && setpoint > 1640){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pilotoAtivo)^080h,w
	xorlw	03h
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l2425
u2840:
	
l2421:	
	movlw	high(0669h)
	subwf	(_setpoint+1)^080h,w
	movlw	low(0669h)
	skipnz
	subwf	(_setpoint)^080h,w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l2425
u2850:
	line	104
	
l2423:	
;main.c: 104: setpoint = setpoint - 41;
	movf	(_setpoint)^080h,w
	addlw	low(0FFD7h)
	movwf	(_setpoint)^080h
	movf	(_setpoint+1)^080h,w
	skipnc
	addlw	1
	addlw	high(0FFD7h)
	movwf	1+(_setpoint)^080h
	line	105
;main.c: 105: velocidadeSetada = setpoint;
	movf	(_setpoint+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_velocidadeSetada+1)
	addwf	(_velocidadeSetada+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpoint)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_velocidadeSetada)
	addwf	(_velocidadeSetada)

	goto	l2425
	line	106
	
l110:	
	line	107
	
l2425:	
;main.c: 106: }
;main.c: 107: if(pilotoAtivo == 1){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pilotoAtivo)^080h,w
	xorlw	01h
	skipz
	goto	u2861
	goto	u2860
u2861:
	goto	l112
u2860:
	line	109
	
l2427:	
;main.c: 109: pilotoAtivo = 3;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_set+0)^0180h+0
	movf	(??_set+0)^0180h+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pilotoAtivo)^080h
	line	110
	
l2429:	
;main.c: 110: setpoint = velocidadeSetada;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_velocidadeSetada+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_setpoint+1)^080h
	addwf	(_setpoint+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_velocidadeSetada),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_setpoint)^080h
	addwf	(_setpoint)^080h

	goto	l112
	line	111
	
l111:	
	goto	l112
	line	112
	
l109:	
	line	113
	
l112:	
	return
	opt stack 0
GLOBAL	__end_of_set
	__end_of_set:
	signat	_set,88
	global	_res

;; *************** function _res *****************
;; Defined at:
;;		line 86 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	86
global __ptext2
__ptext2:	;psect for function _res
psect	text2
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	86
	global	__size_of_res
	__size_of_res	equ	__end_of_res-_res
	
_res:	
;incstack = 0
	opt	stack 3
; Regs used in _res: [wreg+status,2+status,0]
	line	87
	
l2405:	
;main.c: 87: if(pilotoAtivo == 3 && setpoint < 9000){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pilotoAtivo)^080h,w
	xorlw	03h
	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l2411
u2800:
	
l2407:	
	movlw	high(02328h)
	subwf	(_setpoint+1)^080h,w
	movlw	low(02328h)
	skipnz
	subwf	(_setpoint)^080h,w
	skipnc
	goto	u2811
	goto	u2810
u2811:
	goto	l2411
u2810:
	line	89
	
l2409:	
;main.c: 89: setpoint = setpoint + 41;
	movf	(_setpoint)^080h,w
	addlw	low(029h)
	movwf	(_setpoint)^080h
	movf	(_setpoint+1)^080h,w
	skipnc
	addlw	1
	addlw	high(029h)
	movwf	1+(_setpoint)^080h
	line	90
;main.c: 90: velocidadeSetada = setpoint;
	movf	(_setpoint+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_velocidadeSetada+1)
	addwf	(_velocidadeSetada+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpoint)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_velocidadeSetada)
	addwf	(_velocidadeSetada)

	goto	l2411
	line	91
	
l104:	
	line	92
	
l2411:	
;main.c: 91: }
;main.c: 92: if(pilotoAtivo == 1){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pilotoAtivo)^080h,w
	xorlw	01h
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l106
u2820:
	line	94
	
l2413:	
;main.c: 94: pilotoAtivo = 3;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_res+0)^0180h+0
	movf	(??_res+0)^0180h+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pilotoAtivo)^080h
	line	95
	
l2415:	
;main.c: 95: setpoint = velocidadeSetada;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_velocidadeSetada+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_setpoint+1)^080h
	addwf	(_setpoint+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_velocidadeSetada),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_setpoint)^080h
	addwf	(_setpoint)^080h

	goto	l106
	line	96
	
l105:	
	line	97
	
l106:	
	return
	opt stack 0
GLOBAL	__end_of_res
	__end_of_res:
	signat	_res,88
	global	_inicia

;; *************** function _inicia *****************
;; Defined at:
;;		line 79 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	79
global __ptext3
__ptext3:	;psect for function _inicia
psect	text3
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	79
	global	__size_of_inicia
	__size_of_inicia	equ	__end_of_inicia-_inicia
	
_inicia:	
;incstack = 0
	opt	stack 3
; Regs used in _inicia: [status,2]
	line	80
	
l3159:	
;main.c: 80: if(pilotoAtivo & 1){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(_pilotoAtivo)^080h,(0)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l99
u4040:
	line	81
	
l3161:	
;main.c: 81: pilotoAtivo = 0;
	clrf	(_pilotoAtivo)^080h
	line	82
;main.c: 82: }else{
	goto	l101
	
l99:	
	line	83
;main.c: 83: pilotoAtivo = 1;
	clrf	(_pilotoAtivo)^080h
	incf	(_pilotoAtivo)^080h,f
	goto	l101
	line	84
	
l100:	
	line	85
	
l101:	
	return
	opt stack 0
GLOBAL	__end_of_inicia
	__end_of_inicia:
	signat	_inicia,88
	global	_USART_Init

;; *************** function _USART_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\usart.c"
;; Parameters:    Size  Location     Type
;;  BaudRate        4   15[BANK3 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       4       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       4       0
;;      Totals:         0       0       0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\usart.c"
	line	6
global __ptext4
__ptext4:	;psect for function _USART_Init
psect	text4
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\usart.c"
	line	6
	global	__size_of_USART_Init
	__size_of_USART_Init	equ	__end_of_USART_Init-_USART_Init
	
_USART_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	13
	
l2549:	
;usart.c: 13: SPBRG = (unsigned char)(18432000 / (16 * BaudRate)) - 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(USART_Init@BaudRate)^0180h,w
	movwf	(??_USART_Init+0)^0180h+0
	movf	(USART_Init@BaudRate+1)^0180h,w
	movwf	((??_USART_Init+0)^0180h+0+1)
	movf	(USART_Init@BaudRate+2)^0180h,w
	movwf	((??_USART_Init+0)^0180h+0+2)
	movf	(USART_Init@BaudRate+3)^0180h,w
	movwf	((??_USART_Init+0)^0180h+0+3)
	movlw	04h
u3015:
	clrc
	rlf	(??_USART_Init+0)^0180h+0,f
	rlf	(??_USART_Init+0)^0180h+1,f
	rlf	(??_USART_Init+0)^0180h+2,f
	rlf	(??_USART_Init+0)^0180h+3,f
u3010:
	addlw	-1
	skipz
	goto	u3015
	movf	3+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor+3)^0180h
	movf	2+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor+2)^0180h
	movf	1+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor+1)^0180h
	movf	0+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor)^0180h

	movlw	01h
	movwf	(___aldiv@dividend+3)^0180h
	movlw	019h
	movwf	(___aldiv@dividend+2)^0180h
	movlw	040h
	movwf	(___aldiv@dividend+1)^0180h
	movlw	0
	movwf	(___aldiv@dividend)^0180h

	fcall	___aldiv
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(((0+(?___aldiv))^0180h)),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l2551:	
;usart.c: 16: TXSTAbits.CSRC = 0;
	bcf	(152)^080h,7	;volatile
	line	17
	
l2553:	
;usart.c: 17: TXSTAbits.TX9 = 0;
	bcf	(152)^080h,6	;volatile
	line	18
	
l2555:	
;usart.c: 18: TXSTAbits.TXEN = 1;
	bsf	(152)^080h,5	;volatile
	line	19
	
l2557:	
;usart.c: 19: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	21
	
l2559:	
;usart.c: 21: TXSTAbits.BRGH = 1;
	bsf	(152)^080h,2	;volatile
	line	22
	
l2561:	
;usart.c: 22: TXSTAbits.TRMT = 1;
	bsf	(152)^080h,1	;volatile
	line	23
	
l2563:	
;usart.c: 23: TXSTAbits.TX9D = 0;
	bcf	(152)^080h,0	;volatile
	line	26
	
l2565:	
;usart.c: 26: RCSTAbits.SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	27
	
l2567:	
;usart.c: 27: RCSTAbits.RX9 = 0;
	bcf	(24),6	;volatile
	line	28
	
l2569:	
;usart.c: 28: RCSTAbits.SREN = 0;
	bcf	(24),5	;volatile
	line	29
	
l2571:	
;usart.c: 29: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	30
	
l2573:	
;usart.c: 30: RCSTAbits.ADDEN = 0;
	bcf	(24),3	;volatile
	line	31
	
l2575:	
;usart.c: 31: RCSTAbits.FERR = 0;
	bcf	(24),2	;volatile
	line	32
	
l2577:	
;usart.c: 32: RCSTAbits.OERR = 0;
	bcf	(24),1	;volatile
	line	33
	
l2579:	
;usart.c: 33: RCSTAbits.RX9D = 0;
	bcf	(24),0	;volatile
	line	36
	
l2581:	
;usart.c: 36: PIE1bits.TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,4	;volatile
	line	37
	
l2583:	
;usart.c: 37: PIR1bits.TXIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),4	;volatile
	line	38
	
l2585:	
;usart.c: 38: PIE1bits.RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,5	;volatile
	line	39
	
l2587:	
;usart.c: 39: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	line	40
	
l227:	
	return
	opt stack 0
GLOBAL	__end_of_USART_Init
	__end_of_USART_Init:
	signat	_USART_Init,4216
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK3 ] long 
;;  dividend        4    4[BANK3 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   11[BANK3 ] long 
;;  sign            1   10[BANK3 ] unsigned char 
;;  counter         1    9[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK3 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       8       0
;;      Locals:         0       0       0       6       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0      15       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_Init
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___aldiv
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	14
	
l2177:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(___aldiv@sign)^0180h
	line	15
	
l2179:	
	btfss	(___aldiv@divisor+3)^0180h,7
	goto	u2221
	goto	u2220
u2221:
	goto	l609
u2220:
	line	16
	
l2181:	
	comf	(___aldiv@divisor)^0180h,f
	comf	(___aldiv@divisor+1)^0180h,f
	comf	(___aldiv@divisor+2)^0180h,f
	comf	(___aldiv@divisor+3)^0180h,f
	incf	(___aldiv@divisor)^0180h,f
	skipnz
	incf	(___aldiv@divisor+1)^0180h,f
	skipnz
	incf	(___aldiv@divisor+2)^0180h,f
	skipnz
	incf	(___aldiv@divisor+3)^0180h,f
	line	17
	clrf	(___aldiv@sign)^0180h
	incf	(___aldiv@sign)^0180h,f
	line	18
	
l609:	
	line	19
	btfss	(___aldiv@dividend+3)^0180h,7
	goto	u2231
	goto	u2230
u2231:
	goto	l2187
u2230:
	line	20
	
l2183:	
	comf	(___aldiv@dividend)^0180h,f
	comf	(___aldiv@dividend+1)^0180h,f
	comf	(___aldiv@dividend+2)^0180h,f
	comf	(___aldiv@dividend+3)^0180h,f
	incf	(___aldiv@dividend)^0180h,f
	skipnz
	incf	(___aldiv@dividend+1)^0180h,f
	skipnz
	incf	(___aldiv@dividend+2)^0180h,f
	skipnz
	incf	(___aldiv@dividend+3)^0180h,f
	line	21
	
l2185:	
	movlw	(01h)
	movwf	(??___aldiv+0)^0180h+0
	movf	(??___aldiv+0)^0180h+0,w
	xorwf	(___aldiv@sign)^0180h,f
	goto	l2187
	line	22
	
l610:	
	line	23
	
l2187:	
	movlw	0
	movwf	(___aldiv@quotient+3)^0180h
	movlw	0
	movwf	(___aldiv@quotient+2)^0180h
	movlw	0
	movwf	(___aldiv@quotient+1)^0180h
	movlw	0
	movwf	(___aldiv@quotient)^0180h

	line	24
	
l2189:	
	movf	(___aldiv@divisor+3)^0180h,w
	iorwf	(___aldiv@divisor+2)^0180h,w
	iorwf	(___aldiv@divisor+1)^0180h,w
	iorwf	(___aldiv@divisor)^0180h,w
	skipnz
	goto	u2241
	goto	u2240
u2241:
	goto	l2209
u2240:
	line	25
	
l2191:	
	clrf	(___aldiv@counter)^0180h
	incf	(___aldiv@counter)^0180h,f
	line	26
	goto	l2195
	
l613:	
	line	27
	
l2193:	
	movlw	01h
	movwf	(??___aldiv+0)^0180h+0
u2255:
	clrc
	rlf	(___aldiv@divisor)^0180h,f
	rlf	(___aldiv@divisor+1)^0180h,f
	rlf	(___aldiv@divisor+2)^0180h,f
	rlf	(___aldiv@divisor+3)^0180h,f
	decfsz	(??___aldiv+0)^0180h+0
	goto	u2255
	line	28
	movlw	(01h)
	movwf	(??___aldiv+0)^0180h+0
	movf	(??___aldiv+0)^0180h+0,w
	addwf	(___aldiv@counter)^0180h,f
	goto	l2195
	line	29
	
l612:	
	line	26
	
l2195:	
	btfss	(___aldiv@divisor+3)^0180h,(31)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l2193
u2260:
	goto	l2197
	
l614:	
	goto	l2197
	line	30
	
l615:	
	line	31
	
l2197:	
	movlw	01h
	movwf	(??___aldiv+0)^0180h+0
u2275:
	clrc
	rlf	(___aldiv@quotient)^0180h,f
	rlf	(___aldiv@quotient+1)^0180h,f
	rlf	(___aldiv@quotient+2)^0180h,f
	rlf	(___aldiv@quotient+3)^0180h,f
	decfsz	(??___aldiv+0)^0180h+0
	goto	u2275
	line	32
	
l2199:	
	movf	(___aldiv@divisor+3)^0180h,w
	subwf	(___aldiv@dividend+3)^0180h,w
	skipz
	goto	u2285
	movf	(___aldiv@divisor+2)^0180h,w
	subwf	(___aldiv@dividend+2)^0180h,w
	skipz
	goto	u2285
	movf	(___aldiv@divisor+1)^0180h,w
	subwf	(___aldiv@dividend+1)^0180h,w
	skipz
	goto	u2285
	movf	(___aldiv@divisor)^0180h,w
	subwf	(___aldiv@dividend)^0180h,w
u2285:
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l2205
u2280:
	line	33
	
l2201:	
	movf	(___aldiv@divisor)^0180h,w
	subwf	(___aldiv@dividend)^0180h,f
	movf	(___aldiv@divisor+1)^0180h,w
	skipc
	incfsz	(___aldiv@divisor+1)^0180h,w
	subwf	(___aldiv@dividend+1)^0180h,f
	movf	(___aldiv@divisor+2)^0180h,w
	skipc
	incfsz	(___aldiv@divisor+2)^0180h,w
	subwf	(___aldiv@dividend+2)^0180h,f
	movf	(___aldiv@divisor+3)^0180h,w
	skipc
	incfsz	(___aldiv@divisor+3)^0180h,w
	subwf	(___aldiv@dividend+3)^0180h,f
	line	34
	
l2203:	
	bsf	(___aldiv@quotient)^0180h+(0/8),(0)&7
	goto	l2205
	line	35
	
l616:	
	line	36
	
l2205:	
	movlw	01h
u2295:
	clrc
	rrf	(___aldiv@divisor+3)^0180h,f
	rrf	(___aldiv@divisor+2)^0180h,f
	rrf	(___aldiv@divisor+1)^0180h,f
	rrf	(___aldiv@divisor)^0180h,f
	addlw	-1
	skipz
	goto	u2295

	line	37
	
l2207:	
	movlw	low(01h)
	subwf	(___aldiv@counter)^0180h,f
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l2197
u2300:
	goto	l2209
	
l617:	
	goto	l2209
	line	38
	
l611:	
	line	39
	
l2209:	
	movf	(___aldiv@sign)^0180h,w
	skipz
	goto	u2310
	goto	l2213
u2310:
	line	40
	
l2211:	
	comf	(___aldiv@quotient)^0180h,f
	comf	(___aldiv@quotient+1)^0180h,f
	comf	(___aldiv@quotient+2)^0180h,f
	comf	(___aldiv@quotient+3)^0180h,f
	incf	(___aldiv@quotient)^0180h,f
	skipnz
	incf	(___aldiv@quotient+1)^0180h,f
	skipnz
	incf	(___aldiv@quotient+2)^0180h,f
	skipnz
	incf	(___aldiv@quotient+3)^0180h,f
	goto	l2213
	
l618:	
	line	41
	
l2213:	
	movf	(___aldiv@quotient+3)^0180h,w
	movwf	(?___aldiv+3)^0180h
	movf	(___aldiv@quotient+2)^0180h,w
	movwf	(?___aldiv+2)^0180h
	movf	(___aldiv@quotient+1)^0180h,w
	movwf	(?___aldiv+1)^0180h
	movf	(___aldiv@quotient)^0180h,w
	movwf	(?___aldiv)^0180h

	goto	l619
	
l2215:	
	line	42
	
l619:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_TIMER0_Set

;; *************** function _TIMER0_Set *****************
;; Defined at:
;;		line 20 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\timers.c"
;; Parameters:    Size  Location     Type
;;  contagens       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  contagens       1    0[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\timers.c"
	line	20
global __ptext6
__ptext6:	;psect for function _TIMER0_Set
psect	text6
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\timers.c"
	line	20
	global	__size_of_TIMER0_Set
	__size_of_TIMER0_Set	equ	__end_of_TIMER0_Set-_TIMER0_Set
	
_TIMER0_Set:	
;incstack = 0
	opt	stack 3
; Regs used in _TIMER0_Set: [wreg]
;TIMER0_Set@contagens stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(TIMER0_Set@contagens)^0180h
	line	22
	
l3163:	
;timers.c: 22: TMR0 = contagens;
	movf	(TIMER0_Set@contagens)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
l287:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_Set
	__end_of_TIMER0_Set:
	signat	_TIMER0_Set,4216
	global	_TIMER0_Init

;; *************** function _TIMER0_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\timers.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	6
global __ptext7
__ptext7:	;psect for function _TIMER0_Init
psect	text7
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\timers.c"
	line	6
	global	__size_of_TIMER0_Init
	__size_of_TIMER0_Init	equ	__end_of_TIMER0_Init-_TIMER0_Init
	
_TIMER0_Init:	
;incstack = 0
	opt	stack 3
; Regs used in _TIMER0_Init: []
	line	8
	
l3165:	
;timers.c: 8: OPTION_REGbits.T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h,5	;volatile
	line	9
;timers.c: 9: OPTION_REGbits.T0SE = 0;
	bcf	(129)^080h,4	;volatile
	line	10
;timers.c: 10: OPTION_REGbits.PSA = 0;
	bcf	(129)^080h,3	;volatile
	line	11
;timers.c: 11: OPTION_REGbits.PS2 = 1;
	bsf	(129)^080h,2	;volatile
	line	12
;timers.c: 12: OPTION_REGbits.PS1 = 1;
	bsf	(129)^080h,1	;volatile
	line	13
;timers.c: 13: OPTION_REGbits.PS0 = 1;
	bsf	(129)^080h,0	;volatile
	line	14
;timers.c: 14: INTCONbits.TMR0IF = 0;
	bcf	(11),2	;volatile
	line	15
;timers.c: 15: INTCONbits.TMR0IE = 1;
	bsf	(11),5	;volatile
	line	16
	
l284:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_Init
	__end_of_TIMER0_Init:
	signat	_TIMER0_Init,88
	global	_PWM_Init

;; *************** function _PWM_Init *****************
;; Defined at:
;;		line 5 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\pwm.c"
	line	5
global __ptext8
__ptext8:	;psect for function _PWM_Init
psect	text8
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\pwm.c"
	line	5
	global	__size_of_PWM_Init
	__size_of_PWM_Init	equ	__end_of_PWM_Init-_PWM_Init
	
_PWM_Init:	
;incstack = 0
	opt	stack 3
; Regs used in _PWM_Init: [wreg]
	line	14
	
l3167:	
;pwm.c: 14: T2CONbits.T2CKPS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(18),1	;volatile
	line	15
;pwm.c: 15: T2CONbits.T2CKPS0 = 0;
	bcf	(18),0	;volatile
	line	18
;pwm.c: 18: T2CONbits.TOUTPS3 = 0;
	bcf	(18),6	;volatile
	line	19
;pwm.c: 19: T2CONbits.TOUTPS2 = 0;
	bcf	(18),5	;volatile
	line	20
;pwm.c: 20: T2CONbits.TOUTPS1 = 0;
	bcf	(18),4	;volatile
	line	21
;pwm.c: 21: T2CONbits.TOUTPS0 = 0;
	bcf	(18),3	;volatile
	line	24
;pwm.c: 24: T2CONbits.TMR2ON = 1;
	bsf	(18),2	;volatile
	line	27
	
l3169:	
;pwm.c: 27: PR2 = 255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	43
	
l3171:	
;pwm.c: 43: CCP1CONbits.CCP1M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(23),3	;volatile
	line	44
	
l3173:	
;pwm.c: 44: CCP1CONbits.CCP1M2 = 1;
	bsf	(23),2	;volatile
	line	45
	
l3175:	
;pwm.c: 45: CCP1CONbits.CCP1M1 = 1;
	bsf	(23),1	;volatile
	line	46
	
l3177:	
;pwm.c: 46: CCP1CONbits.CCP1M0 = 1;
	bsf	(23),0	;volatile
	line	49
	
l3179:	
;pwm.c: 49: PIE1bits.CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,2	;volatile
	line	50
	
l3181:	
;pwm.c: 50: PIR1bits.CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),2	;volatile
	line	53
	
l3183:	
;pwm.c: 53: CCP2CONbits.CCP2M3 = 1;
	bsf	(29),3	;volatile
	line	54
	
l3185:	
;pwm.c: 54: CCP2CONbits.CCP2M2 = 1;
	bsf	(29),2	;volatile
	line	55
	
l3187:	
;pwm.c: 55: CCP2CONbits.CCP2M1 = 1;
	bsf	(29),1	;volatile
	line	56
	
l3189:	
;pwm.c: 56: CCP2CONbits.CCP2M0 = 1;
	bsf	(29),0	;volatile
	line	59
	
l3191:	
;pwm.c: 59: PIE2bits.CCP2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(141)^080h,0	;volatile
	line	60
	
l3193:	
;pwm.c: 60: PIR2bits.CCP2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(13),0	;volatile
	line	61
	
l435:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_Init
	__end_of_PWM_Init:
	signat	_PWM_Init,88
	global	_PWM_DutyCycle2

;; *************** function _PWM_DutyCycle2 *****************
;; Defined at:
;;		line 96 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2    0[BANK3 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       2       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       2       0
;;      Totals:         0       0       0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	96
global __ptext9
__ptext9:	;psect for function _PWM_DutyCycle2
psect	text9
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\pwm.c"
	line	96
	global	__size_of_PWM_DutyCycle2
	__size_of_PWM_DutyCycle2	equ	__end_of_PWM_DutyCycle2-_PWM_DutyCycle2
	
_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 3
; Regs used in _PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
l2545:	
;pwm.c: 98: CCPR2L = valor >> 2;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle2@valor+1)^0180h,w
	movwf	(??_PWM_DutyCycle2+0)^0180h+0+1
	movf	(PWM_DutyCycle2@valor)^0180h,w
	movwf	(??_PWM_DutyCycle2+0)^0180h+0
	rlf	(??_PWM_DutyCycle2+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle2+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle2+0)^0180h+0,f
	rlf	(??_PWM_DutyCycle2+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle2+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle2+0)^0180h+0,f
	movf	0+(??_PWM_DutyCycle2+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	99
	
l2547:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle2@valor)^0180h,w
	movwf	(??_PWM_DutyCycle2+0)^0180h+0
	movlw	(04h)-1
u3005:
	clrc
	rlf	(??_PWM_DutyCycle2+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u3005
	clrc
	rlf	(??_PWM_DutyCycle2+0)^0180h+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(29)	;volatile
	line	100
	
l441:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_DutyCycle2
	__end_of_PWM_DutyCycle2:
	signat	_PWM_DutyCycle2,4216
	global	_PWM_DutyCycle1

;; *************** function _PWM_DutyCycle1 *****************
;; Defined at:
;;		line 64 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2    0[BANK3 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       2       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       2       0
;;      Totals:         0       0       0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	64
global __ptext10
__ptext10:	;psect for function _PWM_DutyCycle1
psect	text10
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\pwm.c"
	line	64
	global	__size_of_PWM_DutyCycle1
	__size_of_PWM_DutyCycle1	equ	__end_of_PWM_DutyCycle1-_PWM_DutyCycle1
	
_PWM_DutyCycle1:	
;incstack = 0
	opt	stack 3
; Regs used in _PWM_DutyCycle1: [wreg+status,2+status,0]
	line	91
	
l2643:	
;pwm.c: 91: CCPR1L = valor >> 2;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle1@valor+1)^0180h,w
	movwf	(??_PWM_DutyCycle1+0)^0180h+0+1
	movf	(PWM_DutyCycle1@valor)^0180h,w
	movwf	(??_PWM_DutyCycle1+0)^0180h+0
	rlf	(??_PWM_DutyCycle1+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle1+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle1+0)^0180h+0,f
	rlf	(??_PWM_DutyCycle1+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle1+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle1+0)^0180h+0,f
	movf	0+(??_PWM_DutyCycle1+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	92
	
l2645:	
;pwm.c: 92: CCP1CON = (valor << 4)|0X0C;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle1@valor)^0180h,w
	movwf	(??_PWM_DutyCycle1+0)^0180h+0
	movlw	(04h)-1
u3025:
	clrc
	rlf	(??_PWM_DutyCycle1+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u3025
	clrc
	rlf	(??_PWM_DutyCycle1+0)^0180h+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	94
	
l438:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_DutyCycle1
	__end_of_PWM_DutyCycle1:
	signat	_PWM_DutyCycle1,4216
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 87 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       2       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\lcd.c"
	line	87
global __ptext11
__ptext11:	;psect for function _LCD_Init
psect	text11
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\lcd.c"
	line	87
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2619:	
;lcd.c: 90: ADCON1bits.PCFG3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(159)^080h,3	;volatile
	line	91
;lcd.c: 91: ADCON1bits.PCFG2 = 1;
	bsf	(159)^080h,2	;volatile
	line	92
;lcd.c: 92: ADCON1bits.PCFG1 = 0;
	bcf	(159)^080h,1	;volatile
	line	93
;lcd.c: 93: ADCON1bits.PCFG0 = 0;
	bcf	(159)^080h,0	;volatile
	line	95
	
l2621:	
;lcd.c: 95: _delay((unsigned long)((15)*(18432000/4000.0)));
	opt asmopt_off
movlw	90
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_LCD_Init+0)^0180h+0+1),f
	movlw	195
movwf	((??_LCD_Init+0)^0180h+0),f
u5847:
	decfsz	((??_LCD_Init+0)^0180h+0),f
	goto	u5847
	decfsz	((??_LCD_Init+0)^0180h+0+1),f
	goto	u5847
opt asmopt_on

	line	97
	
l2623:	
;lcd.c: 97: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	98
	
l2625:	
;lcd.c: 98: _delay((unsigned long)((4)*(18432000/4000.0)));
	opt asmopt_off
movlw	24
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_LCD_Init+0)^0180h+0+1),f
	movlw	239
movwf	((??_LCD_Init+0)^0180h+0),f
u5857:
	decfsz	((??_LCD_Init+0)^0180h+0),f
	goto	u5857
	decfsz	((??_LCD_Init+0)^0180h+0+1),f
	goto	u5857
opt asmopt_on

	line	100
;lcd.c: 100: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	101
	
l2627:	
;lcd.c: 101: _delay((unsigned long)((100)*(18432000/4000000.0)));
	opt asmopt_off
movlw	153
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u5867:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u5867
opt asmopt_on

	line	103
	
l2629:	
;lcd.c: 103: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	104
;lcd.c: 104: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u5877:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u5877
opt asmopt_on

	line	106
	
l2631:	
;lcd.c: 106: LCD_WriteCmd(0x38);
	movlw	(038h)
	fcall	_LCD_WriteCmd
	line	107
	
l2633:	
;lcd.c: 107: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u5887:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u5887
opt asmopt_on

	line	109
;lcd.c: 109: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	110
	
l2635:	
;lcd.c: 110: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_LCD_Init+0)^0180h+0+1),f
	movlw	247
movwf	((??_LCD_Init+0)^0180h+0),f
u5897:
	decfsz	((??_LCD_Init+0)^0180h+0),f
	goto	u5897
	decfsz	((??_LCD_Init+0)^0180h+0+1),f
	goto	u5897
opt asmopt_on

	line	112
	
l2637:	
;lcd.c: 112: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	113
;lcd.c: 113: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u5907:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u5907
opt asmopt_on

	line	115
	
l2639:	
;lcd.c: 115: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	116
	
l2641:	
;lcd.c: 116: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u5917:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u5917
opt asmopt_on

	line	117
	
l324:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,88
	global	_LCD_WriteCmd

;; *************** function _LCD_WriteCmd *****************
;; Defined at:
;;		line 32 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\lcd.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    1[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Init
;;		_LCD_Clear
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	32
global __ptext12
__ptext12:	;psect for function _LCD_WriteCmd
psect	text12
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\lcd.c"
	line	32
	global	__size_of_LCD_WriteCmd
	__size_of_LCD_WriteCmd	equ	__end_of_LCD_WriteCmd-_LCD_WriteCmd
	
_LCD_WriteCmd:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_WriteCmd: [wreg]
;LCD_WriteCmd@Byte stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_WriteCmd@Byte)^0180h
	line	34
	
l2169:	
;lcd.c: 34: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	36
	
l2171:	
;lcd.c: 36: PORTD = Byte;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_WriteCmd@Byte)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	39
	
l2173:	
;lcd.c: 39: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	41
;lcd.c: 41: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_WriteCmd+0)^0180h+0,f
u5927:
decfsz	(??_LCD_WriteCmd+0)^0180h+0,f
	goto	u5927
opt asmopt_on

	line	43
	
l2175:	
;lcd.c: 43: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	44
	
l309:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteCmd
	__end_of_LCD_WriteCmd:
	signat	_LCD_WriteCmd,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 166 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  index           1   15[BANK1 ] unsigned char 
;;  a               2   27[BANK1 ] int 
;;  a               2   25[BANK1 ] int 
;;  a               2   23[BANK1 ] int 
;;  a               2   21[BANK1 ] int 
;;  checksum        1   13[BANK1 ] unsigned char 
;;  a               2   35[BANK1 ] int 
;;  x               3   37[BANK1 ] float 
;;  rule            3   32[BANK1 ] float 
;;  total_area      3   29[BANK1 ] float 
;;  soma            3   18[BANK1 ] float 
;;  reajuste        3    8[BANK1 ] float 
;;  delta           2   16[BANK1 ] int 
;;  auxiliar        2   11[BANK1 ] int 
;;  rpmAux          2    0[BANK1 ] int 
;;  byte            1   14[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      40       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0       6      40       0       0
;;Total ram usage:       46 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_Cursor
;;		_LCD_WriteData
;;		_USART_ReceiveChar
;;		___awtoft
;;		___bmul
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lwdiv
;;		___lwtoft
;;		___wmul
;;		_abs
;;		_maximo
;;		_minimo
;;		_send
;;		_trapmf
;;		i1_PWM_DutyCycle2
;;		i1_TIMER0_Set
;;		i1_inicia
;;		i1_res
;;		i1_set
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	166
global __ptext13
__ptext13:	;psect for function _ISR
psect	text13
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	166
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text13
	line	168
	
i1l3719:	
;main.c: 168: if (PIR1bits.RCIF) {
	btfss	(12),5	;volatile
	goto	u529_21
	goto	u529_20
u529_21:
	goto	i1l3787
u529_20:
	line	171
	
i1l3721:	
;main.c: 171: unsigned char byte = USART_ReceiveChar();
	fcall	_USART_ReceiveChar
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@byte)^080h
	line	172
	
i1l3723:	
;main.c: 172: if (byte == '#')
	movf	(ISR@byte)^080h,w
	xorlw	023h
	skipz
	goto	u530_21
	goto	u530_20
u530_21:
	goto	i1l3727
u530_20:
	line	174
	
i1l3725:	
;main.c: 173: {
;main.c: 174: receiveIndex = 0;
	clrf	(_receiveIndex)^080h
	clrf	(_receiveIndex+1)^080h
	line	175
;main.c: 175: } else {
	goto	i1l3729
	
i1l139:	
	line	176
	
i1l3727:	
;main.c: 176: receiveIndex++;
	movlw	low(01h)
	addwf	(_receiveIndex)^080h,f
	skipnc
	incf	(_receiveIndex+1)^080h,f
	movlw	high(01h)
	addwf	(_receiveIndex+1)^080h,f
	goto	i1l3729
	line	177
	
i1l140:	
	line	178
	
i1l3729:	
;main.c: 177: }
;main.c: 178: receivedBuffer[receiveIndex] = byte;
	movf	(ISR@byte)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_receiveIndex)^080h,w
	addlw	_receivedBuffer&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_ISR+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	180
	
i1l3731:	
;main.c: 180: if (receiveIndex == 6) {
	movlw	06h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_receiveIndex)^080h,w
	iorwf	(_receiveIndex+1)^080h,w
	skipz
	goto	u531_21
	goto	u531_20
u531_21:
	goto	i1l3785
u531_20:
	line	181
	
i1l3733:	
;main.c: 181: LCD_Cursor(1,1);
	clrf	(LCD_Cursor@Col)
	incf	(LCD_Cursor@Col),f
	movlw	(01h)
	fcall	_LCD_Cursor
	line	182
;main.c: 182: LCD_WriteData('P');
	movlw	(050h)
	fcall	_LCD_WriteData
	line	183
	
i1l3735:	
;main.c: 183: receiveIndex = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_receiveIndex)^080h
	clrf	(_receiveIndex+1)^080h
	line	185
	
i1l3737:	
;main.c: 185: if (receivedBuffer[1] == 'A' && receivedBuffer[2] == 'A' && receivedBuffer[3] == 'A') {
	movf	0+(_receivedBuffer)^080h+01h,w
	xorlw	041h
	skipz
	goto	u532_21
	goto	u532_20
u532_21:
	goto	i1l3745
u532_20:
	
i1l3739:	
	movf	0+(_receivedBuffer)^080h+02h,w
	xorlw	041h
	skipz
	goto	u533_21
	goto	u533_20
u533_21:
	goto	i1l3745
u533_20:
	
i1l3741:	
	movf	0+(_receivedBuffer)^080h+03h,w
	xorlw	041h
	skipz
	goto	u534_21
	goto	u534_20
u534_21:
	goto	i1l3745
u534_20:
	line	186
	
i1l3743:	
;main.c: 186: send();
	fcall	_send
	line	187
;main.c: 187: } else {
	goto	i1l3785
	
i1l142:	
	line	188
	
i1l3745:	
;main.c: 188: if (receivedBuffer[0] == '#' && receivedBuffer[1] == '$' && receivedBuffer[2] == ':') {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_receivedBuffer)^080h,w
	xorlw	023h
	skipz
	goto	u535_21
	goto	u535_20
u535_21:
	goto	i1l3785
u535_20:
	
i1l3747:	
	movf	0+(_receivedBuffer)^080h+01h,w
	xorlw	024h
	skipz
	goto	u536_21
	goto	u536_20
u536_21:
	goto	i1l3785
u536_20:
	
i1l3749:	
	movf	0+(_receivedBuffer)^080h+02h,w
	xorlw	03Ah
	skipz
	goto	u537_21
	goto	u537_20
u537_21:
	goto	i1l3785
u537_20:
	line	189
	
i1l3751:	
;main.c: 189: unsigned char checksum = 0x00;
	clrf	(ISR@checksum)^080h
	line	190
;main.c: 190: for (unsigned char index = 0; index < 6; index++) {
	clrf	(ISR@index)^080h
	
i1l3753:	
	movlw	(06h)
	subwf	(ISR@index)^080h,w
	skipc
	goto	u538_21
	goto	u538_20
u538_21:
	goto	i1l3757
u538_20:
	goto	i1l3763
	
i1l3755:	
	goto	i1l3763
	
i1l145:	
	line	191
	
i1l3757:	
;main.c: 191: checksum ^= receivedBuffer[index];
	movf	(ISR@index)^080h,w
	addlw	_receivedBuffer&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(ISR@checksum)^080h,f
	line	190
	
i1l3759:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(ISR@index)^080h,f
	
i1l3761:	
	movlw	(06h)
	subwf	(ISR@index)^080h,w
	skipc
	goto	u539_21
	goto	u539_20
u539_21:
	goto	i1l3757
u539_20:
	goto	i1l3763
	
i1l146:	
	line	193
	
i1l3763:	
;main.c: 192: }
;main.c: 193: if (receivedBuffer[6] == checksum) {
	movf	0+(_receivedBuffer)^080h+06h,w
	xorwf	(ISR@checksum)^080h,w
	skipz
	goto	u540_21
	goto	u540_20
u540_21:
	goto	i1l3785
u540_20:
	line	194
	
i1l3765:	
;main.c: 194: if(receivedBuffer[3] == 'M'){
	movf	0+(_receivedBuffer)^080h+03h,w
	xorlw	04Dh
	skipz
	goto	u541_21
	goto	u541_20
u541_21:
	goto	i1l3769
u541_20:
	line	195
	
i1l3767:	
;main.c: 195: setpoint = ((receivedBuffer[4] << 8) + (receivedBuffer[5])) * 41;
	movf	0+(_receivedBuffer)^080h+04h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	clrf	(??_ISR+0)+0+1
	movf	(??_ISR+0)+0,w
	movwf	(??_ISR+0)+1
	clrf	(??_ISR+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_receivedBuffer)^080h+05h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_ISR+0)+0,w
	movwf	(___wmul@multiplier)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_ISR+0)+0,w
	movwf	1+(___wmul@multiplier)
	movlw	low(029h)
	movwf	(___wmul@multiplicand)
	movlw	high(029h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_setpoint+1)^080h
	addwf	(_setpoint+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_setpoint)^080h
	addwf	(_setpoint)^080h

	goto	i1l3769
	line	196
	
i1l148:	
	line	197
	
i1l3769:	
;main.c: 196: }
;main.c: 197: if(receivedBuffer[3] == 'I'){
	movf	0+(_receivedBuffer)^080h+03h,w
	xorlw	049h
	skipz
	goto	u542_21
	goto	u542_20
u542_21:
	goto	i1l3773
u542_20:
	line	198
	
i1l3771:	
;main.c: 198: inicia();
	fcall	i1_inicia
	goto	i1l3773
	line	199
	
i1l149:	
	line	200
	
i1l3773:	
;main.c: 199: }
;main.c: 200: if(receivedBuffer[3] == 'S'){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_receivedBuffer)^080h+03h,w
	xorlw	053h
	skipz
	goto	u543_21
	goto	u543_20
u543_21:
	goto	i1l3777
u543_20:
	line	201
	
i1l3775:	
;main.c: 201: set();
	fcall	i1_set
	goto	i1l3777
	line	202
	
i1l150:	
	line	203
	
i1l3777:	
;main.c: 202: }
;main.c: 203: if(receivedBuffer[3] == 'R'){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_receivedBuffer)^080h+03h,w
	xorlw	052h
	skipz
	goto	u544_21
	goto	u544_20
u544_21:
	goto	i1l3781
u544_20:
	line	204
	
i1l3779:	
;main.c: 204: res();
	fcall	i1_res
	goto	i1l3781
	line	205
	
i1l151:	
	line	206
	
i1l3781:	
;main.c: 205: }
;main.c: 206: if(receivedBuffer[3] == 'F'){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_receivedBuffer)^080h+03h,w
	xorlw	046h
	skipz
	goto	u545_21
	goto	u545_20
u545_21:
	goto	i1l3785
u545_20:
	line	207
	
i1l3783:	
;main.c: 207: pilotoAtivo = pilotoAtivo & 0b11111101;
	movf	(_pilotoAtivo)^080h,w
	andlw	0FDh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pilotoAtivo)^080h
	goto	i1l3785
	line	208
	
i1l152:	
	goto	i1l3785
	line	210
	
i1l147:	
	goto	i1l3785
	line	211
	
i1l144:	
	goto	i1l3785
	line	212
	
i1l143:	
	goto	i1l3785
	line	213
	
i1l141:	
	line	214
	
i1l3785:	
;main.c: 208: }
;main.c: 210: }
;main.c: 211: }
;main.c: 212: }
;main.c: 213: }
;main.c: 214: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	goto	i1l3787
	line	215
	
i1l138:	
	line	229
	
i1l3787:	
;main.c: 215: }
;main.c: 229: if (INTCONbits.T0IF) {
	btfss	(11),2	;volatile
	goto	u546_21
	goto	u546_20
u546_21:
	goto	i1l3965
u546_20:
	line	231
	
i1l3789:	
;main.c: 231: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	i1_TIMER0_Set
	line	234
	
i1l3791:	
;main.c: 234: if (contagens_tm0 < 499) {
	movlw	high(01F3h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_contagens_tm0+1)^080h,w
	movlw	low(01F3h)
	skipnz
	subwf	(_contagens_tm0)^080h,w
	skipnc
	goto	u547_21
	goto	u547_20
u547_21:
	goto	i1l3797
u547_20:
	line	236
	
i1l3793:	
;main.c: 236: contagens_tm0++;
	movlw	low(01h)
	addwf	(_contagens_tm0)^080h,f
	skipnc
	incf	(_contagens_tm0+1)^080h,f
	movlw	high(01h)
	addwf	(_contagens_tm0+1)^080h,f
	line	239
	
i1l3795:	
;main.c: 239: PORTBbits.RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),6	;volatile
	line	240
;main.c: 240: } else {
	goto	i1l3963
	
i1l154:	
	line	242
	
i1l3797:	
;main.c: 242: contagens_tm0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_contagens_tm0)^080h
	clrf	(_contagens_tm0+1)^080h
	line	245
	
i1l3799:	
;main.c: 245: pulsos = (TMR1H << 8) + TMR1L;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(15),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pulsos+1)^080h
	addwf	(_pulsos+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pulsos)^080h
	addwf	(_pulsos)^080h

	line	246
	
i1l3801:	
;main.c: 246: rpm = ((pulsos / 7) * 120);
	movlw	low(07h)
	movwf	(___lwdiv@divisor)
	movlw	high(07h)
	movwf	((___lwdiv@divisor))+1
	movf	(_pulsos+1)^080h,w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(_pulsos)^080h,w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(078h)
	movwf	(___wmul@multiplicand)
	movlw	high(078h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm+1)^080h
	addwf	(_rpm+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm)^080h
	addwf	(_rpm)^080h

	line	248
	
i1l3803:	
;main.c: 248: TMR1L = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(14)	;volatile
	line	249
	
i1l3805:	
;main.c: 249: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	251
	
i1l3807:	
;main.c: 251: int rpmAux = rpm;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rpm+1)^080h,w
	clrf	(ISR@rpmAux+1)^080h
	addwf	(ISR@rpmAux+1)^080h
	movf	(_rpm)^080h,w
	clrf	(ISR@rpmAux)^080h
	addwf	(ISR@rpmAux)^080h

	line	255
	
i1l3809:	
;main.c: 255: erro_anterior = erro_atual;
	movf	(_erro_atual+1)^080h,w
	clrf	(_erro_anterior+1)^080h
	addwf	(_erro_anterior+1)^080h
	movf	(_erro_atual)^080h,w
	clrf	(_erro_anterior)^080h
	addwf	(_erro_anterior)^080h

	line	256
	
i1l3811:	
;main.c: 256: erro_atual = minimo(abs(setpoint - rpm), 2000);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@b)
	movlw	0xfa
	movwf	(minimo@b+1)
	movlw	0x44
	movwf	(minimo@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_rpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_rpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_ISR+0)+0+1)
	incf	(??_ISR+0)+0,f
	skipnz
	incf	((??_ISR+0)+0+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpoint)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_ISR+0)+0,w
	movwf	(abs@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpoint+1)^080h,w
	skipnc
	incf	(_setpoint+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_ISR+0)+0,w
	movwf	1+(abs@a)
	fcall	_abs
	movf	(1+(?_abs)),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(0+(?_abs)),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a)
	movf	(1+(?___awtoft)),w
	movwf	(minimo@a+1)
	movf	(2+(?___awtoft)),w
	movwf	(minimo@a+2)
	fcall	_minimo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_minimo)),w
	movwf	(___fttol@f1)
	movf	(1+(?_minimo)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_minimo)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_erro_atual+1)^080h
	addwf	(_erro_atual+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_erro_atual)^080h
	addwf	(_erro_atual)^080h

	line	257
	
i1l3813:	
;main.c: 257: int delta = maximo(minimo(abs(erro_atual - erro_anterior), 1000), 1);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(maximo@b)
	movlw	0x80
	movwf	(maximo@b+1)
	movlw	0x3f
	movwf	(maximo@b+2)
	movlw	0x0
	movwf	(minimo@b)
	movlw	0x7a
	movwf	(minimo@b+1)
	movlw	0x44
	movwf	(minimo@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_erro_anterior)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_erro_anterior+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_ISR+0)+0+1)
	incf	(??_ISR+0)+0,f
	skipnz
	incf	((??_ISR+0)+0+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_ISR+0)+0,w
	movwf	(abs@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	skipnc
	incf	(_erro_atual+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_ISR+0)+0,w
	movwf	1+(abs@a)
	fcall	_abs
	movf	(1+(?_abs)),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(0+(?_abs)),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a)
	movf	(1+(?___awtoft)),w
	movwf	(minimo@a+1)
	movf	(2+(?___awtoft)),w
	movwf	(minimo@a+2)
	fcall	_minimo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_minimo)),w
	movwf	(maximo@a)
	movf	(1+(?_minimo)),w
	movwf	(maximo@a+1)
	movf	(2+(?_minimo)),w
	movwf	(maximo@a+2)
	fcall	_maximo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_maximo)),w
	movwf	(___fttol@f1)
	movf	(1+(?_maximo)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_maximo)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(ISR@delta+1)^080h
	addwf	(ISR@delta+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(ISR@delta)^080h
	addwf	(ISR@delta)^080h

	line	258
	
i1l3815:	
;main.c: 258: float x = 0;
	movlw	0x0
	movwf	(ISR@x)^080h
	movlw	0x0
	movwf	(ISR@x+1)^080h
	movlw	0x0
	movwf	(ISR@x+2)^080h
	line	259
	
i1l3817:	
;main.c: 259: float rule = 0;
	movlw	0x0
	movwf	(ISR@rule)^080h
	movlw	0x0
	movwf	(ISR@rule+1)^080h
	movlw	0x0
	movwf	(ISR@rule+2)^080h
	line	262
	
i1l3819:	
;main.c: 262: if (erro_atual <= 100)
	movf	(_erro_atual+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(065h))^80h
	subwf	btemp+1,w
	skipz
	goto	u548_25
	movlw	low(065h)
	subwf	(_erro_atual)^080h,w
u548_25:

	skipnc
	goto	u548_21
	goto	u548_20
u548_21:
	goto	i1l3841
u548_20:
	line	266
	
i1l3821:	
;main.c: 263: {
;main.c: 266: rule = trapmf(erro_atual, -1, 0, 1, 100);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_erro_atual)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x80
	movwf	(trapmf@a+1)
	movlw	0xbf
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x0
	movwf	(trapmf@b+1)
	movlw	0x0
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x80
	movwf	(trapmf@c+1)
	movlw	0x3f
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0xc8
	movwf	(trapmf@d+1)
	movlw	0x42
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule+2)^080h
	line	268
	
i1l3823:	
;main.c: 268: x = 0;
	movlw	0x0
	movwf	(ISR@x)^080h
	movlw	0x0
	movwf	(ISR@x+1)^080h
	movlw	0x0
	movwf	(ISR@x+2)^080h
	line	269
	
i1l3825:	
;main.c: 269: for (int a = 0; a <= 15; a++)
	clrf	(ISR@a)^080h
	clrf	(ISR@a+1)^080h
	
i1l3827:	
	movf	(ISR@a+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u549_25
	movlw	low(010h)
	subwf	(ISR@a)^080h,w
u549_25:

	skipc
	goto	u549_21
	goto	u549_20
u549_21:
	goto	i1l3831
u549_20:
	goto	i1l3841
	
i1l3829:	
	goto	i1l3841
	line	270
	
i1l157:	
	line	271
	
i1l3831:	
;main.c: 270: {
;main.c: 271: rBaixo[a] = trapmf(x, -1, 0, 0, 5);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a)^080h,w
	fcall	___bmul
	addlw	_rBaixo&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x80
	movwf	(trapmf@a+1)
	movlw	0xbf
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x0
	movwf	(trapmf@b+1)
	movlw	0x0
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x0
	movwf	(trapmf@c+1)
	movlw	0x0
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0xa0
	movwf	(trapmf@d+1)
	movlw	0x40
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(1+(?_trapmf)),w
	movwf	indf
	incf	fsr0,f
	movf	(2+(?_trapmf)),w
	movwf	indf
	line	272
;main.c: 272: if (rBaixo[a] >= rule)
	movlw	(03h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a)^080h,w
	fcall	___bmul
	addlw	_rBaixo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(___ftge@ff1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftge@ff1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@rule)^080h,w
	movwf	(___ftge@ff2)
	movf	(ISR@rule+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(ISR@rule+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u550_21
	goto	u550_20
u550_21:
	goto	i1l3835
u550_20:
	line	274
	
i1l3833:	
;main.c: 273: {
;main.c: 274: rBaixo[a] = rule;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a)^080h,w
	fcall	___bmul
	addlw	_rBaixo&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@rule)^080h,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(ISR@rule+1)^080h,w
	movwf	indf
	incf	fsr0,f
	movf	(ISR@rule+2)^080h,w
	movwf	indf
	goto	i1l3835
	line	275
	
i1l159:	
	line	277
	
i1l3835:	
;main.c: 275: }
;main.c: 277: x += 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x+2)^080h
	line	269
	
i1l3837:	
	movlw	low(01h)
	addwf	(ISR@a)^080h,f
	skipnc
	incf	(ISR@a+1)^080h,f
	movlw	high(01h)
	addwf	(ISR@a+1)^080h,f
	
i1l3839:	
	movf	(ISR@a+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u551_25
	movlw	low(010h)
	subwf	(ISR@a)^080h,w
u551_25:

	skipc
	goto	u551_21
	goto	u551_20
u551_21:
	goto	i1l3831
u551_20:
	goto	i1l3841
	
i1l158:	
	goto	i1l3841
	line	279
	
i1l156:	
	line	282
	
i1l3841:	
;main.c: 278: }
;main.c: 279: }
;main.c: 282: if (erro_atual >= 100 && erro_atual <= 1001 && delta <= 200)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u552_25
	movlw	low(064h)
	subwf	(_erro_atual)^080h,w
u552_25:

	skipc
	goto	u552_21
	goto	u552_20
u552_21:
	goto	i1l3867
u552_20:
	
i1l3843:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03EAh))^80h
	subwf	btemp+1,w
	skipz
	goto	u553_25
	movlw	low(03EAh)
	subwf	(_erro_atual)^080h,w
u553_25:

	skipnc
	goto	u553_21
	goto	u553_20
u553_21:
	goto	i1l3867
u553_20:
	
i1l3845:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@delta+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u554_25
	movlw	low(0C9h)
	subwf	(ISR@delta)^080h,w
u554_25:

	skipnc
	goto	u554_21
	goto	u554_20
u554_21:
	goto	i1l3867
u554_20:
	line	285
	
i1l3847:	
;main.c: 283: {
;main.c: 285: rule = trapmf(erro_atual, 50, 800, 800, 1550) * (1 - trapmf(delta, -1, 0, 1, 200));
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@d)
	movlw	0x48
	movwf	(trapmf@d+1)
	movlw	0x43
	movwf	(trapmf@d+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x80
	movwf	(trapmf@c+1)
	movlw	0x3f
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x0
	movwf	(trapmf@b+1)
	movlw	0x0
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x80
	movwf	(trapmf@a+1)
	movlw	0xbf
	movwf	(trapmf@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@delta+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(ISR@delta)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapmf@x+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1667)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1667+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1667+2)^080h
;main.c: 283: {
;main.c: 285: rule = trapmf(erro_atual, 50, 800, 800, 1550) * (1 - trapmf(delta, -1, 0, 1, 200));
	movlw	0xc0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@d)
	movlw	0xc1
	movwf	(trapmf@d+1)
	movlw	0x44
	movwf	(trapmf@d+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x48
	movwf	(trapmf@c+1)
	movlw	0x44
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x48
	movwf	(trapmf@b+1)
	movlw	0x44
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x48
	movwf	(trapmf@a+1)
	movlw	0x42
	movwf	(trapmf@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_erro_atual)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapmf@x+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	movwf	(___ftmul@f1)
	movf	(1+(?_trapmf)),w
	movwf	(___ftmul@f1+1)
	movf	(2+(?_trapmf)),w
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1667)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1667+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1667+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule+2)^080h
	line	287
	
i1l3849:	
;main.c: 287: x = 0;
	movlw	0x0
	movwf	(ISR@x)^080h
	movlw	0x0
	movwf	(ISR@x+1)^080h
	movlw	0x0
	movwf	(ISR@x+2)^080h
	line	288
	
i1l3851:	
;main.c: 288: for (int a = 0; a <= 15; a++)
	clrf	(ISR@a_243)^080h
	clrf	(ISR@a_243+1)^080h
	
i1l3853:	
	movf	(ISR@a_243+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u555_25
	movlw	low(010h)
	subwf	(ISR@a_243)^080h,w
u555_25:

	skipc
	goto	u555_21
	goto	u555_20
u555_21:
	goto	i1l3857
u555_20:
	goto	i1l3867
	
i1l3855:	
	goto	i1l3867
	line	289
	
i1l161:	
	line	291
	
i1l3857:	
;main.c: 289: {
;main.c: 291: rBaixo[a] = trapmf(x, 2, 5, 5, 10);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_243)^080h,w
	fcall	___bmul
	addlw	_rBaixo&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x0
	movwf	(trapmf@a+1)
	movlw	0x40
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0xa0
	movwf	(trapmf@b+1)
	movlw	0x40
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0xa0
	movwf	(trapmf@c+1)
	movlw	0x40
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0x20
	movwf	(trapmf@d+1)
	movlw	0x41
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(1+(?_trapmf)),w
	movwf	indf
	incf	fsr0,f
	movf	(2+(?_trapmf)),w
	movwf	indf
	line	292
;main.c: 292: if (rBaixo[a] >= rule)
	movlw	(03h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_243)^080h,w
	fcall	___bmul
	addlw	_rBaixo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(___ftge@ff1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftge@ff1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@rule)^080h,w
	movwf	(___ftge@ff2)
	movf	(ISR@rule+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(ISR@rule+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u556_21
	goto	u556_20
u556_21:
	goto	i1l3861
u556_20:
	line	294
	
i1l3859:	
;main.c: 293: {
;main.c: 294: rBaixo[a] = rule;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_243)^080h,w
	fcall	___bmul
	addlw	_rBaixo&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@rule)^080h,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(ISR@rule+1)^080h,w
	movwf	indf
	incf	fsr0,f
	movf	(ISR@rule+2)^080h,w
	movwf	indf
	goto	i1l3861
	line	295
	
i1l163:	
	line	297
	
i1l3861:	
;main.c: 295: }
;main.c: 297: x += 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x+2)^080h
	line	288
	
i1l3863:	
	movlw	low(01h)
	addwf	(ISR@a_243)^080h,f
	skipnc
	incf	(ISR@a_243+1)^080h,f
	movlw	high(01h)
	addwf	(ISR@a_243+1)^080h,f
	
i1l3865:	
	movf	(ISR@a_243+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u557_25
	movlw	low(010h)
	subwf	(ISR@a_243)^080h,w
u557_25:

	skipc
	goto	u557_21
	goto	u557_20
u557_21:
	goto	i1l3857
u557_20:
	goto	i1l3867
	
i1l162:	
	goto	i1l3867
	line	299
	
i1l160:	
	line	302
	
i1l3867:	
;main.c: 298: }
;main.c: 299: }
;main.c: 302: if (erro_atual >= 100 && erro_atual <= 1001 && delta >= 201)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u558_25
	movlw	low(064h)
	subwf	(_erro_atual)^080h,w
u558_25:

	skipc
	goto	u558_21
	goto	u558_20
u558_21:
	goto	i1l3893
u558_20:
	
i1l3869:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03EAh))^80h
	subwf	btemp+1,w
	skipz
	goto	u559_25
	movlw	low(03EAh)
	subwf	(_erro_atual)^080h,w
u559_25:

	skipnc
	goto	u559_21
	goto	u559_20
u559_21:
	goto	i1l3893
u559_20:
	
i1l3871:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@delta+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u560_25
	movlw	low(0C9h)
	subwf	(ISR@delta)^080h,w
u560_25:

	skipc
	goto	u560_21
	goto	u560_20
u560_21:
	goto	i1l3893
u560_20:
	line	305
	
i1l3873:	
;main.c: 303: {
;main.c: 305: rule = trapmf(erro_atual, 50, 800, 800, 1550) * trapmf(delta, 200, 500, 2000, 2001);
	movlw	0x20
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@d)
	movlw	0xfa
	movwf	(trapmf@d+1)
	movlw	0x44
	movwf	(trapmf@d+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0xfa
	movwf	(trapmf@c+1)
	movlw	0x44
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0xfa
	movwf	(trapmf@b+1)
	movlw	0x43
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x48
	movwf	(trapmf@a+1)
	movlw	0x43
	movwf	(trapmf@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@delta+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(ISR@delta)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapmf@x+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	movwf	(___ftmul@f1)
	movf	(1+(?_trapmf)),w
	movwf	(___ftmul@f1+1)
	movf	(2+(?_trapmf)),w
	movwf	(___ftmul@f1+2)
	movlw	0xc0
	movwf	(trapmf@d)
	movlw	0xc1
	movwf	(trapmf@d+1)
	movlw	0x44
	movwf	(trapmf@d+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x48
	movwf	(trapmf@c+1)
	movlw	0x44
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x48
	movwf	(trapmf@b+1)
	movlw	0x44
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x48
	movwf	(trapmf@a+1)
	movlw	0x42
	movwf	(trapmf@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_erro_atual)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapmf@x+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	movwf	(___ftmul@f2)
	movf	(1+(?_trapmf)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?_trapmf)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule+2)^080h
	line	307
	
i1l3875:	
;main.c: 307: x = 0;
	movlw	0x0
	movwf	(ISR@x)^080h
	movlw	0x0
	movwf	(ISR@x+1)^080h
	movlw	0x0
	movwf	(ISR@x+2)^080h
	line	308
	
i1l3877:	
;main.c: 308: for (int a = 0; a <= 15; a++)
	clrf	(ISR@a_244)^080h
	clrf	(ISR@a_244+1)^080h
	
i1l3879:	
	movf	(ISR@a_244+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u561_25
	movlw	low(010h)
	subwf	(ISR@a_244)^080h,w
u561_25:

	skipc
	goto	u561_21
	goto	u561_20
u561_21:
	goto	i1l3883
u561_20:
	goto	i1l3893
	
i1l3881:	
	goto	i1l3893
	line	309
	
i1l165:	
	line	310
	
i1l3883:	
;main.c: 309: {
;main.c: 310: rMedio[a] = trapmf(x, 2, 5, 5, 10);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_244)^080h,w
	fcall	___bmul
	addlw	_rMedio&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x0
	movwf	(trapmf@a+1)
	movlw	0x40
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0xa0
	movwf	(trapmf@b+1)
	movlw	0x40
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0xa0
	movwf	(trapmf@c+1)
	movlw	0x40
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0x20
	movwf	(trapmf@d+1)
	movlw	0x41
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	incf	fsr0,f
	movf	(1+(?_trapmf)),w
	movwf	indf
	incf	fsr0,f
	movf	(2+(?_trapmf)),w
	movwf	indf
	line	312
;main.c: 312: if (rMedio[a] >= rule)
	movlw	(03h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_244)^080h,w
	fcall	___bmul
	addlw	_rMedio&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(___ftge@ff1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftge@ff1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@rule)^080h,w
	movwf	(___ftge@ff2)
	movf	(ISR@rule+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(ISR@rule+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u562_21
	goto	u562_20
u562_21:
	goto	i1l3887
u562_20:
	line	314
	
i1l3885:	
;main.c: 313: {
;main.c: 314: rMedio[a] = rule;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_244)^080h,w
	fcall	___bmul
	addlw	_rMedio&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@rule)^080h,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	incf	fsr0,f
	movf	(ISR@rule+1)^080h,w
	movwf	indf
	incf	fsr0,f
	movf	(ISR@rule+2)^080h,w
	movwf	indf
	goto	i1l3887
	line	315
	
i1l167:	
	line	317
	
i1l3887:	
;main.c: 315: }
;main.c: 317: x += 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x+2)^080h
	line	308
	
i1l3889:	
	movlw	low(01h)
	addwf	(ISR@a_244)^080h,f
	skipnc
	incf	(ISR@a_244+1)^080h,f
	movlw	high(01h)
	addwf	(ISR@a_244+1)^080h,f
	
i1l3891:	
	movf	(ISR@a_244+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u563_25
	movlw	low(010h)
	subwf	(ISR@a_244)^080h,w
u563_25:

	skipc
	goto	u563_21
	goto	u563_20
u563_21:
	goto	i1l3883
u563_20:
	goto	i1l3893
	
i1l166:	
	goto	i1l3893
	line	319
	
i1l164:	
	line	322
	
i1l3893:	
;main.c: 318: }
;main.c: 319: }
;main.c: 322: if (erro_atual >= 1001)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u564_25
	movlw	low(03E9h)
	subwf	(_erro_atual)^080h,w
u564_25:

	skipc
	goto	u564_21
	goto	u564_20
u564_21:
	goto	i1l3915
u564_20:
	line	325
	
i1l3895:	
;main.c: 323: {
;main.c: 325: rule = trapmf(erro_atual, 1001, 1500, 2000, 2001);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_erro_atual)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapmf@x+2)
	movlw	0x40
	movwf	(trapmf@a)
	movlw	0x7a
	movwf	(trapmf@a+1)
	movlw	0x44
	movwf	(trapmf@a+2)
	movlw	0x80
	movwf	(trapmf@b)
	movlw	0xbb
	movwf	(trapmf@b+1)
	movlw	0x44
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0xfa
	movwf	(trapmf@c+1)
	movlw	0x44
	movwf	(trapmf@c+2)
	movlw	0x20
	movwf	(trapmf@d)
	movlw	0xfa
	movwf	(trapmf@d+1)
	movlw	0x44
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@rule+2)^080h
	line	327
	
i1l3897:	
;main.c: 327: x = 0;
	movlw	0x0
	movwf	(ISR@x)^080h
	movlw	0x0
	movwf	(ISR@x+1)^080h
	movlw	0x0
	movwf	(ISR@x+2)^080h
	line	328
	
i1l3899:	
;main.c: 328: for (int a = 0; a <= 15; a++)
	clrf	(ISR@a_245)^080h
	clrf	(ISR@a_245+1)^080h
	
i1l3901:	
	movf	(ISR@a_245+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u565_25
	movlw	low(010h)
	subwf	(ISR@a_245)^080h,w
u565_25:

	skipc
	goto	u565_21
	goto	u565_20
u565_21:
	goto	i1l3905
u565_20:
	goto	i1l3915
	
i1l3903:	
	goto	i1l3915
	line	329
	
i1l169:	
	line	330
	
i1l3905:	
;main.c: 329: {
;main.c: 330: rGrande[a] = trapmf(x, 5, 10, 15, 16);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_245)^080h,w
	fcall	___bmul
	addlw	_rGrande&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0xa0
	movwf	(trapmf@a+1)
	movlw	0x40
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x20
	movwf	(trapmf@b+1)
	movlw	0x41
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x70
	movwf	(trapmf@c+1)
	movlw	0x41
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0x80
	movwf	(trapmf@d+1)
	movlw	0x41
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	incf	fsr0,f
	movf	(1+(?_trapmf)),w
	movwf	indf
	incf	fsr0,f
	movf	(2+(?_trapmf)),w
	movwf	indf
	line	332
;main.c: 332: if (rGrande[a] >= rule)
	movlw	(03h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_245)^080h,w
	fcall	___bmul
	addlw	_rGrande&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(___ftge@ff1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftge@ff1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@rule)^080h,w
	movwf	(___ftge@ff2)
	movf	(ISR@rule+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(ISR@rule+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u566_21
	goto	u566_20
u566_21:
	goto	i1l3909
u566_20:
	line	334
	
i1l3907:	
;main.c: 333: {
;main.c: 334: rGrande[a] = rule;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_245)^080h,w
	fcall	___bmul
	addlw	_rGrande&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@rule)^080h,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	incf	fsr0,f
	movf	(ISR@rule+1)^080h,w
	movwf	indf
	incf	fsr0,f
	movf	(ISR@rule+2)^080h,w
	movwf	indf
	goto	i1l3909
	line	335
	
i1l171:	
	line	337
	
i1l3909:	
;main.c: 335: }
;main.c: 337: x += 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x+2)^080h
	line	328
	
i1l3911:	
	movlw	low(01h)
	addwf	(ISR@a_245)^080h,f
	skipnc
	incf	(ISR@a_245+1)^080h,f
	movlw	high(01h)
	addwf	(ISR@a_245+1)^080h,f
	
i1l3913:	
	movf	(ISR@a_245+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u567_25
	movlw	low(010h)
	subwf	(ISR@a_245)^080h,w
u567_25:

	skipc
	goto	u567_21
	goto	u567_20
u567_21:
	goto	i1l3905
u567_20:
	goto	i1l3915
	
i1l170:	
	goto	i1l3915
	line	339
	
i1l168:	
	line	342
	
i1l3915:	
;main.c: 338: }
;main.c: 339: }
;main.c: 342: x = 0;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x)^080h
	movlw	0x0
	movwf	(ISR@x+1)^080h
	movlw	0x0
	movwf	(ISR@x+2)^080h
	line	343
;main.c: 343: float total_area = 0;
	movlw	0x0
	movwf	(ISR@total_area)^080h
	movlw	0x0
	movwf	(ISR@total_area+1)^080h
	movlw	0x0
	movwf	(ISR@total_area+2)^080h
	line	344
;main.c: 344: float soma = 0;
	movlw	0x0
	movwf	(ISR@soma)^080h
	movlw	0x0
	movwf	(ISR@soma+1)^080h
	movlw	0x0
	movwf	(ISR@soma+2)^080h
	line	345
	
i1l3917:	
;main.c: 345: for (int a = 0; a <= 15; a++)
	clrf	(ISR@a_248)^080h
	clrf	(ISR@a_248+1)^080h
	
i1l3919:	
	movf	(ISR@a_248+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u568_25
	movlw	low(010h)
	subwf	(ISR@a_248)^080h,w
u568_25:

	skipc
	goto	u568_21
	goto	u568_20
u568_21:
	goto	i1l172
u568_20:
	goto	i1l3945
	
i1l3921:	
	goto	i1l3945
	line	346
	
i1l172:	
	line	347
;main.c: 346: {
;main.c: 347: if (a >= 0 && a <= 5)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(ISR@a_248+1)^080h,7
	goto	u569_21
	goto	u569_20
u569_21:
	goto	i1l3927
u569_20:
	
i1l3923:	
	movf	(ISR@a_248+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u570_25
	movlw	low(06h)
	subwf	(ISR@a_248)^080h,w
u570_25:

	skipnc
	goto	u570_21
	goto	u570_20
u570_21:
	goto	i1l3927
u570_20:
	line	349
	
i1l3925:	
;main.c: 348: {
;main.c: 349: total_area += rBaixo[a];
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_248)^080h,w
	fcall	___bmul
	addlw	_rBaixo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftadd@f1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@total_area)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@total_area+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@total_area+2)^080h
	line	350
;main.c: 350: soma += (x * rBaixo[a]);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_248)^080h,w
	fcall	___bmul
	addlw	_rBaixo&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftmul@f2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@soma)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@soma+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@soma+2)^080h
	goto	i1l3927
	line	351
	
i1l174:	
	line	353
	
i1l3927:	
;main.c: 351: }
;main.c: 353: if (a >= 5 && a <= 10)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_248+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u571_25
	movlw	low(05h)
	subwf	(ISR@a_248)^080h,w
u571_25:

	skipc
	goto	u571_21
	goto	u571_20
u571_21:
	goto	i1l3933
u571_20:
	
i1l3929:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_248+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u572_25
	movlw	low(0Bh)
	subwf	(ISR@a_248)^080h,w
u572_25:

	skipnc
	goto	u572_21
	goto	u572_20
u572_21:
	goto	i1l3933
u572_20:
	line	355
	
i1l3931:	
;main.c: 354: {
;main.c: 355: total_area += rMedio[a];
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_248)^080h,w
	fcall	___bmul
	addlw	_rMedio&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftadd@f1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@total_area)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@total_area+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@total_area+2)^080h
	line	356
;main.c: 356: soma += (x * rMedio[a]);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_248)^080h,w
	fcall	___bmul
	addlw	_rMedio&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftmul@f2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@soma)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@soma+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@soma+2)^080h
	goto	i1l3933
	line	357
	
i1l175:	
	line	359
	
i1l3933:	
;main.c: 357: }
;main.c: 359: if (a >= 10 && a <= 15)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_248+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u573_25
	movlw	low(0Ah)
	subwf	(ISR@a_248)^080h,w
u573_25:

	skipc
	goto	u573_21
	goto	u573_20
u573_21:
	goto	i1l3939
u573_20:
	
i1l3935:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_248+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u574_25
	movlw	low(010h)
	subwf	(ISR@a_248)^080h,w
u574_25:

	skipnc
	goto	u574_21
	goto	u574_20
u574_21:
	goto	i1l3939
u574_20:
	line	361
	
i1l3937:	
;main.c: 360: {
;main.c: 361: total_area += rGrande[a];
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_248)^080h,w
	fcall	___bmul
	addlw	_rGrande&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftadd@f1+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@total_area)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@total_area+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@total_area+2)^080h
	line	362
;main.c: 362: soma += (x * rGrande[a]);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(___bmul@multiplicand)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@a_248)^080h,w
	fcall	___bmul
	addlw	_rGrande&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftmul@f2+1)
	incf	fsr0,f
	movf	indf,w
	movwf	(___ftmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@soma)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@soma+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@soma+2)^080h
	goto	i1l3939
	line	363
	
i1l176:	
	line	364
	
i1l3939:	
;main.c: 363: }
;main.c: 364: x += 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@x+2)^080h
	line	345
	
i1l3941:	
	movlw	low(01h)
	addwf	(ISR@a_248)^080h,f
	skipnc
	incf	(ISR@a_248+1)^080h,f
	movlw	high(01h)
	addwf	(ISR@a_248+1)^080h,f
	
i1l3943:	
	movf	(ISR@a_248+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u575_25
	movlw	low(010h)
	subwf	(ISR@a_248)^080h,w
u575_25:

	skipc
	goto	u575_21
	goto	u575_20
u575_21:
	goto	i1l172
u575_20:
	goto	i1l3945
	
i1l173:	
	line	368
	
i1l3945:	
;main.c: 365: }
;main.c: 368: float reajuste = 0;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@reajuste)^080h
	movlw	0x0
	movwf	(ISR@reajuste+1)^080h
	movlw	0x0
	movwf	(ISR@reajuste+2)^080h
	line	369
;main.c: 369: if (total_area != 0)
	movf	(ISR@total_area+2)^080h,w
	iorwf	(ISR@total_area+1)^080h,w
	iorwf	(ISR@total_area)^080h,w
	skipnz
	goto	u576_21
	goto	u576_20
u576_21:
	goto	i1l3949
u576_20:
	line	371
	
i1l3947:	
;main.c: 370: {
;main.c: 371: reajuste = soma / total_area;
	movf	(ISR@total_area)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@total_area+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@soma+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@reajuste)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@reajuste+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@reajuste+2)^080h
	goto	i1l3949
	line	372
	
i1l177:	
	line	374
	
i1l3949:	
;main.c: 372: }
;main.c: 374: int auxiliar = -1;
	movlw	low(-1)
	movwf	(ISR@auxiliar)^080h
	movlw	high(-1)
	movwf	((ISR@auxiliar)^080h)+1
	line	375
	
i1l3951:	
;main.c: 375: if(setpoint > rpm){
	movf	(_setpoint+1)^080h,w
	subwf	(_rpm+1)^080h,w
	skipz
	goto	u577_25
	movf	(_setpoint)^080h,w
	subwf	(_rpm)^080h,w
u577_25:
	skipnc
	goto	u577_21
	goto	u577_20
u577_21:
	goto	i1l3955
u577_20:
	line	376
	
i1l3953:	
;main.c: 376: auxiliar = 1;
	movlw	low(01h)
	movwf	(ISR@auxiliar)^080h
	movlw	high(01h)
	movwf	((ISR@auxiliar)^080h)+1
	goto	i1l3955
	line	377
	
i1l178:	
	line	379
	
i1l3955:	
;main.c: 377: }
;main.c: 379: pwm = maximo(minimo(pwm + ((int)minimo(reajuste, erro_atual)) * (auxiliar), 1023), 0);
	movf	(ISR@auxiliar+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@auxiliar)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_erro_atual+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_erro_atual)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@b)
	movf	(1+(?___awtoft)),w
	movwf	(minimo@b+1)
	movf	(2+(?___awtoft)),w
	movwf	(minimo@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@reajuste)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@reajuste+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@reajuste+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a+2)
	fcall	_minimo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_minimo)),w
	movwf	(___fttol@f1)
	movf	(1+(?_minimo)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_minimo)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pwm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(0+(?___wmul)),w
	movwf	(___lwtoft@c)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pwm+1)^080h,w
	skipnc
	incf	(_pwm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1+(?___wmul)),w
	movwf	1+(___lwtoft@c)
	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1668)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1668+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___lwtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ISR$1668+2)^080h
	
i1l3957:	
;main.c: 377: }
;main.c: 379: pwm = maximo(minimo(pwm + ((int)minimo(reajuste, erro_atual)) * (auxiliar), 1023), 0);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(maximo@b)
	movlw	0x0
	movwf	(maximo@b+1)
	movlw	0x0
	movwf	(maximo@b+2)
	movlw	0xc0
	movwf	(minimo@b)
	movlw	0x7f
	movwf	(minimo@b+1)
	movlw	0x44
	movwf	(minimo@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1668)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1668+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ISR$1668+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a+2)
	fcall	_minimo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_minimo)),w
	movwf	(maximo@a)
	movf	(1+(?_minimo)),w
	movwf	(maximo@a+1)
	movf	(2+(?_minimo)),w
	movwf	(maximo@a+2)
	fcall	_maximo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_maximo)),w
	movwf	(___fttol@f1)
	movf	(1+(?_maximo)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_maximo)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pwm+1)^080h
	addwf	(_pwm+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pwm)^080h
	addwf	(_pwm)^080h

	line	381
	
i1l3959:	
;main.c: 381: PWM_DutyCycle2(pwm);
	movf	(_pwm+1)^080h,w
	clrf	(i1PWM_DutyCycle2@valor+1)
	addwf	(i1PWM_DutyCycle2@valor+1)
	movf	(_pwm)^080h,w
	clrf	(i1PWM_DutyCycle2@valor)
	addwf	(i1PWM_DutyCycle2@valor)

	fcall	i1_PWM_DutyCycle2
	line	384
	
i1l3961:	
;main.c: 384: PORTBbits.RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),6	;volatile
	goto	i1l3963
	line	385
	
i1l155:	
	line	388
	
i1l3963:	
;main.c: 385: }
;main.c: 388: INTCONbits.T0IF = 0;
	bcf	(11),2	;volatile
	goto	i1l3965
	line	389
	
i1l153:	
	line	392
	
i1l3965:	
;main.c: 389: }
;main.c: 392: if (PIR1bits.TMR1IF) {
	btfss	(12),0	;volatile
	goto	u578_21
	goto	u578_20
u578_21:
	goto	i1l180
u578_20:
	line	397
	
i1l3967:	
;main.c: 397: PIR1bits.TMR1IF = 0;
	bcf	(12),0	;volatile
	goto	i1l180
	line	398
	
i1l179:	
	line	409
	
i1l180:	
	movf	(??_ISR+5),w
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	i1_set

;; *************** function i1_set *****************
;; Defined at:
;;		line 99 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	99
global __ptext14
__ptext14:	;psect for function i1_set
psect	text14
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	99
	global	__size_ofi1_set
	__size_ofi1_set	equ	__end_ofi1_set-i1_set
	
i1_set:	
;incstack = 0
	opt	stack 4
; Regs used in i1_set: [wreg+status,2+status,0]
	line	100
	
i1l2801:	
;main.c: 100: if(kmph > 40){
	movlw	high(029h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_kmph+1),w
	movlw	low(029h)
	skipnz
	subwf	(_kmph),w
	skipc
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l112
u338_20:
	line	102
	
i1l2803:	
;main.c: 102: if(pilotoAtivo == 3 && setpoint > 1640){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pilotoAtivo)^080h,w
	xorlw	03h
	skipz
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l2809
u339_20:
	
i1l2805:	
	movlw	high(0669h)
	subwf	(_setpoint+1)^080h,w
	movlw	low(0669h)
	skipnz
	subwf	(_setpoint)^080h,w
	skipc
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l2809
u340_20:
	line	104
	
i1l2807:	
;main.c: 104: setpoint = setpoint - 41;
	movf	(_setpoint)^080h,w
	addlw	low(0FFD7h)
	movwf	(_setpoint)^080h
	movf	(_setpoint+1)^080h,w
	skipnc
	addlw	1
	addlw	high(0FFD7h)
	movwf	1+(_setpoint)^080h
	line	105
;main.c: 105: velocidadeSetada = setpoint;
	movf	(_setpoint+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_velocidadeSetada+1)
	addwf	(_velocidadeSetada+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpoint)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_velocidadeSetada)
	addwf	(_velocidadeSetada)

	goto	i1l2809
	line	106
	
i1l110:	
	line	107
	
i1l2809:	
;main.c: 106: }
;main.c: 107: if(pilotoAtivo == 1){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pilotoAtivo)^080h,w
	xorlw	01h
	skipz
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l112
u341_20:
	line	109
	
i1l2811:	
;main.c: 109: pilotoAtivo = 3;
	movlw	(03h)
	movwf	(??i1_set+0)+0
	movf	(??i1_set+0)+0,w
	movwf	(_pilotoAtivo)^080h
	line	110
	
i1l2813:	
;main.c: 110: setpoint = velocidadeSetada;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_velocidadeSetada+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_setpoint+1)^080h
	addwf	(_setpoint+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_velocidadeSetada),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_setpoint)^080h
	addwf	(_setpoint)^080h

	goto	i1l112
	line	111
	
i1l111:	
	goto	i1l112
	line	112
	
i1l109:	
	line	113
	
i1l112:	
	return
	opt stack 0
GLOBAL	__end_ofi1_set
	__end_ofi1_set:
	signat	i1_set,88
	global	i1_res

;; *************** function i1_res *****************
;; Defined at:
;;		line 86 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	86
global __ptext15
__ptext15:	;psect for function i1_res
psect	text15
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	86
	global	__size_ofi1_res
	__size_ofi1_res	equ	__end_ofi1_res-i1_res
	
i1_res:	
;incstack = 0
	opt	stack 4
; Regs used in i1_res: [wreg+status,2+status,0]
	line	87
	
i1l2789:	
;main.c: 87: if(pilotoAtivo == 3 && setpoint < 9000){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pilotoAtivo)^080h,w
	xorlw	03h
	skipz
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l2795
u335_20:
	
i1l2791:	
	movlw	high(02328h)
	subwf	(_setpoint+1)^080h,w
	movlw	low(02328h)
	skipnz
	subwf	(_setpoint)^080h,w
	skipnc
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l2795
u336_20:
	line	89
	
i1l2793:	
;main.c: 89: setpoint = setpoint + 41;
	movf	(_setpoint)^080h,w
	addlw	low(029h)
	movwf	(_setpoint)^080h
	movf	(_setpoint+1)^080h,w
	skipnc
	addlw	1
	addlw	high(029h)
	movwf	1+(_setpoint)^080h
	line	90
;main.c: 90: velocidadeSetada = setpoint;
	movf	(_setpoint+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_velocidadeSetada+1)
	addwf	(_velocidadeSetada+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpoint)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_velocidadeSetada)
	addwf	(_velocidadeSetada)

	goto	i1l2795
	line	91
	
i1l104:	
	line	92
	
i1l2795:	
;main.c: 91: }
;main.c: 92: if(pilotoAtivo == 1){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pilotoAtivo)^080h,w
	xorlw	01h
	skipz
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l106
u337_20:
	line	94
	
i1l2797:	
;main.c: 94: pilotoAtivo = 3;
	movlw	(03h)
	movwf	(??i1_res+0)+0
	movf	(??i1_res+0)+0,w
	movwf	(_pilotoAtivo)^080h
	line	95
	
i1l2799:	
;main.c: 95: setpoint = velocidadeSetada;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_velocidadeSetada+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_setpoint+1)^080h
	addwf	(_setpoint+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_velocidadeSetada),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_setpoint)^080h
	addwf	(_setpoint)^080h

	goto	i1l106
	line	96
	
i1l105:	
	line	97
	
i1l106:	
	return
	opt stack 0
GLOBAL	__end_ofi1_res
	__end_ofi1_res:
	signat	i1_res,88
	global	i1_inicia

;; *************** function i1_inicia *****************
;; Defined at:
;;		line 79 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	79
global __ptext16
__ptext16:	;psect for function i1_inicia
psect	text16
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	79
	global	__size_ofi1_inicia
	__size_ofi1_inicia	equ	__end_ofi1_inicia-i1_inicia
	
i1_inicia:	
;incstack = 0
	opt	stack 4
; Regs used in i1_inicia: [status,2]
	line	80
	
i1l2785:	
;main.c: 80: if(pilotoAtivo & 1){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(_pilotoAtivo)^080h,(0)&7
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l99
u334_20:
	line	81
	
i1l2787:	
;main.c: 81: pilotoAtivo = 0;
	clrf	(_pilotoAtivo)^080h
	line	82
;main.c: 82: }else{
	goto	i1l101
	
i1l99:	
	line	83
;main.c: 83: pilotoAtivo = 1;
	clrf	(_pilotoAtivo)^080h
	incf	(_pilotoAtivo)^080h,f
	goto	i1l101
	line	84
	
i1l100:	
	line	85
	
i1l101:	
	return
	opt stack 0
GLOBAL	__end_ofi1_inicia
	__end_ofi1_inicia:
	signat	i1_inicia,88
	global	i1_TIMER0_Set

;; *************** function i1_TIMER0_Set *****************
;; Defined at:
;;		line 20 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\timers.c"
;; Parameters:    Size  Location     Type
;;  contagens       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  contagens       1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\timers.c"
	line	20
global __ptext17
__ptext17:	;psect for function i1_TIMER0_Set
psect	text17
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\timers.c"
	line	20
	global	__size_ofi1_TIMER0_Set
	__size_ofi1_TIMER0_Set	equ	__end_ofi1_TIMER0_Set-i1_TIMER0_Set
	
i1_TIMER0_Set:	
;incstack = 0
	opt	stack 4
; Regs used in i1_TIMER0_Set: [wreg]
;i1TIMER0_Set@contagens stored from wreg
	movwf	(i1TIMER0_Set@contagens)
	line	22
	
i1l2815:	
;timers.c: 22: TMR0 = contagens;
	movf	(i1TIMER0_Set@contagens),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
i1l287:	
	return
	opt stack 0
GLOBAL	__end_ofi1_TIMER0_Set
	__end_ofi1_TIMER0_Set:
	signat	i1_TIMER0_Set,88
	global	i1_PWM_DutyCycle2

;; *************** function i1_PWM_DutyCycle2 *****************
;; Defined at:
;;		line 96 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\pwm.c"
	line	96
global __ptext18
__ptext18:	;psect for function i1_PWM_DutyCycle2
psect	text18
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\pwm.c"
	line	96
	global	__size_ofi1_PWM_DutyCycle2
	__size_ofi1_PWM_DutyCycle2	equ	__end_ofi1_PWM_DutyCycle2-i1_PWM_DutyCycle2
	
i1_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 4
; Regs used in i1_PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
i1l2817:	
;pwm.c: 98: CCPR2L = valor >> 2;
	movf	(i1PWM_DutyCycle2@valor+1),w
	movwf	(??i1_PWM_DutyCycle2+0)+0+1
	movf	(i1PWM_DutyCycle2@valor),w
	movwf	(??i1_PWM_DutyCycle2+0)+0
	rlf	(??i1_PWM_DutyCycle2+0)+1,w
	rrf	(??i1_PWM_DutyCycle2+0)+1,f
	rrf	(??i1_PWM_DutyCycle2+0)+0,f
	rlf	(??i1_PWM_DutyCycle2+0)+1,w
	rrf	(??i1_PWM_DutyCycle2+0)+1,f
	rrf	(??i1_PWM_DutyCycle2+0)+0,f
	movf	0+(??i1_PWM_DutyCycle2+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	99
	
i1l2819:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	movf	(i1PWM_DutyCycle2@valor),w
	movwf	(??i1_PWM_DutyCycle2+0)+0
	movlw	(04h)-1
u342_25:
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,f
	addlw	-1
	skipz
	goto	u342_25
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,w
	iorlw	0Ch
	movwf	(29)	;volatile
	line	100
	
i1l441:	
	return
	opt stack 0
GLOBAL	__end_ofi1_PWM_DutyCycle2
	__end_ofi1_PWM_DutyCycle2:
	signat	i1_PWM_DutyCycle2,88
	global	_trapmf

;; *************** function _trapmf *****************
;; Defined at:
;;		line 116 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;  x               3   32[BANK0 ] float 
;;  a               3   35[BANK0 ] float 
;;  b               3   38[BANK0 ] float 
;;  c               3   41[BANK0 ] float 
;;  d               3   44[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  ua              3   47[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      15       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	116
global __ptext19
__ptext19:	;psect for function _trapmf
psect	text19
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	116
	global	__size_of_trapmf
	__size_of_trapmf	equ	__end_of_trapmf-_trapmf
	
_trapmf:	
;incstack = 0
	opt	stack 2
; Regs used in _trapmf: [wreg+status,2+status,0+pclath+cstack]
	line	117
	
i1l3689:	
;main.c: 117: float ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x0
	movwf	(trapmf@ua+1)
	movlw	0x0
	movwf	(trapmf@ua+2)
	line	119
	
i1l3691:	
;main.c: 119: if (x <= a)
	movf	(trapmf@a),w
	movwf	(___ftge@ff1)
	movf	(trapmf@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u521_21
	goto	u521_20
u521_21:
	goto	i1l3695
u521_20:
	line	120
	
i1l3693:	
;main.c: 120: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x0
	movwf	(trapmf@ua+1)
	movlw	0x0
	movwf	(trapmf@ua+2)
	goto	i1l116
	line	121
	
i1l115:	
	
i1l3695:	
;main.c: 121: else if ((a < x) && (x <= b))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@a),w
	movwf	(___ftge@ff1)
	movf	(trapmf@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u522_21
	goto	u522_20
u522_21:
	goto	i1l3701
u522_20:
	
i1l3697:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@b),w
	movwf	(___ftge@ff1)
	movf	(trapmf@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u523_21
	goto	u523_20
u523_21:
	goto	i1l3701
u523_20:
	line	122
	
i1l3699:	
;main.c: 122: ua = ((x - a) / (b - a));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@b),w
	movwf	(___ftadd@f1)
	movf	(trapmf@b+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapmf@b+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapmf@a),w
	movwf	(___ftneg@f1)
	movf	(trapmf@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapmf@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(trapmf@x),w
	movwf	(___ftadd@f1)
	movf	(trapmf@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapmf@x+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapmf@a),w
	movwf	(___ftneg@f1)
	movf	(trapmf@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapmf@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(trapmf@ua)
	movf	(1+(?___ftdiv)),w
	movwf	(trapmf@ua+1)
	movf	(2+(?___ftdiv)),w
	movwf	(trapmf@ua+2)
	goto	i1l116
	line	123
	
i1l117:	
	
i1l3701:	
;main.c: 123: else if ((b <= x) && (x <= c))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@x),w
	movwf	(___ftge@ff1)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@b),w
	movwf	(___ftge@ff2)
	movf	(trapmf@b+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@b+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u524_21
	goto	u524_20
u524_21:
	goto	i1l3707
u524_20:
	
i1l3703:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@c),w
	movwf	(___ftge@ff1)
	movf	(trapmf@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u525_21
	goto	u525_20
u525_21:
	goto	i1l3707
u525_20:
	line	124
	
i1l3705:	
;main.c: 124: ua = 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x80
	movwf	(trapmf@ua+1)
	movlw	0x3f
	movwf	(trapmf@ua+2)
	goto	i1l116
	line	125
	
i1l119:	
	
i1l3707:	
;main.c: 125: else if ((c < x) && (x <= d))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@c),w
	movwf	(___ftge@ff1)
	movf	(trapmf@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u526_21
	goto	u526_20
u526_21:
	goto	i1l3713
u526_20:
	
i1l3709:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@d),w
	movwf	(___ftge@ff1)
	movf	(trapmf@d+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@d+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u527_21
	goto	u527_20
u527_21:
	goto	i1l3713
u527_20:
	line	126
	
i1l3711:	
;main.c: 126: ua = ((d - x) / (d - c));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@d),w
	movwf	(___ftadd@f1)
	movf	(trapmf@d+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapmf@d+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapmf@c),w
	movwf	(___ftneg@f1)
	movf	(trapmf@c+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapmf@c+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(trapmf@d),w
	movwf	(___ftadd@f1)
	movf	(trapmf@d+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapmf@d+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapmf@x),w
	movwf	(___ftneg@f1)
	movf	(trapmf@x+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapmf@x+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(trapmf@ua)
	movf	(1+(?___ftdiv)),w
	movwf	(trapmf@ua+1)
	movf	(2+(?___ftdiv)),w
	movwf	(trapmf@ua+2)
	goto	i1l116
	line	127
	
i1l121:	
	
i1l3713:	
;main.c: 127: else if (x > d)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@d),w
	movwf	(___ftge@ff1)
	movf	(trapmf@d+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@d+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u528_21
	goto	u528_20
u528_21:
	goto	i1l116
u528_20:
	line	128
	
i1l3715:	
;main.c: 128: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x0
	movwf	(trapmf@ua+1)
	movlw	0x0
	movwf	(trapmf@ua+2)
	goto	i1l116
	
i1l123:	
	goto	i1l116
	line	130
	
i1l122:	
	goto	i1l116
	
i1l120:	
	goto	i1l116
	
i1l118:	
	
i1l116:	
;main.c: 130: return (ua);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@ua),w
	movwf	(?_trapmf)
	movf	(trapmf@ua+1),w
	movwf	(?_trapmf+1)
	movf	(trapmf@ua+2),w
	movwf	(?_trapmf+2)
	goto	i1l124
	
i1l3717:	
	line	131
	
i1l124:	
	return
	opt stack 0
GLOBAL	__end_of_trapmf
	__end_of_trapmf:
	signat	_trapmf,20603
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_trapmf
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext20
__ptext20:	;psect for function ___ftneg
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftneg: [wreg]
	line	17
	
i1l2351:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l2355
u269_20:
	line	18
	
i1l2353:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	i1l2355
	
i1l786:	
	line	19
	
i1l2355:	
	goto	i1l787
	
i1l2357:	
	line	20
	
i1l787:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   16[BANK0 ] float 
;;  f1              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   27[BANK0 ] float 
;;  sign            1   31[BANK0 ] unsigned char 
;;  exp             1   30[BANK0 ] unsigned char 
;;  cntr            1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_trapmf
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext21
__ptext21:	;psect for function ___ftdiv
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l2289:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l2295
u256_20:
	line	56
	
i1l2291:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l761
	
i1l2293:	
	goto	i1l761
	
i1l760:	
	line	57
	
i1l2295:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u257_21
	goto	u257_20
u257_21:
	goto	i1l2301
u257_20:
	line	58
	
i1l2297:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l761
	
i1l2299:	
	goto	i1l761
	
i1l762:	
	line	59
	
i1l2301:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
i1l2303:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
i1l2305:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u258_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u258_20:
	addlw	-1
	skipz
	goto	u258_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
i1l2307:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u259_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u259_20:
	addlw	-1
	skipz
	goto	u259_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
i1l2309:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
i1l2311:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
i1l2313:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	i1l2315
	line	69
	
i1l763:	
	line	70
	
i1l2315:	
	movlw	01h
u260_25:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u260_25
	line	71
	
i1l2317:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u261_25
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u261_25
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u261_25:
	skipc
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l2323
u261_20:
	line	72
	
i1l2319:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
i1l2321:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	i1l2323
	line	74
	
i1l764:	
	line	75
	
i1l2323:	
	movlw	01h
u262_25:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u262_25
	line	76
	
i1l2325:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l2315
u263_20:
	goto	i1l2327
	
i1l765:	
	line	77
	
i1l2327:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	i1l761
	
i1l2329:	
	line	78
	
i1l761:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[BANK0 ] float 
;;  f2              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   15[BANK0 ] unsigned char 
;;  exp2            1   14[BANK0 ] unsigned char 
;;  sign            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_trapmf
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext22
__ptext22:	;psect for function ___ftadd
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l3617:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
i1l3619:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u497_20
	goto	i1l3625
u497_20:
	
i1l3621:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u498_21
	goto	u498_20
u498_21:
	goto	i1l3629
u498_20:
	
i1l3623:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u499_21
	goto	u499_20
u499_21:
	goto	i1l3629
u499_20:
	goto	i1l3625
	
i1l729:	
	line	93
	
i1l3625:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	i1l730
	
i1l3627:	
	goto	i1l730
	
i1l727:	
	line	94
	
i1l3629:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u500_20
	goto	i1l733
u500_20:
	
i1l3631:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u501_21
	goto	u501_20
u501_21:
	goto	i1l3635
u501_20:
	
i1l3633:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u502_21
	goto	u502_20
u502_21:
	goto	i1l3635
u502_20:
	
i1l733:	
	line	95
	goto	i1l730
	
i1l731:	
	line	96
	
i1l3635:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
i1l3637:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u503_21
	goto	u503_20
u503_21:
	goto	i1l734
u503_20:
	line	98
	
i1l3639:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
i1l734:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u504_21
	goto	u504_20
u504_21:
	goto	i1l735
u504_20:
	line	100
	
i1l3641:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
i1l735:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l3643:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
i1l3645:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u505_21
	goto	u505_20
u505_21:
	goto	i1l3657
u505_20:
	goto	i1l3647
	line	109
	
i1l737:	
	line	110
	
i1l3647:	
	movlw	01h
u506_25:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u506_25
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
i1l3649:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u507_21
	goto	u507_20
u507_21:
	goto	i1l3655
u507_20:
	
i1l3651:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u508_21
	goto	u508_20
u508_21:
	goto	i1l3647
u508_20:
	goto	i1l3655
	
i1l739:	
	goto	i1l3655
	
i1l740:	
	line	113
	goto	i1l3655
	
i1l742:	
	line	114
	
i1l3653:	
	movlw	01h
u509_25:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u509_25

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	i1l3655
	line	116
	
i1l741:	
	line	113
	
i1l3655:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u510_21
	goto	u510_20
u510_21:
	goto	i1l3653
u510_20:
	goto	i1l744
	
i1l743:	
	line	117
	goto	i1l744
	
i1l736:	
	
i1l3657:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u511_21
	goto	u511_20
u511_21:
	goto	i1l744
u511_20:
	goto	i1l3659
	line	120
	
i1l746:	
	line	121
	
i1l3659:	
	movlw	01h
u512_25:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u512_25
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
i1l3661:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u513_21
	goto	u513_20
u513_21:
	goto	i1l3667
u513_20:
	
i1l3663:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u514_21
	goto	u514_20
u514_21:
	goto	i1l3659
u514_20:
	goto	i1l3667
	
i1l748:	
	goto	i1l3667
	
i1l749:	
	line	124
	goto	i1l3667
	
i1l751:	
	line	125
	
i1l3665:	
	movlw	01h
u515_25:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u515_25

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	i1l3667
	line	127
	
i1l750:	
	line	124
	
i1l3667:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u516_21
	goto	u516_20
u516_21:
	goto	i1l3665
u516_20:
	goto	i1l744
	
i1l752:	
	goto	i1l744
	line	128
	
i1l745:	
	line	129
	
i1l744:	
	btfss	(___ftadd@sign),(7)&7
	goto	u517_21
	goto	u517_20
u517_21:
	goto	i1l3671
u517_20:
	line	131
	
i1l3669:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	i1l3671
	line	133
	
i1l753:	
	line	134
	
i1l3671:	
	btfss	(___ftadd@sign),(6)&7
	goto	u518_21
	goto	u518_20
u518_21:
	goto	i1l3675
u518_20:
	line	136
	
i1l3673:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	i1l3675
	line	138
	
i1l754:	
	line	139
	
i1l3675:	
	clrf	(___ftadd@sign)
	line	140
	
i1l3677:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u519_21
	addwf	(___ftadd@f2+1),f
u519_21:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u519_22
	addwf	(___ftadd@f2+2),f
u519_22:

	line	141
	
i1l3679:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u520_21
	goto	u520_20
u520_21:
	goto	i1l3685
u520_20:
	line	142
	
i1l3681:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
i1l3683:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	i1l3685
	line	145
	
i1l755:	
	line	146
	
i1l3685:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	i1l730
	
i1l3687:	
	line	148
	
i1l730:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_send

;; *************** function _send *****************
;; Defined at:
;;		line 134 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  index           1   10[COMMON] unsigned char 
;;  checksum        1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USART_WriteChar
;;		___lwdiv
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	134
global __ptext23
__ptext23:	;psect for function _send
psect	text23
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	134
	global	__size_of_send
	__size_of_send	equ	__end_of_send-_send
	
_send:	
;incstack = 0
	opt	stack 3
; Regs used in _send: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	138
	
i1l2461:	
;main.c: 138: buffer[0] = '#';
	movlw	(023h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_buffer)^080h
	line	139
;main.c: 139: buffer[1] = '$';
	movlw	(024h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	movwf	0+(_buffer)^080h+01h
	line	140
;main.c: 140: buffer[2] = ':';
	movlw	(03Ah)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	movwf	0+(_buffer)^080h+02h
	line	142
	
i1l2463:	
;main.c: 142: kmph = rpm/41;
	movlw	low(029h)
	movwf	(___lwdiv@divisor)
	movlw	high(029h)
	movwf	((___lwdiv@divisor))+1
	movf	(_rpm+1)^080h,w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(_rpm)^080h,w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_kmph+1)
	addwf	(_kmph+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_kmph)
	addwf	(_kmph)

	line	144
	
i1l2465:	
;main.c: 144: buffer[3] = (kmph >> 8);
	movf	(_kmph+1),w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_buffer)^080h+03h
	line	145
	
i1l2467:	
;main.c: 145: buffer[4] = kmph;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_kmph),w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_buffer)^080h+04h
	line	146
	
i1l2469:	
;main.c: 146: kmph = setpoint/41;
	movlw	low(029h)
	movwf	(___lwdiv@divisor)
	movlw	high(029h)
	movwf	((___lwdiv@divisor))+1
	movf	(_setpoint+1)^080h,w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(_setpoint)^080h,w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_kmph+1)
	addwf	(_kmph+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_kmph)
	addwf	(_kmph)

	line	147
;main.c: 147: buffer[5] = (kmph >> 8);
	movf	(_kmph+1),w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_buffer)^080h+05h
	line	148
	
i1l2471:	
;main.c: 148: buffer[6] = kmph;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_kmph),w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_buffer)^080h+06h
	line	149
	
i1l2473:	
;main.c: 149: buffer[7] = pilotoAtivo;
	movf	(_pilotoAtivo)^080h,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	movwf	0+(_buffer)^080h+07h
	line	152
	
i1l2475:	
;main.c: 152: unsigned char checksum = 0x00;
	clrf	(send@checksum)
	line	153
	
i1l2477:	
;main.c: 153: for (unsigned char index = 0; index < 8; index++)
	clrf	(send@index)
	
i1l2479:	
	movlw	(08h)
	subwf	(send@index),w
	skipc
	goto	u295_21
	goto	u295_20
u295_21:
	goto	i1l2483
u295_20:
	goto	i1l2491
	
i1l2481:	
	goto	i1l2491
	line	154
	
i1l129:	
	line	155
	
i1l2483:	
;main.c: 154: {
;main.c: 155: USART_WriteChar(buffer[index]);
	movf	(send@index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_USART_WriteChar
	line	156
	
i1l2485:	
;main.c: 156: checksum ^= buffer[index];
	movf	(send@index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	xorwf	(send@checksum),f
	line	153
	
i1l2487:	
	movlw	(01h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	addwf	(send@index),f
	
i1l2489:	
	movlw	(08h)
	subwf	(send@index),w
	skipc
	goto	u296_21
	goto	u296_20
u296_21:
	goto	i1l2483
u296_20:
	goto	i1l2491
	
i1l130:	
	line	158
	
i1l2491:	
;main.c: 157: }
;main.c: 158: buffer[8] = checksum;
	movf	(send@checksum),w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_buffer)^080h+08h
	line	159
	
i1l2493:	
;main.c: 159: USART_WriteChar(buffer[8]);
	movf	0+(_buffer)^080h+08h,w
	fcall	_USART_WriteChar
	line	160
	
i1l131:	
	return
	opt stack 0
GLOBAL	__end_of_send
	__end_of_send:
	signat	_send,88
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext24
__ptext24:	;psect for function ___lwdiv
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
i1l2359:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
i1l2361:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l2381
u270_20:
	line	16
	
i1l2363:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	i1l2369
	
i1l885:	
	line	18
	
i1l2365:	
	movlw	01h
	
u271_25:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u271_25
	line	19
	
i1l2367:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	i1l2369
	line	20
	
i1l884:	
	line	17
	
i1l2369:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l2365
u272_20:
	goto	i1l2371
	
i1l886:	
	goto	i1l2371
	line	21
	
i1l887:	
	line	22
	
i1l2371:	
	movlw	01h
	
u273_25:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u273_25
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u274_25
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u274_25:
	skipc
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l2377
u274_20:
	line	24
	
i1l2373:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
i1l2375:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	i1l2377
	line	26
	
i1l888:	
	line	27
	
i1l2377:	
	movlw	01h
	
u275_25:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u275_25
	line	28
	
i1l2379:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u276_21
	goto	u276_20
u276_21:
	goto	i1l2371
u276_20:
	goto	i1l2381
	
i1l889:	
	goto	i1l2381
	line	29
	
i1l883:	
	line	30
	
i1l2381:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	i1l890
	
i1l2383:	
	line	31
	
i1l890:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_minimo

;; *************** function _minimo *****************
;; Defined at:
;;		line 25 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;  a               3    6[BANK0 ] float 
;;  b               3    9[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	25
global __ptext25
__ptext25:	;psect for function _minimo
psect	text25
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	25
	global	__size_of_minimo
	__size_of_minimo	equ	__end_of_minimo-_minimo
	
_minimo:	
;incstack = 0
	opt	stack 3
; Regs used in _minimo: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
i1l2393:	
;main.c: 26: if (a < b) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(minimo@a),w
	movwf	(___ftge@ff1)
	movf	(minimo@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(minimo@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(minimo@b),w
	movwf	(___ftge@ff2)
	movf	(minimo@b+1),w
	movwf	(___ftge@ff2+1)
	movf	(minimo@b+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u278_21
	goto	u278_20
u278_21:
	goto	i1l2397
u278_20:
	line	27
	
i1l2395:	
;main.c: 27: return a;
	goto	i1l66
	line	28
	
i1l65:	
	line	29
	
i1l2397:	
;main.c: 28: }
;main.c: 29: return b;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(minimo@b),w
	movwf	(?_minimo)
	movf	(minimo@b+1),w
	movwf	(?_minimo+1)
	movf	(minimo@b+2),w
	movwf	(?_minimo+2)
	goto	i1l66
	
i1l2399:	
	line	30
	
i1l66:	
	return
	opt stack 0
GLOBAL	__end_of_minimo
	__end_of_minimo:
	signat	_minimo,8315
	global	_maximo

;; *************** function _maximo *****************
;; Defined at:
;;		line 18 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
;; Parameters:    Size  Location     Type
;;  a               3   12[BANK0 ] float 
;;  b               3   15[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   12[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	line	18
global __ptext26
__ptext26:	;psect for function _maximo
psect	text26
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\main.c"
	line	18
	global	__size_of_maximo
	__size_of_maximo	equ	__end_of_maximo-_maximo
	
_maximo:	
;incstack = 0
	opt	stack 3
; Regs used in _maximo: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
i1l2385:	
;main.c: 19: if (a > b) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(maximo@b),w
	movwf	(___ftge@ff1)
	movf	(maximo@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(maximo@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(maximo@a),w
	movwf	(___ftge@ff2)
	movf	(maximo@a+1),w
	movwf	(___ftge@ff2+1)
	movf	(maximo@a+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l2389
u277_20:
	line	20
	
i1l2387:	
;main.c: 20: return a;
	goto	i1l62
	line	21
	
i1l61:	
	line	22
	
i1l2389:	
;main.c: 21: }
;main.c: 22: return b;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(maximo@b),w
	movwf	(?_maximo)
	movf	(maximo@b+1),w
	movwf	(?_maximo+1)
	movf	(maximo@b+2),w
	movwf	(?_maximo+2)
	goto	i1l62
	
i1l2391:	
	line	23
	
i1l62:	
	return
	opt stack 0
GLOBAL	__end_of_maximo
	__end_of_maximo:
	signat	_maximo,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    4[COMMON] float 
;;  ff2             3    7[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         6       6       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_maximo
;;		_minimo
;;		_trapmf
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext27
__ptext27:	;psect for function ___ftge
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
i1l2331:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l2335
u264_20:
	line	7
	
i1l2333:	
	movlw	low(0800000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u265_21
	goto	u265_22
u265_21:
	addwf	(??___ftge+0)+1,f
	
u265_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u265_23
	goto	u265_24
u265_23:
	addwf	(??___ftge+0)+2,f
	
u265_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	i1l2335
	
i1l768:	
	line	8
	
i1l2335:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l2339
u266_20:
	line	9
	
i1l2337:	
	movlw	low(0800000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u267_21
	goto	u267_22
u267_21:
	addwf	(??___ftge+0)+1,f
	
u267_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u267_23
	goto	u267_24
u267_23:
	addwf	(??___ftge+0)+2,f
	
u267_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	i1l2339
	
i1l769:	
	line	10
	
i1l2339:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
i1l2341:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
i1l2343:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u268_25
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u268_25
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u268_25:
	skipnc
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l2347
u268_20:
	
i1l2345:	
	clrc
	
	goto	i1l770
	
i1l2123:	
	
i1l2347:	
	setc
	
	goto	i1l770
	
i1l2125:	
	goto	i1l770
	
i1l2349:	
	line	13
	
i1l770:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_abs

;; *************** function _abs *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\abs.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\abs.c"
	line	4
global __ptext28
__ptext28:	;psect for function _abs
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\abs.c"
	line	4
	global	__size_of_abs
	__size_of_abs	equ	__end_of_abs-_abs
	
_abs:	
;incstack = 0
	opt	stack 4
; Regs used in _abs: [wreg+status,2+status,0]
	line	6
	
i1l2539:	
	btfss	(abs@a+1),7
	goto	u299_21
	goto	u299_20
u299_21:
	goto	i1l599
u299_20:
	line	7
	
i1l2541:	
	comf	(abs@a),w
	movwf	(??_abs+0)+0
	comf	(abs@a+1),w
	movwf	((??_abs+0)+0+1)
	incf	(??_abs+0)+0,f
	skipnz
	incf	((??_abs+0)+0+1),f
	movf	0+(??_abs+0)+0,w
	movwf	(?_abs)
	movf	1+(??_abs+0)+0,w
	movwf	(?_abs+1)
	goto	i1l600
	
i1l2543:	
	goto	i1l600
	
i1l599:	
	line	8
	line	9
	
i1l600:	
	return
	opt stack 0
GLOBAL	__end_of_abs
	__end_of_abs:
	signat	_abs,4218
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   32[BANK0 ] unsigned int 
;;  multiplicand    2   34[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   36[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   32[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext29
__ptext29:	;psect for function ___wmul
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
i1l2647:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	i1l2649
	line	44
	
i1l549:	
	line	45
	
i1l2649:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u303_21
	goto	u303_20
u303_21:
	goto	i1l550
u303_20:
	line	46
	
i1l2651:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
i1l550:	
	line	47
	movlw	01h
	
u304_25:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u304_25
	line	48
	
i1l2653:	
	movlw	01h
	
u305_25:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u305_25
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u306_21
	goto	u306_20
u306_21:
	goto	i1l2649
u306_20:
	goto	i1l2655
	
i1l551:	
	line	52
	
i1l2655:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	i1l552
	
i1l2657:	
	line	53
	
i1l552:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   38[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   38[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext30
__ptext30:	;psect for function ___lwtoft
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
i1l2781:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	i1l905
	
i1l2783:	
	line	31
	
i1l905:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   18[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   27[BANK0 ] unsigned long 
;;  exp1            1   31[BANK0 ] unsigned char 
;;  sign1           1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   18[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext31
__ptext31:	;psect for function ___fttol
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
i1l2737:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u324_21
	goto	u324_20
u324_21:
	goto	i1l2743
u324_20:
	line	50
	
i1l2739:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l796
	
i1l2741:	
	goto	i1l796
	
i1l795:	
	line	51
	
i1l2743:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u325_25:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u325_20:
	addlw	-1
	skipz
	goto	u325_25
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
i1l2745:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
i1l2747:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
i1l2749:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
i1l2751:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
i1l2753:	
	btfss	(___fttol@exp1),7
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l2763
u326_20:
	line	57
	
i1l2755:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u327_21
	goto	u327_20
u327_21:
	goto	i1l2761
u327_20:
	line	58
	
i1l2757:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l796
	
i1l2759:	
	goto	i1l796
	
i1l798:	
	goto	i1l2761
	line	59
	
i1l799:	
	line	60
	
i1l2761:	
	movlw	01h
u328_25:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u328_25

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l2761
u329_20:
	goto	i1l2773
	
i1l800:	
	line	62
	goto	i1l2773
	
i1l797:	
	line	63
	
i1l2763:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u330_21
	goto	u330_20
u330_21:
	goto	i1l2771
u330_20:
	line	64
	
i1l2765:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l796
	
i1l2767:	
	goto	i1l796
	
i1l802:	
	line	65
	goto	i1l2771
	
i1l804:	
	line	66
	
i1l2769:	
	movlw	01h
	movwf	(??___fttol+0)+0
u331_25:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u331_25
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	i1l2771
	line	68
	
i1l803:	
	line	65
	
i1l2771:	
	movf	(___fttol@exp1),f
	skipz
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l2769
u332_20:
	goto	i1l2773
	
i1l805:	
	goto	i1l2773
	line	69
	
i1l801:	
	line	70
	
i1l2773:	
	movf	(___fttol@sign1),w
	skipz
	goto	u333_20
	goto	i1l2777
u333_20:
	line	71
	
i1l2775:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	i1l2777
	
i1l806:	
	line	72
	
i1l2777:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	i1l796
	
i1l2779:	
	line	73
	
i1l796:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   50[BANK0 ] float 
;;  f2              3   53[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   61[BANK0 ] unsigned um
;;  sign            1   65[BANK0 ] unsigned char 
;;  cntr            1   64[BANK0 ] unsigned char 
;;  exp             1   60[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext32
__ptext32:	;psect for function ___ftmul
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
i1l2687:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l2693
u310_20:
	line	68
	
i1l2689:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l776
	
i1l2691:	
	goto	i1l776
	
i1l775:	
	line	69
	
i1l2693:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u311_21
	goto	u311_20
u311_21:
	goto	i1l2699
u311_20:
	line	70
	
i1l2695:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l776
	
i1l2697:	
	goto	i1l776
	
i1l777:	
	line	71
	
i1l2699:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u312_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u312_20:
	addlw	-1
	skipz
	goto	u312_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u313_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u313_20:
	addlw	-1
	skipz
	goto	u313_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
i1l2701:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
i1l2703:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
i1l2705:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
i1l2707:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
i1l2709:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l2711
	line	135
	
i1l778:	
	line	136
	
i1l2711:	
	btfss	(___ftmul@f1),(0)&7
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l2715
u314_20:
	line	137
	
i1l2713:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u315_21
	addwf	(___ftmul@f3_as_product+1),f
u315_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u315_22
	addwf	(___ftmul@f3_as_product+2),f
u315_22:

	goto	i1l2715
	
i1l779:	
	line	138
	
i1l2715:	
	movlw	01h
u316_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u316_25

	line	139
	
i1l2717:	
	movlw	01h
u317_25:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u317_25
	line	140
	
i1l2719:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u318_21
	goto	u318_20
u318_21:
	goto	i1l2711
u318_20:
	goto	i1l2721
	
i1l780:	
	line	143
	
i1l2721:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l2723
	line	144
	
i1l781:	
	line	145
	
i1l2723:	
	btfss	(___ftmul@f1),(0)&7
	goto	u319_21
	goto	u319_20
u319_21:
	goto	i1l2727
u319_20:
	line	146
	
i1l2725:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u320_21
	addwf	(___ftmul@f3_as_product+1),f
u320_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u320_22
	addwf	(___ftmul@f3_as_product+2),f
u320_22:

	goto	i1l2727
	
i1l782:	
	line	147
	
i1l2727:	
	movlw	01h
u321_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u321_25

	line	148
	
i1l2729:	
	movlw	01h
u322_25:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u322_25

	line	149
	
i1l2731:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u323_21
	goto	u323_20
u323_21:
	goto	i1l2723
u323_20:
	goto	i1l2733
	
i1l783:	
	line	156
	
i1l2733:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	i1l776
	
i1l2735:	
	line	157
	
i1l776:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext33
__ptext33:	;psect for function ___bmul
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
i1l2659:	
	clrf	(___bmul@product)
	goto	i1l2661
	line	42
	
i1l567:	
	line	43
	
i1l2661:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l2665
u307_20:
	line	44
	
i1l2663:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	i1l2665
	
i1l568:	
	line	45
	
i1l2665:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
i1l2667:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
i1l2669:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l2661
u308_20:
	goto	i1l2671
	
i1l569:	
	line	50
	
i1l2671:	
	movf	(___bmul@product),w
	goto	i1l570
	
i1l2673:	
	line	51
	
i1l570:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext34
__ptext34:	;psect for function ___awtoft
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
i1l2675:	
	clrf	(___awtoft@sign)
	line	37
	
i1l2677:	
	btfss	(___awtoft@c+1),7
	goto	u309_21
	goto	u309_20
u309_21:
	goto	i1l2683
u309_20:
	line	38
	
i1l2679:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
i1l2681:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	i1l2683
	line	40
	
i1l704:	
	line	41
	
i1l2683:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	i1l705
	
i1l2685:	
	line	42
	
i1l705:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext35
__ptext35:	;psect for function ___ftpack
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l2131:	
	movf	(___ftpack@exp),w
	skipz
	goto	u210_20
	goto	i1l2135
u210_20:
	
i1l2133:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l2141
u211_20:
	goto	i1l2135
	
i1l710:	
	line	65
	
i1l2135:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	i1l711
	
i1l2137:	
	goto	i1l711
	
i1l708:	
	line	66
	goto	i1l2141
	
i1l713:	
	line	67
	
i1l2139:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u212_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u212_25

	goto	i1l2141
	line	69
	
i1l712:	
	line	66
	
i1l2141:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l2139
u213_20:
	goto	i1l715
	
i1l714:	
	line	70
	goto	i1l715
	
i1l716:	
	line	71
	
i1l2143:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
i1l2145:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
i1l2147:	
	movlw	01h
u214_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u214_25

	line	74
	
i1l715:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l2143
u215_20:
	goto	i1l2151
	
i1l717:	
	line	75
	goto	i1l2151
	
i1l719:	
	line	76
	
i1l2149:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u216_25:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u216_25
	goto	i1l2151
	line	78
	
i1l718:	
	line	75
	
i1l2151:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l2149
u217_20:
	
i1l720:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l721
u218_20:
	line	80
	
i1l2153:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
i1l721:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
i1l2155:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u219_25:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u219_20:
	addlw	-1
	skipz
	goto	u219_25
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
i1l2157:	
	movf	(___ftpack@sign),w
	skipz
	goto	u220_20
	goto	i1l722
u220_20:
	line	84
	
i1l2159:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l722:	
	line	85
	line	86
	
i1l711:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_USART_ReceiveChar

;; *************** function _USART_ReceiveChar *****************
;; Defined at:
;;		line 63 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byte            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_USART_WriteString
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\usart.c"
	line	63
global __ptext36
__ptext36:	;psect for function _USART_ReceiveChar
psect	text36
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\usart.c"
	line	63
	global	__size_of_USART_ReceiveChar
	__size_of_USART_ReceiveChar	equ	__end_of_USART_ReceiveChar-_USART_ReceiveChar
	
_USART_ReceiveChar:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_ReceiveChar: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	67
	
i1l2495:	
;usart.c: 65: unsigned char byte;
;usart.c: 67: if (!OERR)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(193/8),(193)&7	;volatile
	goto	u297_21
	goto	u297_20
u297_21:
	goto	i1l2501
u297_20:
	line	69
	
i1l2497:	
;usart.c: 68: {
;usart.c: 69: byte = RCREG;
	movf	(26),w	;volatile
	movwf	(??_USART_ReceiveChar+0)+0
	movf	(??_USART_ReceiveChar+0)+0,w
	movwf	(USART_ReceiveChar@byte)
	line	70
	
i1l2499:	
;usart.c: 70: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	line	71
;usart.c: 71: }
	goto	i1l2511
	line	72
	
i1l242:	
	line	74
	
i1l2501:	
;usart.c: 72: else
;usart.c: 73: {
;usart.c: 74: USART_WriteString("\n\r ------- ESTOURO DE PILHA ------- \n\r ");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_USART_WriteString
	line	76
	
i1l2503:	
;usart.c: 76: RCSTAbits.CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24),4	;volatile
	line	77
	
i1l2505:	
;usart.c: 77: byte = RCREG;
	movf	(26),w	;volatile
	movwf	(??_USART_ReceiveChar+0)+0
	movf	(??_USART_ReceiveChar+0)+0,w
	movwf	(USART_ReceiveChar@byte)
	line	78
	
i1l2507:	
;usart.c: 78: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	79
	
i1l2509:	
;usart.c: 79: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	goto	i1l2511
	line	80
	
i1l243:	
	line	82
	
i1l2511:	
;usart.c: 80: }
;usart.c: 82: return(byte);
	movf	(USART_ReceiveChar@byte),w
	goto	i1l244
	
i1l2513:	
	line	83
	
i1l244:	
	return
	opt stack 0
GLOBAL	__end_of_USART_ReceiveChar
	__end_of_USART_ReceiveChar:
	signat	_USART_ReceiveChar,89
	global	_USART_WriteString

;; *************** function _USART_WriteString *****************
;; Defined at:
;;		line 52 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\usart.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_1(40), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR const unsigned char 
;;		 -> STR_1(40), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USART_WriteChar
;; This function is called by:
;;		_USART_ReceiveChar
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	line	52
global __ptext37
__ptext37:	;psect for function _USART_WriteString
psect	text37
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\usart.c"
	line	52
	global	__size_of_USART_WriteString
	__size_of_USART_WriteString	equ	__end_of_USART_WriteString-_USART_WriteString
	
_USART_WriteString:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_WriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;USART_WriteString@str stored from wreg
	movwf	(USART_WriteString@str)
	line	54
	
i1l2161:	
;usart.c: 54: while(*str != '\0')
	goto	i1l2167
	
i1l237:	
	line	56
	
i1l2163:	
;usart.c: 55: {
;usart.c: 56: USART_WriteChar(*str);
	movf	(USART_WriteString@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_USART_WriteChar
	line	57
	
i1l2165:	
;usart.c: 57: str++;
	movlw	(01h)
	movwf	(??_USART_WriteString+0)+0
	movf	(??_USART_WriteString+0)+0,w
	addwf	(USART_WriteString@str),f
	goto	i1l2167
	line	58
	
i1l236:	
	line	54
	
i1l2167:	
	movf	(USART_WriteString@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l2163
u221_20:
	goto	i1l239
	
i1l238:	
	line	59
	
i1l239:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteString
	__end_of_USART_WriteString:
	signat	_USART_WriteString,4216
	global	_USART_WriteChar

;; *************** function _USART_WriteChar *****************
;; Defined at:
;;		line 44 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\usart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send
;;		_USART_WriteString
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	line	44
global __ptext38
__ptext38:	;psect for function _USART_WriteChar
psect	text38
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\usart.c"
	line	44
	global	__size_of_USART_WriteChar
	__size_of_USART_WriteChar	equ	__end_of_USART_WriteChar-_USART_WriteChar
	
_USART_WriteChar:	
;incstack = 0
	opt	stack 3
; Regs used in _USART_WriteChar: [wreg]
;USART_WriteChar@byte stored from wreg
	movwf	(USART_WriteChar@byte)
	line	46
	
i1l2127:	
;usart.c: 46: while(!PIR1bits.TXIF);
	goto	i1l230
	
i1l231:	
	
i1l230:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l230
u209_20:
	goto	i1l2129
	
i1l232:	
	line	47
	
i1l2129:	
;usart.c: 47: TXREG = byte;
	movf	(USART_WriteChar@byte),w
	movwf	(25)	;volatile
	line	48
	
i1l233:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteChar
	__end_of_USART_WriteChar:
	signat	_USART_WriteChar,4216
	global	_LCD_WriteData

;; *************** function _LCD_WriteData *****************
;; Defined at:
;;		line 47 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\lcd.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;;		_LCD_WriteString
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\lcd.c"
	line	47
global __ptext39
__ptext39:	;psect for function _LCD_WriteData
psect	text39
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\lcd.c"
	line	47
	global	__size_of_LCD_WriteData
	__size_of_LCD_WriteData	equ	__end_of_LCD_WriteData-_LCD_WriteData
	
_LCD_WriteData:	
;incstack = 0
	opt	stack 4
; Regs used in _LCD_WriteData: [wreg]
;LCD_WriteData@Byte stored from wreg
	movwf	(LCD_WriteData@Byte)
	line	49
	
i1l2529:	
;lcd.c: 49: PORTEbits.RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),0	;volatile
	line	51
	
i1l2531:	
;lcd.c: 51: PORTD = Byte;
	movf	(LCD_WriteData@Byte),w
	movwf	(8)	;volatile
	line	53
	
i1l2533:	
;lcd.c: 53: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	55
;lcd.c: 55: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_WriteData+0)+0,f
u593_27:
decfsz	(??_LCD_WriteData+0)+0,f
	goto	u593_27
opt asmopt_on

	line	57
	
i1l2535:	
;lcd.c: 57: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	58
	
i1l312:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteData
	__end_of_LCD_WriteData:
	signat	_LCD_WriteData,4216
	global	_LCD_Cursor

;; *************** function _LCD_Cursor *****************
;; Defined at:
;;		line 10 in file "C:\Users\332414\Desktop\FuzzySI\firmware - Copia\lcd.c"
;; Parameters:    Size  Location     Type
;;  Row             1    wreg     unsigned char 
;;  Col             1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Row             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	line	10
global __ptext40
__ptext40:	;psect for function _LCD_Cursor
psect	text40
	file	"C:\Users\332414\Desktop\FuzzySI\firmware - Copia\lcd.c"
	line	10
	global	__size_of_LCD_Cursor
	__size_of_LCD_Cursor	equ	__end_of_LCD_Cursor-_LCD_Cursor
	
_LCD_Cursor:	
;incstack = 0
	opt	stack 4
; Regs used in _LCD_Cursor: [wreg+status,2+status,0]
;LCD_Cursor@Row stored from wreg
	movwf	(LCD_Cursor@Row)
	line	12
	
i1l2515:	
;lcd.c: 12: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	14
	
i1l2517:	
;lcd.c: 14: if (Row == 0)
	movf	(LCD_Cursor@Row),f
	skipz
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l2521
u298_20:
	line	16
	
i1l2519:	
;lcd.c: 15: {
;lcd.c: 16: PORTD = 0x80 + Col;
	movf	(LCD_Cursor@Col),w
	addlw	080h
	movwf	(8)	;volatile
	line	17
;lcd.c: 17: }
	goto	i1l2523
	line	18
	
i1l304:	
	line	20
	
i1l2521:	
;lcd.c: 18: else
;lcd.c: 19: {
;lcd.c: 20: PORTD = 0xC0 + Col;
	movf	(LCD_Cursor@Col),w
	addlw	0C0h
	movwf	(8)	;volatile
	goto	i1l2523
	line	21
	
i1l305:	
	line	24
	
i1l2523:	
;lcd.c: 21: }
;lcd.c: 24: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	26
	
i1l2525:	
;lcd.c: 26: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_Cursor+0)+0,f
u594_27:
decfsz	(??_LCD_Cursor+0)+0,f
	goto	u594_27
opt asmopt_on

	line	28
	
i1l2527:	
;lcd.c: 28: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	29
	
i1l306:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Cursor
	__end_of_LCD_Cursor:
	signat	_LCD_Cursor,8312
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
