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
@_Acum1 = global i32 0
@_Acum2 = global i32 0
@_IdPos1 = global i32 0
@_Pivot1 = global i32 0
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
@str14 = private constant [20 x i8] c"\0AIngrese su edad: \0A\00"
@str15 = private constant [19 x i8] c"\0AUsted es un nino\0A\00"
@str16 = private constant [25 x i8] c"\0AUsted es un adolecente\0A\00"
@str17 = private constant [21 x i8] c"\0AUsted es un adulto\0A\00"
@str18 = private constant [26 x i8] c"\0AUsted es un senor mayor\0A\00"
@str19 = private constant [17 x i8] c"\0ASu edad es par\0A\00"
@str20 = private constant [19 x i8] c"\0ASu edad es impar\0A\00"
@str28 = private constant [12 x i8] c"\0ALe faltan\0A\00"
@str29 = private constant [28 x i8] c"\0Aanos para cumplir los 100\0A\00"
@str30 = private constant [30 x i8] c"\0AIngrese su peso aproximado:\0A\00"
@str31 = private constant [32 x i8] c"\0AIngrese su altura aproximada:\0A\00"
@str32 = private constant [90 x i8] c"\0AElija una de las siguientes opciones:     Producto=1    Cociente=2    Suma=3    Resta=4\0A\00"
@str33 = private constant [24 x i8] c"\0APeso * Altura * Edad:\0A\00"
@str34 = private constant [24 x i8] c"\0APeso / Altura / Edad:\0A\00"
@str35 = private constant [24 x i8] c"\0APeso + Altura + Edad:\0A\00"
@str36 = private constant [24 x i8] c"\0APeso - Altura - Edad:\0A\00"
@str37 = private constant [60 x i8] c"\0ALa opcion elegida no es aceptada, intentelo nuevamente...\0A\00"
@str38 = private constant [46 x i8] c"\0ADesea comenzar de nuevo?      1=Si     0=No\0A\00"
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@na = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___Asignacion___
	%aux2 = add i1 0, 1
	store i1 %aux2, i1* @na
	br label %etiq2
	
	etiq2:
	;___Asignacion___
	%aux4 = add i1 0, 1
	store i1 %aux4, i1* @aux
	br label %etiq3
	
	etiq3:
	;___While___
	%aux6 = load i1, i1* @aux
	br i1 %aux6, label %etiq4, label %etiq1099
	
	etiq4:
	;___DisplayCadenaCaracteres___
	%aux7 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str14, i32 0, i32 0))
	br label %etiq6
	
	etiq6:
	;___Asignacion___
	%aux9 = alloca i32
	%aux10 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux9)
	%aux11 = load i32, i32* %aux9
	store i32 %aux11, i32* @edad
	br label %etiq7
	
	etiq7:
	;___IfElse___
	%aux13 = load i32, i32* @edad
	%aux14 = add i32 0, 12
	%aux15 = icmp sle i32 %aux13, %aux14
	br i1 %aux15, label %etiq9, label %etiq10
	
	etiq9:
	;___DisplayCadenaCaracteres___
	%aux16 = call i32 @puts(i8* getelementptr ([19 x i8], [19 x i8] * @str15, i32 0, i32 0))
	br label %etiq20
	
	etiq10:
	;___IfElse___
	%aux18 = load i32, i32* @edad
	%aux19 = add i32 0, 25
	%aux20 = icmp sle i32 %aux18, %aux19
	br i1 %aux20, label %etiq13, label %etiq14
	
	etiq13:
	;___DisplayCadenaCaracteres___
	%aux21 = call i32 @puts(i8* getelementptr ([25 x i8], [25 x i8] * @str16, i32 0, i32 0))
	br label %etiq20
	
	etiq14:
	;___IfElse___
	%aux23 = load i32, i32* @edad
	%aux24 = add i32 0, 65
	%aux25 = icmp sle i32 %aux23, %aux24
	br i1 %aux25, label %etiq17, label %etiq18
	
	etiq17:
	;___DisplayCadenaCaracteres___
	%aux26 = call i32 @puts(i8* getelementptr ([21 x i8], [21 x i8] * @str17, i32 0, i32 0))
	br label %etiq20
	
	etiq18:
	;___DisplayCadenaCaracteres___
	%aux27 = call i32 @puts(i8* getelementptr ([26 x i8], [26 x i8] * @str18, i32 0, i32 0))
	br label %etiq20
	
	etiq20:
	;___Asignacion___
	%aux29 = load i32, i32* @edad
	store i32 %aux29, i32* @edad1
	br label %etiq21
	
	etiq21:
	;___Asignacion___
	%aux31 = add i1 0, 1
	store i1 %aux31, i1* @aux2
	br label %etiq22
	
	etiq22:
	;___While___
	%aux33 = load i32, i32* @edad1
	%aux34 = add i32 0, 0
	%aux35 = icmp ne i32 %aux33, %aux34
	br i1 %aux35, label %etiq24, label %etiq29
	
	etiq24:
	;___Asignacion___
	%aux37 = load i32, i32* @edad1
	%aux38 = add i32 0, 1
	%aux39 = sub i32 %aux37, %aux38
	store i32 %aux39, i32* @edad1
	br label %etiq27
	
	etiq27:
	;___Asignacion___
	%aux41 = load i1, i1* @aux2
	%aux42 = xor i1 %aux41, 1
	store i1 %aux42, i1* @aux2
	br label %etiq22
	
	etiq29:
	;___IfElse___
	%aux44 = load i1, i1* @aux2
	br i1 %aux44, label %etiq30, label %etiq31
	
	etiq30:
	;___DisplayCadenaCaracteres___
	%aux45 = call i32 @puts(i8* getelementptr ([17 x i8], [17 x i8] * @str19, i32 0, i32 0))
	br label %etiq33
	
	etiq31:
	;___DisplayCadenaCaracteres___
	%aux46 = call i32 @puts(i8* getelementptr ([19 x i8], [19 x i8] * @str20, i32 0, i32 0))
	br label %etiq33
	
	etiq33:
	;___IfSimple___
	%aux48 = load i32, i32* @edad
	%aux49 = add i32 0, 100
	%aux50 = icmp sge i32 %aux48, %aux49
	%aux51 = xor i1 %aux50, 1
	br i1 %aux51, label %etiq35, label %etiq1057
	
	etiq35:
	;___Asignacion___
	%aux53 = add i32 0, 100
	%aux54 = load i32, i32* @edad
	%aux55 = sub i32 %aux53, %aux54
	store i32 %aux55, i32* @pivot
	br label %etiq37
	
	etiq37:
	;___Asignacion___
	%aux57 = add i32 0, 0
	store i32 %aux57, i32* @_Acum1
	br label %etiq38
	
	etiq38:
	;___Asignacion___
	%aux59 = add i32 0, 0
	store i32 %aux59, i32* @_Acum2
	br label %etiq39
	
	etiq39:
	;___Asignacion___
	%aux61 = load i32, i32* @pivot
	store i32 %aux61, i32* @_Pivot1
	br label %etiq40
	
	etiq40:
	;___IfElse___
	%aux63 = load i32, i32* @_Pivot1
	%aux64 = add i32 0, 1
	%aux65 = icmp sge i32 %aux63, %aux64
	br i1 %aux65, label %etiq42, label %etiq43
	
	etiq42:
	;___IfElse___
	%aux67 = add i32 0, 100
	%aux68 = load i32, i32* @_Pivot1
	%aux69 = icmp sge i32 %aux67, %aux68
	br i1 %aux69, label %etiq45, label %etiq46
	
	etiq45:
	;___IfElse___
	%aux71 = add i32 0, 100
	%aux72 = add i32 0, 0
	%aux73 = icmp sgt i32 %aux71, %aux72
	br i1 %aux73, label %etiq49, label %etiq50
	
	etiq49:
	;___IfElse___
	%aux75 = add i32 0, 100
	%aux76 = load i32, i32* @_Pivot1
	%aux77 = sub i32 %aux75, %aux76
	%aux78 = load i32, i32* @_IdPos1
	%aux79 = icmp eq i32 %aux77, %aux78
	br i1 %aux79, label %etiq52, label %etiq53
	
	etiq52:
	;___Asignacion___
	%aux81 = load i32, i32* @_Acum1
	%aux82 = add i32 0, 1
	%aux83 = add i32 %aux81, %aux82
	store i32 %aux83, i32* @_Acum1
	br label %etiq56
	
	etiq56:
	;___Asignacion___
	%aux85 = load i32, i32* @_IdPos1
	%aux86 = add i32 0, 1
	%aux87 = add i32 %aux85, %aux86
	store i32 %aux87, i32* @_IdPos1
	br label %etiq58
	
	etiq58:
	;___Asignacion___
	%aux89 = load i32, i32* @_Pivot1
	%aux90 = add i32 0, 1
	%aux91 = sub i32 %aux89, %aux90
	store i32 %aux91, i32* @_Pivot1
	br label %etiq61
	
	etiq53:
	;___Asignacion___
	%aux93 = load i32, i32* @_IdPos1
	%aux94 = add i32 0, 1
	%aux95 = add i32 %aux93, %aux94
	store i32 %aux95, i32* @_IdPos1
	br label %etiq61
	
	etiq61:
	;___IfElse___
	%aux97 = add i32 0, 100
	%aux98 = load i32, i32* @_Pivot1
	%aux99 = sub i32 %aux97, %aux98
	%aux100 = load i32, i32* @_IdPos1
	%aux101 = icmp eq i32 %aux99, %aux100
	br i1 %aux101, label %etiq62, label %etiq63
	
	etiq62:
	;___Asignacion___
	%aux103 = load i32, i32* @_Acum1
	%aux104 = add i32 0, 1
	%aux105 = add i32 %aux103, %aux104
	store i32 %aux105, i32* @_Acum1
	br label %etiq66
	
	etiq66:
	;___Asignacion___
	%aux107 = load i32, i32* @_IdPos1
	%aux108 = add i32 0, 1
	%aux109 = add i32 %aux107, %aux108
	store i32 %aux109, i32* @_IdPos1
	br label %etiq68
	
	etiq68:
	;___Asignacion___
	%aux111 = load i32, i32* @_Pivot1
	%aux112 = add i32 0, 1
	%aux113 = sub i32 %aux111, %aux112
	store i32 %aux113, i32* @_Pivot1
	br label %etiq71
	
	etiq63:
	;___Asignacion___
	%aux115 = load i32, i32* @_IdPos1
	%aux116 = add i32 0, 1
	%aux117 = add i32 %aux115, %aux116
	store i32 %aux117, i32* @_IdPos1
	br label %etiq71
	
	etiq71:
	;___IfElse___
	%aux119 = add i32 0, 100
	%aux120 = load i32, i32* @_Pivot1
	%aux121 = sub i32 %aux119, %aux120
	%aux122 = load i32, i32* @_IdPos1
	%aux123 = icmp eq i32 %aux121, %aux122
	br i1 %aux123, label %etiq72, label %etiq73
	
	etiq72:
	;___Asignacion___
	%aux125 = load i32, i32* @_Acum1
	%aux126 = add i32 0, 1
	%aux127 = add i32 %aux125, %aux126
	store i32 %aux127, i32* @_Acum1
	br label %etiq76
	
	etiq76:
	;___Asignacion___
	%aux129 = load i32, i32* @_IdPos1
	%aux130 = add i32 0, 1
	%aux131 = add i32 %aux129, %aux130
	store i32 %aux131, i32* @_IdPos1
	br label %etiq78
	
	etiq78:
	;___Asignacion___
	%aux133 = load i32, i32* @_Pivot1
	%aux134 = add i32 0, 1
	%aux135 = sub i32 %aux133, %aux134
	store i32 %aux135, i32* @_Pivot1
	br label %etiq81
	
	etiq73:
	;___Asignacion___
	%aux137 = load i32, i32* @_IdPos1
	%aux138 = add i32 0, 1
	%aux139 = add i32 %aux137, %aux138
	store i32 %aux139, i32* @_IdPos1
	br label %etiq81
	
	etiq81:
	;___IfElse___
	%aux141 = add i32 0, 100
	%aux142 = load i32, i32* @_Pivot1
	%aux143 = sub i32 %aux141, %aux142
	%aux144 = load i32, i32* @_IdPos1
	%aux145 = icmp eq i32 %aux143, %aux144
	br i1 %aux145, label %etiq82, label %etiq83
	
	etiq82:
	;___Asignacion___
	%aux147 = load i32, i32* @_Acum1
	%aux148 = add i32 0, 1
	%aux149 = add i32 %aux147, %aux148
	store i32 %aux149, i32* @_Acum1
	br label %etiq86
	
	etiq86:
	;___Asignacion___
	%aux151 = load i32, i32* @_IdPos1
	%aux152 = add i32 0, 1
	%aux153 = add i32 %aux151, %aux152
	store i32 %aux153, i32* @_IdPos1
	br label %etiq88
	
	etiq88:
	;___Asignacion___
	%aux155 = load i32, i32* @_Pivot1
	%aux156 = add i32 0, 1
	%aux157 = sub i32 %aux155, %aux156
	store i32 %aux157, i32* @_Pivot1
	br label %etiq91
	
	etiq83:
	;___Asignacion___
	%aux159 = load i32, i32* @_IdPos1
	%aux160 = add i32 0, 1
	%aux161 = add i32 %aux159, %aux160
	store i32 %aux161, i32* @_IdPos1
	br label %etiq91
	
	etiq91:
	;___IfElse___
	%aux163 = add i32 0, 100
	%aux164 = load i32, i32* @_Pivot1
	%aux165 = sub i32 %aux163, %aux164
	%aux166 = load i32, i32* @_IdPos1
	%aux167 = icmp eq i32 %aux165, %aux166
	br i1 %aux167, label %etiq92, label %etiq93
	
	etiq92:
	;___Asignacion___
	%aux169 = load i32, i32* @_Acum1
	%aux170 = add i32 0, 1
	%aux171 = add i32 %aux169, %aux170
	store i32 %aux171, i32* @_Acum1
	br label %etiq96
	
	etiq96:
	;___Asignacion___
	%aux173 = load i32, i32* @_IdPos1
	%aux174 = add i32 0, 1
	%aux175 = add i32 %aux173, %aux174
	store i32 %aux175, i32* @_IdPos1
	br label %etiq98
	
	etiq98:
	;___Asignacion___
	%aux177 = load i32, i32* @_Pivot1
	%aux178 = add i32 0, 1
	%aux179 = sub i32 %aux177, %aux178
	store i32 %aux179, i32* @_Pivot1
	br label %etiq101
	
	etiq93:
	;___Asignacion___
	%aux181 = load i32, i32* @_IdPos1
	%aux182 = add i32 0, 1
	%aux183 = add i32 %aux181, %aux182
	store i32 %aux183, i32* @_IdPos1
	br label %etiq101
	
	etiq101:
	;___IfElse___
	%aux185 = add i32 0, 100
	%aux186 = load i32, i32* @_Pivot1
	%aux187 = sub i32 %aux185, %aux186
	%aux188 = load i32, i32* @_IdPos1
	%aux189 = icmp eq i32 %aux187, %aux188
	br i1 %aux189, label %etiq102, label %etiq103
	
	etiq102:
	;___Asignacion___
	%aux191 = load i32, i32* @_Acum1
	%aux192 = add i32 0, 1
	%aux193 = add i32 %aux191, %aux192
	store i32 %aux193, i32* @_Acum1
	br label %etiq106
	
	etiq106:
	;___Asignacion___
	%aux195 = load i32, i32* @_IdPos1
	%aux196 = add i32 0, 1
	%aux197 = add i32 %aux195, %aux196
	store i32 %aux197, i32* @_IdPos1
	br label %etiq108
	
	etiq108:
	;___Asignacion___
	%aux199 = load i32, i32* @_Pivot1
	%aux200 = add i32 0, 1
	%aux201 = sub i32 %aux199, %aux200
	store i32 %aux201, i32* @_Pivot1
	br label %etiq111
	
	etiq103:
	;___Asignacion___
	%aux203 = load i32, i32* @_IdPos1
	%aux204 = add i32 0, 1
	%aux205 = add i32 %aux203, %aux204
	store i32 %aux205, i32* @_IdPos1
	br label %etiq111
	
	etiq111:
	;___IfElse___
	%aux207 = add i32 0, 100
	%aux208 = load i32, i32* @_Pivot1
	%aux209 = sub i32 %aux207, %aux208
	%aux210 = load i32, i32* @_IdPos1
	%aux211 = icmp eq i32 %aux209, %aux210
	br i1 %aux211, label %etiq112, label %etiq113
	
	etiq112:
	;___Asignacion___
	%aux213 = load i32, i32* @_Acum1
	%aux214 = add i32 0, 1
	%aux215 = add i32 %aux213, %aux214
	store i32 %aux215, i32* @_Acum1
	br label %etiq116
	
	etiq116:
	;___Asignacion___
	%aux217 = load i32, i32* @_IdPos1
	%aux218 = add i32 0, 1
	%aux219 = add i32 %aux217, %aux218
	store i32 %aux219, i32* @_IdPos1
	br label %etiq118
	
	etiq118:
	;___Asignacion___
	%aux221 = load i32, i32* @_Pivot1
	%aux222 = add i32 0, 1
	%aux223 = sub i32 %aux221, %aux222
	store i32 %aux223, i32* @_Pivot1
	br label %etiq121
	
	etiq113:
	;___Asignacion___
	%aux225 = load i32, i32* @_IdPos1
	%aux226 = add i32 0, 1
	%aux227 = add i32 %aux225, %aux226
	store i32 %aux227, i32* @_IdPos1
	br label %etiq121
	
	etiq121:
	;___IfElse___
	%aux229 = add i32 0, 100
	%aux230 = load i32, i32* @_Pivot1
	%aux231 = sub i32 %aux229, %aux230
	%aux232 = load i32, i32* @_IdPos1
	%aux233 = icmp eq i32 %aux231, %aux232
	br i1 %aux233, label %etiq122, label %etiq123
	
	etiq122:
	;___Asignacion___
	%aux235 = load i32, i32* @_Acum1
	%aux236 = add i32 0, 1
	%aux237 = add i32 %aux235, %aux236
	store i32 %aux237, i32* @_Acum1
	br label %etiq126
	
	etiq126:
	;___Asignacion___
	%aux239 = load i32, i32* @_IdPos1
	%aux240 = add i32 0, 1
	%aux241 = add i32 %aux239, %aux240
	store i32 %aux241, i32* @_IdPos1
	br label %etiq128
	
	etiq128:
	;___Asignacion___
	%aux243 = load i32, i32* @_Pivot1
	%aux244 = add i32 0, 1
	%aux245 = sub i32 %aux243, %aux244
	store i32 %aux245, i32* @_Pivot1
	br label %etiq131
	
	etiq123:
	;___Asignacion___
	%aux247 = load i32, i32* @_IdPos1
	%aux248 = add i32 0, 1
	%aux249 = add i32 %aux247, %aux248
	store i32 %aux249, i32* @_IdPos1
	br label %etiq131
	
	etiq131:
	;___IfElse___
	%aux251 = add i32 0, 100
	%aux252 = load i32, i32* @_Pivot1
	%aux253 = sub i32 %aux251, %aux252
	%aux254 = load i32, i32* @_IdPos1
	%aux255 = icmp eq i32 %aux253, %aux254
	br i1 %aux255, label %etiq132, label %etiq133
	
	etiq132:
	;___Asignacion___
	%aux257 = load i32, i32* @_Acum1
	%aux258 = add i32 0, 1
	%aux259 = add i32 %aux257, %aux258
	store i32 %aux259, i32* @_Acum1
	br label %etiq136
	
	etiq136:
	;___Asignacion___
	%aux261 = load i32, i32* @_IdPos1
	%aux262 = add i32 0, 1
	%aux263 = add i32 %aux261, %aux262
	store i32 %aux263, i32* @_IdPos1
	br label %etiq138
	
	etiq138:
	;___Asignacion___
	%aux265 = load i32, i32* @_Pivot1
	%aux266 = add i32 0, 1
	%aux267 = sub i32 %aux265, %aux266
	store i32 %aux267, i32* @_Pivot1
	br label %etiq141
	
	etiq133:
	;___Asignacion___
	%aux269 = load i32, i32* @_IdPos1
	%aux270 = add i32 0, 1
	%aux271 = add i32 %aux269, %aux270
	store i32 %aux271, i32* @_IdPos1
	br label %etiq141
	
	etiq141:
	;___IfElse___
	%aux273 = add i32 0, 100
	%aux274 = load i32, i32* @_Pivot1
	%aux275 = sub i32 %aux273, %aux274
	%aux276 = load i32, i32* @_IdPos1
	%aux277 = icmp eq i32 %aux275, %aux276
	br i1 %aux277, label %etiq142, label %etiq143
	
	etiq142:
	;___Asignacion___
	%aux279 = load i32, i32* @_Acum1
	%aux280 = add i32 0, 1
	%aux281 = add i32 %aux279, %aux280
	store i32 %aux281, i32* @_Acum1
	br label %etiq146
	
	etiq146:
	;___Asignacion___
	%aux283 = load i32, i32* @_IdPos1
	%aux284 = add i32 0, 1
	%aux285 = add i32 %aux283, %aux284
	store i32 %aux285, i32* @_IdPos1
	br label %etiq148
	
	etiq148:
	;___Asignacion___
	%aux287 = load i32, i32* @_Pivot1
	%aux288 = add i32 0, 1
	%aux289 = sub i32 %aux287, %aux288
	store i32 %aux289, i32* @_Pivot1
	br label %etiq151
	
	etiq143:
	;___Asignacion___
	%aux291 = load i32, i32* @_IdPos1
	%aux292 = add i32 0, 1
	%aux293 = add i32 %aux291, %aux292
	store i32 %aux293, i32* @_IdPos1
	br label %etiq151
	
	etiq151:
	;___IfElse___
	%aux295 = add i32 0, 100
	%aux296 = load i32, i32* @_Pivot1
	%aux297 = sub i32 %aux295, %aux296
	%aux298 = load i32, i32* @_IdPos1
	%aux299 = icmp eq i32 %aux297, %aux298
	br i1 %aux299, label %etiq152, label %etiq153
	
	etiq152:
	;___Asignacion___
	%aux301 = load i32, i32* @_Acum1
	%aux302 = add i32 0, 1
	%aux303 = add i32 %aux301, %aux302
	store i32 %aux303, i32* @_Acum1
	br label %etiq156
	
	etiq156:
	;___Asignacion___
	%aux305 = load i32, i32* @_IdPos1
	%aux306 = add i32 0, 1
	%aux307 = add i32 %aux305, %aux306
	store i32 %aux307, i32* @_IdPos1
	br label %etiq158
	
	etiq158:
	;___Asignacion___
	%aux309 = load i32, i32* @_Pivot1
	%aux310 = add i32 0, 1
	%aux311 = sub i32 %aux309, %aux310
	store i32 %aux311, i32* @_Pivot1
	br label %etiq161
	
	etiq153:
	;___Asignacion___
	%aux313 = load i32, i32* @_IdPos1
	%aux314 = add i32 0, 1
	%aux315 = add i32 %aux313, %aux314
	store i32 %aux315, i32* @_IdPos1
	br label %etiq161
	
	etiq161:
	;___IfElse___
	%aux317 = add i32 0, 100
	%aux318 = load i32, i32* @_Pivot1
	%aux319 = sub i32 %aux317, %aux318
	%aux320 = load i32, i32* @_IdPos1
	%aux321 = icmp eq i32 %aux319, %aux320
	br i1 %aux321, label %etiq162, label %etiq163
	
	etiq162:
	;___Asignacion___
	%aux323 = load i32, i32* @_Acum1
	%aux324 = add i32 0, 1
	%aux325 = add i32 %aux323, %aux324
	store i32 %aux325, i32* @_Acum1
	br label %etiq166
	
	etiq166:
	;___Asignacion___
	%aux327 = load i32, i32* @_IdPos1
	%aux328 = add i32 0, 1
	%aux329 = add i32 %aux327, %aux328
	store i32 %aux329, i32* @_IdPos1
	br label %etiq168
	
	etiq168:
	;___Asignacion___
	%aux331 = load i32, i32* @_Pivot1
	%aux332 = add i32 0, 1
	%aux333 = sub i32 %aux331, %aux332
	store i32 %aux333, i32* @_Pivot1
	br label %etiq171
	
	etiq163:
	;___Asignacion___
	%aux335 = load i32, i32* @_IdPos1
	%aux336 = add i32 0, 1
	%aux337 = add i32 %aux335, %aux336
	store i32 %aux337, i32* @_IdPos1
	br label %etiq171
	
	etiq171:
	;___IfElse___
	%aux339 = add i32 0, 100
	%aux340 = load i32, i32* @_Pivot1
	%aux341 = sub i32 %aux339, %aux340
	%aux342 = load i32, i32* @_IdPos1
	%aux343 = icmp eq i32 %aux341, %aux342
	br i1 %aux343, label %etiq172, label %etiq173
	
	etiq172:
	;___Asignacion___
	%aux345 = load i32, i32* @_Acum1
	%aux346 = add i32 0, 1
	%aux347 = add i32 %aux345, %aux346
	store i32 %aux347, i32* @_Acum1
	br label %etiq176
	
	etiq176:
	;___Asignacion___
	%aux349 = load i32, i32* @_IdPos1
	%aux350 = add i32 0, 1
	%aux351 = add i32 %aux349, %aux350
	store i32 %aux351, i32* @_IdPos1
	br label %etiq178
	
	etiq178:
	;___Asignacion___
	%aux353 = load i32, i32* @_Pivot1
	%aux354 = add i32 0, 1
	%aux355 = sub i32 %aux353, %aux354
	store i32 %aux355, i32* @_Pivot1
	br label %etiq181
	
	etiq173:
	;___Asignacion___
	%aux357 = load i32, i32* @_IdPos1
	%aux358 = add i32 0, 1
	%aux359 = add i32 %aux357, %aux358
	store i32 %aux359, i32* @_IdPos1
	br label %etiq181
	
	etiq181:
	;___IfElse___
	%aux361 = add i32 0, 100
	%aux362 = load i32, i32* @_Pivot1
	%aux363 = sub i32 %aux361, %aux362
	%aux364 = load i32, i32* @_IdPos1
	%aux365 = icmp eq i32 %aux363, %aux364
	br i1 %aux365, label %etiq182, label %etiq183
	
	etiq182:
	;___Asignacion___
	%aux367 = load i32, i32* @_Acum1
	%aux368 = add i32 0, 1
	%aux369 = add i32 %aux367, %aux368
	store i32 %aux369, i32* @_Acum1
	br label %etiq186
	
	etiq186:
	;___Asignacion___
	%aux371 = load i32, i32* @_IdPos1
	%aux372 = add i32 0, 1
	%aux373 = add i32 %aux371, %aux372
	store i32 %aux373, i32* @_IdPos1
	br label %etiq188
	
	etiq188:
	;___Asignacion___
	%aux375 = load i32, i32* @_Pivot1
	%aux376 = add i32 0, 1
	%aux377 = sub i32 %aux375, %aux376
	store i32 %aux377, i32* @_Pivot1
	br label %etiq191
	
	etiq183:
	;___Asignacion___
	%aux379 = load i32, i32* @_IdPos1
	%aux380 = add i32 0, 1
	%aux381 = add i32 %aux379, %aux380
	store i32 %aux381, i32* @_IdPos1
	br label %etiq191
	
	etiq191:
	;___IfElse___
	%aux383 = add i32 0, 100
	%aux384 = load i32, i32* @_Pivot1
	%aux385 = sub i32 %aux383, %aux384
	%aux386 = load i32, i32* @_IdPos1
	%aux387 = icmp eq i32 %aux385, %aux386
	br i1 %aux387, label %etiq192, label %etiq193
	
	etiq192:
	;___Asignacion___
	%aux389 = load i32, i32* @_Acum1
	%aux390 = add i32 0, 1
	%aux391 = add i32 %aux389, %aux390
	store i32 %aux391, i32* @_Acum1
	br label %etiq196
	
	etiq196:
	;___Asignacion___
	%aux393 = load i32, i32* @_IdPos1
	%aux394 = add i32 0, 1
	%aux395 = add i32 %aux393, %aux394
	store i32 %aux395, i32* @_IdPos1
	br label %etiq198
	
	etiq198:
	;___Asignacion___
	%aux397 = load i32, i32* @_Pivot1
	%aux398 = add i32 0, 1
	%aux399 = sub i32 %aux397, %aux398
	store i32 %aux399, i32* @_Pivot1
	br label %etiq201
	
	etiq193:
	;___Asignacion___
	%aux401 = load i32, i32* @_IdPos1
	%aux402 = add i32 0, 1
	%aux403 = add i32 %aux401, %aux402
	store i32 %aux403, i32* @_IdPos1
	br label %etiq201
	
	etiq201:
	;___IfElse___
	%aux405 = add i32 0, 100
	%aux406 = load i32, i32* @_Pivot1
	%aux407 = sub i32 %aux405, %aux406
	%aux408 = load i32, i32* @_IdPos1
	%aux409 = icmp eq i32 %aux407, %aux408
	br i1 %aux409, label %etiq202, label %etiq203
	
	etiq202:
	;___Asignacion___
	%aux411 = load i32, i32* @_Acum1
	%aux412 = add i32 0, 1
	%aux413 = add i32 %aux411, %aux412
	store i32 %aux413, i32* @_Acum1
	br label %etiq206
	
	etiq206:
	;___Asignacion___
	%aux415 = load i32, i32* @_IdPos1
	%aux416 = add i32 0, 1
	%aux417 = add i32 %aux415, %aux416
	store i32 %aux417, i32* @_IdPos1
	br label %etiq208
	
	etiq208:
	;___Asignacion___
	%aux419 = load i32, i32* @_Pivot1
	%aux420 = add i32 0, 1
	%aux421 = sub i32 %aux419, %aux420
	store i32 %aux421, i32* @_Pivot1
	br label %etiq211
	
	etiq203:
	;___Asignacion___
	%aux423 = load i32, i32* @_IdPos1
	%aux424 = add i32 0, 1
	%aux425 = add i32 %aux423, %aux424
	store i32 %aux425, i32* @_IdPos1
	br label %etiq211
	
	etiq211:
	;___IfElse___
	%aux427 = add i32 0, 100
	%aux428 = load i32, i32* @_Pivot1
	%aux429 = sub i32 %aux427, %aux428
	%aux430 = load i32, i32* @_IdPos1
	%aux431 = icmp eq i32 %aux429, %aux430
	br i1 %aux431, label %etiq212, label %etiq213
	
	etiq212:
	;___Asignacion___
	%aux433 = load i32, i32* @_Acum1
	%aux434 = add i32 0, 1
	%aux435 = add i32 %aux433, %aux434
	store i32 %aux435, i32* @_Acum1
	br label %etiq216
	
	etiq216:
	;___Asignacion___
	%aux437 = load i32, i32* @_IdPos1
	%aux438 = add i32 0, 1
	%aux439 = add i32 %aux437, %aux438
	store i32 %aux439, i32* @_IdPos1
	br label %etiq218
	
	etiq218:
	;___Asignacion___
	%aux441 = load i32, i32* @_Pivot1
	%aux442 = add i32 0, 1
	%aux443 = sub i32 %aux441, %aux442
	store i32 %aux443, i32* @_Pivot1
	br label %etiq221
	
	etiq213:
	;___Asignacion___
	%aux445 = load i32, i32* @_IdPos1
	%aux446 = add i32 0, 1
	%aux447 = add i32 %aux445, %aux446
	store i32 %aux447, i32* @_IdPos1
	br label %etiq221
	
	etiq221:
	;___IfElse___
	%aux449 = add i32 0, 100
	%aux450 = load i32, i32* @_Pivot1
	%aux451 = sub i32 %aux449, %aux450
	%aux452 = load i32, i32* @_IdPos1
	%aux453 = icmp eq i32 %aux451, %aux452
	br i1 %aux453, label %etiq222, label %etiq223
	
	etiq222:
	;___Asignacion___
	%aux455 = load i32, i32* @_Acum1
	%aux456 = add i32 0, 1
	%aux457 = add i32 %aux455, %aux456
	store i32 %aux457, i32* @_Acum1
	br label %etiq226
	
	etiq226:
	;___Asignacion___
	%aux459 = load i32, i32* @_IdPos1
	%aux460 = add i32 0, 1
	%aux461 = add i32 %aux459, %aux460
	store i32 %aux461, i32* @_IdPos1
	br label %etiq228
	
	etiq228:
	;___Asignacion___
	%aux463 = load i32, i32* @_Pivot1
	%aux464 = add i32 0, 1
	%aux465 = sub i32 %aux463, %aux464
	store i32 %aux465, i32* @_Pivot1
	br label %etiq231
	
	etiq223:
	;___Asignacion___
	%aux467 = load i32, i32* @_IdPos1
	%aux468 = add i32 0, 1
	%aux469 = add i32 %aux467, %aux468
	store i32 %aux469, i32* @_IdPos1
	br label %etiq231
	
	etiq231:
	;___IfElse___
	%aux471 = add i32 0, 100
	%aux472 = load i32, i32* @_Pivot1
	%aux473 = sub i32 %aux471, %aux472
	%aux474 = load i32, i32* @_IdPos1
	%aux475 = icmp eq i32 %aux473, %aux474
	br i1 %aux475, label %etiq232, label %etiq233
	
	etiq232:
	;___Asignacion___
	%aux477 = load i32, i32* @_Acum1
	%aux478 = add i32 0, 1
	%aux479 = add i32 %aux477, %aux478
	store i32 %aux479, i32* @_Acum1
	br label %etiq236
	
	etiq236:
	;___Asignacion___
	%aux481 = load i32, i32* @_IdPos1
	%aux482 = add i32 0, 1
	%aux483 = add i32 %aux481, %aux482
	store i32 %aux483, i32* @_IdPos1
	br label %etiq238
	
	etiq238:
	;___Asignacion___
	%aux485 = load i32, i32* @_Pivot1
	%aux486 = add i32 0, 1
	%aux487 = sub i32 %aux485, %aux486
	store i32 %aux487, i32* @_Pivot1
	br label %etiq241
	
	etiq233:
	;___Asignacion___
	%aux489 = load i32, i32* @_IdPos1
	%aux490 = add i32 0, 1
	%aux491 = add i32 %aux489, %aux490
	store i32 %aux491, i32* @_IdPos1
	br label %etiq241
	
	etiq241:
	;___IfElse___
	%aux493 = add i32 0, 100
	%aux494 = load i32, i32* @_Pivot1
	%aux495 = sub i32 %aux493, %aux494
	%aux496 = load i32, i32* @_IdPos1
	%aux497 = icmp eq i32 %aux495, %aux496
	br i1 %aux497, label %etiq242, label %etiq243
	
	etiq242:
	;___Asignacion___
	%aux499 = load i32, i32* @_Acum1
	%aux500 = add i32 0, 1
	%aux501 = add i32 %aux499, %aux500
	store i32 %aux501, i32* @_Acum1
	br label %etiq246
	
	etiq246:
	;___Asignacion___
	%aux503 = load i32, i32* @_IdPos1
	%aux504 = add i32 0, 1
	%aux505 = add i32 %aux503, %aux504
	store i32 %aux505, i32* @_IdPos1
	br label %etiq248
	
	etiq248:
	;___Asignacion___
	%aux507 = load i32, i32* @_Pivot1
	%aux508 = add i32 0, 1
	%aux509 = sub i32 %aux507, %aux508
	store i32 %aux509, i32* @_Pivot1
	br label %etiq251
	
	etiq243:
	;___Asignacion___
	%aux511 = load i32, i32* @_IdPos1
	%aux512 = add i32 0, 1
	%aux513 = add i32 %aux511, %aux512
	store i32 %aux513, i32* @_IdPos1
	br label %etiq251
	
	etiq251:
	;___IfElse___
	%aux515 = add i32 0, 100
	%aux516 = load i32, i32* @_Pivot1
	%aux517 = sub i32 %aux515, %aux516
	%aux518 = load i32, i32* @_IdPos1
	%aux519 = icmp eq i32 %aux517, %aux518
	br i1 %aux519, label %etiq252, label %etiq253
	
	etiq252:
	;___Asignacion___
	%aux521 = load i32, i32* @_Acum1
	%aux522 = add i32 0, 1
	%aux523 = add i32 %aux521, %aux522
	store i32 %aux523, i32* @_Acum1
	br label %etiq256
	
	etiq256:
	;___Asignacion___
	%aux525 = load i32, i32* @_IdPos1
	%aux526 = add i32 0, 1
	%aux527 = add i32 %aux525, %aux526
	store i32 %aux527, i32* @_IdPos1
	br label %etiq258
	
	etiq258:
	;___Asignacion___
	%aux529 = load i32, i32* @_Pivot1
	%aux530 = add i32 0, 1
	%aux531 = sub i32 %aux529, %aux530
	store i32 %aux531, i32* @_Pivot1
	br label %etiq261
	
	etiq253:
	;___Asignacion___
	%aux533 = load i32, i32* @_IdPos1
	%aux534 = add i32 0, 1
	%aux535 = add i32 %aux533, %aux534
	store i32 %aux535, i32* @_IdPos1
	br label %etiq261
	
	etiq261:
	;___IfElse___
	%aux537 = add i32 0, 100
	%aux538 = load i32, i32* @_Pivot1
	%aux539 = sub i32 %aux537, %aux538
	%aux540 = load i32, i32* @_IdPos1
	%aux541 = icmp eq i32 %aux539, %aux540
	br i1 %aux541, label %etiq262, label %etiq263
	
	etiq262:
	;___Asignacion___
	%aux543 = load i32, i32* @_Acum1
	%aux544 = add i32 0, 1
	%aux545 = add i32 %aux543, %aux544
	store i32 %aux545, i32* @_Acum1
	br label %etiq266
	
	etiq266:
	;___Asignacion___
	%aux547 = load i32, i32* @_IdPos1
	%aux548 = add i32 0, 1
	%aux549 = add i32 %aux547, %aux548
	store i32 %aux549, i32* @_IdPos1
	br label %etiq268
	
	etiq268:
	;___Asignacion___
	%aux551 = load i32, i32* @_Pivot1
	%aux552 = add i32 0, 1
	%aux553 = sub i32 %aux551, %aux552
	store i32 %aux553, i32* @_Pivot1
	br label %etiq271
	
	etiq263:
	;___Asignacion___
	%aux555 = load i32, i32* @_IdPos1
	%aux556 = add i32 0, 1
	%aux557 = add i32 %aux555, %aux556
	store i32 %aux557, i32* @_IdPos1
	br label %etiq271
	
	etiq271:
	;___IfElse___
	%aux559 = add i32 0, 100
	%aux560 = load i32, i32* @_Pivot1
	%aux561 = sub i32 %aux559, %aux560
	%aux562 = load i32, i32* @_IdPos1
	%aux563 = icmp eq i32 %aux561, %aux562
	br i1 %aux563, label %etiq272, label %etiq273
	
	etiq272:
	;___Asignacion___
	%aux565 = load i32, i32* @_Acum1
	%aux566 = add i32 0, 1
	%aux567 = add i32 %aux565, %aux566
	store i32 %aux567, i32* @_Acum1
	br label %etiq276
	
	etiq276:
	;___Asignacion___
	%aux569 = load i32, i32* @_IdPos1
	%aux570 = add i32 0, 1
	%aux571 = add i32 %aux569, %aux570
	store i32 %aux571, i32* @_IdPos1
	br label %etiq278
	
	etiq278:
	;___Asignacion___
	%aux573 = load i32, i32* @_Pivot1
	%aux574 = add i32 0, 1
	%aux575 = sub i32 %aux573, %aux574
	store i32 %aux575, i32* @_Pivot1
	br label %etiq281
	
	etiq273:
	;___Asignacion___
	%aux577 = load i32, i32* @_IdPos1
	%aux578 = add i32 0, 1
	%aux579 = add i32 %aux577, %aux578
	store i32 %aux579, i32* @_IdPos1
	br label %etiq281
	
	etiq281:
	;___IfElse___
	%aux581 = add i32 0, 100
	%aux582 = load i32, i32* @_Pivot1
	%aux583 = sub i32 %aux581, %aux582
	%aux584 = load i32, i32* @_IdPos1
	%aux585 = icmp eq i32 %aux583, %aux584
	br i1 %aux585, label %etiq282, label %etiq283
	
	etiq282:
	;___Asignacion___
	%aux587 = load i32, i32* @_Acum1
	%aux588 = add i32 0, 1
	%aux589 = add i32 %aux587, %aux588
	store i32 %aux589, i32* @_Acum1
	br label %etiq286
	
	etiq286:
	;___Asignacion___
	%aux591 = load i32, i32* @_IdPos1
	%aux592 = add i32 0, 1
	%aux593 = add i32 %aux591, %aux592
	store i32 %aux593, i32* @_IdPos1
	br label %etiq288
	
	etiq288:
	;___Asignacion___
	%aux595 = load i32, i32* @_Pivot1
	%aux596 = add i32 0, 1
	%aux597 = sub i32 %aux595, %aux596
	store i32 %aux597, i32* @_Pivot1
	br label %etiq291
	
	etiq283:
	;___Asignacion___
	%aux599 = load i32, i32* @_IdPos1
	%aux600 = add i32 0, 1
	%aux601 = add i32 %aux599, %aux600
	store i32 %aux601, i32* @_IdPos1
	br label %etiq291
	
	etiq291:
	;___IfElse___
	%aux603 = add i32 0, 100
	%aux604 = load i32, i32* @_Pivot1
	%aux605 = sub i32 %aux603, %aux604
	%aux606 = load i32, i32* @_IdPos1
	%aux607 = icmp eq i32 %aux605, %aux606
	br i1 %aux607, label %etiq292, label %etiq293
	
	etiq292:
	;___Asignacion___
	%aux609 = load i32, i32* @_Acum1
	%aux610 = add i32 0, 1
	%aux611 = add i32 %aux609, %aux610
	store i32 %aux611, i32* @_Acum1
	br label %etiq296
	
	etiq296:
	;___Asignacion___
	%aux613 = load i32, i32* @_IdPos1
	%aux614 = add i32 0, 1
	%aux615 = add i32 %aux613, %aux614
	store i32 %aux615, i32* @_IdPos1
	br label %etiq298
	
	etiq298:
	;___Asignacion___
	%aux617 = load i32, i32* @_Pivot1
	%aux618 = add i32 0, 1
	%aux619 = sub i32 %aux617, %aux618
	store i32 %aux619, i32* @_Pivot1
	br label %etiq301
	
	etiq293:
	;___Asignacion___
	%aux621 = load i32, i32* @_IdPos1
	%aux622 = add i32 0, 1
	%aux623 = add i32 %aux621, %aux622
	store i32 %aux623, i32* @_IdPos1
	br label %etiq301
	
	etiq301:
	;___IfElse___
	%aux625 = add i32 0, 100
	%aux626 = load i32, i32* @_Pivot1
	%aux627 = sub i32 %aux625, %aux626
	%aux628 = load i32, i32* @_IdPos1
	%aux629 = icmp eq i32 %aux627, %aux628
	br i1 %aux629, label %etiq302, label %etiq303
	
	etiq302:
	;___Asignacion___
	%aux631 = load i32, i32* @_Acum1
	%aux632 = add i32 0, 1
	%aux633 = add i32 %aux631, %aux632
	store i32 %aux633, i32* @_Acum1
	br label %etiq306
	
	etiq306:
	;___Asignacion___
	%aux635 = load i32, i32* @_IdPos1
	%aux636 = add i32 0, 1
	%aux637 = add i32 %aux635, %aux636
	store i32 %aux637, i32* @_IdPos1
	br label %etiq308
	
	etiq308:
	;___Asignacion___
	%aux639 = load i32, i32* @_Pivot1
	%aux640 = add i32 0, 1
	%aux641 = sub i32 %aux639, %aux640
	store i32 %aux641, i32* @_Pivot1
	br label %etiq311
	
	etiq303:
	;___Asignacion___
	%aux643 = load i32, i32* @_IdPos1
	%aux644 = add i32 0, 1
	%aux645 = add i32 %aux643, %aux644
	store i32 %aux645, i32* @_IdPos1
	br label %etiq311
	
	etiq311:
	;___IfElse___
	%aux647 = add i32 0, 100
	%aux648 = load i32, i32* @_Pivot1
	%aux649 = sub i32 %aux647, %aux648
	%aux650 = load i32, i32* @_IdPos1
	%aux651 = icmp eq i32 %aux649, %aux650
	br i1 %aux651, label %etiq312, label %etiq313
	
	etiq312:
	;___Asignacion___
	%aux653 = load i32, i32* @_Acum1
	%aux654 = add i32 0, 1
	%aux655 = add i32 %aux653, %aux654
	store i32 %aux655, i32* @_Acum1
	br label %etiq316
	
	etiq316:
	;___Asignacion___
	%aux657 = load i32, i32* @_IdPos1
	%aux658 = add i32 0, 1
	%aux659 = add i32 %aux657, %aux658
	store i32 %aux659, i32* @_IdPos1
	br label %etiq318
	
	etiq318:
	;___Asignacion___
	%aux661 = load i32, i32* @_Pivot1
	%aux662 = add i32 0, 1
	%aux663 = sub i32 %aux661, %aux662
	store i32 %aux663, i32* @_Pivot1
	br label %etiq321
	
	etiq313:
	;___Asignacion___
	%aux665 = load i32, i32* @_IdPos1
	%aux666 = add i32 0, 1
	%aux667 = add i32 %aux665, %aux666
	store i32 %aux667, i32* @_IdPos1
	br label %etiq321
	
	etiq321:
	;___IfElse___
	%aux669 = add i32 0, 100
	%aux670 = load i32, i32* @_Pivot1
	%aux671 = sub i32 %aux669, %aux670
	%aux672 = load i32, i32* @_IdPos1
	%aux673 = icmp eq i32 %aux671, %aux672
	br i1 %aux673, label %etiq322, label %etiq323
	
	etiq322:
	;___Asignacion___
	%aux675 = load i32, i32* @_Acum1
	%aux676 = add i32 0, 1
	%aux677 = add i32 %aux675, %aux676
	store i32 %aux677, i32* @_Acum1
	br label %etiq326
	
	etiq326:
	;___Asignacion___
	%aux679 = load i32, i32* @_IdPos1
	%aux680 = add i32 0, 1
	%aux681 = add i32 %aux679, %aux680
	store i32 %aux681, i32* @_IdPos1
	br label %etiq328
	
	etiq328:
	;___Asignacion___
	%aux683 = load i32, i32* @_Pivot1
	%aux684 = add i32 0, 1
	%aux685 = sub i32 %aux683, %aux684
	store i32 %aux685, i32* @_Pivot1
	br label %etiq331
	
	etiq323:
	;___Asignacion___
	%aux687 = load i32, i32* @_IdPos1
	%aux688 = add i32 0, 1
	%aux689 = add i32 %aux687, %aux688
	store i32 %aux689, i32* @_IdPos1
	br label %etiq331
	
	etiq331:
	;___IfElse___
	%aux691 = add i32 0, 100
	%aux692 = load i32, i32* @_Pivot1
	%aux693 = sub i32 %aux691, %aux692
	%aux694 = load i32, i32* @_IdPos1
	%aux695 = icmp eq i32 %aux693, %aux694
	br i1 %aux695, label %etiq332, label %etiq333
	
	etiq332:
	;___Asignacion___
	%aux697 = load i32, i32* @_Acum1
	%aux698 = add i32 0, 1
	%aux699 = add i32 %aux697, %aux698
	store i32 %aux699, i32* @_Acum1
	br label %etiq336
	
	etiq336:
	;___Asignacion___
	%aux701 = load i32, i32* @_IdPos1
	%aux702 = add i32 0, 1
	%aux703 = add i32 %aux701, %aux702
	store i32 %aux703, i32* @_IdPos1
	br label %etiq338
	
	etiq338:
	;___Asignacion___
	%aux705 = load i32, i32* @_Pivot1
	%aux706 = add i32 0, 1
	%aux707 = sub i32 %aux705, %aux706
	store i32 %aux707, i32* @_Pivot1
	br label %etiq341
	
	etiq333:
	;___Asignacion___
	%aux709 = load i32, i32* @_IdPos1
	%aux710 = add i32 0, 1
	%aux711 = add i32 %aux709, %aux710
	store i32 %aux711, i32* @_IdPos1
	br label %etiq341
	
	etiq341:
	;___IfElse___
	%aux713 = add i32 0, 100
	%aux714 = load i32, i32* @_Pivot1
	%aux715 = sub i32 %aux713, %aux714
	%aux716 = load i32, i32* @_IdPos1
	%aux717 = icmp eq i32 %aux715, %aux716
	br i1 %aux717, label %etiq342, label %etiq343
	
	etiq342:
	;___Asignacion___
	%aux719 = load i32, i32* @_Acum1
	%aux720 = add i32 0, 1
	%aux721 = add i32 %aux719, %aux720
	store i32 %aux721, i32* @_Acum1
	br label %etiq346
	
	etiq346:
	;___Asignacion___
	%aux723 = load i32, i32* @_IdPos1
	%aux724 = add i32 0, 1
	%aux725 = add i32 %aux723, %aux724
	store i32 %aux725, i32* @_IdPos1
	br label %etiq348
	
	etiq348:
	;___Asignacion___
	%aux727 = load i32, i32* @_Pivot1
	%aux728 = add i32 0, 1
	%aux729 = sub i32 %aux727, %aux728
	store i32 %aux729, i32* @_Pivot1
	br label %etiq351
	
	etiq343:
	;___Asignacion___
	%aux731 = load i32, i32* @_IdPos1
	%aux732 = add i32 0, 1
	%aux733 = add i32 %aux731, %aux732
	store i32 %aux733, i32* @_IdPos1
	br label %etiq351
	
	etiq351:
	;___IfElse___
	%aux735 = add i32 0, 100
	%aux736 = load i32, i32* @_Pivot1
	%aux737 = sub i32 %aux735, %aux736
	%aux738 = load i32, i32* @_IdPos1
	%aux739 = icmp eq i32 %aux737, %aux738
	br i1 %aux739, label %etiq352, label %etiq353
	
	etiq352:
	;___Asignacion___
	%aux741 = load i32, i32* @_Acum1
	%aux742 = add i32 0, 1
	%aux743 = add i32 %aux741, %aux742
	store i32 %aux743, i32* @_Acum1
	br label %etiq356
	
	etiq356:
	;___Asignacion___
	%aux745 = load i32, i32* @_IdPos1
	%aux746 = add i32 0, 1
	%aux747 = add i32 %aux745, %aux746
	store i32 %aux747, i32* @_IdPos1
	br label %etiq358
	
	etiq358:
	;___Asignacion___
	%aux749 = load i32, i32* @_Pivot1
	%aux750 = add i32 0, 1
	%aux751 = sub i32 %aux749, %aux750
	store i32 %aux751, i32* @_Pivot1
	br label %etiq361
	
	etiq353:
	;___Asignacion___
	%aux753 = load i32, i32* @_IdPos1
	%aux754 = add i32 0, 1
	%aux755 = add i32 %aux753, %aux754
	store i32 %aux755, i32* @_IdPos1
	br label %etiq361
	
	etiq361:
	;___IfElse___
	%aux757 = add i32 0, 100
	%aux758 = load i32, i32* @_Pivot1
	%aux759 = sub i32 %aux757, %aux758
	%aux760 = load i32, i32* @_IdPos1
	%aux761 = icmp eq i32 %aux759, %aux760
	br i1 %aux761, label %etiq362, label %etiq363
	
	etiq362:
	;___Asignacion___
	%aux763 = load i32, i32* @_Acum1
	%aux764 = add i32 0, 1
	%aux765 = add i32 %aux763, %aux764
	store i32 %aux765, i32* @_Acum1
	br label %etiq366
	
	etiq366:
	;___Asignacion___
	%aux767 = load i32, i32* @_IdPos1
	%aux768 = add i32 0, 1
	%aux769 = add i32 %aux767, %aux768
	store i32 %aux769, i32* @_IdPos1
	br label %etiq368
	
	etiq368:
	;___Asignacion___
	%aux771 = load i32, i32* @_Pivot1
	%aux772 = add i32 0, 1
	%aux773 = sub i32 %aux771, %aux772
	store i32 %aux773, i32* @_Pivot1
	br label %etiq371
	
	etiq363:
	;___Asignacion___
	%aux775 = load i32, i32* @_IdPos1
	%aux776 = add i32 0, 1
	%aux777 = add i32 %aux775, %aux776
	store i32 %aux777, i32* @_IdPos1
	br label %etiq371
	
	etiq371:
	;___IfElse___
	%aux779 = add i32 0, 100
	%aux780 = load i32, i32* @_Pivot1
	%aux781 = sub i32 %aux779, %aux780
	%aux782 = load i32, i32* @_IdPos1
	%aux783 = icmp eq i32 %aux781, %aux782
	br i1 %aux783, label %etiq372, label %etiq373
	
	etiq372:
	;___Asignacion___
	%aux785 = load i32, i32* @_Acum1
	%aux786 = add i32 0, 1
	%aux787 = add i32 %aux785, %aux786
	store i32 %aux787, i32* @_Acum1
	br label %etiq376
	
	etiq376:
	;___Asignacion___
	%aux789 = load i32, i32* @_IdPos1
	%aux790 = add i32 0, 1
	%aux791 = add i32 %aux789, %aux790
	store i32 %aux791, i32* @_IdPos1
	br label %etiq378
	
	etiq378:
	;___Asignacion___
	%aux793 = load i32, i32* @_Pivot1
	%aux794 = add i32 0, 1
	%aux795 = sub i32 %aux793, %aux794
	store i32 %aux795, i32* @_Pivot1
	br label %etiq381
	
	etiq373:
	;___Asignacion___
	%aux797 = load i32, i32* @_IdPos1
	%aux798 = add i32 0, 1
	%aux799 = add i32 %aux797, %aux798
	store i32 %aux799, i32* @_IdPos1
	br label %etiq381
	
	etiq381:
	;___IfElse___
	%aux801 = add i32 0, 100
	%aux802 = load i32, i32* @_Pivot1
	%aux803 = sub i32 %aux801, %aux802
	%aux804 = load i32, i32* @_IdPos1
	%aux805 = icmp eq i32 %aux803, %aux804
	br i1 %aux805, label %etiq382, label %etiq383
	
	etiq382:
	;___Asignacion___
	%aux807 = load i32, i32* @_Acum1
	%aux808 = add i32 0, 1
	%aux809 = add i32 %aux807, %aux808
	store i32 %aux809, i32* @_Acum1
	br label %etiq386
	
	etiq386:
	;___Asignacion___
	%aux811 = load i32, i32* @_IdPos1
	%aux812 = add i32 0, 1
	%aux813 = add i32 %aux811, %aux812
	store i32 %aux813, i32* @_IdPos1
	br label %etiq388
	
	etiq388:
	;___Asignacion___
	%aux815 = load i32, i32* @_Pivot1
	%aux816 = add i32 0, 1
	%aux817 = sub i32 %aux815, %aux816
	store i32 %aux817, i32* @_Pivot1
	br label %etiq391
	
	etiq383:
	;___Asignacion___
	%aux819 = load i32, i32* @_IdPos1
	%aux820 = add i32 0, 1
	%aux821 = add i32 %aux819, %aux820
	store i32 %aux821, i32* @_IdPos1
	br label %etiq391
	
	etiq391:
	;___IfElse___
	%aux823 = add i32 0, 100
	%aux824 = load i32, i32* @_Pivot1
	%aux825 = sub i32 %aux823, %aux824
	%aux826 = load i32, i32* @_IdPos1
	%aux827 = icmp eq i32 %aux825, %aux826
	br i1 %aux827, label %etiq392, label %etiq393
	
	etiq392:
	;___Asignacion___
	%aux829 = load i32, i32* @_Acum1
	%aux830 = add i32 0, 1
	%aux831 = add i32 %aux829, %aux830
	store i32 %aux831, i32* @_Acum1
	br label %etiq396
	
	etiq396:
	;___Asignacion___
	%aux833 = load i32, i32* @_IdPos1
	%aux834 = add i32 0, 1
	%aux835 = add i32 %aux833, %aux834
	store i32 %aux835, i32* @_IdPos1
	br label %etiq398
	
	etiq398:
	;___Asignacion___
	%aux837 = load i32, i32* @_Pivot1
	%aux838 = add i32 0, 1
	%aux839 = sub i32 %aux837, %aux838
	store i32 %aux839, i32* @_Pivot1
	br label %etiq401
	
	etiq393:
	;___Asignacion___
	%aux841 = load i32, i32* @_IdPos1
	%aux842 = add i32 0, 1
	%aux843 = add i32 %aux841, %aux842
	store i32 %aux843, i32* @_IdPos1
	br label %etiq401
	
	etiq401:
	;___IfElse___
	%aux845 = add i32 0, 100
	%aux846 = load i32, i32* @_Pivot1
	%aux847 = sub i32 %aux845, %aux846
	%aux848 = load i32, i32* @_IdPos1
	%aux849 = icmp eq i32 %aux847, %aux848
	br i1 %aux849, label %etiq402, label %etiq403
	
	etiq402:
	;___Asignacion___
	%aux851 = load i32, i32* @_Acum1
	%aux852 = add i32 0, 1
	%aux853 = add i32 %aux851, %aux852
	store i32 %aux853, i32* @_Acum1
	br label %etiq406
	
	etiq406:
	;___Asignacion___
	%aux855 = load i32, i32* @_IdPos1
	%aux856 = add i32 0, 1
	%aux857 = add i32 %aux855, %aux856
	store i32 %aux857, i32* @_IdPos1
	br label %etiq408
	
	etiq408:
	;___Asignacion___
	%aux859 = load i32, i32* @_Pivot1
	%aux860 = add i32 0, 1
	%aux861 = sub i32 %aux859, %aux860
	store i32 %aux861, i32* @_Pivot1
	br label %etiq411
	
	etiq403:
	;___Asignacion___
	%aux863 = load i32, i32* @_IdPos1
	%aux864 = add i32 0, 1
	%aux865 = add i32 %aux863, %aux864
	store i32 %aux865, i32* @_IdPos1
	br label %etiq411
	
	etiq411:
	;___IfElse___
	%aux867 = add i32 0, 100
	%aux868 = load i32, i32* @_Pivot1
	%aux869 = sub i32 %aux867, %aux868
	%aux870 = load i32, i32* @_IdPos1
	%aux871 = icmp eq i32 %aux869, %aux870
	br i1 %aux871, label %etiq412, label %etiq413
	
	etiq412:
	;___Asignacion___
	%aux873 = load i32, i32* @_Acum1
	%aux874 = add i32 0, 1
	%aux875 = add i32 %aux873, %aux874
	store i32 %aux875, i32* @_Acum1
	br label %etiq416
	
	etiq416:
	;___Asignacion___
	%aux877 = load i32, i32* @_IdPos1
	%aux878 = add i32 0, 1
	%aux879 = add i32 %aux877, %aux878
	store i32 %aux879, i32* @_IdPos1
	br label %etiq418
	
	etiq418:
	;___Asignacion___
	%aux881 = load i32, i32* @_Pivot1
	%aux882 = add i32 0, 1
	%aux883 = sub i32 %aux881, %aux882
	store i32 %aux883, i32* @_Pivot1
	br label %etiq421
	
	etiq413:
	;___Asignacion___
	%aux885 = load i32, i32* @_IdPos1
	%aux886 = add i32 0, 1
	%aux887 = add i32 %aux885, %aux886
	store i32 %aux887, i32* @_IdPos1
	br label %etiq421
	
	etiq421:
	;___IfElse___
	%aux889 = add i32 0, 100
	%aux890 = load i32, i32* @_Pivot1
	%aux891 = sub i32 %aux889, %aux890
	%aux892 = load i32, i32* @_IdPos1
	%aux893 = icmp eq i32 %aux891, %aux892
	br i1 %aux893, label %etiq422, label %etiq423
	
	etiq422:
	;___Asignacion___
	%aux895 = load i32, i32* @_Acum1
	%aux896 = add i32 0, 1
	%aux897 = add i32 %aux895, %aux896
	store i32 %aux897, i32* @_Acum1
	br label %etiq426
	
	etiq426:
	;___Asignacion___
	%aux899 = load i32, i32* @_IdPos1
	%aux900 = add i32 0, 1
	%aux901 = add i32 %aux899, %aux900
	store i32 %aux901, i32* @_IdPos1
	br label %etiq428
	
	etiq428:
	;___Asignacion___
	%aux903 = load i32, i32* @_Pivot1
	%aux904 = add i32 0, 1
	%aux905 = sub i32 %aux903, %aux904
	store i32 %aux905, i32* @_Pivot1
	br label %etiq431
	
	etiq423:
	;___Asignacion___
	%aux907 = load i32, i32* @_IdPos1
	%aux908 = add i32 0, 1
	%aux909 = add i32 %aux907, %aux908
	store i32 %aux909, i32* @_IdPos1
	br label %etiq431
	
	etiq431:
	;___IfElse___
	%aux911 = add i32 0, 100
	%aux912 = load i32, i32* @_Pivot1
	%aux913 = sub i32 %aux911, %aux912
	%aux914 = load i32, i32* @_IdPos1
	%aux915 = icmp eq i32 %aux913, %aux914
	br i1 %aux915, label %etiq432, label %etiq433
	
	etiq432:
	;___Asignacion___
	%aux917 = load i32, i32* @_Acum1
	%aux918 = add i32 0, 1
	%aux919 = add i32 %aux917, %aux918
	store i32 %aux919, i32* @_Acum1
	br label %etiq436
	
	etiq436:
	;___Asignacion___
	%aux921 = load i32, i32* @_IdPos1
	%aux922 = add i32 0, 1
	%aux923 = add i32 %aux921, %aux922
	store i32 %aux923, i32* @_IdPos1
	br label %etiq438
	
	etiq438:
	;___Asignacion___
	%aux925 = load i32, i32* @_Pivot1
	%aux926 = add i32 0, 1
	%aux927 = sub i32 %aux925, %aux926
	store i32 %aux927, i32* @_Pivot1
	br label %etiq441
	
	etiq433:
	;___Asignacion___
	%aux929 = load i32, i32* @_IdPos1
	%aux930 = add i32 0, 1
	%aux931 = add i32 %aux929, %aux930
	store i32 %aux931, i32* @_IdPos1
	br label %etiq441
	
	etiq441:
	;___IfElse___
	%aux933 = add i32 0, 100
	%aux934 = load i32, i32* @_Pivot1
	%aux935 = sub i32 %aux933, %aux934
	%aux936 = load i32, i32* @_IdPos1
	%aux937 = icmp eq i32 %aux935, %aux936
	br i1 %aux937, label %etiq442, label %etiq443
	
	etiq442:
	;___Asignacion___
	%aux939 = load i32, i32* @_Acum1
	%aux940 = add i32 0, 1
	%aux941 = add i32 %aux939, %aux940
	store i32 %aux941, i32* @_Acum1
	br label %etiq446
	
	etiq446:
	;___Asignacion___
	%aux943 = load i32, i32* @_IdPos1
	%aux944 = add i32 0, 1
	%aux945 = add i32 %aux943, %aux944
	store i32 %aux945, i32* @_IdPos1
	br label %etiq448
	
	etiq448:
	;___Asignacion___
	%aux947 = load i32, i32* @_Pivot1
	%aux948 = add i32 0, 1
	%aux949 = sub i32 %aux947, %aux948
	store i32 %aux949, i32* @_Pivot1
	br label %etiq451
	
	etiq443:
	;___Asignacion___
	%aux951 = load i32, i32* @_IdPos1
	%aux952 = add i32 0, 1
	%aux953 = add i32 %aux951, %aux952
	store i32 %aux953, i32* @_IdPos1
	br label %etiq451
	
	etiq451:
	;___IfElse___
	%aux955 = add i32 0, 100
	%aux956 = load i32, i32* @_Pivot1
	%aux957 = sub i32 %aux955, %aux956
	%aux958 = load i32, i32* @_IdPos1
	%aux959 = icmp eq i32 %aux957, %aux958
	br i1 %aux959, label %etiq452, label %etiq453
	
	etiq452:
	;___Asignacion___
	%aux961 = load i32, i32* @_Acum1
	%aux962 = add i32 0, 1
	%aux963 = add i32 %aux961, %aux962
	store i32 %aux963, i32* @_Acum1
	br label %etiq456
	
	etiq456:
	;___Asignacion___
	%aux965 = load i32, i32* @_IdPos1
	%aux966 = add i32 0, 1
	%aux967 = add i32 %aux965, %aux966
	store i32 %aux967, i32* @_IdPos1
	br label %etiq458
	
	etiq458:
	;___Asignacion___
	%aux969 = load i32, i32* @_Pivot1
	%aux970 = add i32 0, 1
	%aux971 = sub i32 %aux969, %aux970
	store i32 %aux971, i32* @_Pivot1
	br label %etiq461
	
	etiq453:
	;___Asignacion___
	%aux973 = load i32, i32* @_IdPos1
	%aux974 = add i32 0, 1
	%aux975 = add i32 %aux973, %aux974
	store i32 %aux975, i32* @_IdPos1
	br label %etiq461
	
	etiq461:
	;___IfElse___
	%aux977 = add i32 0, 100
	%aux978 = load i32, i32* @_Pivot1
	%aux979 = sub i32 %aux977, %aux978
	%aux980 = load i32, i32* @_IdPos1
	%aux981 = icmp eq i32 %aux979, %aux980
	br i1 %aux981, label %etiq462, label %etiq463
	
	etiq462:
	;___Asignacion___
	%aux983 = load i32, i32* @_Acum1
	%aux984 = add i32 0, 1
	%aux985 = add i32 %aux983, %aux984
	store i32 %aux985, i32* @_Acum1
	br label %etiq466
	
	etiq466:
	;___Asignacion___
	%aux987 = load i32, i32* @_IdPos1
	%aux988 = add i32 0, 1
	%aux989 = add i32 %aux987, %aux988
	store i32 %aux989, i32* @_IdPos1
	br label %etiq468
	
	etiq468:
	;___Asignacion___
	%aux991 = load i32, i32* @_Pivot1
	%aux992 = add i32 0, 1
	%aux993 = sub i32 %aux991, %aux992
	store i32 %aux993, i32* @_Pivot1
	br label %etiq471
	
	etiq463:
	;___Asignacion___
	%aux995 = load i32, i32* @_IdPos1
	%aux996 = add i32 0, 1
	%aux997 = add i32 %aux995, %aux996
	store i32 %aux997, i32* @_IdPos1
	br label %etiq471
	
	etiq471:
	;___IfElse___
	%aux999 = add i32 0, 100
	%aux1000 = load i32, i32* @_Pivot1
	%aux1001 = sub i32 %aux999, %aux1000
	%aux1002 = load i32, i32* @_IdPos1
	%aux1003 = icmp eq i32 %aux1001, %aux1002
	br i1 %aux1003, label %etiq472, label %etiq473
	
	etiq472:
	;___Asignacion___
	%aux1005 = load i32, i32* @_Acum1
	%aux1006 = add i32 0, 1
	%aux1007 = add i32 %aux1005, %aux1006
	store i32 %aux1007, i32* @_Acum1
	br label %etiq476
	
	etiq476:
	;___Asignacion___
	%aux1009 = load i32, i32* @_IdPos1
	%aux1010 = add i32 0, 1
	%aux1011 = add i32 %aux1009, %aux1010
	store i32 %aux1011, i32* @_IdPos1
	br label %etiq478
	
	etiq478:
	;___Asignacion___
	%aux1013 = load i32, i32* @_Pivot1
	%aux1014 = add i32 0, 1
	%aux1015 = sub i32 %aux1013, %aux1014
	store i32 %aux1015, i32* @_Pivot1
	br label %etiq481
	
	etiq473:
	;___Asignacion___
	%aux1017 = load i32, i32* @_IdPos1
	%aux1018 = add i32 0, 1
	%aux1019 = add i32 %aux1017, %aux1018
	store i32 %aux1019, i32* @_IdPos1
	br label %etiq481
	
	etiq481:
	;___IfElse___
	%aux1021 = add i32 0, 100
	%aux1022 = load i32, i32* @_Pivot1
	%aux1023 = sub i32 %aux1021, %aux1022
	%aux1024 = load i32, i32* @_IdPos1
	%aux1025 = icmp eq i32 %aux1023, %aux1024
	br i1 %aux1025, label %etiq482, label %etiq483
	
	etiq482:
	;___Asignacion___
	%aux1027 = load i32, i32* @_Acum1
	%aux1028 = add i32 0, 1
	%aux1029 = add i32 %aux1027, %aux1028
	store i32 %aux1029, i32* @_Acum1
	br label %etiq486
	
	etiq486:
	;___Asignacion___
	%aux1031 = load i32, i32* @_IdPos1
	%aux1032 = add i32 0, 1
	%aux1033 = add i32 %aux1031, %aux1032
	store i32 %aux1033, i32* @_IdPos1
	br label %etiq488
	
	etiq488:
	;___Asignacion___
	%aux1035 = load i32, i32* @_Pivot1
	%aux1036 = add i32 0, 1
	%aux1037 = sub i32 %aux1035, %aux1036
	store i32 %aux1037, i32* @_Pivot1
	br label %etiq491
	
	etiq483:
	;___Asignacion___
	%aux1039 = load i32, i32* @_IdPos1
	%aux1040 = add i32 0, 1
	%aux1041 = add i32 %aux1039, %aux1040
	store i32 %aux1041, i32* @_IdPos1
	br label %etiq491
	
	etiq491:
	;___IfElse___
	%aux1043 = add i32 0, 100
	%aux1044 = load i32, i32* @_Pivot1
	%aux1045 = sub i32 %aux1043, %aux1044
	%aux1046 = load i32, i32* @_IdPos1
	%aux1047 = icmp eq i32 %aux1045, %aux1046
	br i1 %aux1047, label %etiq492, label %etiq493
	
	etiq492:
	;___Asignacion___
	%aux1049 = load i32, i32* @_Acum1
	%aux1050 = add i32 0, 1
	%aux1051 = add i32 %aux1049, %aux1050
	store i32 %aux1051, i32* @_Acum1
	br label %etiq496
	
	etiq496:
	;___Asignacion___
	%aux1053 = load i32, i32* @_IdPos1
	%aux1054 = add i32 0, 1
	%aux1055 = add i32 %aux1053, %aux1054
	store i32 %aux1055, i32* @_IdPos1
	br label %etiq498
	
	etiq498:
	;___Asignacion___
	%aux1057 = load i32, i32* @_Pivot1
	%aux1058 = add i32 0, 1
	%aux1059 = sub i32 %aux1057, %aux1058
	store i32 %aux1059, i32* @_Pivot1
	br label %etiq501
	
	etiq493:
	;___Asignacion___
	%aux1061 = load i32, i32* @_IdPos1
	%aux1062 = add i32 0, 1
	%aux1063 = add i32 %aux1061, %aux1062
	store i32 %aux1063, i32* @_IdPos1
	br label %etiq501
	
	etiq501:
	;___IfElse___
	%aux1065 = add i32 0, 100
	%aux1066 = load i32, i32* @_Pivot1
	%aux1067 = sub i32 %aux1065, %aux1066
	%aux1068 = load i32, i32* @_IdPos1
	%aux1069 = icmp eq i32 %aux1067, %aux1068
	br i1 %aux1069, label %etiq502, label %etiq503
	
	etiq502:
	;___Asignacion___
	%aux1071 = load i32, i32* @_Acum1
	%aux1072 = add i32 0, 1
	%aux1073 = add i32 %aux1071, %aux1072
	store i32 %aux1073, i32* @_Acum1
	br label %etiq506
	
	etiq506:
	;___Asignacion___
	%aux1075 = load i32, i32* @_IdPos1
	%aux1076 = add i32 0, 1
	%aux1077 = add i32 %aux1075, %aux1076
	store i32 %aux1077, i32* @_IdPos1
	br label %etiq508
	
	etiq508:
	;___Asignacion___
	%aux1079 = load i32, i32* @_Pivot1
	%aux1080 = add i32 0, 1
	%aux1081 = sub i32 %aux1079, %aux1080
	store i32 %aux1081, i32* @_Pivot1
	br label %etiq511
	
	etiq503:
	;___Asignacion___
	%aux1083 = load i32, i32* @_IdPos1
	%aux1084 = add i32 0, 1
	%aux1085 = add i32 %aux1083, %aux1084
	store i32 %aux1085, i32* @_IdPos1
	br label %etiq511
	
	etiq511:
	;___IfElse___
	%aux1087 = add i32 0, 100
	%aux1088 = load i32, i32* @_Pivot1
	%aux1089 = sub i32 %aux1087, %aux1088
	%aux1090 = load i32, i32* @_IdPos1
	%aux1091 = icmp eq i32 %aux1089, %aux1090
	br i1 %aux1091, label %etiq512, label %etiq513
	
	etiq512:
	;___Asignacion___
	%aux1093 = load i32, i32* @_Acum1
	%aux1094 = add i32 0, 1
	%aux1095 = add i32 %aux1093, %aux1094
	store i32 %aux1095, i32* @_Acum1
	br label %etiq516
	
	etiq516:
	;___Asignacion___
	%aux1097 = load i32, i32* @_IdPos1
	%aux1098 = add i32 0, 1
	%aux1099 = add i32 %aux1097, %aux1098
	store i32 %aux1099, i32* @_IdPos1
	br label %etiq518
	
	etiq518:
	;___Asignacion___
	%aux1101 = load i32, i32* @_Pivot1
	%aux1102 = add i32 0, 1
	%aux1103 = sub i32 %aux1101, %aux1102
	store i32 %aux1103, i32* @_Pivot1
	br label %etiq521
	
	etiq513:
	;___Asignacion___
	%aux1105 = load i32, i32* @_IdPos1
	%aux1106 = add i32 0, 1
	%aux1107 = add i32 %aux1105, %aux1106
	store i32 %aux1107, i32* @_IdPos1
	br label %etiq521
	
	etiq521:
	;___IfElse___
	%aux1109 = add i32 0, 100
	%aux1110 = load i32, i32* @_Pivot1
	%aux1111 = sub i32 %aux1109, %aux1110
	%aux1112 = load i32, i32* @_IdPos1
	%aux1113 = icmp eq i32 %aux1111, %aux1112
	br i1 %aux1113, label %etiq522, label %etiq523
	
	etiq522:
	;___Asignacion___
	%aux1115 = load i32, i32* @_Acum1
	%aux1116 = add i32 0, 1
	%aux1117 = add i32 %aux1115, %aux1116
	store i32 %aux1117, i32* @_Acum1
	br label %etiq526
	
	etiq526:
	;___Asignacion___
	%aux1119 = load i32, i32* @_IdPos1
	%aux1120 = add i32 0, 1
	%aux1121 = add i32 %aux1119, %aux1120
	store i32 %aux1121, i32* @_IdPos1
	br label %etiq528
	
	etiq528:
	;___Asignacion___
	%aux1123 = load i32, i32* @_Pivot1
	%aux1124 = add i32 0, 1
	%aux1125 = sub i32 %aux1123, %aux1124
	store i32 %aux1125, i32* @_Pivot1
	br label %etiq531
	
	etiq523:
	;___Asignacion___
	%aux1127 = load i32, i32* @_IdPos1
	%aux1128 = add i32 0, 1
	%aux1129 = add i32 %aux1127, %aux1128
	store i32 %aux1129, i32* @_IdPos1
	br label %etiq531
	
	etiq531:
	;___IfElse___
	%aux1131 = add i32 0, 100
	%aux1132 = load i32, i32* @_Pivot1
	%aux1133 = sub i32 %aux1131, %aux1132
	%aux1134 = load i32, i32* @_IdPos1
	%aux1135 = icmp eq i32 %aux1133, %aux1134
	br i1 %aux1135, label %etiq532, label %etiq533
	
	etiq532:
	;___Asignacion___
	%aux1137 = load i32, i32* @_Acum1
	%aux1138 = add i32 0, 1
	%aux1139 = add i32 %aux1137, %aux1138
	store i32 %aux1139, i32* @_Acum1
	br label %etiq536
	
	etiq536:
	;___Asignacion___
	%aux1141 = load i32, i32* @_IdPos1
	%aux1142 = add i32 0, 1
	%aux1143 = add i32 %aux1141, %aux1142
	store i32 %aux1143, i32* @_IdPos1
	br label %etiq538
	
	etiq538:
	;___Asignacion___
	%aux1145 = load i32, i32* @_Pivot1
	%aux1146 = add i32 0, 1
	%aux1147 = sub i32 %aux1145, %aux1146
	store i32 %aux1147, i32* @_Pivot1
	br label %etiq541
	
	etiq533:
	;___Asignacion___
	%aux1149 = load i32, i32* @_IdPos1
	%aux1150 = add i32 0, 1
	%aux1151 = add i32 %aux1149, %aux1150
	store i32 %aux1151, i32* @_IdPos1
	br label %etiq541
	
	etiq541:
	;___IfElse___
	%aux1153 = add i32 0, 100
	%aux1154 = load i32, i32* @_Pivot1
	%aux1155 = sub i32 %aux1153, %aux1154
	%aux1156 = load i32, i32* @_IdPos1
	%aux1157 = icmp eq i32 %aux1155, %aux1156
	br i1 %aux1157, label %etiq542, label %etiq543
	
	etiq542:
	;___Asignacion___
	%aux1159 = load i32, i32* @_Acum1
	%aux1160 = add i32 0, 1
	%aux1161 = add i32 %aux1159, %aux1160
	store i32 %aux1161, i32* @_Acum1
	br label %etiq546
	
	etiq546:
	;___Asignacion___
	%aux1163 = load i32, i32* @_IdPos1
	%aux1164 = add i32 0, 1
	%aux1165 = add i32 %aux1163, %aux1164
	store i32 %aux1165, i32* @_IdPos1
	br label %etiq548
	
	etiq548:
	;___Asignacion___
	%aux1167 = load i32, i32* @_Pivot1
	%aux1168 = add i32 0, 1
	%aux1169 = sub i32 %aux1167, %aux1168
	store i32 %aux1169, i32* @_Pivot1
	br label %etiq551
	
	etiq543:
	;___Asignacion___
	%aux1171 = load i32, i32* @_IdPos1
	%aux1172 = add i32 0, 1
	%aux1173 = add i32 %aux1171, %aux1172
	store i32 %aux1173, i32* @_IdPos1
	br label %etiq551
	
	etiq551:
	;___IfElse___
	%aux1175 = add i32 0, 100
	%aux1176 = load i32, i32* @_Pivot1
	%aux1177 = sub i32 %aux1175, %aux1176
	%aux1178 = load i32, i32* @_IdPos1
	%aux1179 = icmp eq i32 %aux1177, %aux1178
	br i1 %aux1179, label %etiq552, label %etiq553
	
	etiq552:
	;___Asignacion___
	%aux1181 = load i32, i32* @_Acum1
	%aux1182 = add i32 0, 1
	%aux1183 = add i32 %aux1181, %aux1182
	store i32 %aux1183, i32* @_Acum1
	br label %etiq556
	
	etiq556:
	;___Asignacion___
	%aux1185 = load i32, i32* @_IdPos1
	%aux1186 = add i32 0, 1
	%aux1187 = add i32 %aux1185, %aux1186
	store i32 %aux1187, i32* @_IdPos1
	br label %etiq558
	
	etiq558:
	;___Asignacion___
	%aux1189 = load i32, i32* @_Pivot1
	%aux1190 = add i32 0, 1
	%aux1191 = sub i32 %aux1189, %aux1190
	store i32 %aux1191, i32* @_Pivot1
	br label %etiq561
	
	etiq553:
	;___Asignacion___
	%aux1193 = load i32, i32* @_IdPos1
	%aux1194 = add i32 0, 1
	%aux1195 = add i32 %aux1193, %aux1194
	store i32 %aux1195, i32* @_IdPos1
	br label %etiq561
	
	etiq561:
	;___IfElse___
	%aux1197 = add i32 0, 100
	%aux1198 = load i32, i32* @_Pivot1
	%aux1199 = sub i32 %aux1197, %aux1198
	%aux1200 = load i32, i32* @_IdPos1
	%aux1201 = icmp eq i32 %aux1199, %aux1200
	br i1 %aux1201, label %etiq562, label %etiq563
	
	etiq562:
	;___Asignacion___
	%aux1203 = load i32, i32* @_Acum1
	%aux1204 = add i32 0, 1
	%aux1205 = add i32 %aux1203, %aux1204
	store i32 %aux1205, i32* @_Acum1
	br label %etiq566
	
	etiq566:
	;___Asignacion___
	%aux1207 = load i32, i32* @_IdPos1
	%aux1208 = add i32 0, 1
	%aux1209 = add i32 %aux1207, %aux1208
	store i32 %aux1209, i32* @_IdPos1
	br label %etiq568
	
	etiq568:
	;___Asignacion___
	%aux1211 = load i32, i32* @_Pivot1
	%aux1212 = add i32 0, 1
	%aux1213 = sub i32 %aux1211, %aux1212
	store i32 %aux1213, i32* @_Pivot1
	br label %etiq571
	
	etiq563:
	;___Asignacion___
	%aux1215 = load i32, i32* @_IdPos1
	%aux1216 = add i32 0, 1
	%aux1217 = add i32 %aux1215, %aux1216
	store i32 %aux1217, i32* @_IdPos1
	br label %etiq571
	
	etiq571:
	;___IfElse___
	%aux1219 = add i32 0, 100
	%aux1220 = load i32, i32* @_Pivot1
	%aux1221 = sub i32 %aux1219, %aux1220
	%aux1222 = load i32, i32* @_IdPos1
	%aux1223 = icmp eq i32 %aux1221, %aux1222
	br i1 %aux1223, label %etiq572, label %etiq573
	
	etiq572:
	;___Asignacion___
	%aux1225 = load i32, i32* @_Acum1
	%aux1226 = add i32 0, 1
	%aux1227 = add i32 %aux1225, %aux1226
	store i32 %aux1227, i32* @_Acum1
	br label %etiq576
	
	etiq576:
	;___Asignacion___
	%aux1229 = load i32, i32* @_IdPos1
	%aux1230 = add i32 0, 1
	%aux1231 = add i32 %aux1229, %aux1230
	store i32 %aux1231, i32* @_IdPos1
	br label %etiq578
	
	etiq578:
	;___Asignacion___
	%aux1233 = load i32, i32* @_Pivot1
	%aux1234 = add i32 0, 1
	%aux1235 = sub i32 %aux1233, %aux1234
	store i32 %aux1235, i32* @_Pivot1
	br label %etiq581
	
	etiq573:
	;___Asignacion___
	%aux1237 = load i32, i32* @_IdPos1
	%aux1238 = add i32 0, 1
	%aux1239 = add i32 %aux1237, %aux1238
	store i32 %aux1239, i32* @_IdPos1
	br label %etiq581
	
	etiq581:
	;___IfElse___
	%aux1241 = add i32 0, 100
	%aux1242 = load i32, i32* @_Pivot1
	%aux1243 = sub i32 %aux1241, %aux1242
	%aux1244 = load i32, i32* @_IdPos1
	%aux1245 = icmp eq i32 %aux1243, %aux1244
	br i1 %aux1245, label %etiq582, label %etiq583
	
	etiq582:
	;___Asignacion___
	%aux1247 = load i32, i32* @_Acum1
	%aux1248 = add i32 0, 1
	%aux1249 = add i32 %aux1247, %aux1248
	store i32 %aux1249, i32* @_Acum1
	br label %etiq586
	
	etiq586:
	;___Asignacion___
	%aux1251 = load i32, i32* @_IdPos1
	%aux1252 = add i32 0, 1
	%aux1253 = add i32 %aux1251, %aux1252
	store i32 %aux1253, i32* @_IdPos1
	br label %etiq588
	
	etiq588:
	;___Asignacion___
	%aux1255 = load i32, i32* @_Pivot1
	%aux1256 = add i32 0, 1
	%aux1257 = sub i32 %aux1255, %aux1256
	store i32 %aux1257, i32* @_Pivot1
	br label %etiq591
	
	etiq583:
	;___Asignacion___
	%aux1259 = load i32, i32* @_IdPos1
	%aux1260 = add i32 0, 1
	%aux1261 = add i32 %aux1259, %aux1260
	store i32 %aux1261, i32* @_IdPos1
	br label %etiq591
	
	etiq591:
	;___IfElse___
	%aux1263 = add i32 0, 100
	%aux1264 = load i32, i32* @_Pivot1
	%aux1265 = sub i32 %aux1263, %aux1264
	%aux1266 = load i32, i32* @_IdPos1
	%aux1267 = icmp eq i32 %aux1265, %aux1266
	br i1 %aux1267, label %etiq592, label %etiq593
	
	etiq592:
	;___Asignacion___
	%aux1269 = load i32, i32* @_Acum1
	%aux1270 = add i32 0, 1
	%aux1271 = add i32 %aux1269, %aux1270
	store i32 %aux1271, i32* @_Acum1
	br label %etiq596
	
	etiq596:
	;___Asignacion___
	%aux1273 = load i32, i32* @_IdPos1
	%aux1274 = add i32 0, 1
	%aux1275 = add i32 %aux1273, %aux1274
	store i32 %aux1275, i32* @_IdPos1
	br label %etiq598
	
	etiq598:
	;___Asignacion___
	%aux1277 = load i32, i32* @_Pivot1
	%aux1278 = add i32 0, 1
	%aux1279 = sub i32 %aux1277, %aux1278
	store i32 %aux1279, i32* @_Pivot1
	br label %etiq601
	
	etiq593:
	;___Asignacion___
	%aux1281 = load i32, i32* @_IdPos1
	%aux1282 = add i32 0, 1
	%aux1283 = add i32 %aux1281, %aux1282
	store i32 %aux1283, i32* @_IdPos1
	br label %etiq601
	
	etiq601:
	;___IfElse___
	%aux1285 = add i32 0, 100
	%aux1286 = load i32, i32* @_Pivot1
	%aux1287 = sub i32 %aux1285, %aux1286
	%aux1288 = load i32, i32* @_IdPos1
	%aux1289 = icmp eq i32 %aux1287, %aux1288
	br i1 %aux1289, label %etiq602, label %etiq603
	
	etiq602:
	;___Asignacion___
	%aux1291 = load i32, i32* @_Acum1
	%aux1292 = add i32 0, 1
	%aux1293 = add i32 %aux1291, %aux1292
	store i32 %aux1293, i32* @_Acum1
	br label %etiq606
	
	etiq606:
	;___Asignacion___
	%aux1295 = load i32, i32* @_IdPos1
	%aux1296 = add i32 0, 1
	%aux1297 = add i32 %aux1295, %aux1296
	store i32 %aux1297, i32* @_IdPos1
	br label %etiq608
	
	etiq608:
	;___Asignacion___
	%aux1299 = load i32, i32* @_Pivot1
	%aux1300 = add i32 0, 1
	%aux1301 = sub i32 %aux1299, %aux1300
	store i32 %aux1301, i32* @_Pivot1
	br label %etiq611
	
	etiq603:
	;___Asignacion___
	%aux1303 = load i32, i32* @_IdPos1
	%aux1304 = add i32 0, 1
	%aux1305 = add i32 %aux1303, %aux1304
	store i32 %aux1305, i32* @_IdPos1
	br label %etiq611
	
	etiq611:
	;___IfElse___
	%aux1307 = add i32 0, 100
	%aux1308 = load i32, i32* @_Pivot1
	%aux1309 = sub i32 %aux1307, %aux1308
	%aux1310 = load i32, i32* @_IdPos1
	%aux1311 = icmp eq i32 %aux1309, %aux1310
	br i1 %aux1311, label %etiq612, label %etiq613
	
	etiq612:
	;___Asignacion___
	%aux1313 = load i32, i32* @_Acum1
	%aux1314 = add i32 0, 1
	%aux1315 = add i32 %aux1313, %aux1314
	store i32 %aux1315, i32* @_Acum1
	br label %etiq616
	
	etiq616:
	;___Asignacion___
	%aux1317 = load i32, i32* @_IdPos1
	%aux1318 = add i32 0, 1
	%aux1319 = add i32 %aux1317, %aux1318
	store i32 %aux1319, i32* @_IdPos1
	br label %etiq618
	
	etiq618:
	;___Asignacion___
	%aux1321 = load i32, i32* @_Pivot1
	%aux1322 = add i32 0, 1
	%aux1323 = sub i32 %aux1321, %aux1322
	store i32 %aux1323, i32* @_Pivot1
	br label %etiq621
	
	etiq613:
	;___Asignacion___
	%aux1325 = load i32, i32* @_IdPos1
	%aux1326 = add i32 0, 1
	%aux1327 = add i32 %aux1325, %aux1326
	store i32 %aux1327, i32* @_IdPos1
	br label %etiq621
	
	etiq621:
	;___IfElse___
	%aux1329 = add i32 0, 100
	%aux1330 = load i32, i32* @_Pivot1
	%aux1331 = sub i32 %aux1329, %aux1330
	%aux1332 = load i32, i32* @_IdPos1
	%aux1333 = icmp eq i32 %aux1331, %aux1332
	br i1 %aux1333, label %etiq622, label %etiq623
	
	etiq622:
	;___Asignacion___
	%aux1335 = load i32, i32* @_Acum1
	%aux1336 = add i32 0, 1
	%aux1337 = add i32 %aux1335, %aux1336
	store i32 %aux1337, i32* @_Acum1
	br label %etiq626
	
	etiq626:
	;___Asignacion___
	%aux1339 = load i32, i32* @_IdPos1
	%aux1340 = add i32 0, 1
	%aux1341 = add i32 %aux1339, %aux1340
	store i32 %aux1341, i32* @_IdPos1
	br label %etiq628
	
	etiq628:
	;___Asignacion___
	%aux1343 = load i32, i32* @_Pivot1
	%aux1344 = add i32 0, 1
	%aux1345 = sub i32 %aux1343, %aux1344
	store i32 %aux1345, i32* @_Pivot1
	br label %etiq631
	
	etiq623:
	;___Asignacion___
	%aux1347 = load i32, i32* @_IdPos1
	%aux1348 = add i32 0, 1
	%aux1349 = add i32 %aux1347, %aux1348
	store i32 %aux1349, i32* @_IdPos1
	br label %etiq631
	
	etiq631:
	;___IfElse___
	%aux1351 = add i32 0, 100
	%aux1352 = load i32, i32* @_Pivot1
	%aux1353 = sub i32 %aux1351, %aux1352
	%aux1354 = load i32, i32* @_IdPos1
	%aux1355 = icmp eq i32 %aux1353, %aux1354
	br i1 %aux1355, label %etiq632, label %etiq633
	
	etiq632:
	;___Asignacion___
	%aux1357 = load i32, i32* @_Acum1
	%aux1358 = add i32 0, 1
	%aux1359 = add i32 %aux1357, %aux1358
	store i32 %aux1359, i32* @_Acum1
	br label %etiq636
	
	etiq636:
	;___Asignacion___
	%aux1361 = load i32, i32* @_IdPos1
	%aux1362 = add i32 0, 1
	%aux1363 = add i32 %aux1361, %aux1362
	store i32 %aux1363, i32* @_IdPos1
	br label %etiq638
	
	etiq638:
	;___Asignacion___
	%aux1365 = load i32, i32* @_Pivot1
	%aux1366 = add i32 0, 1
	%aux1367 = sub i32 %aux1365, %aux1366
	store i32 %aux1367, i32* @_Pivot1
	br label %etiq641
	
	etiq633:
	;___Asignacion___
	%aux1369 = load i32, i32* @_IdPos1
	%aux1370 = add i32 0, 1
	%aux1371 = add i32 %aux1369, %aux1370
	store i32 %aux1371, i32* @_IdPos1
	br label %etiq641
	
	etiq641:
	;___IfElse___
	%aux1373 = add i32 0, 100
	%aux1374 = load i32, i32* @_Pivot1
	%aux1375 = sub i32 %aux1373, %aux1374
	%aux1376 = load i32, i32* @_IdPos1
	%aux1377 = icmp eq i32 %aux1375, %aux1376
	br i1 %aux1377, label %etiq642, label %etiq643
	
	etiq642:
	;___Asignacion___
	%aux1379 = load i32, i32* @_Acum1
	%aux1380 = add i32 0, 1
	%aux1381 = add i32 %aux1379, %aux1380
	store i32 %aux1381, i32* @_Acum1
	br label %etiq646
	
	etiq646:
	;___Asignacion___
	%aux1383 = load i32, i32* @_IdPos1
	%aux1384 = add i32 0, 1
	%aux1385 = add i32 %aux1383, %aux1384
	store i32 %aux1385, i32* @_IdPos1
	br label %etiq648
	
	etiq648:
	;___Asignacion___
	%aux1387 = load i32, i32* @_Pivot1
	%aux1388 = add i32 0, 1
	%aux1389 = sub i32 %aux1387, %aux1388
	store i32 %aux1389, i32* @_Pivot1
	br label %etiq651
	
	etiq643:
	;___Asignacion___
	%aux1391 = load i32, i32* @_IdPos1
	%aux1392 = add i32 0, 1
	%aux1393 = add i32 %aux1391, %aux1392
	store i32 %aux1393, i32* @_IdPos1
	br label %etiq651
	
	etiq651:
	;___IfElse___
	%aux1395 = add i32 0, 100
	%aux1396 = load i32, i32* @_Pivot1
	%aux1397 = sub i32 %aux1395, %aux1396
	%aux1398 = load i32, i32* @_IdPos1
	%aux1399 = icmp eq i32 %aux1397, %aux1398
	br i1 %aux1399, label %etiq652, label %etiq653
	
	etiq652:
	;___Asignacion___
	%aux1401 = load i32, i32* @_Acum1
	%aux1402 = add i32 0, 1
	%aux1403 = add i32 %aux1401, %aux1402
	store i32 %aux1403, i32* @_Acum1
	br label %etiq656
	
	etiq656:
	;___Asignacion___
	%aux1405 = load i32, i32* @_IdPos1
	%aux1406 = add i32 0, 1
	%aux1407 = add i32 %aux1405, %aux1406
	store i32 %aux1407, i32* @_IdPos1
	br label %etiq658
	
	etiq658:
	;___Asignacion___
	%aux1409 = load i32, i32* @_Pivot1
	%aux1410 = add i32 0, 1
	%aux1411 = sub i32 %aux1409, %aux1410
	store i32 %aux1411, i32* @_Pivot1
	br label %etiq661
	
	etiq653:
	;___Asignacion___
	%aux1413 = load i32, i32* @_IdPos1
	%aux1414 = add i32 0, 1
	%aux1415 = add i32 %aux1413, %aux1414
	store i32 %aux1415, i32* @_IdPos1
	br label %etiq661
	
	etiq661:
	;___IfElse___
	%aux1417 = add i32 0, 100
	%aux1418 = load i32, i32* @_Pivot1
	%aux1419 = sub i32 %aux1417, %aux1418
	%aux1420 = load i32, i32* @_IdPos1
	%aux1421 = icmp eq i32 %aux1419, %aux1420
	br i1 %aux1421, label %etiq662, label %etiq663
	
	etiq662:
	;___Asignacion___
	%aux1423 = load i32, i32* @_Acum1
	%aux1424 = add i32 0, 1
	%aux1425 = add i32 %aux1423, %aux1424
	store i32 %aux1425, i32* @_Acum1
	br label %etiq666
	
	etiq666:
	;___Asignacion___
	%aux1427 = load i32, i32* @_IdPos1
	%aux1428 = add i32 0, 1
	%aux1429 = add i32 %aux1427, %aux1428
	store i32 %aux1429, i32* @_IdPos1
	br label %etiq668
	
	etiq668:
	;___Asignacion___
	%aux1431 = load i32, i32* @_Pivot1
	%aux1432 = add i32 0, 1
	%aux1433 = sub i32 %aux1431, %aux1432
	store i32 %aux1433, i32* @_Pivot1
	br label %etiq671
	
	etiq663:
	;___Asignacion___
	%aux1435 = load i32, i32* @_IdPos1
	%aux1436 = add i32 0, 1
	%aux1437 = add i32 %aux1435, %aux1436
	store i32 %aux1437, i32* @_IdPos1
	br label %etiq671
	
	etiq671:
	;___IfElse___
	%aux1439 = add i32 0, 100
	%aux1440 = load i32, i32* @_Pivot1
	%aux1441 = sub i32 %aux1439, %aux1440
	%aux1442 = load i32, i32* @_IdPos1
	%aux1443 = icmp eq i32 %aux1441, %aux1442
	br i1 %aux1443, label %etiq672, label %etiq673
	
	etiq672:
	;___Asignacion___
	%aux1445 = load i32, i32* @_Acum1
	%aux1446 = add i32 0, 1
	%aux1447 = add i32 %aux1445, %aux1446
	store i32 %aux1447, i32* @_Acum1
	br label %etiq676
	
	etiq676:
	;___Asignacion___
	%aux1449 = load i32, i32* @_IdPos1
	%aux1450 = add i32 0, 1
	%aux1451 = add i32 %aux1449, %aux1450
	store i32 %aux1451, i32* @_IdPos1
	br label %etiq678
	
	etiq678:
	;___Asignacion___
	%aux1453 = load i32, i32* @_Pivot1
	%aux1454 = add i32 0, 1
	%aux1455 = sub i32 %aux1453, %aux1454
	store i32 %aux1455, i32* @_Pivot1
	br label %etiq681
	
	etiq673:
	;___Asignacion___
	%aux1457 = load i32, i32* @_IdPos1
	%aux1458 = add i32 0, 1
	%aux1459 = add i32 %aux1457, %aux1458
	store i32 %aux1459, i32* @_IdPos1
	br label %etiq681
	
	etiq681:
	;___IfElse___
	%aux1461 = add i32 0, 100
	%aux1462 = load i32, i32* @_Pivot1
	%aux1463 = sub i32 %aux1461, %aux1462
	%aux1464 = load i32, i32* @_IdPos1
	%aux1465 = icmp eq i32 %aux1463, %aux1464
	br i1 %aux1465, label %etiq682, label %etiq683
	
	etiq682:
	;___Asignacion___
	%aux1467 = load i32, i32* @_Acum1
	%aux1468 = add i32 0, 1
	%aux1469 = add i32 %aux1467, %aux1468
	store i32 %aux1469, i32* @_Acum1
	br label %etiq686
	
	etiq686:
	;___Asignacion___
	%aux1471 = load i32, i32* @_IdPos1
	%aux1472 = add i32 0, 1
	%aux1473 = add i32 %aux1471, %aux1472
	store i32 %aux1473, i32* @_IdPos1
	br label %etiq688
	
	etiq688:
	;___Asignacion___
	%aux1475 = load i32, i32* @_Pivot1
	%aux1476 = add i32 0, 1
	%aux1477 = sub i32 %aux1475, %aux1476
	store i32 %aux1477, i32* @_Pivot1
	br label %etiq691
	
	etiq683:
	;___Asignacion___
	%aux1479 = load i32, i32* @_IdPos1
	%aux1480 = add i32 0, 1
	%aux1481 = add i32 %aux1479, %aux1480
	store i32 %aux1481, i32* @_IdPos1
	br label %etiq691
	
	etiq691:
	;___IfElse___
	%aux1483 = add i32 0, 100
	%aux1484 = load i32, i32* @_Pivot1
	%aux1485 = sub i32 %aux1483, %aux1484
	%aux1486 = load i32, i32* @_IdPos1
	%aux1487 = icmp eq i32 %aux1485, %aux1486
	br i1 %aux1487, label %etiq692, label %etiq693
	
	etiq692:
	;___Asignacion___
	%aux1489 = load i32, i32* @_Acum1
	%aux1490 = add i32 0, 1
	%aux1491 = add i32 %aux1489, %aux1490
	store i32 %aux1491, i32* @_Acum1
	br label %etiq696
	
	etiq696:
	;___Asignacion___
	%aux1493 = load i32, i32* @_IdPos1
	%aux1494 = add i32 0, 1
	%aux1495 = add i32 %aux1493, %aux1494
	store i32 %aux1495, i32* @_IdPos1
	br label %etiq698
	
	etiq698:
	;___Asignacion___
	%aux1497 = load i32, i32* @_Pivot1
	%aux1498 = add i32 0, 1
	%aux1499 = sub i32 %aux1497, %aux1498
	store i32 %aux1499, i32* @_Pivot1
	br label %etiq701
	
	etiq693:
	;___Asignacion___
	%aux1501 = load i32, i32* @_IdPos1
	%aux1502 = add i32 0, 1
	%aux1503 = add i32 %aux1501, %aux1502
	store i32 %aux1503, i32* @_IdPos1
	br label %etiq701
	
	etiq701:
	;___IfElse___
	%aux1505 = add i32 0, 100
	%aux1506 = load i32, i32* @_Pivot1
	%aux1507 = sub i32 %aux1505, %aux1506
	%aux1508 = load i32, i32* @_IdPos1
	%aux1509 = icmp eq i32 %aux1507, %aux1508
	br i1 %aux1509, label %etiq702, label %etiq703
	
	etiq702:
	;___Asignacion___
	%aux1511 = load i32, i32* @_Acum1
	%aux1512 = add i32 0, 1
	%aux1513 = add i32 %aux1511, %aux1512
	store i32 %aux1513, i32* @_Acum1
	br label %etiq706
	
	etiq706:
	;___Asignacion___
	%aux1515 = load i32, i32* @_IdPos1
	%aux1516 = add i32 0, 1
	%aux1517 = add i32 %aux1515, %aux1516
	store i32 %aux1517, i32* @_IdPos1
	br label %etiq708
	
	etiq708:
	;___Asignacion___
	%aux1519 = load i32, i32* @_Pivot1
	%aux1520 = add i32 0, 1
	%aux1521 = sub i32 %aux1519, %aux1520
	store i32 %aux1521, i32* @_Pivot1
	br label %etiq711
	
	etiq703:
	;___Asignacion___
	%aux1523 = load i32, i32* @_IdPos1
	%aux1524 = add i32 0, 1
	%aux1525 = add i32 %aux1523, %aux1524
	store i32 %aux1525, i32* @_IdPos1
	br label %etiq711
	
	etiq711:
	;___IfElse___
	%aux1527 = add i32 0, 100
	%aux1528 = load i32, i32* @_Pivot1
	%aux1529 = sub i32 %aux1527, %aux1528
	%aux1530 = load i32, i32* @_IdPos1
	%aux1531 = icmp eq i32 %aux1529, %aux1530
	br i1 %aux1531, label %etiq712, label %etiq713
	
	etiq712:
	;___Asignacion___
	%aux1533 = load i32, i32* @_Acum1
	%aux1534 = add i32 0, 1
	%aux1535 = add i32 %aux1533, %aux1534
	store i32 %aux1535, i32* @_Acum1
	br label %etiq716
	
	etiq716:
	;___Asignacion___
	%aux1537 = load i32, i32* @_IdPos1
	%aux1538 = add i32 0, 1
	%aux1539 = add i32 %aux1537, %aux1538
	store i32 %aux1539, i32* @_IdPos1
	br label %etiq718
	
	etiq718:
	;___Asignacion___
	%aux1541 = load i32, i32* @_Pivot1
	%aux1542 = add i32 0, 1
	%aux1543 = sub i32 %aux1541, %aux1542
	store i32 %aux1543, i32* @_Pivot1
	br label %etiq721
	
	etiq713:
	;___Asignacion___
	%aux1545 = load i32, i32* @_IdPos1
	%aux1546 = add i32 0, 1
	%aux1547 = add i32 %aux1545, %aux1546
	store i32 %aux1547, i32* @_IdPos1
	br label %etiq721
	
	etiq721:
	;___IfElse___
	%aux1549 = add i32 0, 100
	%aux1550 = load i32, i32* @_Pivot1
	%aux1551 = sub i32 %aux1549, %aux1550
	%aux1552 = load i32, i32* @_IdPos1
	%aux1553 = icmp eq i32 %aux1551, %aux1552
	br i1 %aux1553, label %etiq722, label %etiq723
	
	etiq722:
	;___Asignacion___
	%aux1555 = load i32, i32* @_Acum1
	%aux1556 = add i32 0, 1
	%aux1557 = add i32 %aux1555, %aux1556
	store i32 %aux1557, i32* @_Acum1
	br label %etiq726
	
	etiq726:
	;___Asignacion___
	%aux1559 = load i32, i32* @_IdPos1
	%aux1560 = add i32 0, 1
	%aux1561 = add i32 %aux1559, %aux1560
	store i32 %aux1561, i32* @_IdPos1
	br label %etiq728
	
	etiq728:
	;___Asignacion___
	%aux1563 = load i32, i32* @_Pivot1
	%aux1564 = add i32 0, 1
	%aux1565 = sub i32 %aux1563, %aux1564
	store i32 %aux1565, i32* @_Pivot1
	br label %etiq731
	
	etiq723:
	;___Asignacion___
	%aux1567 = load i32, i32* @_IdPos1
	%aux1568 = add i32 0, 1
	%aux1569 = add i32 %aux1567, %aux1568
	store i32 %aux1569, i32* @_IdPos1
	br label %etiq731
	
	etiq731:
	;___IfElse___
	%aux1571 = add i32 0, 100
	%aux1572 = load i32, i32* @_Pivot1
	%aux1573 = sub i32 %aux1571, %aux1572
	%aux1574 = load i32, i32* @_IdPos1
	%aux1575 = icmp eq i32 %aux1573, %aux1574
	br i1 %aux1575, label %etiq732, label %etiq733
	
	etiq732:
	;___Asignacion___
	%aux1577 = load i32, i32* @_Acum1
	%aux1578 = add i32 0, 1
	%aux1579 = add i32 %aux1577, %aux1578
	store i32 %aux1579, i32* @_Acum1
	br label %etiq736
	
	etiq736:
	;___Asignacion___
	%aux1581 = load i32, i32* @_IdPos1
	%aux1582 = add i32 0, 1
	%aux1583 = add i32 %aux1581, %aux1582
	store i32 %aux1583, i32* @_IdPos1
	br label %etiq738
	
	etiq738:
	;___Asignacion___
	%aux1585 = load i32, i32* @_Pivot1
	%aux1586 = add i32 0, 1
	%aux1587 = sub i32 %aux1585, %aux1586
	store i32 %aux1587, i32* @_Pivot1
	br label %etiq741
	
	etiq733:
	;___Asignacion___
	%aux1589 = load i32, i32* @_IdPos1
	%aux1590 = add i32 0, 1
	%aux1591 = add i32 %aux1589, %aux1590
	store i32 %aux1591, i32* @_IdPos1
	br label %etiq741
	
	etiq741:
	;___IfElse___
	%aux1593 = add i32 0, 100
	%aux1594 = load i32, i32* @_Pivot1
	%aux1595 = sub i32 %aux1593, %aux1594
	%aux1596 = load i32, i32* @_IdPos1
	%aux1597 = icmp eq i32 %aux1595, %aux1596
	br i1 %aux1597, label %etiq742, label %etiq743
	
	etiq742:
	;___Asignacion___
	%aux1599 = load i32, i32* @_Acum1
	%aux1600 = add i32 0, 1
	%aux1601 = add i32 %aux1599, %aux1600
	store i32 %aux1601, i32* @_Acum1
	br label %etiq746
	
	etiq746:
	;___Asignacion___
	%aux1603 = load i32, i32* @_IdPos1
	%aux1604 = add i32 0, 1
	%aux1605 = add i32 %aux1603, %aux1604
	store i32 %aux1605, i32* @_IdPos1
	br label %etiq748
	
	etiq748:
	;___Asignacion___
	%aux1607 = load i32, i32* @_Pivot1
	%aux1608 = add i32 0, 1
	%aux1609 = sub i32 %aux1607, %aux1608
	store i32 %aux1609, i32* @_Pivot1
	br label %etiq751
	
	etiq743:
	;___Asignacion___
	%aux1611 = load i32, i32* @_IdPos1
	%aux1612 = add i32 0, 1
	%aux1613 = add i32 %aux1611, %aux1612
	store i32 %aux1613, i32* @_IdPos1
	br label %etiq751
	
	etiq751:
	;___IfElse___
	%aux1615 = add i32 0, 100
	%aux1616 = load i32, i32* @_Pivot1
	%aux1617 = sub i32 %aux1615, %aux1616
	%aux1618 = load i32, i32* @_IdPos1
	%aux1619 = icmp eq i32 %aux1617, %aux1618
	br i1 %aux1619, label %etiq752, label %etiq753
	
	etiq752:
	;___Asignacion___
	%aux1621 = load i32, i32* @_Acum1
	%aux1622 = add i32 0, 1
	%aux1623 = add i32 %aux1621, %aux1622
	store i32 %aux1623, i32* @_Acum1
	br label %etiq756
	
	etiq756:
	;___Asignacion___
	%aux1625 = load i32, i32* @_IdPos1
	%aux1626 = add i32 0, 1
	%aux1627 = add i32 %aux1625, %aux1626
	store i32 %aux1627, i32* @_IdPos1
	br label %etiq758
	
	etiq758:
	;___Asignacion___
	%aux1629 = load i32, i32* @_Pivot1
	%aux1630 = add i32 0, 1
	%aux1631 = sub i32 %aux1629, %aux1630
	store i32 %aux1631, i32* @_Pivot1
	br label %etiq761
	
	etiq753:
	;___Asignacion___
	%aux1633 = load i32, i32* @_IdPos1
	%aux1634 = add i32 0, 1
	%aux1635 = add i32 %aux1633, %aux1634
	store i32 %aux1635, i32* @_IdPos1
	br label %etiq761
	
	etiq761:
	;___IfElse___
	%aux1637 = add i32 0, 100
	%aux1638 = load i32, i32* @_Pivot1
	%aux1639 = sub i32 %aux1637, %aux1638
	%aux1640 = load i32, i32* @_IdPos1
	%aux1641 = icmp eq i32 %aux1639, %aux1640
	br i1 %aux1641, label %etiq762, label %etiq763
	
	etiq762:
	;___Asignacion___
	%aux1643 = load i32, i32* @_Acum1
	%aux1644 = add i32 0, 1
	%aux1645 = add i32 %aux1643, %aux1644
	store i32 %aux1645, i32* @_Acum1
	br label %etiq766
	
	etiq766:
	;___Asignacion___
	%aux1647 = load i32, i32* @_IdPos1
	%aux1648 = add i32 0, 1
	%aux1649 = add i32 %aux1647, %aux1648
	store i32 %aux1649, i32* @_IdPos1
	br label %etiq768
	
	etiq768:
	;___Asignacion___
	%aux1651 = load i32, i32* @_Pivot1
	%aux1652 = add i32 0, 1
	%aux1653 = sub i32 %aux1651, %aux1652
	store i32 %aux1653, i32* @_Pivot1
	br label %etiq771
	
	etiq763:
	;___Asignacion___
	%aux1655 = load i32, i32* @_IdPos1
	%aux1656 = add i32 0, 1
	%aux1657 = add i32 %aux1655, %aux1656
	store i32 %aux1657, i32* @_IdPos1
	br label %etiq771
	
	etiq771:
	;___IfElse___
	%aux1659 = add i32 0, 100
	%aux1660 = load i32, i32* @_Pivot1
	%aux1661 = sub i32 %aux1659, %aux1660
	%aux1662 = load i32, i32* @_IdPos1
	%aux1663 = icmp eq i32 %aux1661, %aux1662
	br i1 %aux1663, label %etiq772, label %etiq773
	
	etiq772:
	;___Asignacion___
	%aux1665 = load i32, i32* @_Acum1
	%aux1666 = add i32 0, 1
	%aux1667 = add i32 %aux1665, %aux1666
	store i32 %aux1667, i32* @_Acum1
	br label %etiq776
	
	etiq776:
	;___Asignacion___
	%aux1669 = load i32, i32* @_IdPos1
	%aux1670 = add i32 0, 1
	%aux1671 = add i32 %aux1669, %aux1670
	store i32 %aux1671, i32* @_IdPos1
	br label %etiq778
	
	etiq778:
	;___Asignacion___
	%aux1673 = load i32, i32* @_Pivot1
	%aux1674 = add i32 0, 1
	%aux1675 = sub i32 %aux1673, %aux1674
	store i32 %aux1675, i32* @_Pivot1
	br label %etiq781
	
	etiq773:
	;___Asignacion___
	%aux1677 = load i32, i32* @_IdPos1
	%aux1678 = add i32 0, 1
	%aux1679 = add i32 %aux1677, %aux1678
	store i32 %aux1679, i32* @_IdPos1
	br label %etiq781
	
	etiq781:
	;___IfElse___
	%aux1681 = add i32 0, 100
	%aux1682 = load i32, i32* @_Pivot1
	%aux1683 = sub i32 %aux1681, %aux1682
	%aux1684 = load i32, i32* @_IdPos1
	%aux1685 = icmp eq i32 %aux1683, %aux1684
	br i1 %aux1685, label %etiq782, label %etiq783
	
	etiq782:
	;___Asignacion___
	%aux1687 = load i32, i32* @_Acum1
	%aux1688 = add i32 0, 1
	%aux1689 = add i32 %aux1687, %aux1688
	store i32 %aux1689, i32* @_Acum1
	br label %etiq786
	
	etiq786:
	;___Asignacion___
	%aux1691 = load i32, i32* @_IdPos1
	%aux1692 = add i32 0, 1
	%aux1693 = add i32 %aux1691, %aux1692
	store i32 %aux1693, i32* @_IdPos1
	br label %etiq788
	
	etiq788:
	;___Asignacion___
	%aux1695 = load i32, i32* @_Pivot1
	%aux1696 = add i32 0, 1
	%aux1697 = sub i32 %aux1695, %aux1696
	store i32 %aux1697, i32* @_Pivot1
	br label %etiq791
	
	etiq783:
	;___Asignacion___
	%aux1699 = load i32, i32* @_IdPos1
	%aux1700 = add i32 0, 1
	%aux1701 = add i32 %aux1699, %aux1700
	store i32 %aux1701, i32* @_IdPos1
	br label %etiq791
	
	etiq791:
	;___IfElse___
	%aux1703 = add i32 0, 100
	%aux1704 = load i32, i32* @_Pivot1
	%aux1705 = sub i32 %aux1703, %aux1704
	%aux1706 = load i32, i32* @_IdPos1
	%aux1707 = icmp eq i32 %aux1705, %aux1706
	br i1 %aux1707, label %etiq792, label %etiq793
	
	etiq792:
	;___Asignacion___
	%aux1709 = load i32, i32* @_Acum1
	%aux1710 = add i32 0, 1
	%aux1711 = add i32 %aux1709, %aux1710
	store i32 %aux1711, i32* @_Acum1
	br label %etiq796
	
	etiq796:
	;___Asignacion___
	%aux1713 = load i32, i32* @_IdPos1
	%aux1714 = add i32 0, 1
	%aux1715 = add i32 %aux1713, %aux1714
	store i32 %aux1715, i32* @_IdPos1
	br label %etiq798
	
	etiq798:
	;___Asignacion___
	%aux1717 = load i32, i32* @_Pivot1
	%aux1718 = add i32 0, 1
	%aux1719 = sub i32 %aux1717, %aux1718
	store i32 %aux1719, i32* @_Pivot1
	br label %etiq801
	
	etiq793:
	;___Asignacion___
	%aux1721 = load i32, i32* @_IdPos1
	%aux1722 = add i32 0, 1
	%aux1723 = add i32 %aux1721, %aux1722
	store i32 %aux1723, i32* @_IdPos1
	br label %etiq801
	
	etiq801:
	;___IfElse___
	%aux1725 = add i32 0, 100
	%aux1726 = load i32, i32* @_Pivot1
	%aux1727 = sub i32 %aux1725, %aux1726
	%aux1728 = load i32, i32* @_IdPos1
	%aux1729 = icmp eq i32 %aux1727, %aux1728
	br i1 %aux1729, label %etiq802, label %etiq803
	
	etiq802:
	;___Asignacion___
	%aux1731 = load i32, i32* @_Acum1
	%aux1732 = add i32 0, 1
	%aux1733 = add i32 %aux1731, %aux1732
	store i32 %aux1733, i32* @_Acum1
	br label %etiq806
	
	etiq806:
	;___Asignacion___
	%aux1735 = load i32, i32* @_IdPos1
	%aux1736 = add i32 0, 1
	%aux1737 = add i32 %aux1735, %aux1736
	store i32 %aux1737, i32* @_IdPos1
	br label %etiq808
	
	etiq808:
	;___Asignacion___
	%aux1739 = load i32, i32* @_Pivot1
	%aux1740 = add i32 0, 1
	%aux1741 = sub i32 %aux1739, %aux1740
	store i32 %aux1741, i32* @_Pivot1
	br label %etiq811
	
	etiq803:
	;___Asignacion___
	%aux1743 = load i32, i32* @_IdPos1
	%aux1744 = add i32 0, 1
	%aux1745 = add i32 %aux1743, %aux1744
	store i32 %aux1745, i32* @_IdPos1
	br label %etiq811
	
	etiq811:
	;___IfElse___
	%aux1747 = add i32 0, 100
	%aux1748 = load i32, i32* @_Pivot1
	%aux1749 = sub i32 %aux1747, %aux1748
	%aux1750 = load i32, i32* @_IdPos1
	%aux1751 = icmp eq i32 %aux1749, %aux1750
	br i1 %aux1751, label %etiq812, label %etiq813
	
	etiq812:
	;___Asignacion___
	%aux1753 = load i32, i32* @_Acum1
	%aux1754 = add i32 0, 1
	%aux1755 = add i32 %aux1753, %aux1754
	store i32 %aux1755, i32* @_Acum1
	br label %etiq816
	
	etiq816:
	;___Asignacion___
	%aux1757 = load i32, i32* @_IdPos1
	%aux1758 = add i32 0, 1
	%aux1759 = add i32 %aux1757, %aux1758
	store i32 %aux1759, i32* @_IdPos1
	br label %etiq818
	
	etiq818:
	;___Asignacion___
	%aux1761 = load i32, i32* @_Pivot1
	%aux1762 = add i32 0, 1
	%aux1763 = sub i32 %aux1761, %aux1762
	store i32 %aux1763, i32* @_Pivot1
	br label %etiq821
	
	etiq813:
	;___Asignacion___
	%aux1765 = load i32, i32* @_IdPos1
	%aux1766 = add i32 0, 1
	%aux1767 = add i32 %aux1765, %aux1766
	store i32 %aux1767, i32* @_IdPos1
	br label %etiq821
	
	etiq821:
	;___IfElse___
	%aux1769 = add i32 0, 100
	%aux1770 = load i32, i32* @_Pivot1
	%aux1771 = sub i32 %aux1769, %aux1770
	%aux1772 = load i32, i32* @_IdPos1
	%aux1773 = icmp eq i32 %aux1771, %aux1772
	br i1 %aux1773, label %etiq822, label %etiq823
	
	etiq822:
	;___Asignacion___
	%aux1775 = load i32, i32* @_Acum1
	%aux1776 = add i32 0, 1
	%aux1777 = add i32 %aux1775, %aux1776
	store i32 %aux1777, i32* @_Acum1
	br label %etiq826
	
	etiq826:
	;___Asignacion___
	%aux1779 = load i32, i32* @_IdPos1
	%aux1780 = add i32 0, 1
	%aux1781 = add i32 %aux1779, %aux1780
	store i32 %aux1781, i32* @_IdPos1
	br label %etiq828
	
	etiq828:
	;___Asignacion___
	%aux1783 = load i32, i32* @_Pivot1
	%aux1784 = add i32 0, 1
	%aux1785 = sub i32 %aux1783, %aux1784
	store i32 %aux1785, i32* @_Pivot1
	br label %etiq831
	
	etiq823:
	;___Asignacion___
	%aux1787 = load i32, i32* @_IdPos1
	%aux1788 = add i32 0, 1
	%aux1789 = add i32 %aux1787, %aux1788
	store i32 %aux1789, i32* @_IdPos1
	br label %etiq831
	
	etiq831:
	;___IfElse___
	%aux1791 = add i32 0, 100
	%aux1792 = load i32, i32* @_Pivot1
	%aux1793 = sub i32 %aux1791, %aux1792
	%aux1794 = load i32, i32* @_IdPos1
	%aux1795 = icmp eq i32 %aux1793, %aux1794
	br i1 %aux1795, label %etiq832, label %etiq833
	
	etiq832:
	;___Asignacion___
	%aux1797 = load i32, i32* @_Acum1
	%aux1798 = add i32 0, 1
	%aux1799 = add i32 %aux1797, %aux1798
	store i32 %aux1799, i32* @_Acum1
	br label %etiq836
	
	etiq836:
	;___Asignacion___
	%aux1801 = load i32, i32* @_IdPos1
	%aux1802 = add i32 0, 1
	%aux1803 = add i32 %aux1801, %aux1802
	store i32 %aux1803, i32* @_IdPos1
	br label %etiq838
	
	etiq838:
	;___Asignacion___
	%aux1805 = load i32, i32* @_Pivot1
	%aux1806 = add i32 0, 1
	%aux1807 = sub i32 %aux1805, %aux1806
	store i32 %aux1807, i32* @_Pivot1
	br label %etiq841
	
	etiq833:
	;___Asignacion___
	%aux1809 = load i32, i32* @_IdPos1
	%aux1810 = add i32 0, 1
	%aux1811 = add i32 %aux1809, %aux1810
	store i32 %aux1811, i32* @_IdPos1
	br label %etiq841
	
	etiq841:
	;___IfElse___
	%aux1813 = add i32 0, 100
	%aux1814 = load i32, i32* @_Pivot1
	%aux1815 = sub i32 %aux1813, %aux1814
	%aux1816 = load i32, i32* @_IdPos1
	%aux1817 = icmp eq i32 %aux1815, %aux1816
	br i1 %aux1817, label %etiq842, label %etiq843
	
	etiq842:
	;___Asignacion___
	%aux1819 = load i32, i32* @_Acum1
	%aux1820 = add i32 0, 1
	%aux1821 = add i32 %aux1819, %aux1820
	store i32 %aux1821, i32* @_Acum1
	br label %etiq846
	
	etiq846:
	;___Asignacion___
	%aux1823 = load i32, i32* @_IdPos1
	%aux1824 = add i32 0, 1
	%aux1825 = add i32 %aux1823, %aux1824
	store i32 %aux1825, i32* @_IdPos1
	br label %etiq848
	
	etiq848:
	;___Asignacion___
	%aux1827 = load i32, i32* @_Pivot1
	%aux1828 = add i32 0, 1
	%aux1829 = sub i32 %aux1827, %aux1828
	store i32 %aux1829, i32* @_Pivot1
	br label %etiq851
	
	etiq843:
	;___Asignacion___
	%aux1831 = load i32, i32* @_IdPos1
	%aux1832 = add i32 0, 1
	%aux1833 = add i32 %aux1831, %aux1832
	store i32 %aux1833, i32* @_IdPos1
	br label %etiq851
	
	etiq851:
	;___IfElse___
	%aux1835 = add i32 0, 100
	%aux1836 = load i32, i32* @_Pivot1
	%aux1837 = sub i32 %aux1835, %aux1836
	%aux1838 = load i32, i32* @_IdPos1
	%aux1839 = icmp eq i32 %aux1837, %aux1838
	br i1 %aux1839, label %etiq852, label %etiq853
	
	etiq852:
	;___Asignacion___
	%aux1841 = load i32, i32* @_Acum1
	%aux1842 = add i32 0, 1
	%aux1843 = add i32 %aux1841, %aux1842
	store i32 %aux1843, i32* @_Acum1
	br label %etiq856
	
	etiq856:
	;___Asignacion___
	%aux1845 = load i32, i32* @_IdPos1
	%aux1846 = add i32 0, 1
	%aux1847 = add i32 %aux1845, %aux1846
	store i32 %aux1847, i32* @_IdPos1
	br label %etiq858
	
	etiq858:
	;___Asignacion___
	%aux1849 = load i32, i32* @_Pivot1
	%aux1850 = add i32 0, 1
	%aux1851 = sub i32 %aux1849, %aux1850
	store i32 %aux1851, i32* @_Pivot1
	br label %etiq861
	
	etiq853:
	;___Asignacion___
	%aux1853 = load i32, i32* @_IdPos1
	%aux1854 = add i32 0, 1
	%aux1855 = add i32 %aux1853, %aux1854
	store i32 %aux1855, i32* @_IdPos1
	br label %etiq861
	
	etiq861:
	;___IfElse___
	%aux1857 = add i32 0, 100
	%aux1858 = load i32, i32* @_Pivot1
	%aux1859 = sub i32 %aux1857, %aux1858
	%aux1860 = load i32, i32* @_IdPos1
	%aux1861 = icmp eq i32 %aux1859, %aux1860
	br i1 %aux1861, label %etiq862, label %etiq863
	
	etiq862:
	;___Asignacion___
	%aux1863 = load i32, i32* @_Acum1
	%aux1864 = add i32 0, 1
	%aux1865 = add i32 %aux1863, %aux1864
	store i32 %aux1865, i32* @_Acum1
	br label %etiq866
	
	etiq866:
	;___Asignacion___
	%aux1867 = load i32, i32* @_IdPos1
	%aux1868 = add i32 0, 1
	%aux1869 = add i32 %aux1867, %aux1868
	store i32 %aux1869, i32* @_IdPos1
	br label %etiq868
	
	etiq868:
	;___Asignacion___
	%aux1871 = load i32, i32* @_Pivot1
	%aux1872 = add i32 0, 1
	%aux1873 = sub i32 %aux1871, %aux1872
	store i32 %aux1873, i32* @_Pivot1
	br label %etiq871
	
	etiq863:
	;___Asignacion___
	%aux1875 = load i32, i32* @_IdPos1
	%aux1876 = add i32 0, 1
	%aux1877 = add i32 %aux1875, %aux1876
	store i32 %aux1877, i32* @_IdPos1
	br label %etiq871
	
	etiq871:
	;___IfElse___
	%aux1879 = add i32 0, 100
	%aux1880 = load i32, i32* @_Pivot1
	%aux1881 = sub i32 %aux1879, %aux1880
	%aux1882 = load i32, i32* @_IdPos1
	%aux1883 = icmp eq i32 %aux1881, %aux1882
	br i1 %aux1883, label %etiq872, label %etiq873
	
	etiq872:
	;___Asignacion___
	%aux1885 = load i32, i32* @_Acum1
	%aux1886 = add i32 0, 1
	%aux1887 = add i32 %aux1885, %aux1886
	store i32 %aux1887, i32* @_Acum1
	br label %etiq876
	
	etiq876:
	;___Asignacion___
	%aux1889 = load i32, i32* @_IdPos1
	%aux1890 = add i32 0, 1
	%aux1891 = add i32 %aux1889, %aux1890
	store i32 %aux1891, i32* @_IdPos1
	br label %etiq878
	
	etiq878:
	;___Asignacion___
	%aux1893 = load i32, i32* @_Pivot1
	%aux1894 = add i32 0, 1
	%aux1895 = sub i32 %aux1893, %aux1894
	store i32 %aux1895, i32* @_Pivot1
	br label %etiq881
	
	etiq873:
	;___Asignacion___
	%aux1897 = load i32, i32* @_IdPos1
	%aux1898 = add i32 0, 1
	%aux1899 = add i32 %aux1897, %aux1898
	store i32 %aux1899, i32* @_IdPos1
	br label %etiq881
	
	etiq881:
	;___IfElse___
	%aux1901 = add i32 0, 100
	%aux1902 = load i32, i32* @_Pivot1
	%aux1903 = sub i32 %aux1901, %aux1902
	%aux1904 = load i32, i32* @_IdPos1
	%aux1905 = icmp eq i32 %aux1903, %aux1904
	br i1 %aux1905, label %etiq882, label %etiq883
	
	etiq882:
	;___Asignacion___
	%aux1907 = load i32, i32* @_Acum1
	%aux1908 = add i32 0, 1
	%aux1909 = add i32 %aux1907, %aux1908
	store i32 %aux1909, i32* @_Acum1
	br label %etiq886
	
	etiq886:
	;___Asignacion___
	%aux1911 = load i32, i32* @_IdPos1
	%aux1912 = add i32 0, 1
	%aux1913 = add i32 %aux1911, %aux1912
	store i32 %aux1913, i32* @_IdPos1
	br label %etiq888
	
	etiq888:
	;___Asignacion___
	%aux1915 = load i32, i32* @_Pivot1
	%aux1916 = add i32 0, 1
	%aux1917 = sub i32 %aux1915, %aux1916
	store i32 %aux1917, i32* @_Pivot1
	br label %etiq891
	
	etiq883:
	;___Asignacion___
	%aux1919 = load i32, i32* @_IdPos1
	%aux1920 = add i32 0, 1
	%aux1921 = add i32 %aux1919, %aux1920
	store i32 %aux1921, i32* @_IdPos1
	br label %etiq891
	
	etiq891:
	;___IfElse___
	%aux1923 = add i32 0, 100
	%aux1924 = load i32, i32* @_Pivot1
	%aux1925 = sub i32 %aux1923, %aux1924
	%aux1926 = load i32, i32* @_IdPos1
	%aux1927 = icmp eq i32 %aux1925, %aux1926
	br i1 %aux1927, label %etiq892, label %etiq893
	
	etiq892:
	;___Asignacion___
	%aux1929 = load i32, i32* @_Acum1
	%aux1930 = add i32 0, 1
	%aux1931 = add i32 %aux1929, %aux1930
	store i32 %aux1931, i32* @_Acum1
	br label %etiq896
	
	etiq896:
	;___Asignacion___
	%aux1933 = load i32, i32* @_IdPos1
	%aux1934 = add i32 0, 1
	%aux1935 = add i32 %aux1933, %aux1934
	store i32 %aux1935, i32* @_IdPos1
	br label %etiq898
	
	etiq898:
	;___Asignacion___
	%aux1937 = load i32, i32* @_Pivot1
	%aux1938 = add i32 0, 1
	%aux1939 = sub i32 %aux1937, %aux1938
	store i32 %aux1939, i32* @_Pivot1
	br label %etiq901
	
	etiq893:
	;___Asignacion___
	%aux1941 = load i32, i32* @_IdPos1
	%aux1942 = add i32 0, 1
	%aux1943 = add i32 %aux1941, %aux1942
	store i32 %aux1943, i32* @_IdPos1
	br label %etiq901
	
	etiq901:
	;___IfElse___
	%aux1945 = add i32 0, 100
	%aux1946 = load i32, i32* @_Pivot1
	%aux1947 = sub i32 %aux1945, %aux1946
	%aux1948 = load i32, i32* @_IdPos1
	%aux1949 = icmp eq i32 %aux1947, %aux1948
	br i1 %aux1949, label %etiq902, label %etiq903
	
	etiq902:
	;___Asignacion___
	%aux1951 = load i32, i32* @_Acum1
	%aux1952 = add i32 0, 1
	%aux1953 = add i32 %aux1951, %aux1952
	store i32 %aux1953, i32* @_Acum1
	br label %etiq906
	
	etiq906:
	;___Asignacion___
	%aux1955 = load i32, i32* @_IdPos1
	%aux1956 = add i32 0, 1
	%aux1957 = add i32 %aux1955, %aux1956
	store i32 %aux1957, i32* @_IdPos1
	br label %etiq908
	
	etiq908:
	;___Asignacion___
	%aux1959 = load i32, i32* @_Pivot1
	%aux1960 = add i32 0, 1
	%aux1961 = sub i32 %aux1959, %aux1960
	store i32 %aux1961, i32* @_Pivot1
	br label %etiq911
	
	etiq903:
	;___Asignacion___
	%aux1963 = load i32, i32* @_IdPos1
	%aux1964 = add i32 0, 1
	%aux1965 = add i32 %aux1963, %aux1964
	store i32 %aux1965, i32* @_IdPos1
	br label %etiq911
	
	etiq911:
	;___IfElse___
	%aux1967 = add i32 0, 100
	%aux1968 = load i32, i32* @_Pivot1
	%aux1969 = sub i32 %aux1967, %aux1968
	%aux1970 = load i32, i32* @_IdPos1
	%aux1971 = icmp eq i32 %aux1969, %aux1970
	br i1 %aux1971, label %etiq912, label %etiq913
	
	etiq912:
	;___Asignacion___
	%aux1973 = load i32, i32* @_Acum1
	%aux1974 = add i32 0, 1
	%aux1975 = add i32 %aux1973, %aux1974
	store i32 %aux1975, i32* @_Acum1
	br label %etiq916
	
	etiq916:
	;___Asignacion___
	%aux1977 = load i32, i32* @_IdPos1
	%aux1978 = add i32 0, 1
	%aux1979 = add i32 %aux1977, %aux1978
	store i32 %aux1979, i32* @_IdPos1
	br label %etiq918
	
	etiq918:
	;___Asignacion___
	%aux1981 = load i32, i32* @_Pivot1
	%aux1982 = add i32 0, 1
	%aux1983 = sub i32 %aux1981, %aux1982
	store i32 %aux1983, i32* @_Pivot1
	br label %etiq921
	
	etiq913:
	;___Asignacion___
	%aux1985 = load i32, i32* @_IdPos1
	%aux1986 = add i32 0, 1
	%aux1987 = add i32 %aux1985, %aux1986
	store i32 %aux1987, i32* @_IdPos1
	br label %etiq921
	
	etiq921:
	;___IfElse___
	%aux1989 = add i32 0, 100
	%aux1990 = load i32, i32* @_Pivot1
	%aux1991 = sub i32 %aux1989, %aux1990
	%aux1992 = load i32, i32* @_IdPos1
	%aux1993 = icmp eq i32 %aux1991, %aux1992
	br i1 %aux1993, label %etiq922, label %etiq923
	
	etiq922:
	;___Asignacion___
	%aux1995 = load i32, i32* @_Acum1
	%aux1996 = add i32 0, 1
	%aux1997 = add i32 %aux1995, %aux1996
	store i32 %aux1997, i32* @_Acum1
	br label %etiq926
	
	etiq926:
	;___Asignacion___
	%aux1999 = load i32, i32* @_IdPos1
	%aux2000 = add i32 0, 1
	%aux2001 = add i32 %aux1999, %aux2000
	store i32 %aux2001, i32* @_IdPos1
	br label %etiq928
	
	etiq928:
	;___Asignacion___
	%aux2003 = load i32, i32* @_Pivot1
	%aux2004 = add i32 0, 1
	%aux2005 = sub i32 %aux2003, %aux2004
	store i32 %aux2005, i32* @_Pivot1
	br label %etiq931
	
	etiq923:
	;___Asignacion___
	%aux2007 = load i32, i32* @_IdPos1
	%aux2008 = add i32 0, 1
	%aux2009 = add i32 %aux2007, %aux2008
	store i32 %aux2009, i32* @_IdPos1
	br label %etiq931
	
	etiq931:
	;___IfElse___
	%aux2011 = add i32 0, 100
	%aux2012 = load i32, i32* @_Pivot1
	%aux2013 = sub i32 %aux2011, %aux2012
	%aux2014 = load i32, i32* @_IdPos1
	%aux2015 = icmp eq i32 %aux2013, %aux2014
	br i1 %aux2015, label %etiq932, label %etiq933
	
	etiq932:
	;___Asignacion___
	%aux2017 = load i32, i32* @_Acum1
	%aux2018 = add i32 0, 1
	%aux2019 = add i32 %aux2017, %aux2018
	store i32 %aux2019, i32* @_Acum1
	br label %etiq936
	
	etiq936:
	;___Asignacion___
	%aux2021 = load i32, i32* @_IdPos1
	%aux2022 = add i32 0, 1
	%aux2023 = add i32 %aux2021, %aux2022
	store i32 %aux2023, i32* @_IdPos1
	br label %etiq938
	
	etiq938:
	;___Asignacion___
	%aux2025 = load i32, i32* @_Pivot1
	%aux2026 = add i32 0, 1
	%aux2027 = sub i32 %aux2025, %aux2026
	store i32 %aux2027, i32* @_Pivot1
	br label %etiq941
	
	etiq933:
	;___Asignacion___
	%aux2029 = load i32, i32* @_IdPos1
	%aux2030 = add i32 0, 1
	%aux2031 = add i32 %aux2029, %aux2030
	store i32 %aux2031, i32* @_IdPos1
	br label %etiq941
	
	etiq941:
	;___IfElse___
	%aux2033 = add i32 0, 100
	%aux2034 = load i32, i32* @_Pivot1
	%aux2035 = sub i32 %aux2033, %aux2034
	%aux2036 = load i32, i32* @_IdPos1
	%aux2037 = icmp eq i32 %aux2035, %aux2036
	br i1 %aux2037, label %etiq942, label %etiq943
	
	etiq942:
	;___Asignacion___
	%aux2039 = load i32, i32* @_Acum1
	%aux2040 = add i32 0, 1
	%aux2041 = add i32 %aux2039, %aux2040
	store i32 %aux2041, i32* @_Acum1
	br label %etiq946
	
	etiq946:
	;___Asignacion___
	%aux2043 = load i32, i32* @_IdPos1
	%aux2044 = add i32 0, 1
	%aux2045 = add i32 %aux2043, %aux2044
	store i32 %aux2045, i32* @_IdPos1
	br label %etiq948
	
	etiq948:
	;___Asignacion___
	%aux2047 = load i32, i32* @_Pivot1
	%aux2048 = add i32 0, 1
	%aux2049 = sub i32 %aux2047, %aux2048
	store i32 %aux2049, i32* @_Pivot1
	br label %etiq951
	
	etiq943:
	;___Asignacion___
	%aux2051 = load i32, i32* @_IdPos1
	%aux2052 = add i32 0, 1
	%aux2053 = add i32 %aux2051, %aux2052
	store i32 %aux2053, i32* @_IdPos1
	br label %etiq951
	
	etiq951:
	;___IfElse___
	%aux2055 = add i32 0, 100
	%aux2056 = load i32, i32* @_Pivot1
	%aux2057 = sub i32 %aux2055, %aux2056
	%aux2058 = load i32, i32* @_IdPos1
	%aux2059 = icmp eq i32 %aux2057, %aux2058
	br i1 %aux2059, label %etiq952, label %etiq953
	
	etiq952:
	;___Asignacion___
	%aux2061 = load i32, i32* @_Acum1
	%aux2062 = add i32 0, 1
	%aux2063 = add i32 %aux2061, %aux2062
	store i32 %aux2063, i32* @_Acum1
	br label %etiq956
	
	etiq956:
	;___Asignacion___
	%aux2065 = load i32, i32* @_IdPos1
	%aux2066 = add i32 0, 1
	%aux2067 = add i32 %aux2065, %aux2066
	store i32 %aux2067, i32* @_IdPos1
	br label %etiq958
	
	etiq958:
	;___Asignacion___
	%aux2069 = load i32, i32* @_Pivot1
	%aux2070 = add i32 0, 1
	%aux2071 = sub i32 %aux2069, %aux2070
	store i32 %aux2071, i32* @_Pivot1
	br label %etiq961
	
	etiq953:
	;___Asignacion___
	%aux2073 = load i32, i32* @_IdPos1
	%aux2074 = add i32 0, 1
	%aux2075 = add i32 %aux2073, %aux2074
	store i32 %aux2075, i32* @_IdPos1
	br label %etiq961
	
	etiq961:
	;___IfElse___
	%aux2077 = add i32 0, 100
	%aux2078 = load i32, i32* @_Pivot1
	%aux2079 = sub i32 %aux2077, %aux2078
	%aux2080 = load i32, i32* @_IdPos1
	%aux2081 = icmp eq i32 %aux2079, %aux2080
	br i1 %aux2081, label %etiq962, label %etiq963
	
	etiq962:
	;___Asignacion___
	%aux2083 = load i32, i32* @_Acum1
	%aux2084 = add i32 0, 1
	%aux2085 = add i32 %aux2083, %aux2084
	store i32 %aux2085, i32* @_Acum1
	br label %etiq966
	
	etiq966:
	;___Asignacion___
	%aux2087 = load i32, i32* @_IdPos1
	%aux2088 = add i32 0, 1
	%aux2089 = add i32 %aux2087, %aux2088
	store i32 %aux2089, i32* @_IdPos1
	br label %etiq968
	
	etiq968:
	;___Asignacion___
	%aux2091 = load i32, i32* @_Pivot1
	%aux2092 = add i32 0, 1
	%aux2093 = sub i32 %aux2091, %aux2092
	store i32 %aux2093, i32* @_Pivot1
	br label %etiq971
	
	etiq963:
	;___Asignacion___
	%aux2095 = load i32, i32* @_IdPos1
	%aux2096 = add i32 0, 1
	%aux2097 = add i32 %aux2095, %aux2096
	store i32 %aux2097, i32* @_IdPos1
	br label %etiq971
	
	etiq971:
	;___IfElse___
	%aux2099 = add i32 0, 100
	%aux2100 = load i32, i32* @_Pivot1
	%aux2101 = sub i32 %aux2099, %aux2100
	%aux2102 = load i32, i32* @_IdPos1
	%aux2103 = icmp eq i32 %aux2101, %aux2102
	br i1 %aux2103, label %etiq972, label %etiq973
	
	etiq972:
	;___Asignacion___
	%aux2105 = load i32, i32* @_Acum1
	%aux2106 = add i32 0, 1
	%aux2107 = add i32 %aux2105, %aux2106
	store i32 %aux2107, i32* @_Acum1
	br label %etiq976
	
	etiq976:
	;___Asignacion___
	%aux2109 = load i32, i32* @_IdPos1
	%aux2110 = add i32 0, 1
	%aux2111 = add i32 %aux2109, %aux2110
	store i32 %aux2111, i32* @_IdPos1
	br label %etiq978
	
	etiq978:
	;___Asignacion___
	%aux2113 = load i32, i32* @_Pivot1
	%aux2114 = add i32 0, 1
	%aux2115 = sub i32 %aux2113, %aux2114
	store i32 %aux2115, i32* @_Pivot1
	br label %etiq981
	
	etiq973:
	;___Asignacion___
	%aux2117 = load i32, i32* @_IdPos1
	%aux2118 = add i32 0, 1
	%aux2119 = add i32 %aux2117, %aux2118
	store i32 %aux2119, i32* @_IdPos1
	br label %etiq981
	
	etiq981:
	;___IfElse___
	%aux2121 = add i32 0, 100
	%aux2122 = load i32, i32* @_Pivot1
	%aux2123 = sub i32 %aux2121, %aux2122
	%aux2124 = load i32, i32* @_IdPos1
	%aux2125 = icmp eq i32 %aux2123, %aux2124
	br i1 %aux2125, label %etiq982, label %etiq983
	
	etiq982:
	;___Asignacion___
	%aux2127 = load i32, i32* @_Acum1
	%aux2128 = add i32 0, 1
	%aux2129 = add i32 %aux2127, %aux2128
	store i32 %aux2129, i32* @_Acum1
	br label %etiq986
	
	etiq986:
	;___Asignacion___
	%aux2131 = load i32, i32* @_IdPos1
	%aux2132 = add i32 0, 1
	%aux2133 = add i32 %aux2131, %aux2132
	store i32 %aux2133, i32* @_IdPos1
	br label %etiq988
	
	etiq988:
	;___Asignacion___
	%aux2135 = load i32, i32* @_Pivot1
	%aux2136 = add i32 0, 1
	%aux2137 = sub i32 %aux2135, %aux2136
	store i32 %aux2137, i32* @_Pivot1
	br label %etiq991
	
	etiq983:
	;___Asignacion___
	%aux2139 = load i32, i32* @_IdPos1
	%aux2140 = add i32 0, 1
	%aux2141 = add i32 %aux2139, %aux2140
	store i32 %aux2141, i32* @_IdPos1
	br label %etiq991
	
	etiq991:
	;___IfElse___
	%aux2143 = add i32 0, 100
	%aux2144 = load i32, i32* @_Pivot1
	%aux2145 = sub i32 %aux2143, %aux2144
	%aux2146 = load i32, i32* @_IdPos1
	%aux2147 = icmp eq i32 %aux2145, %aux2146
	br i1 %aux2147, label %etiq992, label %etiq993
	
	etiq992:
	;___Asignacion___
	%aux2149 = load i32, i32* @_Acum1
	%aux2150 = add i32 0, 1
	%aux2151 = add i32 %aux2149, %aux2150
	store i32 %aux2151, i32* @_Acum1
	br label %etiq996
	
	etiq996:
	;___Asignacion___
	%aux2153 = load i32, i32* @_IdPos1
	%aux2154 = add i32 0, 1
	%aux2155 = add i32 %aux2153, %aux2154
	store i32 %aux2155, i32* @_IdPos1
	br label %etiq998
	
	etiq998:
	;___Asignacion___
	%aux2157 = load i32, i32* @_Pivot1
	%aux2158 = add i32 0, 1
	%aux2159 = sub i32 %aux2157, %aux2158
	store i32 %aux2159, i32* @_Pivot1
	br label %etiq1001
	
	etiq993:
	;___Asignacion___
	%aux2161 = load i32, i32* @_IdPos1
	%aux2162 = add i32 0, 1
	%aux2163 = add i32 %aux2161, %aux2162
	store i32 %aux2163, i32* @_IdPos1
	br label %etiq1001
	
	etiq1001:
	;___IfElse___
	%aux2165 = add i32 0, 100
	%aux2166 = load i32, i32* @_Pivot1
	%aux2167 = sub i32 %aux2165, %aux2166
	%aux2168 = load i32, i32* @_IdPos1
	%aux2169 = icmp eq i32 %aux2167, %aux2168
	br i1 %aux2169, label %etiq1002, label %etiq1003
	
	etiq1002:
	;___Asignacion___
	%aux2171 = load i32, i32* @_Acum1
	%aux2172 = add i32 0, 1
	%aux2173 = add i32 %aux2171, %aux2172
	store i32 %aux2173, i32* @_Acum1
	br label %etiq1006
	
	etiq1006:
	;___Asignacion___
	%aux2175 = load i32, i32* @_IdPos1
	%aux2176 = add i32 0, 1
	%aux2177 = add i32 %aux2175, %aux2176
	store i32 %aux2177, i32* @_IdPos1
	br label %etiq1008
	
	etiq1008:
	;___Asignacion___
	%aux2179 = load i32, i32* @_Pivot1
	%aux2180 = add i32 0, 1
	%aux2181 = sub i32 %aux2179, %aux2180
	store i32 %aux2181, i32* @_Pivot1
	br label %etiq1011
	
	etiq1003:
	;___Asignacion___
	%aux2183 = load i32, i32* @_IdPos1
	%aux2184 = add i32 0, 1
	%aux2185 = add i32 %aux2183, %aux2184
	store i32 %aux2185, i32* @_IdPos1
	br label %etiq1011
	
	etiq1011:
	;___IfElse___
	%aux2187 = add i32 0, 100
	%aux2188 = load i32, i32* @_Pivot1
	%aux2189 = sub i32 %aux2187, %aux2188
	%aux2190 = load i32, i32* @_IdPos1
	%aux2191 = icmp eq i32 %aux2189, %aux2190
	br i1 %aux2191, label %etiq1012, label %etiq1013
	
	etiq1012:
	;___Asignacion___
	%aux2193 = load i32, i32* @_Acum1
	%aux2194 = add i32 0, 1
	%aux2195 = add i32 %aux2193, %aux2194
	store i32 %aux2195, i32* @_Acum1
	br label %etiq1016
	
	etiq1016:
	;___Asignacion___
	%aux2197 = load i32, i32* @_IdPos1
	%aux2198 = add i32 0, 1
	%aux2199 = add i32 %aux2197, %aux2198
	store i32 %aux2199, i32* @_IdPos1
	br label %etiq1018
	
	etiq1018:
	;___Asignacion___
	%aux2201 = load i32, i32* @_Pivot1
	%aux2202 = add i32 0, 1
	%aux2203 = sub i32 %aux2201, %aux2202
	store i32 %aux2203, i32* @_Pivot1
	br label %etiq1021
	
	etiq1013:
	;___Asignacion___
	%aux2205 = load i32, i32* @_IdPos1
	%aux2206 = add i32 0, 1
	%aux2207 = add i32 %aux2205, %aux2206
	store i32 %aux2207, i32* @_IdPos1
	br label %etiq1021
	
	etiq1021:
	;___IfElse___
	%aux2209 = add i32 0, 100
	%aux2210 = load i32, i32* @_Pivot1
	%aux2211 = sub i32 %aux2209, %aux2210
	%aux2212 = load i32, i32* @_IdPos1
	%aux2213 = icmp eq i32 %aux2211, %aux2212
	br i1 %aux2213, label %etiq1022, label %etiq1023
	
	etiq1022:
	;___Asignacion___
	%aux2215 = load i32, i32* @_Acum1
	%aux2216 = add i32 0, 1
	%aux2217 = add i32 %aux2215, %aux2216
	store i32 %aux2217, i32* @_Acum1
	br label %etiq1026
	
	etiq1026:
	;___Asignacion___
	%aux2219 = load i32, i32* @_IdPos1
	%aux2220 = add i32 0, 1
	%aux2221 = add i32 %aux2219, %aux2220
	store i32 %aux2221, i32* @_IdPos1
	br label %etiq1028
	
	etiq1028:
	;___Asignacion___
	%aux2223 = load i32, i32* @_Pivot1
	%aux2224 = add i32 0, 1
	%aux2225 = sub i32 %aux2223, %aux2224
	store i32 %aux2225, i32* @_Pivot1
	br label %etiq1031
	
	etiq1023:
	;___Asignacion___
	%aux2227 = load i32, i32* @_IdPos1
	%aux2228 = add i32 0, 1
	%aux2229 = add i32 %aux2227, %aux2228
	store i32 %aux2229, i32* @_IdPos1
	br label %etiq1031
	
	etiq1031:
	;___IfElse___
	%aux2231 = add i32 0, 100
	%aux2232 = load i32, i32* @_Pivot1
	%aux2233 = sub i32 %aux2231, %aux2232
	%aux2234 = load i32, i32* @_IdPos1
	%aux2235 = icmp eq i32 %aux2233, %aux2234
	br i1 %aux2235, label %etiq1032, label %etiq1033
	
	etiq1032:
	;___Asignacion___
	%aux2237 = load i32, i32* @_Acum1
	%aux2238 = add i32 0, 1
	%aux2239 = add i32 %aux2237, %aux2238
	store i32 %aux2239, i32* @_Acum1
	br label %etiq1036
	
	etiq1036:
	;___Asignacion___
	%aux2241 = load i32, i32* @_IdPos1
	%aux2242 = add i32 0, 1
	%aux2243 = add i32 %aux2241, %aux2242
	store i32 %aux2243, i32* @_IdPos1
	br label %etiq1038
	
	etiq1038:
	;___Asignacion___
	%aux2245 = load i32, i32* @_Pivot1
	%aux2246 = add i32 0, 1
	%aux2247 = sub i32 %aux2245, %aux2246
	store i32 %aux2247, i32* @_Pivot1
	br label %etiq1041
	
	etiq1033:
	;___Asignacion___
	%aux2249 = load i32, i32* @_IdPos1
	%aux2250 = add i32 0, 1
	%aux2251 = add i32 %aux2249, %aux2250
	store i32 %aux2251, i32* @_IdPos1
	br label %etiq1041
	
	etiq1041:
	;___IfElse___
	%aux2253 = add i32 0, 100
	%aux2254 = load i32, i32* @_Pivot1
	%aux2255 = sub i32 %aux2253, %aux2254
	%aux2256 = load i32, i32* @_IdPos1
	%aux2257 = icmp eq i32 %aux2255, %aux2256
	br i1 %aux2257, label %etiq1042, label %etiq1043
	
	etiq1042:
	;___Asignacion___
	%aux2259 = load i32, i32* @_Acum1
	%aux2260 = add i32 0, 1
	%aux2261 = add i32 %aux2259, %aux2260
	store i32 %aux2261, i32* @_Acum1
	br label %etiq1046
	
	etiq1046:
	;___Asignacion___
	%aux2263 = load i32, i32* @_IdPos1
	%aux2264 = add i32 0, 1
	%aux2265 = add i32 %aux2263, %aux2264
	store i32 %aux2265, i32* @_IdPos1
	br label %etiq1048
	
	etiq1048:
	;___Asignacion___
	%aux2267 = load i32, i32* @_Pivot1
	%aux2268 = add i32 0, 1
	%aux2269 = sub i32 %aux2267, %aux2268
	store i32 %aux2269, i32* @_Pivot1
	br label %etiq1051
	
	etiq1043:
	;___Asignacion___
	%aux2271 = load i32, i32* @_IdPos1
	%aux2272 = add i32 0, 1
	%aux2273 = add i32 %aux2271, %aux2272
	store i32 %aux2273, i32* @_IdPos1
	br label %etiq1051
	
	etiq50:
	;___DisplayCadenaCaracteres___
	%aux2274 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1051
	
	etiq46:
	;___DisplayCadenaCaracteres___
	%aux2275 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1051
	
	etiq43:
	;___DisplayCadenaCaracteres___
	%aux2276 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1051
	
	etiq1051:
	;___Asignacion___
	%aux2278 = load i32, i32* @_Acum1
	store i32 %aux2278, i32* @res
	br label %etiq1052
	
	etiq1052:
	;___Asignacion___
	%aux2280 = load i32, i32* @pivot
	store i32 %aux2280, i32* @_Pivot1
	br label %etiq1053
	
	etiq1053:
	;___Asignacion___
	%aux2282 = add i32 0, 0
	store i32 %aux2282, i32* @_IdPos1
	br label %etiq1054
	
	etiq1054:
	;___DisplayCadenaCaracteres___
	%aux2283 = call i32 @puts(i8* getelementptr ([12 x i8], [12 x i8] * @str28, i32 0, i32 0))
	br label %etiq1055
	
	etiq1055:
	;___DisplayExpresion___
	%aux2285 = load i32, i32* @res
	%aux2284 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux2285)
	br label %etiq1056
	
	etiq1056:
	;___DisplayCadenaCaracteres___
	%aux2286 = call i32 @puts(i8* getelementptr ([28 x i8], [28 x i8] * @str29, i32 0, i32 0))
	br label %etiq1057
	
	etiq1057:
	;___DisplayCadenaCaracteres___
	%aux2287 = call i32 @puts(i8* getelementptr ([30 x i8], [30 x i8] * @str30, i32 0, i32 0))
	br label %etiq1058
	
	etiq1058:
	;___Asignacion___
	%aux2289 = alloca double
	%aux2290 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux2289)
	%aux2291 = load double, double* %aux2289
	store double %aux2291, double* @peso
	br label %etiq1059
	
	etiq1059:
	;___DisplayCadenaCaracteres___
	%aux2292 = call i32 @puts(i8* getelementptr ([32 x i8], [32 x i8] * @str31, i32 0, i32 0))
	br label %etiq1060
	
	etiq1060:
	;___Asignacion___
	%aux2294 = alloca double
	%aux2295 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux2294)
	%aux2296 = load double, double* %aux2294
	store double %aux2296, double* @altura
	br label %etiq1061
	
	etiq1061:
	;___Asignacion___
	%aux2298 = add i1 0, 1
	store i1 %aux2298, i1* @aux2
	br label %etiq1062
	
	etiq1062:
	;___While___
	%aux2300 = load i1, i1* @aux2
	br i1 %aux2300, label %etiq1063, label %etiq1096
	
	etiq1063:
	;___DisplayCadenaCaracteres___
	%aux2301 = call i32 @puts(i8* getelementptr ([90 x i8], [90 x i8] * @str32, i32 0, i32 0))
	br label %etiq1065
	
	etiq1065:
	;___Asignacion___
	%aux2303 = alloca i32
	%aux2304 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux2303)
	%aux2305 = load i32, i32* %aux2303
	store i32 %aux2305, i32* @res
	br label %etiq1066
	
	etiq1066:
	;___IfElse___
	%aux2307 = load i32, i32* @res
	%aux2308 = add i32 0, 1
	%aux2309 = icmp eq i32 %aux2307, %aux2308
	br i1 %aux2309, label %etiq1068, label %etiq1069
	
	etiq1068:
	;___DisplayCadenaCaracteres___
	%aux2310 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str33, i32 0, i32 0))
	br label %etiq1071
	
	etiq1071:
	;___DisplayExpresion___
	%aux2312 = load double, double* @peso
	%aux2313 = load double, double* @altura
	%aux2314 = fmul double %aux2312, %aux2313
	%aux2315 = load i32, i32* @edad
	%aux2316 = sitofp i32 %aux2315 to double
	%aux2317 = fmul double %aux2314, %aux2316
	%aux2311 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux2317)
	br label %etiq1073
	
	etiq1073:
	;___Asignacion___
	%aux2319 = load i1, i1* @aux2
	%aux2320 = xor i1 %aux2319, 1
	store i1 %aux2320, i1* @aux2
	br label %etiq1062
	
	etiq1069:
	;___IfElse___
	%aux2322 = load i32, i32* @res
	%aux2323 = add i32 0, 2
	%aux2324 = icmp eq i32 %aux2322, %aux2323
	br i1 %aux2324, label %etiq1075, label %etiq1076
	
	etiq1075:
	;___DisplayCadenaCaracteres___
	%aux2325 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str34, i32 0, i32 0))
	br label %etiq1078
	
	etiq1078:
	;___DisplayExpresion___
	%aux2327 = load double, double* @peso
	%aux2328 = load double, double* @altura
	%aux2329 = fdiv double %aux2327, %aux2328
	%aux2330 = load i32, i32* @edad
	%aux2331 = sitofp i32 %aux2330 to double
	%aux2332 = fdiv double %aux2329, %aux2331
	%aux2326 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux2332)
	br label %etiq1080
	
	etiq1080:
	;___Asignacion___
	%aux2334 = load i1, i1* @aux2
	%aux2335 = xor i1 %aux2334, 1
	store i1 %aux2335, i1* @aux2
	br label %etiq1062
	
	etiq1076:
	;___IfElse___
	%aux2337 = load i32, i32* @res
	%aux2338 = add i32 0, 3
	%aux2339 = icmp eq i32 %aux2337, %aux2338
	br i1 %aux2339, label %etiq1082, label %etiq1083
	
	etiq1082:
	;___DisplayCadenaCaracteres___
	%aux2340 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str35, i32 0, i32 0))
	br label %etiq1085
	
	etiq1085:
	;___DisplayExpresion___
	%aux2342 = load double, double* @peso
	%aux2343 = load double, double* @altura
	%aux2344 = fadd double %aux2342, %aux2343
	%aux2345 = load i32, i32* @edad
	%aux2346 = sitofp i32 %aux2345 to double
	%aux2347 = fadd double %aux2344, %aux2346
	%aux2341 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux2347)
	br label %etiq1087
	
	etiq1087:
	;___Asignacion___
	%aux2349 = load i1, i1* @aux2
	%aux2350 = xor i1 %aux2349, 1
	store i1 %aux2350, i1* @aux2
	br label %etiq1062
	
	etiq1083:
	;___IfElse___
	%aux2352 = load i32, i32* @res
	%aux2353 = add i32 0, 4
	%aux2354 = icmp eq i32 %aux2352, %aux2353
	br i1 %aux2354, label %etiq1089, label %etiq1090
	
	etiq1089:
	;___DisplayCadenaCaracteres___
	%aux2355 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str36, i32 0, i32 0))
	br label %etiq1092
	
	etiq1092:
	;___DisplayExpresion___
	%aux2357 = load double, double* @peso
	%aux2358 = load double, double* @altura
	%aux2359 = fsub double %aux2357, %aux2358
	%aux2360 = load i32, i32* @edad
	%aux2361 = sitofp i32 %aux2360 to double
	%aux2362 = fsub double %aux2359, %aux2361
	%aux2356 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux2362)
	br label %etiq1094
	
	etiq1094:
	;___Asignacion___
	%aux2364 = load i1, i1* @aux2
	%aux2365 = xor i1 %aux2364, 1
	store i1 %aux2365, i1* @aux2
	br label %etiq1062
	
	etiq1090:
	;___DisplayCadenaCaracteres___
	%aux2366 = call i32 @puts(i8* getelementptr ([60 x i8], [60 x i8] * @str37, i32 0, i32 0))
	br label %etiq1062
	
	etiq1096:
	;___DisplayCadenaCaracteres___
	%aux2367 = call i32 @puts(i8* getelementptr ([46 x i8], [46 x i8] * @str38, i32 0, i32 0))
	br label %etiq1097
	
	etiq1097:
	;___Asignacion___
	%aux2369 = alloca i32
	%aux2370 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux2369)
	%aux2371 = load i32, i32* %aux2369
	%aux2372 = trunc i32 %aux2371 to i1
	store i1 %aux2372, i1* @aux
	br label %etiq3
	
	etiq1099:
	ret i32 0
}

