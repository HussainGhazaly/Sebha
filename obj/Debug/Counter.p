pcode dump


	New pBlock

GSINIT  (CODE), dbName =D
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _CNT_Update_CNT_Update_Counter_1_17, size = 1
;; 	line = 6937 result AOP_DIR=_CNT_Update_CNT_Update_Counter_1_17, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _CNT_Update_CNT_Update_Counter_1_17   offset=0
	.line	23; "Counter.c"	static tByte CNT_Update_Counter = 0;
	CLRF	_CNT_Update_CNT_Update_Counter_1_17

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=8previous max_key=0 
_CNT_Update	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;; ***	aopForSym 315
;;	327 sym->rname = _CNT_Update_CNT_Update_Counter_1_17, size = 1
;;	575
;; 	line = 618 result AOP_DIR=_CNT_Update_CNT_Update_Counter_1_17, size=1, left AOP_DIR=_CNT_Update_CNT_Update_Counter_1_17, size=1, right AOP_LIT=0x05, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
;;	adding lit to something. size 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:233:genAddLit2byte *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:245:genAddLit2byte
	.line	26; "Counter.c"	CNT_Update_Counter += OS_TICK_MS;
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:246:genAddLit2byte
;;	1009
;;	1028  _CNT_Update_CNT_Update_Counter_1_17   offset=0
	ADDWF	_CNT_Update_CNT_Update_Counter_1_17,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3583:genCmpLt *{*
;; ***	genCmpLt  3584
;; ***	aopForSym 315
;;	327 sym->rname = _CNT_Update_CNT_Update_Counter_1_17, size = 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;unsigned compare: left < lit(0x14=20), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	.line	27; "Counter.c"	if (CNT_Update_Counter < CNT_UPDATE_PERIOD_MS)
	MOVLW	0x14
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1009
;;	1028  _CNT_Update_CNT_Update_Counter_1_17   offset=0
	.line	29; "Counter.c"	return;
	SUBWF	_CNT_Update_CNT_Update_Counter_1_17,W
	.line	31; "Counter.c"	CNT_Update_Counter = 0;
	BTFSS	STATUS,0
	GOTO	_00122_DS_
	CLRF	_CNT_Update_CNT_Update_Counter_1_17
	.line	35; "Counter.c"	if (SW_GetState(SW_RESET) == SW_PRE_PRESSED)
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	_SW_GetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_SW_GetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x104A, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1003
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=8, label offset 12
	GOTO	_00120_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _CNT_Counter, size = 2
;; 	line = 6937 result AOP_DIR=_CNT_Counter, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _CNT_Counter   offset=0
	.line	37; "Counter.c"	CNT_Counter = 0;
	CLRF	_CNT_Counter
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _CNT_Counter   offset=1
	CLRF	(_CNT_Counter + 1)
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=10, label offset 12
	GOTO	_00122_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2086:genCall *{*
;; ***	genCall  2088
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1801:saveRegisters *{*
;; ***	saveRegisters  1803
;; 	2135 left AOP_LIT
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1361:mov2w_op
_00120_DS_
	.line	38; "Counter.c"	} else if (SW_GetState(SW_PLUS) == SW_PRE_RELEASED)
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2173:genCall
	PAGESEL	_SW_GetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_SW_GetState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2181:genCall
	PAGESEL	$
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x104A, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1003
	XORLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=10, label offset 12
	GOTO	_00122_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;; ***	aopForSym 315
;;	327 sym->rname = _CNT_Counter, size = 2
;; 	line = 618 result AOP_DIR=_CNT_Counter, size=2, left AOP_DIR=_CNT_Counter, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1009
;;	1028  _CNT_Counter   offset=0
	.line	40; "Counter.c"	CNT_Counter++;
	INCF	_CNT_Counter,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:173:genPlusIncr
;;	1009
;;	1028  _CNT_Counter   offset=1
	INCF	(_CNT_Counter + 1),F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3619:genCmpEq *{*
;; ***	genCmpEq  3620
;; ifx is non-null
;; ***	aopForSym 315
;;	327 sym->rname = _CNT_Counter, size = 2
;; 	line = 3631 result AOP_CRY=0x00, size=0, left AOP_DIR=_CNT_Counter, size=2, right AOP_LIT=0xe8, size=2
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _CNT_Counter   offset=0
	.line	41; "Counter.c"	if (CNT_Counter == 1000)
	MOVF	_CNT_Counter,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3685:genCmpEq
	XORLW	0xe8
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=10, label offset 12
	GOTO	_00122_DS_
;; ***	mov2w  1381  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _CNT_Counter   offset=1
	MOVF	(_CNT_Counter + 1),W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3685:genCmpEq
	XORLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=10, label offset 12
	GOTO	_00122_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _CNT_Counter, size = 2
;; 	line = 6937 result AOP_DIR=_CNT_Counter, size=2, left -=-, size=0, right AOP_LIT=0x00, size=2
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _CNT_Counter   offset=0
	.line	43; "Counter.c"	CNT_Counter = 0;
	CLRF	_CNT_Counter
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _CNT_Counter   offset=1
	CLRF	(_CNT_Counter + 1)
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
_00122_DS_
	RETURN	
; exit point of _CNT_Update
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=4previous max_key=0 
_CNT_GetCounter	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2683:genRet *{*
;; ***	genRet  2685
;; ***	aopForSym 315
;;	327 sym->rname = _CNT_Counter, size = 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _CNT_Counter   offset=0
	.line	18; "Counter.c"	return CNT_Counter;
	MOVF	_CNT_Counter,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1416:pass_argument
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _CNT_Counter   offset=1
	MOVF	(_CNT_Counter + 1),W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _CNT_GetCounter
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=0previous max_key=0 
_CNT_Init	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;; ***	aopForSym 315
;;	327 sym->rname = _CNT_Counter, size = 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_DIR=_CNT_Counter, size=2, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1009
;;	1028  _CNT_Counter   offset=1
	.line	11; "Counter.c"	void CNT_Init(tWord counter)
	MOVWF	(_CNT_Counter + 1)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1423:get_returnvalue
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1009
;;	1028  _CNT_Counter   offset=0
	MOVWF	_CNT_Counter
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	.line	13; "Counter.c"	CNT_Counter = counter;
	RETURN	
; exit point of _CNT_Init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*
