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
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_LCD_Clear
	FNCALL	_main,_LCD_Cursor
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_LCD_WriteString
	FNCALL	_main,_PWM_DutyCycle1
	FNCALL	_main,_PWM_DutyCycle2
	FNCALL	_main,_PWM_Init
	FNCALL	_main,_TIMER0_Init
	FNCALL	_main,_TIMER0_Set
	FNCALL	_main,_USART_Init
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	_USART_Init,___aldiv
	FNCALL	_LCD_WriteString,_LCD_WriteData
	FNCALL	_LCD_Init,_LCD_WriteCmd
	FNCALL	_LCD_Clear,_LCD_WriteCmd
	FNROOT	_main
	FNCALL	_ISR,___ftdiv
	FNCALL	_ISR,___ftmul
	FNCALL	_ISR,___fttol
	FNCALL	_ISR,___lwtoft
	FNCALL	_ISR,_fuzzy
	FNCALL	_ISR,i1_TIMER0_Set
	FNCALL	_fuzzy,___awtoft
	FNCALL	_fuzzy,___ftge
	FNCALL	_fuzzy,___ftmul
	FNCALL	_fuzzy,___fttol
	FNCALL	_fuzzy,_trapezoidal
	FNCALL	_fuzzy,_triangular
	FNCALL	_fuzzy,i1_PWM_DutyCycle2
	FNCALL	_triangular,___ftadd
	FNCALL	_triangular,___ftdiv
	FNCALL	_triangular,___ftge
	FNCALL	_triangular,___ftneg
	FNCALL	_trapezoidal,___ftadd
	FNCALL	_trapezoidal,___ftdiv
	FNCALL	_trapezoidal,___ftge
	FNCALL	_trapezoidal,___ftneg
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___lwtoft,___ftpack
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_ligado
	global	_setpoint
psect	idataBANK2,class=CODE,space=0,delta=2,noexec
global __pidataBANK2
__pidataBANK2:
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	37

;initializer for _ligado
	retlw	01h
	retlw	0

	line	43

;initializer for _setpoint
	retlw	0ECh
	retlw	0Ch

	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
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
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_erro_atual
	global	_rpm
	global	_temp_lida
	global	_ADCResult
	global	_contador_rb6
	global	_contagens_tm0
	global	_pulsos
	global	_receiveIndex
	global	_status
	global	_tempo_rb6
	global	_display
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
	global __stringdata
__stringdata:
	
STR_4:	
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
	
STR_1:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_3:	
	retlw	82	;'R'
	retlw	80	;'P'
	retlw	77	;'M'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	52	;'4'
	retlw	100	;'d'
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
_erro_atual:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_rpm:
       ds      2

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_temp_lida:
       ds      3

_ADCResult:
       ds      2

_contador_rb6:
       ds      2

_contagens_tm0:
       ds      2

_pulsos:
       ds      2

_receiveIndex:
       ds      2

_status:
       ds      2

_tempo_rb6:
       ds      2

_display:
       ds      10

psect	dataBANK2,class=BANK2,space=1,noexec
global __pdataBANK2
__pdataBANK2:
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	37
_ligado:
       ds      2

psect	dataBANK2
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	43
_setpoint:
       ds      2

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
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK2)
	movwf	fsr
	movlw	low((__pbssBANK2)+01Bh)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK2
	global __pidataBANK2
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	fcall	__pidataBANK2+0		;fetch initializer
	movwf	__pdataBANK2+0&07fh		
	fcall	__pidataBANK2+1		;fetch initializer
	movwf	__pdataBANK2+1&07fh		
	fcall	__pidataBANK2+2		;fetch initializer
	movwf	__pdataBANK2+2&07fh		
	fcall	__pidataBANK2+3		;fetch initializer
	movwf	__pdataBANK2+3&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	_fuzzy$237
_fuzzy$237:	; 3 bytes @ 0x0
	ds	3
	global	_fuzzy$238
_fuzzy$238:	; 3 bytes @ 0x3
	ds	3
	global	_fuzzy$239
_fuzzy$239:	; 3 bytes @ 0x6
	ds	3
	global	_fuzzy$240
_fuzzy$240:	; 3 bytes @ 0x9
	ds	3
	global	_fuzzy$241
_fuzzy$241:	; 3 bytes @ 0xC
	ds	3
	global	_fuzzy$242
_fuzzy$242:	; 3 bytes @ 0xF
	ds	3
	global	_fuzzy$243
_fuzzy$243:	; 3 bytes @ 0x12
	ds	3
	global	_fuzzy$244
_fuzzy$244:	; 3 bytes @ 0x15
	ds	3
	global	_fuzzy$245
_fuzzy$245:	; 3 bytes @ 0x18
	ds	3
	global	_fuzzy$246
_fuzzy$246:	; 3 bytes @ 0x1B
	ds	3
	global	_fuzzy$247
_fuzzy$247:	; 3 bytes @ 0x1E
	ds	3
	global	_fuzzy$248
_fuzzy$248:	; 3 bytes @ 0x21
	ds	3
	global	_fuzzy$249
_fuzzy$249:	; 3 bytes @ 0x24
	ds	3
	global	_fuzzy$250
_fuzzy$250:	; 3 bytes @ 0x27
	ds	3
	global	_fuzzy$251
_fuzzy$251:	; 3 bytes @ 0x2A
	ds	3
	global	_fuzzy$252
_fuzzy$252:	; 3 bytes @ 0x2D
	ds	3
	global	_fuzzy$253
_fuzzy$253:	; 3 bytes @ 0x30
	ds	3
	global	_fuzzy$254
_fuzzy$254:	; 3 bytes @ 0x33
	ds	3
	global	_fuzzy$255
_fuzzy$255:	; 3 bytes @ 0x36
	ds	3
	global	_fuzzy$256
_fuzzy$256:	; 3 bytes @ 0x39
	ds	3
	global	_fuzzy$257
_fuzzy$257:	; 3 bytes @ 0x3C
	ds	3
	global	_fuzzy$258
_fuzzy$258:	; 3 bytes @ 0x3F
	ds	3
	global	_fuzzy$259
_fuzzy$259:	; 3 bytes @ 0x42
	ds	3
	global	_fuzzy$260
_fuzzy$260:	; 3 bytes @ 0x45
	ds	3
	global	_fuzzy$261
_fuzzy$261:	; 3 bytes @ 0x48
	ds	3
	global	_fuzzy$262
_fuzzy$262:	; 3 bytes @ 0x4B
	ds	3
	global	_fuzzy$263
_fuzzy$263:	; 3 bytes @ 0x4E
	ds	3
	global	fuzzy@aceleraM
fuzzy@aceleraM:	; 3 bytes @ 0x51
	ds	3
	global	fuzzy@acelera
fuzzy@acelera:	; 3 bytes @ 0x54
	ds	3
	global	fuzzy@mantem
fuzzy@mantem:	; 3 bytes @ 0x57
	ds	3
	global	fuzzy@freia
fuzzy@freia:	; 3 bytes @ 0x5A
	ds	3
	global	fuzzy@freiaM
fuzzy@freiaM:	; 3 bytes @ 0x5D
	ds	3
psect	cstackBANK2,class=BANK2,space=1,noexec
global __pcstackBANK2
__pcstackBANK2:
??_ISR:	; 0 bytes @ 0x0
	ds	6
?_PWM_DutyCycle2:	; 0 bytes @ 0x6
??_TIMER0_Set:	; 0 bytes @ 0x6
??_TIMER0_Init:	; 0 bytes @ 0x6
??_ADC_Init:	; 0 bytes @ 0x6
??_PWM_Init:	; 0 bytes @ 0x6
?_LCD_Cursor:	; 0 bytes @ 0x6
?_PWM_DutyCycle1:	; 0 bytes @ 0x6
??_isdigit:	; 0 bytes @ 0x6
??_LCD_WriteCmd:	; 0 bytes @ 0x6
??_LCD_WriteData:	; 0 bytes @ 0x6
	global	?___wmul
?___wmul:	; 2 bytes @ 0x6
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x6
	global	TIMER0_Set@contagens
TIMER0_Set@contagens:	; 1 bytes @ 0x6
	global	LCD_Cursor@Col
LCD_Cursor@Col:	; 1 bytes @ 0x6
	global	_isdigit$1463
_isdigit$1463:	; 1 bytes @ 0x6
	global	PWM_DutyCycle1@valor
PWM_DutyCycle1@valor:	; 2 bytes @ 0x6
	global	PWM_DutyCycle2@valor
PWM_DutyCycle2@valor:	; 2 bytes @ 0x6
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x6
	ds	1
??_LCD_Cursor:	; 0 bytes @ 0x7
	global	LCD_WriteCmd@Byte
LCD_WriteCmd@Byte:	; 1 bytes @ 0x7
	global	LCD_WriteData@Byte
LCD_WriteData@Byte:	; 1 bytes @ 0x7
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x7
	ds	1
??_PWM_DutyCycle2:	; 0 bytes @ 0x8
??_LCD_Init:	; 0 bytes @ 0x8
?_LCD_WriteString:	; 0 bytes @ 0x8
??_PWM_DutyCycle1:	; 0 bytes @ 0x8
??_LCD_Clear:	; 0 bytes @ 0x8
	global	LCD_Cursor@Row
LCD_Cursor@Row:	; 1 bytes @ 0x8
	global	LCD_WriteString@Str
LCD_WriteString@Str:	; 2 bytes @ 0x8
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	2
??_LCD_WriteString:	; 0 bytes @ 0xA
??___wmul:	; 0 bytes @ 0xA
??___lwdiv:	; 0 bytes @ 0xA
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0xA
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0xA
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	ds	1
??___aldiv:	; 0 bytes @ 0xE
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xE
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xE
	ds	1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0xF
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x10
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x10
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x11
	ds	1
??___lwmod:	; 0 bytes @ 0x12
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x13
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x14
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x14
	ds	1
?_USART_Init:	; 0 bytes @ 0x15
	global	USART_Init@BaudRate
USART_Init@BaudRate:	; 4 bytes @ 0x15
	ds	2
??_sprintf:	; 0 bytes @ 0x17
	ds	2
??_USART_Init:	; 0 bytes @ 0x19
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x1A
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x1B
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x1C
	ds	4
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x20
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x21
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x23
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x24
	ds	1
??_main:	; 0 bytes @ 0x25
	ds	3
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_fuzzy$211
_fuzzy$211:	; 3 bytes @ 0x0
	ds	3
	global	_fuzzy$212
_fuzzy$212:	; 3 bytes @ 0x3
	ds	3
	global	_fuzzy$213
_fuzzy$213:	; 3 bytes @ 0x6
	ds	3
	global	_fuzzy$214
_fuzzy$214:	; 3 bytes @ 0x9
	ds	3
	global	_fuzzy$215
_fuzzy$215:	; 3 bytes @ 0xC
	ds	3
	global	_fuzzy$216
_fuzzy$216:	; 3 bytes @ 0xF
	ds	3
	global	_fuzzy$217
_fuzzy$217:	; 3 bytes @ 0x12
	ds	3
	global	_fuzzy$218
_fuzzy$218:	; 3 bytes @ 0x15
	ds	3
	global	_fuzzy$219
_fuzzy$219:	; 3 bytes @ 0x18
	ds	3
	global	_fuzzy$220
_fuzzy$220:	; 3 bytes @ 0x1B
	ds	3
	global	_fuzzy$221
_fuzzy$221:	; 3 bytes @ 0x1E
	ds	3
	global	_fuzzy$222
_fuzzy$222:	; 3 bytes @ 0x21
	ds	3
	global	_fuzzy$223
_fuzzy$223:	; 3 bytes @ 0x24
	ds	3
	global	_fuzzy$224
_fuzzy$224:	; 3 bytes @ 0x27
	ds	3
	global	_fuzzy$225
_fuzzy$225:	; 3 bytes @ 0x2A
	ds	3
	global	_fuzzy$226
_fuzzy$226:	; 3 bytes @ 0x2D
	ds	3
	global	_fuzzy$227
_fuzzy$227:	; 3 bytes @ 0x30
	ds	3
	global	_fuzzy$228
_fuzzy$228:	; 3 bytes @ 0x33
	ds	3
	global	_fuzzy$229
_fuzzy$229:	; 3 bytes @ 0x36
	ds	3
	global	_fuzzy$230
_fuzzy$230:	; 3 bytes @ 0x39
	ds	3
	global	_fuzzy$231
_fuzzy$231:	; 3 bytes @ 0x3C
	ds	3
	global	_fuzzy$232
_fuzzy$232:	; 3 bytes @ 0x3F
	ds	3
	global	_fuzzy$233
_fuzzy$233:	; 3 bytes @ 0x42
	ds	3
	global	_fuzzy$234
_fuzzy$234:	; 3 bytes @ 0x45
	ds	3
	global	_fuzzy$235
_fuzzy$235:	; 3 bytes @ 0x48
	ds	3
	global	_fuzzy$236
_fuzzy$236:	; 3 bytes @ 0x4B
	ds	3
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_TIMER0_Set:	; 0 bytes @ 0x0
?_TIMER0_Init:	; 0 bytes @ 0x0
?_ADC_Init:	; 0 bytes @ 0x0
?_PWM_Init:	; 0 bytes @ 0x0
?_LCD_Init:	; 0 bytes @ 0x0
?_LCD_Clear:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_fuzzy:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_LCD_WriteCmd:	; 0 bytes @ 0x0
?_LCD_WriteData:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?i1_TIMER0_Set:	; 0 bytes @ 0x0
??i1_TIMER0_Set:	; 0 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	i1TIMER0_Set@contagens
i1TIMER0_Set@contagens:	; 1 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	ds	3
??___ftneg:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	ds	1
??___ftge:	; 0 bytes @ 0x6
	ds	2
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x8
	ds	3
??___awtoft:	; 0 bytes @ 0xB
??___lwtoft:	; 0 bytes @ 0xB
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xB
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
??_triangular:	; 0 bytes @ 0xE
??_trapezoidal:	; 0 bytes @ 0xE
??_fuzzy:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftadd:	; 0 bytes @ 0x0
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x4
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x5
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x6
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x7
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x7
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xA
	ds	3
??___ftdiv:	; 0 bytes @ 0xD
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x11
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x12
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x15
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x16
	ds	1
	global	?_triangular
?_triangular:	; 3 bytes @ 0x17
	global	?_trapezoidal
?_trapezoidal:	; 3 bytes @ 0x17
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x17
	global	triangular@x
triangular@x:	; 3 bytes @ 0x17
	global	trapezoidal@x
trapezoidal@x:	; 3 bytes @ 0x17
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x17
	ds	3
	global	triangular@a
triangular@a:	; 3 bytes @ 0x1A
	global	trapezoidal@a
trapezoidal@a:	; 3 bytes @ 0x1A
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1A
	ds	3
??___ftmul:	; 0 bytes @ 0x1D
	global	triangular@b
triangular@b:	; 3 bytes @ 0x1D
	global	trapezoidal@b
trapezoidal@b:	; 3 bytes @ 0x1D
	ds	3
	global	triangular@c
triangular@c:	; 3 bytes @ 0x20
	global	trapezoidal@c
trapezoidal@c:	; 3 bytes @ 0x20
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x21
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x22
	ds	1
	global	triangular@ua
triangular@ua:	; 3 bytes @ 0x23
	global	trapezoidal@d
trapezoidal@d:	; 3 bytes @ 0x23
	ds	2
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x25
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x26
	global	trapezoidal@ua
trapezoidal@ua:	; 3 bytes @ 0x26
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x27
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x27
	ds	4
??___fttol:	; 0 bytes @ 0x2B
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x2F
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x30
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x34
	ds	1
?i1_PWM_DutyCycle2:	; 0 bytes @ 0x35
	global	i1PWM_DutyCycle2@valor
i1PWM_DutyCycle2@valor:	; 2 bytes @ 0x35
	ds	2
??i1_PWM_DutyCycle2:	; 0 bytes @ 0x37
	ds	2
	global	fuzzy@maior
fuzzy@maior:	; 3 bytes @ 0x39
	ds	3
	global	_fuzzy$205
_fuzzy$205:	; 3 bytes @ 0x3C
	ds	3
	global	_fuzzy$206
_fuzzy$206:	; 3 bytes @ 0x3F
	ds	3
	global	_fuzzy$207
_fuzzy$207:	; 3 bytes @ 0x42
	ds	3
	global	_fuzzy$208
_fuzzy$208:	; 3 bytes @ 0x45
	ds	3
	global	_fuzzy$209
_fuzzy$209:	; 3 bytes @ 0x48
	ds	3
	global	_fuzzy$210
_fuzzy$210:	; 3 bytes @ 0x4B
	ds	3
