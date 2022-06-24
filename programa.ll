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
	store i32 %aux1, i32* @b
	;___While___
	br label %etiq2
	etiq2:
	%aux2 = load i32, i32* @b
	%aux3 = add i32 0, 0
	%aux4 = icmp sgt i32 %aux2, %aux3
	br i1 %aux4, label %etiq30, label %etiq31
	etiq30:
	;___Asignacion___
	;___Asignacion___
	%aux5 = add i32 0, 0
	store i32 %aux5, i32* @_Acum3
	;___Asignacion___
	%aux6 = add i32 0, 0
	store i32 %aux6, i32* @_IdPos2
	;___Asignacion___
	%aux7 = add i32 0, 1
	store i32 %aux7, i32* @_Pivot2
	;___IfElse___
	%aux8 = load i32, i32* @_Pivot2
	%aux9 = add i32 0, 1
	%aux10 = icmp sge i32 %aux8, %aux9
	br i1 %aux10, label %etiq27, label %etiq28
	etiq27:
	;___IfElse___
	%aux11 = add i32 0, 2
	%aux12 = add i32 0, 0
	%aux13 = icmp sgt i32 %aux11, %aux12
	br i1 %aux13, label %etiq24, label %etiq25
	etiq24:
	;___IfElse___
	%aux14 = add i32 0, 2
	%aux15 = load i32, i32* @_Pivot2
	%aux16 = icmp sge i32 %aux14, %aux15
	br i1 %aux16, label %etiq21, label %etiq22
	etiq21:
	;___IfElse___
	%aux17 = add i32 0, 2
	%aux18 = load i32, i32* @_Pivot2
	%aux19 = sub i32 %aux17, %aux18
	%aux20 = load i32, i32* @_IdPos2
	%aux21 = icmp eq i32 %aux19, %aux20
	br i1 %aux21, label %etiq3, label %etiq4
	etiq3:
	;___Asignacion___
	%aux22 = load i32, i32* @_Acum3
	%aux23 = load i32, i32* @b
	%aux24 = add i32 %aux22, %aux23
	store i32 %aux24, i32* @_Acum3
	;___Asignacion___
	%aux25 = load i32, i32* @_IdPos2
	%aux26 = add i32 0, 1
	%aux27 = add i32 %aux25, %aux26
	store i32 %aux27, i32* @_IdPos2
	;___Asignacion___
	%aux28 = load i32, i32* @_Pivot2
	%aux29 = add i32 0, 1
	%aux30 = sub i32 %aux28, %aux29
	store i32 %aux30, i32* @_Pivot2
	br label %etiq5
	etiq4:
	;___Asignacion___
	%aux31 = load i32, i32* @_IdPos2
	%aux32 = add i32 0, 1
	%aux33 = add i32 %aux31, %aux32
	store i32 %aux33, i32* @_IdPos2
	br label %etiq5
	etiq5:
	;___IfElse___
	%aux34 = add i32 0, 2
	%aux35 = load i32, i32* @_Pivot2
	%aux36 = sub i32 %aux34, %aux35
	%aux37 = load i32, i32* @_IdPos2
	%aux38 = icmp eq i32 %aux36, %aux37
	br i1 %aux38, label %etiq18, label %etiq19
	etiq18:
	;___Asignacion___
	%aux39 = load i32, i32* @_Acum3
	;___Asignacion___
	%aux40 = add i32 0, 0
	store i32 %aux40, i32* @_Acum1
	;___Asignacion___
	%aux41 = add i32 0, 0
	store i32 %aux41, i32* @_IdPos1
	;___Asignacion___
	%aux42 = add i32 0, 1
	store i32 %aux42, i32* @_Pivot1
	;___IfElse___
	%aux43 = load i32, i32* @_Pivot1
	%aux44 = add i32 0, 1
	%aux45 = icmp sge i32 %aux43, %aux44
	br i1 %aux45, label %etiq15, label %etiq16
	etiq15:
	;___IfElse___
	%aux46 = add i32 0, 1
	%aux47 = add i32 0, 0
	%aux48 = icmp sgt i32 %aux46, %aux47
	br i1 %aux48, label %etiq12, label %etiq13
	etiq12:
	;___IfElse___
	%aux49 = add i32 0, 1
	%aux50 = load i32, i32* @_Pivot1
	%aux51 = icmp sge i32 %aux49, %aux50
	br i1 %aux51, label %etiq9, label %etiq10
	etiq9:
	;___IfElse___
	%aux52 = add i32 0, 1
	%aux53 = load i32, i32* @_Pivot1
	%aux54 = sub i32 %aux52, %aux53
	%aux55 = load i32, i32* @_IdPos1
	%aux56 = icmp eq i32 %aux54, %aux55
	br i1 %aux56, label %etiq6, label %etiq7
	etiq6:
	;___Asignacion___
	%aux57 = load i32, i32* @_Acum1
	%aux58 = load i32, i32* @a
	%aux59 = add i32 0, 1
	%aux60 = add i32 %aux58, %aux59
	%aux61 = add i32 %aux57, %aux60
	store i32 %aux61, i32* @_Acum1
	;___Asignacion___
	%aux62 = load i32, i32* @_IdPos1
	%aux63 = add i32 0, 1
	%aux64 = add i32 %aux62, %aux63
	store i32 %aux64, i32* @_IdPos1
	;___Asignacion___
	%aux65 = load i32, i32* @_Pivot1
	%aux66 = add i32 0, 1
	%aux67 = sub i32 %aux65, %aux66
	store i32 %aux67, i32* @_Pivot1
	br label %etiq8
	etiq7:
	;___Asignacion___
	%aux68 = load i32, i32* @_IdPos1
	%aux69 = add i32 0, 1
	%aux70 = add i32 %aux68, %aux69
	store i32 %aux70, i32* @_IdPos1
	br label %etiq8
	etiq8:
	br label %etiq11
	etiq10:
	;___DisplayCadenaCaracteres___
	%aux71 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @_Strmensaje3, i32 0, i32 0))
	br label %etiq11
	etiq11:
	br label %etiq14
	etiq13:
	;___DisplayCadenaCaracteres___
	%aux72 = call i32 @puts(i8* getelementptr ([37 x i8], [37 x i8] * @_Strmensaje2, i32 0, i32 0))
	br label %etiq14
	etiq14:
	br label %etiq17
	etiq16:
	;___DisplayCadenaCaracteres___
	%aux73 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @_Strmensaje1, i32 0, i32 0))
	br label %etiq17
	etiq17:
	;___Asignacion___
	%aux74 = load i32, i32* @_Acum1
	store i32 %aux74, i32* @_Acum2
	%aux75 = add i32 %aux39, %aux74
	store i32 %aux75, i32* @_Acum3
	;___Asignacion___
	%aux76 = load i32, i32* @_IdPos2
	%aux77 = add i32 0, 1
	%aux78 = add i32 %aux76, %aux77
	store i32 %aux78, i32* @_IdPos2
	;___Asignacion___
	%aux79 = load i32, i32* @_Pivot2
	%aux80 = add i32 0, 1
	%aux81 = sub i32 %aux79, %aux80
	store i32 %aux81, i32* @_Pivot2
	br label %etiq20
	etiq19:
	;___Asignacion___
	%aux82 = load i32, i32* @_IdPos2
	%aux83 = add i32 0, 1
	%aux84 = add i32 %aux82, %aux83
	store i32 %aux84, i32* @_IdPos2
	br label %etiq20
	etiq20:
	br label %etiq23
	etiq22:
	;___DisplayCadenaCaracteres___
	%aux85 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @_Strmensaje3, i32 0, i32 0))
	br label %etiq23
	etiq23:
	br label %etiq26
	etiq25:
	;___DisplayCadenaCaracteres___
	%aux86 = call i32 @puts(i8* getelementptr ([37 x i8], [37 x i8] * @_Strmensaje2, i32 0, i32 0))
	br label %etiq26
	etiq26:
	br label %etiq29
	etiq28:
	;___DisplayCadenaCaracteres___
	%aux87 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @_Strmensaje1, i32 0, i32 0))
	br label %etiq29
	etiq29:
	;___Asignacion___
	%aux88 = load i32, i32* @_Acum3
	store i32 %aux88, i32* @_Acum4
	store i32 %aux88, i32* @a
	;___DisplayExpresion___
	%aux89 = load i32, i32* @a
	%aux90 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux89)
	;___Asignacion___
	%aux91 = load i32, i32* @b
	%aux92 = add i32 0, 1
	%aux93 = sub i32 %aux91, %aux92
	store i32 %aux93, i32* @b
	br label %etiq2
	etiq31:
	
	ret i32 0
}

