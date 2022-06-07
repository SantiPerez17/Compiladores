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
	%aux2 = add i32 0, 0
	store i32 %aux2, i32* @a
	br label %etiq2
	
	etiq2:
	;___Asignación___
	%aux8 = add i32 0, 1
	store i32 %aux8, i32* @Pivot1
	br label %etiq3
	
	etiq3:
	;___IfElse___
	%aux10 = load i32, i32* @Pivot1
	%aux13 = add i32 0, 1
	%aux14 = icmp sge i32 %aux10, %aux13
	br i1 %aux14, label %etiq4, label %etiq5
	
	etiq4:
	;___IfElse___
	%aux19 = add i32 0, 1
	%aux17 = load i32, i32* @Pivot1
	%aux20 = icmp sge i32 %aux19, %aux17
	br i1 %aux20, label %etiq7, label %etiq8
	
	etiq7:
	;___IfElse___
	%aux25 = add i32 0, 1
	%aux26 = add i32 0, 0
	%aux27 = icmp sgt i32 %aux25, %aux26
	br i1 %aux27, label %etiq10, label %etiq11
	
	etiq10:
	;___IfElse___
	%aux35 = add i32 0, 1
	%aux33 = load i32, i32* @Pivot1
	%aux36 = sub i32 %aux35, %aux33
	%aux30 = load i32, i32* @IdPos1
	%aux37 = icmp eq i32 %aux36, %aux30
	br i1 %aux37, label %etiq13, label %etiq14
	
	etiq13:
	;___Asignación___
	%aux39 = load i32, i32* @_Acum1
	%aux42 = add i32 0, 2
	%aux43 = add i32 %aux39, %aux42
	store i32 %aux43, i32* @_Acum1
	br label %etiq16
	
	etiq16:
	;___Asignación___
	%aux45 = load i32, i32* @IdPos1
	%aux48 = add i32 0, 1
	%aux49 = add i32 %aux45, %aux48
	store i32 %aux49, i32* @IdPos1
	br label %etiq17
	
	etiq17:
	;___Asignación___
	%aux51 = load i32, i32* @Pivot1
	%aux54 = add i32 0, 1
	%aux55 = sub i32 %aux51, %aux54
	store i32 %aux55, i32* @Pivot1
	br label %etiq18
	
	etiq14:
	;___Asignación___
	%aux57 = load i32, i32* @IdPos1
	%aux60 = add i32 0, 1
	%aux61 = add i32 %aux57, %aux60
	store i32 %aux61, i32* @IdPos1
	br label %etiq18
	
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux62 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq18
	
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux63 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq18
	
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux64 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq18
	
	etiq18:
	;___Asignación___
	%aux66 = load i32, i32* @_Acum1
	store i32 %aux66, i32* @_Acum2
	br label %etiq19
	
	etiq19:
	%aux67 = load i32, i32* @_Acum2
	%aux5 = load i32, i32* @a
	%aux68 = icmp ne i32 %aux67, %aux5
	br i1 %aux68, label %etiq20, label %etiq24
	
	etiq20:
	;___DisplayExpresion___
	%aux70 = load i32, i32* @a
	%aux69 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux70)
	br label %etiq22
	
	etiq22:
	;___Asignación___
	%aux72 = load i32, i32* @a
	%aux75 = add i32 0, 1
	%aux76 = add i32 %aux72, %aux75
	store i32 %aux76, i32* @a
	br label %etiq2
	
	etiq24:
	ret i32 0
}