;!
;!Data Sizes:
;!    Strings     68
;!    Constant    10
;!    Data        4
;!    BSS         31
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     78      80
;!    BANK1            80     78      80
;!    BANK3            96     96      96
;!    BANK2            96     40      71

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 5
;!		 -> STR_2(CODE[5]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;!		 -> display(BANK2[10]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK2[2]), 
;!
;!    S1267$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    LCD_WriteString@Str	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_3(CODE[6]), STR_1(CODE[17]), display(BANK2[10]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _fuzzy->___awtoft
;!    _triangular->___awtoft
;!    _triangular->___ftadd
;!    _trapezoidal->___awtoft
;!    _trapezoidal->___ftadd
;!    ___ftdiv->___ftadd
;!    ___ftadd->___ftpack
;!    ___awtoft->___ftpack
;!    ___lwtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    _ISR->_fuzzy
;!    _fuzzy->i1_PWM_DutyCycle2
;!    i1_PWM_DutyCycle2->___fttol
;!    _triangular->___ftdiv
;!    _trapezoidal->___ftdiv
;!    ___ftdiv->___ftadd
;!    ___fttol->___ftmul
;!    ___ftmul->___ftdiv
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    _ISR->_fuzzy
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    _ISR->_fuzzy
;!
;!Critical Paths under _main in BANK2
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _USART_Init->___aldiv
;!    _LCD_WriteString->_LCD_WriteData
;!    _LCD_Init->_LCD_WriteCmd
;!    _LCD_Clear->_LCD_WriteCmd
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
;! (0) _main                                                 3     3      0    3226
;!                                             37 BANK2      3     3      0
;!                           _ADC_Init
;!                          _LCD_Clear
;!                         _LCD_Cursor
;!                           _LCD_Init
;!                    _LCD_WriteString
;!                     _PWM_DutyCycle1
;!                     _PWM_DutyCycle2
;!                           _PWM_Init
;!                        _TIMER0_Init
;!                         _TIMER0_Set
;!                         _USART_Init
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             17    14      3    1875
;!                                             20 BANK2     17    14      3
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      68
;!                                              6 BANK2      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     220
;!                                              6 BANK2      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     287
;!                                             14 BANK2      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     290
;!                                              6 BANK2      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _USART_Init                                           8     4      4     514
;!                                             21 BANK2      8     4      4
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     428
;!                                              6 BANK2     15     7      8
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Set                                           1     1      0      22
;!                                              6 BANK2      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle2                                       4     2      2     146
;!                                              6 BANK2      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle1                                       4     2      2     108
;!                                              6 BANK2      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _LCD_WriteString                                      2     0      2     259
;!                                              8 BANK2      2     0      2
;!                      _LCD_WriteData
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteData                                        2     2      0      22
;!                                              6 BANK2      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0      22
;!                                              8 BANK2      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Cursor                                           3     2      1     258
;!                                              6 BANK2      3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Clear                                            2     2      0      22
;!                                              8 BANK2      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteCmd                                         2     2      0      22
;!                                              6 BANK2      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _ISR                                                  6     6      0   63525
;!                                              0 BANK2      6     6      0
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                           ___lwtoft
;!                              _fuzzy
;!                       i1_TIMER0_Set
;! ---------------------------------------------------------------------------------
;! (4) i1_TIMER0_Set                                         1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _fuzzy                                              195   195      0   55274
;!                                             57 BANK0     21    21      0
;!                                              0 BANK1     78    78      0
;!                                              0 BANK3     96    96      0
;!                           ___awtoft
;!                             ___ftge
;!                            ___ftmul
;!                            ___fttol
;!                        _trapezoidal
;!                         _triangular
;!                   i1_PWM_DutyCycle2
;! ---------------------------------------------------------------------------------
;! (5) i1_PWM_DutyCycle2                                     4     2      2      70
;!                                             53 BANK0      4     2      2
;!                            ___ftmul (ARG)
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _triangular                                          15     3     12   17820
;!                                             23 BANK0     15     3     12
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftneg
;! ---------------------------------------------------------------------------------
;! (5) _trapezoidal                                         18     3     15   18933
;!                                             23 BANK0     18     3     15
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftneg
;! ---------------------------------------------------------------------------------
;! (6) ___ftneg                                              3     0      3     557
;!                                              0 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (6) ___ftge                                              12     6      6    9480
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (6) ___ftdiv                                             16    10      6    3007
;!                                              7 BANK0     16    10      6
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftadd                                             13     7      6    4053
;!                                              8 COMMON     6     0      6
;!                                              0 BANK0      7     7      0
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___fttol                                             14    10      4     380
;!                                             39 BANK0     14    10      4
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___ftmul                                             16    10      6    2669
;!                                             23 BANK0     16    10      6
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___awtoft                                             6     3      3    2498
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___lwtoft                                             4     1      3    2173
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (7) ___ftpack                                             8     3      5    2087
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Init
;!   _LCD_Clear
;!     _LCD_WriteCmd
;!   _LCD_Cursor
;!   _LCD_Init
;!     _LCD_WriteCmd
;!   _LCD_WriteString
;!     _LCD_WriteData
;!   _PWM_DutyCycle1
;!   _PWM_DutyCycle2
;!   _PWM_Init
;!   _TIMER0_Init
;!   _TIMER0_Set
;!   _USART_Init
;!     ___aldiv
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!     ___wmul
;!     _isdigit
;!
;! _ISR (ROOT)
;!   ___ftdiv
;!     ___ftadd (ARG)
;!       ___ftneg (ARG)
;!       ___ftpack (ARG)
;!     ___ftneg (ARG)
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___ftmul
;!     ___ftdiv (ARG)
;!       ___ftadd (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___fttol
;!     ___ftdiv (ARG)
;!       ___ftadd (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___lwtoft
;!     ___ftpack
;!   _fuzzy
;!     ___awtoft
;!       ___ftpack
;!     ___ftge
;!     ___ftmul
;!       ___ftdiv (ARG)
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___ftdiv (ARG)
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftadd (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     _trapezoidal
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftge (ARG)
;!       ___ftneg (ARG)
;!     _triangular
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftneg (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftge (ARG)
;!       ___ftneg (ARG)
;!     i1_PWM_DutyCycle2
;!       ___ftmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftadd (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___fttol (ARG)
;!         ___ftdiv (ARG)
;!           ___ftadd (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftneg (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___ftdiv (ARG)
;!             ___ftadd (ARG)
;!               ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftneg (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!   i1_TIMER0_Set
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     60      60       9      100.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60     28      47      11       74.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     4E      50       7      100.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     4E      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0     155      12        0.0%
;!ABS                  0      0     155       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 213 in file "C:\Users\filip\programs\FuzzySI\firmware\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       3
;;      Totals:         0       0       0       0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ADC_Init
;;		_LCD_Clear
;;		_LCD_Cursor
;;		_LCD_Init
;;		_LCD_WriteString
;;		_PWM_DutyCycle1
;;		_PWM_DutyCycle2
;;		_PWM_Init
;;		_TIMER0_Init
;;		_TIMER0_Set
;;		_USART_Init
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	213
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	213
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	215
	
l3487:	
;main.c: 215: TRISA = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	216
;main.c: 216: PORTA = 0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	217
	
l3489:	
;main.c: 217: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	218
	
l3491:	
;main.c: 218: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	219
;main.c: 219: TRISC = 0b10000001;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	220
;main.c: 220: PORTC = 0b11000000;
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	221
	
l3493:	
;main.c: 221: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	222
	
l3495:	
;main.c: 222: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	223
	
l3497:	
;main.c: 223: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	224
	
l3499:	
;main.c: 224: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	227
;main.c: 227: T1CON = 0x03;
	movlw	(03h)
	movwf	(16)	;volatile
	line	228
	
l3501:	
;main.c: 228: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	229
	
l3503:	
;main.c: 229: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	232
	
l3505:	
;main.c: 232: USART_Init(115200);
	movlw	0
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(USART_Init@BaudRate+3)^0100h
	movlw	01h
	movwf	(USART_Init@BaudRate+2)^0100h
	movlw	0C2h
	movwf	(USART_Init@BaudRate+1)^0100h
	movlw	0
	movwf	(USART_Init@BaudRate)^0100h

	fcall	_USART_Init
	line	233
;main.c: 233: TIMER0_Init();
	fcall	_TIMER0_Init
	line	234
;main.c: 234: ADC_Init();
	fcall	_ADC_Init
	line	235
	
l3507:	
;main.c: 235: PWM_Init();
	fcall	_PWM_Init
	line	236
	
l3509:	
;main.c: 236: LCD_Init();
	fcall	_LCD_Init
	line	239
	
l3511:	
;main.c: 239: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	240
	
l3513:	
;main.c: 240: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	247
	
l3515:	
;main.c: 247: LCD_Init();
	fcall	_LCD_Init
	line	248
	
l3517:	
;main.c: 248: LCD_Cursor(0, 0);
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(LCD_Cursor@Col)^0100h
	movlw	(0)
	fcall	_LCD_Cursor
	line	249
	
l3519:	
;main.c: 249: LCD_WriteString("Inicializando...");
	movlw	low((STR_1)-__stringbase)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(LCD_WriteString@Str)^0100h
	movlw	80h
	movwf	(LCD_WriteString@Str+1)^0100h
	fcall	_LCD_WriteString
	line	252
	
l3521:	
;main.c: 252: PWM_DutyCycle1(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(PWM_DutyCycle1@valor)^0100h
	movlw	high(0)
	movwf	((PWM_DutyCycle1@valor)^0100h)+1
	fcall	_PWM_DutyCycle1
	line	253
	
l3523:	
;main.c: 253: PWM_DutyCycle2(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(PWM_DutyCycle2@valor)^0100h
	movlw	high(0)
	movwf	((PWM_DutyCycle2@valor)^0100h)+1
	fcall	_PWM_DutyCycle2
	line	256
	
l3525:	
;main.c: 256: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	_TIMER0_Set
	line	259
	
l3527:	
;main.c: 259: _delay((unsigned long)((1000)*(18432000/4000.0)));
	opt asmopt_off
movlw  24
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	((??_main+0)^0100h+0+2),f
movlw	97
movwf	((??_main+0)^0100h+0+1),f
	movlw	110
movwf	((??_main+0)^0100h+0),f
u4317:
	decfsz	((??_main+0)^0100h+0),f
	goto	u4317
	decfsz	((??_main+0)^0100h+0+1),f
	goto	u4317
	decfsz	((??_main+0)^0100h+0+2),f
	goto	u4317
	nop
opt asmopt_on

	line	262
;main.c: 262: while (1)
	
l361:	
	line	265
;main.c: 263: {
;main.c: 265: sprintf(display, "%04d", rpm);
	movlw	((STR_2)-__stringbase)&0ffh
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movwf	(sprintf@f)^0100h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	1+(?_sprintf)^0100h+01h
	addwf	1+(?_sprintf)^0100h+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rpm)^080h,w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	0+(?_sprintf)^0100h+01h
	addwf	0+(?_sprintf)^0100h+01h

	movlw	(_display)&0ffh
	fcall	_sprintf
	line	272
	
l3529:	
;main.c: 272: LCD_Clear();
	fcall	_LCD_Clear
	line	273
	
l3531:	
;main.c: 273: LCD_Cursor(0, 0);
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(LCD_Cursor@Col)^0100h
	movlw	(0)
	fcall	_LCD_Cursor
	line	274
;main.c: 274: LCD_WriteString("RPM: ");
	movlw	low((STR_3)-__stringbase)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(LCD_WriteString@Str)^0100h
	movlw	80h
	movwf	(LCD_WriteString@Str+1)^0100h
	fcall	_LCD_WriteString
	line	275
	
l3533:	
;main.c: 275: LCD_Cursor(0, 6);
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_main+0)^0100h+0
	movf	(??_main+0)^0100h+0,w
	movwf	(LCD_Cursor@Col)^0100h
	movlw	(0)
	fcall	_LCD_Cursor
	line	276
	
l3535:	
;main.c: 276: LCD_WriteString(display);
	movlw	(_display&0ffh)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(LCD_WriteString@Str)^0100h
	movlw	(0x1)
	movwf	(LCD_WriteString@Str+1)^0100h
	fcall	_LCD_WriteString
	line	278
	
l3537:	
;main.c: 278: _delay((unsigned long)((200)*(18432000/4000.0)));
	opt asmopt_off
movlw  5
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	((??_main+0)^0100h+0+2),f
movlw	173
movwf	((??_main+0)^0100h+0+1),f
	movlw	224
movwf	((??_main+0)^0100h+0),f
u4327:
	decfsz	((??_main+0)^0100h+0),f
	goto	u4327
	decfsz	((??_main+0)^0100h+0+1),f
	goto	u4327
	decfsz	((??_main+0)^0100h+0+2),f
	goto	u4327
opt asmopt_on

	goto	l361
	line	279
	
l362:	
	line	262
	goto	l361
	
l363:	
	line	280
	
l364:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> display(10), 
;;  f               1   20[BANK2 ] PTR const unsigned char 
;;		 -> STR_2(5), 
;; Auto vars:     Size  Location     Type
;;  sp              1   35[BANK2 ] PTR unsigned char 
;;		 -> display(10), 
;;  _val            4   28[BANK2 ] struct .
;;  width           2   33[BANK2 ] int 
;;  c               1   36[BANK2 ] char 
;;  flag            1   32[BANK2 ] unsigned char 
;;  prec            1   27[BANK2 ] char 
;;  ap              1   26[BANK2 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   20[BANK2 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       3
;;      Locals:         0       0       0       0      11
;;      Temps:          0       0       0       0       3
;;      Totals:         0       0       0       0      17
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 1
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(sprintf@sp)^0100h
	line	542
	
l3325:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	movwf	(sprintf@ap)^0100h
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l3429
	
l634:	
	line	547
	
l3327:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c)^0100h,w
	xorlw	025h
	skipnz
	goto	u4061
	goto	u4060
u4061:
	goto	l3333
u4060:
	line	550
	
l3329:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c)^0100h,w
	movwf	(??_sprintf+0)^0100h+0
	movf	(sprintf@sp)^0100h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0100h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3331:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@sp)^0100h,f
	line	551
;doprnt.c: 551: continue;
	goto	l3429
	line	552
	
l635:	
	line	555
	
l3333:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)^0100h
	clrf	(sprintf@width+1)^0100h
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)^0100h
	goto	l3339
	line	559
;doprnt.c: 559: for(;;) {
	
l636:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l3339
	line	588
;doprnt.c: 588: case '0':
	
l638:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(sprintf@flag)^0100h+(2/8),(2)&7
	line	590
	
l3335:	
;doprnt.c: 590: f++;
	movlw	(01h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@f)^0100h,f
	line	591
;doprnt.c: 591: continue;
	goto	l3339
	line	593
	
l3337:	
;doprnt.c: 593: }
	goto	l3341
	line	560
	
l637:	
	
l3339:	
	movf	(sprintf@f)^0100h,w
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l638
	goto	l3341
	opt asmopt_on

	line	593
	
l640:	
	line	594
;doprnt.c: 594: break;
	goto	l3341
	line	595
	
l639:	
;doprnt.c: 595: }
	goto	l3339
	
l641:	
	line	606
	
l3341:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f)^0100h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u4071
	goto	u4070
u4071:
	goto	l3355
u4070:
	line	607
	
l3343:	
;doprnt.c: 607: width = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(sprintf@width)^0100h
	clrf	(sprintf@width+1)^0100h
	goto	l3345
	line	608
;doprnt.c: 608: do {
	
l643:	
	line	609
	
l3345:	
;doprnt.c: 609: width *= 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(___wmul@multiplier)^0100h
	movlw	high(0Ah)
	movwf	((___wmul@multiplier)^0100h)+1
	movf	(sprintf@width+1)^0100h,w
	clrf	(___wmul@multiplicand+1)^0100h
	addwf	(___wmul@multiplicand+1)^0100h
	movf	(sprintf@width)^0100h,w
	clrf	(___wmul@multiplicand)^0100h
	addwf	(___wmul@multiplicand)^0100h

	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(1+(?___wmul))^0100h,w
	clrf	(sprintf@width+1)^0100h
	addwf	(sprintf@width+1)^0100h
	movf	(0+(?___wmul))^0100h,w
	clrf	(sprintf@width)^0100h
	addwf	(sprintf@width)^0100h

	line	610
	
l3347:	
;doprnt.c: 610: width += *f++ - '0';
	movf	(sprintf@f)^0100h,w
	movwf	fsr0
	fcall	stringdir
	addlw	low(-48)
	movwf	(??_sprintf+0)^0100h+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_sprintf+0)^0100h+0)+1
	movf	0+(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@width)^0100h,f
	skipnc
	incf	(sprintf@width+1)^0100h,f
	movf	1+(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@width+1)^0100h,f
	
l3349:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@f)^0100h,f
	line	611
	
l3351:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f)^0100h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u4081
	goto	u4080
u4081:
	goto	l3345
u4080:
	goto	l3355
	
l644:	
	goto	l3355
	line	617
	
l642:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l3355
	line	646
;doprnt.c: 646: case 0:
	
l646:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l3431
	line	706
;doprnt.c: 706: case 'd':
	
l648:	
	goto	l3357
	line	707
	
l649:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l3357
	line	811
;doprnt.c: 811: default:
	
l651:	
	line	822
;doprnt.c: 822: continue;
	goto	l3429
	line	831
	
l3353:	
;doprnt.c: 831: }
	goto	l3357
	line	644
	
l645:	
	
l3355:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	addwf	(sprintf@f)^0100h,f
	movlw	-01h
	addwf	(sprintf@f)^0100h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)^0100h
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3431
	xorlw	100^0	; case 100
	skipnz
	goto	l3357
	xorlw	105^100	; case 105
	skipnz
	goto	l3357
	goto	l3429
	opt asmopt_on

	line	831
	
l650:	
	line	1268
	
l3357:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(sprintf@ap)^0100h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,w
	movwf	(sprintf@_val)^0100h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)^0100h
	
l3359:	
	movlw	(02h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@ap)^0100h,f
	line	1270
	
l3361:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1)^0100h,7
	goto	u4091
	goto	u4090
u4091:
	goto	l3367
u4090:
	line	1271
	
l3363:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	iorwf	(sprintf@flag)^0100h,f
	line	1272
	
l3365:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val)^0100h,f
	comf	(sprintf@_val+1)^0100h,f
	incf	(sprintf@_val)^0100h,f
	skipnz
	incf	(sprintf@_val+1)^0100h,f
	goto	l3367
	line	1273
	
l652:	
	line	1314
	
l3367:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)^0100h
	incf	(sprintf@c)^0100h,f
	movf	(sprintf@c)^0100h,w
	xorlw	05h
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l3371
u4100:
	goto	l3379
	
l3369:	
	goto	l3379
	line	1315
	
l653:	
	
l3371:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c)^0100h,w
	movwf	(??_sprintf+0)^0100h+0
	addwf	(??_sprintf+0)^0100h+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)^0100h+0
	fcall	stringdir
	movwf	(??_sprintf+1)^0100h+0+1
	movf	1+(??_sprintf+1)^0100h+0,w
	subwf	(sprintf@_val+1)^0100h,w
	skipz
	goto	u4115
	movf	0+(??_sprintf+1)^0100h+0,w
	subwf	(sprintf@_val)^0100h,w
u4115:
	skipnc
	goto	u4111
	goto	u4110
u4111:
	goto	l3375
u4110:
	goto	l3379
	line	1316
	
l3373:	
;doprnt.c: 1316: break;
	goto	l3379
	
l655:	
	line	1314
	
l3375:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@c)^0100h,f
	
l3377:	
	movf	(sprintf@c)^0100h,w
	xorlw	05h
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l3371
u4120:
	goto	l3379
	
l654:	
	line	1354
	
l3379:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(sprintf@width+1)^0100h,w
	iorwf	(sprintf@width)^0100h,w
	skipnz
	goto	u4131
	goto	u4130
u4131:
	goto	l656
u4130:
	
l3381:	
	movf	(sprintf@flag)^0100h,w
	andlw	03h
	btfsc	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l656
u4140:
	line	1355
	
l3383:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(sprintf@width)^0100h,f
	skipnc
	incf	(sprintf@width+1)^0100h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^0100h,f
	
l656:	
	line	1390
;doprnt.c: 1390: if(width > c)
	movf	(sprintf@c)^0100h,w
	movwf	(??_sprintf+0)^0100h+0
	clrf	(??_sprintf+0)^0100h+0+1
	btfsc	(??_sprintf+0)^0100h+0,7
	decf	(??_sprintf+0)^0100h+0+1,f
	movf	1+(??_sprintf+0)^0100h+0,w
	xorlw	80h
	movwf	(??_sprintf+2)^0100h+0
	movf	(sprintf@width+1)^0100h,w
	xorlw	80h
	subwf	(??_sprintf+2)^0100h+0,w
	skipz
	goto	u4155
	movf	(sprintf@width)^0100h,w
	subwf	0+(??_sprintf+0)^0100h+0,w
u4155:

	skipnc
	goto	u4151
	goto	u4150
u4151:
	goto	l3387
u4150:
	line	1391
	
l3385:	
;doprnt.c: 1391: width -= c;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(sprintf@c)^0100h,w
	movwf	(??_sprintf+0)^0100h+0
	clrf	(??_sprintf+0)^0100h+0+1
	btfsc	(??_sprintf+0)^0100h+0,7
	decf	(??_sprintf+0)^0100h+0+1,f
	movf	0+(??_sprintf+0)^0100h+0,w
	subwf	(sprintf@width)^0100h,f
	movf	1+(??_sprintf+0)^0100h+0,w
	skipc
	decf	(sprintf@width+1)^0100h,f
	subwf	(sprintf@width+1)^0100h,f
	goto	l3389
	line	1392
	
l657:	
	line	1393
	
l3387:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(sprintf@width)^0100h
	clrf	(sprintf@width+1)^0100h
	goto	l3389
	
l658:	
	line	1396
	
l3389:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag)^0100h,(2)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l3405
u4160:
	line	1401
	
l3391:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag)^0100h,w
	andlw	03h
	btfsc	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l3397
u4170:
	line	1402
	
l3393:	
;doprnt.c: 1402: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)^0100h+0
	movf	(sprintf@sp)^0100h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0100h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3395:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@sp)^0100h,f
	goto	l3397
	
l660:	
	line	1424
	
l3397:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1)^0100h,w
	iorwf	(sprintf@width)^0100h,w
	skipnz
	goto	u4181
	goto	u4180
u4181:
	goto	l3419
u4180:
	goto	l3399
	line	1425
;doprnt.c: 1425: do
	
l662:	
	line	1426
	
l3399:	
;doprnt.c: 1426: ((*sp++ = ('0')));
	movlw	(030h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(sprintf@sp)^0100h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0100h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3401:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@sp)^0100h,f
	line	1427
	
l3403:	
;doprnt.c: 1427: while(--width);
	movlw	low(-1)
	addwf	(sprintf@width)^0100h,f
	skipnc
	incf	(sprintf@width+1)^0100h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^0100h,f
	movf	(((sprintf@width+1)^0100h)),w
	iorwf	(((sprintf@width)^0100h)),w
	skipz
	goto	u4191
	goto	u4190
u4191:
	goto	l3399
u4190:
	goto	l3419
	
l663:	
	goto	l3419
	
l661:	
	line	1429
;doprnt.c: 1429: } else
	goto	l3419
	
l659:	
	line	1437
	
l3405:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1)^0100h,w
	iorwf	(sprintf@width)^0100h,w
	skipnz
	goto	u4201
	goto	u4200
u4201:
	goto	l3413
u4200:
	goto	l3407
	line	1438
;doprnt.c: 1438: do
	
l666:	
	line	1439
	
l3407:	
;doprnt.c: 1439: ((*sp++ = (' ')));
	movlw	(020h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(sprintf@sp)^0100h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0100h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3409:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@sp)^0100h,f
	line	1440
	
l3411:	
;doprnt.c: 1440: while(--width);
	movlw	low(-1)
	addwf	(sprintf@width)^0100h,f
	skipnc
	incf	(sprintf@width+1)^0100h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^0100h,f
	movf	(((sprintf@width+1)^0100h)),w
	iorwf	(((sprintf@width)^0100h)),w
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l3407
u4210:
	goto	l3413
	
l667:	
	goto	l3413
	
