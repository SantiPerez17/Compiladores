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
@IdPos2 = global i32 0
@IdPos3 = global i32 0
@Pivot2 = global i32 0
@Pivot3 = global i32 0
@_Acum3 = global i32 0
@_Acum4 = global i32 0
@_Acum5 = global i32 0
@_Acum6 = global i32 0
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
	
	etiq33:
	;___Asignación___
	%aux128 = add i32 0, 2
	store i32 %aux128, i32* @Pivot2
	br label %etiq35
	
	etiq35:
	;___IfElse___
	%aux130 = load i32, i32* @Pivot2
	%aux133 = add i32 0, 1
	%aux132 = icmp sge i32 %aux130, %aux133
	br i1 %aux132, label %etiq36, label %etiq37
	
	etiq36:
	;___IfElse___
	%aux138 = add i32 0, 2
	%aux136 = load i32, i32* @Pivot2
	%aux137 = icmp sge i32 %aux138, %aux136
	br i1 %aux137, label %etiq39, label %etiq40
	
	etiq39:
	;___IfElse___
	%aux143 = add i32 0, 2
	%aux144 = add i32 0, 0
	%aux142 = icmp sgt i32 %aux143, %aux144
	br i1 %aux142, label %etiq42, label %etiq43
	
	etiq42:
	;___IfElse___
	%aux152 = add i32 0, 2
	%aux150 = load i32, i32* @Pivot2
	%aux151 = sub i32 %aux152, %aux150
	%aux147 = load i32, i32* @IdPos2
	%aux148 = icmp eq i32 %aux151, %aux147
	br i1 %aux148, label %etiq45, label %etiq46
	
	etiq45:
	;___Asignación___
	%aux154 = load i32, i32* @_Acum3
	%aux157 = add i32 0, 1
	%aux156 = add i32 %aux154, %aux157
	store i32 %aux156, i32* @_Acum3
	br label %etiq48
	
	etiq48:
	;___Asignación___
	%aux159 = load i32, i32* @IdPos2
	%aux162 = add i32 0, 1
	%aux161 = add i32 %aux159, %aux162
	store i32 %aux161, i32* @IdPos2
	br label %etiq49
	
	etiq49:
	;___Asignación___
	%aux164 = load i32, i32* @Pivot2
	%aux167 = add i32 0, 1
	%aux166 = sub i32 %aux164, %aux167
	store i32 %aux166, i32* @Pivot2
	br label %etiq50
	
	etiq46:
	;___Asignación___
	%aux169 = load i32, i32* @IdPos2
	%aux172 = add i32 0, 1
	%aux171 = add i32 %aux169, %aux172
	store i32 %aux171, i32* @IdPos2
	br label %etiq50
	
	etiq50:
	;___IfElse___
	%aux180 = add i32 0, 2
	%aux178 = load i32, i32* @Pivot2
	%aux179 = sub i32 %aux180, %aux178
	%aux175 = load i32, i32* @IdPos2
	%aux176 = icmp eq i32 %aux179, %aux175
	br i1 %aux176, label %etiq51, label %etiq52
	
	etiq51:
	;___Asignación___
	%aux182 = load i32, i32* @_Acum3
	%aux185 = add i32 0, 2
	%aux184 = add i32 %aux182, %aux185
	store i32 %aux184, i32* @_Acum3
	br label %etiq54
	
	etiq54:
	;___Asignación___
	%aux187 = load i32, i32* @IdPos2
	%aux190 = add i32 0, 1
	%aux189 = add i32 %aux187, %aux190
	store i32 %aux189, i32* @IdPos2
	br label %etiq55
	
	etiq55:
	;___Asignación___
	%aux192 = load i32, i32* @Pivot2
	%aux195 = add i32 0, 1
	%aux194 = sub i32 %aux192, %aux195
	store i32 %aux194, i32* @Pivot2
	br label %etiq56
	
	etiq52:
	;___Asignación___
	%aux197 = load i32, i32* @IdPos2
	%aux200 = add i32 0, 1
	%aux199 = add i32 %aux197, %aux200
	store i32 %aux199, i32* @IdPos2
	br label %etiq56
	
	etiq43:
	;___DisplayCadenaCaracteres___
	%aux201 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq56
	
	etiq40:
	;___DisplayCadenaCaracteres___
	%aux202 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq56
	
	etiq37:
	;___DisplayCadenaCaracteres___
	%aux203 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq56
	
	etiq56:
	%aux205 = load i32, i32* @_Acum3
	store i32 %aux205, i32* @_Acum4
	%aux124 = load i32, i32* @_Acum4
	%aux207 = add i32 0, 4
	%aux206 = sub i32 %aux124, %aux207
	%aux212 = add i32 0, 1
	store i32 %aux212, i32* @Pivot3
	br label %etiq58
	
	etiq58:
	;___IfElse___
	%aux214 = load i32, i32* @Pivot3
	%aux217 = add i32 0, 1
	%aux216 = icmp sge i32 %aux214, %aux217
	br i1 %aux216, label %etiq59, label %etiq60
	
	etiq59:
	;___IfElse___
	%aux222 = add i32 0, 3
	%aux220 = load i32, i32* @Pivot3
	%aux221 = icmp sge i32 %aux222, %aux220
	br i1 %aux221, label %etiq62, label %etiq63
	
	etiq62:
	;___IfElse___
	%aux227 = add i32 0, 3
	%aux228 = add i32 0, 0
	%aux226 = icmp sgt i32 %aux227, %aux228
	br i1 %aux226, label %etiq65, label %etiq66
	
	etiq65:
	;___IfElse___
	%aux236 = add i32 0, 3
	%aux234 = load i32, i32* @Pivot3
	%aux235 = sub i32 %aux236, %aux234
	%aux231 = load i32, i32* @IdPos3
	%aux232 = icmp eq i32 %aux235, %aux231
	br i1 %aux232, label %etiq68, label %etiq69
	
	etiq68:
	;___Asignación___
	%aux238 = load i32, i32* @_Acum5
	%aux241 = add i32 0, 1
	%aux240 = add i32 %aux238, %aux241
	store i32 %aux240, i32* @_Acum5
	br label %etiq71
	
	etiq71:
	;___Asignación___
	%aux243 = load i32, i32* @IdPos3
	%aux246 = add i32 0, 1
	%aux245 = add i32 %aux243, %aux246
	store i32 %aux245, i32* @IdPos3
	br label %etiq72
	
	etiq72:
	;___Asignación___
	%aux248 = load i32, i32* @Pivot3
	%aux251 = add i32 0, 1
	%aux250 = sub i32 %aux248, %aux251
	store i32 %aux250, i32* @Pivot3
	br label %etiq73
	
	etiq69:
	;___Asignación___
	%aux253 = load i32, i32* @IdPos3
	%aux256 = add i32 0, 1
	%aux255 = add i32 %aux253, %aux256
	store i32 %aux255, i32* @IdPos3
	br label %etiq73
	
	etiq73:
	;___IfElse___
	%aux264 = add i32 0, 3
	%aux262 = load i32, i32* @Pivot3
	%aux263 = sub i32 %aux264, %aux262
	%aux259 = load i32, i32* @IdPos3
	%aux260 = icmp eq i32 %aux263, %aux259
	br i1 %aux260, label %etiq74, label %etiq75
	
	etiq74:
	;___Asignación___
	%aux266 = load i32, i32* @_Acum5
	%aux269 = add i32 0, 2
	%aux268 = add i32 %aux266, %aux269
	store i32 %aux268, i32* @_Acum5
	br label %etiq77
	
	etiq77:
	;___Asignación___
	%aux271 = load i32, i32* @IdPos3
	%aux274 = add i32 0, 1
	%aux273 = add i32 %aux271, %aux274
	store i32 %aux273, i32* @IdPos3
	br label %etiq78
	
	etiq78:
	;___Asignación___
	%aux276 = load i32, i32* @Pivot3
	%aux279 = add i32 0, 1
	%aux278 = sub i32 %aux276, %aux279
	store i32 %aux278, i32* @Pivot3
	br label %etiq79
	
	etiq75:
	;___Asignación___
	%aux281 = load i32, i32* @IdPos3
	%aux284 = add i32 0, 1
	%aux283 = add i32 %aux281, %aux284
	store i32 %aux283, i32* @IdPos3
	br label %etiq79
	
	etiq79:
	;___IfElse___
	%aux292 = add i32 0, 3
	%aux290 = load i32, i32* @Pivot3
	%aux291 = sub i32 %aux292, %aux290
	%aux287 = load i32, i32* @IdPos3
	%aux288 = icmp eq i32 %aux291, %aux287
	br i1 %aux288, label %etiq80, label %etiq81
	
	etiq80:
	;___Asignación___
	%aux294 = load i32, i32* @_Acum5
	%aux297 = add i32 0, 3
	%aux296 = add i32 %aux294, %aux297
	store i32 %aux296, i32* @_Acum5
	br label %etiq83
	
	etiq83:
	;___Asignación___
	%aux299 = load i32, i32* @IdPos3
	%aux302 = add i32 0, 1
	%aux301 = add i32 %aux299, %aux302
	store i32 %aux301, i32* @IdPos3
	br label %etiq84
	
	etiq84:
	;___Asignación___
	%aux304 = load i32, i32* @Pivot3
	%aux307 = add i32 0, 1
	%aux306 = sub i32 %aux304, %aux307
	store i32 %aux306, i32* @Pivot3
	br label %etiq85
	
	etiq81:
	;___Asignación___
	%aux309 = load i32, i32* @IdPos3
	%aux312 = add i32 0, 1
	%aux311 = add i32 %aux309, %aux312
	store i32 %aux311, i32* @IdPos3
	br label %etiq85
	
	etiq66:
	;___DisplayCadenaCaracteres___
	%aux313 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq85
	
	etiq63:
	;___DisplayCadenaCaracteres___
	%aux314 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq85
	
	etiq60:
	;___DisplayCadenaCaracteres___
	%aux315 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq85
	
	etiq85:
	%aux317 = load i32, i32* @_Acum5
	store i32 %aux317, i32* @_Acum6
	%aux208 = load i32, i32* @_Acum6
	%aux319 = add i32 0, 5
	%aux318 = mul i32 %aux208, %aux319
	%aux123 = add i32 %aux206, %aux318
	store i32 %aux123, i32* @res
	br label %etiq86
	
	etiq86:
	;___DisplayExpresion___
	%aux321 = load i32, i32* @res
	%aux320 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux321)
	br label %etiq87
	
	etiq87:
	ret i32 0
}

