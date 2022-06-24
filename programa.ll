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
@_Acum1 = global i32 0
@_Acum2 = global i32 0
@_IdPos1 = global i32 0
@_Pivot1 = global i32 0
@a = global i32 0
@altura = global double 0.0
@aux = global i1 0
@aux2 = global i1 0
@b = global i32 0
@edad = global i32 0
@edad1 = global i32 0
@peso = global double 0.0
@pivot = global i32 0
@res = global i32 0
@res2 = global i32 0
@res3 = global i32 0
@res4 = global i32 0
@resultado = global double 0.0
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@na = global i1 0

define i32 @main(i32, i8**) {

	etiq1:
	;___Asignacion___
	%aux1 = add i32 0, 10
	store i32 %aux1, i32* @a
	;___While___
	br label %etiq2
	etiq2:
	%aux2 = load i32, i32* @a
	%aux3 = add i32 0, 0
	%aux4 = icmp sgt i32 %aux2, %aux3
	br i1 %aux4, label %etiq15, label %etiq16
	etiq15:
	;___DisplayExpresion___
	%aux5 = load i32, i32* @a
	;___Asignacion___
	%aux6 = add i32 0, 0
	store i32 %aux6, i32* @_Acum1
	;___Asignacion___
	%aux7 = add i32 0, 0
	store i32 %aux7, i32* @_Acum2
	;___Asignacion___
	%aux8 = add i32 0, 1
	store i32 %aux8, i32* @_Pivot1
	;___IfElse___
	%aux9 = load i32, i32* @_Pivot1
	%aux10 = add i32 0, 1
	%aux11 = icmp sge i32 %aux9, %aux10
	br i1 %aux11, label %etiq12, label %etiq13
	etiq12:
	;___IfElse___
	%aux12 = add i32 0, 1
	%aux13 = load i32, i32* @_Pivot1
	%aux14 = icmp sge i32 %aux12, %aux13
	br i1 %aux14, label %etiq9, label %etiq10
	etiq9:
	;___IfElse___
	%aux15 = add i32 0, 1
	%aux16 = add i32 0, 0
	%aux17 = icmp sgt i32 %aux15, %aux16
	br i1 %aux17, label %etiq6, label %etiq7
	etiq6:
	;___IfElse___
	%aux18 = add i32 0, 1
	%aux19 = load i32, i32* @_Pivot1
	%aux20 = sub i32 %aux18, %aux19
	%aux21 = load i32, i32* @_IdPos1
	%aux22 = icmp eq i32 %aux20, %aux21
	br i1 %aux22, label %etiq3, label %etiq4
	etiq3:
	;___Asignacion___
	%aux23 = load i32, i32* @_Acum1
	%aux24 = load i32, i32* @a
	%aux25 = add i32 %aux23, %aux24
	store i32 %aux25, i32* @_Acum1
	;___Asignacion___
	%aux26 = load i32, i32* @_IdPos1
	%aux27 = add i32 0, 1
	%aux28 = add i32 %aux26, %aux27
	store i32 %aux28, i32* @_IdPos1
	;___Asignacion___
	%aux29 = load i32, i32* @_Pivot1
	%aux30 = add i32 0, 1
	%aux31 = sub i32 %aux29, %aux30
	store i32 %aux31, i32* @_Pivot1
	br label %etiq5
	etiq4:
	;___Asignacion___
	%aux32 = load i32, i32* @_IdPos1
	%aux33 = add i32 0, 1
	%aux34 = add i32 %aux32, %aux33
	store i32 %aux34, i32* @_IdPos1
	br label %etiq5
	etiq5:
	br label %etiq8
	etiq7:
	;___DisplayCadenaCaracteres___
	%aux35 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq8
	etiq8:
	br label %etiq11
	etiq10:
	;___DisplayCadenaCaracteres___
	%aux36 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq11
	etiq11:
	br label %etiq14
	etiq13:
	;___DisplayCadenaCaracteres___
	%aux37 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq14
	etiq14:
	;___Asignacion___
	%aux38 = add i32 0, 1
	store i32 %aux38, i32* @_Pivot1
	;___Asignacion___
	%aux39 = add i32 0, 0
	store i32 %aux39, i32* @_IdPos1
	;___Asignacion___
	%aux40 = load i32, i32* @_Acum1
	store i32 %aux40, i32* @_Acum2
	%aux41 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux40)
	;___Asignacion___
	%aux42 = load i32, i32* @a
	%aux43 = add i32 0, 1
	%aux44 = sub i32 %aux42, %aux43
	store i32 %aux44, i32* @a
	br label %etiq2
	etiq16:
	
	ret i32 0
}

