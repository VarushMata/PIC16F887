# MPLAB IDE generated this makefile for use with GNU make.
# Project: 88D1.mcp
# Date: Sun Mar 20 18:58:35 2022

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

88D1.cof : 88D1.o
	$(CC) /p16F887 "88D1.o" /u_DEBUG /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /o"88D1.cof" /M"88D1.map" /W /x

88D1.o : 88D1.asm ../../../../../../../Program\ Files\ (x86)/Microchip/MPASM\ Suite/P16F887.INC
	$(AS) /q /p16F887 "88D1.asm" /l"88D1.lst" /e"88D1.err" /d__DEBUG=1

clean : 
	$(CC) "88D1.o" "88D1.hex" "88D1.err" "88D1.lst" "88D1.cof"

