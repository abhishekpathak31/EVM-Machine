
_main:

;MyProject.c,19 :: 		void main() {
;MyProject.c,20 :: 		int a=0,b=0;
	CLRF       main_a_L0+0
	CLRF       main_a_L0+1
	CLRF       main_b_L0+0
	CLRF       main_b_L0+1
	CLRF       main_c_L0+0
	CLRF       main_c_L0+1
	CLRF       main_d_L0+0
	CLRF       main_d_L0+1
	CLRF       main_e_L0+0
	CLRF       main_e_L0+1
;MyProject.c,22 :: 		trisd=1;
	MOVLW      1
	MOVWF      TRISD+0
;MyProject.c,23 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,24 :: 		trisc=0;
	CLRF       TRISC+0
;MyProject.c,25 :: 		portc=0;
	CLRF       PORTC+0
;MyProject.c,27 :: 		while(1)
L_main0:
;MyProject.c,29 :: 		Lcd_Init(); // Initialize Lcd
	CALL       _Lcd_Init+0
;MyProject.c,30 :: 		Lcd_Cmd(_LCD_CLEAR); // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,31 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,32 :: 		Lcd_Out(1, 1,"press button"); // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,33 :: 		Lcd_Out(2, 1,"cast your vote"); // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,35 :: 		while(portd==0)
L_main2:
	MOVF       PORTD+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;MyProject.c,37 :: 		}
	GOTO       L_main2
L_main3:
;MyProject.c,39 :: 		if (portd==0b00100000)
	MOVF       PORTD+0, 0
	XORLW      32
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;MyProject.c,41 :: 		e=1;
	MOVLW      1
	MOVWF      main_e_L0+0
	MOVLW      0
	MOVWF      main_e_L0+1
;MyProject.c,42 :: 		}
L_main4:
;MyProject.c,43 :: 		while (e==1)
L_main5:
	MOVLW      0
	XORWF      main_e_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVLW      1
	XORWF      main_e_L0+0, 0
L__main19:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;MyProject.c,45 :: 		Lcd_Cmd(_LCD_CLEAR); // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,46 :: 		Lcd_Out(1,1,"1:C1 2:C2"); // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,47 :: 		Lcd_Out(2,1,"3:C3 4:C4"); // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,48 :: 		while(portd==0)
L_main7:
	MOVF       PORTD+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;MyProject.c,50 :: 		}
	GOTO       L_main7
L_main8:
;MyProject.c,51 :: 		portc=0b00000001;
	MOVLW      1
	MOVWF      PORTC+0
;MyProject.c,52 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;MyProject.c,53 :: 		portc=0b00000000;
	CLRF       PORTC+0
;MyProject.c,54 :: 		Lcd_Out(2,1,"voting");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,56 :: 		if (portd==0b00000001)
	MOVF       PORTD+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main10
;MyProject.c,58 :: 		a=a+1;
	INCF       main_a_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_a_L0+1, 1
;MyProject.c,59 :: 		e=0;
	CLRF       main_e_L0+0
	CLRF       main_e_L0+1
;MyProject.c,60 :: 		}
L_main10:
;MyProject.c,61 :: 		if (portd==0b00000010)
	MOVF       PORTD+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;MyProject.c,63 :: 		b=b+1;
	INCF       main_b_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_b_L0+1, 1
;MyProject.c,64 :: 		e=0;
	CLRF       main_e_L0+0
	CLRF       main_e_L0+1
;MyProject.c,65 :: 		}
L_main11:
;MyProject.c,66 :: 		if (portd==0b00000100)
	MOVF       PORTD+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L_main12
;MyProject.c,68 :: 		c=c+1;
	INCF       main_c_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_c_L0+1, 1
;MyProject.c,69 :: 		e=0;
	CLRF       main_e_L0+0
	CLRF       main_e_L0+1
;MyProject.c,70 :: 		}
L_main12:
;MyProject.c,71 :: 		if (portd==0b00001000)
	MOVF       PORTD+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L_main13
;MyProject.c,73 :: 		d=d+1;
	INCF       main_d_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_d_L0+1, 1
;MyProject.c,74 :: 		e=0;
	CLRF       main_e_L0+0
	CLRF       main_e_L0+1
;MyProject.c,75 :: 		}
L_main13:
;MyProject.c,76 :: 		if (portd==0b00010000)
	MOVF       PORTD+0, 0
	XORLW      16
	BTFSS      STATUS+0, 2
	GOTO       L_main14
;MyProject.c,78 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,79 :: 		inttostr(a, txt);
	MOVF       main_a_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       main_a_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,80 :: 		inttostr(b, txt1);
	MOVF       main_b_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       main_b_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _txt1+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,81 :: 		inttostr(c, txt2);
	MOVF       main_c_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       main_c_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _txt2+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,82 :: 		inttostr(d, txt3);
	MOVF       main_d_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       main_d_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _txt3+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,83 :: 		delay_ms(250);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
;MyProject.c,84 :: 		Lcd_out(1,1,"1:"); // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,85 :: 		Lcd_out(1,4,txt); // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,86 :: 		Lcd_out(2,1,"2:"); // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,87 :: 		Lcd_out(2,4,txt2); // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,88 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
;MyProject.c,89 :: 		Lcd_out(1,1,"3:"); // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,90 :: 		Lcd_out(1,4,txt1); // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,91 :: 		Lcd_out(2,1,"4:"); // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,92 :: 		Lcd_out(2,4,txt3); // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,93 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
;MyProject.c,94 :: 		}
L_main14:
;MyProject.c,96 :: 		}
	GOTO       L_main5
L_main6:
;MyProject.c,97 :: 		}
	GOTO       L_main0
;MyProject.c,98 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