l665:	
	line	1447
	
l3413:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag)^0100h,w
	andlw	03h
	btfsc	status,2
	goto	u4221
	goto	u4220
u4221:
	goto	l3419
u4220:
	line	1448
	
l3415:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)^0100h+0
	movf	(sprintf@sp)^0100h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0100h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3417:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@sp)^0100h,f
	goto	l3419
	
l668:	
	goto	l3419
	line	1478
	
l664:	
	line	1481
	
l3419:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c)^0100h,w
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	movwf	(sprintf@prec)^0100h
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l3427
	
l670:	
	line	1498
	
l3421:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)^0100h
	movlw	high(0Ah)
	movwf	((___lwmod@divisor)^0100h)+1
	movf	(sprintf@prec)^0100h,w
	movwf	(??_sprintf+0)^0100h+0
	addwf	(??_sprintf+0)^0100h+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)^0100h
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)^0100h
	movf	(sprintf@_val+1)^0100h,w
	clrf	(___lwdiv@dividend+1)^0100h
	addwf	(___lwdiv@dividend+1)^0100h
	movf	(sprintf@_val)^0100h,w
	clrf	(___lwdiv@dividend)^0100h
	addwf	(___lwdiv@dividend)^0100h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(1+(?___lwdiv))^0100h,w
	clrf	(___lwmod@dividend+1)^0100h
	addwf	(___lwmod@dividend+1)^0100h
	movf	(0+(?___lwdiv))^0100h,w
	clrf	(___lwmod@dividend)^0100h
	addwf	(___lwmod@dividend)^0100h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(0+(?___lwmod))^0100h,w
	addlw	030h
	movwf	(??_sprintf+1)^0100h+0
	movf	(??_sprintf+1)^0100h+0,w
	movwf	(sprintf@c)^0100h
	line	1533
	
l3423:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c)^0100h,w
	movwf	(??_sprintf+0)^0100h+0
	movf	(sprintf@sp)^0100h,w
	movwf	fsr0
	movf	(??_sprintf+0)^0100h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3425:	
	movlw	(01h)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@sp)^0100h,f
	goto	l3427
	line	1534
	
l669:	
	line	1483
	
l3427:	
	movlw	(-1)
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	addwf	(sprintf@prec)^0100h,f
	movf	((sprintf@prec)^0100h),w
	xorlw	-1
	skipz
	goto	u4231
	goto	u4230
u4231:
	goto	l3421
u4230:
	goto	l3429
	
l671:	
	goto	l3429
	line	1542
	
l633:	
	line	545
	
l3429:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	addwf	(sprintf@f)^0100h,f
	movlw	-01h
	addwf	(sprintf@f)^0100h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)^0100h+0
	movf	(??_sprintf+0)^0100h+0,w
	movwf	(sprintf@c)^0100h
	movf	((sprintf@c)^0100h),f
	skipz
	goto	u4241
	goto	u4240
u4241:
	goto	l3327
u4240:
	goto	l3431
	
l672:	
	goto	l3431
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l647:	
	line	1547
	
l3431:	
;doprnt.c: 1547: *sp = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(sprintf@sp)^0100h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	goto	l673
	line	1549
	
l3433:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l673:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    7[BANK2 ] unsigned char 
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
;;      Locals:         0       0       0       0       2
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext2
__ptext2:	;psect for function _isdigit
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 1
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(isdigit@c)^0100h
	line	14
	
l2677:	
	clrf	(_isdigit$1463)^0100h
	
l2679:	
	movlw	(03Ah)
	subwf	(isdigit@c)^0100h,w
	skipnc
	goto	u2871
	goto	u2870
u2871:
	goto	l2685
u2870:
	
l2681:	
	movlw	(030h)
	subwf	(isdigit@c)^0100h,w
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l2685
u2880:
	
l2683:	
	clrf	(_isdigit$1463)^0100h
	incf	(_isdigit$1463)^0100h,f
	goto	l2685
	
l1013:	
	
l2685:	
	rrf	(_isdigit$1463)^0100h,w
	
	goto	l1014
	
l2687:	
	line	15
	
