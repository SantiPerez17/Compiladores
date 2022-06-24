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
@_Strmensaje1 = private constant [24 x i8] c"\0AEl pivot debe ser >=1\0A\00"
@_Strmensaje2 = private constant [37 x i8] c"\0ALa lista de expresiones esta vacia\0A\00"
@_Strmensaje3 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
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
@na = global i1 0

define i32 @main(i32, i8**) {

	etiq1:
	;___Asignacion___
	%aux1 = add i32 0, 2
	;___Asignacion___
	%aux2 = add i32 0, 0
	store i32 %aux2, i32* @_Acum1
	;___Asignacion___
	%aux3 = add i32 0, 0
	store i32 %aux3, i32* @_Acum2
	;___Asignacion___
	%aux4 = add i32 0, 1
	store i32 %aux4, i32* @_Pivot1
	;___IfElse___
	%aux5 = load i32, i32* @_Pivot1
	%aux6 = add i32 0, 1
	%aux7 = icmp sge i32 %aux5, %aux6
	br i1 %aux7, label %etiq11, label %etiq12
	etiq11:
	;___IfElse___
	%aux8 = add i32 0, 1
	%aux9 = add i32 0, 0
	%aux10 = icmp sgt i32 %aux8, %aux9
	br i1 %aux10, label %etiq8, label %etiq9
	etiq8:
	;___IfElse___
	%aux11 = add i32 0, 1
	%aux12 = load i32, i32* @_Pivot1
	%aux13 = icmp sge i32 %aux11, %aux12
	br i1 %aux13, label %etiq5, label %etiq6
	etiq5:
	;___IfElse___
	%aux14 = add i32 0, 1
	%aux15 = load i32, i32* @_Pivot1
	%aux16 = sub i32 %aux14, %aux15
	%aux17 = load i32, i32* @_IdPos1
	%aux18 = icmp eq i32 %aux16, %aux17
	br i1 %aux18, label %etiq2, label %etiq3
	etiq2:
	;___Asignacion___
	%aux19 = load i32, i32* @_Acum1
	%aux20 = add i32 0, 2
	%aux21 = add i32 %aux19, %aux20
	store i32 %aux21, i32* @_Acum1
	;___Asignacion___
	%aux22 = load i32, i32* @_IdPos1
	%aux23 = add i32 0, 1
	%aux24 = add i32 %aux22, %aux23
	store i32 %aux24, i32* @_IdPos1
	;___Asignacion___
	%aux25 = load i32, i32* @_Pivot1
	%aux26 = add i32 0, 1
	%aux27 = sub i32 %aux25, %aux26
	store i32 %aux27, i32* @_Pivot1
	br label %etiq4
	etiq3:
	;___Asignacion___
	%aux28 = load i32, i32* @_IdPos1
	%aux29 = add i32 0, 1
	%aux30 = add i32 %aux28, %aux29
	store i32 %aux30, i32* @_IdPos1
	br label %etiq4
	etiq4:
	br label %etiq7
	etiq6:
	;___DisplayCadenaCaracteres___
	%aux31 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @_Strmensaje3, i32 0, i32 0))
	br label %etiq7
	etiq7:
	br label %etiq10
	etiq9:
	;___DisplayCadenaCaracteres___
	%aux32 = call i32 @puts(i8* getelementptr ([37 x i8], [37 x i8] * @_Strmensaje2, i32 0, i32 0))
	br label %etiq10
	etiq10:
	br label %etiq13
	etiq12:
	;___DisplayCadenaCaracteres___
	%aux33 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @_Strmensaje1, i32 0, i32 0))
	br label %etiq13
	etiq13:
	;___Asignacion___
	%aux34 = add i32 0, 0
	store i32 %aux34, i32* @_IdPos1
	;___Asignacion___
	%aux35 = load i32, i32* @_Acum1
	store i32 %aux35, i32* @_Acum2
	store i32 %aux35, i32* @a
	
	ret i32 0
}

