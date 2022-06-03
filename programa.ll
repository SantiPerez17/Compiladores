;Programa: 'Prueba'
source_filename = "pruebas.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.29.30145"

declare i32 @puts(i8*)
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8* %0, ...)
@.integer = private constant [4 x i8] c"%d\0A\00"
@.double = private constant [4 x i8] c"%f\0A\00"
@.bool = private constant [4 x i8] c"%c\0A\00"
@int_read_format = unnamed_addr constant [3 x i8] c"%d\00"
@double_read_format = unnamed_addr constant [4 x i8] c"%lf\00"
@a = global i32 0
@ahre = global i1 0
@aux = global i32 0
@b = global double 0.0
@c = global i32 0
@d = global i32 0
@f = global double 0.0
@r = global i1 0
@res = global i32 0
@res2 = global i32 0
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq5:
	;___Asignación___
	%aux13 = add i32 0, 0
	store i32 %aux13, i32* @a
	br label %etiq6
	
	etiq6:
	;___Asignación___
	%aux15 = add i32 0, 0
	%aux16 = sitofp i32 %aux15 to double
	store double %aux16, double* @f
	br label %etiq7
	
	etiq7:
	;___DisplayExpresion___
	%aux18 = load double, double* @f
	%aux21 = add i32 0, 10
	%aux22 = sitofp i32 %aux21 to double
	%aux20 = fcmp slt double %aux18, %aux22
	%aux17 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.bool, i32 0, i32 0), i1 %aux20)
	br label %etiq8
	
	etiq8:
	ret i32 0
}