l1014:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    6[BANK2 ] unsigned int 
;;  multiplicand    2    8[BANK2 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   10[BANK2 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    6[BANK2 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       4
;;      Locals:         0       0       0       0       2
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       6
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext3
__ptext3:	;psect for function ___wmul
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 1
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2689:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___wmul@product)^0100h
	clrf	(___wmul@product+1)^0100h
	goto	l2691
	line	44
	
l756:	
	line	45
	
l2691:	
	btfss	(___wmul@multiplier)^0100h,(0)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l757
u2890:
	line	46
	
l2693:	
	movf	(___wmul@multiplicand)^0100h,w
	addwf	(___wmul@product)^0100h,f
	skipnc
	incf	(___wmul@product+1)^0100h,f
	movf	(___wmul@multiplicand+1)^0100h,w
	addwf	(___wmul@product+1)^0100h,f
	
l757:	
	line	47
	movlw	01h
	
u2905:
	clrc
	rlf	(___wmul@multiplicand)^0100h,f
	rlf	(___wmul@multiplicand+1)^0100h,f
	addlw	-1
	skipz
	goto	u2905
	line	48
	
l2695:	
	movlw	01h
	
u2915:
	clrc
	rrf	(___wmul@multiplier+1)^0100h,f
	rrf	(___wmul@multiplier)^0100h,f
	addlw	-1
	skipz
	goto	u2915
	line	49
	movf	((___wmul@multiplier+1)^0100h),w
	iorwf	((___wmul@multiplier)^0100h),w
	skipz
	goto	u2921
	goto	u2920
u2921:
	goto	l2691
u2920:
	goto	l2697
	
l758:	
	line	52
	
l2697:	
	movf	(___wmul@product+1)^0100h,w
	clrf	(?___wmul+1)^0100h
	addwf	(?___wmul+1)^0100h
	movf	(___wmul@product)^0100h,w
	clrf	(?___wmul)^0100h
	addwf	(?___wmul)^0100h

	goto	l759
	
l2699:	
	line	53
	
l759:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   14[BANK2 ] unsigned int 
;;  dividend        2   16[BANK2 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   19[BANK2 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK2 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       4
;;      Locals:         0       0       0       0       1
;;      Temps:          0       0       0       0       1
;;      Totals:         0       0       0       0       6
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwmod
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 1
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2873:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(___lwmod@divisor+1)^0100h,w
	iorwf	(___lwmod@divisor)^0100h,w
	skipnz
	goto	u3351
	goto	u3350
u3351:
	goto	l2891
u3350:
	line	14
	
l2875:	
	clrf	(___lwmod@counter)^0100h
	incf	(___lwmod@counter)^0100h,f
	line	15
	goto	l2881
	
l1103:	
	line	16
	
l2877:	
	movlw	01h
	
u3365:
	clrc
	rlf	(___lwmod@divisor)^0100h,f
	rlf	(___lwmod@divisor+1)^0100h,f
	addlw	-1
	skipz
	goto	u3365
	line	17
	
l2879:	
	movlw	(01h)
	movwf	(??___lwmod+0)^0100h+0
	movf	(??___lwmod+0)^0100h+0,w
	addwf	(___lwmod@counter)^0100h,f
	goto	l2881
	line	18
	
l1102:	
	line	15
	
l2881:	
	btfss	(___lwmod@divisor+1)^0100h,(15)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l2877
u3370:
	goto	l2883
	
l1104:	
	goto	l2883
	line	19
	
l1105:	
	line	20
	
l2883:	
	movf	(___lwmod@divisor+1)^0100h,w
	subwf	(___lwmod@dividend+1)^0100h,w
	skipz
	goto	u3385
	movf	(___lwmod@divisor)^0100h,w
	subwf	(___lwmod@dividend)^0100h,w
u3385:
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l2887
u3380:
	line	21
	
l2885:	
	movf	(___lwmod@divisor)^0100h,w
	subwf	(___lwmod@dividend)^0100h,f
	movf	(___lwmod@divisor+1)^0100h,w
	skipc
	decf	(___lwmod@dividend+1)^0100h,f
	subwf	(___lwmod@dividend+1)^0100h,f
	goto	l2887
	
l1106:	
	line	22
	
l2887:	
	movlw	01h
	
u3395:
	clrc
	rrf	(___lwmod@divisor+1)^0100h,f
	rrf	(___lwmod@divisor)^0100h,f
	addlw	-1
	skipz
	goto	u3395
	line	23
	
l2889:	
	movlw	low(01h)
	subwf	(___lwmod@counter)^0100h,f
	btfss	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l2883
u3400:
	goto	l2891
	
l1107:	
	goto	l2891
	line	24
	
l1101:	
	line	25
	
l2891:	
	movf	(___lwmod@dividend+1)^0100h,w
	clrf	(?___lwmod+1)^0100h
	addwf	(?___lwmod+1)^0100h
	movf	(___lwmod@dividend)^0100h,w
	clrf	(?___lwmod)^0100h
	addwf	(?___lwmod)^0100h

	goto	l1108
	
l2893:	
	line	26
	
l1108:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK2 ] unsigned int 
;;  dividend        2    8[BANK2 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[BANK2 ] unsigned int 
;;  counter         1   13[BANK2 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK2 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       4
;;      Locals:         0       0       0       0       3
;;      Temps:          0       0       0       0       1
;;      Totals:         0       0       0       0       8
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___lwdiv
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2847:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___lwdiv@quotient)^0100h
	clrf	(___lwdiv@quotient+1)^0100h
	line	15
	
l2849:	
	movf	(___lwdiv@divisor+1)^0100h,w
	iorwf	(___lwdiv@divisor)^0100h,w
	skipnz
	goto	u3281
	goto	u3280
u3281:
	goto	l2869
u3280:
	line	16
	
l2851:	
	clrf	(___lwdiv@counter)^0100h
	incf	(___lwdiv@counter)^0100h,f
	line	17
	goto	l2857
	
l1093:	
	line	18
	
l2853:	
	movlw	01h
	
u3295:
	clrc
	rlf	(___lwdiv@divisor)^0100h,f
	rlf	(___lwdiv@divisor+1)^0100h,f
	addlw	-1
	skipz
	goto	u3295
	line	19
	
l2855:	
	movlw	(01h)
	movwf	(??___lwdiv+0)^0100h+0
	movf	(??___lwdiv+0)^0100h+0,w
	addwf	(___lwdiv@counter)^0100h,f
	goto	l2857
	line	20
	
l1092:	
	line	17
	
l2857:	
	btfss	(___lwdiv@divisor+1)^0100h,(15)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l2853
u3300:
	goto	l2859
	
l1094:	
	goto	l2859
	line	21
	
l1095:	
	line	22
	
l2859:	
	movlw	01h
	
u3315:
	clrc
	rlf	(___lwdiv@quotient)^0100h,f
	rlf	(___lwdiv@quotient+1)^0100h,f
	addlw	-1
	skipz
	goto	u3315
	line	23
	movf	(___lwdiv@divisor+1)^0100h,w
	subwf	(___lwdiv@dividend+1)^0100h,w
	skipz
	goto	u3325
	movf	(___lwdiv@divisor)^0100h,w
	subwf	(___lwdiv@dividend)^0100h,w
u3325:
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l2865
u3320:
	line	24
	
l2861:	
	movf	(___lwdiv@divisor)^0100h,w
	subwf	(___lwdiv@dividend)^0100h,f
	movf	(___lwdiv@divisor+1)^0100h,w
	skipc
	decf	(___lwdiv@dividend+1)^0100h,f
	subwf	(___lwdiv@dividend+1)^0100h,f
	line	25
	
l2863:	
	bsf	(___lwdiv@quotient)^0100h+(0/8),(0)&7
	goto	l2865
	line	26
	
l1096:	
	line	27
	
l2865:	
	movlw	01h
	
u3335:
	clrc
	rrf	(___lwdiv@divisor+1)^0100h,f
	rrf	(___lwdiv@divisor)^0100h,f
	addlw	-1
	skipz
	goto	u3335
	line	28
	
l2867:	
	movlw	low(01h)
	subwf	(___lwdiv@counter)^0100h,f
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l2859
u3340:
	goto	l2869
	
l1097:	
	goto	l2869
	line	29
	
l1091:	
	line	30
	
l2869:	
	movf	(___lwdiv@quotient+1)^0100h,w
	clrf	(?___lwdiv+1)^0100h
	addwf	(?___lwdiv+1)^0100h
	movf	(___lwdiv@quotient)^0100h,w
	clrf	(?___lwdiv)^0100h
	addwf	(?___lwdiv)^0100h

	goto	l1098
	
l2871:	
	line	31
	
l1098:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_USART_Init

;; *************** function _USART_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\filip\programs\FuzzySI\firmware\usart.c"
;; Parameters:    Size  Location     Type
;;  BaudRate        4   21[BANK2 ] long 
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
;;      Params:         0       0       0       0       4
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       4
;;      Totals:         0       0       0       0       8
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\usart.c"
	line	6
global __ptext6
__ptext6:	;psect for function _USART_Init
psect	text6
	file	"C:\Users\filip\programs\FuzzySI\firmware\usart.c"
	line	6
	global	__size_of_USART_Init
	__size_of_USART_Init	equ	__end_of_USART_Init-_USART_Init
	
_USART_Init:	
;incstack = 0
	opt	stack 1
; Regs used in _USART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	13
	
l3203:	
;usart.c: 13: SPBRG = (unsigned char)(18432000 / (16 * BaudRate)) - 1;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(USART_Init@BaudRate)^0100h,w
	movwf	(??_USART_Init+0)^0100h+0
	movf	(USART_Init@BaudRate+1)^0100h,w
	movwf	((??_USART_Init+0)^0100h+0+1)
	movf	(USART_Init@BaudRate+2)^0100h,w
	movwf	((??_USART_Init+0)^0100h+0+2)
	movf	(USART_Init@BaudRate+3)^0100h,w
	movwf	((??_USART_Init+0)^0100h+0+3)
	movlw	04h
u4025:
	clrc
	rlf	(??_USART_Init+0)^0100h+0,f
	rlf	(??_USART_Init+0)^0100h+1,f
	rlf	(??_USART_Init+0)^0100h+2,f
	rlf	(??_USART_Init+0)^0100h+3,f
u4020:
	addlw	-1
	skipz
	goto	u4025
	movf	3+(??_USART_Init+0)^0100h+0,w
	movwf	(___aldiv@divisor+3)^0100h
	movf	2+(??_USART_Init+0)^0100h+0,w
	movwf	(___aldiv@divisor+2)^0100h
	movf	1+(??_USART_Init+0)^0100h+0,w
	movwf	(___aldiv@divisor+1)^0100h
	movf	0+(??_USART_Init+0)^0100h+0,w
	movwf	(___aldiv@divisor)^0100h

	movlw	01h
	movwf	(___aldiv@dividend+3)^0100h
	movlw	019h
	movwf	(___aldiv@dividend+2)^0100h
	movlw	040h
	movwf	(___aldiv@dividend+1)^0100h
	movlw	0
	movwf	(___aldiv@dividend)^0100h

	fcall	___aldiv
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	0+(((0+(?___aldiv))^0100h)),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l3205:	
;usart.c: 16: TXSTAbits.CSRC = 0;
	bcf	(152)^080h,7	;volatile
	line	17
	
l3207:	
;usart.c: 17: TXSTAbits.TX9 = 0;
	bcf	(152)^080h,6	;volatile
	line	18
	
l3209:	
;usart.c: 18: TXSTAbits.TXEN = 1;
	bsf	(152)^080h,5	;volatile
	line	19
	
l3211:	
;usart.c: 19: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	21
	
l3213:	
;usart.c: 21: TXSTAbits.BRGH = 1;
	bsf	(152)^080h,2	;volatile
	line	22
	
l3215:	
;usart.c: 22: TXSTAbits.TRMT = 1;
	bsf	(152)^080h,1	;volatile
	line	23
	
l3217:	
;usart.c: 23: TXSTAbits.TX9D = 0;
	bcf	(152)^080h,0	;volatile
	line	26
	
l3219:	
;usart.c: 26: RCSTAbits.SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	27
	
l3221:	
;usart.c: 27: RCSTAbits.RX9 = 0;
	bcf	(24),6	;volatile
	line	28
	
l3223:	
;usart.c: 28: RCSTAbits.SREN = 0;
	bcf	(24),5	;volatile
	line	29
	
l3225:	
;usart.c: 29: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	30
	
l3227:	
;usart.c: 30: RCSTAbits.ADDEN = 0;
	bcf	(24),3	;volatile
	line	31
	
l3229:	
;usart.c: 31: RCSTAbits.FERR = 0;
	bcf	(24),2	;volatile
	line	32
	
l3231:	
;usart.c: 32: RCSTAbits.OERR = 0;
	bcf	(24),1	;volatile
	line	33
	
l3233:	
;usart.c: 33: RCSTAbits.RX9D = 0;
	bcf	(24),0	;volatile
	line	36
	
l3235:	
;usart.c: 36: PIE1bits.TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,4	;volatile
	line	37
	
l3237:	
;usart.c: 37: PIR1bits.TXIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),4	;volatile
	line	38
	
l3239:	
;usart.c: 38: PIE1bits.RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,5	;volatile
	line	39
	
l3241:	
;usart.c: 39: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	line	40
	
l383:	
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
;;  divisor         4    6[BANK2 ] long 
;;  dividend        4   10[BANK2 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   17[BANK2 ] long 
;;  sign            1   16[BANK2 ] unsigned char 
;;  counter         1   15[BANK2 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    6[BANK2 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       8
;;      Locals:         0       0       0       0       6
;;      Temps:          0       0       0       0       1
;;      Totals:         0       0       0       0      15
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_Init
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___aldiv
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	14
	
l2701:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(___aldiv@sign)^0100h
	line	15
	
l2703:	
	btfss	(___aldiv@divisor+3)^0100h,7
	goto	u2931
	goto	u2930
u2931:
	goto	l812
u2930:
	line	16
	
l2705:	
	comf	(___aldiv@divisor)^0100h,f
	comf	(___aldiv@divisor+1)^0100h,f
	comf	(___aldiv@divisor+2)^0100h,f
	comf	(___aldiv@divisor+3)^0100h,f
	incf	(___aldiv@divisor)^0100h,f
	skipnz
	incf	(___aldiv@divisor+1)^0100h,f
	skipnz
	incf	(___aldiv@divisor+2)^0100h,f
	skipnz
	incf	(___aldiv@divisor+3)^0100h,f
	line	17
	clrf	(___aldiv@sign)^0100h
	incf	(___aldiv@sign)^0100h,f
	line	18
	
l812:	
	line	19
	btfss	(___aldiv@dividend+3)^0100h,7
	goto	u2941
	goto	u2940
u2941:
	goto	l2711
u2940:
	line	20
	
l2707:	
	comf	(___aldiv@dividend)^0100h,f
	comf	(___aldiv@dividend+1)^0100h,f
	comf	(___aldiv@dividend+2)^0100h,f
	comf	(___aldiv@dividend+3)^0100h,f
	incf	(___aldiv@dividend)^0100h,f
	skipnz
	incf	(___aldiv@dividend+1)^0100h,f
	skipnz
	incf	(___aldiv@dividend+2)^0100h,f
	skipnz
	incf	(___aldiv@dividend+3)^0100h,f
	line	21
	
l2709:	
	movlw	(01h)
	movwf	(??___aldiv+0)^0100h+0
	movf	(??___aldiv+0)^0100h+0,w
	xorwf	(___aldiv@sign)^0100h,f
	goto	l2711
	line	22
	
l813:	
	line	23
	
l2711:	
	movlw	0
	movwf	(___aldiv@quotient+3)^0100h
	movlw	0
	movwf	(___aldiv@quotient+2)^0100h
	movlw	0
	movwf	(___aldiv@quotient+1)^0100h
	movlw	0
	movwf	(___aldiv@quotient)^0100h

	line	24
	
l2713:	
	movf	(___aldiv@divisor+3)^0100h,w
	iorwf	(___aldiv@divisor+2)^0100h,w
	iorwf	(___aldiv@divisor+1)^0100h,w
	iorwf	(___aldiv@divisor)^0100h,w
	skipnz
	goto	u2951
	goto	u2950
u2951:
	goto	l2733
u2950:
	line	25
	
l2715:	
	clrf	(___aldiv@counter)^0100h
	incf	(___aldiv@counter)^0100h,f
	line	26
	goto	l2719
	
l816:	
	line	27
	
l2717:	
	movlw	01h
	movwf	(??___aldiv+0)^0100h+0
u2965:
	clrc
	rlf	(___aldiv@divisor)^0100h,f
	rlf	(___aldiv@divisor+1)^0100h,f
	rlf	(___aldiv@divisor+2)^0100h,f
	rlf	(___aldiv@divisor+3)^0100h,f
	decfsz	(??___aldiv+0)^0100h+0
	goto	u2965
	line	28
	movlw	(01h)
	movwf	(??___aldiv+0)^0100h+0
	movf	(??___aldiv+0)^0100h+0,w
	addwf	(___aldiv@counter)^0100h,f
	goto	l2719
	line	29
	
l815:	
	line	26
	
l2719:	
	btfss	(___aldiv@divisor+3)^0100h,(31)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l2717
u2970:
	goto	l2721
	
l817:	
	goto	l2721
	line	30
	
l818:	
	line	31
	
l2721:	
	movlw	01h
	movwf	(??___aldiv+0)^0100h+0
u2985:
	clrc
	rlf	(___aldiv@quotient)^0100h,f
	rlf	(___aldiv@quotient+1)^0100h,f
	rlf	(___aldiv@quotient+2)^0100h,f
	rlf	(___aldiv@quotient+3)^0100h,f
	decfsz	(??___aldiv+0)^0100h+0
	goto	u2985
	line	32
	
l2723:	
	movf	(___aldiv@divisor+3)^0100h,w
	subwf	(___aldiv@dividend+3)^0100h,w
	skipz
	goto	u2995
	movf	(___aldiv@divisor+2)^0100h,w
	subwf	(___aldiv@dividend+2)^0100h,w
	skipz
	goto	u2995
	movf	(___aldiv@divisor+1)^0100h,w
	subwf	(___aldiv@dividend+1)^0100h,w
	skipz
	goto	u2995
	movf	(___aldiv@divisor)^0100h,w
	subwf	(___aldiv@dividend)^0100h,w
u2995:
	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l2729
u2990:
	line	33
	
l2725:	
	movf	(___aldiv@divisor)^0100h,w
	subwf	(___aldiv@dividend)^0100h,f
	movf	(___aldiv@divisor+1)^0100h,w
	skipc
	incfsz	(___aldiv@divisor+1)^0100h,w
	subwf	(___aldiv@dividend+1)^0100h,f
	movf	(___aldiv@divisor+2)^0100h,w
	skipc
	incfsz	(___aldiv@divisor+2)^0100h,w
	subwf	(___aldiv@dividend+2)^0100h,f
	movf	(___aldiv@divisor+3)^0100h,w
	skipc
	incfsz	(___aldiv@divisor+3)^0100h,w
	subwf	(___aldiv@dividend+3)^0100h,f
	line	34
	
l2727:	
	bsf	(___aldiv@quotient)^0100h+(0/8),(0)&7
	goto	l2729
	line	35
	
l819:	
	line	36
	
l2729:	
	movlw	01h
u3005:
	clrc
	rrf	(___aldiv@divisor+3)^0100h,f
	rrf	(___aldiv@divisor+2)^0100h,f
	rrf	(___aldiv@divisor+1)^0100h,f
	rrf	(___aldiv@divisor)^0100h,f
	addlw	-1
	skipz
	goto	u3005

	line	37
	
l2731:	
	movlw	low(01h)
	subwf	(___aldiv@counter)^0100h,f
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l2721
u3010:
	goto	l2733
	
l820:	
	goto	l2733
	line	38
	
l814:	
	line	39
	
l2733:	
	movf	(___aldiv@sign)^0100h,w
	skipz
	goto	u3020
	goto	l2737
u3020:
	line	40
	
l2735:	
	comf	(___aldiv@quotient)^0100h,f
	comf	(___aldiv@quotient+1)^0100h,f
	comf	(___aldiv@quotient+2)^0100h,f
	comf	(___aldiv@quotient+3)^0100h,f
	incf	(___aldiv@quotient)^0100h,f
	skipnz
	incf	(___aldiv@quotient+1)^0100h,f
	skipnz
	incf	(___aldiv@quotient+2)^0100h,f
	skipnz
	incf	(___aldiv@quotient+3)^0100h,f
	goto	l2737
	
l821:	
	line	41
	
l2737:	
	movf	(___aldiv@quotient+3)^0100h,w
	movwf	(?___aldiv+3)^0100h
	movf	(___aldiv@quotient+2)^0100h,w
	movwf	(?___aldiv+2)^0100h
	movf	(___aldiv@quotient+1)^0100h,w
	movwf	(?___aldiv+1)^0100h
	movf	(___aldiv@quotient)^0100h,w
	movwf	(?___aldiv)^0100h

	goto	l822
	
l2739:	
	line	42
	
l822:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_TIMER0_Set

;; *************** function _TIMER0_Set *****************
;; Defined at:
;;		line 20 in file "C:\Users\filip\programs\FuzzySI\firmware\timers.c"
;; Parameters:    Size  Location     Type
;;  contagens       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  contagens       1    6[BANK2 ] unsigned char 
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
;;      Locals:         0       0       0       0       1
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       1
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\timers.c"
	line	20
global __ptext8
__ptext8:	;psect for function _TIMER0_Set
psect	text8
	file	"C:\Users\filip\programs\FuzzySI\firmware\timers.c"
	line	20
	global	__size_of_TIMER0_Set
	__size_of_TIMER0_Set	equ	__end_of_TIMER0_Set-_TIMER0_Set
	
_TIMER0_Set:	
;incstack = 0
	opt	stack 2
; Regs used in _TIMER0_Set: [wreg]
;TIMER0_Set@contagens stored from wreg
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(TIMER0_Set@contagens)^0100h
	line	22
	
l3201:	
;timers.c: 22: TMR0 = contagens;
	movf	(TIMER0_Set@contagens)^0100h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
l443:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_Set
	__end_of_TIMER0_Set:
	signat	_TIMER0_Set,4216
	global	_TIMER0_Init

;; *************** function _TIMER0_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\filip\programs\FuzzySI\firmware\timers.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	6
global __ptext9
__ptext9:	;psect for function _TIMER0_Init
psect	text9
	file	"C:\Users\filip\programs\FuzzySI\firmware\timers.c"
	line	6
	global	__size_of_TIMER0_Init
	__size_of_TIMER0_Init	equ	__end_of_TIMER0_Init-_TIMER0_Init
	
_TIMER0_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _TIMER0_Init: []
	line	8
	
l3243:	
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
	
l440:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_Init
	__end_of_TIMER0_Init:
	signat	_TIMER0_Init,88
	global	_PWM_Init

;; *************** function _PWM_Init *****************
;; Defined at:
;;		line 5 in file "C:\Users\filip\programs\FuzzySI\firmware\pwm.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\pwm.c"
	line	5
global __ptext10
__ptext10:	;psect for function _PWM_Init
psect	text10
	file	"C:\Users\filip\programs\FuzzySI\firmware\pwm.c"
	line	5
	global	__size_of_PWM_Init
	__size_of_PWM_Init	equ	__end_of_PWM_Init-_PWM_Init
	
_PWM_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_Init: [wreg]
	line	14
	
l3247:	
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
	
l3249:	
;pwm.c: 27: PR2 = 255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	43
	
l3251:	
;pwm.c: 43: CCP1CONbits.CCP1M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(23),3	;volatile
	line	44
	
l3253:	
;pwm.c: 44: CCP1CONbits.CCP1M2 = 1;
	bsf	(23),2	;volatile
	line	45
	
l3255:	
;pwm.c: 45: CCP1CONbits.CCP1M1 = 1;
	bsf	(23),1	;volatile
	line	46
	
l3257:	
;pwm.c: 46: CCP1CONbits.CCP1M0 = 1;
	bsf	(23),0	;volatile
	line	49
	
l3259:	
;pwm.c: 49: PIE1bits.CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,2	;volatile
	line	50
	
l3261:	
;pwm.c: 50: PIR1bits.CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),2	;volatile
	line	53
	
l3263:	
;pwm.c: 53: CCP2CONbits.CCP2M3 = 1;
	bsf	(29),3	;volatile
	line	54
	
l3265:	
;pwm.c: 54: CCP2CONbits.CCP2M2 = 1;
	bsf	(29),2	;volatile
	line	55
	
l3267:	
;pwm.c: 55: CCP2CONbits.CCP2M1 = 1;
	bsf	(29),1	;volatile
	line	56
	
l3269:	
;pwm.c: 56: CCP2CONbits.CCP2M0 = 1;
	bsf	(29),0	;volatile
	line	59
	
l3271:	
;pwm.c: 59: PIE2bits.CCP2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(141)^080h,0	;volatile
	line	60
	
l3273:	
;pwm.c: 60: PIR2bits.CCP2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(13),0	;volatile
	line	61
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_Init
	__end_of_PWM_Init:
	signat	_PWM_Init,88
	global	_PWM_DutyCycle2

;; *************** function _PWM_DutyCycle2 *****************
;; Defined at:
;;		line 96 in file "C:\Users\filip\programs\FuzzySI\firmware\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2    6[BANK2 ] int 
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
;;      Params:         0       0       0       0       2
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       2
;;      Totals:         0       0       0       0       4
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	96
global __ptext11
__ptext11:	;psect for function _PWM_DutyCycle2
psect	text11
	file	"C:\Users\filip\programs\FuzzySI\firmware\pwm.c"
	line	96
	global	__size_of_PWM_DutyCycle2
	__size_of_PWM_DutyCycle2	equ	__end_of_PWM_DutyCycle2-_PWM_DutyCycle2
	
_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
l3197:	
;pwm.c: 98: CCPR2L = valor >> 2;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(PWM_DutyCycle2@valor+1)^0100h,w
	movwf	(??_PWM_DutyCycle2+0)^0100h+0+1
	movf	(PWM_DutyCycle2@valor)^0100h,w
	movwf	(??_PWM_DutyCycle2+0)^0100h+0
	rlf	(??_PWM_DutyCycle2+0)^0100h+1,w
	rrf	(??_PWM_DutyCycle2+0)^0100h+1,f
	rrf	(??_PWM_DutyCycle2+0)^0100h+0,f
	rlf	(??_PWM_DutyCycle2+0)^0100h+1,w
	rrf	(??_PWM_DutyCycle2+0)^0100h+1,f
	rrf	(??_PWM_DutyCycle2+0)^0100h+0,f
	movf	0+(??_PWM_DutyCycle2+0)^0100h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	99
	
l3199:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(PWM_DutyCycle2@valor)^0100h,w
	movwf	(??_PWM_DutyCycle2+0)^0100h+0
	movlw	(04h)-1
u4015:
	clrc
	rlf	(??_PWM_DutyCycle2+0)^0100h+0,f
	addlw	-1
	skipz
	goto	u4015
	clrc
	rlf	(??_PWM_DutyCycle2+0)^0100h+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(29)	;volatile
	line	100
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_DutyCycle2
	__end_of_PWM_DutyCycle2:
	signat	_PWM_DutyCycle2,4216
	global	_PWM_DutyCycle1

;; *************** function _PWM_DutyCycle1 *****************
;; Defined at:
;;		line 64 in file "C:\Users\filip\programs\FuzzySI\firmware\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2    6[BANK2 ] int 
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
;;      Params:         0       0       0       0       2
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       2
;;      Totals:         0       0       0       0       4
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	64
global __ptext12
__ptext12:	;psect for function _PWM_DutyCycle1
psect	text12
	file	"C:\Users\filip\programs\FuzzySI\firmware\pwm.c"
	line	64
	global	__size_of_PWM_DutyCycle1
	__size_of_PWM_DutyCycle1	equ	__end_of_PWM_DutyCycle1-_PWM_DutyCycle1
	
_PWM_DutyCycle1:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_DutyCycle1: [wreg+status,2+status,0]
	line	91
	
l3321:	
;pwm.c: 91: CCPR1L = valor >> 2;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(PWM_DutyCycle1@valor+1)^0100h,w
	movwf	(??_PWM_DutyCycle1+0)^0100h+0+1
	movf	(PWM_DutyCycle1@valor)^0100h,w
	movwf	(??_PWM_DutyCycle1+0)^0100h+0
	rlf	(??_PWM_DutyCycle1+0)^0100h+1,w
	rrf	(??_PWM_DutyCycle1+0)^0100h+1,f
	rrf	(??_PWM_DutyCycle1+0)^0100h+0,f
	rlf	(??_PWM_DutyCycle1+0)^0100h+1,w
	rrf	(??_PWM_DutyCycle1+0)^0100h+1,f
	rrf	(??_PWM_DutyCycle1+0)^0100h+0,f
	movf	0+(??_PWM_DutyCycle1+0)^0100h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	92
	
l3323:	
;pwm.c: 92: CCP1CON = (valor << 4)|0X0C;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(PWM_DutyCycle1@valor)^0100h,w
	movwf	(??_PWM_DutyCycle1+0)^0100h+0
	movlw	(04h)-1
u4055:
	clrc
	rlf	(??_PWM_DutyCycle1+0)^0100h+0,f
	addlw	-1
	skipz
	goto	u4055
	clrc
	rlf	(??_PWM_DutyCycle1+0)^0100h+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	94
	
l594:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_DutyCycle1
	__end_of_PWM_DutyCycle1:
	signat	_PWM_DutyCycle1,4216
	global	_LCD_WriteString

;; *************** function _LCD_WriteString *****************
;; Defined at:
;;		line 61 in file "C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
;; Parameters:    Size  Location     Type
;;  Str             2    8[BANK2 ] PTR const unsigned char 
;;		 -> STR_3(6), STR_1(17), display(10), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       2
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
	line	61
global __ptext13
__ptext13:	;psect for function _LCD_WriteString
psect	text13
	file	"C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
	line	61
	global	__size_of_LCD_WriteString
	__size_of_LCD_WriteString	equ	__end_of_LCD_WriteString-_LCD_WriteString
	
_LCD_WriteString:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l3313:	
;lcd.c: 63: while(*Str != '\0')
	goto	l3319
	
l472:	
	line	65
	
l3315:	
;lcd.c: 64: {
;lcd.c: 65: LCD_WriteData(*Str);
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(LCD_WriteString@Str+1)^0100h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(LCD_WriteString@Str)^0100h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	fcall	_LCD_WriteData
	line	66
	
l3317:	
;lcd.c: 66: Str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	addwf	(LCD_WriteString@Str)^0100h,f
	skipnc
	incf	(LCD_WriteString@Str+1)^0100h,f
	goto	l3319
	line	67
	
l471:	
	line	63
	
l3319:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(LCD_WriteString@Str+1)^0100h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(LCD_WriteString@Str)^0100h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l3315
u4040:
	goto	l474
	
l473:	
	line	68
	
l474:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteString
	__end_of_LCD_WriteString:
	signat	_LCD_WriteString,4216
	global	_LCD_WriteData

;; *************** function _LCD_WriteData *****************
;; Defined at:
;;		line 47 in file "C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    7[BANK2 ] unsigned char 
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
;;      Locals:         0       0       0       0       1
;;      Temps:          0       0       0       0       1
;;      Totals:         0       0       0       0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_WriteString
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	47
global __ptext14
__ptext14:	;psect for function _LCD_WriteData
psect	text14
	file	"C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
	line	47
	global	__size_of_LCD_WriteData
	__size_of_LCD_WriteData	equ	__end_of_LCD_WriteData-_LCD_WriteData
	
_LCD_WriteData:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteData: [wreg]
;LCD_WriteData@Byte stored from wreg
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(LCD_WriteData@Byte)^0100h
	line	49
	
l2669:	
;lcd.c: 49: PORTEbits.RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),0	;volatile
	line	51
	
l2671:	
;lcd.c: 51: PORTD = Byte;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(LCD_WriteData@Byte)^0100h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	53
	
l2673:	
;lcd.c: 53: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	55
;lcd.c: 55: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	(??_LCD_WriteData+0)^0100h+0,f
u4337:
decfsz	(??_LCD_WriteData+0)^0100h+0,f
	goto	u4337
opt asmopt_on

	line	57
	
l2675:	
;lcd.c: 57: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	58
	
l468:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteData
	__end_of_LCD_WriteData:
	signat	_LCD_WriteData,4216
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 87 in file "C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
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
;;      Temps:          0       0       0       0       2
;;      Totals:         0       0       0       0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	87
global __ptext15
__ptext15:	;psect for function _LCD_Init
psect	text15
	file	"C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
	line	87
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l3275:	
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
	
l3277:	
;lcd.c: 95: _delay((unsigned long)((15)*(18432000/4000.0)));
	opt asmopt_off
movlw	90
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	((??_LCD_Init+0)^0100h+0+1),f
	movlw	195
movwf	((??_LCD_Init+0)^0100h+0),f
u4347:
	decfsz	((??_LCD_Init+0)^0100h+0),f
	goto	u4347
	decfsz	((??_LCD_Init+0)^0100h+0+1),f
	goto	u4347
opt asmopt_on

	line	97
	
l3279:	
;lcd.c: 97: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	98
	
l3281:	
;lcd.c: 98: _delay((unsigned long)((4)*(18432000/4000.0)));
	opt asmopt_off
movlw	24
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	((??_LCD_Init+0)^0100h+0+1),f
	movlw	239
movwf	((??_LCD_Init+0)^0100h+0),f
u4357:
	decfsz	((??_LCD_Init+0)^0100h+0),f
	goto	u4357
	decfsz	((??_LCD_Init+0)^0100h+0+1),f
	goto	u4357
opt asmopt_on

	line	100
;lcd.c: 100: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	101
	
l3283:	
;lcd.c: 101: _delay((unsigned long)((100)*(18432000/4000000.0)));
	opt asmopt_off
movlw	153
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	(??_LCD_Init+0)^0100h+0,f
u4367:
decfsz	(??_LCD_Init+0)^0100h+0,f
	goto	u4367
opt asmopt_on

	line	103
	
l3285:	
;lcd.c: 103: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	104
;lcd.c: 104: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	(??_LCD_Init+0)^0100h+0,f
u4377:
decfsz	(??_LCD_Init+0)^0100h+0,f
	goto	u4377
opt asmopt_on

	line	106
	
l3287:	
;lcd.c: 106: LCD_WriteCmd(0x38);
	movlw	(038h)
	fcall	_LCD_WriteCmd
	line	107
	
l3289:	
;lcd.c: 107: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	(??_LCD_Init+0)^0100h+0,f
u4387:
decfsz	(??_LCD_Init+0)^0100h+0,f
	goto	u4387
opt asmopt_on

	line	109
;lcd.c: 109: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	110
	
l3291:	
;lcd.c: 110: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	((??_LCD_Init+0)^0100h+0+1),f
	movlw	247
movwf	((??_LCD_Init+0)^0100h+0),f
u4397:
	decfsz	((??_LCD_Init+0)^0100h+0),f
	goto	u4397
	decfsz	((??_LCD_Init+0)^0100h+0+1),f
	goto	u4397
opt asmopt_on

	line	112
	
l3293:	
;lcd.c: 112: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	113
;lcd.c: 113: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	(??_LCD_Init+0)^0100h+0,f
u4407:
decfsz	(??_LCD_Init+0)^0100h+0,f
	goto	u4407
opt asmopt_on

	line	115
	
l3295:	
;lcd.c: 115: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	116
	
l3297:	
;lcd.c: 116: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	(??_LCD_Init+0)^0100h+0,f
u4417:
decfsz	(??_LCD_Init+0)^0100h+0,f
	goto	u4417
opt asmopt_on

	line	117
	
l480:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,88
	global	_LCD_Cursor

;; *************** function _LCD_Cursor *****************
;; Defined at:
;;		line 10 in file "C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
;; Parameters:    Size  Location     Type
;;  Row             1    wreg     unsigned char 
;;  Col             1    6[BANK2 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Row             1    8[BANK2 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       1
;;      Locals:         0       0       0       0       1
;;      Temps:          0       0       0       0       1
;;      Totals:         0       0       0       0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	10
global __ptext16
__ptext16:	;psect for function _LCD_Cursor
psect	text16
	file	"C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
	line	10
	global	__size_of_LCD_Cursor
	__size_of_LCD_Cursor	equ	__end_of_LCD_Cursor-_LCD_Cursor
	
_LCD_Cursor:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_Cursor: [wreg+status,2+status,0]
;LCD_Cursor@Row stored from wreg
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(LCD_Cursor@Row)^0100h
	line	12
	
l3299:	
;lcd.c: 12: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	14
	
l3301:	
;lcd.c: 14: if (Row == 0)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(LCD_Cursor@Row)^0100h,f
	skipz
	goto	u4031
	goto	u4030
u4031:
	goto	l3305
u4030:
	line	16
	
l3303:	
;lcd.c: 15: {
;lcd.c: 16: PORTD = 0x80 + Col;
	movf	(LCD_Cursor@Col)^0100h,w
	addlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	17
;lcd.c: 17: }
	goto	l3307
	line	18
	
l460:	
	line	20
	
l3305:	
;lcd.c: 18: else
;lcd.c: 19: {
;lcd.c: 20: PORTD = 0xC0 + Col;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(LCD_Cursor@Col)^0100h,w
	addlw	0C0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	goto	l3307
	line	21
	
l461:	
	line	24
	
l3307:	
;lcd.c: 21: }
;lcd.c: 24: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	26
	
l3309:	
;lcd.c: 26: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	(??_LCD_Cursor+0)^0100h+0,f
u4427:
decfsz	(??_LCD_Cursor+0)^0100h+0,f
	goto	u4427
opt asmopt_on

	line	28
	
l3311:	
;lcd.c: 28: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	29
	
l462:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Cursor
	__end_of_LCD_Cursor:
	signat	_LCD_Cursor,8312
	global	_LCD_Clear

;; *************** function _LCD_Clear *****************
;; Defined at:
;;		line 71 in file "C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
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
;;      Temps:          0       0       0       0       2
;;      Totals:         0       0       0       0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	71
global __ptext17
__ptext17:	;psect for function _LCD_Clear
psect	text17
	file	"C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
	line	71
	global	__size_of_LCD_Clear
	__size_of_LCD_Clear	equ	__end_of_LCD_Clear-_LCD_Clear
	
_LCD_Clear:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	73
	
l3435:	
;lcd.c: 73: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	75
	
l3437:	
;lcd.c: 75: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	((??_LCD_Clear+0)^0100h+0+1),f
	movlw	247
movwf	((??_LCD_Clear+0)^0100h+0),f
u4437:
	decfsz	((??_LCD_Clear+0)^0100h+0),f
	goto	u4437
	decfsz	((??_LCD_Clear+0)^0100h+0+1),f
	goto	u4437
opt asmopt_on

	line	77
	
l3439:	
;lcd.c: 77: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	79
;lcd.c: 79: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	(??_LCD_Clear+0)^0100h+0,f
u4447:
decfsz	(??_LCD_Clear+0)^0100h+0,f
	goto	u4447
opt asmopt_on

	line	81
	
l3441:	
;lcd.c: 81: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	83
	
l3443:	
;lcd.c: 83: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	(??_LCD_Clear+0)^0100h+0,f
u4457:
decfsz	(??_LCD_Clear+0)^0100h+0,f
	goto	u4457
opt asmopt_on

	line	84
	
l477:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Clear
	__end_of_LCD_Clear:
	signat	_LCD_Clear,88
	global	_LCD_WriteCmd

;; *************** function _LCD_WriteCmd *****************
;; Defined at:
;;		line 32 in file "C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    7[BANK2 ] unsigned char 
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
;;      Locals:         0       0       0       0       1
;;      Temps:          0       0       0       0       1
;;      Totals:         0       0       0       0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Clear
;;		_LCD_Init
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	32
global __ptext18
__ptext18:	;psect for function _LCD_WriteCmd
psect	text18
	file	"C:\Users\filip\programs\FuzzySI\firmware\lcd.c"
	line	32
	global	__size_of_LCD_WriteCmd
	__size_of_LCD_WriteCmd	equ	__end_of_LCD_WriteCmd-_LCD_WriteCmd
	
_LCD_WriteCmd:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteCmd: [wreg]
;LCD_WriteCmd@Byte stored from wreg
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(LCD_WriteCmd@Byte)^0100h
	line	34
	
l2661:	
;lcd.c: 34: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	36
	
l2663:	
;lcd.c: 36: PORTD = Byte;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(LCD_WriteCmd@Byte)^0100h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	39
	
l2665:	
;lcd.c: 39: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	41
;lcd.c: 41: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
movwf	(??_LCD_WriteCmd+0)^0100h+0,f
u4467:
decfsz	(??_LCD_WriteCmd+0)^0100h+0,f
	goto	u4467
opt asmopt_on

	line	43
	
l2667:	
;lcd.c: 43: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	44
	
l465:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteCmd
	__end_of_LCD_WriteCmd:
	signat	_LCD_WriteCmd,4216
	global	_ADC_Init

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\filip\programs\FuzzySI\firmware\adc.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\adc.c"
	line	6
global __ptext19
__ptext19:	;psect for function _ADC_Init
psect	text19
	file	"C:\Users\filip\programs\FuzzySI\firmware\adc.c"
	line	6
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _ADC_Init: []
	line	9
	
l3245:	
;adc.c: 9: ADCON1bits.ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(159)^080h,7	;volatile
	line	32
;adc.c: 32: ADCON1bits.PCFG3 = 1;
	bsf	(159)^080h,3	;volatile
	line	33
;adc.c: 33: ADCON1bits.PCFG2 = 1;
	bsf	(159)^080h,2	;volatile
	line	34
;adc.c: 34: ADCON1bits.PCFG1 = 1;
	bsf	(159)^080h,1	;volatile
	line	35
;adc.c: 35: ADCON1bits.PCFG0 = 0;
	bcf	(159)^080h,0	;volatile
	line	38
;adc.c: 38: ADCON0bits.ADCS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(31),7	;volatile
	line	39
;adc.c: 39: ADCON0bits.ADCS0 = 0;
	bcf	(31),6	;volatile
	line	42
;adc.c: 42: PIE1bits.ADIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,6	;volatile
	line	43
;adc.c: 43: PIR1bits.ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),6	;volatile
	line	44
	
l417:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
	signat	_ADC_Init,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 132 in file "C:\Users\filip\programs\FuzzySI\firmware\main.c"
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
;;      Temps:          0       0       0       0       6
;;      Totals:         0       0       0       0       6
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___lwtoft
;;		_fuzzy
;;		i1_TIMER0_Set
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	132
global __ptext20
__ptext20:	;psect for function _ISR
psect	text20
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	132
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 1
; Regs used in _ISR: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_ISR+2)^0100h
	movf	fsr0,w
	movwf	(??_ISR+3)^0100h
	movf	pclath,w
	movwf	(??_ISR+4)^0100h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_ISR+5)^0100h
	ljmp	_ISR
psect	text20
	line	135
	
i1l3453:	
;main.c: 135: if (PIR1bits.RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),5	;volatile
	goto	u425_21
	goto	u425_20
u425_21:
	goto	i1l351
u425_20:
	line	139
	
i1l3455:	
;main.c: 136: {
;main.c: 139: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	line	140
	
i1l351:	
	line	143
;main.c: 140: }
;main.c: 143: if (PIR1bits.ADIF)
	btfss	(12),6	;volatile
	goto	u426_21
	goto	u426_20
u426_21:
	goto	i1l352
u426_20:
	line	148
	
i1l3457:	
;main.c: 144: {
;main.c: 148: PIR1bits.ADIF = 0;
	bcf	(12),6	;volatile
	line	149
	
i1l352:	
	line	153
;main.c: 149: }
;main.c: 153: if (INTCONbits.T0IF)
	btfss	(11),2	;volatile
	goto	u427_21
	goto	u427_20
u427_21:
	goto	i1l3481
u427_20:
	line	156
	
i1l3459:	
;main.c: 154: {
;main.c: 156: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	i1_TIMER0_Set
	line	159
	
i1l3461:	
;main.c: 159: if (contagens_tm0 < 499)
	movlw	high(01F3h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	subwf	(_contagens_tm0+1)^0100h,w
	movlw	low(01F3h)
	skipnz
	subwf	(_contagens_tm0)^0100h,w
	skipnc
	goto	u428_21
	goto	u428_20
u428_21:
	goto	i1l3467
u428_20:
	line	162
	
i1l3463:	
;main.c: 160: {
;main.c: 162: contagens_tm0++;
	movlw	low(01h)
	addwf	(_contagens_tm0)^0100h,f
	skipnc
	incf	(_contagens_tm0+1)^0100h,f
	movlw	high(01h)
	addwf	(_contagens_tm0+1)^0100h,f
	line	165
	
i1l3465:	
;main.c: 165: PORTBbits.RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),6	;volatile
	line	166
;main.c: 166: }
	goto	i1l3479
	line	167
	
i1l354:	
	line	170
	
i1l3467:	
;main.c: 167: else
;main.c: 168: {
;main.c: 170: contagens_tm0 = 0;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(_contagens_tm0)^0100h
	clrf	(_contagens_tm0+1)^0100h
	line	173
	
i1l3469:	
;main.c: 173: pulsos = (TMR1H << 8) + TMR1L;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(15),w	;volatile
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(_pulsos+1)^0100h
	addwf	(_pulsos+1)^0100h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(_pulsos)^0100h
	addwf	(_pulsos)^0100h

	line	174
	
i1l3471:	
;main.c: 174: rpm = ((pulsos / 7.0) * 120);
	movf	(_pulsos+1)^0100h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_pulsos)^0100h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xe0
	movwf	(___ftdiv@f2+1)
	movlw	0x40
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xf0
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm+1)^080h
	addwf	(_rpm+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm)^080h
	addwf	(_rpm)^080h

	line	177
	
i1l3473:	
;main.c: 177: erro_atual = setpoint - rpm;
	comf	(_rpm)^080h,w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(??_ISR+0)^0100h+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_rpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	((??_ISR+0)^0100h+0+1)
	incf	(??_ISR+0)^0100h+0,f
	skipnz
	incf	((??_ISR+0)^0100h+0+1),f
	movf	(_setpoint)^0100h,w
	addwf	0+(??_ISR+0)^0100h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_erro_atual)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(_setpoint+1)^0100h,w
	skipnc
	incf	(_setpoint+1)^0100h,w
	addwf	1+(??_ISR+0)^0100h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(_erro_atual)
	line	178
	
i1l3475:	
;main.c: 178: fuzzy();
	fcall	_fuzzy
	line	182
;main.c: 182: TMR1L = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(14)	;volatile
	line	183
;main.c: 183: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	186
	
i1l3477:	
;main.c: 186: PORTBbits.RB6 = 0;
	bcf	(6),6	;volatile
	goto	i1l3479
	line	187
	
i1l355:	
	line	190
	
i1l3479:	
;main.c: 187: }
;main.c: 190: INTCONbits.T0IF = 0;
	bcf	(11),2	;volatile
	goto	i1l3481
	line	191
	
i1l353:	
	line	194
	
i1l3481:	
;main.c: 191: }
;main.c: 194: if (PIR1bits.TMR1IF)
	btfss	(12),0	;volatile
	goto	u429_21
	goto	u429_20
u429_21:
	goto	i1l356
u429_20:
	line	199
	
i1l3483:	
;main.c: 195: {
;main.c: 199: PIR1bits.TMR1IF = 0;
	bcf	(12),0	;volatile
	line	200
	
i1l356:	
	line	203
;main.c: 200: }
;main.c: 203: if (PIR1bits.SSPIF)
	btfss	(12),3	;volatile
	goto	u430_21
	goto	u430_20
u430_21:
	goto	i1l358
u430_20:
	line	208
	
i1l3485:	
;main.c: 204: {
;main.c: 208: PIR1bits.SSPIF = 0;
	bcf	(12),3	;volatile
	goto	i1l358
	line	209
	
i1l357:	
	line	210
	
i1l358:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(??_ISR+5)^0100h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(??_ISR+4)^0100h,w
	movwf	pclath
	movf	(??_ISR+3)^0100h,w
	movwf	fsr0
	swapf	(??_ISR+2)^0100h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	i1_TIMER0_Set

;; *************** function i1_TIMER0_Set *****************
;; Defined at:
;;		line 20 in file "C:\Users\filip\programs\FuzzySI\firmware\timers.c"
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
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\timers.c"
	line	20
global __ptext21
__ptext21:	;psect for function i1_TIMER0_Set
psect	text21
	file	"C:\Users\filip\programs\FuzzySI\firmware\timers.c"
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
	
i1l3449:	
;timers.c: 22: TMR0 = contagens;
	movf	(i1TIMER0_Set@contagens),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
i1l443:	
	return
	opt stack 0
GLOBAL	__end_ofi1_TIMER0_Set
	__end_ofi1_TIMER0_Set:
	signat	i1_TIMER0_Set,88
	global	_fuzzy

;; *************** function _fuzzy *****************
;; Defined at:
;;		line 102 in file "C:\Users\filip\programs\FuzzySI\firmware\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  freiaM          3   93[BANK3 ] float 
;;  freia           3   90[BANK3 ] float 
;;  mantem          3   87[BANK3 ] float 
;;  acelera         3   84[BANK3 ] float 
;;  aceleraM        3   81[BANK3 ] float 
;;  maior           3   57[BANK0 ] float 
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
;;      Locals:         0      21      78      96       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      21      78      96       0
;;Total ram usage:      195 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftge
;;		___ftmul
;;		___fttol
;;		_trapezoidal
;;		_triangular
;;		i1_PWM_DutyCycle2
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	102
global __ptext22
__ptext22:	;psect for function _fuzzy
psect	text22
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	102
	global	__size_of_fuzzy
	__size_of_fuzzy	equ	__end_of_fuzzy-_fuzzy
	
_fuzzy:	
;incstack = 0
	opt	stack 1
; Regs used in _fuzzy: [wreg+status,2+status,0+pclath+cstack]
	line	104
	
i1l2899:	
;main.c: 104: float aceleraM = trapezoidal(erro_atual, -4000, -4300, -6000, -6000);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_erro_atual+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_erro_atual),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapezoidal@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapezoidal@x+2)
	movlw	0x0
	movwf	(trapezoidal@a)
	movlw	0x7a
	movwf	(trapezoidal@a+1)
	movlw	0xc5
	movwf	(trapezoidal@a+2)
	movlw	0x60
	movwf	(trapezoidal@b)
	movlw	0x86
	movwf	(trapezoidal@b+1)
	movlw	0xc5
	movwf	(trapezoidal@b+2)
	movlw	0x80
	movwf	(trapezoidal@c)
	movlw	0xbb
	movwf	(trapezoidal@c+1)
	movlw	0xc5
	movwf	(trapezoidal@c+2)
	movlw	0x80
	movwf	(trapezoidal@d)
	movlw	0xbb
	movwf	(trapezoidal@d+1)
	movlw	0xc5
	movwf	(trapezoidal@d+2)
	fcall	_trapezoidal
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@aceleraM)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@aceleraM+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@aceleraM+2)^0180h
	line	105
