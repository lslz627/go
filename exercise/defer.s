"".test STEXT size=75 args=0x8 locals=0x10
	0x0000 00000 (defer.go:3)	TEXT	"".test(SB), ABIInternal, $16-8
	0x0000 00000 (defer.go:3)	MOVQ	(TLS), CX
	0x0009 00009 (defer.go:3)	CMPQ	SP, 16(CX)
	0x000d 00013 (defer.go:3)	JLS	68
	0x000f 00015 (defer.go:3)	SUBQ	$16, SP
	0x0013 00019 (defer.go:3)	MOVQ	BP, 8(SP)
	0x0018 00024 (defer.go:3)	LEAQ	8(SP), BP
	0x001d 00029 (defer.go:3)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (defer.go:3)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (defer.go:3)	FUNCDATA	$3, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (defer.go:4)	PCDATA	$2, $0
	0x001d 00029 (defer.go:4)	PCDATA	$0, $0
	0x001d 00029 (defer.go:4)	CALL	runtime.printlock(SB)
	0x0022 00034 (defer.go:4)	MOVQ	"".a+24(SP), AX
	0x0027 00039 (defer.go:4)	MOVQ	AX, (SP)
	0x002b 00043 (defer.go:4)	CALL	runtime.printint(SB)
	0x0030 00048 (defer.go:4)	CALL	runtime.printnl(SB)
	0x0035 00053 (defer.go:4)	CALL	runtime.printunlock(SB)
	0x003a 00058 (defer.go:5)	MOVQ	8(SP), BP
	0x003f 00063 (defer.go:5)	ADDQ	$16, SP
	0x0043 00067 (defer.go:5)	RET
	0x0044 00068 (defer.go:5)	NOP
	0x0044 00068 (defer.go:3)	PCDATA	$0, $-1
	0x0044 00068 (defer.go:3)	PCDATA	$2, $-1
	0x0044 00068 (defer.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x0049 00073 (defer.go:3)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 35 48  eH..%....H;a.v5H
	0x0010 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 e8 00 00  ...H.l$.H.l$....
	0x0020 00 00 48 8b 44 24 18 48 89 04 24 e8 00 00 00 00  ..H.D$.H..$.....
	0x0030 e8 00 00 00 00 e8 00 00 00 00 48 8b 6c 24 08 48  ..........H.l$.H
	0x0040 83 c4 10 c3 e8 00 00 00 00 eb b5                 ...........
	rel 5+4 t=16 TLS+0
	rel 30+4 t=8 runtime.printlock+0
	rel 44+4 t=8 runtime.printint+0
	rel 49+4 t=8 runtime.printnl+0
	rel 54+4 t=8 runtime.printunlock+0
	rel 69+4 t=8 runtime.morestack_noctxt+0
"".test2 STEXT size=193 args=0x0 locals=0x20
	0x0000 00000 (defer.go:7)	TEXT	"".test2(SB), ABIInternal, $32-0
	0x0000 00000 (defer.go:7)	MOVQ	(TLS), CX
	0x0009 00009 (defer.go:7)	CMPQ	SP, 16(CX)
	0x000d 00013 (defer.go:7)	JLS	183
	0x0013 00019 (defer.go:7)	SUBQ	$32, SP
	0x0017 00023 (defer.go:7)	MOVQ	BP, 24(SP)
	0x001c 00028 (defer.go:7)	LEAQ	24(SP), BP
	0x0021 00033 (defer.go:7)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (defer.go:7)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (defer.go:7)	FUNCDATA	$3, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0021 00033 (defer.go:8)	PCDATA	$2, $0
	0x0021 00033 (defer.go:8)	PCDATA	$0, $0
	0x0021 00033 (defer.go:8)	MOVL	$8, (SP)
	0x0028 00040 (defer.go:8)	PCDATA	$2, $1
	0x0028 00040 (defer.go:8)	LEAQ	"".test·f(SB), AX
	0x002f 00047 (defer.go:8)	PCDATA	$2, $0
	0x002f 00047 (defer.go:8)	MOVQ	AX, 8(SP)
	0x0034 00052 (defer.go:8)	MOVQ	$1000, 16(SP)
	0x003d 00061 (defer.go:8)	CALL	runtime.deferproc(SB)
	0x0042 00066 (defer.go:8)	TESTL	AX, AX
	0x0044 00068 (defer.go:8)	JNE	167
	0x0046 00070 (defer.go:11)	MOVL	$8, (SP)
	0x004d 00077 (defer.go:11)	PCDATA	$2, $1
	0x004d 00077 (defer.go:11)	LEAQ	"".test·f(SB), AX
	0x0054 00084 (defer.go:11)	PCDATA	$2, $0
	0x0054 00084 (defer.go:11)	MOVQ	AX, 8(SP)
	0x0059 00089 (defer.go:11)	MOVQ	$200, 16(SP)
	0x0062 00098 (defer.go:11)	CALL	runtime.deferproc(SB)
	0x0067 00103 (defer.go:11)	TESTL	AX, AX
	0x0069 00105 (defer.go:11)	JNE	151
	0x006b 00107 (defer.go:13)	CALL	runtime.printlock(SB)
	0x0070 00112 (defer.go:13)	MOVQ	$200, (SP)
	0x0078 00120 (defer.go:13)	CALL	runtime.printint(SB)
	0x007d 00125 (defer.go:13)	CALL	runtime.printnl(SB)
	0x0082 00130 (defer.go:13)	CALL	runtime.printunlock(SB)
	0x0087 00135 (defer.go:14)	XCHGL	AX, AX
	0x0088 00136 (defer.go:14)	CALL	runtime.deferreturn(SB)
	0x008d 00141 (defer.go:14)	MOVQ	24(SP), BP
	0x0092 00146 (defer.go:14)	ADDQ	$32, SP
	0x0096 00150 (defer.go:14)	RET
	0x0097 00151 (defer.go:11)	XCHGL	AX, AX
	0x0098 00152 (defer.go:11)	CALL	runtime.deferreturn(SB)
	0x009d 00157 (defer.go:11)	MOVQ	24(SP), BP
	0x00a2 00162 (defer.go:11)	ADDQ	$32, SP
	0x00a6 00166 (defer.go:11)	RET
	0x00a7 00167 (defer.go:8)	XCHGL	AX, AX
	0x00a8 00168 (defer.go:8)	CALL	runtime.deferreturn(SB)
	0x00ad 00173 (defer.go:8)	MOVQ	24(SP), BP
	0x00b2 00178 (defer.go:8)	ADDQ	$32, SP
	0x00b6 00182 (defer.go:8)	RET
	0x00b7 00183 (defer.go:8)	NOP
	0x00b7 00183 (defer.go:7)	PCDATA	$0, $-1
	0x00b7 00183 (defer.go:7)	PCDATA	$2, $-1
	0x00b7 00183 (defer.go:7)	CALL	runtime.morestack_noctxt(SB)
	0x00bc 00188 (defer.go:7)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 a4  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 20 48 89 6c 24 18 48 8d 6c 24  ...H.. H.l$.H.l$
	0x0020 18 c7 04 24 08 00 00 00 48 8d 05 00 00 00 00 48  ...$....H......H
	0x0030 89 44 24 08 48 c7 44 24 10 e8 03 00 00 e8 00 00  .D$.H.D$........
	0x0040 00 00 85 c0 75 61 c7 04 24 08 00 00 00 48 8d 05  ....ua..$....H..
	0x0050 00 00 00 00 48 89 44 24 08 48 c7 44 24 10 c8 00  ....H.D$.H.D$...
	0x0060 00 00 e8 00 00 00 00 85 c0 75 2c e8 00 00 00 00  .........u,.....
	0x0070 48 c7 04 24 c8 00 00 00 e8 00 00 00 00 e8 00 00  H..$............
	0x0080 00 00 e8 00 00 00 00 90 e8 00 00 00 00 48 8b 6c  .............H.l
	0x0090 24 18 48 83 c4 20 c3 90 e8 00 00 00 00 48 8b 6c  $.H.. .......H.l
	0x00a0 24 18 48 83 c4 20 c3 90 e8 00 00 00 00 48 8b 6c  $.H.. .......H.l
	0x00b0 24 18 48 83 c4 20 c3 e8 00 00 00 00 e9 3f ff ff  $.H.. .......?..
	0x00c0 ff                                               .
	rel 5+4 t=16 TLS+0
	rel 43+4 t=15 "".test·f+0
	rel 62+4 t=8 runtime.deferproc+0
	rel 80+4 t=15 "".test·f+0
	rel 99+4 t=8 runtime.deferproc+0
	rel 108+4 t=8 runtime.printlock+0
	rel 121+4 t=8 runtime.printint+0
	rel 126+4 t=8 runtime.printnl+0
	rel 131+4 t=8 runtime.printunlock+0
	rel 137+4 t=8 runtime.deferreturn+0
	rel 153+4 t=8 runtime.deferreturn+0
	rel 169+4 t=8 runtime.deferreturn+0
	rel 184+4 t=8 runtime.morestack_noctxt+0
"".main STEXT size=79 args=0x0 locals=0x10
	0x0000 00000 (defer.go:16)	TEXT	"".main(SB), ABIInternal, $16-0
	0x0000 00000 (defer.go:16)	MOVQ	(TLS), CX
	0x0009 00009 (defer.go:16)	CMPQ	SP, 16(CX)
	0x000d 00013 (defer.go:16)	JLS	72
	0x000f 00015 (defer.go:16)	SUBQ	$16, SP
	0x0013 00019 (defer.go:16)	MOVQ	BP, 8(SP)
	0x0018 00024 (defer.go:16)	LEAQ	8(SP), BP
	0x001d 00029 (defer.go:16)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (defer.go:16)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (defer.go:16)	FUNCDATA	$3, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (defer.go:17)	PCDATA	$2, $0
	0x001d 00029 (defer.go:17)	PCDATA	$0, $0
	0x001d 00029 (defer.go:17)	CALL	"".test2(SB)
	0x0022 00034 (defer.go:18)	CALL	runtime.printlock(SB)
	0x0027 00039 (defer.go:18)	MOVQ	$2, (SP)
	0x002f 00047 (defer.go:18)	CALL	runtime.printint(SB)
	0x0034 00052 (defer.go:18)	CALL	runtime.printnl(SB)
	0x0039 00057 (defer.go:18)	CALL	runtime.printunlock(SB)
	0x003e 00062 (defer.go:19)	MOVQ	8(SP), BP
	0x0043 00067 (defer.go:19)	ADDQ	$16, SP
	0x0047 00071 (defer.go:19)	RET
	0x0048 00072 (defer.go:19)	NOP
	0x0048 00072 (defer.go:16)	PCDATA	$0, $-1
	0x0048 00072 (defer.go:16)	PCDATA	$2, $-1
	0x0048 00072 (defer.go:16)	CALL	runtime.morestack_noctxt(SB)
	0x004d 00077 (defer.go:16)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 39 48  eH..%....H;a.v9H
	0x0010 83 ec 10 48 89 6c 24 08 48 8d 6c 24 08 e8 00 00  ...H.l$.H.l$....
	0x0020 00 00 e8 00 00 00 00 48 c7 04 24 02 00 00 00 e8  .......H..$.....
	0x0030 00 00 00 00 e8 00 00 00 00 e8 00 00 00 00 48 8b  ..............H.
	0x0040 6c 24 08 48 83 c4 10 c3 e8 00 00 00 00 eb b1     l$.H...........
	rel 5+4 t=16 TLS+0
	rel 30+4 t=8 "".test2+0
	rel 35+4 t=8 runtime.printlock+0
	rel 48+4 t=8 runtime.printint+0
	rel 53+4 t=8 runtime.printnl+0
	rel 58+4 t=8 runtime.printunlock+0
	rel 73+4 t=8 runtime.morestack_noctxt+0
"".init STEXT size=80 args=0x0 locals=0x8
	0x0000 00000 (<autogenerated>:1)	TEXT	"".init(SB), ABIInternal, $8-0
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	73
	0x000f 00015 (<autogenerated>:1)	SUBQ	$8, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, (SP)
	0x0017 00023 (<autogenerated>:1)	LEAQ	(SP), BP
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	FUNCDATA	$3, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001b 00027 (<autogenerated>:1)	PCDATA	$2, $0
	0x001b 00027 (<autogenerated>:1)	PCDATA	$0, $0
	0x001b 00027 (<autogenerated>:1)	MOVBLZX	"".initdone·(SB), AX
	0x0022 00034 (<autogenerated>:1)	CMPB	AL, $1
	0x0025 00037 (<autogenerated>:1)	JLS	48
	0x0027 00039 (<autogenerated>:1)	PCDATA	$2, $-2
	0x0027 00039 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0027 00039 (<autogenerated>:1)	MOVQ	(SP), BP
	0x002b 00043 (<autogenerated>:1)	ADDQ	$8, SP
	0x002f 00047 (<autogenerated>:1)	RET
	0x0030 00048 (<autogenerated>:1)	JNE	57
	0x0032 00050 (<autogenerated>:1)	PCDATA	$2, $0
	0x0032 00050 (<autogenerated>:1)	PCDATA	$0, $0
	0x0032 00050 (<autogenerated>:1)	CALL	runtime.throwinit(SB)
	0x0037 00055 (<autogenerated>:1)	UNDEF
	0x0039 00057 (<autogenerated>:1)	MOVB	$2, "".initdone·(SB)
	0x0040 00064 (<autogenerated>:1)	MOVQ	(SP), BP
	0x0044 00068 (<autogenerated>:1)	ADDQ	$8, SP
	0x0048 00072 (<autogenerated>:1)	RET
	0x0049 00073 (<autogenerated>:1)	NOP
	0x0049 00073 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0049 00073 (<autogenerated>:1)	PCDATA	$2, $-1
	0x0049 00073 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x004e 00078 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 3a 48  eH..%....H;a.v:H
	0x0010 83 ec 08 48 89 2c 24 48 8d 2c 24 0f b6 05 00 00  ...H.,$H.,$.....
	0x0020 00 00 80 f8 01 76 09 48 8b 2c 24 48 83 c4 08 c3  .....v.H.,$H....
	0x0030 75 07 e8 00 00 00 00 0f 0b c6 05 00 00 00 00 02  u...............
	0x0040 48 8b 2c 24 48 83 c4 08 c3 e8 00 00 00 00 eb b0  H.,$H...........
	rel 5+4 t=16 TLS+0
	rel 30+4 t=15 "".initdone·+0
	rel 51+4 t=8 runtime.throwinit+0
	rel 59+4 t=15 "".initdone·+-1
	rel 74+4 t=8 runtime.morestack_noctxt+0
go.loc."".test SDWARFLOC size=51
	0x0000 ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 4b 00 00 00 00 00 00 00  ........K.......
	0x0020 01 00 9c 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00                                         ...
	rel 8+8 t=1 "".test+0
go.info."".test SDWARFINFO size=46
	0x0000 03 22 22 2e 74 65 73 74 00 00 00 00 00 00 00 00  ."".test........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 10 61 00 00 03 00 00 00 00 00 00 00 00 00        .a............
	rel 9+8 t=1 "".test+0
	rel 17+8 t=1 "".test+75
	rel 27+4 t=29 gofile../Users/zhangyong/Syncthing/Code/go/exercise/defer.go+0
	rel 37+4 t=28 go.info.int+0
	rel 41+4 t=28 go.loc."".test+0
go.range."".test SDWARFRANGE size=0
go.isstmt."".test SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 05 01 09 02 20 00                 ......... .
go.loc."".test2 SDWARFLOC size=0
go.info."".test2 SDWARFINFO size=34
	0x0000 03 22 22 2e 74 65 73 74 32 00 00 00 00 00 00 00  ."".test2.......
	0x0010 00 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00  ................
	0x0020 01 00                                            ..
	rel 10+8 t=1 "".test2+0
	rel 18+8 t=1 "".test2+193
	rel 28+4 t=29 gofile../Users/zhangyong/Syncthing/Code/go/exercise/defer.go+0
go.range."".test2 SDWARFRANGE size=0
go.isstmt."".test2 SDWARFMISC size=0
	0x0000 04 13 04 0e 03 07 01 15 02 07 01 02 02 07 01 15  ................
	0x0010 02 07 01 02 02 05 01 08 02 1f 01 01 02 0f 01 01  ................
	0x0020 02 19 00                                         ...
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=33
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+79
	rel 27+4 t=29 gofile../Users/zhangyong/Syncthing/Code/go/exercise/defer.go+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 0a 01 08 02 20 00                 ......... .
go.loc."".init SDWARFLOC size=0
go.info."".init SDWARFINFO size=33
	0x0000 03 22 22 2e 69 6e 69 74 00 00 00 00 00 00 00 00  ."".init........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".init+0
	rel 17+8 t=1 "".init+80
	rel 27+4 t=29 gofile..<autogenerated>+0
go.range."".init SDWARFRANGE size=0
go.isstmt."".init SDWARFMISC size=0
	0x0000 04 0f 04 0c 03 07 01 05 02 09 01 02 02 0e 01 09  ................
	0x0010 02 07 00                                         ...
"".initdone· SNOPTRBSS size=1
"".test·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".test+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
