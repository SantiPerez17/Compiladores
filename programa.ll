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
@str16 = private constant [18 x i8] c"\0Aingrese valor a\0A\00"
@str17 = private constant [18 x i8] c"\0Aingrese valor b\0A\00"
@str18 = private constant [18 x i8] c"\0Aingrese valor c\0A\00"
@str19 = private constant [9 x i8] c"\0Asuma: \0A\00"
@str20 = private constant [10 x i8] c"\0Aresta: \0A\00"
@str21 = private constant [19 x i8] c"\0Amultiplicacion: \0A\00"
@str22 = private constant [13 x i8] c"\0Adivision: \0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___DisplayCadenaCaracteres___
	%aux1 = call i32 @puts(i8* getelementptr ([18 x i8], [18 x i8] * @str16, i32 0, i32 0))
	br label %etiq2
	
	etiq2:
	;___Asignación___
	%aux3 = alloca i32
	%aux4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux3)
	%aux5 = load i32, i32* %aux3
	store i32 %aux5, i32* @a
	br label %etiq3
	
	etiq3:
	;___DisplayCadenaCaracteres___
	%aux6 = call i32 @puts(i8* getelementptr ([18 x i8], [18 x i8] * @str17, i32 0, i32 0))
	br label %etiq4
	
	etiq4:
	;___Asignación___
	%aux8 = alloca i32
	%aux9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux8)
	%aux10 = load i32, i32* %aux8
	store i32 %aux10, i32* @b
	br label %etiq5
	
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux11 = call i32 @puts(i8* getelementptr ([18 x i8], [18 x i8] * @str18, i32 0, i32 0))
	br label %etiq6
	
	etiq6:
	;___Asignación___
	%aux13 = alloca i32
	%aux14 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux13)
	%aux15 = load i32, i32* %aux13
	store i32 %aux15, i32* @c
	br label %etiq7
	
	etiq7:
	;___DisplayCadenaCaracteres___
	%aux16 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str19, i32 0, i32 0))
	br label %etiq8
	
	etiq8:
	;___DisplayExpresion___
	%aux18 = load i32, i32* @a
	%aux19 = load i32, i32* @b
	%aux20 = add i32 %aux18, %aux19
	%aux21 = load i32, i32* @c
	%aux22 = add i32 %aux20, %aux21
	%aux17 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux22)
	br label %etiq9
	
	etiq9:
	;___DisplayCadenaCaracteres___
	%aux23 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str20, i32 0, i32 0))
	br label %etiq10
	
	etiq10:
	;___DisplayExpresion___
	%aux25 = load i32, i32* @a
	%aux26 = load i32, i32* @b
	%aux27 = sub i32 %aux25, %aux26
	%aux28 = load i32, i32* @c
	%aux29 = sub i32 %aux27, %aux28
	%aux24 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux29)
	br label %etiq11
	
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux30 = call i32 @puts(i8* getelementptr ([19 x i8], [19 x i8] * @str21, i32 0, i32 0))
	br label %etiq12
	
	etiq12:
	;___DisplayExpresion___
	%aux32 = load i32, i32* @a
	%aux33 = load i32, i32* @b
	%aux34 = mul i32 %aux32, %aux33
	%aux35 = load i32, i32* @c
	%aux36 = mul i32 %aux34, %aux35
	%aux31 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux36)
	br label %etiq13
	
	etiq13:
	;___DisplayCadenaCaracteres___
	%aux37 = call i32 @puts(i8* getelementptr ([13 x i8], [13 x i8] * @str22, i32 0, i32 0))
	br label %etiq14
	
	etiq14:
	;___DisplayExpresion___
	%aux39 = load i32, i32* @a
	%aux40 = load i32, i32* @b
	%aux41 = sdiv i32 %aux39, %aux40
	%aux42 = load i32, i32* @c
	%aux43 = sdiv i32 %aux41, %aux42
	%aux38 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux43)
	br label %etiq15
	
	etiq15:
	ret i32 0
}

