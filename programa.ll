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
	%ptro.2 = add i32 0, 30
	store i32 %ptro.2, i32* @a
	%ptro.4 = add i32 0, 50
	store i32 %ptro.4, i32* @b
	%ptro.6 = load i32, i32* @a
	%ptro.7 = load i32, i32* @b
	%ptro.8 = add i32 %ptro.6, %ptro.7
	store i32 %ptro.8, i32* @res
	
	ret i32 0
}

