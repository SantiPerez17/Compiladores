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
@Pivot1 = global i32 0
@Pivot2 = global i32 0
@Pivot3 = global i32 0
@Pivot4 = global i32 0
@_Acum1 = global i32 0
@_Acum2 = global i32 0
@_Acum3 = global i32 0
@_Acum4 = global i32 0
@_Acum5 = global i32 0
@_Acum6 = global i32 0
@_Acum7 = global i32 0
@_Acum8 = global i32 0
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
	%aux15 = add i32 0, 2
	store i32 %aux15, i32* @Pivot1
	br label %etiq3
	
	etiq3:
	;___IfElse___
	%aux17 = load i32, i32* @Pivot1
	%aux20 = add i32 0, 1
	%aux21 = icmp sge i32 %aux17, %aux20
	br i1 %aux21, label %etiq4, label %etiq5
	
	etiq4:
	;___IfElse___
	%aux26 = add i32 0, 2
	%aux24 = load i32, i32* @Pivot1
	%aux27 = icmp sge i32 %aux26, %aux24
	br i1 %aux27, label %etiq7, label %etiq8
	
	etiq7:
	;___IfElse___
	%aux32 = add i32 0, 2
	%aux33 = add i32 0, 0
	%aux34 = icmp sgt i32 %aux32, %aux33
	br i1 %aux34, label %etiq10, label %etiq11
	
	etiq10:
	;___IfElse___
	%aux42 = add i32 0, 2
	%aux40 = load i32, i32* @Pivot1
	%aux43 = sub i32 %aux42, %aux40
	%aux37 = load i32, i32* @IdPos1
	%aux44 = icmp eq i32 %aux43, %aux37
	br i1 %aux44, label %etiq13, label %etiq14
	
	etiq13:
	;___Asignación___
	%aux46 = load i32, i32* @_Acum1
	%aux49 = add i32 0, 1
	%aux50 = add i32 %aux46, %aux49
	store i32 %aux50, i32* @_Acum1
	br label %etiq16
	
	etiq16:
	;___Asignación___
	%aux52 = load i32, i32* @IdPos1
	%aux55 = add i32 0, 1
	%aux56 = add i32 %aux52, %aux55
	store i32 %aux56, i32* @IdPos1
	br label %etiq17
	
	etiq17:
	;___Asignación___
	%aux58 = load i32, i32* @Pivot1
	%aux61 = add i32 0, 1
	%aux62 = sub i32 %aux58, %aux61
	store i32 %aux62, i32* @Pivot1
	br label %etiq18
	
	etiq14:
	;___Asignación___
	%aux64 = load i32, i32* @IdPos1
	%aux67 = add i32 0, 1
	%aux68 = add i32 %aux64, %aux67
	store i32 %aux68, i32* @IdPos1
	br label %etiq18
	
	etiq18:
	;___IfElse___
	%aux76 = add i32 0, 2
	%aux74 = load i32, i32* @Pivot1
	%aux77 = sub i32 %aux76, %aux74
	%aux71 = load i32, i32* @IdPos1
	%aux78 = icmp eq i32 %aux77, %aux71
	br i1 %aux78, label %etiq19, label %etiq20
	
	etiq19:
	;___Asignación___
	%aux80 = load i32, i32* @_Acum1
	%aux83 = add i32 0, 2
	%aux84 = add i32 %aux80, %aux83
	store i32 %aux84, i32* @_Acum1
	br label %etiq22
	
	etiq22:
	;___Asignación___
	%aux86 = load i32, i32* @IdPos1
	%aux89 = add i32 0, 1
	%aux90 = add i32 %aux86, %aux89
	store i32 %aux90, i32* @IdPos1
	br label %etiq23
	
	etiq23:
	;___Asignación___
	%aux92 = load i32, i32* @Pivot1
	%aux95 = add i32 0, 1
	%aux96 = sub i32 %aux92, %aux95
	store i32 %aux96, i32* @Pivot1
	br label %etiq24
	
	etiq20:
	;___Asignación___
	%aux98 = load i32, i32* @IdPos1
	%aux101 = add i32 0, 1
	%aux102 = add i32 %aux98, %aux101
	store i32 %aux102, i32* @IdPos1
	br label %etiq24
	
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux103 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq24
	
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux104 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq24
	
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux105 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq24
	
	etiq24:
	;___Asignación___
	%aux107 = load i32, i32* @_Acum1
	store i32 %aux107, i32* @_Acum2
	br label %etiq25
	
	etiq25:
	;___Asignación___
	%aux109 = add i32 0, 1
	store i32 %aux109, i32* @Pivot2
	br label %etiq26
	
	etiq26:
	;___IfElse___
	%aux111 = load i32, i32* @Pivot2
	%aux114 = add i32 0, 1
	%aux115 = icmp sge i32 %aux111, %aux114
	br i1 %aux115, label %etiq27, label %etiq28
	
	etiq27:
	;___IfElse___
	%aux120 = add i32 0, 2
	%aux118 = load i32, i32* @Pivot2
	%aux121 = icmp sge i32 %aux120, %aux118
	br i1 %aux121, label %etiq30, label %etiq31
	
	etiq30:
	;___IfElse___
	%aux126 = add i32 0, 2
	%aux127 = add i32 0, 0
	%aux128 = icmp sgt i32 %aux126, %aux127
	br i1 %aux128, label %etiq33, label %etiq34
	
	etiq33:
	;___IfElse___
	%aux136 = add i32 0, 2
	%aux134 = load i32, i32* @Pivot2
	%aux137 = sub i32 %aux136, %aux134
	%aux131 = load i32, i32* @IdPos2
	%aux138 = icmp eq i32 %aux137, %aux131
	br i1 %aux138, label %etiq36, label %etiq37
	
	etiq36:
	;___Asignación___
	%aux140 = load i32, i32* @_Acum3
	%aux143 = add i32 0, 1
	%aux144 = add i32 %aux140, %aux143
	store i32 %aux144, i32* @_Acum3
	br label %etiq39
	
	etiq39:
	;___Asignación___
	%aux146 = load i32, i32* @IdPos2
	%aux149 = add i32 0, 1
	%aux150 = add i32 %aux146, %aux149
	store i32 %aux150, i32* @IdPos2
	br label %etiq40
	
	etiq40:
	;___Asignación___
	%aux152 = load i32, i32* @Pivot2
	%aux155 = add i32 0, 1
	%aux156 = sub i32 %aux152, %aux155
	store i32 %aux156, i32* @Pivot2
	br label %etiq41
	
	etiq37:
	;___Asignación___
	%aux158 = load i32, i32* @IdPos2
	%aux161 = add i32 0, 1
	%aux162 = add i32 %aux158, %aux161
	store i32 %aux162, i32* @IdPos2
	br label %etiq41
	
	etiq41:
	;___IfElse___
	%aux170 = add i32 0, 2
	%aux168 = load i32, i32* @Pivot2
	%aux171 = sub i32 %aux170, %aux168
	%aux165 = load i32, i32* @IdPos2
	%aux172 = icmp eq i32 %aux171, %aux165
	br i1 %aux172, label %etiq42, label %etiq43
	
	etiq42:
	;___Asignación___
	%aux174 = load i32, i32* @_Acum3
	%aux175 = load i32, i32* @_Acum2
	%aux177 = add i32 %aux174, %aux175
	store i32 %aux177, i32* @_Acum3
	br label %etiq45
	
	etiq45:
	;___Asignación___
	%aux179 = load i32, i32* @IdPos2
	%aux182 = add i32 0, 1
	%aux183 = add i32 %aux179, %aux182
	store i32 %aux183, i32* @IdPos2
	br label %etiq46
	
	etiq46:
	;___Asignación___
	%aux185 = load i32, i32* @Pivot2
	%aux188 = add i32 0, 1
	%aux189 = sub i32 %aux185, %aux188
	store i32 %aux189, i32* @Pivot2
	br label %etiq47
	
	etiq43:
	;___Asignación___
	%aux191 = load i32, i32* @IdPos2
	%aux194 = add i32 0, 1
	%aux195 = add i32 %aux191, %aux194
	store i32 %aux195, i32* @IdPos2
	br label %etiq47
	
	etiq34:
	;___DisplayCadenaCaracteres___
	%aux196 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq47
	
	etiq31:
	;___DisplayCadenaCaracteres___
	%aux197 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq47
	
	etiq28:
	;___DisplayCadenaCaracteres___
	%aux198 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq47
	
	etiq47:
	;___Asignación___
	%aux200 = load i32, i32* @_Acum3
	store i32 %aux200, i32* @_Acum4
	br label %etiq48
	
	etiq48:
	%aux201 = load i32, i32* @_Acum4
	%aux202 = add i32 0, 1
	%aux203 = add i32 %aux201, %aux202
	br label %etiq49
	
	etiq49:
	;___Asignación___
	%aux205 = add i32 0, 2
	store i32 %aux205, i32* @Pivot3
	br label %etiq50
	
	etiq50:
	;___IfElse___
	%aux207 = load i32, i32* @Pivot3
	%aux210 = add i32 0, 1
	%aux211 = icmp sge i32 %aux207, %aux210
	br i1 %aux211, label %etiq51, label %etiq52
	
	etiq51:
	;___IfElse___
	%aux216 = add i32 0, 2
	%aux214 = load i32, i32* @Pivot3
	%aux217 = icmp sge i32 %aux216, %aux214
	br i1 %aux217, label %etiq54, label %etiq55
	
	etiq54:
	;___IfElse___
	%aux222 = add i32 0, 2
	%aux223 = add i32 0, 0
	%aux224 = icmp sgt i32 %aux222, %aux223
	br i1 %aux224, label %etiq57, label %etiq58
	
	etiq57:
	;___IfElse___
	%aux232 = add i32 0, 2
	%aux230 = load i32, i32* @Pivot3
	%aux233 = sub i32 %aux232, %aux230
	%aux227 = load i32, i32* @IdPos3
	%aux234 = icmp eq i32 %aux233, %aux227
	br i1 %aux234, label %etiq60, label %etiq61
	
	etiq60:
	;___Asignación___
	%aux236 = load i32, i32* @_Acum5
	%aux239 = add i32 0, 1
	%aux240 = add i32 %aux236, %aux239
	store i32 %aux240, i32* @_Acum5
	br label %etiq63
	
	etiq63:
	;___Asignación___
	%aux242 = load i32, i32* @IdPos3
	%aux245 = add i32 0, 1
	%aux246 = add i32 %aux242, %aux245
	store i32 %aux246, i32* @IdPos3
	br label %etiq64
	
	etiq64:
	;___Asignación___
	%aux248 = load i32, i32* @Pivot3
	%aux251 = add i32 0, 1
	%aux252 = sub i32 %aux248, %aux251
	store i32 %aux252, i32* @Pivot3
	br label %etiq65
	
	etiq61:
	;___Asignación___
	%aux254 = load i32, i32* @IdPos3
	%aux257 = add i32 0, 1
	%aux258 = add i32 %aux254, %aux257
	store i32 %aux258, i32* @IdPos3
	br label %etiq65
	
	etiq65:
	;___IfElse___
	%aux266 = add i32 0, 2
	%aux264 = load i32, i32* @Pivot3
	%aux267 = sub i32 %aux266, %aux264
	%aux261 = load i32, i32* @IdPos3
	%aux268 = icmp eq i32 %aux267, %aux261
	br i1 %aux268, label %etiq66, label %etiq67
	
	etiq66:
	;___Asignación___
	%aux270 = load i32, i32* @_Acum5
	%aux273 = add i32 0, 2
	%aux274 = add i32 %aux270, %aux273
	store i32 %aux274, i32* @_Acum5
	br label %etiq69
	
	etiq69:
	;___Asignación___
	%aux276 = load i32, i32* @IdPos3
	%aux279 = add i32 0, 1
	%aux280 = add i32 %aux276, %aux279
	store i32 %aux280, i32* @IdPos3
	br label %etiq70
	
	etiq70:
	;___Asignación___
	%aux282 = load i32, i32* @Pivot3
	%aux285 = add i32 0, 1
	%aux286 = sub i32 %aux282, %aux285
	store i32 %aux286, i32* @Pivot3
	br label %etiq71
	
	etiq67:
	;___Asignación___
	%aux288 = load i32, i32* @IdPos3
	%aux291 = add i32 0, 1
	%aux292 = add i32 %aux288, %aux291
	store i32 %aux292, i32* @IdPos3
	br label %etiq71
	
	etiq58:
	;___DisplayCadenaCaracteres___
	%aux293 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq71
	
	etiq55:
	;___DisplayCadenaCaracteres___
	%aux294 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq71
	
	etiq52:
	;___DisplayCadenaCaracteres___
	%aux295 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq71
	
	etiq71:
	;___Asignación___
	%aux297 = load i32, i32* @_Acum5
	store i32 %aux297, i32* @_Acum6
	br label %etiq72
	
	etiq72:
	%aux298 = load i32, i32* @_Acum6
	%aux299 = add i32 %aux203, %aux298
	br label %etiq73
	
	etiq73:
	;___Asignación___
	%aux301 = add i32 0, 2
	store i32 %aux301, i32* @Pivot4
	br label %etiq74
	
	etiq74:
	;___IfElse___
	%aux303 = load i32, i32* @Pivot4
	%aux306 = add i32 0, 1
	%aux307 = icmp sge i32 %aux303, %aux306
	br i1 %aux307, label %etiq75, label %etiq76
	
	etiq75:
	;___IfElse___
	%aux312 = add i32 0, 2
	%aux310 = load i32, i32* @Pivot4
	%aux313 = icmp sge i32 %aux312, %aux310
	br i1 %aux313, label %etiq78, label %etiq79
	
	etiq78:
	;___IfElse___
	%aux318 = add i32 0, 2
	%aux319 = add i32 0, 0
	%aux320 = icmp sgt i32 %aux318, %aux319
	br i1 %aux320, label %etiq81, label %etiq82
	
	etiq81:
	;___IfElse___
	%aux328 = add i32 0, 2
	%aux326 = load i32, i32* @Pivot4
	%aux329 = sub i32 %aux328, %aux326
	%aux323 = load i32, i32* @IdPos4
	%aux330 = icmp eq i32 %aux329, %aux323
	br i1 %aux330, label %etiq84, label %etiq85
	
	etiq84:
	;___Asignación___
	%aux332 = load i32, i32* @_Acum7
	%aux335 = add i32 0, 1
	%aux336 = add i32 %aux332, %aux335
	store i32 %aux336, i32* @_Acum7
	br label %etiq87
	
	etiq87:
	;___Asignación___
	%aux338 = load i32, i32* @IdPos4
	%aux341 = add i32 0, 1
	%aux342 = add i32 %aux338, %aux341
	store i32 %aux342, i32* @IdPos4
	br label %etiq88
	
	etiq88:
	;___Asignación___
	%aux344 = load i32, i32* @Pivot4
	%aux347 = add i32 0, 1
	%aux348 = sub i32 %aux344, %aux347
	store i32 %aux348, i32* @Pivot4
	br label %etiq89
	
	etiq85:
	;___Asignación___
	%aux350 = load i32, i32* @IdPos4
	%aux353 = add i32 0, 1
	%aux354 = add i32 %aux350, %aux353
	store i32 %aux354, i32* @IdPos4
	br label %etiq89
	
	etiq89:
	;___IfElse___
	%aux362 = add i32 0, 2
	%aux360 = load i32, i32* @Pivot4
	%aux363 = sub i32 %aux362, %aux360
	%aux357 = load i32, i32* @IdPos4
	%aux364 = icmp eq i32 %aux363, %aux357
	br i1 %aux364, label %etiq90, label %etiq91
	
	etiq90:
	;___Asignación___
	%aux366 = load i32, i32* @_Acum7
	%aux369 = add i32 0, 2
	%aux370 = add i32 %aux366, %aux369
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
	
	etiq91:
	;___Asignación___
	%aux384 = load i32, i32* @IdPos4
	%aux387 = add i32 0, 1
	%aux388 = add i32 %aux384, %aux387
	store i32 %aux388, i32* @IdPos4
	br label %etiq95
	
	etiq82:
	;___DisplayCadenaCaracteres___
	%aux389 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq95
	
	etiq79:
	;___DisplayCadenaCaracteres___
	%aux390 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq95
	
	etiq76:
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
	%aux395 = add i32 %aux299, %aux394
	store i32 %aux395, i32* @res
	br label %etiq97
	
	etiq97:
	;___DisplayExpresion___
	%aux397 = load i32, i32* @res
	%aux396 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux397)
	br label %etiq98
	
	etiq98:
	ret i32 0
}

