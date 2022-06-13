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
@str16 = private constant [6 x i8] c"\0A...\0A\00"
@str17 = private constant [11 x i8] c"\0Aa vale 5\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___Asignación___
	%aux2 = add i32 0, 10
	store i32 %aux2, i32* @a
	br label %etiq2
	
	etiq2:
	;___Asignación___
	%aux4 = add i1 0, 1
	store i1 %aux4, i1* @xd
	br label %etiq3
	
	etiq3:
	;___While___
	%aux6 = load i32, i32* @a
	%aux7 = add i32 0, 0
	%aux8 = icmp sgt i32 %aux6, %aux7
	br i1 %aux8, label %etiq5, label %etiq19
	
	etiq5:
	;___Asignación___
	%aux10 = load i32, i32* @a
	%aux11 = add i32 0, 1
	%aux12 = sub i32 %aux10, %aux11
	store i32 %aux12, i32* @a
	br label %etiq8
	
	etiq8:
	;___IfElse___
	%aux14 = load i1, i1* @xd
	br i1 %aux14, label %etiq9, label %etiq10
	
	etiq9:
	;___DisplayExpresion___
	%aux16 = load i32, i32* @a
	%aux15 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux16)
	br label %etiq12
	
	etiq12:
	;___Asignación___
	%aux18 = add i1 0, 0
	store i1 %aux18, i1* @xd
	br label %etiq14
	
	etiq10:
	;___DisplayCadenaCaracteres___
	%aux19 = call i32 @puts(i8* getelementptr ([6 x i8], [6 x i8] * @str16, i32 0, i32 0))
	br label %etiq13
	
	etiq13:
	;___Asignación___
	%aux21 = add i1 0, 1
	store i1 %aux21, i1* @xd
	br label %etiq14
	
	etiq14:
	;___IfSimple___
	%aux23 = load i32, i32* @a
	%aux24 = add i32 0, 5
	%aux25 = icmp eq i32 %aux23, %aux24
	br i1 %aux25, label %etiq16, label %etiq3
	
	etiq16:
	;___DisplayCadenaCaracteres___
	%aux26 = call i32 @puts(i8* getelementptr ([11 x i8], [11 x i8] * @str17, i32 0, i32 0))
	br label %etiq3
	
	etiq19:
	ret i32 0
}

