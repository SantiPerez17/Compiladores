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
@Pivot1 = global i32 0
@_Acum1 = global i32 0
@_Acum2 = global i32 0
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
	
	etiq1:
	;___Asignación___
	%aux6 = add i32 0, 1
	store i32 %aux6, i32* @Pivot1
	br label %etiq3
	
	etiq3:
	;___IfElse___
	%aux8 = load i32, i32* @Pivot1
	%aux11 = add i32 0, 1
	%aux10 = icmp sge i32 %aux8, %aux11
	br i1 %aux10, label %etiq4, label %etiq5
	
	etiq4:
	;___IfElse___
	%aux16 = add i32 0, 1
	%aux14 = load i32, i32* @Pivot1
	%aux15 = icmp sge i32 %aux16, %aux14
	br i1 %aux15, label %etiq7, label %etiq8
	
	etiq7:
	;___IfElse___
	%aux21 = add i32 0, 1
	%aux22 = add i32 0, 0
	%aux20 = icmp sgt i32 %aux21, %aux22
	br i1 %aux20, label %etiq10, label %etiq11
	
	etiq10:
	;___IfElse___
	%aux30 = add i32 0, 1
	%aux28 = load i32, i32* @Pivot1
	%aux29 = sub i32 %aux30, %aux28
	%aux25 = load i32, i32* @IdPos1
	%aux26 = icmp eq i32 %aux29, %aux25
	br i1 %aux26, label %etiq13, label %etiq14
	
	etiq13:
	;___Asignación___
	%aux32 = load i32, i32* @_Acum1
	%aux35 = add i32 0, 1
	%aux34 = add i32 %aux32, %aux35
	store i32 %aux34, i32* @_Acum1
	br label %etiq16
	
	etiq16:
	;___Asignación___
	%aux37 = load i32, i32* @IdPos1
	%aux40 = add i32 0, 1
	%aux39 = add i32 %aux37, %aux40
	store i32 %aux39, i32* @IdPos1
	br label %etiq17
	
	etiq17:
	;___Asignación___
	%aux42 = load i32, i32* @Pivot1
	%aux45 = add i32 0, 1
	%aux44 = sub i32 %aux42, %aux45
	store i32 %aux44, i32* @Pivot1
	br label %etiq18
	
	etiq14:
	;___Asignación___
	%aux47 = load i32, i32* @IdPos1
	%aux50 = add i32 0, 1
	%aux49 = add i32 %aux47, %aux50
	store i32 %aux49, i32* @IdPos1
	br label %etiq18
	
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux51 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq18
	
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux52 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq18
	
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux53 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq18
	%aux55 = load i32, i32* @_Acum1
	store i32 %aux55, i32* @_Acum2
	br label %etiq19
	%aux2 = load i32, i32* @_Acum2
	%aux57 = add i32 0, 1
	%aux56 = add i32 %aux2, %aux57
	store i32 %aux56, i32* @res
	br label %etiq19
	
	etiq19:
	;___DisplayExpresion___
	%aux59 = load i32, i32* @res
	%aux58 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux59)
	br label %etiq20
	
	etiq20:
	ret i32 0
}

