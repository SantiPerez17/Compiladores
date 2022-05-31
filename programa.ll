;Programa: 'Prueba'
source_filename = "pruebas.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.29.30145"

declare i32 @puts(i8*)
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8* %0, ...)
declare double @scanfd(i8* %0, ...)
declare i1 @scanfb(i8* %0, ...)
@.integer = private constant [4 x i8] c"%d\0A\00"
@.double = private constant [5 x i8] c"%lf\0A\00"
@int_read_format = unnamed_addr constant [3 x i8] c"%d\00"
@double_read_format = unnamed_addr constant [4 x i8] c"%lf\00"
@bool_read_format = unnamed_addr constant [3 x i8] c"%b\00"

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
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq46:
	;___Asignación___
	%aux48 = add i32 0, 0
	store i32 %aux48, i32* @aux
	br label %etiq49
	
	etiq49:
	;___While___
	%aux51 = load i32, i32* @aux
	%aux54 = add i32 0, 10
	%aux53 = icmp slt i32 %aux51, %aux54
	br i1 %aux53, label %etiq55, label %etiq66
	
	etiq55:
	;___DisplayExpresion___
	%aux58 = load i32, i32* @aux
	%aux57 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux58)
	br label %etiq59
	
	etiq59:
	;___Asignación___
	%aux61 = load i32, i32* @aux
	%aux64 = add i32 0, 1
	%aux63 = add i32 %aux61, %aux64
	store i32 %aux63, i32* @aux
	br label %etiq49
	
	etiq66:
	ret i32 0
}

