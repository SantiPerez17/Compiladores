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
@_Acum3 = global i32 0
@_Acum4 = global i32 0
@_IdPos1 = global i32 0
@_IdPos2 = global i32 0
@_Pivot1 = global i32 0
@_Pivot2 = global i32 0
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
	%aux1 = add i32 0, 10
	store i32 %aux1, i32* @edad
	;___While___
	br label %etiq2
	etiq2:
	%aux2 = load i32, i32* @edad
	%aux3 = add i32 0, 0
	%aux4 = icmp sgt i32 %aux2, %aux3
	br i1 %aux4, label %etiq27, label %etiq28
	etiq27:
	;___Asignacion___
	;___Asignacion___
	%aux5 = add i32 0, 0
	store i32 %aux5, i32* @_Acum3
	;___Asignacion___
	%aux6 = add i32 0, 1
	store i32 %aux6, i32* @_Pivot2
	;___IfElse___
	%aux7 = load i32, i32* @_Pivot2
	%aux8 = add i32 0, 1
	%aux9 = icmp sge i32 %aux7, %aux8
	br i1 %aux9, label %etiq24, label %etiq25
	etiq24:
	;___IfElse___
	%aux10 = add i32 0, 1
	%aux11 = add i32 0, 0
	%aux12 = icmp sgt i32 %aux10, %aux11
	br i1 %aux12, label %etiq21, label %etiq22
	etiq21:
	;___IfElse___
	%aux13 = add i32 0, 1
	%aux14 = load i32, i32* @_Pivot2
	%aux15 = icmp sge i32 %aux13, %aux14
	br i1 %aux15, label %etiq18, label %etiq19
	etiq18:
	;___IfElse___
	%aux16 = add i32 0, 1
	%aux17 = load i32, i32* @_Pivot2
	%aux18 = sub i32 %aux16, %aux17
	%aux19 = load i32, i32* @_IdPos2
	%aux20 = icmp eq i32 %aux18, %aux19
	br i1 %aux20, label %etiq15, label %etiq16
	etiq15:
	;___Asignacion___
	%aux21 = load i32, i32* @_Acum3
	;___Asignacion___
	%aux22 = add i32 0, 0
	store i32 %aux22, i32* @_Acum1
	;___Asignacion___
	%aux23 = add i32 0, 1
	store i32 %aux23, i32* @_Pivot1
	;___IfElse___
	%aux24 = load i32, i32* @_Pivot1
	%aux25 = add i32 0, 1
	%aux26 = icmp sge i32 %aux24, %aux25
	br i1 %aux26, label %etiq12, label %etiq13
	etiq12:
	;___IfElse___
	%aux27 = add i32 0, 1
	%aux28 = add i32 0, 0
	%aux29 = icmp sgt i32 %aux27, %aux28
	br i1 %aux29, label %etiq9, label %etiq10
	etiq9:
	;___IfElse___
	%aux30 = add i32 0, 1
	%aux31 = load i32, i32* @_Pivot1
	%aux32 = icmp sge i32 %aux30, %aux31
	br i1 %aux32, label %etiq6, label %etiq7
	etiq6:
	;___IfElse___
	%aux33 = add i32 0, 1
	%aux34 = load i32, i32* @_Pivot1
	%aux35 = sub i32 %aux33, %aux34
	%aux36 = load i32, i32* @_IdPos1
	%aux37 = icmp eq i32 %aux35, %aux36
	br i1 %aux37, label %etiq3, label %etiq4
	etiq3:
	;___Asignacion___
	%aux38 = load i32, i32* @_Acum1
	%aux39 = load i32, i32* @a
	%aux40 = add i32 0, 1
	%aux41 = add i32 %aux39, %aux40
	%aux42 = add i32 %aux38, %aux41
	store i32 %aux42, i32* @_Acum1
	;___Asignacion___
	%aux43 = load i32, i32* @_IdPos1
	%aux44 = add i32 0, 1
	%aux45 = add i32 %aux43, %aux44
	store i32 %aux45, i32* @_IdPos1
	;___Asignacion___
	%aux46 = load i32, i32* @_Pivot1
	%aux47 = add i32 0, 1
	%aux48 = sub i32 %aux46, %aux47
	store i32 %aux48, i32* @_Pivot1
	br label %etiq5
	etiq4:
	;___Asignacion___
	%aux49 = load i32, i32* @_IdPos1
	%aux50 = add i32 0, 1
	%aux51 = add i32 %aux49, %aux50
	store i32 %aux51, i32* @_IdPos1
	br label %etiq5
	etiq5:
	br label %etiq8
	etiq7:
	;___DisplayCadenaCaracteres___
	%aux52 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @_Strmensaje3, i32 0, i32 0))
	br label %etiq8
	etiq8:
	br label %etiq11
	etiq10:
	;___DisplayCadenaCaracteres___
	%aux53 = call i32 @puts(i8* getelementptr ([37 x i8], [37 x i8] * @_Strmensaje2, i32 0, i32 0))
	br label %etiq11
	etiq11:
	br label %etiq14
	etiq13:
	;___DisplayCadenaCaracteres___
	%aux54 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @_Strmensaje1, i32 0, i32 0))
	br label %etiq14
	etiq14:
	;___Asignacion___
	%aux55 = add i32 0, 0
	store i32 %aux55, i32* @_IdPos1
	;___Asignacion___
	%aux56 = load i32, i32* @_Acum1
	store i32 %aux56, i32* @_Acum2
	%aux57 = add i32 %aux21, %aux56
	store i32 %aux57, i32* @_Acum3
	;___Asignacion___
	%aux58 = load i32, i32* @_IdPos2
	%aux59 = add i32 0, 1
	%aux60 = add i32 %aux58, %aux59
	store i32 %aux60, i32* @_IdPos2
	;___Asignacion___
	%aux61 = load i32, i32* @_Pivot2
	%aux62 = add i32 0, 1
	%aux63 = sub i32 %aux61, %aux62
	store i32 %aux63, i32* @_Pivot2
	br label %etiq17
	etiq16:
	;___Asignacion___
	%aux64 = load i32, i32* @_IdPos2
	%aux65 = add i32 0, 1
	%aux66 = add i32 %aux64, %aux65
	store i32 %aux66, i32* @_IdPos2
	br label %etiq17
	etiq17:
	br label %etiq20
	etiq19:
	;___DisplayCadenaCaracteres___
	%aux67 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @_Strmensaje3, i32 0, i32 0))
	br label %etiq20
	etiq20:
	br label %etiq23
	etiq22:
	;___DisplayCadenaCaracteres___
	%aux68 = call i32 @puts(i8* getelementptr ([37 x i8], [37 x i8] * @_Strmensaje2, i32 0, i32 0))
	br label %etiq23
	etiq23:
	br label %etiq26
	etiq25:
	;___DisplayCadenaCaracteres___
	%aux69 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @_Strmensaje1, i32 0, i32 0))
	br label %etiq26
	etiq26:
	;___Asignacion___
	%aux70 = add i32 0, 0
	store i32 %aux70, i32* @_IdPos2
	;___Asignacion___
	%aux71 = load i32, i32* @_Acum3
	store i32 %aux71, i32* @_Acum4
	store i32 %aux71, i32* @a
	;___DisplayExpresion___
	%aux72 = load i32, i32* @a
	%aux73 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux72)
	;___Asignacion___
	%aux74 = load i32, i32* @edad
	%aux75 = add i32 0, 1
	%aux76 = sub i32 %aux74, %aux75
	store i32 %aux76, i32* @edad
	br label %etiq2
	etiq28:
	
	ret i32 0
}

