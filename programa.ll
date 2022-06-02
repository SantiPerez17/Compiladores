;Programa: 'Prueba'
source_filename = "pruebas.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.29.30145"

declare i32 @puts(i8*)
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8* %0, ...)
declare double @scanfd(i8* %0, ...)
declare i1 @scanfb(i8* %0, ...)
@.integer = private constant [4 x i8] c"%d\0A\00"
@.double = private constant [5 x i8] c"%lf\0A\00"
@int_read_format = unnamed_addr constant [3 x i8] c"%d\00"
@double_read_format = unnamed_addr constant [4 x i8] c"%lf\00"
@bool_read_format = unnamed_addr constant [3 x i8] c"%b\00"

@_Acum1 = global i32 0
@_Acum2 = global i32 0
@_Acum3 = global i32 0
@_Acum4 = global i32 0
@_IdPos1 = global i32 0
@_IdPos2 = global i32 0
@_Pivot1 = global i32 0
@_Pivot2 = global i32 0
@a = global i32 0
@ahre = global i1 0
@aux = global i32 0
@b = global i32 0
@c = global i32 0
@d = global i32 0
@f = global double 0.0
@r = global i1 0
@res = global i32 0
@res2 = global i32 0
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___Asignación___
	%aux3 = add i32 0, 2
	store i32 %aux3, i32* @_Pivot2
	br label %etiq4
	
	etiq4:
	%aux7 = load i32, i32* @_Pivot2
	%aux10 = add i32 0, 1
	%aux9 = icmp sge i32 %aux7, %aux10
	br i1 %aux9, label %etiq5, label %etiq6
	
	etiq5:
	%aux17 = add i32 0, 2
	%aux15 = load i32, i32* @_Pivot2
	%aux16 = icmp sge i32 %aux17, %aux15
	br i1 %aux16, label %etiq12, label %etiq13
	
	etiq12:
	%aux24 = add i32 0, 2
	%aux25 = add i32 0, 0
	%aux23 = icmp sgt i32 %aux24, %aux25
	br i1 %aux23, label %etiq19, label %etiq20
	
	etiq19:
	%aux35 = add i32 0, 2
	%aux33 = load i32, i32* @_Pivot2
	%aux34 = sub i32 %aux35, %aux33
	%aux30 = load i32, i32* @_IdPos2
	%aux31 = icmp eq i32 %aux34, %aux30
	%aux36 = load i32, i32* @_Pivot2
	%aux39 = add i32 0, 2
	%aux38 = icmp sle i32 %aux36, %aux39
	%aux28 = and i1 %aux31, %aux38
	br i1 %aux23, label %etiq40, label %etiq41
	
	etiq40:
	;___Asignación___
	%aux43 = load i32, i32* @_Acum4
	%aux44 = load i32, i32* @a
	%aux45 = add i32 %aux43, %aux44
	store i32 %aux45, i32* @_Acum4
	br label %etiq46
	
	etiq46:
	;___Asignación___
	%aux48 = load i32, i32* @_IdPos2
	%aux51 = add i32 0, 1
	%aux50 = add i32 %aux48, %aux51
	store i32 %aux50, i32* @_IdPos2
	br label %etiq52
	
	etiq52:
	;___Asignación___
	%aux54 = load i32, i32* @_Pivot2
	%aux57 = add i32 0, 1
	%aux56 = sub i32 %aux54, %aux57
	store i32 %aux56, i32* @_Pivot2
	br label %etiq58
	
	etiq58:
	%aux59 = load i32, i32* @_Acum3
	store i32 %aux59, i32* @res
	br label %etiq72
	
	etiq41:
	;___Asignación___
	%aux61 = load i32, i32* @_IdPos2
	%aux64 = add i32 0, 1
	%aux63 = add i32 %aux61, %aux64
	store i32 %aux63, i32* @_IdPos2
	br label %etiq72
	
	etiq20:
	%aux67 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq72
	
	etiq13:
	%aux69 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq72
	
	etiq6:
	%aux71 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq72
	
	etiq72:
	ret i32 0
}

