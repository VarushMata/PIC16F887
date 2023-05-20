# MPLAB IDE generated this makefile for use with GNU make.
# Project: PWM.mcp
# Date: Sun Mar 27 00:26:55 2022

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

PWM.cof : PWM.o
	$(CC) /p16F887 "PWM.o" /z__MPLAB_BUILD=1 /o"PWM.cof" /M"PWM.map" /W /x

PWM.o : PWM.asm ../../../../../../../Program\ Files\ (x86)/Microchip/MPASM\ Suite/P16F887.INC
	$(AS) /q /p16F887 "PWM.asm" /l"PWM.lst" /e"PWM.err"

clean : 
	$(CC) "PWM.o" "PWM.hex" "PWM.err" "PWM.lst" "PWM.cof"

