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
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq10:
	;___Asignación___
	%aux28 = alloca i32
	%aux29 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux28)
	%aux30 = load i32, i32* %aux28
	%aux31 = add i32 0, 50
	%aux32 = add i32 %aux30, %aux31
	store i32 %aux32, i32* @a
	br label %etiq11
	
	etiq11:
	;___DisplayExpresion___
	%aux34 = load i32, i32* @a
	%aux37 = add i32 0, 50
	%aux38 = sub i32 %aux34, %aux37
	%aux33 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux38)
	br label %etiq12
	
	etiq12:
	ret i32 0
}

