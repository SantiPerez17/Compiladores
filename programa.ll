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
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___While___
	%aux2 = load i32, i32* @a
	%aux3 = load i32, i32* @b
	%aux5 = icmp eq i32 %aux2, %aux3
	br i1 %aux5, label %etiq2, label %etiq10
	
	etiq2:
	;___DisplayCadenaCaracteres___
	%aux6 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str15, i32 0, i32 0))
	br label %etiq4
	
	etiq4:
	;___Asignación___
	%aux8 = load i32, i32* @c
	%aux11 = add i32 0, 1
	%aux12 = add i32 %aux8, %aux11
	store i32 %aux12, i32* @c
	br label %etiq5
	
	etiq5:
	;___While___
	%aux14 = load i32, i32* @a
	%aux15 = load i32, i32* @b
	%aux17 = icmp eq i32 %aux14, %aux15
	br i1 %aux17, label %etiq6, label %etiq1
	
	etiq6:
	;___Asignación___
	%aux19 = load i32, i32* @b
	%aux22 = add i32 0, 5
	%aux23 = add i32 %aux19, %aux22
	store i32 %aux23, i32* @b
	br label %etiq8
	
	etiq8:
	;___Asignación___
	%aux25 = load i32, i32* @a
	%aux28 = add i32 0, 3
	%aux29 = add i32 %aux25, %aux28
	store i32 %aux29, i32* @a
	br label %etiq5
	
	etiq10:
	ret i32 0
}

