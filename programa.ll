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
@res3 = global i32 0
@res4 = global i32 0
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq2:
	;___Asignación___
	%aux4 = add i32 0, 1
	store i32 %aux4, i32* @Pivot1
	br label %etiq3
	
	etiq3:
	;___IfElse___
	%aux6 = load i32, i32* @Pivot1
	%aux9 = add i32 0, 1
	%aux10 = icmp sge i32 %aux6, %aux9
	br i1 %aux10, label %etiq4, label %etiq5
	
	etiq4:
	;___IfElse___
	%aux15 = add i32 0, 1
	%aux13 = load i32, i32* @Pivot1
	%aux16 = icmp sge i32 %aux15, %aux13
	br i1 %aux16, label %etiq7, label %etiq8
	
	etiq7:
	;___IfElse___
	%aux21 = add i32 0, 1
	%aux22 = add i32 0, 0
	%aux23 = icmp sgt i32 %aux21, %aux22
	br i1 %aux23, label %etiq10, label %etiq11
	
	etiq10:
	;___IfElse___
	%aux31 = add i32 0, 1
	%aux29 = load i32, i32* @Pivot1
	%aux32 = sub i32 %aux31, %aux29
	%aux26 = load i32, i32* @IdPos1
	%aux33 = icmp eq i32 %aux32, %aux26
	br i1 %aux33, label %etiq13, label %etiq14
	
	etiq13:
	;___Asignación___
	%aux35 = load i32, i32* @_Acum1
	%aux38 = add i32 0, 1
	%aux39 = add i32 %aux35, %aux38
	store i32 %aux39, i32* @_Acum1
	br label %etiq16
	
	etiq16:
	;___Asignación___
	%aux41 = load i32, i32* @IdPos1
	%aux44 = add i32 0, 1
	%aux45 = add i32 %aux41, %aux44
	store i32 %aux45, i32* @IdPos1
	br label %etiq17
	
	etiq17:
	;___Asignación___
	%aux47 = load i32, i32* @Pivot1
	%aux50 = add i32 0, 1
	%aux51 = sub i32 %aux47, %aux50
	store i32 %aux51, i32* @Pivot1
	br label %etiq18
	
	etiq14:
	;___Asignación___
	%aux53 = load i32, i32* @IdPos1
	%aux56 = add i32 0, 1
	%aux57 = add i32 %aux53, %aux56
	store i32 %aux57, i32* @IdPos1
	br label %etiq18
	
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux58 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq18
	
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux59 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq18
	
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux60 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq18
	
	etiq18:
	;___Asignación___
	%aux62 = load i32, i32* @_Acum1
	store i32 %aux62, i32* @_Acum2
	br label %etiq19
	
	etiq19:
	%aux63 = load i32, i32* @_Acum2
	%aux64 = sub i32 0, %aux63
	store i32 %aux64, i32* @res
	br label %etiq20
	
	etiq20:
	;___Asignación___
	%aux69 = add i32 0, 1
	br label %etiq21
	
	etiq21:
	;___Asignación___
	%aux71 = add i32 0, 1
	store i32 %aux71, i32* @Pivot2
	br label %etiq22
	
	etiq22:
	;___IfElse___
	%aux73 = load i32, i32* @Pivot2
	%aux76 = add i32 0, 1
	%aux77 = icmp sge i32 %aux73, %aux76
	br i1 %aux77, label %etiq23, label %etiq24
	
	etiq23:
	;___IfElse___
	%aux82 = add i32 0, 1
	%aux80 = load i32, i32* @Pivot2
	%aux83 = icmp sge i32 %aux82, %aux80
	br i1 %aux83, label %etiq26, label %etiq27
	
	etiq26:
	;___IfElse___
	%aux88 = add i32 0, 1
	%aux89 = add i32 0, 0
	%aux90 = icmp sgt i32 %aux88, %aux89
	br i1 %aux90, label %etiq29, label %etiq30
	
	etiq29:
	;___IfElse___
	%aux98 = add i32 0, 1
	%aux96 = load i32, i32* @Pivot2
	%aux99 = sub i32 %aux98, %aux96
	%aux93 = load i32, i32* @IdPos2
	%aux100 = icmp eq i32 %aux99, %aux93
	br i1 %aux100, label %etiq32, label %etiq33
	
	etiq32:
	;___Asignación___
	%aux102 = load i32, i32* @_Acum3
	%aux105 = add i32 0, 1
	%aux106 = add i32 %aux102, %aux105
	store i32 %aux106, i32* @_Acum3
	br label %etiq35
	
	etiq35:
	;___Asignación___
	%aux108 = load i32, i32* @IdPos2
	%aux111 = add i32 0, 1
	%aux112 = add i32 %aux108, %aux111
	store i32 %aux112, i32* @IdPos2
	br label %etiq36
	
	etiq36:
	;___Asignación___
	%aux114 = load i32, i32* @Pivot2
	%aux117 = add i32 0, 1
	%aux118 = sub i32 %aux114, %aux117
	store i32 %aux118, i32* @Pivot2
	br label %etiq37
	
	etiq33:
	;___Asignación___
	%aux120 = load i32, i32* @IdPos2
	%aux123 = add i32 0, 1
	%aux124 = add i32 %aux120, %aux123
	store i32 %aux124, i32* @IdPos2
	br label %etiq37
	
	etiq30:
	;___DisplayCadenaCaracteres___
	%aux125 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq37
	
	etiq27:
	;___DisplayCadenaCaracteres___
	%aux126 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq37
	
	etiq24:
	;___DisplayCadenaCaracteres___
	%aux127 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq37
	
	etiq37:
	;___Asignación___
	%aux129 = load i32, i32* @_Acum3
	store i32 %aux129, i32* @_Acum4
	br label %etiq38
	
	etiq38:
	%aux130 = load i32, i32* @_Acum4
	%aux131 = add i32 %aux69, %aux130
	store i32 %aux131, i32* @res2
	br label %etiq39
	
	etiq40:
	;___Asignación___
	%aux137 = add i32 0, 3
	store i32 %aux137, i32* @Pivot3
	br label %etiq41
	
	etiq41:
	;___IfElse___
	%aux139 = load i32, i32* @Pivot3
	%aux142 = add i32 0, 1
	%aux143 = icmp sge i32 %aux139, %aux142
	br i1 %aux143, label %etiq42, label %etiq43
	
	etiq42:
	;___IfElse___
	%aux148 = add i32 0, 3
	%aux146 = load i32, i32* @Pivot3
	%aux149 = icmp sge i32 %aux148, %aux146
	br i1 %aux149, label %etiq45, label %etiq46
	
	etiq45:
	;___IfElse___
	%aux154 = add i32 0, 3
	%aux155 = add i32 0, 0
	%aux156 = icmp sgt i32 %aux154, %aux155
	br i1 %aux156, label %etiq48, label %etiq49
	
	etiq48:
	;___IfElse___
	%aux164 = add i32 0, 3
	%aux162 = load i32, i32* @Pivot3
	%aux165 = sub i32 %aux164, %aux162
	%aux159 = load i32, i32* @IdPos3
	%aux166 = icmp eq i32 %aux165, %aux159
	br i1 %aux166, label %etiq51, label %etiq52
	
	etiq51:
	;___Asignación___
	%aux168 = load i32, i32* @_Acum5
	%aux171 = add i32 0, 4
	%aux172 = add i32 %aux168, %aux171
	store i32 %aux172, i32* @_Acum5
	br label %etiq54
	
	etiq54:
	;___Asignación___
	%aux174 = load i32, i32* @IdPos3
	%aux177 = add i32 0, 1
	%aux178 = add i32 %aux174, %aux177
	store i32 %aux178, i32* @IdPos3
	br label %etiq55
	
	etiq55:
	;___Asignación___
	%aux180 = load i32, i32* @Pivot3
	%aux183 = add i32 0, 1
	%aux184 = sub i32 %aux180, %aux183
	store i32 %aux184, i32* @Pivot3
	br label %etiq56
	
	etiq52:
	;___Asignación___
	%aux186 = load i32, i32* @IdPos3
	%aux189 = add i32 0, 1
	%aux190 = add i32 %aux186, %aux189
	store i32 %aux190, i32* @IdPos3
	br label %etiq56
	
	etiq56:
	;___IfElse___
	%aux198 = add i32 0, 3
	%aux196 = load i32, i32* @Pivot3
	%aux199 = sub i32 %aux198, %aux196
	%aux193 = load i32, i32* @IdPos3
	%aux200 = icmp eq i32 %aux199, %aux193
	br i1 %aux200, label %etiq57, label %etiq58
	
	etiq57:
	;___Asignación___
	%aux202 = load i32, i32* @_Acum5
	%aux205 = add i32 0, 5
	%aux206 = add i32 %aux202, %aux205
	store i32 %aux206, i32* @_Acum5
	br label %etiq60
	
	etiq60:
	;___Asignación___
	%aux208 = load i32, i32* @IdPos3
	%aux211 = add i32 0, 1
	%aux212 = add i32 %aux208, %aux211
	store i32 %aux212, i32* @IdPos3
	br label %etiq61
	
	etiq61:
	;___Asignación___
	%aux214 = load i32, i32* @Pivot3
	%aux217 = add i32 0, 1
	%aux218 = sub i32 %aux214, %aux217
	store i32 %aux218, i32* @Pivot3
	br label %etiq62
	
	etiq58:
	;___Asignación___
	%aux220 = load i32, i32* @IdPos3
	%aux223 = add i32 0, 1
	%aux224 = add i32 %aux220, %aux223
	store i32 %aux224, i32* @IdPos3
	br label %etiq62
	
	etiq62:
	;___IfElse___
	%aux232 = add i32 0, 3
	%aux230 = load i32, i32* @Pivot3
	%aux233 = sub i32 %aux232, %aux230
	%aux227 = load i32, i32* @IdPos3
	%aux234 = icmp eq i32 %aux233, %aux227
	br i1 %aux234, label %etiq63, label %etiq64
	
	etiq63:
	;___Asignación___
	%aux236 = load i32, i32* @_Acum5
	%aux239 = add i32 0, 6
	%aux240 = add i32 %aux236, %aux239
	store i32 %aux240, i32* @_Acum5
	br label %etiq66
	
	etiq66:
	;___Asignación___
	%aux242 = load i32, i32* @IdPos3
	%aux245 = add i32 0, 1
	%aux246 = add i32 %aux242, %aux245
	store i32 %aux246, i32* @IdPos3
	br label %etiq67
	
	etiq67:
	;___Asignación___
	%aux248 = load i32, i32* @Pivot3
	%aux251 = add i32 0, 1
	%aux252 = sub i32 %aux248, %aux251
	store i32 %aux252, i32* @Pivot3
	br label %etiq68
	
	etiq64:
	;___Asignación___
	%aux254 = load i32, i32* @IdPos3
	%aux257 = add i32 0, 1
	%aux258 = add i32 %aux254, %aux257
	store i32 %aux258, i32* @IdPos3
	br label %etiq68
	
	etiq49:
	;___DisplayCadenaCaracteres___
	%aux259 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq68
	
	etiq46:
	;___DisplayCadenaCaracteres___
	%aux260 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq68
	
	etiq43:
	;___DisplayCadenaCaracteres___
	%aux261 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq68
	
	etiq68:
	;___Asignación___
	%aux263 = load i32, i32* @_Acum5
	store i32 %aux263, i32* @_Acum6
	br label %etiq69
	
	etiq69:
	;___Asignación___
	%aux265 = add i32 0, 1
	store i32 %aux265, i32* @Pivot4
	br label %etiq70
	
	etiq70:
	;___IfElse___
	%aux267 = load i32, i32* @Pivot4
	%aux270 = add i32 0, 1
	%aux271 = icmp sge i32 %aux267, %aux270
	br i1 %aux271, label %etiq71, label %etiq72
	
	etiq71:
	;___IfElse___
	%aux276 = add i32 0, 2
	%aux274 = load i32, i32* @Pivot4
	%aux277 = icmp sge i32 %aux276, %aux274
	br i1 %aux277, label %etiq74, label %etiq75
	
	etiq74:
	;___IfElse___
	%aux282 = add i32 0, 2
	%aux283 = add i32 0, 0
	%aux284 = icmp sgt i32 %aux282, %aux283
	br i1 %aux284, label %etiq77, label %etiq78
	
	etiq77:
	;___IfElse___
	%aux292 = add i32 0, 2
	%aux290 = load i32, i32* @Pivot4
	%aux293 = sub i32 %aux292, %aux290
	%aux287 = load i32, i32* @IdPos4
	%aux294 = icmp eq i32 %aux293, %aux287
	br i1 %aux294, label %etiq80, label %etiq81
	
	etiq80:
	;___Asignación___
	%aux296 = load i32, i32* @_Acum7
	%aux299 = add i32 0, 2
	%aux300 = add i32 %aux296, %aux299
	store i32 %aux300, i32* @_Acum7
	br label %etiq83
	
	etiq83:
	;___Asignación___
	%aux302 = load i32, i32* @IdPos4
	%aux305 = add i32 0, 1
	%aux306 = add i32 %aux302, %aux305
	store i32 %aux306, i32* @IdPos4
	br label %etiq84
	
	etiq84:
	;___Asignación___
	%aux308 = load i32, i32* @Pivot4
	%aux311 = add i32 0, 1
	%aux312 = sub i32 %aux308, %aux311
	store i32 %aux312, i32* @Pivot4
	br label %etiq85
	
	etiq81:
	;___Asignación___
	%aux314 = load i32, i32* @IdPos4
	%aux317 = add i32 0, 1
	%aux318 = add i32 %aux314, %aux317
	store i32 %aux318, i32* @IdPos4
	br label %etiq85
	
	etiq85:
	;___IfElse___
	%aux326 = add i32 0, 2
	%aux324 = load i32, i32* @Pivot4
	%aux327 = sub i32 %aux326, %aux324
	%aux321 = load i32, i32* @IdPos4
	%aux328 = icmp eq i32 %aux327, %aux321
	br i1 %aux328, label %etiq86, label %etiq87
	
	etiq86:
	;___Asignación___
	%aux330 = load i32, i32* @_Acum7
	%aux331 = load i32, i32* @_Acum6
	%aux333 = add i32 %aux330, %aux331
	store i32 %aux333, i32* @_Acum7
	br label %etiq89
	
	etiq89:
	;___Asignación___
	%aux335 = load i32, i32* @IdPos4
	%aux338 = add i32 0, 1
	%aux339 = add i32 %aux335, %aux338
	store i32 %aux339, i32* @IdPos4
	br label %etiq90
	
	etiq90:
	;___Asignación___
	%aux341 = load i32, i32* @Pivot4
	%aux344 = add i32 0, 1
	%aux345 = sub i32 %aux341, %aux344
	store i32 %aux345, i32* @Pivot4
	br label %etiq91
	
	etiq87:
	;___Asignación___
	%aux347 = load i32, i32* @IdPos4
	%aux350 = add i32 0, 1
	%aux351 = add i32 %aux347, %aux350
	store i32 %aux351, i32* @IdPos4
	br label %etiq91
	
	etiq78:
	;___DisplayCadenaCaracteres___
	%aux352 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq91
	
	etiq75:
	;___DisplayCadenaCaracteres___
	%aux353 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq91
	
	etiq72:
	;___DisplayCadenaCaracteres___
	%aux354 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq91
	
	etiq91:
	;___Asignación___
	%aux356 = load i32, i32* @_Acum7
	store i32 %aux356, i32* @_Acum8
	br label %etiq92
	
	etiq92:
	%aux357 = load i32, i32* @_Acum8
	%aux358 = add i32 0, 1
	%aux359 = add i32 %aux357, %aux358
	store i32 %aux359, i32* @res3
	br label %etiq93
	
	etiq93:
	;___DisplayExpresion___
	%aux361 = load i32, i32* @res
	%aux360 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux361)
	br label %etiq94
	
	etiq94:
	;___DisplayExpresion___
	%aux363 = load i32, i32* @res2
	%aux362 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux363)
	br label %etiq95
	
	etiq95:
	;___DisplayExpresion___
	%aux365 = load i32, i32* @res3
	%aux364 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux365)
	br label %etiq96
	
	etiq96:
	ret i32 0
}

