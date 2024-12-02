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
ORG 0X00;  
GOTO inicio
 org 0x05
 inicio bsf ESTADO,5
 movlw 0x00
 movwf PUERTOB; catodo
 movlw 0x00
 movwf PUERTOD;anodo
 bcf ESTADO,5
 clrf PUERTOD
 movlw .20;
 movwf CONTA1
 movlw .20;
 movwf CONTA2
 movlw .20;
 movwf CONTA3
 movlw .20;
 movwf CONTA4
 ;empieza el programa

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
      
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      decfsz CONTA1,1;
      goto cicloJ
      movlw .20;
      movwf CONTA1;
      
      
      
      cicloO movlw b'11111111'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'10000001'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      
       movlw b'01111110'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      
       movlw b'10000001'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'11111111'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      decfsz CONTA2,1;
      goto cicloO
      movlw .20;
      movwf CONTA2;
      
      
      cicloS movlw b'01111111'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110000'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'0010000'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'00000110'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      decfsz CONTA3,1
      goto cicloS
      movlw .20;
      movwf CONTA3
      
      cicloE  movlw b'00000000'
      movwf PUERTOB 
      movlw b'00000001'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00000010'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00000100'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00001000'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00010000'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'00100000'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01110110'
      movwf PUERTOB 
      movlw b'01000000'
      movwf PUERTOD
      call retardo100ms
      
      movlw b'01111110'
      movwf PUERTOB 
      movlw b'10000000'
      movwf PUERTOD
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      call retardo100ms
      decfsz CONTA4,1;
      goto cicloE;
      movlw .20
      movwf CONTA4;
      goto cicloJ
      
      
      
      retardo100ms movlw .2;
	 movwf Auxiliar2;
	 aqui movwf .249;
	 movwf Auxiliar;
	 bucle nop;
	 decfsz Auxiliar,1;
	 goto bucle;
	 decfsz Auxiliar2,1;
	 goto aqui;
	 return
	 end