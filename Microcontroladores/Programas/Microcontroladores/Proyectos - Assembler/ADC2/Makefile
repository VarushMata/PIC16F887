# MPLAB IDE generated this makefile for use with GNU make.
# Project: ADC2.mcp
# Date: Mon Mar 14 22:37:55 2022

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

ADC2.cof : ADC2.o
	$(CC) /p16F887 "ADC2.o" /z__MPLAB_BUILD=1 /o"ADC2.cof" /M"ADC2.map" /W /x

ADC2.o : ADC2.asm ../../../../../../../Program\ Files\ (x86)/Microchip/MPASM\ Suite/P16F887.INC
	$(AS) /q /p16F887 "ADC2.asm" /l"ADC2.lst" /e"ADC2.err"

clean : 
	$(CC) "ADC2.o" "ADC2.hex" "ADC2.err" "ADC2.lst" "ADC2.cof"

