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
	
	etiq22:
	;___Asignacion___
	%aux2 = add i32 0, 1
	%aux3 = sub i32 0, %aux2
	store i32 %aux3, i32* @a
	br label %etiq23
	
	etiq23:
	;___While___
	%aux5 = load i32, i32* @a
	%aux6 = add i32 0, 1
	%aux7 = icmp slt i32 %aux5, %aux6
	br i1 %aux7, label %etiq25, label %etiq32
	
	etiq25:
	;___IfElse___
	%aux9 = load i32, i32* @a
	%aux10 = add i32 0, 1
	%aux11 = icmp slt i32 %aux9, %aux10
	br i1 %aux11, label %etiq28, label %etiq29
	
	etiq28:
	;___Asignacion___
	%aux13 = add i32 0, 0
	store i32 %aux13, i32* @a
	br label %etiq23
	
	etiq29:
	;___Asignacion___
	%aux15 = add i32 0, 1
	store i32 %aux15, i32* @a
	br label %etiq23
	
	etiq32:
	;___DisplayExpresion___
	%aux17 = load i32, i32* @a
	%aux16 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux17)
	br label %etiq33
	
	etiq33:
	ret i32 0
}

