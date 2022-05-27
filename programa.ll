;Programa: 'Prueba'
source_filename = "pruebas.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.11.0"

declare i32 @puts(i8*)
declare i32 @printf(i8*, ...)
@.integer = private constant [4 x i8] c"%d\0A\00"
@.float = private constant [4 x i8] c"%f\0A\00"

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
	;ConstanteEntera:
	%aux10 = add i32 0, 5
	store i32 %aux10, i32* @a
	;Asignacion:
	;ConstanteFloat:
	%aux12 = add double 0.0, 3.4
	store double %aux12, double* @f
	;Asignacion:
	;ConstanteBool:
	%aux14 = add i1 0, 1
	store i1 %aux14, i1* @xd
	;Asignacion:
	;OperacionBinaria:
	%aux16 = load i32, i32* @a
	%aux17 = load i32, i32* @Factor_Int
	%aux18 = add i32 %aux16, %aux17
	store i32 %aux18, i32* @res
	
	ret i32 0
}

