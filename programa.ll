;Programa: 'Prueba'
source_filename = "pruebas.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.11.0"

declare i32 @puts(i8*)
declare i32 @scanf(i8*, ...)
declare double @scanfd(i8*, ...)
declare i1 @scanfb(i8*, ...)
@.integer = private constant [4 x i8] c"%d\0A\00"
@.double = private constant [5 x i8] c"%lf\0A\00"
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
	etiq1:
	;IfSimple:
	;OperacionBinaria:
	%aux2 = load i32, i32* @a
	%aux3 = load i32, i32* @b
	%aux4 = icmp eq i32 %aux2, %aux3
	br i1 %aux4, label %etiq5, label %etiq6
	etiq5:
	;Asignacion:
	;ConstanteEntera:
	%aux8 = add i32 0, 0
	store i32 %aux8, i32* @a
	br label %etiq6
	etiq6:
	;While_nodo_665335669:
	;OperacionBinaria:
	;OperacionBinaria:
	%aux14 = load i32, i32* @a
	%aux15 = load i32, i32* @b
	%aux16 = add i32 %aux14, %aux15
	%aux12 = load i32, i32* @c
	%aux13 = icmp ne i32 %aux16, %aux12
	br i1 %aux13, label %etiq17, label %etiq18
	etiq17:
	;Asignacion:
	;OperacionBinaria:
	%aux20 = load i32, i32* @c
	;ConstanteEntera:
	%aux23 = add i32 0, 1
	%aux22 = add i32 %aux20, %aux23
	store i32 %aux22, i32* @c
	br label etiq6
	etiq18:
	
	ret i32 0
}

