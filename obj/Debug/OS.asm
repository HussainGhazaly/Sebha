;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW32)
; This file was generated Fri Dec 27 16:45:01 2019
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"OS.c"
	list	p=16f877a
	radix dec
	include "p16f877a.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_DISP_Init
	extern	_DISP_Update
	extern	_SSD_Init
	extern	_SSD_GetState
	extern	_SSD_SetState
	extern	_SSD_GetSymbol
	extern	_SSD_SetSymbol
	extern	_SSD_Update
	extern	_CNT_Init
	extern	_CNT_GetCounter
	extern	_CNT_Update
	extern	_SW_Init
	extern	_SW_GetState
	extern	_SW_Update
	extern	_STATUSbits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_PORTDbits
	extern	_PORTEbits
	extern	_INTCONbits
	extern	_PIR1bits
	extern	_PIR2bits
	extern	_T1CONbits
	extern	_T2CONbits
	extern	_SSPCONbits
	extern	_CCP1CONbits
	extern	_RCSTAbits
	extern	_CCP2CONbits
	extern	_ADCON0bits
	extern	_OPTION_REGbits
	extern	_TRISAbits
	extern	_TRISBbits
	extern	_TRISCbits
	extern	_TRISDbits
	extern	_TRISEbits
	extern	_PIE1bits
	extern	_PIE2bits
	extern	_PCONbits
	extern	_SSPCON2bits
	extern	_SSPSTATbits
	extern	_TXSTAbits
	extern	_CMCONbits
	extern	_CVRCONbits
	extern	_ADCON1bits
	extern	_EECON1bits
	extern	_INDF
	extern	_TMR0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_PORTD
	extern	_PORTE
	extern	_PCLATH
	extern	_INTCON
	extern	_PIR1
	extern	_PIR2
	extern	_TMR1
	extern	_TMR1L
	extern	_TMR1H
	extern	_T1CON
	extern	_TMR2
	extern	_T2CON
	extern	_SSPBUF
	extern	_SSPCON
	extern	_CCPR1
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_CCP1CON
	extern	_RCSTA
	extern	_TXREG
	extern	_RCREG
	extern	_CCPR2
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP2CON
	extern	_ADRESH
	extern	_ADCON0
	extern	_OPTION_REG
	extern	_TRISA
	extern	_TRISB
	extern	_TRISC
	extern	_TRISD
	extern	_TRISE
	extern	_PIE1
	extern	_PIE2
	extern	_PCON
	extern	_SSPCON2
	extern	_PR2
	extern	_SSPADD
	extern	_SSPSTAT
	extern	_TXSTA
	extern	_SPBRG
	extern	_CMCON
	extern	_CVRCON
	extern	_ADRESL
	extern	_ADCON1
	extern	_EEDATA
	extern	_EEADR
	extern	_EEDATH
	extern	_EEADRH
	extern	_EECON1
	extern	_EECON2
	extern	__mulchar
	extern	___sdcc_saved_fsr

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_OS_Schedule
	global	_OS_Update
	global	_OS_GoToSleep
	global	_OS_Start
	global	_OS_Init

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_OS_0	udata
r0x1002	res	1
r0x1004	res	1
r0x1005	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_OS_0	idata
_OS_Flag
	db	0x00

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x4
__sdcc_interrupt
;***
;  pBlock Stats: dbName = I
;***
;entry:  _OS_Update	;Function start
; 0 exit points
;2 compiler assigned registers:
;   r0x1004
;   r0x1005
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=12previous max_key=0 
_OS_Update	;Function start
; 0 exit points
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2407:genFunction
	.line	30; "OS.c"	void OS_Update(void) __interrupt 0
	MOVWF	WSAVE
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2408:genFunction
	SWAPF	STATUS,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2413:genFunction
	CLRF	STATUS
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2414:genFunction
	MOVWF	SSAVE
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2416:genFunction
	MOVF	PCLATH,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2418:genFunction
	CLRF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2419:genFunction
	MOVWF	PSAVE
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2421:genFunction
	MOVF	FSR,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2422:genFunction
	BANKSEL	___sdcc_saved_fsr
	MOVWF	___sdcc_saved_fsr
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6523 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	32; "OS.c"	TMR_CLEAR_FLAG;
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0, size = 1
;; 	line = 6937 result AOP_DIR=_TMR0, size=1, left -=-, size=0, right AOP_LIT=0xd8, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7030:genAssign
	.line	33; "OS.c"	TMR_UPDATE_REGISTER(OS_TICK_MS);
	MOVLW	0xd8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7032:genAssign