;main.c: 105: float acelera = trapezoidal(erro_atual, -80, -200, -3900, -4200);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_erro_atual+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_erro_atual),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapezoidal@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapezoidal@x+2)
	movlw	0x0
	movwf	(trapezoidal@a)
	movlw	0xa0
	movwf	(trapezoidal@a+1)
	movlw	0xc2
	movwf	(trapezoidal@a+2)
	movlw	0x0
	movwf	(trapezoidal@b)
	movlw	0x48
	movwf	(trapezoidal@b+1)
	movlw	0xc3
	movwf	(trapezoidal@b+2)
	movlw	0xc0
	movwf	(trapezoidal@c)
	movlw	0x73
	movwf	(trapezoidal@c+1)
	movlw	0xc5
	movwf	(trapezoidal@c+2)
	movlw	0x40
	movwf	(trapezoidal@d)
	movlw	0x83
	movwf	(trapezoidal@d+1)
	movlw	0xc5
	movwf	(trapezoidal@d+2)
	fcall	_trapezoidal
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@acelera)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@acelera+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@acelera+2)^0180h
	line	106
;main.c: 106: float mantem = triangular (erro_atual, -100, -0, 100);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_erro_atual+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_erro_atual),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(triangular@x)
	movf	(1+(?___awtoft)),w
	movwf	(triangular@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(triangular@x+2)
	movlw	0x0
	movwf	(triangular@a)
	movlw	0xc8
	movwf	(triangular@a+1)
	movlw	0xc2
	movwf	(triangular@a+2)
	movlw	0x0
	movwf	(triangular@b)
	movlw	0x0
	movwf	(triangular@b+1)
	movlw	0x0
	movwf	(triangular@b+2)
	movlw	0x0
	movwf	(triangular@c)
	movlw	0xc8
	movwf	(triangular@c+1)
	movlw	0x42
	movwf	(triangular@c+2)
	fcall	_triangular
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_triangular)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@mantem)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_triangular)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@mantem+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_triangular)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@mantem+2)^0180h
	line	107
;main.c: 107: float freia = trapezoidal(erro_atual, 80, 200, 3900, 4200);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_erro_atual+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_erro_atual),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapezoidal@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapezoidal@x+2)
	movlw	0x0
	movwf	(trapezoidal@a)
	movlw	0xa0
	movwf	(trapezoidal@a+1)
	movlw	0x42
	movwf	(trapezoidal@a+2)
	movlw	0x0
	movwf	(trapezoidal@b)
	movlw	0x48
	movwf	(trapezoidal@b+1)
	movlw	0x43
	movwf	(trapezoidal@b+2)
	movlw	0xc0
	movwf	(trapezoidal@c)
	movlw	0x73
	movwf	(trapezoidal@c+1)
	movlw	0x45
	movwf	(trapezoidal@c+2)
	movlw	0x40
	movwf	(trapezoidal@d)
	movlw	0x83
	movwf	(trapezoidal@d+1)
	movlw	0x45
	movwf	(trapezoidal@d+2)
	fcall	_trapezoidal
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@freia)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@freia+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@freia+2)^0180h
	line	108
;main.c: 108: float freiaM = trapezoidal(erro_atual, 4000, 4300, 6000, 6000);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_erro_atual+1),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(_erro_atual),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapezoidal@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapezoidal@x+2)
	movlw	0x0
	movwf	(trapezoidal@a)
	movlw	0x7a
	movwf	(trapezoidal@a+1)
	movlw	0x45
	movwf	(trapezoidal@a+2)
	movlw	0x60
	movwf	(trapezoidal@b)
	movlw	0x86
	movwf	(trapezoidal@b+1)
	movlw	0x45
	movwf	(trapezoidal@b+2)
	movlw	0x80
	movwf	(trapezoidal@c)
	movlw	0xbb
	movwf	(trapezoidal@c+1)
	movlw	0x45
	movwf	(trapezoidal@c+2)
	movlw	0x80
	movwf	(trapezoidal@d)
	movlw	0xbb
	movwf	(trapezoidal@d+1)
	movlw	0x45
	movwf	(trapezoidal@d+2)
	fcall	_trapezoidal
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@freiaM)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@freiaM+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapezoidal)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(fuzzy@freiaM+2)^0180h
	line	110
;main.c: 110: float maior = ((((((((((((freiaM>.1?.1:freiaM) > (freia>.25?.25:freia)) ? (freiaM>.1?.1:freiaM) : (freia>.25?.25:freia))) > (mantem>0.5?0.5:mantem)) ? ((((freiaM>.1?.1:freiaM) > (freia>.25?.25:freia)) ? (freiaM>.1?.1:freiaM) : (freia>.25?.25:freia)))
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l2903
u342_20:
	
i1l2901:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$209)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$209+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$209+2)
	goto	i1l2905
	
i1l129:	
	
i1l2903:	
	movlw	0xcd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$209)
	movlw	0xcc
	movwf	(_fuzzy$209+1)
	movlw	0x3d
	movwf	(_fuzzy$209+2)
	goto	i1l2905
	
i1l131:	
	
i1l2905:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l2909
u343_20:
	
i1l2907:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$210)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$210+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$210+2)
	goto	i1l2911
	
i1l133:	
	
i1l2909:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$210)
	movlw	0x80
	movwf	(_fuzzy$210+1)
	movlw	0x3e
	movwf	(_fuzzy$210+2)
	goto	i1l2911
	
i1l135:	
	
i1l2911:	
	movf	(_fuzzy$210),w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$210+1),w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$210+2),w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$209),w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$209+1),w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$209+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l2919
u344_20:
	
i1l2913:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l2917
u345_20:
	
i1l2915:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$211)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$211+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$211+2)^080h
	goto	i1l139
	
i1l137:	
	
i1l2917:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$211)^080h
	movlw	0x80
	movwf	(_fuzzy$211+1)^080h
	movlw	0x3e
	movwf	(_fuzzy$211+2)^080h
	
i1l139:	
	movf	(_fuzzy$211)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$208)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$211+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$208+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$211+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$208+2)
	goto	i1l2925
	
i1l125:	
	
i1l2919:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l2923
u346_20:
	
