# MPLAB IDE generated this makefile for use with GNU make.
# Project: MSPI.mcp
# Date: Mon Nov 07 17:51:15 2022

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

MSPI.cof : MSPI.o
	$(CC) /p16F887 "MSPI.o" /u_DEBUG /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /o"MSPI.cof" /M"MSPI.map" /W

MSPI.o : MSPI.asm ../../../../Program\ Files\ (x86)/Microchip/MPASM\ Suite/P16F887.INC
	$(AS) /q /p16F887 "MSPI.asm" /l"MSPI.lst" /e"MSPI.err" /o"MSPI.o" /d__DEBUG=1

clean : 
	$(CC) "MSPI.o" "MSPI.err" "MSPI.lst" "MSPI.cof" "MSPI.hex"

