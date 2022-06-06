;Programa: 'Prueba'
source_filename = "pruebas.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.29.30145"

declare i32 @puts(i8*)
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8* %0, ...)
@.integer = private constant [4 x i8] c"%d\0A\00"
@.double = private constant [4 x i8] c"%f\0A\00"
@.bool = private constant [4 x i8] c"%d\0A\00"
@int_read_format = unnamed_addr constant [3 x i8] c"%d\00"
@double_read_format = unnamed_addr constant [4 x i8] c"%lf\00"
@IdPos3 = global i32 0
@IdPos4 = global i32 0
@IdPos5 = global i32 0
@IdPos6 = global i32 0
@Pivot3 = global i32 0
@Pivot4 = global i32 0
@Pivot5 = global i32 0
@Pivot6 = global i32 0
@_Acum10 = global i32 0
@_Acum11 = global i32 0
@_Acum12 = global i32 0
@_Acum5 = global i32 0
@_Acum6 = global i32 0
@_Acum7 = global i32 0
@_Acum8 = global i32 0
@_Acum9 = global i32 0
@a = global i32 0
@ahre = global i1 0
@aux = global i32 0
@b = global i32 0
@c = global i32 0
@d = global i32 0
@f = global double 0.0
@r = global i1 0
@res = global i32 0
@res2 = global i32 0
@res3 = global i32 0
@res4 = global i32 0
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq46:
	;___Asignación___
	%aux173 = add i32 0, 1
	store i32 %aux173, i32* @Pivot3
	br label %etiq47
	
	etiq47:
	;___IfElse___
	%aux175 = load i32, i32* @Pivot3
	%aux178 = add i32 0, 1
	%aux179 = icmp sge i32 %aux175, %aux178
	br i1 %aux179, label %etiq48, label %etiq49
	
	etiq48:
	;___IfElse___
	%aux184 = add i32 0, 1
	%aux182 = load i32, i32* @Pivot3
	%aux185 = icmp sge i32 %aux184, %aux182
	br i1 %aux185, label %etiq51, label %etiq52
	
	etiq51:
	;___IfElse___
	%aux190 = add i32 0, 1
	%aux191 = add i32 0, 0
	%aux192 = icmp sgt i32 %aux190, %aux191
	br i1 %aux192, label %etiq54, label %etiq55
	
	etiq54:
	;___IfElse___
	%aux200 = add i32 0, 1
	%aux198 = load i32, i32* @Pivot3
	%aux201 = sub i32 %aux200, %aux198
	%aux195 = load i32, i32* @IdPos3
	%aux202 = icmp eq i32 %aux201, %aux195
	br i1 %aux202, label %etiq57, label %etiq58
	
	etiq57:
	;___Asignación___
	%aux204 = load i32, i32* @_Acum5
	%aux207 = add i32 0, 1
	%aux208 = add i32 %aux204, %aux207
	store i32 %aux208, i32* @_Acum5
	br label %etiq60
	
	etiq60:
	;___Asignación___
	%aux210 = load i32, i32* @IdPos3
	%aux213 = add i32 0, 1
	%aux214 = add i32 %aux210, %aux213
	store i32 %aux214, i32* @IdPos3
	br label %etiq61
	
	etiq61:
	;___Asignación___
	%aux216 = load i32, i32* @Pivot3
	%aux219 = add i32 0, 1
	%aux220 = sub i32 %aux216, %aux219
	store i32 %aux220, i32* @Pivot3
	br label %etiq62
	
	etiq58:
	;___Asignación___
	%aux222 = load i32, i32* @IdPos3
	%aux225 = add i32 0, 1
	%aux226 = add i32 %aux222, %aux225
	store i32 %aux226, i32* @IdPos3
	br label %etiq62
	
	etiq55:
	;___DisplayCadenaCaracteres___
	%aux227 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq62
	
	etiq52:
	;___DisplayCadenaCaracteres___
	%aux228 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq62
	
	etiq49:
	;___DisplayCadenaCaracteres___
	%aux229 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq62
	
	etiq62:
	;___Asignación___
	%aux231 = load i32, i32* @_Acum5
	store i32 %aux231, i32* @_Acum6
	br label %etiq63
	
	etiq63:
	%aux232 = load i32, i32* @_Acum6
	%aux233 = sub i32 0, %aux232
	store i32 %aux233, i32* @res
	br label %etiq64
	
	etiq64:
	;___Asignación___
	%aux238 = add i32 0, 1
	br label %etiq65
	
	etiq64:
	;___Asignación___
	%aux240 = add i32 0, 2
	store i32 %aux240, i32* @Pivot4
	br label %etiq65
	
	etiq65:
	;___IfElse___
	%aux242 = load i32, i32* @Pivot4
	%aux245 = add i32 0, 1
	%aux246 = icmp sge i32 %aux242, %aux245
	br i1 %aux246, label %etiq66, label %etiq67
	
	etiq66:
	;___IfElse___
	%aux251 = add i32 0, 2
	%aux249 = load i32, i32* @Pivot4
	%aux252 = icmp sge i32 %aux251, %aux249
	br i1 %aux252, label %etiq69, label %etiq70
	
	etiq69:
	;___IfElse___
	%aux257 = add i32 0, 2
	%aux258 = add i32 0, 0
	%aux259 = icmp sgt i32 %aux257, %aux258
	br i1 %aux259, label %etiq72, label %etiq73
	
	etiq72:
	;___IfElse___
	%aux267 = add i32 0, 2
	%aux265 = load i32, i32* @Pivot4
	%aux268 = sub i32 %aux267, %aux265
	%aux262 = load i32, i32* @IdPos4
	%aux269 = icmp eq i32 %aux268, %aux262
	br i1 %aux269, label %etiq75, label %etiq76
	
	etiq75:
	;___Asignación___
	%aux271 = load i32, i32* @_Acum7
	%aux274 = add i32 0, 1
	%aux275 = add i32 %aux271, %aux274
	store i32 %aux275, i32* @_Acum7
	br label %etiq78
	
	etiq78:
	;___Asignación___
	%aux277 = load i32, i32* @IdPos4
	%aux280 = add i32 0, 1
	%aux281 = add i32 %aux277, %aux280
	store i32 %aux281, i32* @IdPos4
	br label %etiq79
	
	etiq79:
	;___Asignación___
	%aux283 = load i32, i32* @Pivot4
	%aux286 = add i32 0, 1
	%aux287 = sub i32 %aux283, %aux286
	store i32 %aux287, i32* @Pivot4
	br label %etiq80
	
	etiq76:
	;___Asignación___
	%aux289 = load i32, i32* @IdPos4
	%aux292 = add i32 0, 1
	%aux293 = add i32 %aux289, %aux292
	store i32 %aux293, i32* @IdPos4
	br label %etiq80
	
	etiq80:
	;___IfElse___
	%aux301 = add i32 0, 2
	%aux299 = load i32, i32* @Pivot4
	%aux302 = sub i32 %aux301, %aux299
	%aux296 = load i32, i32* @IdPos4
	%aux303 = icmp eq i32 %aux302, %aux296
	br i1 %aux303, label %etiq81, label %etiq82
	
	etiq81:
	;___Asignación___
	%aux305 = load i32, i32* @_Acum7
	%aux308 = add i32 0, 2
	%aux309 = add i32 %aux305, %aux308
	store i32 %aux309, i32* @_Acum7
	br label %etiq84
	
	etiq84:
	;___Asignación___
	%aux311 = load i32, i32* @IdPos4
	%aux314 = add i32 0, 1
	%aux315 = add i32 %aux311, %aux314
	store i32 %aux315, i32* @IdPos4
	br label %etiq85
	
	etiq85:
	;___Asignación___
	%aux317 = load i32, i32* @Pivot4
	%aux320 = add i32 0, 1
	%aux321 = sub i32 %aux317, %aux320
	store i32 %aux321, i32* @Pivot4
	br label %etiq86
	
	etiq82:
	;___Asignación___
	%aux323 = load i32, i32* @IdPos4
	%aux326 = add i32 0, 1
	%aux327 = add i32 %aux323, %aux326
	store i32 %aux327, i32* @IdPos4
	br label %etiq86
	
	etiq73:
	;___DisplayCadenaCaracteres___
	%aux328 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq86
	
	etiq70:
	;___DisplayCadenaCaracteres___
	%aux329 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq86
	
	etiq67:
	;___DisplayCadenaCaracteres___
	%aux330 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq86
	
	etiq86:
	;___Asignación___
	%aux332 = load i32, i32* @_Acum7
	store i32 %aux332, i32* @_Acum8
	br label %etiq87
	
	etiq87:
	%aux333 = load i32, i32* @_Acum8
	%aux334 = add i32 %aux238, %aux333
	store i32 %aux334, i32* @res2
	br label %etiq88
	
	etiq88:
	;___Asignación___
	%aux340 = add i32 0, 3
	store i32 %aux340, i32* @Pivot5
	br label %etiq89
	
	etiq89:
	;___IfElse___
	%aux342 = load i32, i32* @Pivot5
	%aux345 = add i32 0, 1
	%aux346 = icmp sge i32 %aux342, %aux345
	br i1 %aux346, label %etiq90, label %etiq91
	
	etiq90:
	;___IfElse___
	%aux351 = add i32 0, 3
	%aux349 = load i32, i32* @Pivot5
	%aux352 = icmp sge i32 %aux351, %aux349
	br i1 %aux352, label %etiq93, label %etiq94
	
	etiq93:
	;___IfElse___
	%aux357 = add i32 0, 3
	%aux358 = add i32 0, 0
	%aux359 = icmp sgt i32 %aux357, %aux358
	br i1 %aux359, label %etiq96, label %etiq97
	
	etiq96:
	;___IfElse___
	%aux367 = add i32 0, 3
	%aux365 = load i32, i32* @Pivot5
	%aux368 = sub i32 %aux367, %aux365
	%aux362 = load i32, i32* @IdPos5
	%aux369 = icmp eq i32 %aux368, %aux362
	br i1 %aux369, label %etiq99, label %etiq100
	
	etiq99:
	;___Asignación___
	%aux371 = load i32, i32* @_Acum9
	%aux374 = add i32 0, 4
	%aux375 = add i32 %aux371, %aux374
	store i32 %aux375, i32* @_Acum9
	br label %etiq102
	
	etiq102:
	;___Asignación___
	%aux377 = load i32, i32* @IdPos5
	%aux380 = add i32 0, 1
	%aux381 = add i32 %aux377, %aux380
	store i32 %aux381, i32* @IdPos5
	br label %etiq103
	
	etiq103:
	;___Asignación___
	%aux383 = load i32, i32* @Pivot5
	%aux386 = add i32 0, 1
	%aux387 = sub i32 %aux383, %aux386
	store i32 %aux387, i32* @Pivot5
	br label %etiq104
	
	etiq100:
	;___Asignación___
	%aux389 = load i32, i32* @IdPos5
	%aux392 = add i32 0, 1
	%aux393 = add i32 %aux389, %aux392
	store i32 %aux393, i32* @IdPos5
	br label %etiq104
	
	etiq104:
	;___IfElse___
	%aux401 = add i32 0, 3
	%aux399 = load i32, i32* @Pivot5
	%aux402 = sub i32 %aux401, %aux399
	%aux396 = load i32, i32* @IdPos5
	%aux403 = icmp eq i32 %aux402, %aux396
	br i1 %aux403, label %etiq105, label %etiq106
	
	etiq105:
	;___Asignación___
	%aux405 = load i32, i32* @_Acum9
	%aux408 = add i32 0, 5
	%aux409 = add i32 %aux405, %aux408
	store i32 %aux409, i32* @_Acum9
	br label %etiq108
	
	etiq108:
	;___Asignación___
	%aux411 = load i32, i32* @IdPos5
	%aux414 = add i32 0, 1
	%aux415 = add i32 %aux411, %aux414
	store i32 %aux415, i32* @IdPos5
	br label %etiq109
	
	etiq109:
	;___Asignación___
	%aux417 = load i32, i32* @Pivot5
	%aux420 = add i32 0, 1
	%aux421 = sub i32 %aux417, %aux420
	store i32 %aux421, i32* @Pivot5
	br label %etiq110
	
	etiq106:
	;___Asignación___
	%aux423 = load i32, i32* @IdPos5
	%aux426 = add i32 0, 1
	%aux427 = add i32 %aux423, %aux426
	store i32 %aux427, i32* @IdPos5
	br label %etiq110
	
	etiq110:
	;___IfElse___
	%aux435 = add i32 0, 3
	%aux433 = load i32, i32* @Pivot5
	%aux436 = sub i32 %aux435, %aux433
	%aux430 = load i32, i32* @IdPos5
	%aux437 = icmp eq i32 %aux436, %aux430
	br i1 %aux437, label %etiq111, label %etiq112
	
	etiq111:
	;___Asignación___
	%aux439 = load i32, i32* @_Acum9
	%aux442 = add i32 0, 6
	%aux443 = add i32 %aux439, %aux442
	store i32 %aux443, i32* @_Acum9
	br label %etiq114
	
	etiq114:
	;___Asignación___
	%aux445 = load i32, i32* @IdPos5
	%aux448 = add i32 0, 1
	%aux449 = add i32 %aux445, %aux448
	store i32 %aux449, i32* @IdPos5
	br label %etiq115
	
	etiq115:
	;___Asignación___
	%aux451 = load i32, i32* @Pivot5
	%aux454 = add i32 0, 1
	%aux455 = sub i32 %aux451, %aux454
	store i32 %aux455, i32* @Pivot5
	br label %etiq116
	
	etiq112:
	;___Asignación___
	%aux457 = load i32, i32* @IdPos5
	%aux460 = add i32 0, 1
	%aux461 = add i32 %aux457, %aux460
	store i32 %aux461, i32* @IdPos5
	br label %etiq116
	
	etiq97:
	;___DisplayCadenaCaracteres___
	%aux462 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq116
	
	etiq94:
	;___DisplayCadenaCaracteres___
	%aux463 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq116
	
	etiq91:
	;___DisplayCadenaCaracteres___
	%aux464 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq116
	
	etiq116:
	;___Asignación___
	%aux466 = load i32, i32* @_Acum9
	store i32 %aux466, i32* @_Acum10
	br label %etiq117
	
	etiq117:
	;___Asignación___
	%aux468 = add i32 0, 1
	store i32 %aux468, i32* @Pivot6
	br label %etiq118
	
	etiq118:
	;___IfElse___
	%aux470 = load i32, i32* @Pivot6
	%aux473 = add i32 0, 1
	%aux474 = icmp sge i32 %aux470, %aux473
	br i1 %aux474, label %etiq119, label %etiq120
	
	etiq119:
	;___IfElse___
	%aux479 = add i32 0, 2
	%aux477 = load i32, i32* @Pivot6
	%aux480 = icmp sge i32 %aux479, %aux477
	br i1 %aux480, label %etiq122, label %etiq123
	
	etiq122:
	;___IfElse___
	%aux485 = add i32 0, 2
	%aux486 = add i32 0, 0
	%aux487 = icmp sgt i32 %aux485, %aux486
	br i1 %aux487, label %etiq125, label %etiq126
	
	etiq125:
	;___IfElse___
	%aux495 = add i32 0, 2
	%aux493 = load i32, i32* @Pivot6
	%aux496 = sub i32 %aux495, %aux493
	%aux490 = load i32, i32* @IdPos6
	%aux497 = icmp eq i32 %aux496, %aux490
	br i1 %aux497, label %etiq128, label %etiq129
	
	etiq128:
	;___Asignación___
	%aux499 = load i32, i32* @_Acum11
	%aux502 = add i32 0, 2
	%aux503 = add i32 %aux499, %aux502
	store i32 %aux503, i32* @_Acum11
	br label %etiq131
	
	etiq131:
	;___Asignación___
	%aux505 = load i32, i32* @IdPos6
	%aux508 = add i32 0, 1
	%aux509 = add i32 %aux505, %aux508
	store i32 %aux509, i32* @IdPos6
	br label %etiq132
	
	etiq132:
	;___Asignación___
	%aux511 = load i32, i32* @Pivot6
	%aux514 = add i32 0, 1
	%aux515 = sub i32 %aux511, %aux514
	store i32 %aux515, i32* @Pivot6
	br label %etiq133
	
	etiq129:
	;___Asignación___
	%aux517 = load i32, i32* @IdPos6
	%aux520 = add i32 0, 1
	%aux521 = add i32 %aux517, %aux520
	store i32 %aux521, i32* @IdPos6
	br label %etiq133
	
	etiq133:
	;___IfElse___
	%aux529 = add i32 0, 2
	%aux527 = load i32, i32* @Pivot6
	%aux530 = sub i32 %aux529, %aux527
	%aux524 = load i32, i32* @IdPos6
	%aux531 = icmp eq i32 %aux530, %aux524
	br i1 %aux531, label %etiq134, label %etiq135
	
	etiq134:
	;___Asignación___
	%aux533 = load i32, i32* @_Acum11
	%aux534 = load i32, i32* @_Acum10
	%aux536 = add i32 %aux533, %aux534
	store i32 %aux536, i32* @_Acum11
	br label %etiq137
	
	etiq137:
	;___Asignación___
	%aux538 = load i32, i32* @IdPos6
	%aux541 = add i32 0, 1
	%aux542 = add i32 %aux538, %aux541
	store i32 %aux542, i32* @IdPos6
	br label %etiq138
	
	etiq138:
	;___Asignación___
	%aux544 = load i32, i32* @Pivot6
	%aux547 = add i32 0, 1
	%aux548 = sub i32 %aux544, %aux547
	store i32 %aux548, i32* @Pivot6
	br label %etiq139
	
	etiq135:
	;___Asignación___
	%aux550 = load i32, i32* @IdPos6
	%aux553 = add i32 0, 1
	%aux554 = add i32 %aux550, %aux553
	store i32 %aux554, i32* @IdPos6
	br label %etiq139
	
	etiq126:
	;___DisplayCadenaCaracteres___
	%aux555 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq139
	
	etiq123:
	;___DisplayCadenaCaracteres___
	%aux556 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq139
	
	etiq120:
	;___DisplayCadenaCaracteres___
	%aux557 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq139
	
	etiq139:
	;___Asignación___
	%aux559 = load i32, i32* @_Acum11
	store i32 %aux559, i32* @_Acum12
	br label %etiq140
	
	etiq140:
	%aux560 = load i32, i32* @_Acum12
	%aux561 = add i32 0, 1
	%aux562 = add i32 %aux560, %aux561
	store i32 %aux562, i32* @res3
	br label %etiq141
	
	etiq141:
	;___DisplayExpresion___
	%aux564 = load i32, i32* @res
	%aux563 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux564)
	br label %etiq142
	
	etiq142:
	;___DisplayExpresion___
	%aux566 = load i32, i32* @res2
	%aux565 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux566)
	br label %etiq143
	
	etiq143:
	;___DisplayExpresion___
	%aux568 = load i32, i32* @res3
	%aux567 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux568)
	br label %etiq144
	
	etiq144:
	ret i32 0
}