i1l2921:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$212)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$212+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$212+2)^080h
	goto	i1l143
	
i1l141:	
	
i1l2923:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$212)^080h
	movlw	0xcc
	movwf	(_fuzzy$212+1)^080h
	movlw	0x3d
	movwf	(_fuzzy$212+2)^080h
	
i1l143:	
	movf	(_fuzzy$212)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$208)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$212+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$208+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$212+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$208+2)
	goto	i1l2925
	
i1l127:	
	
i1l2925:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u347_21
	goto	u347_20
u347_21:
	goto	i1l2929
u347_20:
	
i1l2927:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$213)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$213+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$213+2)^080h
	goto	i1l2931
	
i1l145:	
	
i1l2929:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$213)^080h
	movlw	0x0
	movwf	(_fuzzy$213+1)^080h
	movlw	0x3f
	movwf	(_fuzzy$213+2)^080h
	goto	i1l2931
	
i1l147:	
	
i1l2931:	
	movf	(_fuzzy$213)^080h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$213+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$213+2)^080h,w
	movwf	(___ftge@ff1+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fuzzy$208),w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$208+1),w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$208+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l2939
u348_20:
	
i1l2933:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l2937
u349_20:
	
i1l2935:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$214)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$214+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$214+2)^080h
	goto	i1l151
	
i1l149:	
	
i1l2937:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$214)^080h
	movlw	0x0
	movwf	(_fuzzy$214+1)^080h
	movlw	0x3f
	movwf	(_fuzzy$214+2)^080h
	
i1l151:	
	movf	(_fuzzy$214)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$207)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$214+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$207+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$214+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$207+2)
	goto	i1l2965
	
i1l121:	
	
i1l2939:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u350_21
	goto	u350_20
u350_21:
	goto	i1l2943
u350_20:
	
i1l2941:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$216)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$216+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$216+2)^080h
	goto	i1l2945
	
i1l157:	
	
i1l2943:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$216)^080h
	movlw	0xcc
	movwf	(_fuzzy$216+1)^080h
	movlw	0x3d
	movwf	(_fuzzy$216+2)^080h
	goto	i1l2945
	
i1l159:	
	
i1l2945:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u351_21
	goto	u351_20
u351_21:
	goto	i1l2949
u351_20:
	
i1l2947:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$217)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$217+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$217+2)^080h
	goto	i1l2951
	
i1l161:	
	
i1l2949:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$217)^080h
	movlw	0x80
	movwf	(_fuzzy$217+1)^080h
	movlw	0x3e
	movwf	(_fuzzy$217+2)^080h
	goto	i1l2951
	
i1l163:	
	
i1l2951:	
	movf	(_fuzzy$217)^080h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$217+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$217+2)^080h,w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$216)^080h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$216+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$216+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u352_21
	goto	u352_20
u352_21:
	goto	i1l2959
u352_20:
	
i1l2953:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u353_21
	goto	u353_20
u353_21:
	goto	i1l2957
u353_20:
	
i1l2955:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$218)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$218+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$218+2)^080h
	goto	i1l167
	
i1l165:	
	
i1l2957:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$218)^080h
	movlw	0x80
	movwf	(_fuzzy$218+1)^080h
	movlw	0x3e
	movwf	(_fuzzy$218+2)^080h
	
i1l167:	
	movf	(_fuzzy$218)^080h,w
	movwf	(_fuzzy$215)^080h
	movf	(_fuzzy$218+1)^080h,w
	movwf	(_fuzzy$215+1)^080h
	movf	(_fuzzy$218+2)^080h,w
	movwf	(_fuzzy$215+2)^080h
	goto	i1l155
	
i1l153:	
	
i1l2959:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u354_21
	goto	u354_20
u354_21:
	goto	i1l2963
u354_20:
	
i1l2961:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$219)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$219+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$219+2)^080h
	goto	i1l171
	
i1l169:	
	
i1l2963:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$219)^080h
	movlw	0xcc
	movwf	(_fuzzy$219+1)^080h
	movlw	0x3d
	movwf	(_fuzzy$219+2)^080h
	
i1l171:	
	movf	(_fuzzy$219)^080h,w
	movwf	(_fuzzy$215)^080h
	movf	(_fuzzy$219+1)^080h,w
	movwf	(_fuzzy$215+1)^080h
	movf	(_fuzzy$219+2)^080h,w
	movwf	(_fuzzy$215+2)^080h
	
i1l155:	
	movf	(_fuzzy$215)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$207)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$215+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$207+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$215+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$207+2)
	goto	i1l2965
	
i1l123:	
	
i1l2965:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x40
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@acelera+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@acelera+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u355_21
	goto	u355_20
u355_21:
	goto	i1l2969
u355_20:
	
i1l2967:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$220)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$220+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$220+2)^080h
	goto	i1l2971
	
i1l173:	
	
i1l2969:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$220)^080h
	movlw	0x40
	movwf	(_fuzzy$220+1)^080h
	movlw	0x3f
	movwf	(_fuzzy$220+2)^080h
	goto	i1l2971
	
i1l175:	
	
i1l2971:	
	movf	(_fuzzy$220)^080h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$220+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$220+2)^080h,w
	movwf	(___ftge@ff1+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fuzzy$207),w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$207+1),w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$207+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l2979
u356_20:
	
i1l2973:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x40
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@acelera+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@acelera+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u357_21
	goto	u357_20
u357_21:
	goto	i1l2977
u357_20:
	
i1l2975:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$221)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$221+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$221+2)^080h
	goto	i1l179
	
i1l177:	
	
i1l2977:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$221)^080h
	movlw	0x40
	movwf	(_fuzzy$221+1)^080h
	movlw	0x3f
	movwf	(_fuzzy$221+2)^080h
	
i1l179:	
	movf	(_fuzzy$221)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$206)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$221+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$206+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$221+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$206+2)
	goto	i1l3045
	
i1l117:	
	
i1l2979:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u358_21
	goto	u358_20
u358_21:
	goto	i1l2983
u358_20:
	
i1l2981:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$224)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$224+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$224+2)^080h
	goto	i1l2985
	
i1l189:	
	
i1l2983:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$224)^080h
	movlw	0xcc
	movwf	(_fuzzy$224+1)^080h
	movlw	0x3d
	movwf	(_fuzzy$224+2)^080h
	goto	i1l2985
	
i1l191:	
	
i1l2985:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u359_21
	goto	u359_20
u359_21:
	goto	i1l2989
u359_20:
	
i1l2987:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$225)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$225+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$225+2)^080h
	goto	i1l2991
	
i1l193:	
	
i1l2989:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$225)^080h
	movlw	0x80
	movwf	(_fuzzy$225+1)^080h
	movlw	0x3e
	movwf	(_fuzzy$225+2)^080h
	goto	i1l2991
	
i1l195:	
	
i1l2991:	
	movf	(_fuzzy$225)^080h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$225+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$225+2)^080h,w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$224)^080h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$224+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$224+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u360_21
	goto	u360_20
u360_21:
	goto	i1l2999
u360_20:
	
i1l2993:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u361_21
	goto	u361_20
u361_21:
	goto	i1l2997
u361_20:
	
i1l2995:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$226)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$226+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$226+2)^080h
	goto	i1l199
	
i1l197:	
	
i1l2997:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$226)^080h
	movlw	0x80
	movwf	(_fuzzy$226+1)^080h
	movlw	0x3e
	movwf	(_fuzzy$226+2)^080h
	
i1l199:	
	movf	(_fuzzy$226)^080h,w
	movwf	(_fuzzy$223)^080h
	movf	(_fuzzy$226+1)^080h,w
	movwf	(_fuzzy$223+1)^080h
	movf	(_fuzzy$226+2)^080h,w
	movwf	(_fuzzy$223+2)^080h
	goto	i1l3005
	
i1l185:	
	
i1l2999:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u362_21
	goto	u362_20
u362_21:
	goto	i1l3003
u362_20:
	
i1l3001:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$227)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$227+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$227+2)^080h
	goto	i1l203
	
i1l201:	
	
i1l3003:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$227)^080h
	movlw	0xcc
	movwf	(_fuzzy$227+1)^080h
	movlw	0x3d
	movwf	(_fuzzy$227+2)^080h
	
i1l203:	
	movf	(_fuzzy$227)^080h,w
	movwf	(_fuzzy$223)^080h
	movf	(_fuzzy$227+1)^080h,w
	movwf	(_fuzzy$223+1)^080h
	movf	(_fuzzy$227+2)^080h,w
	movwf	(_fuzzy$223+2)^080h
	goto	i1l3005
	
i1l187:	
	
i1l3005:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u363_21
	goto	u363_20
u363_21:
	goto	i1l3009
u363_20:
	
i1l3007:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$228)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$228+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$228+2)^080h
	goto	i1l3011
	
i1l205:	
	
i1l3009:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$228)^080h
	movlw	0x0
	movwf	(_fuzzy$228+1)^080h
	movlw	0x3f
	movwf	(_fuzzy$228+2)^080h
	goto	i1l3011
	
i1l207:	
	
i1l3011:	
	movf	(_fuzzy$228)^080h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$228+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$228+2)^080h,w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$223)^080h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$223+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$223+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u364_21
	goto	u364_20
u364_21:
	goto	i1l3019
u364_20:
	
i1l3013:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u365_21
	goto	u365_20
u365_21:
	goto	i1l3017
u365_20:
	
i1l3015:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$229)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$229+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$229+2)^080h
	goto	i1l211
	
i1l209:	
	
i1l3017:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$229)^080h
	movlw	0x0
	movwf	(_fuzzy$229+1)^080h
	movlw	0x3f
	movwf	(_fuzzy$229+2)^080h
	
i1l211:	
	movf	(_fuzzy$229)^080h,w
	movwf	(_fuzzy$222)^080h
	movf	(_fuzzy$229+1)^080h,w
	movwf	(_fuzzy$222+1)^080h
	movf	(_fuzzy$229+2)^080h,w
	movwf	(_fuzzy$222+2)^080h
	goto	i1l183
	
i1l181:	
	
i1l3019:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u366_21
	goto	u366_20
u366_21:
	goto	i1l3023
u366_20:
	
i1l3021:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$231)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$231+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$231+2)^080h
	goto	i1l3025
	
i1l217:	
	
i1l3023:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$231)^080h
	movlw	0xcc
	movwf	(_fuzzy$231+1)^080h
	movlw	0x3d
	movwf	(_fuzzy$231+2)^080h
	goto	i1l3025
	
i1l219:	
	
i1l3025:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u367_21
	goto	u367_20
u367_21:
	goto	i1l3029
u367_20:
	
i1l3027:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$232)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$232+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$232+2)^080h
	goto	i1l3031
	
i1l221:	
	
i1l3029:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$232)^080h
	movlw	0x80
	movwf	(_fuzzy$232+1)^080h
	movlw	0x3e
	movwf	(_fuzzy$232+2)^080h
	goto	i1l3031
	
i1l223:	
	
i1l3031:	
	movf	(_fuzzy$232)^080h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$232+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$232+2)^080h,w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$231)^080h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$231+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$231+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u368_21
	goto	u368_20
u368_21:
	goto	i1l3039
u368_20:
	
i1l3033:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u369_21
	goto	u369_20
u369_21:
	goto	i1l3037
u369_20:
	
i1l3035:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$233)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$233+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$233+2)^080h
	goto	i1l227
	
i1l225:	
	
i1l3037:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$233)^080h
	movlw	0x80
	movwf	(_fuzzy$233+1)^080h
	movlw	0x3e
	movwf	(_fuzzy$233+2)^080h
	
i1l227:	
	movf	(_fuzzy$233)^080h,w
	movwf	(_fuzzy$230)^080h
	movf	(_fuzzy$233+1)^080h,w
	movwf	(_fuzzy$230+1)^080h
	movf	(_fuzzy$233+2)^080h,w
	movwf	(_fuzzy$230+2)^080h
	goto	i1l215
	
i1l213:	
	
i1l3039:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u370_21
	goto	u370_20
u370_21:
	goto	i1l3043
u370_20:
	
i1l3041:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$234)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$234+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$234+2)^080h
	goto	i1l231
	
i1l229:	
	
i1l3043:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$234)^080h
	movlw	0xcc
	movwf	(_fuzzy$234+1)^080h
	movlw	0x3d
	movwf	(_fuzzy$234+2)^080h
	
i1l231:	
	movf	(_fuzzy$234)^080h,w
	movwf	(_fuzzy$230)^080h
	movf	(_fuzzy$234+1)^080h,w
	movwf	(_fuzzy$230+1)^080h
	movf	(_fuzzy$234+2)^080h,w
	movwf	(_fuzzy$230+2)^080h
	
i1l215:	
	movf	(_fuzzy$230)^080h,w
	movwf	(_fuzzy$222)^080h
	movf	(_fuzzy$230+1)^080h,w
	movwf	(_fuzzy$222+1)^080h
	movf	(_fuzzy$230+2)^080h,w
	movwf	(_fuzzy$222+2)^080h
	
i1l183:	
	movf	(_fuzzy$222)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$206)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$222+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$206+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$222+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$206+2)
	goto	i1l3045
	
i1l119:	
	
i1l3045:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@aceleraM)^0180h,w
	movwf	(___ftge@ff1)
	movf	(fuzzy@aceleraM+1)^0180h,w
	movwf	(___ftge@ff1+1)
	movf	(fuzzy@aceleraM+2)^0180h,w
	movwf	(___ftge@ff1+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fuzzy$206),w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$206+1),w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$206+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u371_21
	goto	u371_20
u371_21:
	goto	i1l3049
u371_20:
	
i1l3047:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@aceleraM)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$205)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@aceleraM+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$205+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@aceleraM+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$205+2)
	goto	i1l115
	
i1l113:	
	
i1l3049:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u372_21
	goto	u372_20
u372_21:
	goto	i1l3053
u372_20:
	
i1l3051:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(_fuzzy$238)^0180h
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(_fuzzy$238+1)^0180h
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(_fuzzy$238+2)^0180h
	goto	i1l3055
	
i1l245:	
	
i1l3053:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$238)^0180h
	movlw	0xcc
	movwf	(_fuzzy$238+1)^0180h
	movlw	0x3d
	movwf	(_fuzzy$238+2)^0180h
	goto	i1l3055
	
i1l247:	
	
i1l3055:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u373_21
	goto	u373_20
u373_21:
	goto	i1l3059
u373_20:
	
i1l3057:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(_fuzzy$239)^0180h
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(_fuzzy$239+1)^0180h
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(_fuzzy$239+2)^0180h
	goto	i1l3061
	
i1l249:	
	
i1l3059:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$239)^0180h
	movlw	0x80
	movwf	(_fuzzy$239+1)^0180h
	movlw	0x3e
	movwf	(_fuzzy$239+2)^0180h
	goto	i1l3061
	
i1l251:	
	
i1l3061:	
	movf	(_fuzzy$239)^0180h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$239+1)^0180h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$239+2)^0180h,w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$238)^0180h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$238+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$238+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u374_21
	goto	u374_20
u374_21:
	goto	i1l3069
u374_20:
	
i1l3063:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u375_21
	goto	u375_20
u375_21:
	goto	i1l3067
u375_20:
	
i1l3065:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(_fuzzy$240)^0180h
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(_fuzzy$240+1)^0180h
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(_fuzzy$240+2)^0180h
	goto	i1l255
	
i1l253:	
	
i1l3067:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$240)^0180h
	movlw	0x80
	movwf	(_fuzzy$240+1)^0180h
	movlw	0x3e
	movwf	(_fuzzy$240+2)^0180h
	
i1l255:	
	movf	(_fuzzy$240)^0180h,w
	movwf	(_fuzzy$237)^0180h
	movf	(_fuzzy$240+1)^0180h,w
	movwf	(_fuzzy$237+1)^0180h
	movf	(_fuzzy$240+2)^0180h,w
	movwf	(_fuzzy$237+2)^0180h
	goto	i1l3075
	
i1l241:	
	
i1l3069:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u376_21
	goto	u376_20
u376_21:
	goto	i1l3073
u376_20:
	
i1l3071:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(_fuzzy$241)^0180h
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(_fuzzy$241+1)^0180h
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(_fuzzy$241+2)^0180h
	goto	i1l259
	
i1l257:	
	
i1l3073:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$241)^0180h
	movlw	0xcc
	movwf	(_fuzzy$241+1)^0180h
	movlw	0x3d
	movwf	(_fuzzy$241+2)^0180h
	
i1l259:	
	movf	(_fuzzy$241)^0180h,w
	movwf	(_fuzzy$237)^0180h
	movf	(_fuzzy$241+1)^0180h,w
	movwf	(_fuzzy$237+1)^0180h
	movf	(_fuzzy$241+2)^0180h,w
	movwf	(_fuzzy$237+2)^0180h
	goto	i1l3075
	
i1l243:	
	
i1l3075:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(fuzzy@mantem)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u377_21
	goto	u377_20
u377_21:
	goto	i1l3079
u377_20:
	
i1l3077:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	movwf	(_fuzzy$242)^0180h
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(_fuzzy$242+1)^0180h
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(_fuzzy$242+2)^0180h
	goto	i1l3081
	
i1l261:	
	
i1l3079:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$242)^0180h
	movlw	0x0
	movwf	(_fuzzy$242+1)^0180h
	movlw	0x3f
	movwf	(_fuzzy$242+2)^0180h
	goto	i1l3081
	
i1l263:	
	
i1l3081:	
	movf	(_fuzzy$242)^0180h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$242+1)^0180h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$242+2)^0180h,w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$237)^0180h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$237+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$237+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u378_21
	goto	u378_20
u378_21:
	goto	i1l3089
u378_20:
	
i1l3083:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u379_21
	goto	u379_20
u379_21:
	goto	i1l3087
u379_20:
	
i1l3085:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	movwf	(_fuzzy$243)^0180h
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(_fuzzy$243+1)^0180h
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(_fuzzy$243+2)^0180h
	goto	i1l267
	
i1l265:	
	
i1l3087:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$243)^0180h
	movlw	0x0
	movwf	(_fuzzy$243+1)^0180h
	movlw	0x3f
	movwf	(_fuzzy$243+2)^0180h
	
i1l267:	
	movf	(_fuzzy$243)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$236)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fuzzy$243+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$236+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fuzzy$243+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$236+2)^080h
	goto	i1l3115
	
i1l237:	
	
i1l3089:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u380_21
	goto	u380_20
u380_21:
	goto	i1l3093
u380_20:
	
i1l3091:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(_fuzzy$245)^0180h
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(_fuzzy$245+1)^0180h
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(_fuzzy$245+2)^0180h
	goto	i1l3095
	
i1l273:	
	
i1l3093:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$245)^0180h
	movlw	0xcc
	movwf	(_fuzzy$245+1)^0180h
	movlw	0x3d
	movwf	(_fuzzy$245+2)^0180h
	goto	i1l3095
	
i1l275:	
	
i1l3095:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u381_21
	goto	u381_20
u381_21:
	goto	i1l3099
u381_20:
	
i1l3097:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(_fuzzy$246)^0180h
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(_fuzzy$246+1)^0180h
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(_fuzzy$246+2)^0180h
	goto	i1l3101
	
i1l277:	
	
i1l3099:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$246)^0180h
	movlw	0x80
	movwf	(_fuzzy$246+1)^0180h
	movlw	0x3e
	movwf	(_fuzzy$246+2)^0180h
	goto	i1l3101
	
i1l279:	
	
i1l3101:	
	movf	(_fuzzy$246)^0180h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$246+1)^0180h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$246+2)^0180h,w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$245)^0180h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$245+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$245+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u382_21
	goto	u382_20
u382_21:
	goto	i1l3109
u382_20:
	
i1l3103:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u383_21
	goto	u383_20
u383_21:
	goto	i1l3107
u383_20:
	
i1l3105:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(_fuzzy$247)^0180h
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(_fuzzy$247+1)^0180h
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(_fuzzy$247+2)^0180h
	goto	i1l283
	
i1l281:	
	
i1l3107:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$247)^0180h
	movlw	0x80
	movwf	(_fuzzy$247+1)^0180h
	movlw	0x3e
	movwf	(_fuzzy$247+2)^0180h
	
i1l283:	
	movf	(_fuzzy$247)^0180h,w
	movwf	(_fuzzy$244)^0180h
	movf	(_fuzzy$247+1)^0180h,w
	movwf	(_fuzzy$244+1)^0180h
	movf	(_fuzzy$247+2)^0180h,w
	movwf	(_fuzzy$244+2)^0180h
	goto	i1l271
	
