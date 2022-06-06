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
@IdPos1 = global i32 0
@IdPos2 = global i32 0
@IdPos3 = global i32 0
@IdPos4 = global i32 0
@IdPos5 = global i32 0
@Pivot1 = global i32 0
@Pivot2 = global i32 0
@Pivot3 = global i32 0
@Pivot4 = global i32 0
@Pivot5 = global i32 0
@_Acum1 = global i32 0
@_Acum10 = global i32 0
@_Acum2 = global i32 0
@_Acum3 = global i32 0
@_Acum4 = global i32 0
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
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq2:
	;___Asignación___
	%aux12 = add i32 0, 2
	store i32 %aux12, i32* @Pivot1
	br label %etiq3
	
	etiq3:
	;___IfElse___
	%aux14 = load i32, i32* @Pivot1
	%aux17 = add i32 0, 1
	%aux18 = icmp sge i32 %aux14, %aux17
	br i1 %aux18, label %etiq4, label %etiq5
	
	etiq4:
	;___IfElse___
	%aux23 = add i32 0, 2
	%aux21 = load i32, i32* @Pivot1
	%aux24 = icmp sge i32 %aux23, %aux21
	br i1 %aux24, label %etiq7, label %etiq8
	
	etiq7:
	;___IfElse___
	%aux29 = add i32 0, 2
	%aux30 = add i32 0, 0
	%aux31 = icmp sgt i32 %aux29, %aux30
	br i1 %aux31, label %etiq10, label %etiq11
	
	etiq10:
	;___IfElse___
	%aux39 = add i32 0, 2
	%aux37 = load i32, i32* @Pivot1
	%aux40 = sub i32 %aux39, %aux37
	%aux34 = load i32, i32* @IdPos1
	%aux41 = icmp eq i32 %aux40, %aux34
	br i1 %aux41, label %etiq13, label %etiq14
	
	etiq13:
	;___Asignación___
	%aux43 = load i32, i32* @_Acum1
	%aux46 = add i32 0, 1
	%aux47 = add i32 %aux43, %aux46
	store i32 %aux47, i32* @_Acum1
	br label %etiq16
	
	etiq16:
	;___Asignación___
	%aux49 = load i32, i32* @IdPos1
	%aux52 = add i32 0, 1
	%aux53 = add i32 %aux49, %aux52
	store i32 %aux53, i32* @IdPos1
	br label %etiq17
	
	etiq17:
	;___Asignación___
	%aux55 = load i32, i32* @Pivot1
	%aux58 = add i32 0, 1
	%aux59 = sub i32 %aux55, %aux58
	store i32 %aux59, i32* @Pivot1
	br label %etiq18
	
	etiq14:
	;___Asignación___
	%aux61 = load i32, i32* @IdPos1
	%aux64 = add i32 0, 1
	%aux65 = add i32 %aux61, %aux64
	store i32 %aux65, i32* @IdPos1
	br label %etiq18
	
	etiq18:
	;___IfElse___
	%aux73 = add i32 0, 2
	%aux71 = load i32, i32* @Pivot1
	%aux74 = sub i32 %aux73, %aux71
	%aux68 = load i32, i32* @IdPos1
	%aux75 = icmp eq i32 %aux74, %aux68
	br i1 %aux75, label %etiq19, label %etiq20
	
	etiq19:
	;___Asignación___
	%aux77 = load i32, i32* @_Acum1
	%aux80 = add i32 0, 2
	%aux81 = add i32 %aux77, %aux80
	store i32 %aux81, i32* @_Acum1
	br label %etiq22
	
	etiq22:
	;___Asignación___
	%aux83 = load i32, i32* @IdPos1
	%aux86 = add i32 0, 1
	%aux87 = add i32 %aux83, %aux86
	store i32 %aux87, i32* @IdPos1
	br label %etiq23
	
	etiq23:
	;___Asignación___
	%aux89 = load i32, i32* @Pivot1
	%aux92 = add i32 0, 1
	%aux93 = sub i32 %aux89, %aux92
	store i32 %aux93, i32* @Pivot1
	br label %etiq24
	
	etiq20:
	;___Asignación___
	%aux95 = load i32, i32* @IdPos1
	%aux98 = add i32 0, 1
	%aux99 = add i32 %aux95, %aux98
	store i32 %aux99, i32* @IdPos1
	br label %etiq24
	
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux100 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq24
	
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux101 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq24
	
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux102 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq24
	
	etiq24:
	;___Asignación___
	%aux104 = load i32, i32* @_Acum1
	store i32 %aux104, i32* @_Acum2
	br label %etiq25
	
	etiq25:
	;___Asignación___
	%aux106 = add i32 0, 1
	store i32 %aux106, i32* @Pivot2
	br label %etiq26
	
	etiq26:
	;___IfElse___
	%aux108 = load i32, i32* @Pivot2
	%aux111 = add i32 0, 1
	%aux112 = icmp sge i32 %aux108, %aux111
	br i1 %aux112, label %etiq27, label %etiq28
	
	etiq27:
	;___IfElse___
	%aux117 = add i32 0, 2
	%aux115 = load i32, i32* @Pivot2
	%aux118 = icmp sge i32 %aux117, %aux115
	br i1 %aux118, label %etiq30, label %etiq31
	
	etiq30:
	;___IfElse___
	%aux123 = add i32 0, 2
	%aux124 = add i32 0, 0
	%aux125 = icmp sgt i32 %aux123, %aux124
	br i1 %aux125, label %etiq33, label %etiq34
	
	etiq33:
	;___IfElse___
	%aux133 = add i32 0, 2
	%aux131 = load i32, i32* @Pivot2
	%aux134 = sub i32 %aux133, %aux131
	%aux128 = load i32, i32* @IdPos2
	%aux135 = icmp eq i32 %aux134, %aux128
	br i1 %aux135, label %etiq36, label %etiq37
	
	etiq36:
	;___Asignación___
	%aux137 = load i32, i32* @_Acum3
	%aux140 = add i32 0, 1
	%aux141 = add i32 %aux137, %aux140
	store i32 %aux141, i32* @_Acum3
	br label %etiq39
	
	etiq39:
	;___Asignación___
	%aux143 = load i32, i32* @IdPos2
	%aux146 = add i32 0, 1
	%aux147 = add i32 %aux143, %aux146
	store i32 %aux147, i32* @IdPos2
	br label %etiq40
	
	etiq40:
	;___Asignación___
	%aux149 = load i32, i32* @Pivot2
	%aux152 = add i32 0, 1
	%aux153 = sub i32 %aux149, %aux152
	store i32 %aux153, i32* @Pivot2
	br label %etiq41
	
	etiq37:
	;___Asignación___
	%aux155 = load i32, i32* @IdPos2
	%aux158 = add i32 0, 1
	%aux159 = add i32 %aux155, %aux158
	store i32 %aux159, i32* @IdPos2
	br label %etiq41
	
	etiq41:
	;___IfElse___
	%aux167 = add i32 0, 2
	%aux165 = load i32, i32* @Pivot2
	%aux168 = sub i32 %aux167, %aux165
	%aux162 = load i32, i32* @IdPos2
	%aux169 = icmp eq i32 %aux168, %aux162
	br i1 %aux169, label %etiq42, label %etiq43
	
	etiq42:
	;___Asignación___
	%aux171 = load i32, i32* @_Acum3
	%aux172 = load i32, i32* @_Acum2
	%aux174 = add i32 %aux171, %aux172
	store i32 %aux174, i32* @_Acum3
	br label %etiq45
	
	etiq45:
	;___Asignación___
	%aux176 = load i32, i32* @IdPos2
	%aux179 = add i32 0, 1
	%aux180 = add i32 %aux176, %aux179
	store i32 %aux180, i32* @IdPos2
	br label %etiq46
	
	etiq46:
	;___Asignación___
	%aux182 = load i32, i32* @Pivot2
	%aux185 = add i32 0, 1
	%aux186 = sub i32 %aux182, %aux185
	store i32 %aux186, i32* @Pivot2
	br label %etiq47
	
	etiq43:
	;___Asignación___
	%aux188 = load i32, i32* @IdPos2
	%aux191 = add i32 0, 1
	%aux192 = add i32 %aux188, %aux191
	store i32 %aux192, i32* @IdPos2
	br label %etiq47
	
	etiq34:
	;___DisplayCadenaCaracteres___
	%aux193 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq47
	
	etiq31:
	;___DisplayCadenaCaracteres___
	%aux194 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq47
	
	etiq28:
	;___DisplayCadenaCaracteres___
	%aux195 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq47
	
	etiq47:
	;___Asignación___
	%aux197 = load i32, i32* @_Acum3
	store i32 %aux197, i32* @_Acum4
	br label %etiq48
	
	etiq48:
	%aux198 = load i32, i32* @_Acum4
	%aux199 = add i32 0, 1
	%aux200 = add i32 %aux198, %aux199
	br label %etiq49
	
	etiq49:
	;___Asignación___
	%aux202 = add i32 0, 2
	store i32 %aux202, i32* @Pivot4
	br label %etiq50
	
	etiq50:
	;___IfElse___
	%aux204 = load i32, i32* @Pivot4
	%aux207 = add i32 0, 1
	%aux208 = icmp sge i32 %aux204, %aux207
	br i1 %aux208, label %etiq51, label %etiq52
	
	etiq51:
	;___IfElse___
	%aux213 = add i32 0, 3
	%aux211 = load i32, i32* @Pivot4
	%aux214 = icmp sge i32 %aux213, %aux211
	br i1 %aux214, label %etiq54, label %etiq55
	
	etiq54:
	;___IfElse___
	%aux219 = add i32 0, 3
	%aux220 = add i32 0, 0
	%aux221 = icmp sgt i32 %aux219, %aux220
	br i1 %aux221, label %etiq57, label %etiq58
	
	etiq57:
	;___IfElse___
	%aux229 = add i32 0, 3
	%aux227 = load i32, i32* @Pivot4
	%aux230 = sub i32 %aux229, %aux227
	%aux224 = load i32, i32* @IdPos4
	%aux231 = icmp eq i32 %aux230, %aux224
	br i1 %aux231, label %etiq60, label %etiq61
	
	etiq60:
	;___Asignación___
	%aux233 = load i32, i32* @_Acum7
	%aux236 = add i32 0, 1
	%aux237 = add i32 %aux233, %aux236
	store i32 %aux237, i32* @_Acum7
	br label %etiq63
	
	etiq63:
	;___Asignación___
	%aux239 = load i32, i32* @IdPos4
	%aux242 = add i32 0, 1
	%aux243 = add i32 %aux239, %aux242
	store i32 %aux243, i32* @IdPos4
	br label %etiq64
	
	etiq64:
	;___Asignación___
	%aux245 = load i32, i32* @Pivot4
	%aux248 = add i32 0, 1
	%aux249 = sub i32 %aux245, %aux248
	store i32 %aux249, i32* @Pivot4
	br label %etiq65
	
	etiq61:
	;___Asignación___
	%aux251 = load i32, i32* @IdPos4
	%aux254 = add i32 0, 1
	%aux255 = add i32 %aux251, %aux254
	store i32 %aux255, i32* @IdPos4
	br label %etiq65
	
	etiq65:
	;___IfElse___
	%aux263 = add i32 0, 3
	%aux261 = load i32, i32* @Pivot4
	%aux264 = sub i32 %aux263, %aux261
	%aux258 = load i32, i32* @IdPos4
	%aux265 = icmp eq i32 %aux264, %aux258
	br i1 %aux265, label %etiq66, label %etiq67
	
	etiq66:
	;___Asignación___
	%aux267 = load i32, i32* @_Acum7
	%aux270 = add i32 0, 2
	%aux271 = add i32 %aux267, %aux270
	store i32 %aux271, i32* @_Acum7
	br label %etiq69
	
	etiq69:
	;___Asignación___
	%aux273 = load i32, i32* @IdPos4
	%aux276 = add i32 0, 1
	%aux277 = add i32 %aux273, %aux276
	store i32 %aux277, i32* @IdPos4
	br label %etiq70
	
	etiq70:
	;___Asignación___
	%aux279 = load i32, i32* @Pivot4
	%aux282 = add i32 0, 1
	%aux283 = sub i32 %aux279, %aux282
	store i32 %aux283, i32* @Pivot4
	br label %etiq71
	
	etiq67:
	;___Asignación___
	%aux285 = load i32, i32* @IdPos4
	%aux288 = add i32 0, 1
	%aux289 = add i32 %aux285, %aux288
	store i32 %aux289, i32* @IdPos4
	br label %etiq71
	
	etiq71:
	;___IfElse___
	%aux297 = add i32 0, 3
	%aux295 = load i32, i32* @Pivot4
	%aux298 = sub i32 %aux297, %aux295
	%aux292 = load i32, i32* @IdPos4
	%aux299 = icmp eq i32 %aux298, %aux292
	br i1 %aux299, label %etiq72, label %etiq73
	
	etiq72:
	;___Asignación___
	%aux301 = load i32, i32* @_Acum7
	%aux307 = add i32 0, 12
	br label %etiq75
	
	etiq75:
	;___Asignación___
	%aux309 = add i32 0, 1
	store i32 %aux309, i32* @Pivot3
	br label %etiq76
	
	etiq76:
	;___IfElse___
	%aux311 = load i32, i32* @Pivot3
	%aux314 = add i32 0, 1
	%aux315 = icmp sge i32 %aux311, %aux314
	br i1 %aux315, label %etiq77, label %etiq78
	
	etiq77:
	;___IfElse___
	%aux320 = add i32 0, 1
	%aux318 = load i32, i32* @Pivot3
	%aux321 = icmp sge i32 %aux320, %aux318
	br i1 %aux321, label %etiq80, label %etiq81
	
	etiq80:
	;___IfElse___
	%aux326 = add i32 0, 1
	%aux327 = add i32 0, 0
	%aux328 = icmp sgt i32 %aux326, %aux327
	br i1 %aux328, label %etiq83, label %etiq84
	
	etiq83:
	;___IfElse___
	%aux336 = add i32 0, 1
	%aux334 = load i32, i32* @Pivot3
	%aux337 = sub i32 %aux336, %aux334
	%aux331 = load i32, i32* @IdPos3
	%aux338 = icmp eq i32 %aux337, %aux331
	br i1 %aux338, label %etiq86, label %etiq87
	
	etiq86:
	;___Asignación___
	%aux340 = load i32, i32* @_Acum5
	%aux343 = add i32 0, 1
	%aux344 = add i32 %aux340, %aux343
	store i32 %aux344, i32* @_Acum5
	br label %etiq89
	
	etiq89:
	;___Asignación___
	%aux346 = load i32, i32* @IdPos3
	%aux349 = add i32 0, 1
	%aux350 = add i32 %aux346, %aux349
	store i32 %aux350, i32* @IdPos3
	br label %etiq90
	
	etiq90:
	;___Asignación___
	%aux352 = load i32, i32* @Pivot3
	%aux355 = add i32 0, 1
	%aux356 = sub i32 %aux352, %aux355
	store i32 %aux356, i32* @Pivot3
	br label %etiq91
	
	etiq87:
	;___Asignación___
	%aux358 = load i32, i32* @IdPos3
	%aux361 = add i32 0, 1
	%aux362 = add i32 %aux358, %aux361
	store i32 %aux362, i32* @IdPos3
	br label %etiq91
	
	etiq84:
	;___DisplayCadenaCaracteres___
	%aux363 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq91
	
	etiq81:
	;___DisplayCadenaCaracteres___
	%aux364 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq91
	
	etiq78:
	;___DisplayCadenaCaracteres___
	%aux365 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq91
	
	etiq91:
	;___Asignación___
	%aux367 = load i32, i32* @_Acum5
	store i32 %aux367, i32* @_Acum6
	br label %etiq92
	
	etiq92:
	%aux368 = load i32, i32* @_Acum6
	%aux369 = mul i32 %aux307, %aux368
	%aux370 = add i32 %aux301, %aux369
	store i32 %aux370, i32* @_Acum7
	br label %etiq93
	
	etiq93:
	;___Asignación___
	%aux372 = load i32, i32* @IdPos4
	%aux375 = add i32 0, 1
	%aux376 = add i32 %aux372, %aux375
	store i32 %aux376, i32* @IdPos4
	br label %etiq94
	
	etiq94:
	;___Asignación___
	%aux378 = load i32, i32* @Pivot4
	%aux381 = add i32 0, 1
	%aux382 = sub i32 %aux378, %aux381
	store i32 %aux382, i32* @Pivot4
	br label %etiq95
	
	etiq73:
	;___Asignación___
	%aux384 = load i32, i32* @IdPos4
	%aux387 = add i32 0, 1
	%aux388 = add i32 %aux384, %aux387
	store i32 %aux388, i32* @IdPos4
	br label %etiq95
	
	etiq58:
	;___DisplayCadenaCaracteres___
	%aux389 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq95
	
	etiq55:
	;___DisplayCadenaCaracteres___
	%aux390 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq95
	
	etiq52:
	;___DisplayCadenaCaracteres___
	%aux391 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq95
	
	etiq95:
	;___Asignación___
	%aux393 = load i32, i32* @_Acum7
	store i32 %aux393, i32* @_Acum8
	br label %etiq96
	
	etiq96:
	%aux394 = load i32, i32* @_Acum8
	%aux395 = add i32 %aux200, %aux394
	br label %etiq97
	
	etiq97:
	;___Asignación___
	%aux397 = add i32 0, 2
	store i32 %aux397, i32* @Pivot5
	br label %etiq98
	
	etiq98:
	;___IfElse___
	%aux399 = load i32, i32* @Pivot5
	%aux402 = add i32 0, 1
	%aux403 = icmp sge i32 %aux399, %aux402
	br i1 %aux403, label %etiq99, label %etiq100
	
	etiq99:
	;___IfElse___
	%aux408 = add i32 0, 2
	%aux406 = load i32, i32* @Pivot5
	%aux409 = icmp sge i32 %aux408, %aux406
	br i1 %aux409, label %etiq102, label %etiq103
	
	etiq102:
	;___IfElse___
	%aux414 = add i32 0, 2
	%aux415 = add i32 0, 0
	%aux416 = icmp sgt i32 %aux414, %aux415
	br i1 %aux416, label %etiq105, label %etiq106
	
	etiq105:
	;___IfElse___
	%aux424 = add i32 0, 2
	%aux422 = load i32, i32* @Pivot5
	%aux425 = sub i32 %aux424, %aux422
	%aux419 = load i32, i32* @IdPos5
	%aux426 = icmp eq i32 %aux425, %aux419
	br i1 %aux426, label %etiq108, label %etiq109
	
	etiq108:
	;___Asignación___
	%aux428 = load i32, i32* @_Acum9
	%aux431 = add i32 0, 1
	%aux432 = add i32 %aux428, %aux431
	store i32 %aux432, i32* @_Acum9
	br label %etiq111
	
	etiq111:
	;___Asignación___
	%aux434 = load i32, i32* @IdPos5
	%aux437 = add i32 0, 1
	%aux438 = add i32 %aux434, %aux437
	store i32 %aux438, i32* @IdPos5
	br label %etiq112
	
	etiq112:
	;___Asignación___
	%aux440 = load i32, i32* @Pivot5
	%aux443 = add i32 0, 1
	%aux444 = sub i32 %aux440, %aux443
	store i32 %aux444, i32* @Pivot5
	br label %etiq113
	
	etiq109:
	;___Asignación___
	%aux446 = load i32, i32* @IdPos5
	%aux449 = add i32 0, 1
	%aux450 = add i32 %aux446, %aux449
	store i32 %aux450, i32* @IdPos5
	br label %etiq113
	
	etiq113:
	;___IfElse___
	%aux458 = add i32 0, 2
	%aux456 = load i32, i32* @Pivot5
	%aux459 = sub i32 %aux458, %aux456
	%aux453 = load i32, i32* @IdPos5
	%aux460 = icmp eq i32 %aux459, %aux453
	br i1 %aux460, label %etiq114, label %etiq115
	
	etiq114:
	;___Asignación___
	%aux462 = load i32, i32* @_Acum9
	%aux465 = add i32 0, 2
	%aux466 = add i32 %aux462, %aux465
	store i32 %aux466, i32* @_Acum9
	br label %etiq117
	
	etiq117:
	;___Asignación___
	%aux468 = load i32, i32* @IdPos5
	%aux471 = add i32 0, 1
	%aux472 = add i32 %aux468, %aux471
	store i32 %aux472, i32* @IdPos5
	br label %etiq118
	
	etiq118:
	;___Asignación___
	%aux474 = load i32, i32* @Pivot5
	%aux477 = add i32 0, 1
	%aux478 = sub i32 %aux474, %aux477
	store i32 %aux478, i32* @Pivot5
	br label %etiq119
	
	etiq115:
	;___Asignación___
	%aux480 = load i32, i32* @IdPos5
	%aux483 = add i32 0, 1
	%aux484 = add i32 %aux480, %aux483
	store i32 %aux484, i32* @IdPos5
	br label %etiq119
	
	etiq106:
	;___DisplayCadenaCaracteres___
	%aux485 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq119
	
	etiq103:
	;___DisplayCadenaCaracteres___
	%aux486 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq119
	
	etiq100:
	;___DisplayCadenaCaracteres___
	%aux487 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq119
	
	etiq119:
	;___Asignación___
	%aux489 = load i32, i32* @_Acum9
	store i32 %aux489, i32* @_Acum10
	br label %etiq120
	
	etiq120:
	%aux490 = load i32, i32* @_Acum10
	%aux491 = add i32 %aux395, %aux490
	store i32 %aux491, i32* @res
	br label %etiq121
	
	etiq121:
	;___DisplayExpresion___
	%aux493 = load i32, i32* @res
	%aux492 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux493)
	br label %etiq122
	
	etiq122:
	ret i32 0
}

