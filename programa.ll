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

@_Acum1 = global i32 0
@_IdPos1 = global i32 0
@_Pivot1 = global i32 0
@a = global i32 0
@ahre = global i1 0
@b = global i32 0
@c = global i32 0
@d = global i32 0
@f = global double 0.0
@r = global i1 0
@res = global i32 0
@res2 = global i32 0
@str18 = private constant [7 x i8] c"\0Ahola\0A\00"
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista está vacía\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	;Cola
	etiq2:
	;Asignacion
	%aux4 = load i32, i32* @a
	store i32 %aux4, i32* @_Pivot1
	br label %etiq5
	etiq5:
	%aux8 = load i32, i32* @_Pivot1
	%aux11 = add i32 0, 1
	%aux10 = icmp sge i32 %aux8, %aux11
	br i1 %aux10, label %etiq6, label %etiq7
	etiq12:
	%aux18 = add i32 0, 1
	%aux16 = load i32, i32* @_Pivot1
	%aux17 = icmp sge i32 %aux18, %aux16
	br i1 %aux17, label %etiq13, label %etiq14
	etiq19:
	%aux25 = add i32 0, 1
	%aux26 = add i32 0, 0
	%aux24 = icmp sgt i32 %aux25, %aux26
	br i1 %aux24, label %etiq20, label %etiq21
	etiq27:
	%aux39 = add i32 0, 1
	%aux37 = load i32, i32* @_Pivot1
	%aux38 = sub i32 %aux39, %aux37
	%aux34 = load i32, i32* @_IdPos1
	%aux35 = icmp eq i32 %aux38, %aux34
	%aux40 = load i32, i32* @_Pivot1
	%aux43 = add i32 0, 1
	%aux42 = icmp sle i32 %aux40, %aux43
	%aux32 = and i1 %aux35, %aux42
	br i1 %aux24, label %etiq28, label %etiq29
	etiq28:
	;Asignacion
	%aux45 = load i32, i32* @_Acum1
	%aux46 = load i32, i32* @b
	%aux47 = add i32 %aux45, %aux46
	store i32 %aux47, i32* @_Acum1
	br label %etiq48
	etiq48:
	;Asignacion
	%aux50 = load i32, i32* @_IdPos1
	%aux53 = add i32 0, 1
	%aux52 = add i32 %aux50, %aux53
	store i32 %aux52, i32* @_IdPos1
	br label %etiq54
	etiq54:
	;Asignacion
	%aux56 = load i32, i32* @_Pivot1
	%aux59 = add i32 0, 1
	%aux58 = sub i32 %aux56, %aux59
	store i32 %aux58, i32* @_Pivot1
	br label %etiq60
	br label %etiq60
	etiq29:
	;Asignacion
	%aux61 = load i32, i32* @_IdPos1
	%aux64 = add i32 0, 1
	%aux63 = add i32 %aux61, %aux64
	store i32 %aux63, i32* @_IdPos1
	br label %etiq65
	br label %etiq60
	br label %etiq65
	etiq21:
	%aux65 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq66
	br label %etiq65
	br label %etiq66
	etiq14:
	%aux66 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq67
	br label %etiq66
	br label %etiq67
	etiq7:
	%aux67 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq68
	br label %etiq67
	%aux68 = load i32, i32* @_Acum1
	store i32 %aux68, i32* @res
	etiq69:
	%aux70 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str18, i32 0, i32 0))
	br label %etiq71
	etiq71:

	ret i32 0
}

