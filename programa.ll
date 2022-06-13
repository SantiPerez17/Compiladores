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
@ahre = global i1 0
@aux = global i32 0
@b = global i32 0
@c = global i32 0
@d = global i32 0
@f = global double 0.0
@fi = global double 0.0
@r = global i1 0
@res = global i32 0
@res2 = global i32 0
@res3 = global i32 0
@res4 = global i32 0
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq77:
	;___While___
	%aux118 = load i32, i32* @a
	%aux119 = add i32 0, 0
	%aux120 = icmp eq i32 %aux118, %aux119
	br i1 %aux120, label %etiq79, label %etiq115
	
	etiq79:
	;___Asignación___
	%aux122 = load i32, i32* @a
	%aux123 = add i32 0, 1
	%aux124 = add i32 %aux122, %aux123
	store i32 %aux124, i32* @a
	br label %etiq82
	
	etiq82:
	;___While___
	%aux126 = load i32, i32* @c
	%aux127 = add i32 0, 1
	%aux128 = icmp eq i32 %aux126, %aux127
	br i1 %aux128, label %etiq84, label %etiq77
	
	etiq84:
	;___Asignación___
	%aux130 = load i32, i32* @c
	%aux131 = add i32 0, 1
	%aux132 = add i32 %aux130, %aux131
	store i32 %aux132, i32* @c
	br label %etiq87
	
	etiq87:
	;___IfElse___
	%aux134 = load i32, i32* @c
	%aux135 = add i32 0, 2
	%aux136 = icmp eq i32 %aux134, %aux135
	br i1 %aux136, label %etiq89, label %etiq90
	
	etiq89:
	;___DisplayExpresion___
	%aux138 = load i32, i32* @c
	%aux137 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux138)
	br label %etiq92
	
	etiq92:
	;___IfElse___
	%aux140 = load i32, i32* @d
	%aux141 = add i32 0, 3
	%aux142 = icmp eq i32 %aux140, %aux141
	br i1 %aux142, label %etiq94, label %etiq95
	
	etiq94:
	;___DisplayExpresion___
	%aux144 = load i32, i32* @d
	%aux143 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux144)
	br label %etiq82
	
	etiq95:
	;___DisplayExpresion___
	%aux146 = load i32, i32* @d
	%aux145 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux146)
	br label %etiq97
	
	etiq97:
	;___While___
	%aux148 = load i32, i32* @a
	%aux149 = load i32, i32* @d
	%aux150 = icmp ne i32 %aux148, %aux149
	br i1 %aux150, label %etiq98, label %etiq101
	
	etiq98:
	;___DisplayExpresion___
	%aux152 = load i32, i32* @a
	%aux153 = load i32, i32* @d
	%aux154 = add i32 %aux152, %aux153
	%aux151 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux154)
	br label %etiq97
	
	etiq90:
	;___DisplayExpresion___
	%aux156 = load i32, i32* @d
	%aux155 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux156)
	br label %etiq101
	
	etiq101:
	;___While___
	%aux158 = load i32, i32* @a
	%aux159 = load i32, i32* @d
	%aux160 = icmp ne i32 %aux158, %aux159
	br i1 %aux160, label %etiq102, label %etiq105
	
	etiq102:
	;___DisplayExpresion___
	%aux162 = load i32, i32* @a
	%aux163 = load i32, i32* @d
	%aux164 = add i32 %aux162, %aux163
	%aux161 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux164)
	br label %etiq101
	
	etiq105:
	;___IfElse___
	%aux166 = load i32, i32* @d
	%aux167 = add i32 0, 3
	%aux168 = icmp eq i32 %aux166, %aux167
	br i1 %aux168, label %etiq107, label %etiq108
	
	etiq107:
	;___DisplayExpresion___
	%aux170 = load i32, i32* @d
	%aux169 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux170)
	br label %etiq82
	
	etiq108:
	;___DisplayExpresion___
	%aux172 = load i32, i32* @d
	%aux171 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux172)
	br label %etiq110
	
	etiq110:
	;___While___
	%aux174 = load i32, i32* @a
	%aux175 = load i32, i32* @d
	%aux176 = icmp ne i32 %aux174, %aux175
	br i1 %aux176, label %etiq111, label %etiq82
	
	etiq111:
	;___DisplayExpresion___
	%aux178 = load i32, i32* @a
	%aux179 = load i32, i32* @d
	%aux180 = add i32 %aux178, %aux179
	%aux177 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux180)
	br label %etiq110
	
	etiq115:
	ret i32 0
}

