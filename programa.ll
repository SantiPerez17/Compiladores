;Programa: 'Prueba'
source_filename = "pruebas.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.11.0"

declare i32 @puts(i8*)
declare i32 @scanf(i8*, ...)
declare double @scanfd(i8*, ...)
declare i1 @scanfb(i8*, ...)
@.integer = private constant [4 x i8] c"%d\0A\00"
@.float = private constant [4 x i8] c"%f\0A\00"
@int_read_format = unnamed_addr constant [3 x i8] c"%d\00"
@double_read_format = unnamed_addr constant [4 x i8] c"%lf\00"
@bool_read_format = unnamed_addr constant [3 x i8] c"%b\00"

@a = global i32 0
@ahre = global i1 0
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
	;Asignacion:
	;Input_Int:
	%aux2 = alloca i32
	%aux3 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux2)
	store i32 %aux3, i32* @a
	;Asignacion:
	;Input_Float:
	%aux5 = alloca double
	%aux6 = call double (i8*, ...) @scanfd(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux5)
	store double %aux6, double* @f
	;Asignacion:
	;Input_Bool:
	%aux8 = alloca i1
	%aux9 = call i1 (i8*, ...) @scanfb(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @bool_read_format, i64 0, i64 0), i1* %aux8)
	store i1 %aux9, i1* @xd
	
	ret i32 0
}

