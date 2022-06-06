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
@str15 = private constant [7 x i8] c"\0Ahola\0A\00"
@str16 = private constant [18 x i8] c"\0AIngrese valor: \0A\00"
@str17 = private constant [8 x i8] c"\0Alunes\0A\00"
@str18 = private constant [9 x i8] c"\0Amartes\0A\00"
@str19 = private constant [12 x i8] c"\0Amiercoles\0A\00"
@str20 = private constant [9 x i8] c"\0Ajueves\0A\00"
@str21 = private constant [10 x i8] c"\0Aviernes\0A\00"
@str22 = private constant [9 x i8] c"\0Asabado\0A\00"
@str23 = private constant [10 x i8] c"\0Adomingo\0A\00"
@str24 = private constant [20 x i8] c"\0Avalor no aceptado\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___DisplayCadenaCaracteres___
	%aux1 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str15, i32 0, i32 0))
	br label %etiq2
	
	etiq2:
	;___DisplayCadenaCaracteres___
	%aux2 = call i32 @puts(i8* getelementptr ([18 x i8], [18 x i8] * @str16, i32 0, i32 0))
	br label %etiq3
	
	etiq3:
	;___Asignación___
	%aux4 = alloca i32
	%aux5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux4)
	%aux6 = load i32, i32* %aux4
	store i32 %aux6, i32* @a
	br label %etiq4
	
	etiq4:
	;___IfElse___
	%aux8 = load i32, i32* @a
	%aux11 = add i32 0, 1
	%aux12 = icmp eq i32 %aux8, %aux11
	br i1 %aux12, label %etiq5, label %etiq6
	
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux13 = call i32 @puts(i8* getelementptr ([8 x i8], [8 x i8] * @str17, i32 0, i32 0))
	br label %etiq26
	
	etiq6:
	;___IfElse___
	%aux15 = load i32, i32* @a
	%aux18 = add i32 0, 2
	%aux19 = icmp eq i32 %aux15, %aux18
	br i1 %aux19, label %etiq8, label %etiq9
	
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux20 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str18, i32 0, i32 0))
	br label %etiq26
	
	etiq9:
	;___IfElse___
	%aux22 = load i32, i32* @a
	%aux25 = add i32 0, 3
	%aux26 = icmp eq i32 %aux22, %aux25
	br i1 %aux26, label %etiq11, label %etiq12
	
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux27 = call i32 @puts(i8* getelementptr ([12 x i8], [12 x i8] * @str19, i32 0, i32 0))
	br label %etiq26
	
	etiq12:
	;___IfElse___
	%aux29 = load i32, i32* @a
	%aux32 = add i32 0, 4
	%aux33 = icmp eq i32 %aux29, %aux32
	br i1 %aux33, label %etiq14, label %etiq15
	
	etiq14:
	;___DisplayCadenaCaracteres___
	%aux34 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str20, i32 0, i32 0))
	br label %etiq26
	
	etiq15:
	;___IfElse___
	%aux36 = load i32, i32* @a
	%aux39 = add i32 0, 5
	%aux40 = icmp eq i32 %aux36, %aux39
	br i1 %aux40, label %etiq17, label %etiq18
	
	etiq17:
	;___DisplayCadenaCaracteres___
	%aux41 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str21, i32 0, i32 0))
	br label %etiq26
	
	etiq18:
	;___IfElse___
	%aux43 = load i32, i32* @a
	%aux46 = add i32 0, 6
	%aux47 = icmp eq i32 %aux43, %aux46
	br i1 %aux47, label %etiq20, label %etiq21
	
	etiq20:
	;___DisplayCadenaCaracteres___
	%aux48 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str22, i32 0, i32 0))
	br label %etiq26
	
	etiq21:
	;___IfElse___
	%aux50 = load i32, i32* @a
	%aux53 = add i32 0, 7
	%aux54 = icmp eq i32 %aux50, %aux53
	br i1 %aux54, label %etiq23, label %etiq24
	
	etiq23:
	;___DisplayCadenaCaracteres___
	%aux55 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str23, i32 0, i32 0))
	br label %etiq26
	
	etiq24:
	;___DisplayCadenaCaracteres___
	%aux56 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str24, i32 0, i32 0))
	br label %etiq26
	
	etiq26:
	ret i32 0
}

