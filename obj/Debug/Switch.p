pcode dump


	New pBlock

GSINIT  (CODE), dbName =D
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _SW_Update_SW_Update_Counter_1_16, size = 1
;; 	line = 6937 result AOP_DIR=_SW_Update_SW_Update_Counter_1_16, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _SW_Update_SW_Update_Counter_1_16   offset=0
	.line	73; "Switch.c"	static tByte SW_Update_Counter = 0;
	CLRF	_SW_Update_SW_Update_Counter_1_16

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=33previous max_key=0 
_SW_Update	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;; ***	aopForSym 315
;;	327 sym->rname = _SW_Update_SW_Update_Counter_1_16, size = 1
;;	575
;; 	line = 618 result AOP_DIR=_SW_Update_SW_Update_Counter_1_16, size=1, left AOP_DIR=_SW_Update_SW_Update_Counter_1_16, size=1, right AOP_LIT=0x05, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
;;	adding lit to something. size 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:233:genAddLit2byte *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:245:genAddLit2byte
	.line	77; "Switch.c"	SW_Update_Counter += OS_TICK_MS;
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:246:genAddLit2byte
;;	1009
;;	1028  _SW_Update_SW_Update_Counter_1_16   offset=0
	ADDWF	_SW_Update_SW_Update_Counter_1_16,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3583:genCmpLt *{*
;; ***	genCmpLt  3584
;; ***	aopForSym 315
;;	327 sym->rname = _SW_Update_SW_Update_Counter_1_16, size = 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;unsigned compare: left < lit(0x14=20), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	.line	78; "Switch.c"	if (SW_Update_Counter < SW_UPDATE_PERIOD_MS)
	MOVLW	0x14
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1009
;;	1028  _SW_Update_SW_Update_Counter_1_16   offset=0
	.line	80; "Switch.c"	return;
	SUBWF	_SW_Update_SW_Update_Counter_1_16,W
	.line	82; "Switch.c"	SW_Update_Counter = 0;
	BTFSS	STATUS,0
	GOTO	_00163_DS_
	CLRF	_SW_Update_SW_Update_Counter_1_16
	.line	85; "Switch.c"	RC6 = 1^ RC6;
	CLRF	r0x1007
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5805:genUnpackBits
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
	BTFSC	_PORTCbits,6
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5835:genUnpackBits
;;	1109 rIdx = r0x1053 
	INCF	r0x1007,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1054, size=1, left -=-, size=0, right AOP_REG=r0x1053, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1109 rIdx = r0x1053 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x1054 
	MOVWF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4501:genXor *{*
;; ***	genXor  4502
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4708:genXor
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4709:genXor
;;	1109 rIdx = r0x1054 
	XORWF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4710:genXor
;;	1109 rIdx = r0x1053 
	MOVWF	r0x1007
	MOVWF	r0x1008
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
;; 	line = 6523 result AOP_PCODE=_PORTCbits, size=2, left -=-, size=0, right AOP_REG=r0x1054, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6249:genPackBits *{*
;; ***	genPackBits  6250
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6354:genPackBits
;;	1109 rIdx = r0x1054 
	RRF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6355:genPackBits
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6356:genPackBits
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
	BCF	_PORTCbits,6
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6357:genPackBits
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6358:genPackBits
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTCbits
	BSF	_PORTCbits,6
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;;	694 register type nRegs=1
;; 	line = 6937 result AOP_REG=r0x1053, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1109 rIdx = r0x1053 
	.line	86; "Switch.c"	for (index = 0; index < N_SWITCHES; index++)
	CLRF	r0x1007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
_00161_DS_
	.line	89; "Switch.c"	SWs_Info[index].sw_samples[0] = SWs_Info[index].sw_samples[1];
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1053 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1054 
	MOVWF	r0x1008
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x1055 
	CLRF	r0x1009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x1056, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x1054, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x1054 
	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x1056 
	MOVWF	r0x100A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	MOVLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1109 rIdx = r0x1057 
	MOVWF	r0x100B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:774:genPlus
;;	1109 rIdx = r0x1055 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:775:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:776:genPlus
;;	1109 rIdx = r0x1055 
	INCFSZ	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:777:genPlus
;;	1109 rIdx = r0x1057 
	ADDWF	r0x100B,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x1054, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x1054, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x1054 
	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x1054 
	MOVWF	r0x1008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:749:genPlus
;;	1109 rIdx = r0x1055 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:750:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:751:genPlus
;;	1109 rIdx = r0x1055 
	INCFSZ	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:752:genPlus
	ADDLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:753:genPlus
;;	1109 rIdx = r0x1055 
	MOVWF	r0x1009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x1054 
	INCF	r0x1008,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:173:genPlusIncr
;;	1109 rIdx = r0x1055 
	INCF	r0x1009,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1009,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	MOVWF	r0x100C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;;	694 register type nRegs=1
;; 	line = 6523 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_REG=r0x1058, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x100B,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1058 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1056, size=1, left -=-, size=0, right AOP_REG=r0x1053, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1109 rIdx = r0x1053 
	.line	91; "Switch.c"	switch (index)
	MOVF	r0x1007,W
	MOVWF	r0x100A
	BTFSC	STATUS,2
	GOTO	_00140_DS_
	MOVF	r0x1007,W
	XORLW	0x01
	BTFSC	STATUS,2
	GOTO	_00141_DS_
	GOTO	_00143_DS_
_00140_DS_
	.line	94; "Switch.c"	SWs_Info[index].sw_samples[1] = GPIO_ReadPortPin(SW_PLUS_PORT_DR, SW_PLUS_PIN);
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1009
;;	1024  _PORTB   offset=0 - had to alloc by reg name
	ANDWF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1056 
	MOVWF	r0x100A
	MOVWF	r0x100B
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1054, size=2, left -=-, size=0, right AOP_REG=r0x1057, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1009,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1057 
	MOVF	r0x100B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=6, label offset 37
	.line	95; "Switch.c"	break;
	GOTO	_00143_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1056, size=1, left AOP_DIR=_PORTB, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
_00141_DS_
	.line	97; "Switch.c"	SWs_Info[index].sw_samples[1] = GPIO_ReadPortPin(SW_RESET_PORT_DR, SW_RESET_PIN);
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1009
;;	1028  _PORTB   offset=0
	ANDWF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1056 
	MOVWF	r0x100A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5297:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1056 
	RRF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5298:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1057 
	MOVWF	r0x100B
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1054, size=2, left -=-, size=0, right AOP_REG=r0x1057, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1009,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1057 
	MOVF	r0x100B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
_00143_DS_
	.line	106; "Switch.c"	switch(SWs_Info[index].sw_state)
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1053 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1054 
	MOVWF	r0x1008
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x1055 
	CLRF	r0x1009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x1054, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x1054, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x1054 
	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x1054 
	MOVWF	r0x1008
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:749:genPlus
;;	1109 rIdx = r0x1055 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:750:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:751:genPlus
;;	1109 rIdx = r0x1055 
	INCFSZ	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:752:genPlus
	ADDLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:753:genPlus
;;	1109 rIdx = r0x1055 
	MOVWF	r0x1009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1056, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x1054 
	ADDWF	r0x1008,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1056 
	MOVWF	r0x100A
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1057 
	CLRF	r0x100B
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1057 
	RLF	r0x100B,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1055 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1057 
	ADDWF	r0x100B,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x100B,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	MOVWF	r0x100C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3547:genCmpGt *{*
;; ***	genCmpGt  3548
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x1058 
	SUBWF	r0x100C,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3242:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=25, label offset 37
	GOTO	_00162_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7071:genJumpTab *{*
;; ***	genJumpTab  7072
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7087:genJumpTab
;; ***	popGetLabel  key=66, label offset 37
	MOVLW	HIGH(_00203_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7088:genJumpTab
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7089:genJumpTab
;; ***	popGetLabel  key=66, label offset 37
	MOVLW	_00203_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7090:genJumpTab
;;	1109 rIdx = r0x1058 
	ADDWF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7091:genJumpTab
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7092:genJumpTab
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7093:genJumpTab
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=7, label offset 37
_00203_DS_
	GOTO	_00144_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=11, label offset 37
	GOTO	_00148_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=14, label offset 37
	GOTO	_00151_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=18, label offset 37
	GOTO	_00155_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
_00144_DS_
	.line	109; "Switch.c"	if ((SWs_Info[index].sw_samples[0] == SW_PRESSED_LEVEL) &&
	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1009,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	MOVWF	r0x100C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;;	694 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
	MOVF	r0x100C,W
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=25, label offset 37
	GOTO	_00162_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1058, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	.line	110; "Switch.c"	(SWs_Info[index].sw_samples[1] == SW_PRESSED_LEVEL))
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x1054 
	ADDWF	r0x1008,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1058 
	MOVWF	r0x100C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1059 
	CLRF	r0x100D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1059 
	RLF	r0x100D,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1055 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1059 
	ADDWF	r0x100D,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1058 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x100D,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x105A 
	MOVWF	r0x100E
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;;	694 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
	MOVF	r0x100E,W
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=25, label offset 37
	GOTO	_00162_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	.line	112; "Switch.c"	SWs_Info[index].sw_state = SW_PRE_PRESSED;
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x100B,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=25, label offset 37
	.line	117; "Switch.c"	break;
	GOTO	_00162_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1058, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
_00148_DS_
	.line	119; "Switch.c"	if (SWs_Info[index].sw_samples[1] == SW_PRESSED_LEVEL)
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x1054 
	ADDWF	r0x1008,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1058 
	MOVWF	r0x100C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1059 
	CLRF	r0x100D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1059 
	RLF	r0x100D,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1055 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1059 
	ADDWF	r0x100D,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1058 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x100D,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x105A 
	MOVWF	r0x100E
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6759:genIfx *{*
;; ***	genIfx  6760
;;	694 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1522:pic14_toBoolean
	MOVF	r0x100E,W
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6809:genIfx
;; ***	popGetLabel  key=25, label offset 37
	GOTO	_00162_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	.line	121; "Switch.c"	SWs_Info[index].sw_state = SW_PRESSED;
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x100B,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=25, label offset 37
	.line	126; "Switch.c"	break;
	GOTO	_00162_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
_00151_DS_
	.line	128; "Switch.c"	if ((SWs_Info[index].sw_samples[0] == SW_RELEASED_LEVEL) &&
	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1009,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	MOVWF	r0x100C
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=25, label offset 37
	GOTO	_00162_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1058, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	.line	129; "Switch.c"	(SWs_Info[index].sw_samples[1] == SW_RELEASED_LEVEL))
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x1054 
	ADDWF	r0x1008,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1058 
	MOVWF	r0x100C
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x1059 
	CLRF	r0x100D
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x1059 
	RLF	r0x100D,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1055 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x1059 
	ADDWF	r0x100D,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1058 
	MOVF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x100D,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x105A 
	MOVWF	r0x100E
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=25, label offset 37
	GOTO	_00162_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	.line	131; "Switch.c"	SWs_Info[index].sw_state = SW_PRE_RELEASED;
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x100B,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=25, label offset 37
	.line	136; "Switch.c"	break;
	GOTO	_00162_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1054, size=2, left AOP_REG=r0x1054, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x1054 
_00155_DS_
	.line	138; "Switch.c"	if (SWs_Info[index].sw_samples[1] == SW_RELEASED_LEVEL)
	INCF	r0x1008,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:173:genPlusIncr
;;	1109 rIdx = r0x1055 
	INCF	r0x1009,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1054 
	MOVF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1009,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x1058 
	MOVWF	r0x100C
	XORLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=25, label offset 37
	GOTO	_00162_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1056, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1056 
	.line	140; "Switch.c"	SWs_Info[index].sw_state = SW_RELEASED;
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x100B,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=1
;;	575
;; 	line = 618 result AOP_REG=r0x1053, size=1, left AOP_REG=r0x1053, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x1053 
_00162_DS_
	.line	86; "Switch.c"	for (index = 0; index < N_SWITCHES; index++)
	INCF	r0x1007,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3583:genCmpLt *{*
;; ***	genCmpLt  3584
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;unsigned compare: left < lit(0x2=2), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x1053 
	SUBWF	r0x1007,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3244:genSkipc
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=24, label offset 37
	GOTO	_00161_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
_00163_DS_
	RETURN	
; exit point of _SW_Update
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=4previous max_key=25 
_SW_GetState	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x104E, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104E 
	.line	66; "Switch.c"	tSW_State SW_GetState(tSW sw)
	MOVWF	r0x100F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x104F, size=2, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
	.line	68; "Switch.c"	return SWs_Info[sw].sw_state;
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104E 
	MOVF	r0x100F,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1010
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x1050 
	CLRF	r0x1011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x104E, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x104F, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x104F 
	MOVF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x104E 
	MOVWF	r0x100F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	MOVLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1012
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:774:genPlus
;;	1109 rIdx = r0x1050 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:775:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:776:genPlus
;;	1109 rIdx = r0x1050 
	INCFSZ	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:777:genPlus
;;	1109 rIdx = r0x1051 
	ADDWF	r0x1012,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x104E, size=2, left AOP_REG=r0x104E, size=2, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;; hi = 0	genAddLit  328
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:344:genAddLit
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:345:genAddLit
;;	1109 rIdx = r0x104E 
	ADDWF	r0x100F,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:346:genAddLit
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:347:genAddLit
;;	1109 rIdx = r0x1051 
	INCF	r0x1012,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6162:genPointerGet *{*
;; ***	genPointerGet  6163
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5944:genNearPointerGet *{*
;; ***	genNearPointerGet  5945
;;	694 register type nRegs=2
;; ***	genNearPointerGet  5961
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104E 
	MOVF	r0x100F,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1012,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerGet  5988
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5995:genNearPointerGet
	MOVF	INDF,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6002:genNearPointerGet
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1010
	RETURN	
; exit point of _SW_GetState
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
_SW_Init	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1048, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1048 
	.line	25; "Switch.c"	void SW_Init(tSW sw, tSW_State state)
	MOVWF	r0x1013
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x1049, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1423:get_returnvalue
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x1049 
	MOVWF	r0x1014
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
	.line	28; "Switch.c"	TRISC6=0;
	BCF	_TRISCbits,6
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
	.line	29; "Switch.c"	RC6=0;
	BCF	_PORTCbits,6
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_REG=r0x1048, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1109 rIdx = r0x1048 
	.line	30; "Switch.c"	switch (sw)
	MOVF	r0x1013,W
	MOVWF	r0x1015
	BTFSC	STATUS,2
	GOTO	_00105_DS_
	MOVF	r0x1013,W
	XORLW	0x01
	BTFSC	STATUS,2
	GOTO	_00106_DS_
	GOTO	_00108_DS_
_00105_DS_
	.line	33; "Switch.c"	GPIO_InitPortPin(SW_PLUS_PORT_CR, SW_PLUS_PIN, GPIO_IN);
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0xfe, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x1015,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4220:genOr *{*
;; ***	genOr  4221
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 4227 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x01, size=1
;; 	line = 4253 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x01, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4470:genOr
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4471:genOr
;;	1109 rIdx = r0x104A 
	IORWF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4472:genOr
;;	1009
;;	1028  _TRISB   offset=0
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=4, label offset 4
	.line	34; "Switch.c"	break;
	GOTO	_00108_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104A, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISB   offset=0
_00106_DS_
	.line	36; "Switch.c"	GPIO_InitPortPin(SW_RESET_PORT_CR, SW_RESET_PIN, GPIO_IN);
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104A, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x1015,1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4220:genOr *{*
;; ***	genOr  4221
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 4227 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x02, size=1
;; 	line = 4253 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x104A, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4470:genOr
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4471:genOr
;;	1109 rIdx = r0x104A 
	IORWF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4472:genOr
;;	1009
;;	1028  _TRISB   offset=0
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2878:genMult *{*
;; ***	genMult  2880
;;	694 register type nRegs=1
;;	694 register type nRegs=2
;; 	line = 2886 result AOP_REG=r0x104A, size=2, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x03, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2816:genMultOneByte *{*
;; ***	genMultOneByte  2818
;; 	line = 2819 result AOP_REG=r0x104A, size=2, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x03, size=1
;; 	line = 2820, signs: result AOP_REG=u, left AOP_REG=u, right AOP_LIT=u
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1384:mov2w
_00108_DS_
	.line	44; "Switch.c"	SWs_Info[sw].sw_state = state;
	MOVLW	0x03
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2840:genMultOneByte
;; ***	popRegFromIdx,1042  , rIdx=0x7f
	MOVWF	STK00
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1048 
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1433:call_libraryfunc
	PAGESEL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1435:call_libraryfunc
	CALL	__mulchar
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:call_libraryfunc
	PAGESEL	$
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1015
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:881:addSign
;;	1109 rIdx = r0x104B 
	CLRF	r0x1016
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _SWs_Info, val 0, const = 0
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; 	line = 618 result AOP_REG=r0x104A, size=2, left AOP_PCODE=_SWs_Info, size=2, right AOP_REG=r0x104A, size=2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  717
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_SWs_Info
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:726:genPlus
;;	1109 rIdx = r0x104A 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:735:genPlus
	ADDLW	(_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:736:genPlus
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1015
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:771:genPlus
	MOVLW	high (_SWs_Info + 0)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:772:genPlus
;;	1109 rIdx = r0x1048 
	MOVWF	r0x1013
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:774:genPlus
;;	1109 rIdx = r0x104B 
	MOVF	r0x1016,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:775:genPlus
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:776:genPlus
;;	1109 rIdx = r0x104B 
	INCFSZ	r0x1016,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:777:genPlus
;;	1109 rIdx = r0x1048 
	ADDWF	r0x1013,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x104B, size=2, left AOP_REG=r0x104A, size=2, right AOP_LIT=0x02, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x104A 
	ADDWF	r0x1015,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x104B 
	MOVWF	r0x1016
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x104C 
	CLRF	r0x1017
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x104C 
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1048 
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x104C 
	ADDWF	r0x1017,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;;	694 register type nRegs=1
;; 	line = 6523 result AOP_REG=r0x104B, size=2, left -=-, size=0, right AOP_REG=r0x1049, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104B 
	MOVF	r0x1016,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1017,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6564:genNearPointerSet
;;	1109 rIdx = r0x1049 
	MOVF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3547:genCmpGt *{*
;; ***	genCmpGt  3548
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x4=4), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	.line	47; "Switch.c"	switch (state)
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1109 rIdx = r0x1049 
	SUBWF	r0x1014,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3237:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3242:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3246:genSkipc
;; ***	popGetLabel  key=11, label offset 4
	GOTO	_00115_DS_
;;genSkipc:3247: created from rifx:027A5DF4
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7071:genJumpTab *{*
;; ***	genJumpTab  7072
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7087:genJumpTab
;; ***	popGetLabel  key=25, label offset 4
	MOVLW	HIGH(_00129_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7088:genJumpTab
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7089:genJumpTab
;; ***	popGetLabel  key=25, label offset 4
	MOVLW	_00129_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7090:genJumpTab
;;	1109 rIdx = r0x1049 
	ADDWF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7091:genJumpTab
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7092:genJumpTab
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7093:genJumpTab
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=5, label offset 4
_00129_DS_
	GOTO	_00110_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=7, label offset 4
	GOTO	_00112_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=8, label offset 4
	GOTO	_00112_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7102:genJumpTab
;; ***	popGetLabel  key=6, label offset 4
	GOTO	_00110_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104A, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104A 
_00110_DS_
	.line	51; "Switch.c"	SWs_Info[sw].sw_samples[0] = SW_RELEASED_LEVEL;
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1013,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x1049, size=2, left AOP_REG=r0x104A, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; 	genPlusIncr  180
;;	adding lit to something. size 2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;  left and result aren't same	genAddLit  514
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:546:genAddLit
	.line	52; "Switch.c"	SWs_Info[sw].sw_samples[1] = SW_RELEASED_LEVEL;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:547:genAddLit
;;	1109 rIdx = r0x104A 
	ADDWF	r0x1015,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:253:emitMOVWF *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:257:emitMOVWF
;;	1109 rIdx = r0x1049 
	MOVWF	r0x1014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:584:genAddLit
;;	1109 rIdx = r0x104B 
	CLRF	r0x1016
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:585:genAddLit
;;	1109 rIdx = r0x104B 
	RLF	r0x1016,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:586:genAddLit
;;	1109 rIdx = r0x1048 
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:587:genAddLit
;;	1109 rIdx = r0x104B 
	ADDWF	r0x1016,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x1049, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x1049 
	MOVF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1016,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2778:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2780:genGoto
;; ***	popGetLabel  key=11, label offset 4
	.line	53; "Switch.c"	break;
	GOTO	_00115_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104A, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104A 
_00112_DS_
	.line	56; "Switch.c"	SWs_Info[sw].sw_samples[0] = SW_PRESSED_LEVEL;
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1013,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;;	694 register type nRegs=2
;;	694 register type nRegs=2
;; 	line = 618 result AOP_REG=r0x104A, size=2, left AOP_REG=r0x104A, size=2, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1109 rIdx = r0x104A 
	.line	57; "Switch.c"	SWs_Info[sw].sw_samples[1] = SW_PRESSED_LEVEL;
	INCF	r0x1015,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:172:genPlusIncr
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:173:genPlusIncr
;;	1109 rIdx = r0x1048 
	INCF	r0x1013,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6686:genPointerSet *{*
;; ***	genPointerSet  6687
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6505:genNearPointerSet *{*
;; ***	genNearPointerSet  6506
;;	694 register type nRegs=2
;; ***	genNearPointerSet  6521
;; 	line = 6523 result AOP_REG=r0x104A, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1343:mov2w_op *{*
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1109 rIdx = r0x104A 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5602:setup_fsr
	MOVWF	FSR
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5553:SetIrp *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5580:SetIrp
	BCF	STATUS,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5583:SetIrp
	BTFSC	r0x1013,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5584:SetIrp
	BSF	STATUS,7
;; ***	genNearPointerSet  6548
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6560:genNearPointerSet
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6569:genNearPointerSet
	MOVWF	INDF
;; ***	genNearPointerSet  6577
;; ***	genNearPointerSet  6603
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
_00115_DS_
	.line	63; "Switch.c"	}
	RETURN	
; exit point of _SW_Init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*