i1l269:	
	
i1l3109:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u384_21
	goto	u384_20
u384_21:
	goto	i1l3113
u384_20:
	
i1l3111:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(_fuzzy$248)^0180h
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(_fuzzy$248+1)^0180h
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(_fuzzy$248+2)^0180h
	goto	i1l287
	
i1l285:	
	
i1l3113:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$248)^0180h
	movlw	0xcc
	movwf	(_fuzzy$248+1)^0180h
	movlw	0x3d
	movwf	(_fuzzy$248+2)^0180h
	
i1l287:	
	movf	(_fuzzy$248)^0180h,w
	movwf	(_fuzzy$244)^0180h
	movf	(_fuzzy$248+1)^0180h,w
	movwf	(_fuzzy$244+1)^0180h
	movf	(_fuzzy$248+2)^0180h,w
	movwf	(_fuzzy$244+2)^0180h
	
i1l271:	
	movf	(_fuzzy$244)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$236)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fuzzy$244+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$236+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fuzzy$244+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$236+2)^080h
	goto	i1l3115
	
i1l239:	
	
i1l3115:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x40
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@acelera+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@acelera+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u385_21
	goto	u385_20
u385_21:
	goto	i1l3119
u385_20:
	
i1l3117:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera)^0180h,w
	movwf	(_fuzzy$249)^0180h
	movf	(fuzzy@acelera+1)^0180h,w
	movwf	(_fuzzy$249+1)^0180h
	movf	(fuzzy@acelera+2)^0180h,w
	movwf	(_fuzzy$249+2)^0180h
	goto	i1l3121
	
i1l289:	
	
i1l3119:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$249)^0180h
	movlw	0x40
	movwf	(_fuzzy$249+1)^0180h
	movlw	0x3f
	movwf	(_fuzzy$249+2)^0180h
	goto	i1l3121
	
i1l291:	
	
i1l3121:	
	movf	(_fuzzy$249)^0180h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$249+1)^0180h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$249+2)^0180h,w
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$236)^080h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$236+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$236+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u386_21
	goto	u386_20
u386_21:
	goto	i1l3129
u386_20:
	
i1l3123:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x40
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@acelera+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@acelera+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u387_21
	goto	u387_20
u387_21:
	goto	i1l3127
u387_20:
	
i1l3125:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@acelera)^0180h,w
	movwf	(_fuzzy$250)^0180h
	movf	(fuzzy@acelera+1)^0180h,w
	movwf	(_fuzzy$250+1)^0180h
	movf	(fuzzy@acelera+2)^0180h,w
	movwf	(_fuzzy$250+2)^0180h
	goto	i1l295
	
i1l293:	
	
i1l3127:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$250)^0180h
	movlw	0x40
	movwf	(_fuzzy$250+1)^0180h
	movlw	0x3f
	movwf	(_fuzzy$250+2)^0180h
	
i1l295:	
	movf	(_fuzzy$250)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$235)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fuzzy$250+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$235+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fuzzy$250+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$235+2)^080h
	goto	i1l235
	
i1l233:	
	
i1l3129:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u388_21
	goto	u388_20
u388_21:
	goto	i1l3133
u388_20:
	
i1l3131:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(_fuzzy$253)^0180h
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(_fuzzy$253+1)^0180h
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(_fuzzy$253+2)^0180h
	goto	i1l3135
	
i1l305:	
	
i1l3133:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$253)^0180h
	movlw	0xcc
	movwf	(_fuzzy$253+1)^0180h
	movlw	0x3d
	movwf	(_fuzzy$253+2)^0180h
	goto	i1l3135
	
i1l307:	
	
i1l3135:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u389_21
	goto	u389_20
u389_21:
	goto	i1l3139
u389_20:
	
i1l3137:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(_fuzzy$254)^0180h
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(_fuzzy$254+1)^0180h
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(_fuzzy$254+2)^0180h
	goto	i1l3141
	
i1l309:	
	
i1l3139:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$254)^0180h
	movlw	0x80
	movwf	(_fuzzy$254+1)^0180h
	movlw	0x3e
	movwf	(_fuzzy$254+2)^0180h
	goto	i1l3141
	
i1l311:	
	
i1l3141:	
	movf	(_fuzzy$254)^0180h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$254+1)^0180h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$254+2)^0180h,w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$253)^0180h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$253+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$253+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u390_21
	goto	u390_20
u390_21:
	goto	i1l3149
u390_20:
	
i1l3143:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u391_21
	goto	u391_20
u391_21:
	goto	i1l3147
u391_20:
	
i1l3145:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(_fuzzy$255)^0180h
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(_fuzzy$255+1)^0180h
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(_fuzzy$255+2)^0180h
	goto	i1l315
	
i1l313:	
	
i1l3147:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$255)^0180h
	movlw	0x80
	movwf	(_fuzzy$255+1)^0180h
	movlw	0x3e
	movwf	(_fuzzy$255+2)^0180h
	
i1l315:	
	movf	(_fuzzy$255)^0180h,w
	movwf	(_fuzzy$252)^0180h
	movf	(_fuzzy$255+1)^0180h,w
	movwf	(_fuzzy$252+1)^0180h
	movf	(_fuzzy$255+2)^0180h,w
	movwf	(_fuzzy$252+2)^0180h
	goto	i1l3155
	
i1l301:	
	
i1l3149:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u392_21
	goto	u392_20
u392_21:
	goto	i1l3153
u392_20:
	
i1l3151:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(_fuzzy$256)^0180h
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(_fuzzy$256+1)^0180h
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(_fuzzy$256+2)^0180h
	goto	i1l319
	
i1l317:	
	
i1l3153:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$256)^0180h
	movlw	0xcc
	movwf	(_fuzzy$256+1)^0180h
	movlw	0x3d
	movwf	(_fuzzy$256+2)^0180h
	
i1l319:	
	movf	(_fuzzy$256)^0180h,w
	movwf	(_fuzzy$252)^0180h
	movf	(_fuzzy$256+1)^0180h,w
	movwf	(_fuzzy$252+1)^0180h
	movf	(_fuzzy$256+2)^0180h,w
	movwf	(_fuzzy$252+2)^0180h
	goto	i1l3155
	
i1l303:	
	
i1l3155:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movf	(fuzzy@mantem)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u393_21
	goto	u393_20
u393_21:
	goto	i1l3159
u393_20:
	
i1l3157:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	movwf	(_fuzzy$257)^0180h
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(_fuzzy$257+1)^0180h
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(_fuzzy$257+2)^0180h
	goto	i1l3161
	
i1l321:	
	
i1l3159:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$257)^0180h
	movlw	0x0
	movwf	(_fuzzy$257+1)^0180h
	movlw	0x3f
	movwf	(_fuzzy$257+2)^0180h
	goto	i1l3161
	
i1l323:	
	
i1l3161:	
	movf	(_fuzzy$257)^0180h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$257+1)^0180h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$257+2)^0180h,w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$252)^0180h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$252+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$252+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u394_21
	goto	u394_20
u394_21:
	goto	i1l3169
u394_20:
	
i1l3163:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u395_21
	goto	u395_20
u395_21:
	goto	i1l3167
u395_20:
	
i1l3165:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@mantem)^0180h,w
	movwf	(_fuzzy$258)^0180h
	movf	(fuzzy@mantem+1)^0180h,w
	movwf	(_fuzzy$258+1)^0180h
	movf	(fuzzy@mantem+2)^0180h,w
	movwf	(_fuzzy$258+2)^0180h
	goto	i1l327
	
i1l325:	
	
i1l3167:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$258)^0180h
	movlw	0x0
	movwf	(_fuzzy$258+1)^0180h
	movlw	0x3f
	movwf	(_fuzzy$258+2)^0180h
	
i1l327:	
	movf	(_fuzzy$258)^0180h,w
	movwf	(_fuzzy$251)^0180h
	movf	(_fuzzy$258+1)^0180h,w
	movwf	(_fuzzy$251+1)^0180h
	movf	(_fuzzy$258+2)^0180h,w
	movwf	(_fuzzy$251+2)^0180h
	goto	i1l299
	
i1l297:	
	
i1l3169:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u396_21
	goto	u396_20
u396_21:
	goto	i1l3173
u396_20:
	
i1l3171:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(_fuzzy$260)^0180h
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(_fuzzy$260+1)^0180h
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(_fuzzy$260+2)^0180h
	goto	i1l3175
	
i1l333:	
	
i1l3173:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$260)^0180h
	movlw	0xcc
	movwf	(_fuzzy$260+1)^0180h
	movlw	0x3d
	movwf	(_fuzzy$260+2)^0180h
	goto	i1l3175
	
i1l335:	
	
i1l3175:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u397_21
	goto	u397_20
u397_21:
	goto	i1l3179
u397_20:
	
i1l3177:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(_fuzzy$261)^0180h
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(_fuzzy$261+1)^0180h
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(_fuzzy$261+2)^0180h
	goto	i1l3181
	
i1l337:	
	
i1l3179:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$261)^0180h
	movlw	0x80
	movwf	(_fuzzy$261+1)^0180h
	movlw	0x3e
	movwf	(_fuzzy$261+2)^0180h
	goto	i1l3181
	
i1l339:	
	
i1l3181:	
	movf	(_fuzzy$261)^0180h,w
	movwf	(___ftge@ff1)
	movf	(_fuzzy$261+1)^0180h,w
	movwf	(___ftge@ff1+1)
	movf	(_fuzzy$261+2)^0180h,w
	movwf	(___ftge@ff1+2)
	movf	(_fuzzy$260)^0180h,w
	movwf	(___ftge@ff2)
	movf	(_fuzzy$260+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(_fuzzy$260+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u398_21
	goto	u398_20
u398_21:
	goto	i1l3189
u398_20:
	
i1l3183:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3e
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u399_21
	goto	u399_20
u399_21:
	goto	i1l3187
u399_20:
	
i1l3185:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freia)^0180h,w
	movwf	(_fuzzy$262)^0180h
	movf	(fuzzy@freia+1)^0180h,w
	movwf	(_fuzzy$262+1)^0180h
	movf	(fuzzy@freia+2)^0180h,w
	movwf	(_fuzzy$262+2)^0180h
	goto	i1l343
	
i1l341:	
	
i1l3187:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$262)^0180h
	movlw	0x80
	movwf	(_fuzzy$262+1)^0180h
	movlw	0x3e
	movwf	(_fuzzy$262+2)^0180h
	
i1l343:	
	movf	(_fuzzy$262)^0180h,w
	movwf	(_fuzzy$259)^0180h
	movf	(_fuzzy$262+1)^0180h,w
	movwf	(_fuzzy$259+1)^0180h
	movf	(_fuzzy$262+2)^0180h,w
	movwf	(_fuzzy$259+2)^0180h
	goto	i1l331
	
i1l329:	
	
i1l3189:	
	movlw	0xcd
	movwf	(___ftge@ff1)
	movlw	0xcc
	movwf	(___ftge@ff1+1)
	movlw	0x3d
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(___ftge@ff2)
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(___ftge@ff2+1)
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u400_21
	goto	u400_20
u400_21:
	goto	i1l3193
u400_20:
	
i1l3191:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(fuzzy@freiaM)^0180h,w
	movwf	(_fuzzy$263)^0180h
	movf	(fuzzy@freiaM+1)^0180h,w
	movwf	(_fuzzy$263+1)^0180h
	movf	(fuzzy@freiaM+2)^0180h,w
	movwf	(_fuzzy$263+2)^0180h
	goto	i1l347
	
i1l345:	
	
i1l3193:	
	movlw	0xcd
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_fuzzy$263)^0180h
	movlw	0xcc
	movwf	(_fuzzy$263+1)^0180h
	movlw	0x3d
	movwf	(_fuzzy$263+2)^0180h
	
i1l347:	
	movf	(_fuzzy$263)^0180h,w
	movwf	(_fuzzy$259)^0180h
	movf	(_fuzzy$263+1)^0180h,w
	movwf	(_fuzzy$259+1)^0180h
	movf	(_fuzzy$263+2)^0180h,w
	movwf	(_fuzzy$259+2)^0180h
	
i1l331:	
	movf	(_fuzzy$259)^0180h,w
	movwf	(_fuzzy$251)^0180h
	movf	(_fuzzy$259+1)^0180h,w
	movwf	(_fuzzy$251+1)^0180h
	movf	(_fuzzy$259+2)^0180h,w
	movwf	(_fuzzy$251+2)^0180h
	
i1l299:	
	movf	(_fuzzy$251)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$235)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fuzzy$251+1)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$235+1)^080h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_fuzzy$251+2)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fuzzy$235+2)^080h
	
i1l235:	
	movf	(_fuzzy$235)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$205)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$235+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$205+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fuzzy$235+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_fuzzy$205+2)
	
i1l115:	
	movf	(_fuzzy$205),w
	movwf	(fuzzy@maior)
	movf	(_fuzzy$205+1),w
	movwf	(fuzzy@maior+1)
	movf	(_fuzzy$205+2),w
	movwf	(fuzzy@maior+2)
	line	119
	
i1l3195:	
;main.c: 119: PWM_DutyCycle2((int)(maior*1023));
	movf	(fuzzy@maior),w
	movwf	(___ftmul@f2)
	movf	(fuzzy@maior+1),w
	movwf	(___ftmul@f2+1)
	movf	(fuzzy@maior+2),w
	movwf	(___ftmul@f2+2)
	movlw	0xc0
	movwf	(___ftmul@f1)
	movlw	0x7f
	movwf	(___ftmul@f1+1)
	movlw	0x44
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor+1)
	addwf	(i1PWM_DutyCycle2@valor+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor)
	addwf	(i1PWM_DutyCycle2@valor)

	fcall	i1_PWM_DutyCycle2
	line	129
	
i1l348:	
	return
	opt stack 0
GLOBAL	__end_of_fuzzy
	__end_of_fuzzy:
	signat	_fuzzy,88
	global	i1_PWM_DutyCycle2

;; *************** function i1_PWM_DutyCycle2 *****************
;; Defined at:
;;		line 96 in file "C:\Users\filip\programs\FuzzySI\firmware\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2   53[BANK0 ] int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fuzzy
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\pwm.c"
	line	96
global __ptext23
__ptext23:	;psect for function i1_PWM_DutyCycle2
psect	text23
	file	"C:\Users\filip\programs\FuzzySI\firmware\pwm.c"
	line	96
	global	__size_ofi1_PWM_DutyCycle2
	__size_ofi1_PWM_DutyCycle2	equ	__end_ofi1_PWM_DutyCycle2-i1_PWM_DutyCycle2
	
i1_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 3
; Regs used in i1_PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
i1l2895:	
;pwm.c: 98: CCPR2L = valor >> 2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	movwf	(27)	;volatile
	line	99
	
i1l2897:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	movf	(i1PWM_DutyCycle2@valor),w
	movwf	(??i1_PWM_DutyCycle2+0)+0
	movlw	(04h)-1
u341_25:
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,f
	addlw	-1
	skipz
	goto	u341_25
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,w
	iorlw	0Ch
	movwf	(29)	;volatile
	line	100
	
i1l597:	
	return
	opt stack 0
GLOBAL	__end_ofi1_PWM_DutyCycle2
	__end_ofi1_PWM_DutyCycle2:
	signat	i1_PWM_DutyCycle2,88
	global	_triangular

