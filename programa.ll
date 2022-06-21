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
@na = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___Asignacion___
	%aux2 = add i32 0, 0
	store i32 %aux2, i32* @a
	br label %etiq2
	
	etiq2:
	;___While___
	%aux4 = load i32, i32* @a
	%aux5 = add i32 0, 9
	%aux6 = icmp sgt i32 %aux4, %aux5
	%aux7 = xor i1 %aux6, 1
	%aux8 = add i1 0, 1
	%aux9 = and i1 %aux7, %aux8
	br i1 %aux9, label %etiq5, label %etiq10
	
	etiq5:
	;___DisplayExpresion___
	%aux11 = load i32, i32* @a
	%aux10 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux11)
	br label %etiq7
	
	etiq7:
	;___Asignacion___
	%aux13 = load i32, i32* @a
	%aux14 = add i32 0, 1
	%aux15 = add i32 %aux13, %aux14
	store i32 %aux15, i32* @a
	br label %etiq2
	
	etiq10:
	ret i32 0
}