;;	1009
;;	1028  _TMR0   offset=0
	MOVWF	_TMR0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	613
;;	aopForRemat 392
;;	418: rname _PORTCbits, val 0, const = 0
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5760:genUnpackBits *{*
;; ***	genUnpackBits  5761
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5799:genUnpackBits
;;	1109 rIdx = r0x104B 
	.line	34; "OS.c"	RC7 = 1 ^ RC7;
	BANKSEL	r0x1004
	CLRF	r0x1004
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5805:genUnpackBits
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
	BANKSEL	_PORTCbits
	BTFSS	_PORTCbits,7
	GOTO	_00001_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5835:genUnpackBits
;;	1109 rIdx = r0x104B 
	BANKSEL	r0x1004
	INCF	r0x1004,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104C, size=1, left -=-, size=0, right AOP_REG=r0x104B, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1109 rIdx = r0x104B 
_00001_DS_
	BANKSEL	r0x1004
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104C 
	MOVWF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4501:genXor *{*
;; ***	genXor  4502
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4708:genXor
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4709:genXor
;;	1109 rIdx = r0x104C 
	XORWF	r0x1005,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4710:genXor
;;	1109 rIdx = r0x104B 
	MOVWF	r0x1004
	MOVWF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _PORTCbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	694 register type nRegs=1
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
;; 	line = 6523 result AOP_PCODE=_PORTCbits, size=2, left -=-, size=0, right AOP_REG=r0x104C, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6354:genPackBits
;;	1109 rIdx = r0x104C 
	RRF	r0x1005,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6355:genPackBits
	BTFSC	STATUS,0
	GOTO	_00002_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6356:genPackBits
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
	BANKSEL	_PORTCbits
	BCF	_PORTCbits,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6357:genPackBits
_00002_DS_
	BTFSS	STATUS,0
	GOTO	_00003_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6358:genPackBits
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
	BANKSEL	_PORTCbits
	BSF	_PORTCbits,7
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _OS_Flag, size = 1
;; 	line = 6937 result AOP_DIR=_OS_Flag, size=1, left -=-, size=0, right AOP_LIT=0x01, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7030:genAssign
_00003_DS_
	.line	35; "OS.c"	OS_Flag = 1;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7032:genAssign
;;	1009
;;	1028  _OS_Flag   offset=0
	BANKSEL	_OS_Flag
	MOVWF	_OS_Flag
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2622:genEndFunction
	BANKSEL	___sdcc_saved_fsr
	MOVF	___sdcc_saved_fsr,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2623:genEndFunction
	BANKSEL	FSR
	MOVWF	FSR
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2625:genEndFunction
	MOVF	PSAVE,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2626:genEndFunction
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2627:genEndFunction
	CLRF	STATUS
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2629:genEndFunction
	SWAPF	SSAVE,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2630:genEndFunction
	MOVWF	STATUS
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2631:genEndFunction
	SWAPF	WSAVE,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2632:genEndFunction
	SWAPF	WSAVE,W
END_OF_INTERRUPT
	RETFIE	
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_OS	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _OS_Schedule	;Function start
; 2 exit points
;has an exit
;functions called:
;   _SSD_Update
;   _SW_Update
;   _CNT_Update
;   _DISP_Update
;   _OS_GoToSleep
;   _SSD_Update
;   _SW_Update
;   _CNT_Update
;   _DISP_Update
;   _OS_GoToSleep
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=16previous max_key=0 
_OS_Schedule	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;; ***	aopForSym 315
;;	327 sym->rname = _OS_Flag, size = 1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
_00121_DS_
	.line	43; "OS.c"	while(OS_Flag == 0);
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1533:pic14_toBoolean
;;	1009
;;	1028  _OS_Flag   offset=0
	BANKSEL	_OS_Flag
	IORWF	_OS_Flag,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6813:genIfx
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6814:genIfx
;; ***	popGetLabel  key=1, label offset 20
	GOTO	_00121_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _OS_Flag, size = 1
;; 	line = 6937 result AOP_DIR=_OS_Flag, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _OS_Flag   offset=0
	.line	44; "OS.c"	OS_Flag = 0;
	CLRF	_OS_Flag
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	.line	46; "OS.c"	SSD_Update();
	PAGESEL	_SSD_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_SSD_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	.line	47; "OS.c"	SW_Update();
	PAGESEL	_SW_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_SW_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	.line	48; "OS.c"	CNT_Update();
	PAGESEL	_CNT_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_CNT_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	.line	49; "OS.c"	DISP_Update();
	PAGESEL	_DISP_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_DISP_Update
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	.line	52; "OS.c"	OS_GoToSleep();
	CALL	_OS_GoToSleep
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _OS_Schedule

;***
;  pBlock Stats: dbName = C
;***
;entry:  _OS_GoToSleep	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=8previous max_key=0 
_OS_GoToSleep	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	.line	29; "OS.c"	}
	RETURN	
; exit point of _OS_GoToSleep
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _OS_Start	;Function start
; 2 exit points
;has an exit
;functions called:
;   __mulchar
;   __mulchar
;3 compiler assigned registers:
;   r0x1002
;   STK00
;   r0x1003
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=4previous max_key=0 
_OS_Start	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1049, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1049 
	.line	17; "OS.c"	void OS_Start(tByte tick)
	BANKSEL	r0x1002
	MOVWF	r0x1002
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6523 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	19; "OS.c"	TMR_CLEAR_FLAG;
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 2886 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x1049, size=1, right AOP_LIT=0x08, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x1049, size=1, right AOP_LIT=0x08, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
	.line	20; "OS.c"	TMR_UPDATE_REGISTER(tick);
	MOVLW	0x08
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1049 
	BANKSEL	r0x1002
	MOVF	r0x1002,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104A 
;;1	MOVWF	r0x1003
	BANKSEL	r0x1002
	MOVWF	r0x1002
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1679:genUminus *{*
;; ***	genUminus  1681
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TMR0, size = 1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1716:genUminus
;;	1109 rIdx = r0x1049 
	COMF	r0x1002,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1717:genUminus
;;	1009
;;	1028  _TMR0   offset=0
	BANKSEL	_TMR0
	MOVWF	_TMR0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1721:genUminus
;;	1009
;;	1028  _TMR0   offset=0
	INCF	_TMR0,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6523 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	21; "OS.c"	TMR_ENABLE_INTERRUPT;
	BSF	_INTCONbits,5
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _INTCONbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; 	line = 6523 result AOP_PCODE=_INTCONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTCONbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	22; "OS.c"	GLOBAL_INTERRUPT_ENABLE;
	BSF	_INTCONbits,7
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	23; "OS.c"	TMR_ENABLE_CLOCK;
	BANKSEL	_OPTION_REGbits
	BCF	_OPTION_REGbits,5
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _OS_Start
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;entry:  _OS_Init	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=0previous max_key=0 
_OS_Init	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	10; "OS.c"	TMR_SET_PRESCALER_256;
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	BSF	_OPTION_REGbits,1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	BSF	_OPTION_REGbits,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	BCF	_OPTION_REGbits,3
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _OPTION_REGbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; 	line = 6523 result AOP_PCODE=_OPTION_REGbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_OPTION_REGbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	11; "OS.c"	TMR_DISABLE_CLOCK;
	BSF	_OPTION_REGbits,5
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _OS_Flag, size = 1
;; 	line = 6937 result AOP_DIR=_OS_Flag, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _OS_Flag   offset=0
	.line	12; "OS.c"	OS_Flag = 0;
	BANKSEL	_OS_Flag
	CLRF	_OS_Flag
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _TRISCbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISCbits
;; 	line = 6523 result AOP_PCODE=_TRISCbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_TRISCbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	13; "OS.c"	TRISC7=0;
	BANKSEL	_TRISCbits
	BCF	_TRISCbits,7
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	613
;;	aopForRemat 392
;;	418: rname _PORTCbits, val 0, const = 0
;; ***	genNearPointerSet  6521
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
;; 	line = 6523 result AOP_PCODE=_PORTCbits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6275:genPackBits
	.line	14; "OS.c"	RC7=0;
	BANKSEL	_PORTCbits
	BCF	_PORTCbits,7
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _OS_Init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*


;	code size estimation:
;	   76+   32 =   108 instructions (  280 byte)

	end
