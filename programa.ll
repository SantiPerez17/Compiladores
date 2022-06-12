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
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___IfElse___
	%aux2 = load i32, i32* @a
	%aux3 = add i32 0, 0
	%aux4 = icmp eq i32 %aux2, %aux3
	br i1 %aux4, label %etiq3, label %etiq4
	
	etiq3:
	;___While___
	%aux6 = load i32, i32* @a
	%aux7 = add i32 0, 1
	%aux8 = icmp eq i32 %aux6, %aux7
	br i1 %aux8, label %etiq7, label %etiq22
	
	etiq7:
	;___IfElse___
	%aux10 = load i32, i32* @a
	%aux11 = add i32 0, 2
	%aux12 = icmp eq i32 %aux10, %aux11
	br i1 %aux12, label %etiq10, label %etiq11
	
	etiq10:
	;___DisplayExpresion___
	%aux14 = load i32, i32* @a
	%aux13 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux14)
	br label %etiq3
	
	etiq11:
	;___DisplayExpresion___
	%aux16 = load i32, i32* @b
	%aux15 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux16)
	br label %etiq13
	
	etiq4:
	;___While___
	%aux18 = load i32, i32* @c
	%aux19 = add i32 0, 1
	%aux20 = icmp eq i32 %aux18, %aux19
	br i1 %aux20, label %etiq15, label %etiq22
	
	etiq15:
	;___IfElse___
	%aux22 = load i32, i32* @c
	%aux23 = add i32 0, 2
	%aux24 = icmp eq i32 %aux22, %aux23
	br i1 %aux24, label %etiq18, label %etiq19
	
	etiq18:
	;___DisplayExpresion___
	%aux26 = load i32, i32* @c
	%aux25 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux26)
	br label %etiq4
	
	etiq19:
	;___DisplayExpresion___
	%aux28 = load i32, i32* @d
	%aux27 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux28)
	br label %etiq21
	
	etiq22:
	ret i32 0
}

