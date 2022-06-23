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
@str15 = private constant [7 x i8] c"\0AHola\0A\00"
@na = global i1 0

define i32 @main(i32, i8**) {

	etiq1:
	;___While___
	br label %etiq2
	etiq2:
	%aux1 = load i32, i32* @a
	%aux2 = add i32 0, 1
	%aux3 = icmp ne i32 %aux1, %aux2
	br i1 %aux3, label %etiq3, label %etiq4
	etiq3:
	;___Asignacion___
	%aux4 = add i32 0, 1
	store i32 %aux4, i32* @a
	br label %etiq2
	etiq4:
	;___Asignacion___
	%aux5 = add i32 0, 1
	store i32 %aux5, i32* @a
	;___Asignacion___
	%aux6 = add i1 0, 1
	store i1 %aux6, i1* @aux
	;___DisplayExpresion___
	%aux7 = load i1, i1* @aux
	%aux9 = zext i1 %aux7 to i32
	%aux8 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.bool, i32 0, i32 0), i32 %aux9)
	;___IfElse___
	%aux10 = load i32, i32* @a
	%aux11 = add i32 0, 1
	%aux12 = icmp eq i32 %aux10, %aux11
	br i1 %aux12, label %etiq5, label %etiq6
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux13 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str15, i32 0, i32 0))
	br label %etiq7
	etiq6:
	;___DisplayExpresion___
	%aux14 = load i32, i32* @a
	%aux15 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux14)
	br label %etiq7
	etiq7:
	
	ret i32 0
}

