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
@res3 = global i32 0
@res4 = global i32 0
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___Asignación___
	%aux4 = add i32 0, 1
	store i32 %aux4, i32* @Pivot1
	br label %etiq2
	
	etiq2:
	;___IfElse___
	%aux6 = load i32, i32* @Pivot1
	%aux9 = add i32 0, 1
	%aux10 = icmp sge i32 %aux6, %aux9
	br i1 %aux10, label %etiq3, label %etiq4
	
	etiq3:
	;___IfElse___
	%aux15 = add i32 0, 1
	%aux13 = load i32, i32* @Pivot1
	%aux16 = icmp sge i32 %aux15, %aux13
	br i1 %aux16, label %etiq6, label %etiq7
	
	etiq6:
	;___IfElse___
	%aux21 = add i32 0, 1
	%aux22 = add i32 0, 0
	%aux23 = icmp sgt i32 %aux21, %aux22
	br i1 %aux23, label %etiq9, label %etiq10
	
	etiq9:
	;___IfElse___
	%aux31 = add i32 0, 1
	%aux29 = load i32, i32* @Pivot1
	%aux32 = sub i32 %aux31, %aux29
	%aux26 = load i32, i32* @IdPos1
	%aux33 = icmp eq i32 %aux32, %aux26
	br i1 %aux33, label %etiq12, label %etiq13
	
	etiq12:
	;___Asignación___
	%aux35 = load i32, i32* @_Acum1
	%aux38 = add i32 0, 1
	%aux39 = add i32 %aux35, %aux38
	store i32 %aux39, i32* @_Acum1
	br label %etiq15
	
	etiq15:
	;___Asignación___
	%aux41 = load i32, i32* @IdPos1
	%aux44 = add i32 0, 1
	%aux45 = add i32 %aux41, %aux44
	store i32 %aux45, i32* @IdPos1
	br label %etiq16
	
	etiq16:
	;___Asignación___
	%aux47 = load i32, i32* @Pivot1
	%aux50 = add i32 0, 1
	%aux51 = sub i32 %aux47, %aux50
	store i32 %aux51, i32* @Pivot1
	br label %etiq17
	
	etiq13:
	;___Asignación___
	%aux53 = load i32, i32* @IdPos1
	%aux56 = add i32 0, 1
	%aux57 = add i32 %aux53, %aux56
	store i32 %aux57, i32* @IdPos1
	br label %etiq17
	
	etiq10:
	;___DisplayCadenaCaracteres___
	%aux58 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq17
	
	etiq7:
	;___DisplayCadenaCaracteres___
	%aux59 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq17
	
	etiq4:
	;___DisplayCadenaCaracteres___
	%aux60 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq17
	
	etiq17:
	;___Asignación___
	%aux62 = load i32, i32* @_Acum1
	store i32 %aux62, i32* @_Acum2
	br label %etiq18
	
	etiq18:
	%aux63 = load i32, i32* @_Acum2
	%aux64 = sub i32 0, %aux63
	%aux1 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux64)
	br label %etiq19
	
	etiq19:
	ret i32 0
}

