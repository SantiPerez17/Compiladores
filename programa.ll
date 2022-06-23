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
@str15 = private constant [4 x i8] c"\0AC\0A\00"
@na = global i1 0

define i32 @main(i32, i8**) {
	
	etiq8:
	;___Asignacion___
	%aux2 = add i32 0, 1
	%aux3 = sub i32 0, %aux2
	store i32 %aux3, i32* @a
	br label %etiq9
	
	etiq9:
	;___While___
	%aux5 = load i32, i32* @a
	%aux6 = add i32 0, 1
	%aux7 = icmp slt i32 %aux5, %aux6
	br i1 %aux7, label %etiq11, label %etiq19
	
	etiq11:
	;___IfElse___
	%aux9 = load i32, i32* @a
	%aux10 = add i32 0, 1
	%aux11 = icmp slt i32 %aux9, %aux10
	br i1 %aux11, label %etiq14, label %etiq15
	
	etiq14:
	;___DisplayCadenaCaracteres___
	%aux12 = call i32 @puts(i8* getelementptr ([4 x i8], [4 x i8] * @str15, i32 0, i32 0))
	br label %etiq17
	
	etiq17:
	;___Asignacion___
	%aux14 = add i32 0, 0
	store i32 %aux14, i32* @a
	br label %etiq9
	
	etiq15:
	;___Asignacion___
	%aux16 = add i32 0, 1
	store i32 %aux16, i32* @a
	br label %etiq9
	
	etiq19:
	;___DisplayExpresion___
	%aux18 = load i32, i32* @a
	%aux17 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux18)
	br label %etiq20
	
	etiq20:
	ret i32 0
}

