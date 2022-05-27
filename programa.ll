;Programa: Prueba
source_filename = "Prueba.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.16.27038"

declare i32 @printf(i8*, ...)

@.integer = private constant [4 x i8] c"%d\0A\00"

define i32 @main(i32, i8**) {
	@a = global i32 0
	%ptro.3 = add i32 0, 30
	store i32 %ptro.3, i32* @a
	@b = global i32 0
	%ptro.6 = add i32 0, 50
	store i32 %ptro.6, i32* @b
	@res = global i32 0
	%ptro.9 = load i32, i32* @2$s
	%ptro.10 = load i32, i32* @2$s
	%ptro.11 = add i32 %ptro.9, %ptro.10
	store i32 %ptro.11, i32* @res
		ret i32 0
}


