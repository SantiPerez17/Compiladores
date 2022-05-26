;Programa: Prueba
source_filename = "Prueba.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.16.27038"

declare i32 @printf(i8*, ...)

@.integer = private constant [4 x i8] c"%d\0A\00"

define i32 @main(i32, i8**) {
	%ptro.2 = global i32 0
	%ptro.3 = add i32 0, 30
	%ptro.4 = add i32 0, 50
	%ptro.5 = add i32 %ptro.3, %ptro.4
	%ptro.2 = load i32, i32* %ptro.5
	store i32 %ptro.2, i32* %ptro.5
	%ptro.7 = global i1 true
	%ptro.7 = load i1, i1* null
	store i1 %ptro.7, i1* null
		ret i32 0
}


