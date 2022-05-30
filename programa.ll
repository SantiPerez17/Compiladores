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

@Pivot1 = global i32 0
@_ID_pos1 = global i32 0
@_acum1 = global i32 0
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
	;Asignacion
	etiq1:
	;Cola
	%aux6 = load i32, i32* @Pivot1
	%aux7 = load i32, i32* @ValorAComparar
	%aux8 = icmp sge i32 %aux6, %aux7
	br i1 %aux8, label %etiq4, label %etiq5
	%aux12 = load i32, i32* @longitud_lista
	%aux13 = load i32, i32* @Pivot1
	%aux14 = icmp sge i32 %aux12, %aux13
	br i1 %aux14, label %etiq10, label %etiq11
	%aux18 = load i32, i32* @longLista
	%aux19 = load i32, i32* @Validador0
	%aux20 = icmp sgt i32 %aux18, %aux19
	br i1 %aux20, label %etiq16, label %etiq17
	%aux24 = load i1, i1* @Igual
	%aux25 = load i1, i1* @MenorOIgual
	%aux26 = and i1 %aux24, %aux25
	br i1 %aux26, label %etiq22, label %etiq23
	etiq22:
	;Asignacion
	%aux28 = load i32, i32* @acum1
	%aux31 = add i32 0, 1
	%aux30 = add i32 %aux28, %aux31
	store i32 %aux30, i32* @_acum1
	br label %etiq32
	etiq32:
	;Asignacion
	%aux34 = load i32, i32* @ID_pos1
	%aux35 = load i32, i32* @Constante_Entera
	%aux36 = add i32 %aux34, %aux35
	store i32 %aux36, i32* @_ID_pos1
	br label %etiq37
	etiq37:
	;Asignacion
	%aux39 = load i32, i32* @Pivot0
	%aux40 = load i32, i32* @Constante_Entera
	%aux41 = sub i32 %aux39, %aux40
	store i32 %aux41, i32* @Pivot0
	br label %etiq42
	br label %etiq46
	etiq23:
	;Asignacion
	%aux43 = load i32, i32* @ID_pos1
	%aux44 = load i32, i32* @Constante_Entera
	%aux45 = add i32 %aux43, %aux44
	store i32 %aux45, i32* @ID_pos1
	br label %etiq46
	br label %etiq46
	br label %etiq47
	etiq17:
	%aux46 = call i32 @puts(i8* getelementptr ([23 x i8], [23 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq47
	br label %etiq47
	br label %etiq48
	etiq11:
	%aux47 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq48
	br label %etiq48
	br label %etiq49
	etiq5:
	%aux48 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq49
	br label %etiq49
	store i32 null, i32* @a
	br label %etiq49
	etiq49:

	ret i32 0
}

