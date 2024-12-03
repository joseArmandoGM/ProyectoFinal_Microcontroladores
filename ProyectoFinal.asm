;Programa que muestra Jose en una matriz 8x8
LIST P=16F877A
#include<p16f877a.inc>
__config H'3F71';
    
PUERTOD EQU 0X08
ESTADO EQU 0X03
PUERTOB EQU 0X06
Auxiliar equ 0x22
Auxiliar2 equ 0x23
Auxiliar3 equ 0x24
CONTA1 equ 0X25
CONTA2 equ 0x26
CONTA3 equ 0x27
CONTA4 equ 0x28
CONTA5 equ 0x29
CONTA6 equ 0x2A
CONTA7 equ 0x2B
CONTA8 equ 0x2C
CONTA9 equ 0X2D
CONTA10 equ 0x2E
CONTA11 equ 0x2F
ORG 0X00;  
GOTO inicio
 org 0x05
 inicio bsf ESTADO,5
 movlw 0x00
 movwf PUERTOB;Catodos
 movlw 0x00
 movwf PUERTOD;Anodos
 bcf ESTADO,5
 clrf PUERTOD
 movlw .50;
 movwf CONTA1
 movlw .50;
 movwf CONTA2
 movlw .50;
 movwf CONTA3
 movlw .50;
 movwf CONTA4
 movlw .50;
 movwf CONTA5
 movlw .50;
 movwf CONTA6
 movlw .50;
 movwf CONTA7
 movlw .50;
 movwf CONTA8
 movlw .50;
 movwf CONTA9
 movlw .50;
 movwf CONTA10
 movlw .50;
 movwf CONTA11
 ;Empieza el programa

cicloJ movlw b'11111110'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      ;Hilera numero uno
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      ;Hilera numero dos
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      ;Hilera numero tres
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      ;Hilera numero cuatro
      
      movlw b'00000000'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      ;Hilera numero cinco
      
      movlw b'11111110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      ;Hilera numero seis
      
      movlw b'11111110'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      ;Hilera numero siete
      
      movlw b'11111110'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      call retardo100ms
      ;Hilera numero ocho
      
      decfsz CONTA1,1;
      goto cicloJ
      clrf PUERTOD
      movlw .50;
      movwf CONTA1;
      
      
      
      cicloO movlw b'11111111'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      ;O1
      
      movlw b'10000001'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      ;O2
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      ;O3
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      ;O4
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      ;O5
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      ;O6
      
      movlw b'10000001'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      ;O7
      movlw b'11111111'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      call retardo100ms
      ;O8
      
      decfsz CONTA2,1;
      goto cicloO
      clrf PUERTOD
      movlw .50;
      movwf CONTA2;
      
      ;S1
      cicloS movlw b'01111111'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      
      ;S2
      movlw b'01110000'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      
      ;S3
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      
      ;S4
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      
      ;S5
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'0010000'
      movwf PUERTOD
      call retardo100ms
      
      ;S6
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      
      ;S7
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      
      ;S8
      movlw b'00000110'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      
      decfsz CONTA3,1
      goto cicloS
      clrf PUERTOD
      movlw .50;
      movwf CONTA3
      
      ;E1
      cicloE  movlw b'00000000'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      
      ;E2
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      
      ;E3
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      
      ;E4
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      
      ;E5
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      
      ;E6
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      
      ;E7
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      
      ;E8
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      
      decfsz CONTA4,1;
      goto cicloE;
      clrf PUERTOD
      movlw .50
      movwf CONTA4;
      
      cicloAA movlw b'00000001'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      ;AA1
      
      movlw b'11110100'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      ;AA2
      
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      ;AA3
      
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      ;AA4
      
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      ;AA5
      
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      ;AA6
      
      movlw b'11110100'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      ;AA7
      
      movlw b'00000001'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      call retardo100ms
      ;AA8
      
      decfsz CONTA5,1;
      goto cicloAA
      clrf PUERTOD
      movlw .50;
      movwf CONTA5;
      
      ;R1
      cicloR  movlw b'00000000'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      
      ;R2
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      
      ;R3
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      
      ;R4
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      
      ;R5
      movlw b'11100110'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      
      ;R6
      movlw b'11010110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      
      ;R7
      movlw b'10110000'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      
      ;R8
      movlw b'01111111'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      
      decfsz CONTA6,1;
      goto cicloR;
      clrf PUERTOD
      movlw .50
      movwf CONTA6;
      
      ;M1
      cicloM  movlw b'00000000'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      
      ;M2
      movlw b'11111101'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      
      ;M3
      movlw b'11111011'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      
      ;M4
      movlw b'11110111'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      
      ;M5
      movlw b'11110111'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      
      ;M6
      movlw b'11111011'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      
      ;M7
      movlw b'11111101'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      
      ;M8
      movlw b'00000000'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      
      decfsz CONTA7,1;
      goto cicloM;
      clrf PUERTOD
      movlw .50
      movwf CONTA7;
      
      cicloAAA movlw b'00000001'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      ;AAA1
      
      movlw b'11110100'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      ;AAA2
      
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      ;AAA3
      
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      ;AAA4
      
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      ;AAA5
      
      movlw b'11110110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      ;AAA6
      
      movlw b'11110100'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      ;AAA7
      
      movlw b'00000001'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      call retardo100ms
      ;AAA8
      
      decfsz CONTA8,1;
      goto cicloAAA
      clrf PUERTOD
      movlw .50;
      movwf CONTA8;
      
      cicloN movlw b'00000000'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      ;N1
      
      movlw b'11111101'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      ;N2
      
      movlw b'11111011'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      ;N3
      
      movlw b'11110111'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      ;N4
      
      movlw b'11101111'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      ;N5
      
      movlw b'11011111'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      ;N6
      
      movlw b'10111111'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      ;N7
      
      movlw b'00000000'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      call retardo100ms
      ;N 8
      
      decfsz CONTA9,1;
      goto cicloN
      clrf PUERTOD
      movlw .50;
      movwf CONTA9;
      
      cicloD movlw b'00000000'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      ;D1
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      ;D2
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      ;D3
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      ;D4
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      ;D5
      
      movlw b'10111101'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      ;D6
      
      movlw b'11000011'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      ;D7
      
      movlw b'11111111'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      call retardo100ms
      ;D8
      
      decfsz CONTA10,1;
      goto cicloD
      clrf PUERTOD
      movlw .50;
      movwf CONTA10;
      
      
      cicloOO movlw b'11111111'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      ;OO1
      
      movlw b'10000001'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      ;OO2
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      ;OO3
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      ;OO4
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      ;OO5
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      ;OO6
      
      movlw b'10000001'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      ;OO7
      movlw b'11111111'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      call retardo100ms
      ;OO8
      
      decfsz CONTA11,1;
      goto cicloOO
      clrf PUERTOD
      movlw .50;
      movwf CONTA11;
      
      
      goto cicloJ
      
      
      
      retardo100ms movlw .2;
	 movwf Auxiliar2;
	 aqui movlw .249;
	 movwf Auxiliar;
	 bucle nop;
	 decfsz Auxiliar,1;
	 goto bucle;
	 decfsz Auxiliar2,1;
	 goto aqui;
	 return
	 end
