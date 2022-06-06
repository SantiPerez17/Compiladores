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
	
	etiq29:
	;___DisplayCadenaCaracteres___
	%aux66 = call i32 @puts(i8* getelementptr ([18 x i8], [18 x i8] * @str15, i32 0, i32 0))
	br label %etiq30
	
	etiq30:
	;___Asignación___
	%aux68 = alloca i32
	%aux69 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux68)
	%aux70 = load i32, i32* %aux68
	store i32 %aux70, i32* @a
	br label %etiq31
	
	etiq31:
	;___While___
	%aux72 = load i32, i32* @a
	%aux75 = add i32 0, 0
	%aux76 = icmp ne i32 %aux72, %aux75
	br i1 %aux76, label %etiq32, label %etiq57
	
	etiq32:
	;___IfElse___
	%aux78 = load i32, i32* @a
	%aux81 = add i32 0, 1
	%aux82 = icmp eq i32 %aux78, %aux81
	br i1 %aux82, label %etiq34, label %etiq35
	
	etiq34:
	;___DisplayCadenaCaracteres___
	%aux83 = call i32 @puts(i8* getelementptr ([8 x i8], [8 x i8] * @str16, i32 0, i32 0))
	br label %etiq55
	
	etiq35:
	;___IfElse___
	%aux85 = load i32, i32* @a
	%aux88 = add i32 0, 2
	%aux89 = icmp eq i32 %aux85, %aux88
	br i1 %aux89, label %etiq37, label %etiq38
	
	etiq37:
	;___DisplayCadenaCaracteres___
	%aux90 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str17, i32 0, i32 0))
	br label %etiq55
	
	etiq38:
	;___IfElse___
	%aux92 = load i32, i32* @a
	%aux95 = add i32 0, 3
	%aux96 = icmp eq i32 %aux92, %aux95
	br i1 %aux96, label %etiq40, label %etiq41
	
	etiq40:
	;___DisplayCadenaCaracteres___
	%aux97 = call i32 @puts(i8* getelementptr ([12 x i8], [12 x i8] * @str18, i32 0, i32 0))
	br label %etiq55
	
	etiq41:
	;___IfElse___
	%aux99 = load i32, i32* @a
	%aux102 = add i32 0, 4
	%aux103 = icmp eq i32 %aux99, %aux102
	br i1 %aux103, label %etiq43, label %etiq44
	
	etiq43:
	;___DisplayCadenaCaracteres___
	%aux104 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str19, i32 0, i32 0))
	br label %etiq55
	
	etiq44:
	;___IfElse___
	%aux106 = load i32, i32* @a
	%aux109 = add i32 0, 5
	%aux110 = icmp eq i32 %aux106, %aux109
	br i1 %aux110, label %etiq46, label %etiq47
	
	etiq46:
	;___DisplayCadenaCaracteres___
	%aux111 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str20, i32 0, i32 0))
	br label %etiq55
	
	etiq47:
	;___IfElse___
	%aux113 = load i32, i32* @a
	%aux116 = add i32 0, 6
	%aux117 = icmp eq i32 %aux113, %aux116
	br i1 %aux117, label %etiq49, label %etiq50
	
	etiq49:
	;___DisplayCadenaCaracteres___
	%aux118 = call i32 @puts(i8* getelementptr ([9 x i8], [9 x i8] * @str21, i32 0, i32 0))
	br label %etiq55
	
	etiq50:
	;___IfElse___
	%aux120 = load i32, i32* @a
	%aux123 = add i32 0, 7
	%aux124 = icmp eq i32 %aux120, %aux123
	br i1 %aux124, label %etiq52, label %etiq53
	
	etiq52:
	;___DisplayCadenaCaracteres___
	%aux125 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str22, i32 0, i32 0))
	br label %etiq55
	
	etiq53:
	;___DisplayCadenaCaracteres___
	%aux126 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str23, i32 0, i32 0))
	br label %etiq55
	
	etiq55:
	;___Asignación___
	%aux128 = alloca i32
	%aux129 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux128)
	%aux130 = load i32, i32* %aux128
	store i32 %aux130, i32* @a
	br label %etiq31
	
	etiq57:
	ret i32 0
}

