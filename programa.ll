;Programa: 'Prueba'
source_filename = "pruebas.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.29.30145"

declare i32 @puts(i8*)
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8* %0, ...)
declare double @scanfd(i8* %0, ...)
declare i1 @scanfb(i8* %0, ...)
@.integer = private constant [4 x i8] c"%d\0A\00"
@.double = private constant [5 x i8] c"%lf\0A\00"
@int_read_format = unnamed_addr constant [3 x i8] c"%d\00"
@double_read_format = unnamed_addr constant [4 x i8] c"%lf\00"
@bool_read_format = unnamed_addr constant [3 x i8] c"%b\00"

@IdPos2 = global i32 0
@Pivot2 = global i32 0
@_Acum3 = global i32 0
@_Acum4 = global i32 0
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
@str20 = private constant [7 x i8] c"\0Ares:\0A\00"
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq214:
	;___Asignación___
	%aux216 = add i32 0, 2
	store i32 %aux216, i32* @a
	br label %etiq217
	
	etiq217:
	;___Asignación___
	%aux221 = add i32 0, 5
	%aux219 = sub i32 0, %aux221
	store i32 %aux219, i32* @b
	br label %etiq222
	
	etiq222:
	;___Asignación___
	%aux224 = add i32 0, 5
	store i32 %aux224, i32* @c
	br label %etiq225
	
	etiq225:
	;___Asignación___
	%aux227 = load i32, i32* @a
	store i32 %aux227, i32* @Pivot2
	br label %etiq228
	
	etiq228:
	;___Primer IfElse___
	%aux231 = load i32, i32* @Pivot2
	%aux234 = add i32 0, 1
	%aux233 = icmp sge i32 %aux231, %aux234
	br i1 %aux233, label %etiq229, label %etiq230
	
	etiq229:
	;___Segundo IfElse___
	%aux241 = add i32 0, 3
	%aux239 = load i32, i32* @Pivot2
	%aux240 = icmp sge i32 %aux241, %aux239
	br i1 %aux240, label %etiq236, label %etiq237
	
	etiq236:
	;___Tercer IfElse___
	%aux248 = add i32 0, 3
	%aux249 = add i32 0, 0
	%aux247 = icmp sgt i32 %aux248, %aux249
	br i1 %aux247, label %etiq243, label %etiq244
	
	etiq243:
	;___Condicion___
	%aux256 = add i32 0, 3
	%aux254 = load i32, i32* @Pivot2
	%aux255 = sub i32 %aux256, %aux254
	%aux251 = load i32, i32* @IdPos2
	%aux252 = icmp eq i32 %aux255, %aux251
	br i1 %aux252, label %etiq257, label %etiq258
	
	etiq257:
	;___Asignación___
	%aux260 = load i32, i32* @_Acum3
	%aux263 = add i32 0, 1
	%aux262 = add i32 %aux260, %aux263
	store i32 %aux262, i32* @_Acum3
	br label %etiq264
	
	etiq264:
	;___Asignación___
	%aux266 = load i32, i32* @IdPos2
	%aux269 = add i32 0, 1
	%aux268 = add i32 %aux266, %aux269
	store i32 %aux268, i32* @IdPos2
	br label %etiq270
	
	etiq270:
	;___Asignación___
	%aux272 = load i32, i32* @Pivot2
	%aux275 = add i32 0, 1
	%aux274 = sub i32 %aux272, %aux275
	store i32 %aux274, i32* @Pivot2
	br label %etiq282
	
	etiq258:
	;___Asignación___
	%aux278 = load i32, i32* @IdPos2
	%aux281 = add i32 0, 1
	%aux280 = add i32 %aux278, %aux281
	store i32 %aux280, i32* @IdPos2
	br label %etiq282
	
	etiq282:
	;___Condicion___
	%aux289 = add i32 0, 3
	%aux287 = load i32, i32* @Pivot2
	%aux288 = sub i32 %aux289, %aux287
	%aux284 = load i32, i32* @IdPos2
	%aux285 = icmp eq i32 %aux288, %aux284
	br i1 %aux285, label %etiq290, label %etiq291
	
	etiq290:
	;___Asignación___
	%aux293 = load i32, i32* @_Acum3
	%aux296 = load i32, i32* @b
	%aux299 = add i32 0, 20
	%aux298 = add i32 %aux296, %aux299
	%aux295 = add i32 %aux293, %aux298
	store i32 %aux295, i32* @_Acum3
	br label %etiq300
	
	etiq300:
	;___Asignación___
	%aux302 = load i32, i32* @IdPos2
	%aux305 = add i32 0, 1
	%aux304 = add i32 %aux302, %aux305
	store i32 %aux304, i32* @IdPos2
	br label %etiq306
	
	etiq306:
	;___Asignación___
	%aux308 = load i32, i32* @Pivot2
	%aux311 = add i32 0, 1
	%aux310 = sub i32 %aux308, %aux311
	store i32 %aux310, i32* @Pivot2
	br label %etiq318
	
	etiq291:
	;___Asignación___
	%aux314 = load i32, i32* @IdPos2
	%aux317 = add i32 0, 1
	%aux316 = add i32 %aux314, %aux317
	store i32 %aux316, i32* @IdPos2
	br label %etiq318
	
	etiq318:
	;___Condicion___
	%aux325 = add i32 0, 3
	%aux323 = load i32, i32* @Pivot2
	%aux324 = sub i32 %aux325, %aux323
	%aux320 = load i32, i32* @IdPos2
	%aux321 = icmp eq i32 %aux324, %aux320
	br i1 %aux321, label %etiq326, label %etiq327
	
	etiq326:
	;___Asignación___
	%aux329 = load i32, i32* @_Acum3
	%aux330 = load i32, i32* @c
	%aux331 = add i32 %aux329, %aux330
	store i32 %aux331, i32* @_Acum3
	br label %etiq332
	
	etiq332:
	;___Asignación___
	%aux334 = load i32, i32* @IdPos2
	%aux337 = add i32 0, 1
	%aux336 = add i32 %aux334, %aux337
	store i32 %aux336, i32* @IdPos2
	br label %etiq338
	
	etiq338:
	;___Asignación___
	%aux340 = load i32, i32* @Pivot2
	%aux343 = add i32 0, 1
	%aux342 = sub i32 %aux340, %aux343
	store i32 %aux342, i32* @Pivot2
	br label %etiq344
	
	etiq344:
	;___Asignacion___
	%aux345 = load i32, i32* @_Acum3
	store i32 %aux345, i32* @res
	br label %etiq358
	
	etiq327:
	;___Asignación___
	%aux347 = load i32, i32* @IdPos2
	%aux350 = add i32 0, 1
	%aux349 = add i32 %aux347, %aux350
	store i32 %aux349, i32* @IdPos2
	br label %etiq358
	
	etiq244:
	;___Else del tercer if___
	%aux353 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq358
	
	etiq237:
	;___Else del segundo if___
	%aux355 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq358
	
	etiq230:
	;___Else del primer if___
	%aux357 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq358
	
	etiq358:
	;___DisplayCadenaCaracteres___
	%aux359 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str20, i32 0, i32 0))
	br label %etiq360
	
	etiq360:
	;___DisplayExpresion___
	%aux362 = load i32, i32* @res
	%aux361 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux362)
	br label %etiq363
	
	etiq363:
	ret i32 0
}