;; *************** function _triangular *****************
;; Defined at:
;;		line 66 in file "C:\Users\filip\programs\FuzzySI\firmware\main.c"
;; Parameters:    Size  Location     Type
;;  x               3   23[BANK0 ] float 
;;  a               3   26[BANK0 ] float 
;;  b               3   29[BANK0 ] float 
;;  c               3   32[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  ua              3   35[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      12       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_fuzzy
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	66
global __ptext24
__ptext24:	;psect for function _triangular
psect	text24
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	66
	global	__size_of_triangular
	__size_of_triangular	equ	__end_of_triangular-_triangular
	
_triangular:	
;incstack = 0
	opt	stack 1
; Regs used in _triangular: [wreg+status,2+status,0+pclath+cstack]
	line	68
	
i1l2607:	
;main.c: 68: float ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(triangular@ua)
	movlw	0x0
	movwf	(triangular@ua+1)
	movlw	0x0
	movwf	(triangular@ua+2)
	line	70
	
i1l2609:	
;main.c: 70: if (x <= a)
	movf	(triangular@a),w
	movwf	(___ftge@ff1)
	movf	(triangular@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(triangular@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(triangular@x),w
	movwf	(___ftge@ff2)
	movf	(triangular@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(triangular@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l2613
u273_20:
	line	71
	
i1l2611:	
;main.c: 71: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(triangular@ua)
	movlw	0x0
	movwf	(triangular@ua+1)
	movlw	0x0
	movwf	(triangular@ua+2)
	goto	i1l91
	line	72
	
i1l90:	
	
i1l2613:	
;main.c: 72: else if ((a < x) && (x <= b))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(triangular@a),w
	movwf	(___ftge@ff1)
	movf	(triangular@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(triangular@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(triangular@x),w
	movwf	(___ftge@ff2)
	movf	(triangular@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(triangular@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l2619
u274_20:
	
i1l2615:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(triangular@b),w
	movwf	(___ftge@ff1)
	movf	(triangular@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(triangular@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(triangular@x),w
	movwf	(___ftge@ff2)
	movf	(triangular@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(triangular@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l2619
u275_20:
	line	73
	
i1l2617:	
;main.c: 73: ua = ((x - a) / (b - a));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(triangular@b),w
	movwf	(___ftadd@f1)
	movf	(triangular@b+1),w
	movwf	(___ftadd@f1+1)
	movf	(triangular@b+2),w
	movwf	(___ftadd@f1+2)
	movf	(triangular@a),w
	movwf	(___ftneg@f1)
	movf	(triangular@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(triangular@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(triangular@x),w
	movwf	(___ftadd@f1)
	movf	(triangular@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(triangular@x+2),w
	movwf	(___ftadd@f1+2)
	movf	(triangular@a),w
	movwf	(___ftneg@f1)
	movf	(triangular@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(triangular@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(triangular@ua)
	movf	(1+(?___ftdiv)),w
	movwf	(triangular@ua+1)
	movf	(2+(?___ftdiv)),w
	movwf	(triangular@ua+2)
	goto	i1l91
	line	74
	
i1l92:	
	
i1l2619:	
;main.c: 74: else if ((b < x) && (x <= c))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(triangular@b),w
	movwf	(___ftge@ff1)
	movf	(triangular@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(triangular@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(triangular@x),w
	movwf	(___ftge@ff2)
	movf	(triangular@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(triangular@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u276_21
	goto	u276_20
u276_21:
	goto	i1l2625
u276_20:
	
i1l2621:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(triangular@c),w
	movwf	(___ftge@ff1)
	movf	(triangular@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(triangular@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(triangular@x),w
	movwf	(___ftge@ff2)
	movf	(triangular@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(triangular@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l2625
u277_20:
	line	75
	
i1l2623:	
;main.c: 75: ua = ((x - c) / (b - c));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(triangular@b),w
	movwf	(___ftadd@f1)
	movf	(triangular@b+1),w
	movwf	(___ftadd@f1+1)
	movf	(triangular@b+2),w
	movwf	(___ftadd@f1+2)
	movf	(triangular@c),w
	movwf	(___ftneg@f1)
	movf	(triangular@c+1),w
	movwf	(___ftneg@f1+1)
	movf	(triangular@c+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(triangular@x),w
	movwf	(___ftadd@f1)
	movf	(triangular@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(triangular@x+2),w
	movwf	(___ftadd@f1+2)
	movf	(triangular@c),w
	movwf	(___ftneg@f1)
	movf	(triangular@c+1),w
	movwf	(___ftneg@f1+1)
	movf	(triangular@c+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(triangular@ua)
	movf	(1+(?___ftdiv)),w
	movwf	(triangular@ua+1)
	movf	(2+(?___ftdiv)),w
	movwf	(triangular@ua+2)
	goto	i1l91
	line	76
	
i1l94:	
	
i1l2625:	
;main.c: 76: else if (x > c)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(triangular@c),w
	movwf	(___ftge@ff1)
	movf	(triangular@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(triangular@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(triangular@x),w
	movwf	(___ftge@ff2)
	movf	(triangular@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(triangular@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u278_21
	goto	u278_20
u278_21:
	goto	i1l91
u278_20:
	line	77
	
i1l2627:	
;main.c: 77: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(triangular@ua)
	movlw	0x0
	movwf	(triangular@ua+1)
	movlw	0x0
	movwf	(triangular@ua+2)
	goto	i1l91
	
i1l96:	
	goto	i1l91
	line	79
	
i1l95:	
	goto	i1l91
	
i1l93:	
	
i1l91:	
;main.c: 79: return (ua);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(triangular@ua),w
	movwf	(?_triangular)
	movf	(triangular@ua+1),w
	movwf	(?_triangular+1)
	movf	(triangular@ua+2),w
	movwf	(?_triangular+2)
	goto	i1l97
	
i1l2629:	
	line	80
	
i1l97:	
	return
	opt stack 0
GLOBAL	__end_of_triangular
	__end_of_triangular:
	signat	_triangular,16507
	global	_trapezoidal

;; *************** function _trapezoidal *****************
;; Defined at:
;;		line 84 in file "C:\Users\filip\programs\FuzzySI\firmware\main.c"
;; Parameters:    Size  Location     Type
;;  x               3   23[BANK0 ] float 
;;  a               3   26[BANK0 ] float 
;;  b               3   29[BANK0 ] float 
;;  c               3   32[BANK0 ] float 
;;  d               3   35[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  ua              3   38[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
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
;;		_fuzzy
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	84
global __ptext25
__ptext25:	;psect for function _trapezoidal
psect	text25
	file	"C:\Users\filip\programs\FuzzySI\firmware\main.c"
	line	84
	global	__size_of_trapezoidal
	__size_of_trapezoidal	equ	__end_of_trapezoidal-_trapezoidal
	
_trapezoidal:	
;incstack = 0
	opt	stack 1
; Regs used in _trapezoidal: [wreg+status,2+status,0+pclath+cstack]
	line	86
	
i1l2631:	
;main.c: 86: float ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@ua)
	movlw	0x0
	movwf	(trapezoidal@ua+1)
	movlw	0x0
	movwf	(trapezoidal@ua+2)
	line	88
	
i1l2633:	
;main.c: 88: if (x <= a)
	movf	(trapezoidal@a),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u279_21
	goto	u279_20
u279_21:
	goto	i1l2637
u279_20:
	line	89
	
i1l2635:	
;main.c: 89: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@ua)
	movlw	0x0
	movwf	(trapezoidal@ua+1)
	movlw	0x0
	movwf	(trapezoidal@ua+2)
	goto	i1l101
	line	90
	
i1l100:	
	
i1l2637:	
;main.c: 90: else if ((a < x) && (x <= b))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@a),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l2643
u280_20:
	
i1l2639:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@b),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l2643
u281_20:
	line	91
	
i1l2641:	
;main.c: 91: ua = ((x - a) / (b - a));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@b),w
	movwf	(___ftadd@f1)
	movf	(trapezoidal@b+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapezoidal@b+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapezoidal@a),w
	movwf	(___ftneg@f1)
	movf	(trapezoidal@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapezoidal@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(trapezoidal@x),w
	movwf	(___ftadd@f1)
	movf	(trapezoidal@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapezoidal@a),w
	movwf	(___ftneg@f1)
	movf	(trapezoidal@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapezoidal@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(trapezoidal@ua)
	movf	(1+(?___ftdiv)),w
	movwf	(trapezoidal@ua+1)
	movf	(2+(?___ftdiv)),w
	movwf	(trapezoidal@ua+2)
	goto	i1l101
	line	92
	
i1l102:	
	
i1l2643:	
;main.c: 92: else if ((b <= x) && (x <= c))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@b),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@b+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@b+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l2649
u282_20:
	
i1l2645:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@c),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l2649
u283_20:
	line	93
	
i1l2647:	
;main.c: 93: ua = 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@ua)
	movlw	0x80
	movwf	(trapezoidal@ua+1)
	movlw	0x3f
	movwf	(trapezoidal@ua+2)
	goto	i1l101
	line	94
	
i1l104:	
	
i1l2649:	
;main.c: 94: else if ((c < x) && (x <= d))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@c),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l2655
u284_20:
	
i1l2651:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@d),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@d+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@d+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l2655
u285_20:
	line	95
	
i1l2653:	
;main.c: 95: ua = ((d - x) / (d - c));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@d),w
	movwf	(___ftadd@f1)
	movf	(trapezoidal@d+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapezoidal@d+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapezoidal@c),w
	movwf	(___ftneg@f1)
	movf	(trapezoidal@c+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapezoidal@c+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(trapezoidal@d),w
	movwf	(___ftadd@f1)
	movf	(trapezoidal@d+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapezoidal@d+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftneg@f1)
	movf	(trapezoidal@x+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(trapezoidal@ua)
	movf	(1+(?___ftdiv)),w
	movwf	(trapezoidal@ua+1)
	movf	(2+(?___ftdiv)),w
	movwf	(trapezoidal@ua+2)
	goto	i1l101
	line	96
	
i1l106:	
	
i1l2655:	
;main.c: 96: else if (x > d)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@d),w
	movwf	(___ftge@ff1)
	movf	(trapezoidal@d+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapezoidal@d+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapezoidal@x),w
	movwf	(___ftge@ff2)
	movf	(trapezoidal@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapezoidal@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l101
u286_20:
	line	97
	
i1l2657:	
;main.c: 97: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapezoidal@ua)
	movlw	0x0
	movwf	(trapezoidal@ua+1)
	movlw	0x0
	movwf	(trapezoidal@ua+2)
	goto	i1l101
	
i1l108:	
	goto	i1l101
	line	99
	
i1l107:	
	goto	i1l101
	
i1l105:	
	goto	i1l101
	
i1l103:	
	
i1l101:	
;main.c: 99: return (ua);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapezoidal@ua),w
	movwf	(?_trapezoidal)
	movf	(trapezoidal@ua+1),w
	movwf	(?_trapezoidal+1)
	movf	(trapezoidal@ua+2),w
	movwf	(?_trapezoidal+2)
	goto	i1l109
	
i1l2659:	
	line	100
	
i1l109:	
	return
	opt stack 0
GLOBAL	__end_of_trapezoidal
	__end_of_trapezoidal:
	signat	_trapezoidal,20603
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_triangular
;;		_trapezoidal
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext26
__ptext26:	;psect for function ___ftneg
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
i1l2599:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l2603
u272_20:
	line	18
	
i1l2601:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	i1l2603
	
i1l989:	
	line	19
	
i1l2603:	
	goto	i1l990
	
i1l2605:	
	line	20
	
i1l990:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
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
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_triangular
;;		_trapezoidal
;;		_fuzzy
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
	opt	stack 2
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
i1l2579:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l2583
u267_20:
	line	7
	
i1l2581:	
	movlw	low(0800000h)
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
	goto	u268_21
	goto	u268_22
u268_21:
	addwf	(??___ftge+0)+1,f
	
u268_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u268_23
	goto	u268_24
u268_23:
	addwf	(??___ftge+0)+2,f
	
u268_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	i1l2583
	
i1l971:	
	line	8
	
i1l2583:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l2587
u269_20:
	line	9
	
i1l2585:	
	movlw	low(0800000h)
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
	goto	u270_21
	goto	u270_22
u270_21:
	addwf	(??___ftge+0)+1,f
	
u270_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u270_23
	goto	u270_24
u270_23:
	addwf	(??___ftge+0)+2,f
	
u270_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	i1l2587
	
i1l972:	
	line	10
	
i1l2587:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
i1l2589:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
i1l2591:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u271_25
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u271_25
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u271_25:
	skipnc
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l2595
u271_20:
	
i1l2593:	
	clrc
	
	goto	i1l973
	
i1l2431:	
	
i1l2595:	
	setc
	
	goto	i1l973
	
i1l2433:	
	goto	i1l973
	
i1l2597:	
	line	13
	
i1l973:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    7[BANK0 ] float 
;;  f1              3   10[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   18[BANK0 ] float 
;;  sign            1   22[BANK0 ] unsigned char 
;;  exp             1   21[BANK0 ] unsigned char 
;;  cntr            1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    7[BANK0 ] float 
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
;;		_triangular
;;		_trapezoidal
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext28
__ptext28:	;psect for function ___ftdiv
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l2537:	
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
	goto	u259_21
	goto	u259_20
u259_21:
	goto	i1l2543
u259_20:
	line	56
	
i1l2539:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l964
	
i1l2541:	
	goto	i1l964
	
i1l963:	
	line	57
	
i1l2543:	
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
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l2549
u260_20:
	line	58
	
i1l2545:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l964
	
i1l2547:	
	goto	i1l964
	
i1l965:	
	line	59
	
i1l2549:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
i1l2551:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
i1l2553:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u261_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u261_20:
	addlw	-1
	skipz
	goto	u261_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
i1l2555:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u262_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u262_20:
	addlw	-1
	skipz
	goto	u262_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
i1l2557:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
i1l2559:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
i1l2561:	
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
	goto	i1l2563
	line	69
	
i1l966:	
	line	70
	
i1l2563:	
	movlw	01h
u263_25:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u263_25
	line	71
	
i1l2565:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u264_25
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u264_25
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u264_25:
	skipc
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l2571
u264_20:
	line	72
	
i1l2567:	
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
	
i1l2569:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	i1l2571
	line	74
	
i1l967:	
	line	75
	
i1l2571:	
	movlw	01h
u265_25:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u265_25
	line	76
	
i1l2573:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l2563
u266_20:
	goto	i1l2575
	
i1l968:	
	line	77
	
i1l2575:	
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
	goto	i1l964
	
i1l2577:	
	line	78
	
i1l964:	
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
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1    6[BANK0 ] unsigned char 
;;  exp2            1    5[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6       7       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_triangular
;;		_trapezoidal
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext29
__ptext29:	;psect for function ___ftadd
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l2465:	
	movf	(___ftadd@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
i1l2467:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u235_20
	goto	i1l2473
u235_20:
	
i1l2469:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l2477
u236_20:
	
i1l2471:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l2477
u237_20:
	goto	i1l2473
	
i1l932:	
	line	93
	
i1l2473:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	i1l933
	
i1l2475:	
	goto	i1l933
	
i1l930:	
	line	94
	
i1l2477:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u238_20
	goto	i1l936
u238_20:
	
i1l2479:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l2483
u239_20:
	
i1l2481:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l2483
u240_20:
	
i1l936:	
	line	95
	goto	i1l933
	
i1l934:	
	line	96
	
i1l2483:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
i1l2485:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l937
u241_20:
	line	98
	
i1l2487:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
i1l937:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l938
u242_20:
	line	100
	
i1l2489:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
i1l938:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l2491:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
i1l2493:	
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
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l2505
u243_20:
	goto	i1l2495
	line	109
	
i1l940:	
	line	110
	
i1l2495:	
	movlw	01h
u244_25:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u244_25
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
i1l2497:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l2503
u245_20:
	
i1l2499:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l2495
u246_20:
	goto	i1l2503
	
i1l942:	
	goto	i1l2503
	
i1l943:	
	line	113
	goto	i1l2503
	
i1l945:	
	line	114
	
i1l2501:	
	movlw	01h
u247_25:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u247_25

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	i1l2503
	line	116
	
i1l944:	
	line	113
	
i1l2503:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l2501
u248_20:
	goto	i1l947
	
i1l946:	
	line	117
	goto	i1l947
	
i1l939:	
	
i1l2505:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l947
u249_20:
	goto	i1l2507
	line	120
	
i1l949:	
	line	121
	
i1l2507:	
	movlw	01h
u250_25:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u250_25
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
i1l2509:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l2515
u251_20:
	
i1l2511:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l2507
u252_20:
	goto	i1l2515
	
i1l951:	
	goto	i1l2515
	
i1l952:	
	line	124
	goto	i1l2515
	
i1l954:	
	line	125
	
i1l2513:	
	movlw	01h
u253_25:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u253_25

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	i1l2515
	line	127
	
i1l953:	
	line	124
	
i1l2515:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u254_21
	goto	u254_20
u254_21:
	goto	i1l2513
u254_20:
	goto	i1l947
	
i1l955:	
	goto	i1l947
	line	128
	
i1l948:	
	line	129
	
i1l947:	
	btfss	(___ftadd@sign),(7)&7
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l2519
u255_20:
	line	131
	
i1l2517:	
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
	goto	i1l2519
	line	133
	
i1l956:	
	line	134
	
i1l2519:	
	btfss	(___ftadd@sign),(6)&7
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l2523
u256_20:
	line	136
	
i1l2521:	
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
	goto	i1l2523
	line	138
	
i1l957:	
	line	139
	
i1l2523:	
	clrf	(___ftadd@sign)
	line	140
	
i1l2525:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u257_21
	addwf	(___ftadd@f2+1),f
u257_21:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u257_22
	addwf	(___ftadd@f2+2),f
u257_22:

	line	141
	
i1l2527:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l2533
u258_20:
	line	142
	
i1l2529:	
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
	
i1l2531:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	i1l2533
	line	145
	
i1l958:	
	line	146
	
i1l2533:	
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
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	i1l933
	
i1l2535:	
	line	148
	
i1l933:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   39[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   48[BANK0 ] unsigned long 
;;  exp1            1   52[BANK0 ] unsigned char 
;;  sign1           1   47[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   39[BANK0 ] long 
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
;;		_fuzzy
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext30
__ptext30:	;psect for function ___fttol
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
i1l2803:	
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
	goto	u318_21
	goto	u318_20
u318_21:
	goto	i1l2809
u318_20:
	line	50
	
i1l2805:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l999
	
i1l2807:	
	goto	i1l999
	
i1l998:	
	line	51
	
i1l2809:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u319_25:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u319_20:
	addlw	-1
	skipz
	goto	u319_25
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
i1l2811:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
i1l2813:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
i1l2815:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
i1l2817:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
i1l2819:	
	btfss	(___fttol@exp1),7
	goto	u320_21
	goto	u320_20
u320_21:
	goto	i1l2829
u320_20:
	line	57
	
i1l2821:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u321_21
	goto	u321_20
u321_21:
	goto	i1l2827
u321_20:
	line	58
	
i1l2823:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l999
	
i1l2825:	
	goto	i1l999
	
i1l1001:	
	goto	i1l2827
	line	59
	
i1l1002:	
	line	60
	
i1l2827:	
	movlw	01h
u322_25:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u322_25

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u323_21
	goto	u323_20
u323_21:
	goto	i1l2827
u323_20:
	goto	i1l2839
	
i1l1003:	
	line	62
	goto	i1l2839
	
i1l1000:	
	line	63
	
i1l2829:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u324_21
	goto	u324_20
u324_21:
	goto	i1l2837
u324_20:
	line	64
	
i1l2831:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l999
	
i1l2833:	
	goto	i1l999
	
i1l1005:	
	line	65
	goto	i1l2837
	
i1l1007:	
	line	66
	
i1l2835:	
	movlw	01h
	movwf	(??___fttol+0)+0
u325_25:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u325_25
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	i1l2837
	line	68
	
i1l1006:	
	line	65
	
i1l2837:	
	movf	(___fttol@exp1),f
	skipz
	goto	u326_21
	goto	u326_20
u326_21:
	goto	i1l2835
u326_20:
	goto	i1l2839
	
i1l1008:	
	goto	i1l2839
	line	69
	
i1l1004:	
	line	70
	
i1l2839:	
	movf	(___fttol@sign1),w
	skipz
	goto	u327_20
	goto	i1l2843
u327_20:
	line	71
	
i1l2841:	
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
	goto	i1l2843
	
i1l1009:	
	line	72
	
i1l2843:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	i1l999
	
i1l2845:	
	line	73
	
i1l999:	
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
;;  f1              3   23[BANK0 ] float 
;;  f2              3   26[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   34[BANK0 ] unsigned um
;;  sign            1   38[BANK0 ] unsigned char 
;;  cntr            1   37[BANK0 ] unsigned char 
;;  exp             1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   23[BANK0 ] float 
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
;;		_fuzzy
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext31
__ptext31:	;psect for function ___ftmul
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
i1l2753:	
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
	goto	u304_21
	goto	u304_20
u304_21:
	goto	i1l2759
u304_20:
	line	68
	
i1l2755:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l979
	
i1l2757:	
	goto	i1l979
	
i1l978:	
	line	69
	
i1l2759:	
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
	goto	u305_21
	goto	u305_20
u305_21:
	goto	i1l2765
u305_20:
	line	70
	
i1l2761:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l979
	
i1l2763:	
	goto	i1l979
	
i1l980:	
	line	71
	
i1l2765:	
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
u306_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u306_20:
	addlw	-1
	skipz
	goto	u306_25
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
u307_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u307_20:
	addlw	-1
	skipz
	goto	u307_25
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
	
i1l2767:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
i1l2769:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
i1l2771:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
i1l2773:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
i1l2775:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l2777
	line	135
	
i1l981:	
	line	136
	
i1l2777:	
	btfss	(___ftmul@f1),(0)&7
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l2781
u308_20:
	line	137
	
i1l2779:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u309_21
	addwf	(___ftmul@f3_as_product+1),f
u309_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u309_22
	addwf	(___ftmul@f3_as_product+2),f
u309_22:

	goto	i1l2781
	
i1l982:	
	line	138
	
i1l2781:	
	movlw	01h
u310_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u310_25

	line	139
	
i1l2783:	
	movlw	01h
u311_25:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u311_25
	line	140
	
i1l2785:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u312_21
	goto	u312_20
u312_21:
	goto	i1l2777
u312_20:
	goto	i1l2787
	
i1l983:	
	line	143
	
i1l2787:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l2789
	line	144
	
i1l984:	
	line	145
	
i1l2789:	
	btfss	(___ftmul@f1),(0)&7
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l2793
u313_20:
	line	146
	
i1l2791:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u314_21
	addwf	(___ftmul@f3_as_product+1),f
u314_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u314_22
	addwf	(___ftmul@f3_as_product+2),f
u314_22:

	goto	i1l2793
	
i1l985:	
	line	147
	
i1l2793:	
	movlw	01h
u315_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u315_25

	line	148
	
i1l2795:	
	movlw	01h
u316_25:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u316_25

	line	149
	
i1l2797:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l2789
u317_20:
	goto	i1l2799
	
i1l986:	
	line	156
	
i1l2799:	
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
	goto	i1l979
	
i1l2801:	
	line	157
	
i1l979:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
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
;;		_fuzzy
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext32
__ptext32:	;psect for function ___awtoft
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
i1l2741:	
	clrf	(___awtoft@sign)
	line	37
	
i1l2743:	
	btfss	(___awtoft@c+1),7
	goto	u303_21
	goto	u303_20
u303_21:
	goto	i1l2749
u303_20:
	line	38
	
i1l2745:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
i1l2747:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	i1l2749
	line	40
	
i1l907:	
	line	41
	
i1l2749:	
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
	goto	i1l908
	
i1l2751:	
	line	42
	
i1l908:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext33
__ptext33:	;psect for function ___lwtoft
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
i1l3445:	
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
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	i1l1113
	
i1l3447:	
	line	31
	
i1l1113:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
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
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext34
__ptext34:	;psect for function ___ftpack
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l2435:	
	movf	(___ftpack@exp),w
	skipz
	goto	u224_20
	goto	i1l2439
u224_20:
	
i1l2437:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u225_21
	goto	u225_20
u225_21:
	goto	i1l2445
u225_20:
	goto	i1l2439
	
i1l913:	
	line	65
	
i1l2439:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	i1l914
	
i1l2441:	
	goto	i1l914
	
i1l911:	
	line	66
	goto	i1l2445
	
i1l916:	
	line	67
	
i1l2443:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u226_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u226_25

	goto	i1l2445
	line	69
	
i1l915:	
	line	66
	
i1l2445:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l2443
u227_20:
	goto	i1l918
	
i1l917:	
	line	70
	goto	i1l918
	
i1l919:	
	line	71
	
i1l2447:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
i1l2449:	
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
	
i1l2451:	
	movlw	01h
u228_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u228_25

	line	74
	
i1l918:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l2447
u229_20:
	goto	i1l2455
	
i1l920:	
	line	75
	goto	i1l2455
	
i1l922:	
	line	76
	
i1l2453:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u230_25:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u230_25
	goto	i1l2455
	line	78
	
i1l921:	
	line	75
	
i1l2455:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l2453
u231_20:
	
i1l923:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l924
u232_20:
	line	80
	
i1l2457:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
i1l924:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
i1l2459:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u233_25:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u233_20:
	addlw	-1
	skipz
	goto	u233_25
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
i1l2461:	
	movf	(___ftpack@sign),w
	skipz
	goto	u234_20
	goto	i1l925
u234_20:
	line	84
	
i1l2463:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l925:	
	line	85
	line	86
	
i1l914:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
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
