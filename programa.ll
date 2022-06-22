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
	;___While___
	%aux2 = load i32, i32* @a
	%aux3 = add i32 0, 1
	%aux4 = icmp slt i32 %aux2, %aux3
	br i1 %aux4, label %etiq3, label %etiq33
	
	etiq3:
	;___Asignacion___
	%aux7 = add i32 0, 0
	store i32 %aux7, i32* @_Acum1
	br label %etiq5
	
	etiq5:
	;___Asignacion___
	%aux9 = add i32 0, 0
	store i32 %aux9, i32* @_Acum2
	br label %etiq6
	
	etiq6:
	;___Asignacion___
	%aux11 = load i32, i32* @pivot
	store i32 %aux11, i32* @_Pivot1
	br label %etiq7
	
	etiq7:
	;___IfElse___
	%aux13 = load i32, i32* @_Pivot1
	%aux14 = add i32 0, 1
	%aux15 = icmp sge i32 %aux13, %aux14
	br i1 %aux15, label %etiq9, label %etiq10
	
	etiq9:
	;___IfElse___
	%aux17 = add i32 0, 1
	%aux18 = load i32, i32* @_Pivot1
	%aux19 = icmp sge i32 %aux17, %aux18
	br i1 %aux19, label %etiq12, label %etiq13
	
	etiq12:
	;___IfElse___
	%aux21 = add i32 0, 1
	%aux22 = add i32 0, 0
	%aux23 = icmp sgt i32 %aux21, %aux22
	br i1 %aux23, label %etiq16, label %etiq17
	
	etiq16:
	;___IfElse___
	%aux25 = add i32 0, 1
	%aux26 = load i32, i32* @_Pivot1
	%aux27 = sub i32 %aux25, %aux26
	%aux28 = load i32, i32* @_IdPos1
	%aux29 = icmp eq i32 %aux27, %aux28
	br i1 %aux29, label %etiq19, label %etiq20
	
	etiq19:
	;___Asignacion___
	%aux31 = load i32, i32* @_Acum1
	%aux32 = add i32 0, 1
	%aux33 = add i32 %aux31, %aux32
	store i32 %aux33, i32* @_Acum1
	br label %etiq23
	
	etiq23:
	;___Asignacion___
	%aux35 = load i32, i32* @_IdPos1
	%aux36 = add i32 0, 1
	%aux37 = add i32 %aux35, %aux36
	store i32 %aux37, i32* @_IdPos1
	br label %etiq25
	
	etiq25:
	;___Asignacion___
	%aux39 = load i32, i32* @_Pivot1
	%aux40 = add i32 0, 1
	%aux41 = sub i32 %aux39, %aux40
	store i32 %aux41, i32* @_Pivot1
	br label %etiq28
	
	etiq20:
	;___Asignacion___
	%aux43 = load i32, i32* @_IdPos1
	%aux44 = add i32 0, 1
	%aux45 = add i32 %aux43, %aux44
	store i32 %aux45, i32* @_IdPos1
	br label %etiq28
	
	etiq17:
	;___DisplayCadenaCaracteres___
	%aux46 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq28
	
	etiq13:
	;___DisplayCadenaCaracteres___
	%aux47 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq28
	
	etiq10:
	;___DisplayCadenaCaracteres___
	%aux48 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq28
	
	etiq28:
	;___Asignacion___
	%aux50 = load i32, i32* @_Acum1
	store i32 %aux50, i32* @_Acum2
	br label %etiq29
	
	etiq29:
	;___Asignacion___
	%aux52 = load i32, i32* @pivot
	store i32 %aux52, i32* @_Pivot1
	br label %etiq30
	
	etiq30:
	;___Asignacion___
	%aux54 = add i32 0, 0
	store i32 %aux54, i32* @_IdPos1
	br label %etiq31
	
	etiq31:
	%aux55 = load i32, i32* @_Acum2
	%aux56 = sub i32 0, %aux55
	store i32 %aux56, i32* @res
	br label %etiq1
	
	etiq33:
	ret i32 0
}

