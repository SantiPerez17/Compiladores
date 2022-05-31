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
@str12 = private constant [7 x i8] c"\0Ahola\0A\00"
@str19 = private constant [7 x i8] c"\0Achau\0A\00"
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	%aux2 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str12, i32 0, i32 0))
	br label %etiq3
	
	etiq3:
	%aux5 = load i32, i32* @a
	store i32 %aux5, i32* @_Pivot1
	br label %etiq6
	
	etiq6:
	%aux9 = load i32, i32* @_Pivot1
	%aux12 = add i32 0, 1
	%aux11 = icmp sge i32 %aux9, %aux12
	br i1 %aux11, label %etiq7, label %etiq8
	
	etiq7:
	%aux19 = add i32 0, 3
	%aux17 = load i32, i32* @_Pivot1
	%aux18 = icmp sge i32 %aux19, %aux17
	br i1 %aux18, label %etiq14, label %etiq15
	
	etiq14:
	%aux26 = add i32 0, 3
	%aux27 = add i32 0, 0
	%aux25 = icmp sgt i32 %aux26, %aux27
	br i1 %aux25, label %etiq21, label %etiq22
	
	etiq21:
	%aux37 = add i32 0, 3
	%aux35 = load i32, i32* @_Pivot1
	%aux36 = sub i32 %aux37, %aux35
	%aux32 = load i32, i32* @_IdPos1
	%aux33 = icmp eq i32 %aux36, %aux32
	%aux38 = load i32, i32* @_Pivot1
	%aux41 = add i32 0, 3
	%aux40 = icmp sle i32 %aux38, %aux41
	%aux30 = and i1 %aux33, %aux40
	br i1 %aux25, label %etiq42, label %etiq43
	
	etiq42:
	%aux45 = load i32, i32* @_Acum1
	%aux46 = load i32, i32* @b
	%aux47 = add i32 %aux45, %aux46
	store i32 %aux47, i32* @_Acum1
	br label %etiq48
	
	etiq48:
	%aux50 = load i32, i32* @_IdPos1
	%aux53 = add i32 0, 1
	%aux52 = add i32 %aux50, %aux53
	store i32 %aux52, i32* @_IdPos1
	br label %etiq54
	
	etiq54:
	%aux56 = load i32, i32* @_Pivot1
	%aux59 = add i32 0, 1
	%aux58 = sub i32 %aux56, %aux59
	store i32 %aux58, i32* @_Pivot1
	br label %etiq66
	
	etiq43:
	%aux62 = load i32, i32* @_IdPos1
	%aux65 = add i32 0, 1
	%aux64 = add i32 %aux62, %aux65
	store i32 %aux64, i32* @_IdPos1
	br label %etiq66
	
	etiq66:
	%aux76 = add i32 0, 3
	%aux74 = load i32, i32* @_Pivot1
	%aux75 = sub i32 %aux76, %aux74
	%aux71 = load i32, i32* @_IdPos1
	%aux72 = icmp eq i32 %aux75, %aux71
	%aux77 = load i32, i32* @_Pivot1
	%aux80 = add i32 0, 3
	%aux79 = icmp sle i32 %aux77, %aux80
	%aux69 = and i1 %aux72, %aux79
	br i1 %aux25, label %etiq81, label %etiq82
	
	etiq81:
	%aux84 = load i32, i32* @_Acum1
	%aux90 = add i32 0, 20
	%aux88 = load i32, i32* @c
	%aux89 = add i32 %aux90, %aux88
	%aux86 = add i32 %aux84, %aux89
	store i32 %aux86, i32* @_Acum1
	br label %etiq91
	
	etiq91:
	%aux93 = load i32, i32* @_IdPos1
	%aux96 = add i32 0, 1
	%aux95 = add i32 %aux93, %aux96
	store i32 %aux95, i32* @_IdPos1
	br label %etiq97
	
	etiq97:
	%aux99 = load i32, i32* @_Pivot1
	%aux102 = add i32 0, 1
	%aux101 = sub i32 %aux99, %aux102
	store i32 %aux101, i32* @_Pivot1
	br label %etiq109
	
	etiq82:
	%aux105 = load i32, i32* @_IdPos1
	%aux108 = add i32 0, 1
	%aux107 = add i32 %aux105, %aux108
	store i32 %aux107, i32* @_IdPos1
	br label %etiq109
	
	etiq109:
	%aux119 = add i32 0, 3
	%aux117 = load i32, i32* @_Pivot1
	%aux118 = sub i32 %aux119, %aux117
	%aux114 = load i32, i32* @_IdPos1
	%aux115 = icmp eq i32 %aux118, %aux114
	%aux120 = load i32, i32* @_Pivot1
	%aux123 = add i32 0, 3
	%aux122 = icmp sle i32 %aux120, %aux123
	%aux112 = and i1 %aux115, %aux122
	br i1 %aux25, label %etiq124, label %etiq125
	
	etiq124:
	%aux127 = load i32, i32* @_Acum1
	%aux130 = add i32 0, 45
	%aux129 = add i32 %aux127, %aux130
	store i32 %aux129, i32* @_Acum1
	br label %etiq131
	
	etiq131:
	%aux133 = load i32, i32* @_IdPos1
	%aux136 = add i32 0, 1
	%aux135 = add i32 %aux133, %aux136
	store i32 %aux135, i32* @_IdPos1
	br label %etiq137
	
	etiq137:
	%aux139 = load i32, i32* @_Pivot1
	%aux142 = add i32 0, 1
	%aux141 = sub i32 %aux139, %aux142
	store i32 %aux141, i32* @_Pivot1
	br label %etiq156
	
	etiq125:
	%aux145 = load i32, i32* @_IdPos1
	%aux148 = add i32 0, 1
	%aux147 = add i32 %aux145, %aux148
	store i32 %aux147, i32* @_IdPos1
	br label %etiq156
	
	etiq22:
	%aux151 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq156
	
	etiq15:
	%aux153 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq156
	
	etiq8:
	%aux155 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq156
	
	etiq156:
	%aux157 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str19, i32 0, i32 0))
	br label %etiq158
	
	etiq158:
	ret i32 0
}

