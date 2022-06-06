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
@r = global i1 0
@res = global i32 0
@res2 = global i32 0
@res3 = global i32 0
@res4 = global i32 0
@str15 = private constant [18 x i8] c"\0AIngrese valor: \0A\00"
@str16 = private constant [8 x i8] c"\0Alunes\0A\00"
@str17 = private constant [9 x i8] c"\0Amartes\0A\00"
@str18 = private constant [12 x i8] c"\0Amiercoles\0A\00"
@str19 = private constant [9 x i8] c"\0Ajueves\0A\00"
@str20 = private constant [10 x i8] c"\0Aviernes\0A\00"
@str21 = private constant [9 x i8] c"\0Asabado\0A\00"
@str22 = private constant [10 x i8] c"\0Adomingo\0A\00"
@str23 = private constant [20 x i8] c"\0Avalor no aceptado\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___DisplayCadenaCaracteres___
	%aux1 = call i32 @puts(i8* getelementptr ([18 x i8], [18 x i8] * @str15, i32 0, i32 0))
	br label %etiq2
	
	etiq2:
	;___Asignación___
	%aux3 = alloca i32
	%aux4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux3)
	%aux5 = load i32, i32* %aux3
	store i32 %aux5, i32* @a
	br label %etiq3
	
	etiq3:
	;___While___
	%aux7 = load i32, i32* @a
	%aux10 = add i32 0, 0
	%aux11 = icmp ne i32 %aux7, %aux10
	br i1 %aux11, label %etiq4, label %etiq29
	
	etiq4:
	;___IfElse___
	%aux13 = load i32, i32* @a
	%aux16 = add i32 0, 1
	%aux17 = icmp eq i32 %aux13, %aux16
	br i1 %aux17, label %etiq6, label %etiq7
	
	etiq6:
	;___DisplayCadenaCaracteres___
	%aux18 = call i32 @puts(i8* getelementptr ([8 x i8], [8 x i8] * @str16, i32 0, i32 0))
	
	etiq7:
	;___IfElse___
	%aux20 = load i32, i32* @a
	%aux23 = add i32 0, 2
	%aux24 = icmp eq i32 %aux20, %aux23
	br i1 %aux24, label %etiq9, label %etiq10
	
	etiq9:
	;___DisplayCadenaCaracteres___
	%aux25 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str17, i32 0, i32 0))
	br label %etiq12
	
	etiq10:
	;___IfElse___
	%aux27 = load i32, i32* @a
	%aux30 = add i32 0, 3
	%aux31 = icmp eq i32 %aux27, %aux30
	br i1 %aux31, label %etiq12, label %etiq13
	
	etiq12:
	;___DisplayCadenaCaracteres___
	%aux32 = call i32 @puts(i8* getelementptr ([12 x i8], [12 x i8] * @str18, i32 0, i32 0))
	br label %etiqXX
	
	etiq13:
	;___IfElse___
	%aux34 = load i32, i32* @a
	%aux37 = add i32 0, 4
	%aux38 = icmp eq i32 %aux34, %aux37
	br i1 %aux38, label %etiq15, label %etiq16
	
	etiq15:
	;___DisplayCadenaCaracteres___
	%aux39 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str19, i32 0, i32 0))
	br label %etiqXX
	
	etiq16:
	;___IfElse___
	%aux41 = load i32, i32* @a
	%aux44 = add i32 0, 5
	%aux45 = icmp eq i32 %aux41, %aux44
	br i1 %aux45, label %etiq18, label %etiq19
	
	etiq18:
	;___DisplayCadenaCaracteres___
	%aux46 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str20, i32 0, i32 0))
	br label %etiqXX
	
	etiq19:
	;___IfElse___
	%aux48 = load i32, i32* @a
	%aux51 = add i32 0, 6
	%aux52 = icmp eq i32 %aux48, %aux51
	br i1 %aux52, label %etiq21, label %etiq22
	
	etiq21:
	;___DisplayCadenaCaracteres___
	%aux53 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str21, i32 0, i32 0))
	br label %etiqXX
	
	etiq22:
	;___IfElse___
	%aux55 = load i32, i32* @a
	%aux58 = add i32 0, 7
	%aux59 = icmp eq i32 %aux55, %aux58
	br i1 %aux59, label %etiq24, label %etiq25
	
	etiq24:
	;___DisplayCadenaCaracteres___
	%aux60 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str22, i32 0, i32 0))
	br label %etiqXX
	
	etiq25:
	;___DisplayCadenaCaracteres___
	%aux61 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str23, i32 0, i32 0))
	br label %etiq27
	
	etiq27:
	;___Asignación___
	%aux63 = alloca i32
	%aux64 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux63)
	%aux65 = load i32, i32* %aux63
	store i32 %aux65, i32* @a
	br label %etiqXX
	br label %etiq3
	
	etiq29:
	ret i32 0
}

