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
@str15 = private constant [16 x i8] c"\0Aingrese valor\0A\00"
@str16 = private constant [8 x i8] c"\0Alunes\0A\00"
@str17 = private constant [9 x i8] c"\0Amartes\0A\00"
@str18 = private constant [12 x i8] c"\0Amiercoles\0A\00"
@str19 = private constant [9 x i8] c"\0Ajueves\0A\00"
@str20 = private constant [10 x i8] c"\0Aviernes\0A\00"
@str21 = private constant [9 x i8] c"\0Asabado\0A\00"
@str22 = private constant [10 x i8] c"\0Adomingo\0A\00"
@str23 = private constant [20 x i8] c"\0Avalor no aceptado\0A\00"
@na = global i1 0

define i32 @main(i32, i8**) {

	etiq1:
	;___DisplayCadenaCaracteres___
	%aux1 = call i32 @puts(i8* getelementptr ([16 x i8], [16 x i8] * @str15, i32 0, i32 0))
	;___Asignacion___
	%aux2 = alloca i32
	%aux3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux2)
	%aux4 = load i32, i32* %aux2
	store i32 %aux4, i32* @a
	;___IfElse___
	%aux5 = load i32, i32* @a
	%aux6 = add i32 0, 1
	%aux7 = icmp eq i32 %aux5, %aux6
	br i1 %aux7, label %etiq20, label %etiq21
	etiq20:
	;___DisplayCadenaCaracteres___
	%aux8 = call i32 @puts(i8* getelementptr ([8 x i8], [8 x i8] * @str16, i32 0, i32 0))
	br label %etiq22
	etiq21:
	;___IfElse___
	%aux9 = load i32, i32* @a
	%aux10 = add i32 0, 2
	%aux11 = icmp eq i32 %aux9, %aux10
	br i1 %aux11, label %etiq17, label %etiq18
	etiq17:
	;___DisplayCadenaCaracteres___
	%aux12 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str17, i32 0, i32 0))
	br label %etiq19
	etiq18:
	;___IfElse___
	%aux13 = load i32, i32* @a
	%aux14 = add i32 0, 3
	%aux15 = icmp eq i32 %aux13, %aux14
	br i1 %aux15, label %etiq14, label %etiq15
	etiq14:
	;___DisplayCadenaCaracteres___
	%aux16 = call i32 @puts(i8* getelementptr ([12 x i8], [12 x i8] * @str18, i32 0, i32 0))
	br label %etiq16
	etiq15:
	;___IfElse___
	%aux17 = load i32, i32* @a
	%aux18 = add i32 0, 4
	%aux19 = icmp eq i32 %aux17, %aux18
	br i1 %aux19, label %etiq11, label %etiq12
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux20 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str19, i32 0, i32 0))
	br label %etiq13
	etiq12:
	;___IfElse___
	%aux21 = load i32, i32* @a
	%aux22 = add i32 0, 5
	%aux23 = icmp eq i32 %aux21, %aux22
	br i1 %aux23, label %etiq8, label %etiq9
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux24 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str20, i32 0, i32 0))
	br label %etiq10
	etiq9:
	;___IfElse___
	%aux25 = load i32, i32* @a
	%aux26 = add i32 0, 6
	%aux27 = icmp eq i32 %aux25, %aux26
	br i1 %aux27, label %etiq5, label %etiq6
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux28 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str21, i32 0, i32 0))
	br label %etiq7
	etiq6:
	;___IfElse___
	%aux29 = load i32, i32* @a
	%aux30 = add i32 0, 7
	%aux31 = icmp eq i32 %aux29, %aux30
	br i1 %aux31, label %etiq2, label %etiq3
	etiq2:
	;___DisplayCadenaCaracteres___
	%aux32 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str22, i32 0, i32 0))
	br label %etiq4
	etiq3:
	;___DisplayCadenaCaracteres___
	%aux33 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str23, i32 0, i32 0))
	br label %etiq4
	etiq4:
	br label %etiq7
	etiq7:
	br label %etiq10
	etiq10:
	br label %etiq13
	etiq13:
	br label %etiq16
	etiq16:
	br label %etiq19
	etiq19:
	br label %etiq22
	etiq22:
	
	ret i32 0
}

