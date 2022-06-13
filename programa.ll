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
@fi = global double 0.0
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
	%aux3 = add i32 0, 2
	store i32 %aux3, i32* @Pivot1
	br label %etiq2
	
	etiq2:
	;___IfElse___
	%aux5 = load i32, i32* @Pivot1
	%aux6 = add i32 0, 1
	%aux7 = icmp sge i32 %aux5, %aux6
	br i1 %aux7, label %etiq4, label %etiq5
	
	etiq4:
	;___IfElse___
	%aux9 = add i32 0, 2
	%aux10 = load i32, i32* @Pivot1
	%aux11 = icmp sge i32 %aux9, %aux10
	br i1 %aux11, label %etiq7, label %etiq8
	
	etiq7:
	;___IfElse___
	%aux13 = add i32 0, 2
	%aux14 = add i32 0, 0
	%aux15 = icmp sgt i32 %aux13, %aux14
	br i1 %aux15, label %etiq11, label %etiq12
	
	etiq11:
	;___IfElse___
	%aux17 = add i32 0, 2
	%aux18 = load i32, i32* @Pivot1
	%aux19 = sub i32 %aux17, %aux18
	%aux20 = load i32, i32* @IdPos1
	%aux21 = icmp eq i32 %aux19, %aux20
	br i1 %aux21, label %etiq14, label %etiq15
	
	etiq14:
	;___Asignación___
	%aux23 = load i32, i32* @_Acum1
	%aux24 = add i32 0, 1
	%aux25 = add i32 %aux23, %aux24
	store i32 %aux25, i32* @_Acum1
	br label %etiq18
	
	etiq18:
	;___Asignación___
	%aux27 = load i32, i32* @IdPos1
	%aux28 = add i32 0, 1
	%aux29 = add i32 %aux27, %aux28
	store i32 %aux29, i32* @IdPos1
	br label %etiq20
	
	etiq20:
	;___Asignación___
	%aux31 = load i32, i32* @Pivot1
	%aux32 = add i32 0, 1
	%aux33 = sub i32 %aux31, %aux32
	store i32 %aux33, i32* @Pivot1
	br label %etiq23
	
	etiq15:
	;___Asignación___
	%aux35 = load i32, i32* @IdPos1
	%aux36 = add i32 0, 1
	%aux37 = add i32 %aux35, %aux36
	store i32 %aux37, i32* @IdPos1
	br label %etiq23
	
	etiq23:
	;___IfElse___
	%aux39 = add i32 0, 2
	%aux40 = load i32, i32* @Pivot1
	%aux41 = sub i32 %aux39, %aux40
	%aux42 = load i32, i32* @IdPos1
	%aux43 = icmp eq i32 %aux41, %aux42
	br i1 %aux43, label %etiq24, label %etiq25
	
	etiq24:
	;___Asignación___
	%aux45 = load i32, i32* @_Acum1
	%aux46 = add i32 0, 2
	%aux47 = add i32 %aux45, %aux46
	store i32 %aux47, i32* @_Acum1
	br label %etiq28
	
	etiq28:
	;___Asignación___
	%aux49 = load i32, i32* @IdPos1
	%aux50 = add i32 0, 1
	%aux51 = add i32 %aux49, %aux50
	store i32 %aux51, i32* @IdPos1
	br label %etiq30
	
	etiq30:
	;___Asignación___
	%aux53 = load i32, i32* @Pivot1
	%aux54 = add i32 0, 1
	%aux55 = sub i32 %aux53, %aux54
	store i32 %aux55, i32* @Pivot1
	br label %etiq33
	
	etiq25:
	;___Asignación___
	%aux57 = load i32, i32* @IdPos1
	%aux58 = add i32 0, 1
	%aux59 = add i32 %aux57, %aux58
	store i32 %aux59, i32* @IdPos1
	br label %etiq33
	
	etiq12:
	;___DisplayCadenaCaracteres___
	%aux60 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq33
	
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux61 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq33
	
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux62 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq33
	
	etiq33:
	;___Asignación___
	%aux64 = load i32, i32* @_Acum1
	store i32 %aux64, i32* @_Acum2
	br label %etiq34
	
	etiq34:
	%aux65 = load i32, i32* @_Acum2
	%aux66 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux65)
	br label %etiq35
	
	etiq35:
	;___DisplayExpresion___
	%aux68 = add i32 0, 4
	%aux69 = add i32 0, 4
	%aux70 = icmp eq i32 %aux68, %aux69
	%aux71 = xor i1 %aux70, 1
	%aux72 = zext i1 %aux71 to i32
	%aux73 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.bool, i32 0, i32 0), i32 %aux72)
	br label %etiq37
	
	etiq37:
	ret i32 0
}

