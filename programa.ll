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
@IdPos1 = global i32 0
@IdPos10 = global i32 0
@IdPos2 = global i32 0
@IdPos3 = global i32 0
@IdPos4 = global i32 0
@IdPos5 = global i32 0
@IdPos6 = global i32 0
@IdPos7 = global i32 0
@IdPos8 = global i32 0
@IdPos9 = global i32 0
@Pivot1 = global i32 0
@Pivot10 = global i32 0
@Pivot2 = global i32 0
@Pivot3 = global i32 0
@Pivot4 = global i32 0
@Pivot5 = global i32 0
@Pivot6 = global i32 0
@Pivot7 = global i32 0
@Pivot8 = global i32 0
@Pivot9 = global i32 0
@_Acum1 = global i32 0
@_Acum10 = global i32 0
@_Acum11 = global i32 0
@_Acum12 = global i32 0
@_Acum13 = global i32 0
@_Acum14 = global i32 0
@_Acum15 = global i32 0
@_Acum16 = global i32 0
@_Acum17 = global i32 0
@_Acum18 = global i32 0
@_Acum19 = global i32 0
@_Acum2 = global i32 0
@_Acum20 = global i32 0
@_Acum3 = global i32 0
@_Acum4 = global i32 0
@_Acum5 = global i32 0
@_Acum6 = global i32 0
@_Acum7 = global i32 0
@_Acum8 = global i32 0
@_Acum9 = global i32 0
@altura = global double 0.0
@aux = global i1 0
@aux2 = global i1 0
@edad = global i32 0
@edad1 = global i32 0
@peso = global double 0.0
@pivot = global i32 0
@res = global i32 0
@resultado = global double 0.0
@str10 = private constant [20 x i8] c"\0AIngrese su edad: \0A\00"
@str11 = private constant [20 x i8] c"\0AUsted es un joven\0A\00"
@str12 = private constant [25 x i8] c"\0AUsted es un adolecente\0A\00"
@str13 = private constant [21 x i8] c"\0AUsted es un adulto\0A\00"
@str14 = private constant [27 x i8] c"\0AUsted es un adulto mayor\0A\00"
@str15 = private constant [17 x i8] c"\0ASu edad es par\0A\00"
@str16 = private constant [19 x i8] c"\0ASu edad es impar\0A\00"
@str60 = private constant [12 x i8] c"\0ALe faltan\0A\00"
@str61 = private constant [29 x i8] c"\0Aanios para cumplir los 100\0A\00"
@str62 = private constant [30 x i8] c"\0AIngrese su peso aproximado:\0A\00"
@str63 = private constant [32 x i8] c"\0AIngrese su altura aproximada:\0A\00"
@str64 = private constant [90 x i8] c"\0AElija una de las siguientes opciones:     Producto=1    Cociente=2    Suma=3    Resta=4\0A\00"
@str65 = private constant [24 x i8] c"\0APeso * Altura * Edad:\0A\00"
@str66 = private constant [24 x i8] c"\0APeso / Altura / Edad:\0A\00"
@str67 = private constant [24 x i8] c"\0APeso + Altura + Edad:\0A\00"
@str68 = private constant [24 x i8] c"\0APeso - Altura - Edad:\0A\00"
@str69 = private constant [60 x i8] c"\0ALa opcion elegida no es aceptada, intentelo nuevamente...\0A\00"
@str70 = private constant [46 x i8] c"\0ADesea comenzar de nuevo?      1=Si     0=No\0A\00"
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"

define i32 @main(i32, i8**) {
	
	etiq1:
	;___Asignación___
	%aux2 = add i1 0, 1
	store i1 %aux2, i1* @aux
	br label %etiq2
	
	etiq2:
	;___While___
	%aux4 = load i1, i1* @aux
	br i1 %aux4, label %etiq3, label %etiq1707
	
	etiq3:
	;___DisplayCadenaCaracteres___
	%aux5 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str10, i32 0, i32 0))
	br label %etiq5
	
	etiq5:
	;___Asignación___
	%aux7 = alloca i32
	%aux8 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux7)
	%aux9 = load i32, i32* %aux7
	store i32 %aux9, i32* @edad
	br label %etiq6
	
	etiq6:
	;___IfElse___
	%aux11 = load i32, i32* @edad
	%aux12 = add i32 0, 12
	%aux13 = icmp sle i32 %aux11, %aux12
	br i1 %aux13, label %etiq8, label %etiq9
	
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux14 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str11, i32 0, i32 0))
	br label %etiq19
	
	etiq9:
	;___IfElse___
	%aux16 = load i32, i32* @edad
	%aux17 = add i32 0, 25
	%aux18 = icmp sle i32 %aux16, %aux17
	br i1 %aux18, label %etiq12, label %etiq13
	
	etiq12:
	;___DisplayCadenaCaracteres___
	%aux19 = call i32 @puts(i8* getelementptr ([25 x i8], [25 x i8] * @str12, i32 0, i32 0))
	br label %etiq19
	
	etiq13:
	;___IfElse___
	%aux21 = load i32, i32* @edad
	%aux22 = add i32 0, 65
	%aux23 = icmp sle i32 %aux21, %aux22
	br i1 %aux23, label %etiq16, label %etiq17
	
	etiq16:
	;___DisplayCadenaCaracteres___
	%aux24 = call i32 @puts(i8* getelementptr ([21 x i8], [21 x i8] * @str13, i32 0, i32 0))
	br label %etiq19
	
	etiq17:
	;___DisplayCadenaCaracteres___
	%aux25 = call i32 @puts(i8* getelementptr ([27 x i8], [27 x i8] * @str14, i32 0, i32 0))
	br label %etiq19
	
	etiq19:
	;___Asignación___
	%aux27 = load i32, i32* @edad
	store i32 %aux27, i32* @edad1
	br label %etiq20
	
	etiq20:
	;___Asignación___
	%aux29 = add i1 0, 1
	store i1 %aux29, i1* @aux2
	br label %etiq21
	
	etiq21:
	;___While___
	%aux31 = load i32, i32* @edad1
	%aux32 = add i32 0, 0
	%aux33 = icmp ne i32 %aux31, %aux32
	br i1 %aux33, label %etiq23, label %etiq28
	
	etiq23:
	;___Asignación___
	%aux35 = load i32, i32* @edad1
	%aux36 = add i32 0, 1
	%aux37 = sub i32 %aux35, %aux36
	store i32 %aux37, i32* @edad1
	br label %etiq26
	
	etiq26:
	;___Asignación___
	%aux39 = load i1, i1* @aux2
	%aux40 = xor i1 %aux39, 1
	store i1 %aux40, i1* @aux2
	br label %etiq21
	
	etiq28:
	;___IfElse___
	%aux42 = load i1, i1* @aux2
	br i1 %aux42, label %etiq29, label %etiq30
	
	etiq29:
	;___DisplayCadenaCaracteres___
	%aux43 = call i32 @puts(i8* getelementptr ([17 x i8], [17 x i8] * @str15, i32 0, i32 0))
	br label %etiq32
	
	etiq30:
	;___DisplayCadenaCaracteres___
	%aux44 = call i32 @puts(i8* getelementptr ([19 x i8], [19 x i8] * @str16, i32 0, i32 0))
	br label %etiq32
	
	etiq32:
	;___IfSimple___
	%aux46 = load i32, i32* @edad
	%aux47 = add i32 0, 100
	%aux48 = icmp sge i32 %aux46, %aux47
	%aux49 = xor i1 %aux48, 1
	br i1 %aux49, label %etiq34, label %etiq1665
	
	etiq34:
	;___Asignación___
	%aux51 = add i32 0, 100
	%aux52 = load i32, i32* @edad
	%aux53 = sub i32 %aux51, %aux52
	store i32 %aux53, i32* @pivot
	br label %etiq36
	
	etiq36:
	;___Asignación___
	%aux55 = add i32 0, 1
	store i32 %aux55, i32* @Pivot9
	br label %etiq37
	
	etiq37:
	;___IfElse___
	%aux57 = load i32, i32* @Pivot9
	%aux58 = add i32 0, 1
	%aux59 = icmp sge i32 %aux57, %aux58
	br i1 %aux59, label %etiq39, label %etiq40
	
	etiq39:
	;___IfElse___
	%aux61 = add i32 0, 2
	%aux62 = load i32, i32* @Pivot9
	%aux63 = icmp sge i32 %aux61, %aux62
	br i1 %aux63, label %etiq42, label %etiq43
	
	etiq42:
	;___IfElse___
	%aux65 = add i32 0, 2
	%aux66 = add i32 0, 0
	%aux67 = icmp sgt i32 %aux65, %aux66
	br i1 %aux67, label %etiq46, label %etiq47
	
	etiq46:
	;___IfElse___
	%aux69 = add i32 0, 2
	%aux70 = load i32, i32* @Pivot9
	%aux71 = sub i32 %aux69, %aux70
	%aux72 = load i32, i32* @IdPos9
	%aux73 = icmp eq i32 %aux71, %aux72
	br i1 %aux73, label %etiq49, label %etiq50
	
	etiq49:
	;___Asignación___
	%aux75 = load i32, i32* @_Acum17
	%aux76 = add i32 0, 2
	%aux77 = add i32 %aux75, %aux76
	store i32 %aux77, i32* @_Acum17
	br label %etiq53
	
	etiq53:
	;___Asignación___
	%aux79 = load i32, i32* @IdPos9
	%aux80 = add i32 0, 1
	%aux81 = add i32 %aux79, %aux80
	store i32 %aux81, i32* @IdPos9
	br label %etiq55
	
	etiq55:
	;___Asignación___
	%aux83 = load i32, i32* @Pivot9
	%aux84 = add i32 0, 1
	%aux85 = sub i32 %aux83, %aux84
	store i32 %aux85, i32* @Pivot9
	br label %etiq58
	
	etiq50:
	;___Asignación___
	%aux87 = load i32, i32* @IdPos9
	%aux88 = add i32 0, 1
	%aux89 = add i32 %aux87, %aux88
	store i32 %aux89, i32* @IdPos9
	br label %etiq58
	
	etiq58:
	;___IfElse___
	%aux91 = add i32 0, 2
	%aux92 = load i32, i32* @Pivot9
	%aux93 = sub i32 %aux91, %aux92
	%aux94 = load i32, i32* @IdPos9
	%aux95 = icmp eq i32 %aux93, %aux94
	br i1 %aux95, label %etiq59, label %etiq60
	
	etiq59:
	;___Asignación___
	%aux97 = load i32, i32* @_Acum17
	%aux98 = add i32 0, 1
	%aux99 = add i32 %aux97, %aux98
	store i32 %aux99, i32* @_Acum17
	br label %etiq63
	
	etiq63:
	;___Asignación___
	%aux101 = load i32, i32* @IdPos9
	%aux102 = add i32 0, 1
	%aux103 = add i32 %aux101, %aux102
	store i32 %aux103, i32* @IdPos9
	br label %etiq65
	
	etiq65:
	;___Asignación___
	%aux105 = load i32, i32* @Pivot9
	%aux106 = add i32 0, 1
	%aux107 = sub i32 %aux105, %aux106
	store i32 %aux107, i32* @Pivot9
	br label %etiq68
	
	etiq60:
	;___Asignación___
	%aux109 = load i32, i32* @IdPos9
	%aux110 = add i32 0, 1
	%aux111 = add i32 %aux109, %aux110
	store i32 %aux111, i32* @IdPos9
	br label %etiq68
	
	etiq47:
	;___DisplayCadenaCaracteres___
	%aux112 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq68
	
	etiq43:
	;___DisplayCadenaCaracteres___
	%aux113 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq68
	
	etiq40:
	;___DisplayCadenaCaracteres___
	%aux114 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq68
	
	etiq68:
	;___Asignación___
	%aux116 = load i32, i32* @_Acum17
	store i32 %aux116, i32* @_Acum18
	br label %etiq69
	
	etiq69:
	;___Asignación___
	%aux118 = add i32 0, 2
	store i32 %aux118, i32* @Pivot7
	br label %etiq70
	
	etiq70:
	;___IfElse___
	%aux120 = load i32, i32* @Pivot7
	%aux121 = add i32 0, 1
	%aux122 = icmp sge i32 %aux120, %aux121
	br i1 %aux122, label %etiq72, label %etiq73
	
	etiq72:
	;___IfElse___
	%aux124 = add i32 0, 2
	%aux125 = load i32, i32* @Pivot7
	%aux126 = icmp sge i32 %aux124, %aux125
	br i1 %aux126, label %etiq75, label %etiq76
	
	etiq75:
	;___IfElse___
	%aux128 = add i32 0, 2
	%aux129 = add i32 0, 0
	%aux130 = icmp sgt i32 %aux128, %aux129
	br i1 %aux130, label %etiq79, label %etiq80
	
	etiq79:
	;___IfElse___
	%aux132 = add i32 0, 2
	%aux133 = load i32, i32* @Pivot7
	%aux134 = sub i32 %aux132, %aux133
	%aux135 = load i32, i32* @IdPos7
	%aux136 = icmp eq i32 %aux134, %aux135
	br i1 %aux136, label %etiq82, label %etiq83
	
	etiq82:
	;___Asignación___
	%aux138 = load i32, i32* @_Acum13
	%aux139 = load i32, i32* @edad
	%aux140 = add i32 0, 0
	%aux141 = mul i32 %aux139, %aux140
	%aux142 = add i32 %aux138, %aux141
	store i32 %aux142, i32* @_Acum13
	br label %etiq87
	
	etiq87:
	;___Asignación___
	%aux144 = load i32, i32* @IdPos7
	%aux145 = add i32 0, 1
	%aux146 = add i32 %aux144, %aux145
	store i32 %aux146, i32* @IdPos7
	br label %etiq89
	
	etiq89:
	;___Asignación___
	%aux148 = load i32, i32* @Pivot7
	%aux149 = add i32 0, 1
	%aux150 = sub i32 %aux148, %aux149
	store i32 %aux150, i32* @Pivot7
	br label %etiq92
	
	etiq83:
	;___Asignación___
	%aux152 = load i32, i32* @IdPos7
	%aux153 = add i32 0, 1
	%aux154 = add i32 %aux152, %aux153
	store i32 %aux154, i32* @IdPos7
	br label %etiq92
	
	etiq92:
	;___IfElse___
	%aux156 = add i32 0, 2
	%aux157 = load i32, i32* @Pivot7
	%aux158 = sub i32 %aux156, %aux157
	%aux159 = load i32, i32* @IdPos7
	%aux160 = icmp eq i32 %aux158, %aux159
	br i1 %aux160, label %etiq93, label %etiq94
	
	etiq93:
	;___Asignación___
	%aux162 = load i32, i32* @_Acum13
	%aux163 = add i32 0, 2
	%aux164 = add i32 %aux162, %aux163
	store i32 %aux164, i32* @_Acum13
	br label %etiq97
	
	etiq97:
	;___Asignación___
	%aux166 = load i32, i32* @IdPos7
	%aux167 = add i32 0, 1
	%aux168 = add i32 %aux166, %aux167
	store i32 %aux168, i32* @IdPos7
	br label %etiq99
	
	etiq99:
	;___Asignación___
	%aux170 = load i32, i32* @Pivot7
	%aux171 = add i32 0, 1
	%aux172 = sub i32 %aux170, %aux171
	store i32 %aux172, i32* @Pivot7
	br label %etiq102
	
	etiq94:
	;___Asignación___
	%aux174 = load i32, i32* @IdPos7
	%aux175 = add i32 0, 1
	%aux176 = add i32 %aux174, %aux175
	store i32 %aux176, i32* @IdPos7
	br label %etiq102
	
	etiq80:
	;___DisplayCadenaCaracteres___
	%aux177 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq102
	
	etiq76:
	;___DisplayCadenaCaracteres___
	%aux178 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq102
	
	etiq73:
	;___DisplayCadenaCaracteres___
	%aux179 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq102
	
	etiq102:
	;___Asignación___
	%aux181 = load i32, i32* @_Acum13
	store i32 %aux181, i32* @_Acum14
	br label %etiq103
	
	etiq103:
	;___Asignación___
	%aux183 = add i32 0, 4
	store i32 %aux183, i32* @Pivot5
	br label %etiq104
	
	etiq104:
	;___IfElse___
	%aux185 = load i32, i32* @Pivot5
	%aux186 = add i32 0, 1
	%aux187 = icmp sge i32 %aux185, %aux186
	br i1 %aux187, label %etiq106, label %etiq107
	
	etiq106:
	;___IfElse___
	%aux189 = add i32 0, 4
	%aux190 = load i32, i32* @Pivot5
	%aux191 = icmp sge i32 %aux189, %aux190
	br i1 %aux191, label %etiq109, label %etiq110
	
	etiq109:
	;___IfElse___
	%aux193 = add i32 0, 4
	%aux194 = add i32 0, 0
	%aux195 = icmp sgt i32 %aux193, %aux194
	br i1 %aux195, label %etiq113, label %etiq114
	
	etiq113:
	;___IfElse___
	%aux197 = add i32 0, 4
	%aux198 = load i32, i32* @Pivot5
	%aux199 = sub i32 %aux197, %aux198
	%aux200 = load i32, i32* @IdPos5
	%aux201 = icmp eq i32 %aux199, %aux200
	br i1 %aux201, label %etiq116, label %etiq117
	
	etiq116:
	;___Asignación___
	%aux203 = load i32, i32* @_Acum9
	%aux204 = add i32 0, 1
	%aux205 = add i32 %aux203, %aux204
	store i32 %aux205, i32* @_Acum9
	br label %etiq120
	
	etiq120:
	;___Asignación___
	%aux207 = load i32, i32* @IdPos5
	%aux208 = add i32 0, 1
	%aux209 = add i32 %aux207, %aux208
	store i32 %aux209, i32* @IdPos5
	br label %etiq122
	
	etiq122:
	;___Asignación___
	%aux211 = load i32, i32* @Pivot5
	%aux212 = add i32 0, 1
	%aux213 = sub i32 %aux211, %aux212
	store i32 %aux213, i32* @Pivot5
	br label %etiq125
	
	etiq117:
	;___Asignación___
	%aux215 = load i32, i32* @IdPos5
	%aux216 = add i32 0, 1
	%aux217 = add i32 %aux215, %aux216
	store i32 %aux217, i32* @IdPos5
	br label %etiq125
	
	etiq125:
	;___IfElse___
	%aux219 = add i32 0, 4
	%aux220 = load i32, i32* @Pivot5
	%aux221 = sub i32 %aux219, %aux220
	%aux222 = load i32, i32* @IdPos5
	%aux223 = icmp eq i32 %aux221, %aux222
	br i1 %aux223, label %etiq126, label %etiq127
	
	etiq126:
	;___Asignación___
	%aux225 = load i32, i32* @_Acum9
	%aux226 = add i32 0, 2
	%aux227 = add i32 %aux225, %aux226
	store i32 %aux227, i32* @_Acum9
	br label %etiq130
	
	etiq130:
	;___Asignación___
	%aux229 = load i32, i32* @IdPos5
	%aux230 = add i32 0, 1
	%aux231 = add i32 %aux229, %aux230
	store i32 %aux231, i32* @IdPos5
	br label %etiq132
	
	etiq132:
	;___Asignación___
	%aux233 = load i32, i32* @Pivot5
	%aux234 = add i32 0, 1
	%aux235 = sub i32 %aux233, %aux234
	store i32 %aux235, i32* @Pivot5
	br label %etiq135
	
	etiq127:
	;___Asignación___
	%aux237 = load i32, i32* @IdPos5
	%aux238 = add i32 0, 1
	%aux239 = add i32 %aux237, %aux238
	store i32 %aux239, i32* @IdPos5
	br label %etiq135
	
	etiq135:
	;___IfElse___
	%aux241 = add i32 0, 4
	%aux242 = load i32, i32* @Pivot5
	%aux243 = sub i32 %aux241, %aux242
	%aux244 = load i32, i32* @IdPos5
	%aux245 = icmp eq i32 %aux243, %aux244
	br i1 %aux245, label %etiq136, label %etiq137
	
	etiq136:
	;___Asignación___
	%aux247 = load i32, i32* @_Acum9
	%aux248 = add i32 0, 3
	%aux249 = add i32 %aux247, %aux248
	store i32 %aux249, i32* @_Acum9
	br label %etiq140
	
	etiq140:
	;___Asignación___
	%aux251 = load i32, i32* @IdPos5
	%aux252 = add i32 0, 1
	%aux253 = add i32 %aux251, %aux252
	store i32 %aux253, i32* @IdPos5
	br label %etiq142
	
	etiq142:
	;___Asignación___
	%aux255 = load i32, i32* @Pivot5
	%aux256 = add i32 0, 1
	%aux257 = sub i32 %aux255, %aux256
	store i32 %aux257, i32* @Pivot5
	br label %etiq155
	
	etiq137:
	;___Asignación___
	%aux259 = load i32, i32* @IdPos5
	%aux260 = add i32 0, 1
	%aux261 = add i32 %aux259, %aux260
	store i32 %aux261, i32* @IdPos5
	br label %etiq145
	
	etiq145:
	;___IfElse___
	%aux263 = add i32 0, 4
	%aux264 = load i32, i32* @Pivot5
	%aux265 = sub i32 %aux263, %aux264
	%aux266 = load i32, i32* @IdPos5
	%aux267 = icmp eq i32 %aux265, %aux266
	br i1 %aux267, label %etiq146, label %etiq147
	
	etiq146:
	;___Asignación___
	%aux269 = load i32, i32* @_Acum9
	%aux270 = add i32 0, 4
	%aux271 = add i32 %aux269, %aux270
	store i32 %aux271, i32* @_Acum9
	br label %etiq150
	
	etiq150:
	;___Asignación___
	%aux273 = load i32, i32* @IdPos5
	%aux274 = add i32 0, 1
	%aux275 = add i32 %aux273, %aux274
	store i32 %aux275, i32* @IdPos5
	br label %etiq152
	
	etiq152:
	;___Asignación___
	%aux277 = load i32, i32* @Pivot5
	%aux278 = add i32 0, 1
	%aux279 = sub i32 %aux277, %aux278
	store i32 %aux279, i32* @Pivot5
	br label %etiq155
	
	etiq147:
	;___Asignación___
	%aux281 = load i32, i32* @IdPos5
	%aux282 = add i32 0, 1
	%aux283 = add i32 %aux281, %aux282
	store i32 %aux283, i32* @IdPos5
	br label %etiq155
	
	etiq114:
	;___DisplayCadenaCaracteres___
	%aux284 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq155
	
	etiq110:
	;___DisplayCadenaCaracteres___
	%aux285 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq155
	
	etiq107:
	;___DisplayCadenaCaracteres___
	%aux286 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq155
	
	etiq155:
	;___Asignación___
	%aux288 = load i32, i32* @_Acum9
	store i32 %aux288, i32* @_Acum10
	br label %etiq156
	
	etiq156:
	;___Asignación___
	%aux290 = add i32 0, 3
	store i32 %aux290, i32* @Pivot4
	br label %etiq157
	
	etiq157:
	;___IfElse___
	%aux292 = load i32, i32* @Pivot4
	%aux293 = add i32 0, 1
	%aux294 = icmp sge i32 %aux292, %aux293
	br i1 %aux294, label %etiq159, label %etiq160
	
	etiq159:
	;___IfElse___
	%aux296 = add i32 0, 3
	%aux297 = load i32, i32* @Pivot4
	%aux298 = icmp sge i32 %aux296, %aux297
	br i1 %aux298, label %etiq162, label %etiq163
	
	etiq162:
	;___IfElse___
	%aux300 = add i32 0, 3
	%aux301 = add i32 0, 0
	%aux302 = icmp sgt i32 %aux300, %aux301
	br i1 %aux302, label %etiq166, label %etiq167
	
	etiq166:
	;___IfElse___
	%aux304 = add i32 0, 3
	%aux305 = load i32, i32* @Pivot4
	%aux306 = sub i32 %aux304, %aux305
	%aux307 = load i32, i32* @IdPos4
	%aux308 = icmp eq i32 %aux306, %aux307
	br i1 %aux308, label %etiq169, label %etiq170
	
	etiq169:
	;___Asignación___
	%aux310 = load i32, i32* @_Acum7
	%aux311 = add i32 0, 1
	%aux312 = add i32 %aux310, %aux311
	store i32 %aux312, i32* @_Acum7
	br label %etiq173
	
	etiq173:
	;___Asignación___
	%aux314 = load i32, i32* @IdPos4
	%aux315 = add i32 0, 1
	%aux316 = add i32 %aux314, %aux315
	store i32 %aux316, i32* @IdPos4
	br label %etiq175
	
	etiq175:
	;___Asignación___
	%aux318 = load i32, i32* @Pivot4
	%aux319 = add i32 0, 1
	%aux320 = sub i32 %aux318, %aux319
	store i32 %aux320, i32* @Pivot4
	br label %etiq178
	
	etiq170:
	;___Asignación___
	%aux322 = load i32, i32* @IdPos4
	%aux323 = add i32 0, 1
	%aux324 = add i32 %aux322, %aux323
	store i32 %aux324, i32* @IdPos4
	br label %etiq178
	
	etiq178:
	;___IfElse___
	%aux326 = add i32 0, 3
	%aux327 = load i32, i32* @Pivot4
	%aux328 = sub i32 %aux326, %aux327
	%aux329 = load i32, i32* @IdPos4
	%aux330 = icmp eq i32 %aux328, %aux329
	br i1 %aux330, label %etiq179, label %etiq180
	
	etiq179:
	;___Asignación___
	%aux332 = load i32, i32* @_Acum7
	%aux333 = add i32 0, 2
	%aux334 = add i32 %aux332, %aux333
	store i32 %aux334, i32* @_Acum7
	br label %etiq183
	
	etiq183:
	;___Asignación___
	%aux336 = load i32, i32* @IdPos4
	%aux337 = add i32 0, 1
	%aux338 = add i32 %aux336, %aux337
	store i32 %aux338, i32* @IdPos4
	br label %etiq185
	
	etiq185:
	;___Asignación___
	%aux340 = load i32, i32* @Pivot4
	%aux341 = add i32 0, 1
	%aux342 = sub i32 %aux340, %aux341
	store i32 %aux342, i32* @Pivot4
	br label %etiq188
	
	etiq180:
	;___Asignación___
	%aux344 = load i32, i32* @IdPos4
	%aux345 = add i32 0, 1
	%aux346 = add i32 %aux344, %aux345
	store i32 %aux346, i32* @IdPos4
	br label %etiq188
	
	etiq188:
	;___IfElse___
	%aux348 = add i32 0, 3
	%aux349 = load i32, i32* @Pivot4
	%aux350 = sub i32 %aux348, %aux349
	%aux351 = load i32, i32* @IdPos4
	%aux352 = icmp eq i32 %aux350, %aux351
	br i1 %aux352, label %etiq189, label %etiq190
	
	etiq189:
	;___Asignación___
	%aux354 = load i32, i32* @_Acum7
	%aux355 = add i32 0, 3
	%aux356 = add i32 %aux354, %aux355
	store i32 %aux356, i32* @_Acum7
	br label %etiq193
	
	etiq193:
	;___Asignación___
	%aux358 = load i32, i32* @IdPos4
	%aux359 = add i32 0, 1
	%aux360 = add i32 %aux358, %aux359
	store i32 %aux360, i32* @IdPos4
	br label %etiq195
	
	etiq195:
	;___Asignación___
	%aux362 = load i32, i32* @Pivot4
	%aux363 = add i32 0, 1
	%aux364 = sub i32 %aux362, %aux363
	store i32 %aux364, i32* @Pivot4
	br label %etiq198
	
	etiq190:
	;___Asignación___
	%aux366 = load i32, i32* @IdPos4
	%aux367 = add i32 0, 1
	%aux368 = add i32 %aux366, %aux367
	store i32 %aux368, i32* @IdPos4
	br label %etiq198
	
	etiq167:
	;___DisplayCadenaCaracteres___
	%aux369 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq198
	
	etiq163:
	;___DisplayCadenaCaracteres___
	%aux370 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq198
	
	etiq160:
	;___DisplayCadenaCaracteres___
	%aux371 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq198
	
	etiq198:
	;___Asignación___
	%aux373 = load i32, i32* @_Acum7
	store i32 %aux373, i32* @_Acum8
	br label %etiq199
	
	etiq199:
	;___Asignación___
	%aux375 = add i32 0, 2
	store i32 %aux375, i32* @Pivot2
	br label %etiq200
	
	etiq200:
	;___IfElse___
	%aux377 = load i32, i32* @Pivot2
	%aux378 = add i32 0, 1
	%aux379 = icmp sge i32 %aux377, %aux378
	br i1 %aux379, label %etiq202, label %etiq203
	
	etiq202:
	;___IfElse___
	%aux381 = add i32 0, 2
	%aux382 = load i32, i32* @Pivot2
	%aux383 = icmp sge i32 %aux381, %aux382
	br i1 %aux383, label %etiq205, label %etiq206
	
	etiq205:
	;___IfElse___
	%aux385 = add i32 0, 2
	%aux386 = add i32 0, 0
	%aux387 = icmp sgt i32 %aux385, %aux386
	br i1 %aux387, label %etiq209, label %etiq210
	
	etiq209:
	;___IfElse___
	%aux389 = add i32 0, 2
	%aux390 = load i32, i32* @Pivot2
	%aux391 = sub i32 %aux389, %aux390
	%aux392 = load i32, i32* @IdPos2
	%aux393 = icmp eq i32 %aux391, %aux392
	br i1 %aux393, label %etiq212, label %etiq213
	
	etiq212:
	;___Asignación___
	%aux395 = load i32, i32* @_Acum3
	%aux396 = add i32 0, 1
	%aux397 = add i32 %aux395, %aux396
	store i32 %aux397, i32* @_Acum3
	br label %etiq216
	
	etiq216:
	;___Asignación___
	%aux399 = load i32, i32* @IdPos2
	%aux400 = add i32 0, 1
	%aux401 = add i32 %aux399, %aux400
	store i32 %aux401, i32* @IdPos2
	br label %etiq218
	
	etiq218:
	;___Asignación___
	%aux403 = load i32, i32* @Pivot2
	%aux404 = add i32 0, 1
	%aux405 = sub i32 %aux403, %aux404
	store i32 %aux405, i32* @Pivot2
	br label %etiq221
	
	etiq213:
	;___Asignación___
	%aux407 = load i32, i32* @IdPos2
	%aux408 = add i32 0, 1
	%aux409 = add i32 %aux407, %aux408
	store i32 %aux409, i32* @IdPos2
	br label %etiq221
	
	etiq221:
	;___IfElse___
	%aux411 = add i32 0, 2
	%aux412 = load i32, i32* @Pivot2
	%aux413 = sub i32 %aux411, %aux412
	%aux414 = load i32, i32* @IdPos2
	%aux415 = icmp eq i32 %aux413, %aux414
	br i1 %aux415, label %etiq222, label %etiq223
	
	etiq222:
	;___Asignación___
	%aux417 = load i32, i32* @_Acum3
	%aux418 = add i32 0, 2
	%aux419 = add i32 %aux417, %aux418
	store i32 %aux419, i32* @_Acum3
	br label %etiq226
	
	etiq226:
	;___Asignación___
	%aux421 = load i32, i32* @IdPos2
	%aux422 = add i32 0, 1
	%aux423 = add i32 %aux421, %aux422
	store i32 %aux423, i32* @IdPos2
	br label %etiq228
	
	etiq228:
	;___Asignación___
	%aux425 = load i32, i32* @Pivot2
	%aux426 = add i32 0, 1
	%aux427 = sub i32 %aux425, %aux426
	store i32 %aux427, i32* @Pivot2
	br label %etiq231
	
	etiq223:
	;___Asignación___
	%aux429 = load i32, i32* @IdPos2
	%aux430 = add i32 0, 1
	%aux431 = add i32 %aux429, %aux430
	store i32 %aux431, i32* @IdPos2
	br label %etiq231
	
	etiq210:
	;___DisplayCadenaCaracteres___
	%aux432 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq231
	
	etiq206:
	;___DisplayCadenaCaracteres___
	%aux433 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq231
	
	etiq203:
	;___DisplayCadenaCaracteres___
	%aux434 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq231
	
	etiq231:
	;___Asignación___
	%aux436 = load i32, i32* @_Acum3
	store i32 %aux436, i32* @_Acum4
	br label %etiq232
	
	etiq232:
	;___Asignación___
	%aux438 = add i32 0, 1
	store i32 %aux438, i32* @Pivot1
	br label %etiq233
	
	etiq233:
	;___IfElse___
	%aux440 = load i32, i32* @Pivot1
	%aux441 = add i32 0, 1
	%aux442 = icmp sge i32 %aux440, %aux441
	br i1 %aux442, label %etiq235, label %etiq236
	
	etiq235:
	;___IfElse___
	%aux444 = add i32 0, 1
	%aux445 = load i32, i32* @Pivot1
	%aux446 = icmp sge i32 %aux444, %aux445
	br i1 %aux446, label %etiq238, label %etiq239
	
	etiq238:
	;___IfElse___
	%aux448 = add i32 0, 1
	%aux449 = add i32 0, 0
	%aux450 = icmp sgt i32 %aux448, %aux449
	br i1 %aux450, label %etiq242, label %etiq243
	
	etiq242:
	;___IfElse___
	%aux452 = add i32 0, 1
	%aux453 = load i32, i32* @Pivot1
	%aux454 = sub i32 %aux452, %aux453
	%aux455 = load i32, i32* @IdPos1
	%aux456 = icmp eq i32 %aux454, %aux455
	br i1 %aux456, label %etiq245, label %etiq246
	
	etiq245:
	;___Asignación___
	%aux458 = load i32, i32* @_Acum1
	%aux459 = add i32 0, 1
	%aux460 = add i32 %aux458, %aux459
	store i32 %aux460, i32* @_Acum1
	br label %etiq249
	
	etiq249:
	;___Asignación___
	%aux462 = load i32, i32* @IdPos1
	%aux463 = add i32 0, 1
	%aux464 = add i32 %aux462, %aux463
	store i32 %aux464, i32* @IdPos1
	br label %etiq251
	
	etiq251:
	;___Asignación___
	%aux466 = load i32, i32* @Pivot1
	%aux467 = add i32 0, 1
	%aux468 = sub i32 %aux466, %aux467
	store i32 %aux468, i32* @Pivot1
	br label %etiq254
	
	etiq246:
	;___Asignación___
	%aux470 = load i32, i32* @IdPos1
	%aux471 = add i32 0, 1
	%aux472 = add i32 %aux470, %aux471
	store i32 %aux472, i32* @IdPos1
	br label %etiq254
	
	etiq243:
	;___DisplayCadenaCaracteres___
	%aux473 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq254
	
	etiq239:
	;___DisplayCadenaCaracteres___
	%aux474 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq254
	
	etiq236:
	;___DisplayCadenaCaracteres___
	%aux475 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq254
	
	etiq254:
	;___Asignación___
	%aux477 = load i32, i32* @_Acum1
	store i32 %aux477, i32* @_Acum2
	br label %etiq255
	
	etiq255:
	;___Asignación___
	%aux479 = add i32 0, 2
	store i32 %aux479, i32* @Pivot3
	br label %etiq256
	
	etiq256:
	;___IfElse___
	%aux481 = load i32, i32* @Pivot3
	%aux482 = add i32 0, 1
	%aux483 = icmp sge i32 %aux481, %aux482
	br i1 %aux483, label %etiq258, label %etiq259
	
	etiq258:
	;___IfElse___
	%aux485 = add i32 0, 2
	%aux486 = load i32, i32* @Pivot3
	%aux487 = icmp sge i32 %aux485, %aux486
	br i1 %aux487, label %etiq261, label %etiq262
	
	etiq261:
	;___IfElse___
	%aux489 = add i32 0, 2
	%aux490 = add i32 0, 0
	%aux491 = icmp sgt i32 %aux489, %aux490
	br i1 %aux491, label %etiq265, label %etiq266
	
	etiq265:
	;___IfElse___
	%aux493 = add i32 0, 2
	%aux494 = load i32, i32* @Pivot3
	%aux495 = sub i32 %aux493, %aux494
	%aux496 = load i32, i32* @IdPos3
	%aux497 = icmp eq i32 %aux495, %aux496
	br i1 %aux497, label %etiq268, label %etiq269
	
	etiq268:
	;___Asignación___
	%aux499 = load i32, i32* @_Acum5
	%aux500 = load i32, i32* @_Acum2
	%aux501 = add i32 %aux499, %aux500
	store i32 %aux501, i32* @_Acum5
	br label %etiq271
	
	etiq271:
	;___Asignación___
	%aux503 = load i32, i32* @IdPos3
	%aux504 = add i32 0, 1
	%aux505 = add i32 %aux503, %aux504
	store i32 %aux505, i32* @IdPos3
	br label %etiq273
	
	etiq273:
	;___Asignación___
	%aux507 = load i32, i32* @Pivot3
	%aux508 = add i32 0, 1
	%aux509 = sub i32 %aux507, %aux508
	store i32 %aux509, i32* @Pivot3
	br label %etiq276
	
	etiq269:
	;___Asignación___
	%aux511 = load i32, i32* @IdPos3
	%aux512 = add i32 0, 1
	%aux513 = add i32 %aux511, %aux512
	store i32 %aux513, i32* @IdPos3
	br label %etiq276
	
	etiq276:
	;___IfElse___
	%aux515 = add i32 0, 2
	%aux516 = load i32, i32* @Pivot3
	%aux517 = sub i32 %aux515, %aux516
	%aux518 = load i32, i32* @IdPos3
	%aux519 = icmp eq i32 %aux517, %aux518
	br i1 %aux519, label %etiq277, label %etiq278
	
	etiq277:
	;___Asignación___
	%aux521 = load i32, i32* @_Acum5
	%aux522 = load i32, i32* @_Acum4
	%aux523 = add i32 %aux521, %aux522
	store i32 %aux523, i32* @_Acum5
	br label %etiq280
	
	etiq280:
	;___Asignación___
	%aux525 = load i32, i32* @IdPos3
	%aux526 = add i32 0, 1
	%aux527 = add i32 %aux525, %aux526
	store i32 %aux527, i32* @IdPos3
	br label %etiq282
	
	etiq282:
	;___Asignación___
	%aux529 = load i32, i32* @Pivot3
	%aux530 = add i32 0, 1
	%aux531 = sub i32 %aux529, %aux530
	store i32 %aux531, i32* @Pivot3
	br label %etiq285
	
	etiq278:
	;___Asignación___
	%aux533 = load i32, i32* @IdPos3
	%aux534 = add i32 0, 1
	%aux535 = add i32 %aux533, %aux534
	store i32 %aux535, i32* @IdPos3
	br label %etiq285
	
	etiq266:
	;___DisplayCadenaCaracteres___
	%aux536 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq285
	
	etiq262:
	;___DisplayCadenaCaracteres___
	%aux537 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq285
	
	etiq259:
	;___DisplayCadenaCaracteres___
	%aux538 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq285
	
	etiq285:
	;___Asignación___
	%aux540 = load i32, i32* @_Acum5
	store i32 %aux540, i32* @_Acum6
	br label %etiq286
	
	etiq286:
	;___Asignación___
	%aux542 = add i32 0, 3
	store i32 %aux542, i32* @Pivot6
	br label %etiq287
	
	etiq287:
	;___IfElse___
	%aux544 = load i32, i32* @Pivot6
	%aux545 = add i32 0, 1
	%aux546 = icmp sge i32 %aux544, %aux545
	br i1 %aux546, label %etiq289, label %etiq290
	
	etiq289:
	;___IfElse___
	%aux548 = add i32 0, 3
	%aux549 = load i32, i32* @Pivot6
	%aux550 = icmp sge i32 %aux548, %aux549
	br i1 %aux550, label %etiq292, label %etiq293
	
	etiq292:
	;___IfElse___
	%aux552 = add i32 0, 3
	%aux553 = add i32 0, 0
	%aux554 = icmp sgt i32 %aux552, %aux553
	br i1 %aux554, label %etiq296, label %etiq297
	
	etiq296:
	;___IfElse___
	%aux556 = add i32 0, 3
	%aux557 = load i32, i32* @Pivot6
	%aux558 = sub i32 %aux556, %aux557
	%aux559 = load i32, i32* @IdPos6
	%aux560 = icmp eq i32 %aux558, %aux559
	br i1 %aux560, label %etiq299, label %etiq300
	
	etiq299:
	;___Asignación___
	%aux562 = load i32, i32* @_Acum11
	%aux563 = load i32, i32* @_Acum6
	%aux564 = add i32 %aux562, %aux563
	store i32 %aux564, i32* @_Acum11
	br label %etiq302
	
	etiq302:
	;___Asignación___
	%aux566 = load i32, i32* @IdPos6
	%aux567 = add i32 0, 1
	%aux568 = add i32 %aux566, %aux567
	store i32 %aux568, i32* @IdPos6
	br label %etiq304
	
	etiq304:
	;___Asignación___
	%aux570 = load i32, i32* @Pivot6
	%aux571 = add i32 0, 1
	%aux572 = sub i32 %aux570, %aux571
	store i32 %aux572, i32* @Pivot6
	br label %etiq307
	
	etiq300:
	;___Asignación___
	%aux574 = load i32, i32* @IdPos6
	%aux575 = add i32 0, 1
	%aux576 = add i32 %aux574, %aux575
	store i32 %aux576, i32* @IdPos6
	br label %etiq307
	
	etiq307:
	;___IfElse___
	%aux578 = add i32 0, 3
	%aux579 = load i32, i32* @Pivot6
	%aux580 = sub i32 %aux578, %aux579
	%aux581 = load i32, i32* @IdPos6
	%aux582 = icmp eq i32 %aux580, %aux581
	br i1 %aux582, label %etiq308, label %etiq309
	
	etiq308:
	;___Asignación___
	%aux584 = load i32, i32* @_Acum11
	%aux585 = load i32, i32* @_Acum8
	%aux586 = add i32 %aux584, %aux585
	store i32 %aux586, i32* @_Acum11
	br label %etiq311
	
	etiq311:
	;___Asignación___
	%aux588 = load i32, i32* @IdPos6
	%aux589 = add i32 0, 1
	%aux590 = add i32 %aux588, %aux589
	store i32 %aux590, i32* @IdPos6
	br label %etiq313
	
	etiq313:
	;___Asignación___
	%aux592 = load i32, i32* @Pivot6
	%aux593 = add i32 0, 1
	%aux594 = sub i32 %aux592, %aux593
	store i32 %aux594, i32* @Pivot6
	br label %etiq316
	
	etiq309:
	;___Asignación___
	%aux596 = load i32, i32* @IdPos6
	%aux597 = add i32 0, 1
	%aux598 = add i32 %aux596, %aux597
	store i32 %aux598, i32* @IdPos6
	br label %etiq316
	
	etiq316:
	;___IfElse___
	%aux600 = add i32 0, 3
	%aux601 = load i32, i32* @Pivot6
	%aux602 = sub i32 %aux600, %aux601
	%aux603 = load i32, i32* @IdPos6
	%aux604 = icmp eq i32 %aux602, %aux603
	br i1 %aux604, label %etiq317, label %etiq318
	
	etiq317:
	;___Asignación___
	%aux606 = load i32, i32* @_Acum11
	%aux607 = load i32, i32* @_Acum10
	%aux608 = add i32 %aux606, %aux607
	store i32 %aux608, i32* @_Acum11
	br label %etiq320
	
	etiq320:
	;___Asignación___
	%aux610 = load i32, i32* @IdPos6
	%aux611 = add i32 0, 1
	%aux612 = add i32 %aux610, %aux611
	store i32 %aux612, i32* @IdPos6
	br label %etiq322
	
	etiq322:
	;___Asignación___
	%aux614 = load i32, i32* @Pivot6
	%aux615 = add i32 0, 1
	%aux616 = sub i32 %aux614, %aux615
	store i32 %aux616, i32* @Pivot6
	br label %etiq325
	
	etiq318:
	;___Asignación___
	%aux618 = load i32, i32* @IdPos6
	%aux619 = add i32 0, 1
	%aux620 = add i32 %aux618, %aux619
	store i32 %aux620, i32* @IdPos6
	br label %etiq325
	
	etiq297:
	;___DisplayCadenaCaracteres___
	%aux621 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq325
	
	etiq293:
	;___DisplayCadenaCaracteres___
	%aux622 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq325
	
	etiq290:
	;___DisplayCadenaCaracteres___
	%aux623 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq325
	
	etiq325:
	;___Asignación___
	%aux625 = load i32, i32* @_Acum11
	store i32 %aux625, i32* @_Acum12
	br label %etiq326
	
	etiq326:
	;___Asignación___
	%aux627 = load i32, i32* @pivot
	store i32 %aux627, i32* @Pivot10
	br label %etiq327
	
	etiq327:
	;___IfElse___
	%aux629 = load i32, i32* @Pivot10
	%aux630 = add i32 0, 1
	%aux631 = icmp sge i32 %aux629, %aux630
	br i1 %aux631, label %etiq329, label %etiq330
	
	etiq329:
	;___IfElse___
	%aux633 = add i32 0, 100
	%aux634 = load i32, i32* @Pivot10
	%aux635 = icmp sge i32 %aux633, %aux634
	br i1 %aux635, label %etiq332, label %etiq333
	
	etiq332:
	;___IfElse___
	%aux637 = add i32 0, 100
	%aux638 = add i32 0, 0
	%aux639 = icmp sgt i32 %aux637, %aux638
	br i1 %aux639, label %etiq336, label %etiq337
	
	etiq336:
	;___IfElse___
	%aux641 = add i32 0, 100
	%aux642 = load i32, i32* @Pivot10
	%aux643 = sub i32 %aux641, %aux642
	%aux644 = load i32, i32* @IdPos10
	%aux645 = icmp eq i32 %aux643, %aux644
	br i1 %aux645, label %etiq339, label %etiq340
	
	etiq339:
	;___Asignación___
	%aux647 = load i32, i32* @_Acum19
	%aux648 = add i32 0, 1
	%aux649 = add i32 %aux647, %aux648
	store i32 %aux649, i32* @_Acum19
	br label %etiq343
	
	etiq343:
	;___Asignación___
	%aux651 = load i32, i32* @IdPos10
	%aux652 = add i32 0, 1
	%aux653 = add i32 %aux651, %aux652
	store i32 %aux653, i32* @IdPos10
	br label %etiq345
	
	etiq345:
	;___Asignación___
	%aux655 = load i32, i32* @Pivot10
	%aux656 = add i32 0, 1
	%aux657 = sub i32 %aux655, %aux656
	store i32 %aux657, i32* @Pivot10
	br label %etiq348
	
	etiq340:
	;___Asignación___
	%aux659 = load i32, i32* @IdPos10
	%aux660 = add i32 0, 1
	%aux661 = add i32 %aux659, %aux660
	store i32 %aux661, i32* @IdPos10
	br label %etiq348
	
	etiq348:
	;___IfElse___
	%aux663 = add i32 0, 100
	%aux664 = load i32, i32* @Pivot10
	%aux665 = sub i32 %aux663, %aux664
	%aux666 = load i32, i32* @IdPos10
	%aux667 = icmp eq i32 %aux665, %aux666
	br i1 %aux667, label %etiq349, label %etiq350
	
	etiq349:
	;___Asignación___
	%aux669 = load i32, i32* @_Acum19
	%aux670 = add i32 0, 1
	%aux671 = add i32 %aux669, %aux670
	store i32 %aux671, i32* @_Acum19
	br label %etiq353
	
	etiq353:
	;___Asignación___
	%aux673 = load i32, i32* @IdPos10
	%aux674 = add i32 0, 1
	%aux675 = add i32 %aux673, %aux674
	store i32 %aux675, i32* @IdPos10
	br label %etiq355
	
	etiq355:
	;___Asignación___
	%aux677 = load i32, i32* @Pivot10
	%aux678 = add i32 0, 1
	%aux679 = sub i32 %aux677, %aux678
	store i32 %aux679, i32* @Pivot10
	br label %etiq358
	
	etiq350:
	;___Asignación___
	%aux681 = load i32, i32* @IdPos10
	%aux682 = add i32 0, 1
	%aux683 = add i32 %aux681, %aux682
	store i32 %aux683, i32* @IdPos10
	br label %etiq358
	
	etiq358:
	;___IfElse___
	%aux685 = add i32 0, 100
	%aux686 = load i32, i32* @Pivot10
	%aux687 = sub i32 %aux685, %aux686
	%aux688 = load i32, i32* @IdPos10
	%aux689 = icmp eq i32 %aux687, %aux688
	br i1 %aux689, label %etiq359, label %etiq360
	
	etiq359:
	;___Asignación___
	%aux691 = load i32, i32* @_Acum19
	%aux692 = add i32 0, 1
	%aux693 = add i32 %aux691, %aux692
	store i32 %aux693, i32* @_Acum19
	br label %etiq363
	
	etiq363:
	;___Asignación___
	%aux695 = load i32, i32* @IdPos10
	%aux696 = add i32 0, 1
	%aux697 = add i32 %aux695, %aux696
	store i32 %aux697, i32* @IdPos10
	br label %etiq365
	
	etiq365:
	;___Asignación___
	%aux699 = load i32, i32* @Pivot10
	%aux700 = add i32 0, 1
	%aux701 = sub i32 %aux699, %aux700
	store i32 %aux701, i32* @Pivot10
	br label %etiq1661
	
	etiq360:
	;___Asignación___
	%aux703 = load i32, i32* @IdPos10
	%aux704 = add i32 0, 1
	%aux705 = add i32 %aux703, %aux704
	store i32 %aux705, i32* @IdPos10
	br label %etiq368
	
	etiq368:
	;___IfElse___
	%aux707 = add i32 0, 100
	%aux708 = load i32, i32* @Pivot10
	%aux709 = sub i32 %aux707, %aux708
	%aux710 = load i32, i32* @IdPos10
	%aux711 = icmp eq i32 %aux709, %aux710
	br i1 %aux711, label %etiq369, label %etiq370
	
	etiq369:
	;___Asignación___
	%aux713 = load i32, i32* @_Acum19
	%aux714 = add i32 0, 1
	%aux715 = add i32 %aux713, %aux714
	store i32 %aux715, i32* @_Acum19
	br label %etiq373
	
	etiq373:
	;___Asignación___
	%aux717 = load i32, i32* @IdPos10
	%aux718 = add i32 0, 1
	%aux719 = add i32 %aux717, %aux718
	store i32 %aux719, i32* @IdPos10
	br label %etiq375
	
	etiq375:
	;___Asignación___
	%aux721 = load i32, i32* @Pivot10
	%aux722 = add i32 0, 1
	%aux723 = sub i32 %aux721, %aux722
	store i32 %aux723, i32* @Pivot10
	br label %etiq378
	
	etiq370:
	;___Asignación___
	%aux725 = load i32, i32* @IdPos10
	%aux726 = add i32 0, 1
	%aux727 = add i32 %aux725, %aux726
	store i32 %aux727, i32* @IdPos10
	br label %etiq378
	
	etiq378:
	;___IfElse___
	%aux729 = add i32 0, 100
	%aux730 = load i32, i32* @Pivot10
	%aux731 = sub i32 %aux729, %aux730
	%aux732 = load i32, i32* @IdPos10
	%aux733 = icmp eq i32 %aux731, %aux732
	br i1 %aux733, label %etiq379, label %etiq380
	
	etiq379:
	;___Asignación___
	%aux735 = load i32, i32* @_Acum19
	%aux736 = add i32 0, 1
	%aux737 = add i32 %aux735, %aux736
	store i32 %aux737, i32* @_Acum19
	br label %etiq383
	
	etiq383:
	;___Asignación___
	%aux739 = load i32, i32* @IdPos10
	%aux740 = add i32 0, 1
	%aux741 = add i32 %aux739, %aux740
	store i32 %aux741, i32* @IdPos10
	br label %etiq385
	
	etiq385:
	;___Asignación___
	%aux743 = load i32, i32* @Pivot10
	%aux744 = add i32 0, 1
	%aux745 = sub i32 %aux743, %aux744
	store i32 %aux745, i32* @Pivot10
	br label %etiq388
	
	etiq380:
	;___Asignación___
	%aux747 = load i32, i32* @IdPos10
	%aux748 = add i32 0, 1
	%aux749 = add i32 %aux747, %aux748
	store i32 %aux749, i32* @IdPos10
	br label %etiq388
	
	etiq388:
	;___IfElse___
	%aux751 = add i32 0, 100
	%aux752 = load i32, i32* @Pivot10
	%aux753 = sub i32 %aux751, %aux752
	%aux754 = load i32, i32* @IdPos10
	%aux755 = icmp eq i32 %aux753, %aux754
	br i1 %aux755, label %etiq389, label %etiq390
	
	etiq389:
	;___Asignación___
	%aux757 = load i32, i32* @_Acum19
	%aux758 = add i32 0, 1
	%aux759 = add i32 %aux757, %aux758
	store i32 %aux759, i32* @_Acum19
	br label %etiq393
	
	etiq393:
	;___Asignación___
	%aux761 = load i32, i32* @IdPos10
	%aux762 = add i32 0, 1
	%aux763 = add i32 %aux761, %aux762
	store i32 %aux763, i32* @IdPos10
	br label %etiq395
	
	etiq395:
	;___Asignación___
	%aux765 = load i32, i32* @Pivot10
	%aux766 = add i32 0, 1
	%aux767 = sub i32 %aux765, %aux766
	store i32 %aux767, i32* @Pivot10
	br label %etiq398
	
	etiq390:
	;___Asignación___
	%aux769 = load i32, i32* @IdPos10
	%aux770 = add i32 0, 1
	%aux771 = add i32 %aux769, %aux770
	store i32 %aux771, i32* @IdPos10
	br label %etiq398
	
	etiq398:
	;___IfElse___
	%aux773 = add i32 0, 100
	%aux774 = load i32, i32* @Pivot10
	%aux775 = sub i32 %aux773, %aux774
	%aux776 = load i32, i32* @IdPos10
	%aux777 = icmp eq i32 %aux775, %aux776
	br i1 %aux777, label %etiq399, label %etiq400
	
	etiq399:
	;___Asignación___
	%aux779 = load i32, i32* @_Acum19
	%aux780 = add i32 0, 1
	%aux781 = add i32 %aux779, %aux780
	store i32 %aux781, i32* @_Acum19
	br label %etiq403
	
	etiq403:
	;___Asignación___
	%aux783 = load i32, i32* @IdPos10
	%aux784 = add i32 0, 1
	%aux785 = add i32 %aux783, %aux784
	store i32 %aux785, i32* @IdPos10
	br label %etiq405
	
	etiq405:
	;___Asignación___
	%aux787 = load i32, i32* @Pivot10
	%aux788 = add i32 0, 1
	%aux789 = sub i32 %aux787, %aux788
	store i32 %aux789, i32* @Pivot10
	br label %etiq408
	
	etiq400:
	;___Asignación___
	%aux791 = load i32, i32* @IdPos10
	%aux792 = add i32 0, 1
	%aux793 = add i32 %aux791, %aux792
	store i32 %aux793, i32* @IdPos10
	br label %etiq408
	
	etiq408:
	;___IfElse___
	%aux795 = add i32 0, 100
	%aux796 = load i32, i32* @Pivot10
	%aux797 = sub i32 %aux795, %aux796
	%aux798 = load i32, i32* @IdPos10
	%aux799 = icmp eq i32 %aux797, %aux798
	br i1 %aux799, label %etiq409, label %etiq410
	
	etiq409:
	;___Asignación___
	%aux801 = load i32, i32* @_Acum19
	%aux802 = add i32 0, 1
	%aux803 = add i32 %aux801, %aux802
	store i32 %aux803, i32* @_Acum19
	br label %etiq413
	
	etiq413:
	;___Asignación___
	%aux805 = load i32, i32* @IdPos10
	%aux806 = add i32 0, 1
	%aux807 = add i32 %aux805, %aux806
	store i32 %aux807, i32* @IdPos10
	br label %etiq415
	
	etiq415:
	;___Asignación___
	%aux809 = load i32, i32* @Pivot10
	%aux810 = add i32 0, 1
	%aux811 = sub i32 %aux809, %aux810
	store i32 %aux811, i32* @Pivot10
	br label %etiq418
	
	etiq410:
	;___Asignación___
	%aux813 = load i32, i32* @IdPos10
	%aux814 = add i32 0, 1
	%aux815 = add i32 %aux813, %aux814
	store i32 %aux815, i32* @IdPos10
	br label %etiq418
	
	etiq418:
	;___IfElse___
	%aux817 = add i32 0, 100
	%aux818 = load i32, i32* @Pivot10
	%aux819 = sub i32 %aux817, %aux818
	%aux820 = load i32, i32* @IdPos10
	%aux821 = icmp eq i32 %aux819, %aux820
	br i1 %aux821, label %etiq419, label %etiq420
	
	etiq419:
	;___Asignación___
	%aux823 = load i32, i32* @_Acum19
	%aux824 = add i32 0, 1
	%aux825 = add i32 %aux823, %aux824
	store i32 %aux825, i32* @_Acum19
	br label %etiq423
	
	etiq423:
	;___Asignación___
	%aux827 = load i32, i32* @IdPos10
	%aux828 = add i32 0, 1
	%aux829 = add i32 %aux827, %aux828
	store i32 %aux829, i32* @IdPos10
	br label %etiq425
	
	etiq425:
	;___Asignación___
	%aux831 = load i32, i32* @Pivot10
	%aux832 = add i32 0, 1
	%aux833 = sub i32 %aux831, %aux832
	store i32 %aux833, i32* @Pivot10
	br label %etiq428
	
	etiq420:
	;___Asignación___
	%aux835 = load i32, i32* @IdPos10
	%aux836 = add i32 0, 1
	%aux837 = add i32 %aux835, %aux836
	store i32 %aux837, i32* @IdPos10
	br label %etiq428
	
	etiq428:
	;___IfElse___
	%aux839 = add i32 0, 100
	%aux840 = load i32, i32* @Pivot10
	%aux841 = sub i32 %aux839, %aux840
	%aux842 = load i32, i32* @IdPos10
	%aux843 = icmp eq i32 %aux841, %aux842
	br i1 %aux843, label %etiq429, label %etiq430
	
	etiq429:
	;___Asignación___
	%aux845 = load i32, i32* @_Acum19
	%aux846 = add i32 0, 1
	%aux847 = add i32 %aux845, %aux846
	store i32 %aux847, i32* @_Acum19
	br label %etiq433
	
	etiq433:
	;___Asignación___
	%aux849 = load i32, i32* @IdPos10
	%aux850 = add i32 0, 1
	%aux851 = add i32 %aux849, %aux850
	store i32 %aux851, i32* @IdPos10
	br label %etiq435
	
	etiq435:
	;___Asignación___
	%aux853 = load i32, i32* @Pivot10
	%aux854 = add i32 0, 1
	%aux855 = sub i32 %aux853, %aux854
	store i32 %aux855, i32* @Pivot10
	br label %etiq438
	
	etiq430:
	;___Asignación___
	%aux857 = load i32, i32* @IdPos10
	%aux858 = add i32 0, 1
	%aux859 = add i32 %aux857, %aux858
	store i32 %aux859, i32* @IdPos10
	br label %etiq438
	
	etiq438:
	;___IfElse___
	%aux861 = add i32 0, 100
	%aux862 = load i32, i32* @Pivot10
	%aux863 = sub i32 %aux861, %aux862
	%aux864 = load i32, i32* @IdPos10
	%aux865 = icmp eq i32 %aux863, %aux864
	br i1 %aux865, label %etiq439, label %etiq440
	
	etiq439:
	;___Asignación___
	%aux867 = load i32, i32* @_Acum19
	%aux868 = add i32 0, 1
	%aux869 = add i32 %aux867, %aux868
	store i32 %aux869, i32* @_Acum19
	br label %etiq443
	
	etiq443:
	;___Asignación___
	%aux871 = load i32, i32* @IdPos10
	%aux872 = add i32 0, 1
	%aux873 = add i32 %aux871, %aux872
	store i32 %aux873, i32* @IdPos10
	br label %etiq445
	
	etiq445:
	;___Asignación___
	%aux875 = load i32, i32* @Pivot10
	%aux876 = add i32 0, 1
	%aux877 = sub i32 %aux875, %aux876
	store i32 %aux877, i32* @Pivot10
	br label %etiq448
	
	etiq440:
	;___Asignación___
	%aux879 = load i32, i32* @IdPos10
	%aux880 = add i32 0, 1
	%aux881 = add i32 %aux879, %aux880
	store i32 %aux881, i32* @IdPos10
	br label %etiq448
	
	etiq448:
	;___IfElse___
	%aux883 = add i32 0, 100
	%aux884 = load i32, i32* @Pivot10
	%aux885 = sub i32 %aux883, %aux884
	%aux886 = load i32, i32* @IdPos10
	%aux887 = icmp eq i32 %aux885, %aux886
	br i1 %aux887, label %etiq449, label %etiq450
	
	etiq449:
	;___Asignación___
	%aux889 = load i32, i32* @_Acum19
	%aux890 = add i32 0, 1
	%aux891 = add i32 %aux889, %aux890
	store i32 %aux891, i32* @_Acum19
	br label %etiq453
	
	etiq453:
	;___Asignación___
	%aux893 = load i32, i32* @IdPos10
	%aux894 = add i32 0, 1
	%aux895 = add i32 %aux893, %aux894
	store i32 %aux895, i32* @IdPos10
	br label %etiq455
	
	etiq455:
	;___Asignación___
	%aux897 = load i32, i32* @Pivot10
	%aux898 = add i32 0, 1
	%aux899 = sub i32 %aux897, %aux898
	store i32 %aux899, i32* @Pivot10
	br label %etiq458
	
	etiq450:
	;___Asignación___
	%aux901 = load i32, i32* @IdPos10
	%aux902 = add i32 0, 1
	%aux903 = add i32 %aux901, %aux902
	store i32 %aux903, i32* @IdPos10
	br label %etiq458
	
	etiq458:
	;___IfElse___
	%aux905 = add i32 0, 100
	%aux906 = load i32, i32* @Pivot10
	%aux907 = sub i32 %aux905, %aux906
	%aux908 = load i32, i32* @IdPos10
	%aux909 = icmp eq i32 %aux907, %aux908
	br i1 %aux909, label %etiq459, label %etiq460
	
	etiq459:
	;___Asignación___
	%aux911 = load i32, i32* @_Acum19
	%aux912 = add i32 0, 1
	%aux913 = add i32 %aux911, %aux912
	store i32 %aux913, i32* @_Acum19
	br label %etiq463
	
	etiq463:
	;___Asignación___
	%aux915 = load i32, i32* @IdPos10
	%aux916 = add i32 0, 1
	%aux917 = add i32 %aux915, %aux916
	store i32 %aux917, i32* @IdPos10
	br label %etiq465
	
	etiq465:
	;___Asignación___
	%aux919 = load i32, i32* @Pivot10
	%aux920 = add i32 0, 1
	%aux921 = sub i32 %aux919, %aux920
	store i32 %aux921, i32* @Pivot10
	br label %etiq468
	
	etiq460:
	;___Asignación___
	%aux923 = load i32, i32* @IdPos10
	%aux924 = add i32 0, 1
	%aux925 = add i32 %aux923, %aux924
	store i32 %aux925, i32* @IdPos10
	br label %etiq468
	
	etiq468:
	;___IfElse___
	%aux927 = add i32 0, 100
	%aux928 = load i32, i32* @Pivot10
	%aux929 = sub i32 %aux927, %aux928
	%aux930 = load i32, i32* @IdPos10
	%aux931 = icmp eq i32 %aux929, %aux930
	br i1 %aux931, label %etiq469, label %etiq470
	
	etiq469:
	;___Asignación___
	%aux933 = load i32, i32* @_Acum19
	%aux934 = add i32 0, 1
	%aux935 = add i32 %aux933, %aux934
	store i32 %aux935, i32* @_Acum19
	br label %etiq473
	
	etiq473:
	;___Asignación___
	%aux937 = load i32, i32* @IdPos10
	%aux938 = add i32 0, 1
	%aux939 = add i32 %aux937, %aux938
	store i32 %aux939, i32* @IdPos10
	br label %etiq475
	
	etiq475:
	;___Asignación___
	%aux941 = load i32, i32* @Pivot10
	%aux942 = add i32 0, 1
	%aux943 = sub i32 %aux941, %aux942
	store i32 %aux943, i32* @Pivot10
	br label %etiq478
	
	etiq470:
	;___Asignación___
	%aux945 = load i32, i32* @IdPos10
	%aux946 = add i32 0, 1
	%aux947 = add i32 %aux945, %aux946
	store i32 %aux947, i32* @IdPos10
	br label %etiq478
	
	etiq478:
	;___IfElse___
	%aux949 = add i32 0, 100
	%aux950 = load i32, i32* @Pivot10
	%aux951 = sub i32 %aux949, %aux950
	%aux952 = load i32, i32* @IdPos10
	%aux953 = icmp eq i32 %aux951, %aux952
	br i1 %aux953, label %etiq479, label %etiq480
	
	etiq479:
	;___Asignación___
	%aux955 = load i32, i32* @_Acum19
	%aux956 = add i32 0, 1
	%aux957 = add i32 %aux955, %aux956
	store i32 %aux957, i32* @_Acum19
	br label %etiq483
	
	etiq483:
	;___Asignación___
	%aux959 = load i32, i32* @IdPos10
	%aux960 = add i32 0, 1
	%aux961 = add i32 %aux959, %aux960
	store i32 %aux961, i32* @IdPos10
	br label %etiq485
	
	etiq485:
	;___Asignación___
	%aux963 = load i32, i32* @Pivot10
	%aux964 = add i32 0, 1
	%aux965 = sub i32 %aux963, %aux964
	store i32 %aux965, i32* @Pivot10
	br label %etiq488
	
	etiq480:
	;___Asignación___
	%aux967 = load i32, i32* @IdPos10
	%aux968 = add i32 0, 1
	%aux969 = add i32 %aux967, %aux968
	store i32 %aux969, i32* @IdPos10
	br label %etiq488
	
	etiq488:
	;___IfElse___
	%aux971 = add i32 0, 100
	%aux972 = load i32, i32* @Pivot10
	%aux973 = sub i32 %aux971, %aux972
	%aux974 = load i32, i32* @IdPos10
	%aux975 = icmp eq i32 %aux973, %aux974
	br i1 %aux975, label %etiq489, label %etiq490
	
	etiq489:
	;___Asignación___
	%aux977 = load i32, i32* @_Acum19
	%aux978 = add i32 0, 1
	%aux979 = add i32 %aux977, %aux978
	store i32 %aux979, i32* @_Acum19
	br label %etiq493
	
	etiq493:
	;___Asignación___
	%aux981 = load i32, i32* @IdPos10
	%aux982 = add i32 0, 1
	%aux983 = add i32 %aux981, %aux982
	store i32 %aux983, i32* @IdPos10
	br label %etiq495
	
	etiq495:
	;___Asignación___
	%aux985 = load i32, i32* @Pivot10
	%aux986 = add i32 0, 1
	%aux987 = sub i32 %aux985, %aux986
	store i32 %aux987, i32* @Pivot10
	br label %etiq498
	
	etiq490:
	;___Asignación___
	%aux989 = load i32, i32* @IdPos10
	%aux990 = add i32 0, 1
	%aux991 = add i32 %aux989, %aux990
	store i32 %aux991, i32* @IdPos10
	br label %etiq498
	
	etiq498:
	;___IfElse___
	%aux993 = add i32 0, 100
	%aux994 = load i32, i32* @Pivot10
	%aux995 = sub i32 %aux993, %aux994
	%aux996 = load i32, i32* @IdPos10
	%aux997 = icmp eq i32 %aux995, %aux996
	br i1 %aux997, label %etiq499, label %etiq500
	
	etiq499:
	;___Asignación___
	%aux999 = load i32, i32* @_Acum19
	%aux1000 = add i32 0, 1
	%aux1001 = add i32 %aux999, %aux1000
	store i32 %aux1001, i32* @_Acum19
	br label %etiq503
	
	etiq503:
	;___Asignación___
	%aux1003 = load i32, i32* @IdPos10
	%aux1004 = add i32 0, 1
	%aux1005 = add i32 %aux1003, %aux1004
	store i32 %aux1005, i32* @IdPos10
	br label %etiq505
	
	etiq505:
	;___Asignación___
	%aux1007 = load i32, i32* @Pivot10
	%aux1008 = add i32 0, 1
	%aux1009 = sub i32 %aux1007, %aux1008
	store i32 %aux1009, i32* @Pivot10
	br label %etiq508
	
	etiq500:
	;___Asignación___
	%aux1011 = load i32, i32* @IdPos10
	%aux1012 = add i32 0, 1
	%aux1013 = add i32 %aux1011, %aux1012
	store i32 %aux1013, i32* @IdPos10
	br label %etiq508
	
	etiq508:
	;___IfElse___
	%aux1015 = add i32 0, 100
	%aux1016 = load i32, i32* @Pivot10
	%aux1017 = sub i32 %aux1015, %aux1016
	%aux1018 = load i32, i32* @IdPos10
	%aux1019 = icmp eq i32 %aux1017, %aux1018
	br i1 %aux1019, label %etiq509, label %etiq510
	
	etiq509:
	;___Asignación___
	%aux1021 = load i32, i32* @_Acum19
	%aux1022 = add i32 0, 1
	%aux1023 = add i32 %aux1021, %aux1022
	store i32 %aux1023, i32* @_Acum19
	br label %etiq513
	
	etiq513:
	;___Asignación___
	%aux1025 = load i32, i32* @IdPos10
	%aux1026 = add i32 0, 1
	%aux1027 = add i32 %aux1025, %aux1026
	store i32 %aux1027, i32* @IdPos10
	br label %etiq515
	
	etiq515:
	;___Asignación___
	%aux1029 = load i32, i32* @Pivot10
	%aux1030 = add i32 0, 1
	%aux1031 = sub i32 %aux1029, %aux1030
	store i32 %aux1031, i32* @Pivot10
	br label %etiq518
	
	etiq510:
	;___Asignación___
	%aux1033 = load i32, i32* @IdPos10
	%aux1034 = add i32 0, 1
	%aux1035 = add i32 %aux1033, %aux1034
	store i32 %aux1035, i32* @IdPos10
	br label %etiq518
	
	etiq518:
	;___IfElse___
	%aux1037 = add i32 0, 100
	%aux1038 = load i32, i32* @Pivot10
	%aux1039 = sub i32 %aux1037, %aux1038
	%aux1040 = load i32, i32* @IdPos10
	%aux1041 = icmp eq i32 %aux1039, %aux1040
	br i1 %aux1041, label %etiq519, label %etiq520
	
	etiq519:
	;___Asignación___
	%aux1043 = load i32, i32* @_Acum19
	%aux1044 = add i32 0, 1
	%aux1045 = add i32 %aux1043, %aux1044
	store i32 %aux1045, i32* @_Acum19
	br label %etiq523
	
	etiq523:
	;___Asignación___
	%aux1047 = load i32, i32* @IdPos10
	%aux1048 = add i32 0, 1
	%aux1049 = add i32 %aux1047, %aux1048
	store i32 %aux1049, i32* @IdPos10
	br label %etiq525
	
	etiq525:
	;___Asignación___
	%aux1051 = load i32, i32* @Pivot10
	%aux1052 = add i32 0, 1
	%aux1053 = sub i32 %aux1051, %aux1052
	store i32 %aux1053, i32* @Pivot10
	br label %etiq528
	
	etiq520:
	;___Asignación___
	%aux1055 = load i32, i32* @IdPos10
	%aux1056 = add i32 0, 1
	%aux1057 = add i32 %aux1055, %aux1056
	store i32 %aux1057, i32* @IdPos10
	br label %etiq528
	
	etiq528:
	;___IfElse___
	%aux1059 = add i32 0, 100
	%aux1060 = load i32, i32* @Pivot10
	%aux1061 = sub i32 %aux1059, %aux1060
	%aux1062 = load i32, i32* @IdPos10
	%aux1063 = icmp eq i32 %aux1061, %aux1062
	br i1 %aux1063, label %etiq529, label %etiq530
	
	etiq529:
	;___Asignación___
	%aux1065 = load i32, i32* @_Acum19
	%aux1066 = add i32 0, 1
	%aux1067 = add i32 %aux1065, %aux1066
	store i32 %aux1067, i32* @_Acum19
	br label %etiq533
	
	etiq533:
	;___Asignación___
	%aux1069 = load i32, i32* @IdPos10
	%aux1070 = add i32 0, 1
	%aux1071 = add i32 %aux1069, %aux1070
	store i32 %aux1071, i32* @IdPos10
	br label %etiq535
	
	etiq535:
	;___Asignación___
	%aux1073 = load i32, i32* @Pivot10
	%aux1074 = add i32 0, 1
	%aux1075 = sub i32 %aux1073, %aux1074
	store i32 %aux1075, i32* @Pivot10
	br label %etiq538
	
	etiq530:
	;___Asignación___
	%aux1077 = load i32, i32* @IdPos10
	%aux1078 = add i32 0, 1
	%aux1079 = add i32 %aux1077, %aux1078
	store i32 %aux1079, i32* @IdPos10
	br label %etiq538
	
	etiq538:
	;___IfElse___
	%aux1081 = add i32 0, 100
	%aux1082 = load i32, i32* @Pivot10
	%aux1083 = sub i32 %aux1081, %aux1082
	%aux1084 = load i32, i32* @IdPos10
	%aux1085 = icmp eq i32 %aux1083, %aux1084
	br i1 %aux1085, label %etiq539, label %etiq540
	
	etiq539:
	;___Asignación___
	%aux1087 = load i32, i32* @_Acum19
	%aux1088 = add i32 0, 1
	%aux1089 = add i32 %aux1087, %aux1088
	store i32 %aux1089, i32* @_Acum19
	br label %etiq543
	
	etiq543:
	;___Asignación___
	%aux1091 = load i32, i32* @IdPos10
	%aux1092 = add i32 0, 1
	%aux1093 = add i32 %aux1091, %aux1092
	store i32 %aux1093, i32* @IdPos10
	br label %etiq545
	
	etiq545:
	;___Asignación___
	%aux1095 = load i32, i32* @Pivot10
	%aux1096 = add i32 0, 1
	%aux1097 = sub i32 %aux1095, %aux1096
	store i32 %aux1097, i32* @Pivot10
	br label %etiq548
	
	etiq540:
	;___Asignación___
	%aux1099 = load i32, i32* @IdPos10
	%aux1100 = add i32 0, 1
	%aux1101 = add i32 %aux1099, %aux1100
	store i32 %aux1101, i32* @IdPos10
	br label %etiq548
	
	etiq548:
	;___IfElse___
	%aux1103 = add i32 0, 100
	%aux1104 = load i32, i32* @Pivot10
	%aux1105 = sub i32 %aux1103, %aux1104
	%aux1106 = load i32, i32* @IdPos10
	%aux1107 = icmp eq i32 %aux1105, %aux1106
	br i1 %aux1107, label %etiq549, label %etiq550
	
	etiq549:
	;___Asignación___
	%aux1109 = load i32, i32* @_Acum19
	%aux1110 = add i32 0, 1
	%aux1111 = add i32 %aux1109, %aux1110
	store i32 %aux1111, i32* @_Acum19
	br label %etiq553
	
	etiq553:
	;___Asignación___
	%aux1113 = load i32, i32* @IdPos10
	%aux1114 = add i32 0, 1
	%aux1115 = add i32 %aux1113, %aux1114
	store i32 %aux1115, i32* @IdPos10
	br label %etiq555
	
	etiq555:
	;___Asignación___
	%aux1117 = load i32, i32* @Pivot10
	%aux1118 = add i32 0, 1
	%aux1119 = sub i32 %aux1117, %aux1118
	store i32 %aux1119, i32* @Pivot10
	br label %etiq558
	
	etiq550:
	;___Asignación___
	%aux1121 = load i32, i32* @IdPos10
	%aux1122 = add i32 0, 1
	%aux1123 = add i32 %aux1121, %aux1122
	store i32 %aux1123, i32* @IdPos10
	br label %etiq558
	
	etiq558:
	;___IfElse___
	%aux1125 = add i32 0, 100
	%aux1126 = load i32, i32* @Pivot10
	%aux1127 = sub i32 %aux1125, %aux1126
	%aux1128 = load i32, i32* @IdPos10
	%aux1129 = icmp eq i32 %aux1127, %aux1128
	br i1 %aux1129, label %etiq559, label %etiq560
	
	etiq559:
	;___Asignación___
	%aux1131 = load i32, i32* @_Acum19
	%aux1132 = add i32 0, 1
	%aux1133 = add i32 %aux1131, %aux1132
	store i32 %aux1133, i32* @_Acum19
	br label %etiq563
	
	etiq563:
	;___Asignación___
	%aux1135 = load i32, i32* @IdPos10
	%aux1136 = add i32 0, 1
	%aux1137 = add i32 %aux1135, %aux1136
	store i32 %aux1137, i32* @IdPos10
	br label %etiq565
	
	etiq565:
	;___Asignación___
	%aux1139 = load i32, i32* @Pivot10
	%aux1140 = add i32 0, 1
	%aux1141 = sub i32 %aux1139, %aux1140
	store i32 %aux1141, i32* @Pivot10
	br label %etiq568
	
	etiq560:
	;___Asignación___
	%aux1143 = load i32, i32* @IdPos10
	%aux1144 = add i32 0, 1
	%aux1145 = add i32 %aux1143, %aux1144
	store i32 %aux1145, i32* @IdPos10
	br label %etiq568
	
	etiq568:
	;___IfElse___
	%aux1147 = add i32 0, 100
	%aux1148 = load i32, i32* @Pivot10
	%aux1149 = sub i32 %aux1147, %aux1148
	%aux1150 = load i32, i32* @IdPos10
	%aux1151 = icmp eq i32 %aux1149, %aux1150
	br i1 %aux1151, label %etiq569, label %etiq570
	
	etiq569:
	;___Asignación___
	%aux1153 = load i32, i32* @_Acum19
	%aux1154 = add i32 0, 1
	%aux1155 = add i32 %aux1153, %aux1154
	store i32 %aux1155, i32* @_Acum19
	br label %etiq573
	
	etiq573:
	;___Asignación___
	%aux1157 = load i32, i32* @IdPos10
	%aux1158 = add i32 0, 1
	%aux1159 = add i32 %aux1157, %aux1158
	store i32 %aux1159, i32* @IdPos10
	br label %etiq575
	
	etiq575:
	;___Asignación___
	%aux1161 = load i32, i32* @Pivot10
	%aux1162 = add i32 0, 1
	%aux1163 = sub i32 %aux1161, %aux1162
	store i32 %aux1163, i32* @Pivot10
	br label %etiq578
	
	etiq570:
	;___Asignación___
	%aux1165 = load i32, i32* @IdPos10
	%aux1166 = add i32 0, 1
	%aux1167 = add i32 %aux1165, %aux1166
	store i32 %aux1167, i32* @IdPos10
	br label %etiq578
	
	etiq578:
	;___IfElse___
	%aux1169 = add i32 0, 100
	%aux1170 = load i32, i32* @Pivot10
	%aux1171 = sub i32 %aux1169, %aux1170
	%aux1172 = load i32, i32* @IdPos10
	%aux1173 = icmp eq i32 %aux1171, %aux1172
	br i1 %aux1173, label %etiq579, label %etiq580
	
	etiq579:
	;___Asignación___
	%aux1175 = load i32, i32* @_Acum19
	%aux1176 = add i32 0, 1
	%aux1177 = add i32 %aux1175, %aux1176
	store i32 %aux1177, i32* @_Acum19
	br label %etiq583
	
	etiq583:
	;___Asignación___
	%aux1179 = load i32, i32* @IdPos10
	%aux1180 = add i32 0, 1
	%aux1181 = add i32 %aux1179, %aux1180
	store i32 %aux1181, i32* @IdPos10
	br label %etiq585
	
	etiq585:
	;___Asignación___
	%aux1183 = load i32, i32* @Pivot10
	%aux1184 = add i32 0, 1
	%aux1185 = sub i32 %aux1183, %aux1184
	store i32 %aux1185, i32* @Pivot10
	br label %etiq588
	
	etiq580:
	;___Asignación___
	%aux1187 = load i32, i32* @IdPos10
	%aux1188 = add i32 0, 1
	%aux1189 = add i32 %aux1187, %aux1188
	store i32 %aux1189, i32* @IdPos10
	br label %etiq588
	
	etiq588:
	;___IfElse___
	%aux1191 = add i32 0, 100
	%aux1192 = load i32, i32* @Pivot10
	%aux1193 = sub i32 %aux1191, %aux1192
	%aux1194 = load i32, i32* @IdPos10
	%aux1195 = icmp eq i32 %aux1193, %aux1194
	br i1 %aux1195, label %etiq589, label %etiq590
	
	etiq589:
	;___Asignación___
	%aux1197 = load i32, i32* @_Acum19
	%aux1198 = add i32 0, 1
	%aux1199 = add i32 %aux1197, %aux1198
	store i32 %aux1199, i32* @_Acum19
	br label %etiq593
	
	etiq593:
	;___Asignación___
	%aux1201 = load i32, i32* @IdPos10
	%aux1202 = add i32 0, 1
	%aux1203 = add i32 %aux1201, %aux1202
	store i32 %aux1203, i32* @IdPos10
	br label %etiq595
	
	etiq595:
	;___Asignación___
	%aux1205 = load i32, i32* @Pivot10
	%aux1206 = add i32 0, 1
	%aux1207 = sub i32 %aux1205, %aux1206
	store i32 %aux1207, i32* @Pivot10
	br label %etiq598
	
	etiq590:
	;___Asignación___
	%aux1209 = load i32, i32* @IdPos10
	%aux1210 = add i32 0, 1
	%aux1211 = add i32 %aux1209, %aux1210
	store i32 %aux1211, i32* @IdPos10
	br label %etiq598
	
	etiq598:
	;___IfElse___
	%aux1213 = add i32 0, 100
	%aux1214 = load i32, i32* @Pivot10
	%aux1215 = sub i32 %aux1213, %aux1214
	%aux1216 = load i32, i32* @IdPos10
	%aux1217 = icmp eq i32 %aux1215, %aux1216
	br i1 %aux1217, label %etiq599, label %etiq600
	
	etiq599:
	;___Asignación___
	%aux1219 = load i32, i32* @_Acum19
	%aux1220 = add i32 0, 1
	%aux1221 = add i32 %aux1219, %aux1220
	store i32 %aux1221, i32* @_Acum19
	br label %etiq603
	
	etiq603:
	;___Asignación___
	%aux1223 = load i32, i32* @IdPos10
	%aux1224 = add i32 0, 1
	%aux1225 = add i32 %aux1223, %aux1224
	store i32 %aux1225, i32* @IdPos10
	br label %etiq605
	
	etiq605:
	;___Asignación___
	%aux1227 = load i32, i32* @Pivot10
	%aux1228 = add i32 0, 1
	%aux1229 = sub i32 %aux1227, %aux1228
	store i32 %aux1229, i32* @Pivot10
	br label %etiq608
	
	etiq600:
	;___Asignación___
	%aux1231 = load i32, i32* @IdPos10
	%aux1232 = add i32 0, 1
	%aux1233 = add i32 %aux1231, %aux1232
	store i32 %aux1233, i32* @IdPos10
	br label %etiq608
	
	etiq608:
	;___IfElse___
	%aux1235 = add i32 0, 100
	%aux1236 = load i32, i32* @Pivot10
	%aux1237 = sub i32 %aux1235, %aux1236
	%aux1238 = load i32, i32* @IdPos10
	%aux1239 = icmp eq i32 %aux1237, %aux1238
	br i1 %aux1239, label %etiq609, label %etiq610
	
	etiq609:
	;___Asignación___
	%aux1241 = load i32, i32* @_Acum19
	%aux1242 = add i32 0, 1
	%aux1243 = add i32 %aux1241, %aux1242
	store i32 %aux1243, i32* @_Acum19
	br label %etiq613
	
	etiq613:
	;___Asignación___
	%aux1245 = load i32, i32* @IdPos10
	%aux1246 = add i32 0, 1
	%aux1247 = add i32 %aux1245, %aux1246
	store i32 %aux1247, i32* @IdPos10
	br label %etiq615
	
	etiq615:
	;___Asignación___
	%aux1249 = load i32, i32* @Pivot10
	%aux1250 = add i32 0, 1
	%aux1251 = sub i32 %aux1249, %aux1250
	store i32 %aux1251, i32* @Pivot10
	br label %etiq618
	
	etiq610:
	;___Asignación___
	%aux1253 = load i32, i32* @IdPos10
	%aux1254 = add i32 0, 1
	%aux1255 = add i32 %aux1253, %aux1254
	store i32 %aux1255, i32* @IdPos10
	br label %etiq618
	
	etiq618:
	;___IfElse___
	%aux1257 = add i32 0, 100
	%aux1258 = load i32, i32* @Pivot10
	%aux1259 = sub i32 %aux1257, %aux1258
	%aux1260 = load i32, i32* @IdPos10
	%aux1261 = icmp eq i32 %aux1259, %aux1260
	br i1 %aux1261, label %etiq619, label %etiq620
	
	etiq619:
	;___Asignación___
	%aux1263 = load i32, i32* @_Acum19
	%aux1264 = add i32 0, 1
	%aux1265 = add i32 %aux1263, %aux1264
	store i32 %aux1265, i32* @_Acum19
	br label %etiq623
	
	etiq623:
	;___Asignación___
	%aux1267 = load i32, i32* @IdPos10
	%aux1268 = add i32 0, 1
	%aux1269 = add i32 %aux1267, %aux1268
	store i32 %aux1269, i32* @IdPos10
	br label %etiq625
	
	etiq625:
	;___Asignación___
	%aux1271 = load i32, i32* @Pivot10
	%aux1272 = add i32 0, 1
	%aux1273 = sub i32 %aux1271, %aux1272
	store i32 %aux1273, i32* @Pivot10
	br label %etiq628
	
	etiq620:
	;___Asignación___
	%aux1275 = load i32, i32* @IdPos10
	%aux1276 = add i32 0, 1
	%aux1277 = add i32 %aux1275, %aux1276
	store i32 %aux1277, i32* @IdPos10
	br label %etiq628
	
	etiq628:
	;___IfElse___
	%aux1279 = add i32 0, 100
	%aux1280 = load i32, i32* @Pivot10
	%aux1281 = sub i32 %aux1279, %aux1280
	%aux1282 = load i32, i32* @IdPos10
	%aux1283 = icmp eq i32 %aux1281, %aux1282
	br i1 %aux1283, label %etiq629, label %etiq630
	
	etiq629:
	;___Asignación___
	%aux1285 = load i32, i32* @_Acum19
	%aux1286 = add i32 0, 1
	%aux1287 = add i32 %aux1285, %aux1286
	store i32 %aux1287, i32* @_Acum19
	br label %etiq633
	
	etiq633:
	;___Asignación___
	%aux1289 = load i32, i32* @IdPos10
	%aux1290 = add i32 0, 1
	%aux1291 = add i32 %aux1289, %aux1290
	store i32 %aux1291, i32* @IdPos10
	br label %etiq635
	
	etiq635:
	;___Asignación___
	%aux1293 = load i32, i32* @Pivot10
	%aux1294 = add i32 0, 1
	%aux1295 = sub i32 %aux1293, %aux1294
	store i32 %aux1295, i32* @Pivot10
	br label %etiq638
	
	etiq630:
	;___Asignación___
	%aux1297 = load i32, i32* @IdPos10
	%aux1298 = add i32 0, 1
	%aux1299 = add i32 %aux1297, %aux1298
	store i32 %aux1299, i32* @IdPos10
	br label %etiq638
	
	etiq638:
	;___IfElse___
	%aux1301 = add i32 0, 100
	%aux1302 = load i32, i32* @Pivot10
	%aux1303 = sub i32 %aux1301, %aux1302
	%aux1304 = load i32, i32* @IdPos10
	%aux1305 = icmp eq i32 %aux1303, %aux1304
	br i1 %aux1305, label %etiq639, label %etiq640
	
	etiq639:
	;___Asignación___
	%aux1307 = load i32, i32* @_Acum19
	%aux1308 = add i32 0, 1
	%aux1309 = add i32 %aux1307, %aux1308
	store i32 %aux1309, i32* @_Acum19
	br label %etiq643
	
	etiq643:
	;___Asignación___
	%aux1311 = load i32, i32* @IdPos10
	%aux1312 = add i32 0, 1
	%aux1313 = add i32 %aux1311, %aux1312
	store i32 %aux1313, i32* @IdPos10
	br label %etiq645
	
	etiq645:
	;___Asignación___
	%aux1315 = load i32, i32* @Pivot10
	%aux1316 = add i32 0, 1
	%aux1317 = sub i32 %aux1315, %aux1316
	store i32 %aux1317, i32* @Pivot10
	br label %etiq648
	
	etiq640:
	;___Asignación___
	%aux1319 = load i32, i32* @IdPos10
	%aux1320 = add i32 0, 1
	%aux1321 = add i32 %aux1319, %aux1320
	store i32 %aux1321, i32* @IdPos10
	br label %etiq648
	
	etiq648:
	;___IfElse___
	%aux1323 = add i32 0, 100
	%aux1324 = load i32, i32* @Pivot10
	%aux1325 = sub i32 %aux1323, %aux1324
	%aux1326 = load i32, i32* @IdPos10
	%aux1327 = icmp eq i32 %aux1325, %aux1326
	br i1 %aux1327, label %etiq649, label %etiq650
	
	etiq649:
	;___Asignación___
	%aux1329 = load i32, i32* @_Acum19
	%aux1330 = add i32 0, 1
	%aux1331 = add i32 %aux1329, %aux1330
	store i32 %aux1331, i32* @_Acum19
	br label %etiq653
	
	etiq653:
	;___Asignación___
	%aux1333 = load i32, i32* @IdPos10
	%aux1334 = add i32 0, 1
	%aux1335 = add i32 %aux1333, %aux1334
	store i32 %aux1335, i32* @IdPos10
	br label %etiq655
	
	etiq655:
	;___Asignación___
	%aux1337 = load i32, i32* @Pivot10
	%aux1338 = add i32 0, 1
	%aux1339 = sub i32 %aux1337, %aux1338
	store i32 %aux1339, i32* @Pivot10
	br label %etiq658
	
	etiq650:
	;___Asignación___
	%aux1341 = load i32, i32* @IdPos10
	%aux1342 = add i32 0, 1
	%aux1343 = add i32 %aux1341, %aux1342
	store i32 %aux1343, i32* @IdPos10
	br label %etiq658
	
	etiq658:
	;___IfElse___
	%aux1345 = add i32 0, 100
	%aux1346 = load i32, i32* @Pivot10
	%aux1347 = sub i32 %aux1345, %aux1346
	%aux1348 = load i32, i32* @IdPos10
	%aux1349 = icmp eq i32 %aux1347, %aux1348
	br i1 %aux1349, label %etiq659, label %etiq660
	
	etiq659:
	;___Asignación___
	%aux1351 = load i32, i32* @_Acum19
	%aux1352 = add i32 0, 1
	%aux1353 = add i32 %aux1351, %aux1352
	store i32 %aux1353, i32* @_Acum19
	br label %etiq663
	
	etiq663:
	;___Asignación___
	%aux1355 = load i32, i32* @IdPos10
	%aux1356 = add i32 0, 1
	%aux1357 = add i32 %aux1355, %aux1356
	store i32 %aux1357, i32* @IdPos10
	br label %etiq665
	
	etiq665:
	;___Asignación___
	%aux1359 = load i32, i32* @Pivot10
	%aux1360 = add i32 0, 1
	%aux1361 = sub i32 %aux1359, %aux1360
	store i32 %aux1361, i32* @Pivot10
	br label %etiq668
	
	etiq660:
	;___Asignación___
	%aux1363 = load i32, i32* @IdPos10
	%aux1364 = add i32 0, 1
	%aux1365 = add i32 %aux1363, %aux1364
	store i32 %aux1365, i32* @IdPos10
	br label %etiq668
	
	etiq668:
	;___IfElse___
	%aux1367 = add i32 0, 100
	%aux1368 = load i32, i32* @Pivot10
	%aux1369 = sub i32 %aux1367, %aux1368
	%aux1370 = load i32, i32* @IdPos10
	%aux1371 = icmp eq i32 %aux1369, %aux1370
	br i1 %aux1371, label %etiq669, label %etiq670
	
	etiq669:
	;___Asignación___
	%aux1373 = load i32, i32* @_Acum19
	%aux1374 = add i32 0, 1
	%aux1375 = add i32 %aux1373, %aux1374
	store i32 %aux1375, i32* @_Acum19
	br label %etiq673
	
	etiq673:
	;___Asignación___
	%aux1377 = load i32, i32* @IdPos10
	%aux1378 = add i32 0, 1
	%aux1379 = add i32 %aux1377, %aux1378
	store i32 %aux1379, i32* @IdPos10
	br label %etiq675
	
	etiq675:
	;___Asignación___
	%aux1381 = load i32, i32* @Pivot10
	%aux1382 = add i32 0, 1
	%aux1383 = sub i32 %aux1381, %aux1382
	store i32 %aux1383, i32* @Pivot10
	br label %etiq678
	
	etiq670:
	;___Asignación___
	%aux1385 = load i32, i32* @IdPos10
	%aux1386 = add i32 0, 1
	%aux1387 = add i32 %aux1385, %aux1386
	store i32 %aux1387, i32* @IdPos10
	br label %etiq678
	
	etiq678:
	;___IfElse___
	%aux1389 = add i32 0, 100
	%aux1390 = load i32, i32* @Pivot10
	%aux1391 = sub i32 %aux1389, %aux1390
	%aux1392 = load i32, i32* @IdPos10
	%aux1393 = icmp eq i32 %aux1391, %aux1392
	br i1 %aux1393, label %etiq679, label %etiq680
	
	etiq679:
	;___Asignación___
	%aux1395 = load i32, i32* @_Acum19
	%aux1396 = add i32 0, 1
	%aux1397 = add i32 %aux1395, %aux1396
	store i32 %aux1397, i32* @_Acum19
	br label %etiq683
	
	etiq683:
	;___Asignación___
	%aux1399 = load i32, i32* @IdPos10
	%aux1400 = add i32 0, 1
	%aux1401 = add i32 %aux1399, %aux1400
	store i32 %aux1401, i32* @IdPos10
	br label %etiq685
	
	etiq685:
	;___Asignación___
	%aux1403 = load i32, i32* @Pivot10
	%aux1404 = add i32 0, 1
	%aux1405 = sub i32 %aux1403, %aux1404
	store i32 %aux1405, i32* @Pivot10
	br label %etiq688
	
	etiq680:
	;___Asignación___
	%aux1407 = load i32, i32* @IdPos10
	%aux1408 = add i32 0, 1
	%aux1409 = add i32 %aux1407, %aux1408
	store i32 %aux1409, i32* @IdPos10
	br label %etiq688
	
	etiq688:
	;___IfElse___
	%aux1411 = add i32 0, 100
	%aux1412 = load i32, i32* @Pivot10
	%aux1413 = sub i32 %aux1411, %aux1412
	%aux1414 = load i32, i32* @IdPos10
	%aux1415 = icmp eq i32 %aux1413, %aux1414
	br i1 %aux1415, label %etiq689, label %etiq690
	
	etiq689:
	;___Asignación___
	%aux1417 = load i32, i32* @_Acum19
	%aux1418 = add i32 0, 1
	%aux1419 = add i32 %aux1417, %aux1418
	store i32 %aux1419, i32* @_Acum19
	br label %etiq693
	
	etiq693:
	;___Asignación___
	%aux1421 = load i32, i32* @IdPos10
	%aux1422 = add i32 0, 1
	%aux1423 = add i32 %aux1421, %aux1422
	store i32 %aux1423, i32* @IdPos10
	br label %etiq695
	
	etiq695:
	;___Asignación___
	%aux1425 = load i32, i32* @Pivot10
	%aux1426 = add i32 0, 1
	%aux1427 = sub i32 %aux1425, %aux1426
	store i32 %aux1427, i32* @Pivot10
	br label %etiq698
	
	etiq690:
	;___Asignación___
	%aux1429 = load i32, i32* @IdPos10
	%aux1430 = add i32 0, 1
	%aux1431 = add i32 %aux1429, %aux1430
	store i32 %aux1431, i32* @IdPos10
	br label %etiq698
	
	etiq698:
	;___IfElse___
	%aux1433 = add i32 0, 100
	%aux1434 = load i32, i32* @Pivot10
	%aux1435 = sub i32 %aux1433, %aux1434
	%aux1436 = load i32, i32* @IdPos10
	%aux1437 = icmp eq i32 %aux1435, %aux1436
	br i1 %aux1437, label %etiq699, label %etiq700
	
	etiq699:
	;___Asignación___
	%aux1439 = load i32, i32* @_Acum19
	%aux1440 = add i32 0, 1
	%aux1441 = add i32 %aux1439, %aux1440
	store i32 %aux1441, i32* @_Acum19
	br label %etiq703
	
	etiq703:
	;___Asignación___
	%aux1443 = load i32, i32* @IdPos10
	%aux1444 = add i32 0, 1
	%aux1445 = add i32 %aux1443, %aux1444
	store i32 %aux1445, i32* @IdPos10
	br label %etiq705
	
	etiq705:
	;___Asignación___
	%aux1447 = load i32, i32* @Pivot10
	%aux1448 = add i32 0, 1
	%aux1449 = sub i32 %aux1447, %aux1448
	store i32 %aux1449, i32* @Pivot10
	br label %etiq708
	
	etiq700:
	;___Asignación___
	%aux1451 = load i32, i32* @IdPos10
	%aux1452 = add i32 0, 1
	%aux1453 = add i32 %aux1451, %aux1452
	store i32 %aux1453, i32* @IdPos10
	br label %etiq708
	
	etiq708:
	;___IfElse___
	%aux1455 = add i32 0, 100
	%aux1456 = load i32, i32* @Pivot10
	%aux1457 = sub i32 %aux1455, %aux1456
	%aux1458 = load i32, i32* @IdPos10
	%aux1459 = icmp eq i32 %aux1457, %aux1458
	br i1 %aux1459, label %etiq709, label %etiq710
	
	etiq709:
	;___Asignación___
	%aux1461 = load i32, i32* @_Acum19
	%aux1462 = add i32 0, 1
	%aux1463 = add i32 %aux1461, %aux1462
	store i32 %aux1463, i32* @_Acum19
	br label %etiq713
	
	etiq713:
	;___Asignación___
	%aux1465 = load i32, i32* @IdPos10
	%aux1466 = add i32 0, 1
	%aux1467 = add i32 %aux1465, %aux1466
	store i32 %aux1467, i32* @IdPos10
	br label %etiq715
	
	etiq715:
	;___Asignación___
	%aux1469 = load i32, i32* @Pivot10
	%aux1470 = add i32 0, 1
	%aux1471 = sub i32 %aux1469, %aux1470
	store i32 %aux1471, i32* @Pivot10
	br label %etiq718
	
	etiq710:
	;___Asignación___
	%aux1473 = load i32, i32* @IdPos10
	%aux1474 = add i32 0, 1
	%aux1475 = add i32 %aux1473, %aux1474
	store i32 %aux1475, i32* @IdPos10
	br label %etiq718
	
	etiq718:
	;___IfElse___
	%aux1477 = add i32 0, 100
	%aux1478 = load i32, i32* @Pivot10
	%aux1479 = sub i32 %aux1477, %aux1478
	%aux1480 = load i32, i32* @IdPos10
	%aux1481 = icmp eq i32 %aux1479, %aux1480
	br i1 %aux1481, label %etiq719, label %etiq720
	
	etiq719:
	;___Asignación___
	%aux1483 = load i32, i32* @_Acum19
	%aux1484 = add i32 0, 1
	%aux1485 = add i32 %aux1483, %aux1484
	store i32 %aux1485, i32* @_Acum19
	br label %etiq723
	
	etiq723:
	;___Asignación___
	%aux1487 = load i32, i32* @IdPos10
	%aux1488 = add i32 0, 1
	%aux1489 = add i32 %aux1487, %aux1488
	store i32 %aux1489, i32* @IdPos10
	br label %etiq725
	
	etiq725:
	;___Asignación___
	%aux1491 = load i32, i32* @Pivot10
	%aux1492 = add i32 0, 1
	%aux1493 = sub i32 %aux1491, %aux1492
	store i32 %aux1493, i32* @Pivot10
	br label %etiq728
	
	etiq720:
	;___Asignación___
	%aux1495 = load i32, i32* @IdPos10
	%aux1496 = add i32 0, 1
	%aux1497 = add i32 %aux1495, %aux1496
	store i32 %aux1497, i32* @IdPos10
	br label %etiq728
	
	etiq728:
	;___IfElse___
	%aux1499 = add i32 0, 100
	%aux1500 = load i32, i32* @Pivot10
	%aux1501 = sub i32 %aux1499, %aux1500
	%aux1502 = load i32, i32* @IdPos10
	%aux1503 = icmp eq i32 %aux1501, %aux1502
	br i1 %aux1503, label %etiq729, label %etiq730
	
	etiq729:
	;___Asignación___
	%aux1505 = load i32, i32* @_Acum19
	%aux1506 = add i32 0, 1
	%aux1507 = add i32 %aux1505, %aux1506
	store i32 %aux1507, i32* @_Acum19
	br label %etiq733
	
	etiq733:
	;___Asignación___
	%aux1509 = load i32, i32* @IdPos10
	%aux1510 = add i32 0, 1
	%aux1511 = add i32 %aux1509, %aux1510
	store i32 %aux1511, i32* @IdPos10
	br label %etiq735
	
	etiq735:
	;___Asignación___
	%aux1513 = load i32, i32* @Pivot10
	%aux1514 = add i32 0, 1
	%aux1515 = sub i32 %aux1513, %aux1514
	store i32 %aux1515, i32* @Pivot10
	br label %etiq738
	
	etiq730:
	;___Asignación___
	%aux1517 = load i32, i32* @IdPos10
	%aux1518 = add i32 0, 1
	%aux1519 = add i32 %aux1517, %aux1518
	store i32 %aux1519, i32* @IdPos10
	br label %etiq738
	
	etiq738:
	;___IfElse___
	%aux1521 = add i32 0, 100
	%aux1522 = load i32, i32* @Pivot10
	%aux1523 = sub i32 %aux1521, %aux1522
	%aux1524 = load i32, i32* @IdPos10
	%aux1525 = icmp eq i32 %aux1523, %aux1524
	br i1 %aux1525, label %etiq739, label %etiq740
	
	etiq739:
	;___Asignación___
	%aux1527 = load i32, i32* @_Acum19
	%aux1528 = add i32 0, 1
	%aux1529 = add i32 %aux1527, %aux1528
	store i32 %aux1529, i32* @_Acum19
	br label %etiq743
	
	etiq743:
	;___Asignación___
	%aux1531 = load i32, i32* @IdPos10
	%aux1532 = add i32 0, 1
	%aux1533 = add i32 %aux1531, %aux1532
	store i32 %aux1533, i32* @IdPos10
	br label %etiq745
	
	etiq745:
	;___Asignación___
	%aux1535 = load i32, i32* @Pivot10
	%aux1536 = add i32 0, 1
	%aux1537 = sub i32 %aux1535, %aux1536
	store i32 %aux1537, i32* @Pivot10
	br label %etiq748
	
	etiq740:
	;___Asignación___
	%aux1539 = load i32, i32* @IdPos10
	%aux1540 = add i32 0, 1
	%aux1541 = add i32 %aux1539, %aux1540
	store i32 %aux1541, i32* @IdPos10
	br label %etiq748
	
	etiq748:
	;___IfElse___
	%aux1543 = add i32 0, 100
	%aux1544 = load i32, i32* @Pivot10
	%aux1545 = sub i32 %aux1543, %aux1544
	%aux1546 = load i32, i32* @IdPos10
	%aux1547 = icmp eq i32 %aux1545, %aux1546
	br i1 %aux1547, label %etiq749, label %etiq750
	
	etiq749:
	;___Asignación___
	%aux1549 = load i32, i32* @_Acum19
	%aux1550 = add i32 0, 1
	%aux1551 = add i32 %aux1549, %aux1550
	store i32 %aux1551, i32* @_Acum19
	br label %etiq753
	
	etiq753:
	;___Asignación___
	%aux1553 = load i32, i32* @IdPos10
	%aux1554 = add i32 0, 1
	%aux1555 = add i32 %aux1553, %aux1554
	store i32 %aux1555, i32* @IdPos10
	br label %etiq755
	
	etiq755:
	;___Asignación___
	%aux1557 = load i32, i32* @Pivot10
	%aux1558 = add i32 0, 1
	%aux1559 = sub i32 %aux1557, %aux1558
	store i32 %aux1559, i32* @Pivot10
	br label %etiq758
	
	etiq750:
	;___Asignación___
	%aux1561 = load i32, i32* @IdPos10
	%aux1562 = add i32 0, 1
	%aux1563 = add i32 %aux1561, %aux1562
	store i32 %aux1563, i32* @IdPos10
	br label %etiq758
	
	etiq758:
	;___IfElse___
	%aux1565 = add i32 0, 100
	%aux1566 = load i32, i32* @Pivot10
	%aux1567 = sub i32 %aux1565, %aux1566
	%aux1568 = load i32, i32* @IdPos10
	%aux1569 = icmp eq i32 %aux1567, %aux1568
	br i1 %aux1569, label %etiq759, label %etiq760
	
	etiq759:
	;___Asignación___
	%aux1571 = load i32, i32* @_Acum19
	%aux1572 = add i32 0, 1
	%aux1573 = add i32 %aux1571, %aux1572
	store i32 %aux1573, i32* @_Acum19
	br label %etiq763
	
	etiq763:
	;___Asignación___
	%aux1575 = load i32, i32* @IdPos10
	%aux1576 = add i32 0, 1
	%aux1577 = add i32 %aux1575, %aux1576
	store i32 %aux1577, i32* @IdPos10
	br label %etiq765
	
	etiq765:
	;___Asignación___
	%aux1579 = load i32, i32* @Pivot10
	%aux1580 = add i32 0, 1
	%aux1581 = sub i32 %aux1579, %aux1580
	store i32 %aux1581, i32* @Pivot10
	br label %etiq768
	
	etiq760:
	;___Asignación___
	%aux1583 = load i32, i32* @IdPos10
	%aux1584 = add i32 0, 1
	%aux1585 = add i32 %aux1583, %aux1584
	store i32 %aux1585, i32* @IdPos10
	br label %etiq768
	
	etiq768:
	;___IfElse___
	%aux1587 = add i32 0, 100
	%aux1588 = load i32, i32* @Pivot10
	%aux1589 = sub i32 %aux1587, %aux1588
	%aux1590 = load i32, i32* @IdPos10
	%aux1591 = icmp eq i32 %aux1589, %aux1590
	br i1 %aux1591, label %etiq769, label %etiq770
	
	etiq769:
	;___Asignación___
	%aux1593 = load i32, i32* @_Acum19
	%aux1594 = add i32 0, 1
	%aux1595 = add i32 %aux1593, %aux1594
	store i32 %aux1595, i32* @_Acum19
	br label %etiq773
	
	etiq773:
	;___Asignación___
	%aux1597 = load i32, i32* @IdPos10
	%aux1598 = add i32 0, 1
	%aux1599 = add i32 %aux1597, %aux1598
	store i32 %aux1599, i32* @IdPos10
	br label %etiq775
	
	etiq775:
	;___Asignación___
	%aux1601 = load i32, i32* @Pivot10
	%aux1602 = add i32 0, 1
	%aux1603 = sub i32 %aux1601, %aux1602
	store i32 %aux1603, i32* @Pivot10
	br label %etiq778
	
	etiq770:
	;___Asignación___
	%aux1605 = load i32, i32* @IdPos10
	%aux1606 = add i32 0, 1
	%aux1607 = add i32 %aux1605, %aux1606
	store i32 %aux1607, i32* @IdPos10
	br label %etiq778
	
	etiq778:
	;___IfElse___
	%aux1609 = add i32 0, 100
	%aux1610 = load i32, i32* @Pivot10
	%aux1611 = sub i32 %aux1609, %aux1610
	%aux1612 = load i32, i32* @IdPos10
	%aux1613 = icmp eq i32 %aux1611, %aux1612
	br i1 %aux1613, label %etiq779, label %etiq780
	
	etiq779:
	;___Asignación___
	%aux1615 = load i32, i32* @_Acum19
	%aux1616 = add i32 0, 1
	%aux1617 = add i32 %aux1615, %aux1616
	store i32 %aux1617, i32* @_Acum19
	br label %etiq783
	
	etiq783:
	;___Asignación___
	%aux1619 = load i32, i32* @IdPos10
	%aux1620 = add i32 0, 1
	%aux1621 = add i32 %aux1619, %aux1620
	store i32 %aux1621, i32* @IdPos10
	br label %etiq785
	
	etiq785:
	;___Asignación___
	%aux1623 = load i32, i32* @Pivot10
	%aux1624 = add i32 0, 1
	%aux1625 = sub i32 %aux1623, %aux1624
	store i32 %aux1625, i32* @Pivot10
	br label %etiq788
	
	etiq780:
	;___Asignación___
	%aux1627 = load i32, i32* @IdPos10
	%aux1628 = add i32 0, 1
	%aux1629 = add i32 %aux1627, %aux1628
	store i32 %aux1629, i32* @IdPos10
	br label %etiq788
	
	etiq788:
	;___IfElse___
	%aux1631 = add i32 0, 100
	%aux1632 = load i32, i32* @Pivot10
	%aux1633 = sub i32 %aux1631, %aux1632
	%aux1634 = load i32, i32* @IdPos10
	%aux1635 = icmp eq i32 %aux1633, %aux1634
	br i1 %aux1635, label %etiq789, label %etiq790
	
	etiq789:
	;___Asignación___
	%aux1637 = load i32, i32* @_Acum19
	%aux1638 = add i32 0, 1
	%aux1639 = add i32 %aux1637, %aux1638
	store i32 %aux1639, i32* @_Acum19
	br label %etiq793
	
	etiq793:
	;___Asignación___
	%aux1641 = load i32, i32* @IdPos10
	%aux1642 = add i32 0, 1
	%aux1643 = add i32 %aux1641, %aux1642
	store i32 %aux1643, i32* @IdPos10
	br label %etiq795
	
	etiq795:
	;___Asignación___
	%aux1645 = load i32, i32* @Pivot10
	%aux1646 = add i32 0, 1
	%aux1647 = sub i32 %aux1645, %aux1646
	store i32 %aux1647, i32* @Pivot10
	br label %etiq798
	
	etiq790:
	;___Asignación___
	%aux1649 = load i32, i32* @IdPos10
	%aux1650 = add i32 0, 1
	%aux1651 = add i32 %aux1649, %aux1650
	store i32 %aux1651, i32* @IdPos10
	br label %etiq798
	
	etiq798:
	;___IfElse___
	%aux1653 = add i32 0, 100
	%aux1654 = load i32, i32* @Pivot10
	%aux1655 = sub i32 %aux1653, %aux1654
	%aux1656 = load i32, i32* @IdPos10
	%aux1657 = icmp eq i32 %aux1655, %aux1656
	br i1 %aux1657, label %etiq799, label %etiq800
	
	etiq799:
	;___Asignación___
	%aux1659 = load i32, i32* @_Acum19
	%aux1660 = add i32 0, 1
	%aux1661 = add i32 %aux1659, %aux1660
	store i32 %aux1661, i32* @_Acum19
	br label %etiq803
	
	etiq803:
	;___Asignación___
	%aux1663 = load i32, i32* @IdPos10
	%aux1664 = add i32 0, 1
	%aux1665 = add i32 %aux1663, %aux1664
	store i32 %aux1665, i32* @IdPos10
	br label %etiq805
	
	etiq805:
	;___Asignación___
	%aux1667 = load i32, i32* @Pivot10
	%aux1668 = add i32 0, 1
	%aux1669 = sub i32 %aux1667, %aux1668
	store i32 %aux1669, i32* @Pivot10
	br label %etiq808
	
	etiq800:
	;___Asignación___
	%aux1671 = load i32, i32* @IdPos10
	%aux1672 = add i32 0, 1
	%aux1673 = add i32 %aux1671, %aux1672
	store i32 %aux1673, i32* @IdPos10
	br label %etiq808
	
	etiq808:
	;___IfElse___
	%aux1675 = add i32 0, 100
	%aux1676 = load i32, i32* @Pivot10
	%aux1677 = sub i32 %aux1675, %aux1676
	%aux1678 = load i32, i32* @IdPos10
	%aux1679 = icmp eq i32 %aux1677, %aux1678
	br i1 %aux1679, label %etiq809, label %etiq810
	
	etiq809:
	;___Asignación___
	%aux1681 = load i32, i32* @_Acum19
	%aux1682 = add i32 0, 1
	%aux1683 = add i32 %aux1681, %aux1682
	store i32 %aux1683, i32* @_Acum19
	br label %etiq813
	
	etiq813:
	;___Asignación___
	%aux1685 = load i32, i32* @IdPos10
	%aux1686 = add i32 0, 1
	%aux1687 = add i32 %aux1685, %aux1686
	store i32 %aux1687, i32* @IdPos10
	br label %etiq815
	
	etiq815:
	;___Asignación___
	%aux1689 = load i32, i32* @Pivot10
	%aux1690 = add i32 0, 1
	%aux1691 = sub i32 %aux1689, %aux1690
	store i32 %aux1691, i32* @Pivot10
	br label %etiq818
	
	etiq810:
	;___Asignación___
	%aux1693 = load i32, i32* @IdPos10
	%aux1694 = add i32 0, 1
	%aux1695 = add i32 %aux1693, %aux1694
	store i32 %aux1695, i32* @IdPos10
	br label %etiq818
	
	etiq818:
	;___IfElse___
	%aux1697 = add i32 0, 100
	%aux1698 = load i32, i32* @Pivot10
	%aux1699 = sub i32 %aux1697, %aux1698
	%aux1700 = load i32, i32* @IdPos10
	%aux1701 = icmp eq i32 %aux1699, %aux1700
	br i1 %aux1701, label %etiq819, label %etiq820
	
	etiq819:
	;___Asignación___
	%aux1703 = load i32, i32* @_Acum19
	%aux1704 = add i32 0, 1
	%aux1705 = add i32 %aux1703, %aux1704
	store i32 %aux1705, i32* @_Acum19
	br label %etiq823
	
	etiq823:
	;___Asignación___
	%aux1707 = load i32, i32* @IdPos10
	%aux1708 = add i32 0, 1
	%aux1709 = add i32 %aux1707, %aux1708
	store i32 %aux1709, i32* @IdPos10
	br label %etiq825
	
	etiq825:
	;___Asignación___
	%aux1711 = load i32, i32* @Pivot10
	%aux1712 = add i32 0, 1
	%aux1713 = sub i32 %aux1711, %aux1712
	store i32 %aux1713, i32* @Pivot10
	br label %etiq828
	
	etiq820:
	;___Asignación___
	%aux1715 = load i32, i32* @IdPos10
	%aux1716 = add i32 0, 1
	%aux1717 = add i32 %aux1715, %aux1716
	store i32 %aux1717, i32* @IdPos10
	br label %etiq828
	
	etiq828:
	;___IfElse___
	%aux1719 = add i32 0, 100
	%aux1720 = load i32, i32* @Pivot10
	%aux1721 = sub i32 %aux1719, %aux1720
	%aux1722 = load i32, i32* @IdPos10
	%aux1723 = icmp eq i32 %aux1721, %aux1722
	br i1 %aux1723, label %etiq829, label %etiq830
	
	etiq829:
	;___Asignación___
	%aux1725 = load i32, i32* @_Acum19
	%aux1726 = add i32 0, 1
	%aux1727 = add i32 %aux1725, %aux1726
	store i32 %aux1727, i32* @_Acum19
	br label %etiq833
	
	etiq833:
	;___Asignación___
	%aux1729 = load i32, i32* @IdPos10
	%aux1730 = add i32 0, 1
	%aux1731 = add i32 %aux1729, %aux1730
	store i32 %aux1731, i32* @IdPos10
	br label %etiq835
	
	etiq835:
	;___Asignación___
	%aux1733 = load i32, i32* @Pivot10
	%aux1734 = add i32 0, 1
	%aux1735 = sub i32 %aux1733, %aux1734
	store i32 %aux1735, i32* @Pivot10
	br label %etiq838
	
	etiq830:
	;___Asignación___
	%aux1737 = load i32, i32* @IdPos10
	%aux1738 = add i32 0, 1
	%aux1739 = add i32 %aux1737, %aux1738
	store i32 %aux1739, i32* @IdPos10
	br label %etiq838
	
	etiq838:
	;___IfElse___
	%aux1741 = add i32 0, 100
	%aux1742 = load i32, i32* @Pivot10
	%aux1743 = sub i32 %aux1741, %aux1742
	%aux1744 = load i32, i32* @IdPos10
	%aux1745 = icmp eq i32 %aux1743, %aux1744
	br i1 %aux1745, label %etiq839, label %etiq840
	
	etiq839:
	;___Asignación___
	%aux1747 = load i32, i32* @_Acum19
	%aux1748 = add i32 0, 1
	%aux1749 = add i32 %aux1747, %aux1748
	store i32 %aux1749, i32* @_Acum19
	br label %etiq843
	
	etiq843:
	;___Asignación___
	%aux1751 = load i32, i32* @IdPos10
	%aux1752 = add i32 0, 1
	%aux1753 = add i32 %aux1751, %aux1752
	store i32 %aux1753, i32* @IdPos10
	br label %etiq845
	
	etiq845:
	;___Asignación___
	%aux1755 = load i32, i32* @Pivot10
	%aux1756 = add i32 0, 1
	%aux1757 = sub i32 %aux1755, %aux1756
	store i32 %aux1757, i32* @Pivot10
	br label %etiq848
	
	etiq840:
	;___Asignación___
	%aux1759 = load i32, i32* @IdPos10
	%aux1760 = add i32 0, 1
	%aux1761 = add i32 %aux1759, %aux1760
	store i32 %aux1761, i32* @IdPos10
	br label %etiq848
	
	etiq848:
	;___IfElse___
	%aux1763 = add i32 0, 100
	%aux1764 = load i32, i32* @Pivot10
	%aux1765 = sub i32 %aux1763, %aux1764
	%aux1766 = load i32, i32* @IdPos10
	%aux1767 = icmp eq i32 %aux1765, %aux1766
	br i1 %aux1767, label %etiq849, label %etiq850
	
	etiq849:
	;___Asignación___
	%aux1769 = load i32, i32* @_Acum19
	%aux1770 = add i32 0, 1
	%aux1771 = add i32 %aux1769, %aux1770
	store i32 %aux1771, i32* @_Acum19
	br label %etiq853
	
	etiq853:
	;___Asignación___
	%aux1773 = load i32, i32* @IdPos10
	%aux1774 = add i32 0, 1
	%aux1775 = add i32 %aux1773, %aux1774
	store i32 %aux1775, i32* @IdPos10
	br label %etiq855
	
	etiq855:
	;___Asignación___
	%aux1777 = load i32, i32* @Pivot10
	%aux1778 = add i32 0, 1
	%aux1779 = sub i32 %aux1777, %aux1778
	store i32 %aux1779, i32* @Pivot10
	br label %etiq858
	
	etiq850:
	;___Asignación___
	%aux1781 = load i32, i32* @IdPos10
	%aux1782 = add i32 0, 1
	%aux1783 = add i32 %aux1781, %aux1782
	store i32 %aux1783, i32* @IdPos10
	br label %etiq858
	
	etiq858:
	;___IfElse___
	%aux1785 = add i32 0, 100
	%aux1786 = load i32, i32* @Pivot10
	%aux1787 = sub i32 %aux1785, %aux1786
	%aux1788 = load i32, i32* @IdPos10
	%aux1789 = icmp eq i32 %aux1787, %aux1788
	br i1 %aux1789, label %etiq859, label %etiq860
	
	etiq859:
	;___Asignación___
	%aux1791 = load i32, i32* @_Acum19
	%aux1792 = add i32 0, 1
	%aux1793 = add i32 %aux1791, %aux1792
	store i32 %aux1793, i32* @_Acum19
	br label %etiq863
	
	etiq863:
	;___Asignación___
	%aux1795 = load i32, i32* @IdPos10
	%aux1796 = add i32 0, 1
	%aux1797 = add i32 %aux1795, %aux1796
	store i32 %aux1797, i32* @IdPos10
	br label %etiq865
	
	etiq865:
	;___Asignación___
	%aux1799 = load i32, i32* @Pivot10
	%aux1800 = add i32 0, 1
	%aux1801 = sub i32 %aux1799, %aux1800
	store i32 %aux1801, i32* @Pivot10
	br label %etiq868
	
	etiq860:
	;___Asignación___
	%aux1803 = load i32, i32* @IdPos10
	%aux1804 = add i32 0, 1
	%aux1805 = add i32 %aux1803, %aux1804
	store i32 %aux1805, i32* @IdPos10
	br label %etiq868
	
	etiq868:
	;___IfElse___
	%aux1807 = add i32 0, 100
	%aux1808 = load i32, i32* @Pivot10
	%aux1809 = sub i32 %aux1807, %aux1808
	%aux1810 = load i32, i32* @IdPos10
	%aux1811 = icmp eq i32 %aux1809, %aux1810
	br i1 %aux1811, label %etiq869, label %etiq870
	
	etiq869:
	;___Asignación___
	%aux1813 = load i32, i32* @_Acum19
	%aux1814 = add i32 0, 1
	%aux1815 = add i32 %aux1813, %aux1814
	store i32 %aux1815, i32* @_Acum19
	br label %etiq873
	
	etiq873:
	;___Asignación___
	%aux1817 = load i32, i32* @IdPos10
	%aux1818 = add i32 0, 1
	%aux1819 = add i32 %aux1817, %aux1818
	store i32 %aux1819, i32* @IdPos10
	br label %etiq875
	
	etiq875:
	;___Asignación___
	%aux1821 = load i32, i32* @Pivot10
	%aux1822 = add i32 0, 1
	%aux1823 = sub i32 %aux1821, %aux1822
	store i32 %aux1823, i32* @Pivot10
	br label %etiq878
	
	etiq870:
	;___Asignación___
	%aux1825 = load i32, i32* @IdPos10
	%aux1826 = add i32 0, 1
	%aux1827 = add i32 %aux1825, %aux1826
	store i32 %aux1827, i32* @IdPos10
	br label %etiq878
	
	etiq878:
	;___IfElse___
	%aux1829 = add i32 0, 100
	%aux1830 = load i32, i32* @Pivot10
	%aux1831 = sub i32 %aux1829, %aux1830
	%aux1832 = load i32, i32* @IdPos10
	%aux1833 = icmp eq i32 %aux1831, %aux1832
	br i1 %aux1833, label %etiq879, label %etiq880
	
	etiq879:
	;___Asignación___
	%aux1835 = load i32, i32* @_Acum19
	%aux1836 = add i32 0, 1
	%aux1837 = add i32 %aux1835, %aux1836
	store i32 %aux1837, i32* @_Acum19
	br label %etiq883
	
	etiq883:
	;___Asignación___
	%aux1839 = load i32, i32* @IdPos10
	%aux1840 = add i32 0, 1
	%aux1841 = add i32 %aux1839, %aux1840
	store i32 %aux1841, i32* @IdPos10
	br label %etiq885
	
	etiq885:
	;___Asignación___
	%aux1843 = load i32, i32* @Pivot10
	%aux1844 = add i32 0, 1
	%aux1845 = sub i32 %aux1843, %aux1844
	store i32 %aux1845, i32* @Pivot10
	br label %etiq888
	
	etiq880:
	;___Asignación___
	%aux1847 = load i32, i32* @IdPos10
	%aux1848 = add i32 0, 1
	%aux1849 = add i32 %aux1847, %aux1848
	store i32 %aux1849, i32* @IdPos10
	br label %etiq888
	
	etiq888:
	;___IfElse___
	%aux1851 = add i32 0, 100
	%aux1852 = load i32, i32* @Pivot10
	%aux1853 = sub i32 %aux1851, %aux1852
	%aux1854 = load i32, i32* @IdPos10
	%aux1855 = icmp eq i32 %aux1853, %aux1854
	br i1 %aux1855, label %etiq889, label %etiq890
	
	etiq889:
	;___Asignación___
	%aux1857 = load i32, i32* @_Acum19
	%aux1858 = add i32 0, 1
	%aux1859 = add i32 %aux1857, %aux1858
	store i32 %aux1859, i32* @_Acum19
	br label %etiq893
	
	etiq893:
	;___Asignación___
	%aux1861 = load i32, i32* @IdPos10
	%aux1862 = add i32 0, 1
	%aux1863 = add i32 %aux1861, %aux1862
	store i32 %aux1863, i32* @IdPos10
	br label %etiq895
	
	etiq895:
	;___Asignación___
	%aux1865 = load i32, i32* @Pivot10
	%aux1866 = add i32 0, 1
	%aux1867 = sub i32 %aux1865, %aux1866
	store i32 %aux1867, i32* @Pivot10
	br label %etiq898
	
	etiq890:
	;___Asignación___
	%aux1869 = load i32, i32* @IdPos10
	%aux1870 = add i32 0, 1
	%aux1871 = add i32 %aux1869, %aux1870
	store i32 %aux1871, i32* @IdPos10
	br label %etiq898
	
	etiq898:
	;___IfElse___
	%aux1873 = add i32 0, 100
	%aux1874 = load i32, i32* @Pivot10
	%aux1875 = sub i32 %aux1873, %aux1874
	%aux1876 = load i32, i32* @IdPos10
	%aux1877 = icmp eq i32 %aux1875, %aux1876
	br i1 %aux1877, label %etiq899, label %etiq900
	
	etiq899:
	;___Asignación___
	%aux1879 = load i32, i32* @_Acum19
	%aux1880 = add i32 0, 1
	%aux1881 = add i32 %aux1879, %aux1880
	store i32 %aux1881, i32* @_Acum19
	br label %etiq903
	
	etiq903:
	;___Asignación___
	%aux1883 = load i32, i32* @IdPos10
	%aux1884 = add i32 0, 1
	%aux1885 = add i32 %aux1883, %aux1884
	store i32 %aux1885, i32* @IdPos10
	br label %etiq905
	
	etiq905:
	;___Asignación___
	%aux1887 = load i32, i32* @Pivot10
	%aux1888 = add i32 0, 1
	%aux1889 = sub i32 %aux1887, %aux1888
	store i32 %aux1889, i32* @Pivot10
	br label %etiq908
	
	etiq900:
	;___Asignación___
	%aux1891 = load i32, i32* @IdPos10
	%aux1892 = add i32 0, 1
	%aux1893 = add i32 %aux1891, %aux1892
	store i32 %aux1893, i32* @IdPos10
	br label %etiq908
	
	etiq908:
	;___IfElse___
	%aux1895 = add i32 0, 100
	%aux1896 = load i32, i32* @Pivot10
	%aux1897 = sub i32 %aux1895, %aux1896
	%aux1898 = load i32, i32* @IdPos10
	%aux1899 = icmp eq i32 %aux1897, %aux1898
	br i1 %aux1899, label %etiq909, label %etiq910
	
	etiq909:
	;___Asignación___
	%aux1901 = load i32, i32* @_Acum19
	%aux1902 = add i32 0, 1
	%aux1903 = add i32 %aux1901, %aux1902
	store i32 %aux1903, i32* @_Acum19
	br label %etiq913
	
	etiq913:
	;___Asignación___
	%aux1905 = load i32, i32* @IdPos10
	%aux1906 = add i32 0, 1
	%aux1907 = add i32 %aux1905, %aux1906
	store i32 %aux1907, i32* @IdPos10
	br label %etiq915
	
	etiq915:
	;___Asignación___
	%aux1909 = load i32, i32* @Pivot10
	%aux1910 = add i32 0, 1
	%aux1911 = sub i32 %aux1909, %aux1910
	store i32 %aux1911, i32* @Pivot10
	br label %etiq918
	
	etiq910:
	;___Asignación___
	%aux1913 = load i32, i32* @IdPos10
	%aux1914 = add i32 0, 1
	%aux1915 = add i32 %aux1913, %aux1914
	store i32 %aux1915, i32* @IdPos10
	br label %etiq918
	
	etiq918:
	;___IfElse___
	%aux1917 = add i32 0, 100
	%aux1918 = load i32, i32* @Pivot10
	%aux1919 = sub i32 %aux1917, %aux1918
	%aux1920 = load i32, i32* @IdPos10
	%aux1921 = icmp eq i32 %aux1919, %aux1920
	br i1 %aux1921, label %etiq919, label %etiq920
	
	etiq919:
	;___Asignación___
	%aux1923 = load i32, i32* @_Acum19
	%aux1924 = add i32 0, 1
	%aux1925 = add i32 %aux1923, %aux1924
	store i32 %aux1925, i32* @_Acum19
	br label %etiq923
	
	etiq923:
	;___Asignación___
	%aux1927 = load i32, i32* @IdPos10
	%aux1928 = add i32 0, 1
	%aux1929 = add i32 %aux1927, %aux1928
	store i32 %aux1929, i32* @IdPos10
	br label %etiq925
	
	etiq925:
	;___Asignación___
	%aux1931 = load i32, i32* @Pivot10
	%aux1932 = add i32 0, 1
	%aux1933 = sub i32 %aux1931, %aux1932
	store i32 %aux1933, i32* @Pivot10
	br label %etiq928
	
	etiq920:
	;___Asignación___
	%aux1935 = load i32, i32* @IdPos10
	%aux1936 = add i32 0, 1
	%aux1937 = add i32 %aux1935, %aux1936
	store i32 %aux1937, i32* @IdPos10
	br label %etiq928
	
	etiq928:
	;___IfElse___
	%aux1939 = add i32 0, 100
	%aux1940 = load i32, i32* @Pivot10
	%aux1941 = sub i32 %aux1939, %aux1940
	%aux1942 = load i32, i32* @IdPos10
	%aux1943 = icmp eq i32 %aux1941, %aux1942
	br i1 %aux1943, label %etiq929, label %etiq930
	
	etiq929:
	;___Asignación___
	%aux1945 = load i32, i32* @_Acum19
	%aux1946 = add i32 0, 1
	%aux1947 = add i32 %aux1945, %aux1946
	store i32 %aux1947, i32* @_Acum19
	br label %etiq933
	
	etiq933:
	;___Asignación___
	%aux1949 = load i32, i32* @IdPos10
	%aux1950 = add i32 0, 1
	%aux1951 = add i32 %aux1949, %aux1950
	store i32 %aux1951, i32* @IdPos10
	br label %etiq935
	
	etiq935:
	;___Asignación___
	%aux1953 = load i32, i32* @Pivot10
	%aux1954 = add i32 0, 1
	%aux1955 = sub i32 %aux1953, %aux1954
	store i32 %aux1955, i32* @Pivot10
	br label %etiq938
	
	etiq930:
	;___Asignación___
	%aux1957 = load i32, i32* @IdPos10
	%aux1958 = add i32 0, 1
	%aux1959 = add i32 %aux1957, %aux1958
	store i32 %aux1959, i32* @IdPos10
	br label %etiq938
	
	etiq938:
	;___IfElse___
	%aux1961 = add i32 0, 100
	%aux1962 = load i32, i32* @Pivot10
	%aux1963 = sub i32 %aux1961, %aux1962
	%aux1964 = load i32, i32* @IdPos10
	%aux1965 = icmp eq i32 %aux1963, %aux1964
	br i1 %aux1965, label %etiq939, label %etiq940
	
	etiq939:
	;___Asignación___
	%aux1967 = load i32, i32* @_Acum19
	%aux1968 = add i32 0, 1
	%aux1969 = add i32 %aux1967, %aux1968
	store i32 %aux1969, i32* @_Acum19
	br label %etiq943
	
	etiq943:
	;___Asignación___
	%aux1971 = load i32, i32* @IdPos10
	%aux1972 = add i32 0, 1
	%aux1973 = add i32 %aux1971, %aux1972
	store i32 %aux1973, i32* @IdPos10
	br label %etiq945
	
	etiq945:
	;___Asignación___
	%aux1975 = load i32, i32* @Pivot10
	%aux1976 = add i32 0, 1
	%aux1977 = sub i32 %aux1975, %aux1976
	store i32 %aux1977, i32* @Pivot10
	br label %etiq948
	
	etiq940:
	;___Asignación___
	%aux1979 = load i32, i32* @IdPos10
	%aux1980 = add i32 0, 1
	%aux1981 = add i32 %aux1979, %aux1980
	store i32 %aux1981, i32* @IdPos10
	br label %etiq948
	
	etiq948:
	;___IfElse___
	%aux1983 = add i32 0, 100
	%aux1984 = load i32, i32* @Pivot10
	%aux1985 = sub i32 %aux1983, %aux1984
	%aux1986 = load i32, i32* @IdPos10
	%aux1987 = icmp eq i32 %aux1985, %aux1986
	br i1 %aux1987, label %etiq949, label %etiq950
	
	etiq949:
	;___Asignación___
	%aux1989 = load i32, i32* @_Acum19
	%aux1990 = add i32 0, 1
	%aux1991 = add i32 %aux1989, %aux1990
	store i32 %aux1991, i32* @_Acum19
	br label %etiq953
	
	etiq953:
	;___Asignación___
	%aux1993 = load i32, i32* @IdPos10
	%aux1994 = add i32 0, 1
	%aux1995 = add i32 %aux1993, %aux1994
	store i32 %aux1995, i32* @IdPos10
	br label %etiq955
	
	etiq955:
	;___Asignación___
	%aux1997 = load i32, i32* @Pivot10
	%aux1998 = add i32 0, 1
	%aux1999 = sub i32 %aux1997, %aux1998
	store i32 %aux1999, i32* @Pivot10
	br label %etiq958
	
	etiq950:
	;___Asignación___
	%aux2001 = load i32, i32* @IdPos10
	%aux2002 = add i32 0, 1
	%aux2003 = add i32 %aux2001, %aux2002
	store i32 %aux2003, i32* @IdPos10
	br label %etiq958
	
	etiq958:
	;___IfElse___
	%aux2005 = add i32 0, 100
	%aux2006 = load i32, i32* @Pivot10
	%aux2007 = sub i32 %aux2005, %aux2006
	%aux2008 = load i32, i32* @IdPos10
	%aux2009 = icmp eq i32 %aux2007, %aux2008
	br i1 %aux2009, label %etiq959, label %etiq960
	
	etiq959:
	;___Asignación___
	%aux2011 = load i32, i32* @_Acum19
	%aux2012 = add i32 0, 1
	%aux2013 = add i32 %aux2011, %aux2012
	store i32 %aux2013, i32* @_Acum19
	br label %etiq963
	
	etiq963:
	;___Asignación___
	%aux2015 = load i32, i32* @IdPos10
	%aux2016 = add i32 0, 1
	%aux2017 = add i32 %aux2015, %aux2016
	store i32 %aux2017, i32* @IdPos10
	br label %etiq965
	
	etiq965:
	;___Asignación___
	%aux2019 = load i32, i32* @Pivot10
	%aux2020 = add i32 0, 1
	%aux2021 = sub i32 %aux2019, %aux2020
	store i32 %aux2021, i32* @Pivot10
	br label %etiq968
	
	etiq960:
	;___Asignación___
	%aux2023 = load i32, i32* @IdPos10
	%aux2024 = add i32 0, 1
	%aux2025 = add i32 %aux2023, %aux2024
	store i32 %aux2025, i32* @IdPos10
	br label %etiq968
	
	etiq968:
	;___IfElse___
	%aux2027 = add i32 0, 100
	%aux2028 = load i32, i32* @Pivot10
	%aux2029 = sub i32 %aux2027, %aux2028
	%aux2030 = load i32, i32* @IdPos10
	%aux2031 = icmp eq i32 %aux2029, %aux2030
	br i1 %aux2031, label %etiq969, label %etiq970
	
	etiq969:
	;___Asignación___
	%aux2033 = load i32, i32* @_Acum19
	%aux2034 = add i32 0, 1
	%aux2035 = add i32 %aux2033, %aux2034
	store i32 %aux2035, i32* @_Acum19
	br label %etiq973
	
	etiq973:
	;___Asignación___
	%aux2037 = load i32, i32* @IdPos10
	%aux2038 = add i32 0, 1
	%aux2039 = add i32 %aux2037, %aux2038
	store i32 %aux2039, i32* @IdPos10
	br label %etiq975
	
	etiq975:
	;___Asignación___
	%aux2041 = load i32, i32* @Pivot10
	%aux2042 = add i32 0, 1
	%aux2043 = sub i32 %aux2041, %aux2042
	store i32 %aux2043, i32* @Pivot10
	br label %etiq978
	
	etiq970:
	;___Asignación___
	%aux2045 = load i32, i32* @IdPos10
	%aux2046 = add i32 0, 1
	%aux2047 = add i32 %aux2045, %aux2046
	store i32 %aux2047, i32* @IdPos10
	br label %etiq978
	
	etiq978:
	;___IfElse___
	%aux2049 = add i32 0, 100
	%aux2050 = load i32, i32* @Pivot10
	%aux2051 = sub i32 %aux2049, %aux2050
	%aux2052 = load i32, i32* @IdPos10
	%aux2053 = icmp eq i32 %aux2051, %aux2052
	br i1 %aux2053, label %etiq979, label %etiq980
	
	etiq979:
	;___Asignación___
	%aux2055 = load i32, i32* @_Acum19
	%aux2056 = add i32 0, 1
	%aux2057 = add i32 %aux2055, %aux2056
	store i32 %aux2057, i32* @_Acum19
	br label %etiq983
	
	etiq983:
	;___Asignación___
	%aux2059 = load i32, i32* @IdPos10
	%aux2060 = add i32 0, 1
	%aux2061 = add i32 %aux2059, %aux2060
	store i32 %aux2061, i32* @IdPos10
	br label %etiq985
	
	etiq985:
	;___Asignación___
	%aux2063 = load i32, i32* @Pivot10
	%aux2064 = add i32 0, 1
	%aux2065 = sub i32 %aux2063, %aux2064
	store i32 %aux2065, i32* @Pivot10
	br label %etiq988
	
	etiq980:
	;___Asignación___
	%aux2067 = load i32, i32* @IdPos10
	%aux2068 = add i32 0, 1
	%aux2069 = add i32 %aux2067, %aux2068
	store i32 %aux2069, i32* @IdPos10
	br label %etiq988
	
	etiq988:
	;___IfElse___
	%aux2071 = add i32 0, 100
	%aux2072 = load i32, i32* @Pivot10
	%aux2073 = sub i32 %aux2071, %aux2072
	%aux2074 = load i32, i32* @IdPos10
	%aux2075 = icmp eq i32 %aux2073, %aux2074
	br i1 %aux2075, label %etiq989, label %etiq990
	
	etiq989:
	;___Asignación___
	%aux2077 = load i32, i32* @_Acum19
	%aux2078 = add i32 0, 1
	%aux2079 = add i32 %aux2077, %aux2078
	store i32 %aux2079, i32* @_Acum19
	br label %etiq993
	
	etiq993:
	;___Asignación___
	%aux2081 = load i32, i32* @IdPos10
	%aux2082 = add i32 0, 1
	%aux2083 = add i32 %aux2081, %aux2082
	store i32 %aux2083, i32* @IdPos10
	br label %etiq995
	
	etiq995:
	;___Asignación___
	%aux2085 = load i32, i32* @Pivot10
	%aux2086 = add i32 0, 1
	%aux2087 = sub i32 %aux2085, %aux2086
	store i32 %aux2087, i32* @Pivot10
	br label %etiq998
	
	etiq990:
	;___Asignación___
	%aux2089 = load i32, i32* @IdPos10
	%aux2090 = add i32 0, 1
	%aux2091 = add i32 %aux2089, %aux2090
	store i32 %aux2091, i32* @IdPos10
	br label %etiq998
	
	etiq998:
	;___IfElse___
	%aux2093 = add i32 0, 100
	%aux2094 = load i32, i32* @Pivot10
	%aux2095 = sub i32 %aux2093, %aux2094
	%aux2096 = load i32, i32* @IdPos10
	%aux2097 = icmp eq i32 %aux2095, %aux2096
	br i1 %aux2097, label %etiq999, label %etiq1000
	
	etiq999:
	;___Asignación___
	%aux2099 = load i32, i32* @_Acum19
	%aux2100 = add i32 0, 1
	%aux2101 = add i32 %aux2099, %aux2100
	store i32 %aux2101, i32* @_Acum19
	br label %etiq1003
	
	etiq1003:
	;___Asignación___
	%aux2103 = load i32, i32* @IdPos10
	%aux2104 = add i32 0, 1
	%aux2105 = add i32 %aux2103, %aux2104
	store i32 %aux2105, i32* @IdPos10
	br label %etiq1005
	
	etiq1005:
	;___Asignación___
	%aux2107 = load i32, i32* @Pivot10
	%aux2108 = add i32 0, 1
	%aux2109 = sub i32 %aux2107, %aux2108
	store i32 %aux2109, i32* @Pivot10
	br label %etiq1008
	
	etiq1000:
	;___Asignación___
	%aux2111 = load i32, i32* @IdPos10
	%aux2112 = add i32 0, 1
	%aux2113 = add i32 %aux2111, %aux2112
	store i32 %aux2113, i32* @IdPos10
	br label %etiq1008
	
	etiq1008:
	;___IfElse___
	%aux2115 = add i32 0, 100
	%aux2116 = load i32, i32* @Pivot10
	%aux2117 = sub i32 %aux2115, %aux2116
	%aux2118 = load i32, i32* @IdPos10
	%aux2119 = icmp eq i32 %aux2117, %aux2118
	br i1 %aux2119, label %etiq1009, label %etiq1010
	
	etiq1009:
	;___Asignación___
	%aux2121 = load i32, i32* @_Acum19
	%aux2122 = add i32 0, 1
	%aux2123 = add i32 %aux2121, %aux2122
	store i32 %aux2123, i32* @_Acum19
	br label %etiq1013
	
	etiq1013:
	;___Asignación___
	%aux2125 = load i32, i32* @IdPos10
	%aux2126 = add i32 0, 1
	%aux2127 = add i32 %aux2125, %aux2126
	store i32 %aux2127, i32* @IdPos10
	br label %etiq1015
	
	etiq1015:
	;___Asignación___
	%aux2129 = load i32, i32* @Pivot10
	%aux2130 = add i32 0, 1
	%aux2131 = sub i32 %aux2129, %aux2130
	store i32 %aux2131, i32* @Pivot10
	br label %etiq1018
	
	etiq1010:
	;___Asignación___
	%aux2133 = load i32, i32* @IdPos10
	%aux2134 = add i32 0, 1
	%aux2135 = add i32 %aux2133, %aux2134
	store i32 %aux2135, i32* @IdPos10
	br label %etiq1018
	
	etiq1018:
	;___IfElse___
	%aux2137 = add i32 0, 100
	%aux2138 = load i32, i32* @Pivot10
	%aux2139 = sub i32 %aux2137, %aux2138
	%aux2140 = load i32, i32* @IdPos10
	%aux2141 = icmp eq i32 %aux2139, %aux2140
	br i1 %aux2141, label %etiq1019, label %etiq1020
	
	etiq1019:
	;___Asignación___
	%aux2143 = load i32, i32* @_Acum19
	%aux2144 = add i32 0, 1
	%aux2145 = add i32 %aux2143, %aux2144
	store i32 %aux2145, i32* @_Acum19
	br label %etiq1023
	
	etiq1023:
	;___Asignación___
	%aux2147 = load i32, i32* @IdPos10
	%aux2148 = add i32 0, 1
	%aux2149 = add i32 %aux2147, %aux2148
	store i32 %aux2149, i32* @IdPos10
	br label %etiq1025
	
	etiq1025:
	;___Asignación___
	%aux2151 = load i32, i32* @Pivot10
	%aux2152 = add i32 0, 1
	%aux2153 = sub i32 %aux2151, %aux2152
	store i32 %aux2153, i32* @Pivot10
	br label %etiq1028
	
	etiq1020:
	;___Asignación___
	%aux2155 = load i32, i32* @IdPos10
	%aux2156 = add i32 0, 1
	%aux2157 = add i32 %aux2155, %aux2156
	store i32 %aux2157, i32* @IdPos10
	br label %etiq1028
	
	etiq1028:
	;___IfElse___
	%aux2159 = add i32 0, 100
	%aux2160 = load i32, i32* @Pivot10
	%aux2161 = sub i32 %aux2159, %aux2160
	%aux2162 = load i32, i32* @IdPos10
	%aux2163 = icmp eq i32 %aux2161, %aux2162
	br i1 %aux2163, label %etiq1029, label %etiq1030
	
	etiq1029:
	;___Asignación___
	%aux2165 = load i32, i32* @_Acum19
	%aux2166 = add i32 0, 1
	%aux2167 = add i32 %aux2165, %aux2166
	store i32 %aux2167, i32* @_Acum19
	br label %etiq1033
	
	etiq1033:
	;___Asignación___
	%aux2169 = load i32, i32* @IdPos10
	%aux2170 = add i32 0, 1
	%aux2171 = add i32 %aux2169, %aux2170
	store i32 %aux2171, i32* @IdPos10
	br label %etiq1035
	
	etiq1035:
	;___Asignación___
	%aux2173 = load i32, i32* @Pivot10
	%aux2174 = add i32 0, 1
	%aux2175 = sub i32 %aux2173, %aux2174
	store i32 %aux2175, i32* @Pivot10
	br label %etiq1038
	
	etiq1030:
	;___Asignación___
	%aux2177 = load i32, i32* @IdPos10
	%aux2178 = add i32 0, 1
	%aux2179 = add i32 %aux2177, %aux2178
	store i32 %aux2179, i32* @IdPos10
	br label %etiq1038
	
	etiq1038:
	;___IfElse___
	%aux2181 = add i32 0, 100
	%aux2182 = load i32, i32* @Pivot10
	%aux2183 = sub i32 %aux2181, %aux2182
	%aux2184 = load i32, i32* @IdPos10
	%aux2185 = icmp eq i32 %aux2183, %aux2184
	br i1 %aux2185, label %etiq1039, label %etiq1040
	
	etiq1039:
	;___Asignación___
	%aux2187 = load i32, i32* @_Acum19
	%aux2188 = add i32 0, 1
	%aux2189 = add i32 %aux2187, %aux2188
	store i32 %aux2189, i32* @_Acum19
	br label %etiq1043
	
	etiq1043:
	;___Asignación___
	%aux2191 = load i32, i32* @IdPos10
	%aux2192 = add i32 0, 1
	%aux2193 = add i32 %aux2191, %aux2192
	store i32 %aux2193, i32* @IdPos10
	br label %etiq1045
	
	etiq1045:
	;___Asignación___
	%aux2195 = load i32, i32* @Pivot10
	%aux2196 = add i32 0, 1
	%aux2197 = sub i32 %aux2195, %aux2196
	store i32 %aux2197, i32* @Pivot10
	br label %etiq1048
	
	etiq1040:
	;___Asignación___
	%aux2199 = load i32, i32* @IdPos10
	%aux2200 = add i32 0, 1
	%aux2201 = add i32 %aux2199, %aux2200
	store i32 %aux2201, i32* @IdPos10
	br label %etiq1048
	
	etiq1048:
	;___IfElse___
	%aux2203 = add i32 0, 100
	%aux2204 = load i32, i32* @Pivot10
	%aux2205 = sub i32 %aux2203, %aux2204
	%aux2206 = load i32, i32* @IdPos10
	%aux2207 = icmp eq i32 %aux2205, %aux2206
	br i1 %aux2207, label %etiq1049, label %etiq1050
	
	etiq1049:
	;___Asignación___
	%aux2209 = load i32, i32* @_Acum19
	%aux2210 = add i32 0, 1
	%aux2211 = add i32 %aux2209, %aux2210
	store i32 %aux2211, i32* @_Acum19
	br label %etiq1053
	
	etiq1053:
	;___Asignación___
	%aux2213 = load i32, i32* @IdPos10
	%aux2214 = add i32 0, 1
	%aux2215 = add i32 %aux2213, %aux2214
	store i32 %aux2215, i32* @IdPos10
	br label %etiq1055
	
	etiq1055:
	;___Asignación___
	%aux2217 = load i32, i32* @Pivot10
	%aux2218 = add i32 0, 1
	%aux2219 = sub i32 %aux2217, %aux2218
	store i32 %aux2219, i32* @Pivot10
	br label %etiq1058
	
	etiq1050:
	;___Asignación___
	%aux2221 = load i32, i32* @IdPos10
	%aux2222 = add i32 0, 1
	%aux2223 = add i32 %aux2221, %aux2222
	store i32 %aux2223, i32* @IdPos10
	br label %etiq1058
	
	etiq1058:
	;___IfElse___
	%aux2225 = add i32 0, 100
	%aux2226 = load i32, i32* @Pivot10
	%aux2227 = sub i32 %aux2225, %aux2226
	%aux2228 = load i32, i32* @IdPos10
	%aux2229 = icmp eq i32 %aux2227, %aux2228
	br i1 %aux2229, label %etiq1059, label %etiq1060
	
	etiq1059:
	;___Asignación___
	%aux2231 = load i32, i32* @_Acum19
	%aux2232 = add i32 0, 1
	%aux2233 = add i32 %aux2231, %aux2232
	store i32 %aux2233, i32* @_Acum19
	br label %etiq1063
	
	etiq1063:
	;___Asignación___
	%aux2235 = load i32, i32* @IdPos10
	%aux2236 = add i32 0, 1
	%aux2237 = add i32 %aux2235, %aux2236
	store i32 %aux2237, i32* @IdPos10
	br label %etiq1065
	
	etiq1065:
	;___Asignación___
	%aux2239 = load i32, i32* @Pivot10
	%aux2240 = add i32 0, 1
	%aux2241 = sub i32 %aux2239, %aux2240
	store i32 %aux2241, i32* @Pivot10
	br label %etiq1068
	
	etiq1060:
	;___Asignación___
	%aux2243 = load i32, i32* @IdPos10
	%aux2244 = add i32 0, 1
	%aux2245 = add i32 %aux2243, %aux2244
	store i32 %aux2245, i32* @IdPos10
	br label %etiq1068
	
	etiq1068:
	;___IfElse___
	%aux2247 = add i32 0, 100
	%aux2248 = load i32, i32* @Pivot10
	%aux2249 = sub i32 %aux2247, %aux2248
	%aux2250 = load i32, i32* @IdPos10
	%aux2251 = icmp eq i32 %aux2249, %aux2250
	br i1 %aux2251, label %etiq1069, label %etiq1070
	
	etiq1069:
	;___Asignación___
	%aux2253 = load i32, i32* @_Acum19
	%aux2254 = add i32 0, 1
	%aux2255 = add i32 %aux2253, %aux2254
	store i32 %aux2255, i32* @_Acum19
	br label %etiq1073
	
	etiq1073:
	;___Asignación___
	%aux2257 = load i32, i32* @IdPos10
	%aux2258 = add i32 0, 1
	%aux2259 = add i32 %aux2257, %aux2258
	store i32 %aux2259, i32* @IdPos10
	br label %etiq1075
	
	etiq1075:
	;___Asignación___
	%aux2261 = load i32, i32* @Pivot10
	%aux2262 = add i32 0, 1
	%aux2263 = sub i32 %aux2261, %aux2262
	store i32 %aux2263, i32* @Pivot10
	br label %etiq1078
	
	etiq1070:
	;___Asignación___
	%aux2265 = load i32, i32* @IdPos10
	%aux2266 = add i32 0, 1
	%aux2267 = add i32 %aux2265, %aux2266
	store i32 %aux2267, i32* @IdPos10
	br label %etiq1078
	
	etiq1078:
	;___IfElse___
	%aux2269 = add i32 0, 100
	%aux2270 = load i32, i32* @Pivot10
	%aux2271 = sub i32 %aux2269, %aux2270
	%aux2272 = load i32, i32* @IdPos10
	%aux2273 = icmp eq i32 %aux2271, %aux2272
	br i1 %aux2273, label %etiq1079, label %etiq1080
	
	etiq1079:
	;___Asignación___
	%aux2275 = load i32, i32* @_Acum19
	%aux2276 = add i32 0, 1
	%aux2277 = add i32 %aux2275, %aux2276
	store i32 %aux2277, i32* @_Acum19
	br label %etiq1083
	
	etiq1083:
	;___Asignación___
	%aux2279 = load i32, i32* @IdPos10
	%aux2280 = add i32 0, 1
	%aux2281 = add i32 %aux2279, %aux2280
	store i32 %aux2281, i32* @IdPos10
	br label %etiq1085
	
	etiq1085:
	;___Asignación___
	%aux2283 = load i32, i32* @Pivot10
	%aux2284 = add i32 0, 1
	%aux2285 = sub i32 %aux2283, %aux2284
	store i32 %aux2285, i32* @Pivot10
	br label %etiq1088
	
	etiq1080:
	;___Asignación___
	%aux2287 = load i32, i32* @IdPos10
	%aux2288 = add i32 0, 1
	%aux2289 = add i32 %aux2287, %aux2288
	store i32 %aux2289, i32* @IdPos10
	br label %etiq1088
	
	etiq1088:
	;___IfElse___
	%aux2291 = add i32 0, 100
	%aux2292 = load i32, i32* @Pivot10
	%aux2293 = sub i32 %aux2291, %aux2292
	%aux2294 = load i32, i32* @IdPos10
	%aux2295 = icmp eq i32 %aux2293, %aux2294
	br i1 %aux2295, label %etiq1089, label %etiq1090
	
	etiq1089:
	;___Asignación___
	%aux2297 = load i32, i32* @_Acum19
	%aux2298 = add i32 0, 1
	%aux2299 = add i32 %aux2297, %aux2298
	store i32 %aux2299, i32* @_Acum19
	br label %etiq1093
	
	etiq1093:
	;___Asignación___
	%aux2301 = load i32, i32* @IdPos10
	%aux2302 = add i32 0, 1
	%aux2303 = add i32 %aux2301, %aux2302
	store i32 %aux2303, i32* @IdPos10
	br label %etiq1095
	
	etiq1095:
	;___Asignación___
	%aux2305 = load i32, i32* @Pivot10
	%aux2306 = add i32 0, 1
	%aux2307 = sub i32 %aux2305, %aux2306
	store i32 %aux2307, i32* @Pivot10
	br label %etiq1098
	
	etiq1090:
	;___Asignación___
	%aux2309 = load i32, i32* @IdPos10
	%aux2310 = add i32 0, 1
	%aux2311 = add i32 %aux2309, %aux2310
	store i32 %aux2311, i32* @IdPos10
	br label %etiq1098
	
	etiq1098:
	;___IfElse___
	%aux2313 = add i32 0, 100
	%aux2314 = load i32, i32* @Pivot10
	%aux2315 = sub i32 %aux2313, %aux2314
	%aux2316 = load i32, i32* @IdPos10
	%aux2317 = icmp eq i32 %aux2315, %aux2316
	br i1 %aux2317, label %etiq1099, label %etiq1100
	
	etiq1099:
	;___Asignación___
	%aux2319 = load i32, i32* @_Acum19
	%aux2320 = add i32 0, 1
	%aux2321 = add i32 %aux2319, %aux2320
	store i32 %aux2321, i32* @_Acum19
	br label %etiq1103
	
	etiq1103:
	;___Asignación___
	%aux2323 = load i32, i32* @IdPos10
	%aux2324 = add i32 0, 1
	%aux2325 = add i32 %aux2323, %aux2324
	store i32 %aux2325, i32* @IdPos10
	br label %etiq1105
	
	etiq1105:
	;___Asignación___
	%aux2327 = load i32, i32* @Pivot10
	%aux2328 = add i32 0, 1
	%aux2329 = sub i32 %aux2327, %aux2328
	store i32 %aux2329, i32* @Pivot10
	br label %etiq1108
	
	etiq1100:
	;___Asignación___
	%aux2331 = load i32, i32* @IdPos10
	%aux2332 = add i32 0, 1
	%aux2333 = add i32 %aux2331, %aux2332
	store i32 %aux2333, i32* @IdPos10
	br label %etiq1108
	
	etiq1108:
	;___IfElse___
	%aux2335 = add i32 0, 100
	%aux2336 = load i32, i32* @Pivot10
	%aux2337 = sub i32 %aux2335, %aux2336
	%aux2338 = load i32, i32* @IdPos10
	%aux2339 = icmp eq i32 %aux2337, %aux2338
	br i1 %aux2339, label %etiq1109, label %etiq1110
	
	etiq1109:
	;___Asignación___
	%aux2341 = load i32, i32* @_Acum19
	%aux2342 = add i32 0, 1
	%aux2343 = add i32 %aux2341, %aux2342
	store i32 %aux2343, i32* @_Acum19
	br label %etiq1113
	
	etiq1113:
	;___Asignación___
	%aux2345 = load i32, i32* @IdPos10
	%aux2346 = add i32 0, 1
	%aux2347 = add i32 %aux2345, %aux2346
	store i32 %aux2347, i32* @IdPos10
	br label %etiq1115
	
	etiq1115:
	;___Asignación___
	%aux2349 = load i32, i32* @Pivot10
	%aux2350 = add i32 0, 1
	%aux2351 = sub i32 %aux2349, %aux2350
	store i32 %aux2351, i32* @Pivot10
	br label %etiq1118
	
	etiq1110:
	;___Asignación___
	%aux2353 = load i32, i32* @IdPos10
	%aux2354 = add i32 0, 1
	%aux2355 = add i32 %aux2353, %aux2354
	store i32 %aux2355, i32* @IdPos10
	br label %etiq1118
	
	etiq1118:
	;___IfElse___
	%aux2357 = add i32 0, 100
	%aux2358 = load i32, i32* @Pivot10
	%aux2359 = sub i32 %aux2357, %aux2358
	%aux2360 = load i32, i32* @IdPos10
	%aux2361 = icmp eq i32 %aux2359, %aux2360
	br i1 %aux2361, label %etiq1119, label %etiq1120
	
	etiq1119:
	;___Asignación___
	%aux2363 = load i32, i32* @_Acum19
	%aux2364 = add i32 0, 1
	%aux2365 = add i32 %aux2363, %aux2364
	store i32 %aux2365, i32* @_Acum19
	br label %etiq1123
	
	etiq1123:
	;___Asignación___
	%aux2367 = load i32, i32* @IdPos10
	%aux2368 = add i32 0, 1
	%aux2369 = add i32 %aux2367, %aux2368
	store i32 %aux2369, i32* @IdPos10
	br label %etiq1125
	
	etiq1125:
	;___Asignación___
	%aux2371 = load i32, i32* @Pivot10
	%aux2372 = add i32 0, 1
	%aux2373 = sub i32 %aux2371, %aux2372
	store i32 %aux2373, i32* @Pivot10
	br label %etiq1128
	
	etiq1120:
	;___Asignación___
	%aux2375 = load i32, i32* @IdPos10
	%aux2376 = add i32 0, 1
	%aux2377 = add i32 %aux2375, %aux2376
	store i32 %aux2377, i32* @IdPos10
	br label %etiq1128
	
	etiq1128:
	;___IfElse___
	%aux2379 = add i32 0, 100
	%aux2380 = load i32, i32* @Pivot10
	%aux2381 = sub i32 %aux2379, %aux2380
	%aux2382 = load i32, i32* @IdPos10
	%aux2383 = icmp eq i32 %aux2381, %aux2382
	br i1 %aux2383, label %etiq1129, label %etiq1130
	
	etiq1129:
	;___Asignación___
	%aux2385 = load i32, i32* @_Acum19
	%aux2386 = add i32 0, 1
	%aux2387 = add i32 %aux2385, %aux2386
	store i32 %aux2387, i32* @_Acum19
	br label %etiq1133
	
	etiq1133:
	;___Asignación___
	%aux2389 = load i32, i32* @IdPos10
	%aux2390 = add i32 0, 1
	%aux2391 = add i32 %aux2389, %aux2390
	store i32 %aux2391, i32* @IdPos10
	br label %etiq1135
	
	etiq1135:
	;___Asignación___
	%aux2393 = load i32, i32* @Pivot10
	%aux2394 = add i32 0, 1
	%aux2395 = sub i32 %aux2393, %aux2394
	store i32 %aux2395, i32* @Pivot10
	br label %etiq1138
	
	etiq1130:
	;___Asignación___
	%aux2397 = load i32, i32* @IdPos10
	%aux2398 = add i32 0, 1
	%aux2399 = add i32 %aux2397, %aux2398
	store i32 %aux2399, i32* @IdPos10
	br label %etiq1138
	
	etiq1138:
	;___IfElse___
	%aux2401 = add i32 0, 100
	%aux2402 = load i32, i32* @Pivot10
	%aux2403 = sub i32 %aux2401, %aux2402
	%aux2404 = load i32, i32* @IdPos10
	%aux2405 = icmp eq i32 %aux2403, %aux2404
	br i1 %aux2405, label %etiq1139, label %etiq1140
	
	etiq1139:
	;___Asignación___
	%aux2407 = load i32, i32* @_Acum19
	%aux2408 = add i32 0, 1
	%aux2409 = add i32 %aux2407, %aux2408
	store i32 %aux2409, i32* @_Acum19
	br label %etiq1143
	
	etiq1143:
	;___Asignación___
	%aux2411 = load i32, i32* @IdPos10
	%aux2412 = add i32 0, 1
	%aux2413 = add i32 %aux2411, %aux2412
	store i32 %aux2413, i32* @IdPos10
	br label %etiq1145
	
	etiq1145:
	;___Asignación___
	%aux2415 = load i32, i32* @Pivot10
	%aux2416 = add i32 0, 1
	%aux2417 = sub i32 %aux2415, %aux2416
	store i32 %aux2417, i32* @Pivot10
	br label %etiq1148
	
	etiq1140:
	;___Asignación___
	%aux2419 = load i32, i32* @IdPos10
	%aux2420 = add i32 0, 1
	%aux2421 = add i32 %aux2419, %aux2420
	store i32 %aux2421, i32* @IdPos10
	br label %etiq1148
	
	etiq1148:
	;___IfElse___
	%aux2423 = add i32 0, 100
	%aux2424 = load i32, i32* @Pivot10
	%aux2425 = sub i32 %aux2423, %aux2424
	%aux2426 = load i32, i32* @IdPos10
	%aux2427 = icmp eq i32 %aux2425, %aux2426
	br i1 %aux2427, label %etiq1149, label %etiq1150
	
	etiq1149:
	;___Asignación___
	%aux2429 = load i32, i32* @_Acum19
	%aux2430 = add i32 0, 1
	%aux2431 = add i32 %aux2429, %aux2430
	store i32 %aux2431, i32* @_Acum19
	br label %etiq1153
	
	etiq1153:
	;___Asignación___
	%aux2433 = load i32, i32* @IdPos10
	%aux2434 = add i32 0, 1
	%aux2435 = add i32 %aux2433, %aux2434
	store i32 %aux2435, i32* @IdPos10
	br label %etiq1155
	
	etiq1155:
	;___Asignación___
	%aux2437 = load i32, i32* @Pivot10
	%aux2438 = add i32 0, 1
	%aux2439 = sub i32 %aux2437, %aux2438
	store i32 %aux2439, i32* @Pivot10
	br label %etiq1158
	
	etiq1150:
	;___Asignación___
	%aux2441 = load i32, i32* @IdPos10
	%aux2442 = add i32 0, 1
	%aux2443 = add i32 %aux2441, %aux2442
	store i32 %aux2443, i32* @IdPos10
	br label %etiq1158
	
	etiq1158:
	;___IfElse___
	%aux2445 = add i32 0, 100
	%aux2446 = load i32, i32* @Pivot10
	%aux2447 = sub i32 %aux2445, %aux2446
	%aux2448 = load i32, i32* @IdPos10
	%aux2449 = icmp eq i32 %aux2447, %aux2448
	br i1 %aux2449, label %etiq1159, label %etiq1160
	
	etiq1159:
	;___Asignación___
	%aux2451 = load i32, i32* @_Acum19
	%aux2452 = add i32 0, 1
	%aux2453 = add i32 %aux2451, %aux2452
	store i32 %aux2453, i32* @_Acum19
	br label %etiq1163
	
	etiq1163:
	;___Asignación___
	%aux2455 = load i32, i32* @IdPos10
	%aux2456 = add i32 0, 1
	%aux2457 = add i32 %aux2455, %aux2456
	store i32 %aux2457, i32* @IdPos10
	br label %etiq1165
	
	etiq1165:
	;___Asignación___
	%aux2459 = load i32, i32* @Pivot10
	%aux2460 = add i32 0, 1
	%aux2461 = sub i32 %aux2459, %aux2460
	store i32 %aux2461, i32* @Pivot10
	br label %etiq1168
	
	etiq1160:
	;___Asignación___
	%aux2463 = load i32, i32* @IdPos10
	%aux2464 = add i32 0, 1
	%aux2465 = add i32 %aux2463, %aux2464
	store i32 %aux2465, i32* @IdPos10
	br label %etiq1168
	
	etiq1168:
	;___IfElse___
	%aux2467 = add i32 0, 100
	%aux2468 = load i32, i32* @Pivot10
	%aux2469 = sub i32 %aux2467, %aux2468
	%aux2470 = load i32, i32* @IdPos10
	%aux2471 = icmp eq i32 %aux2469, %aux2470
	br i1 %aux2471, label %etiq1169, label %etiq1170
	
	etiq1169:
	;___Asignación___
	%aux2473 = load i32, i32* @_Acum19
	%aux2474 = add i32 0, 1
	%aux2475 = add i32 %aux2473, %aux2474
	store i32 %aux2475, i32* @_Acum19
	br label %etiq1173
	
	etiq1173:
	;___Asignación___
	%aux2477 = load i32, i32* @IdPos10
	%aux2478 = add i32 0, 1
	%aux2479 = add i32 %aux2477, %aux2478
	store i32 %aux2479, i32* @IdPos10
	br label %etiq1175
	
	etiq1175:
	;___Asignación___
	%aux2481 = load i32, i32* @Pivot10
	%aux2482 = add i32 0, 1
	%aux2483 = sub i32 %aux2481, %aux2482
	store i32 %aux2483, i32* @Pivot10
	br label %etiq1178
	
	etiq1170:
	;___Asignación___
	%aux2485 = load i32, i32* @IdPos10
	%aux2486 = add i32 0, 1
	%aux2487 = add i32 %aux2485, %aux2486
	store i32 %aux2487, i32* @IdPos10
	br label %etiq1178
	
	etiq1178:
	;___IfElse___
	%aux2489 = add i32 0, 100
	%aux2490 = load i32, i32* @Pivot10
	%aux2491 = sub i32 %aux2489, %aux2490
	%aux2492 = load i32, i32* @IdPos10
	%aux2493 = icmp eq i32 %aux2491, %aux2492
	br i1 %aux2493, label %etiq1179, label %etiq1180
	
	etiq1179:
	;___Asignación___
	%aux2495 = load i32, i32* @_Acum19
	%aux2496 = add i32 0, 1
	%aux2497 = add i32 %aux2495, %aux2496
	store i32 %aux2497, i32* @_Acum19
	br label %etiq1183
	
	etiq1183:
	;___Asignación___
	%aux2499 = load i32, i32* @IdPos10
	%aux2500 = add i32 0, 1
	%aux2501 = add i32 %aux2499, %aux2500
	store i32 %aux2501, i32* @IdPos10
	br label %etiq1185
	
	etiq1185:
	;___Asignación___
	%aux2503 = load i32, i32* @Pivot10
	%aux2504 = add i32 0, 1
	%aux2505 = sub i32 %aux2503, %aux2504
	store i32 %aux2505, i32* @Pivot10
	br label %etiq1188
	
	etiq1180:
	;___Asignación___
	%aux2507 = load i32, i32* @IdPos10
	%aux2508 = add i32 0, 1
	%aux2509 = add i32 %aux2507, %aux2508
	store i32 %aux2509, i32* @IdPos10
	br label %etiq1188
	
	etiq1188:
	;___IfElse___
	%aux2511 = add i32 0, 100
	%aux2512 = load i32, i32* @Pivot10
	%aux2513 = sub i32 %aux2511, %aux2512
	%aux2514 = load i32, i32* @IdPos10
	%aux2515 = icmp eq i32 %aux2513, %aux2514
	br i1 %aux2515, label %etiq1189, label %etiq1190
	
	etiq1189:
	;___Asignación___
	%aux2517 = load i32, i32* @_Acum19
	%aux2518 = add i32 0, 1
	%aux2519 = add i32 %aux2517, %aux2518
	store i32 %aux2519, i32* @_Acum19
	br label %etiq1193
	
	etiq1193:
	;___Asignación___
	%aux2521 = load i32, i32* @IdPos10
	%aux2522 = add i32 0, 1
	%aux2523 = add i32 %aux2521, %aux2522
	store i32 %aux2523, i32* @IdPos10
	br label %etiq1195
	
	etiq1195:
	;___Asignación___
	%aux2525 = load i32, i32* @Pivot10
	%aux2526 = add i32 0, 1
	%aux2527 = sub i32 %aux2525, %aux2526
	store i32 %aux2527, i32* @Pivot10
	br label %etiq1198
	
	etiq1190:
	;___Asignación___
	%aux2529 = load i32, i32* @IdPos10
	%aux2530 = add i32 0, 1
	%aux2531 = add i32 %aux2529, %aux2530
	store i32 %aux2531, i32* @IdPos10
	br label %etiq1198
	
	etiq1198:
	;___IfElse___
	%aux2533 = add i32 0, 100
	%aux2534 = load i32, i32* @Pivot10
	%aux2535 = sub i32 %aux2533, %aux2534
	%aux2536 = load i32, i32* @IdPos10
	%aux2537 = icmp eq i32 %aux2535, %aux2536
	br i1 %aux2537, label %etiq1199, label %etiq1200
	
	etiq1199:
	;___Asignación___
	%aux2539 = load i32, i32* @_Acum19
	%aux2540 = add i32 0, 1
	%aux2541 = add i32 %aux2539, %aux2540
	store i32 %aux2541, i32* @_Acum19
	br label %etiq1203
	
	etiq1203:
	;___Asignación___
	%aux2543 = load i32, i32* @IdPos10
	%aux2544 = add i32 0, 1
	%aux2545 = add i32 %aux2543, %aux2544
	store i32 %aux2545, i32* @IdPos10
	br label %etiq1205
	
	etiq1205:
	;___Asignación___
	%aux2547 = load i32, i32* @Pivot10
	%aux2548 = add i32 0, 1
	%aux2549 = sub i32 %aux2547, %aux2548
	store i32 %aux2549, i32* @Pivot10
	br label %etiq1208
	
	etiq1200:
	;___Asignación___
	%aux2551 = load i32, i32* @IdPos10
	%aux2552 = add i32 0, 1
	%aux2553 = add i32 %aux2551, %aux2552
	store i32 %aux2553, i32* @IdPos10
	br label %etiq1208
	
	etiq1208:
	;___IfElse___
	%aux2555 = add i32 0, 100
	%aux2556 = load i32, i32* @Pivot10
	%aux2557 = sub i32 %aux2555, %aux2556
	%aux2558 = load i32, i32* @IdPos10
	%aux2559 = icmp eq i32 %aux2557, %aux2558
	br i1 %aux2559, label %etiq1209, label %etiq1210
	
	etiq1209:
	;___Asignación___
	%aux2561 = load i32, i32* @_Acum19
	br label %etiq1212
	
	etiq1212:
	;___Asignación___
	%aux2563 = add i32 0, 4
	store i32 %aux2563, i32* @Pivot5
	br label %etiq1213
	
	etiq1213:
	;___IfElse___
	%aux2565 = load i32, i32* @Pivot5
	%aux2566 = add i32 0, 1
	%aux2567 = icmp sge i32 %aux2565, %aux2566
	br i1 %aux2567, label %etiq1215, label %etiq1216
	
	etiq1215:
	;___IfElse___
	%aux2569 = add i32 0, 4
	%aux2570 = load i32, i32* @Pivot5
	%aux2571 = icmp sge i32 %aux2569, %aux2570
	br i1 %aux2571, label %etiq1218, label %etiq1219
	
	etiq1218:
	;___IfElse___
	%aux2573 = add i32 0, 4
	%aux2574 = add i32 0, 0
	%aux2575 = icmp sgt i32 %aux2573, %aux2574
	br i1 %aux2575, label %etiq1222, label %etiq1223
	
	etiq1222:
	;___IfElse___
	%aux2577 = add i32 0, 4
	%aux2578 = load i32, i32* @Pivot5
	%aux2579 = sub i32 %aux2577, %aux2578
	%aux2580 = load i32, i32* @IdPos5
	%aux2581 = icmp eq i32 %aux2579, %aux2580
	br i1 %aux2581, label %etiq1225, label %etiq1226
	
	etiq1225:
	;___Asignación___
	%aux2583 = load i32, i32* @_Acum9
	%aux2584 = add i32 0, 1
	%aux2585 = add i32 %aux2583, %aux2584
	store i32 %aux2585, i32* @_Acum9
	br label %etiq1229
	
	etiq1229:
	;___Asignación___
	%aux2587 = load i32, i32* @IdPos5
	%aux2588 = add i32 0, 1
	%aux2589 = add i32 %aux2587, %aux2588
	store i32 %aux2589, i32* @IdPos5
	br label %etiq1231
	
	etiq1231:
	;___Asignación___
	%aux2591 = load i32, i32* @Pivot5
	%aux2592 = add i32 0, 1
	%aux2593 = sub i32 %aux2591, %aux2592
	store i32 %aux2593, i32* @Pivot5
	br label %etiq1234
	
	etiq1226:
	;___Asignación___
	%aux2595 = load i32, i32* @IdPos5
	%aux2596 = add i32 0, 1
	%aux2597 = add i32 %aux2595, %aux2596
	store i32 %aux2597, i32* @IdPos5
	br label %etiq1234
	
	etiq1234:
	;___IfElse___
	%aux2599 = add i32 0, 4
	%aux2600 = load i32, i32* @Pivot5
	%aux2601 = sub i32 %aux2599, %aux2600
	%aux2602 = load i32, i32* @IdPos5
	%aux2603 = icmp eq i32 %aux2601, %aux2602
	br i1 %aux2603, label %etiq1235, label %etiq1236
	
	etiq1235:
	;___Asignación___
	%aux2605 = load i32, i32* @_Acum9
	%aux2606 = add i32 0, 2
	%aux2607 = add i32 %aux2605, %aux2606
	store i32 %aux2607, i32* @_Acum9
	br label %etiq1239
	
	etiq1239:
	;___Asignación___
	%aux2609 = load i32, i32* @IdPos5
	%aux2610 = add i32 0, 1
	%aux2611 = add i32 %aux2609, %aux2610
	store i32 %aux2611, i32* @IdPos5
	br label %etiq1241
	
	etiq1241:
	;___Asignación___
	%aux2613 = load i32, i32* @Pivot5
	%aux2614 = add i32 0, 1
	%aux2615 = sub i32 %aux2613, %aux2614
	store i32 %aux2615, i32* @Pivot5
	br label %etiq1244
	
	etiq1236:
	;___Asignación___
	%aux2617 = load i32, i32* @IdPos5
	%aux2618 = add i32 0, 1
	%aux2619 = add i32 %aux2617, %aux2618
	store i32 %aux2619, i32* @IdPos5
	br label %etiq1244
	
	etiq1244:
	;___IfElse___
	%aux2621 = add i32 0, 4
	%aux2622 = load i32, i32* @Pivot5
	%aux2623 = sub i32 %aux2621, %aux2622
	%aux2624 = load i32, i32* @IdPos5
	%aux2625 = icmp eq i32 %aux2623, %aux2624
	br i1 %aux2625, label %etiq1245, label %etiq1246
	
	etiq1245:
	;___Asignación___
	%aux2627 = load i32, i32* @_Acum9
	%aux2628 = add i32 0, 3
	%aux2629 = add i32 %aux2627, %aux2628
	store i32 %aux2629, i32* @_Acum9
	br label %etiq1249
	
	etiq1249:
	;___Asignación___
	%aux2631 = load i32, i32* @IdPos5
	%aux2632 = add i32 0, 1
	%aux2633 = add i32 %aux2631, %aux2632
	store i32 %aux2633, i32* @IdPos5
	br label %etiq1251
	
	etiq1251:
	;___Asignación___
	%aux2635 = load i32, i32* @Pivot5
	%aux2636 = add i32 0, 1
	%aux2637 = sub i32 %aux2635, %aux2636
	store i32 %aux2637, i32* @Pivot5
	br label %etiq1264
	
	etiq1246:
	;___Asignación___
	%aux2639 = load i32, i32* @IdPos5
	%aux2640 = add i32 0, 1
	%aux2641 = add i32 %aux2639, %aux2640
	store i32 %aux2641, i32* @IdPos5
	br label %etiq1254
	
	etiq1254:
	;___IfElse___
	%aux2643 = add i32 0, 4
	%aux2644 = load i32, i32* @Pivot5
	%aux2645 = sub i32 %aux2643, %aux2644
	%aux2646 = load i32, i32* @IdPos5
	%aux2647 = icmp eq i32 %aux2645, %aux2646
	br i1 %aux2647, label %etiq1255, label %etiq1256
	
	etiq1255:
	;___Asignación___
	%aux2649 = load i32, i32* @_Acum9
	%aux2650 = add i32 0, 4
	%aux2651 = add i32 %aux2649, %aux2650
	store i32 %aux2651, i32* @_Acum9
	br label %etiq1259
	
	etiq1259:
	;___Asignación___
	%aux2653 = load i32, i32* @IdPos5
	%aux2654 = add i32 0, 1
	%aux2655 = add i32 %aux2653, %aux2654
	store i32 %aux2655, i32* @IdPos5
	br label %etiq1261
	
	etiq1261:
	;___Asignación___
	%aux2657 = load i32, i32* @Pivot5
	%aux2658 = add i32 0, 1
	%aux2659 = sub i32 %aux2657, %aux2658
	store i32 %aux2659, i32* @Pivot5
	br label %etiq1264
	
	etiq1256:
	;___Asignación___
	%aux2661 = load i32, i32* @IdPos5
	%aux2662 = add i32 0, 1
	%aux2663 = add i32 %aux2661, %aux2662
	store i32 %aux2663, i32* @IdPos5
	br label %etiq1264
	
	etiq1223:
	;___DisplayCadenaCaracteres___
	%aux2664 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1264
	
	etiq1219:
	;___DisplayCadenaCaracteres___
	%aux2665 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1264
	
	etiq1216:
	;___DisplayCadenaCaracteres___
	%aux2666 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1264
	
	etiq1264:
	;___Asignación___
	%aux2668 = load i32, i32* @_Acum9
	store i32 %aux2668, i32* @_Acum10
	br label %etiq1265
	
	etiq1265:
	;___Asignación___
	%aux2670 = add i32 0, 3
	store i32 %aux2670, i32* @Pivot4
	br label %etiq1266
	
	etiq1266:
	;___IfElse___
	%aux2672 = load i32, i32* @Pivot4
	%aux2673 = add i32 0, 1
	%aux2674 = icmp sge i32 %aux2672, %aux2673
	br i1 %aux2674, label %etiq1268, label %etiq1269
	
	etiq1268:
	;___IfElse___
	%aux2676 = add i32 0, 3
	%aux2677 = load i32, i32* @Pivot4
	%aux2678 = icmp sge i32 %aux2676, %aux2677
	br i1 %aux2678, label %etiq1271, label %etiq1272
	
	etiq1271:
	;___IfElse___
	%aux2680 = add i32 0, 3
	%aux2681 = add i32 0, 0
	%aux2682 = icmp sgt i32 %aux2680, %aux2681
	br i1 %aux2682, label %etiq1275, label %etiq1276
	
	etiq1275:
	;___IfElse___
	%aux2684 = add i32 0, 3
	%aux2685 = load i32, i32* @Pivot4
	%aux2686 = sub i32 %aux2684, %aux2685
	%aux2687 = load i32, i32* @IdPos4
	%aux2688 = icmp eq i32 %aux2686, %aux2687
	br i1 %aux2688, label %etiq1278, label %etiq1279
	
	etiq1278:
	;___Asignación___
	%aux2690 = load i32, i32* @_Acum7
	%aux2691 = add i32 0, 1
	%aux2692 = add i32 %aux2690, %aux2691
	store i32 %aux2692, i32* @_Acum7
	br label %etiq1282
	
	etiq1282:
	;___Asignación___
	%aux2694 = load i32, i32* @IdPos4
	%aux2695 = add i32 0, 1
	%aux2696 = add i32 %aux2694, %aux2695
	store i32 %aux2696, i32* @IdPos4
	br label %etiq1284
	
	etiq1284:
	;___Asignación___
	%aux2698 = load i32, i32* @Pivot4
	%aux2699 = add i32 0, 1
	%aux2700 = sub i32 %aux2698, %aux2699
	store i32 %aux2700, i32* @Pivot4
	br label %etiq1287
	
	etiq1279:
	;___Asignación___
	%aux2702 = load i32, i32* @IdPos4
	%aux2703 = add i32 0, 1
	%aux2704 = add i32 %aux2702, %aux2703
	store i32 %aux2704, i32* @IdPos4
	br label %etiq1287
	
	etiq1287:
	;___IfElse___
	%aux2706 = add i32 0, 3
	%aux2707 = load i32, i32* @Pivot4
	%aux2708 = sub i32 %aux2706, %aux2707
	%aux2709 = load i32, i32* @IdPos4
	%aux2710 = icmp eq i32 %aux2708, %aux2709
	br i1 %aux2710, label %etiq1288, label %etiq1289
	
	etiq1288:
	;___Asignación___
	%aux2712 = load i32, i32* @_Acum7
	%aux2713 = add i32 0, 2
	%aux2714 = add i32 %aux2712, %aux2713
	store i32 %aux2714, i32* @_Acum7
	br label %etiq1292
	
	etiq1292:
	;___Asignación___
	%aux2716 = load i32, i32* @IdPos4
	%aux2717 = add i32 0, 1
	%aux2718 = add i32 %aux2716, %aux2717
	store i32 %aux2718, i32* @IdPos4
	br label %etiq1294
	
	etiq1294:
	;___Asignación___
	%aux2720 = load i32, i32* @Pivot4
	%aux2721 = add i32 0, 1
	%aux2722 = sub i32 %aux2720, %aux2721
	store i32 %aux2722, i32* @Pivot4
	br label %etiq1297
	
	etiq1289:
	;___Asignación___
	%aux2724 = load i32, i32* @IdPos4
	%aux2725 = add i32 0, 1
	%aux2726 = add i32 %aux2724, %aux2725
	store i32 %aux2726, i32* @IdPos4
	br label %etiq1297
	
	etiq1297:
	;___IfElse___
	%aux2728 = add i32 0, 3
	%aux2729 = load i32, i32* @Pivot4
	%aux2730 = sub i32 %aux2728, %aux2729
	%aux2731 = load i32, i32* @IdPos4
	%aux2732 = icmp eq i32 %aux2730, %aux2731
	br i1 %aux2732, label %etiq1298, label %etiq1299
	
	etiq1298:
	;___Asignación___
	%aux2734 = load i32, i32* @_Acum7
	%aux2735 = add i32 0, 3
	%aux2736 = add i32 %aux2734, %aux2735
	store i32 %aux2736, i32* @_Acum7
	br label %etiq1302
	
	etiq1302:
	;___Asignación___
	%aux2738 = load i32, i32* @IdPos4
	%aux2739 = add i32 0, 1
	%aux2740 = add i32 %aux2738, %aux2739
	store i32 %aux2740, i32* @IdPos4
	br label %etiq1304
	
	etiq1304:
	;___Asignación___
	%aux2742 = load i32, i32* @Pivot4
	%aux2743 = add i32 0, 1
	%aux2744 = sub i32 %aux2742, %aux2743
	store i32 %aux2744, i32* @Pivot4
	br label %etiq1307
	
	etiq1299:
	;___Asignación___
	%aux2746 = load i32, i32* @IdPos4
	%aux2747 = add i32 0, 1
	%aux2748 = add i32 %aux2746, %aux2747
	store i32 %aux2748, i32* @IdPos4
	br label %etiq1307
	
	etiq1276:
	;___DisplayCadenaCaracteres___
	%aux2749 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1307
	
	etiq1272:
	;___DisplayCadenaCaracteres___
	%aux2750 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1307
	
	etiq1269:
	;___DisplayCadenaCaracteres___
	%aux2751 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1307
	
	etiq1307:
	;___Asignación___
	%aux2753 = load i32, i32* @_Acum7
	store i32 %aux2753, i32* @_Acum8
	br label %etiq1308
	
	etiq1308:
	;___Asignación___
	%aux2755 = add i32 0, 2
	store i32 %aux2755, i32* @Pivot2
	br label %etiq1309
	
	etiq1309:
	;___IfElse___
	%aux2757 = load i32, i32* @Pivot2
	%aux2758 = add i32 0, 1
	%aux2759 = icmp sge i32 %aux2757, %aux2758
	br i1 %aux2759, label %etiq1311, label %etiq1312
	
	etiq1311:
	;___IfElse___
	%aux2761 = add i32 0, 2
	%aux2762 = load i32, i32* @Pivot2
	%aux2763 = icmp sge i32 %aux2761, %aux2762
	br i1 %aux2763, label %etiq1314, label %etiq1315
	
	etiq1314:
	;___IfElse___
	%aux2765 = add i32 0, 2
	%aux2766 = add i32 0, 0
	%aux2767 = icmp sgt i32 %aux2765, %aux2766
	br i1 %aux2767, label %etiq1318, label %etiq1319
	
	etiq1318:
	;___IfElse___
	%aux2769 = add i32 0, 2
	%aux2770 = load i32, i32* @Pivot2
	%aux2771 = sub i32 %aux2769, %aux2770
	%aux2772 = load i32, i32* @IdPos2
	%aux2773 = icmp eq i32 %aux2771, %aux2772
	br i1 %aux2773, label %etiq1321, label %etiq1322
	
	etiq1321:
	;___Asignación___
	%aux2775 = load i32, i32* @_Acum3
	%aux2776 = add i32 0, 1
	%aux2777 = add i32 %aux2775, %aux2776
	store i32 %aux2777, i32* @_Acum3
	br label %etiq1325
	
	etiq1325:
	;___Asignación___
	%aux2779 = load i32, i32* @IdPos2
	%aux2780 = add i32 0, 1
	%aux2781 = add i32 %aux2779, %aux2780
	store i32 %aux2781, i32* @IdPos2
	br label %etiq1327
	
	etiq1327:
	;___Asignación___
	%aux2783 = load i32, i32* @Pivot2
	%aux2784 = add i32 0, 1
	%aux2785 = sub i32 %aux2783, %aux2784
	store i32 %aux2785, i32* @Pivot2
	br label %etiq1330
	
	etiq1322:
	;___Asignación___
	%aux2787 = load i32, i32* @IdPos2
	%aux2788 = add i32 0, 1
	%aux2789 = add i32 %aux2787, %aux2788
	store i32 %aux2789, i32* @IdPos2
	br label %etiq1330
	
	etiq1330:
	;___IfElse___
	%aux2791 = add i32 0, 2
	%aux2792 = load i32, i32* @Pivot2
	%aux2793 = sub i32 %aux2791, %aux2792
	%aux2794 = load i32, i32* @IdPos2
	%aux2795 = icmp eq i32 %aux2793, %aux2794
	br i1 %aux2795, label %etiq1331, label %etiq1332
	
	etiq1331:
	;___Asignación___
	%aux2797 = load i32, i32* @_Acum3
	%aux2798 = add i32 0, 2
	%aux2799 = add i32 %aux2797, %aux2798
	store i32 %aux2799, i32* @_Acum3
	br label %etiq1335
	
	etiq1335:
	;___Asignación___
	%aux2801 = load i32, i32* @IdPos2
	%aux2802 = add i32 0, 1
	%aux2803 = add i32 %aux2801, %aux2802
	store i32 %aux2803, i32* @IdPos2
	br label %etiq1337
	
	etiq1337:
	;___Asignación___
	%aux2805 = load i32, i32* @Pivot2
	%aux2806 = add i32 0, 1
	%aux2807 = sub i32 %aux2805, %aux2806
	store i32 %aux2807, i32* @Pivot2
	br label %etiq1340
	
	etiq1332:
	;___Asignación___
	%aux2809 = load i32, i32* @IdPos2
	%aux2810 = add i32 0, 1
	%aux2811 = add i32 %aux2809, %aux2810
	store i32 %aux2811, i32* @IdPos2
	br label %etiq1340
	
	etiq1319:
	;___DisplayCadenaCaracteres___
	%aux2812 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1340
	
	etiq1315:
	;___DisplayCadenaCaracteres___
	%aux2813 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1340
	
	etiq1312:
	;___DisplayCadenaCaracteres___
	%aux2814 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1340
	
	etiq1340:
	;___Asignación___
	%aux2816 = load i32, i32* @_Acum3
	store i32 %aux2816, i32* @_Acum4
	br label %etiq1341
	
	etiq1341:
	;___Asignación___
	%aux2818 = add i32 0, 1
	store i32 %aux2818, i32* @Pivot1
	br label %etiq1342
	
	etiq1342:
	;___IfElse___
	%aux2820 = load i32, i32* @Pivot1
	%aux2821 = add i32 0, 1
	%aux2822 = icmp sge i32 %aux2820, %aux2821
	br i1 %aux2822, label %etiq1344, label %etiq1345
	
	etiq1344:
	;___IfElse___
	%aux2824 = add i32 0, 1
	%aux2825 = load i32, i32* @Pivot1
	%aux2826 = icmp sge i32 %aux2824, %aux2825
	br i1 %aux2826, label %etiq1347, label %etiq1348
	
	etiq1347:
	;___IfElse___
	%aux2828 = add i32 0, 1
	%aux2829 = add i32 0, 0
	%aux2830 = icmp sgt i32 %aux2828, %aux2829
	br i1 %aux2830, label %etiq1351, label %etiq1352
	
	etiq1351:
	;___IfElse___
	%aux2832 = add i32 0, 1
	%aux2833 = load i32, i32* @Pivot1
	%aux2834 = sub i32 %aux2832, %aux2833
	%aux2835 = load i32, i32* @IdPos1
	%aux2836 = icmp eq i32 %aux2834, %aux2835
	br i1 %aux2836, label %etiq1354, label %etiq1355
	
	etiq1354:
	;___Asignación___
	%aux2838 = load i32, i32* @_Acum1
	%aux2839 = add i32 0, 1
	%aux2840 = add i32 %aux2838, %aux2839
	store i32 %aux2840, i32* @_Acum1
	br label %etiq1358
	
	etiq1358:
	;___Asignación___
	%aux2842 = load i32, i32* @IdPos1
	%aux2843 = add i32 0, 1
	%aux2844 = add i32 %aux2842, %aux2843
	store i32 %aux2844, i32* @IdPos1
	br label %etiq1360
	
	etiq1360:
	;___Asignación___
	%aux2846 = load i32, i32* @Pivot1
	%aux2847 = add i32 0, 1
	%aux2848 = sub i32 %aux2846, %aux2847
	store i32 %aux2848, i32* @Pivot1
	br label %etiq1363
	
	etiq1355:
	;___Asignación___
	%aux2850 = load i32, i32* @IdPos1
	%aux2851 = add i32 0, 1
	%aux2852 = add i32 %aux2850, %aux2851
	store i32 %aux2852, i32* @IdPos1
	br label %etiq1363
	
	etiq1352:
	;___DisplayCadenaCaracteres___
	%aux2853 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1363
	
	etiq1348:
	;___DisplayCadenaCaracteres___
	%aux2854 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1363
	
	etiq1345:
	;___DisplayCadenaCaracteres___
	%aux2855 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1363
	
	etiq1363:
	;___Asignación___
	%aux2857 = load i32, i32* @_Acum1
	store i32 %aux2857, i32* @_Acum2
	br label %etiq1364
	
	etiq1364:
	;___Asignación___
	%aux2859 = add i32 0, 2
	store i32 %aux2859, i32* @Pivot3
	br label %etiq1365
	
	etiq1365:
	;___IfElse___
	%aux2861 = load i32, i32* @Pivot3
	%aux2862 = add i32 0, 1
	%aux2863 = icmp sge i32 %aux2861, %aux2862
	br i1 %aux2863, label %etiq1367, label %etiq1368
	
	etiq1367:
	;___IfElse___
	%aux2865 = add i32 0, 2
	%aux2866 = load i32, i32* @Pivot3
	%aux2867 = icmp sge i32 %aux2865, %aux2866
	br i1 %aux2867, label %etiq1370, label %etiq1371
	
	etiq1370:
	;___IfElse___
	%aux2869 = add i32 0, 2
	%aux2870 = add i32 0, 0
	%aux2871 = icmp sgt i32 %aux2869, %aux2870
	br i1 %aux2871, label %etiq1374, label %etiq1375
	
	etiq1374:
	;___IfElse___
	%aux2873 = add i32 0, 2
	%aux2874 = load i32, i32* @Pivot3
	%aux2875 = sub i32 %aux2873, %aux2874
	%aux2876 = load i32, i32* @IdPos3
	%aux2877 = icmp eq i32 %aux2875, %aux2876
	br i1 %aux2877, label %etiq1377, label %etiq1378
	
	etiq1377:
	;___Asignación___
	%aux2879 = load i32, i32* @_Acum5
	%aux2880 = load i32, i32* @_Acum2
	%aux2881 = add i32 %aux2879, %aux2880
	store i32 %aux2881, i32* @_Acum5
	br label %etiq1380
	
	etiq1380:
	;___Asignación___
	%aux2883 = load i32, i32* @IdPos3
	%aux2884 = add i32 0, 1
	%aux2885 = add i32 %aux2883, %aux2884
	store i32 %aux2885, i32* @IdPos3
	br label %etiq1382
	
	etiq1382:
	;___Asignación___
	%aux2887 = load i32, i32* @Pivot3
	%aux2888 = add i32 0, 1
	%aux2889 = sub i32 %aux2887, %aux2888
	store i32 %aux2889, i32* @Pivot3
	br label %etiq1385
	
	etiq1378:
	;___Asignación___
	%aux2891 = load i32, i32* @IdPos3
	%aux2892 = add i32 0, 1
	%aux2893 = add i32 %aux2891, %aux2892
	store i32 %aux2893, i32* @IdPos3
	br label %etiq1385
	
	etiq1385:
	;___IfElse___
	%aux2895 = add i32 0, 2
	%aux2896 = load i32, i32* @Pivot3
	%aux2897 = sub i32 %aux2895, %aux2896
	%aux2898 = load i32, i32* @IdPos3
	%aux2899 = icmp eq i32 %aux2897, %aux2898
	br i1 %aux2899, label %etiq1386, label %etiq1387
	
	etiq1386:
	;___Asignación___
	%aux2901 = load i32, i32* @_Acum5
	%aux2902 = load i32, i32* @_Acum4
	%aux2903 = add i32 %aux2901, %aux2902
	store i32 %aux2903, i32* @_Acum5
	br label %etiq1389
	
	etiq1389:
	;___Asignación___
	%aux2905 = load i32, i32* @IdPos3
	%aux2906 = add i32 0, 1
	%aux2907 = add i32 %aux2905, %aux2906
	store i32 %aux2907, i32* @IdPos3
	br label %etiq1391
	
	etiq1391:
	;___Asignación___
	%aux2909 = load i32, i32* @Pivot3
	%aux2910 = add i32 0, 1
	%aux2911 = sub i32 %aux2909, %aux2910
	store i32 %aux2911, i32* @Pivot3
	br label %etiq1394
	
	etiq1387:
	;___Asignación___
	%aux2913 = load i32, i32* @IdPos3
	%aux2914 = add i32 0, 1
	%aux2915 = add i32 %aux2913, %aux2914
	store i32 %aux2915, i32* @IdPos3
	br label %etiq1394
	
	etiq1375:
	;___DisplayCadenaCaracteres___
	%aux2916 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1394
	
	etiq1371:
	;___DisplayCadenaCaracteres___
	%aux2917 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1394
	
	etiq1368:
	;___DisplayCadenaCaracteres___
	%aux2918 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1394
	
	etiq1394:
	;___Asignación___
	%aux2920 = load i32, i32* @_Acum5
	store i32 %aux2920, i32* @_Acum6
	br label %etiq1395
	
	etiq1395:
	;___Asignación___
	%aux2922 = add i32 0, 3
	store i32 %aux2922, i32* @Pivot6
	br label %etiq1396
	
	etiq1396:
	;___IfElse___
	%aux2924 = load i32, i32* @Pivot6
	%aux2925 = add i32 0, 1
	%aux2926 = icmp sge i32 %aux2924, %aux2925
	br i1 %aux2926, label %etiq1398, label %etiq1399
	
	etiq1398:
	;___IfElse___
	%aux2928 = add i32 0, 3
	%aux2929 = load i32, i32* @Pivot6
	%aux2930 = icmp sge i32 %aux2928, %aux2929
	br i1 %aux2930, label %etiq1401, label %etiq1402
	
	etiq1401:
	;___IfElse___
	%aux2932 = add i32 0, 3
	%aux2933 = add i32 0, 0
	%aux2934 = icmp sgt i32 %aux2932, %aux2933
	br i1 %aux2934, label %etiq1405, label %etiq1406
	
	etiq1405:
	;___IfElse___
	%aux2936 = add i32 0, 3
	%aux2937 = load i32, i32* @Pivot6
	%aux2938 = sub i32 %aux2936, %aux2937
	%aux2939 = load i32, i32* @IdPos6
	%aux2940 = icmp eq i32 %aux2938, %aux2939
	br i1 %aux2940, label %etiq1408, label %etiq1409
	
	etiq1408:
	;___Asignación___
	%aux2942 = load i32, i32* @_Acum11
	%aux2943 = load i32, i32* @_Acum6
	%aux2944 = add i32 %aux2942, %aux2943
	store i32 %aux2944, i32* @_Acum11
	br label %etiq1411
	
	etiq1411:
	;___Asignación___
	%aux2946 = load i32, i32* @IdPos6
	%aux2947 = add i32 0, 1
	%aux2948 = add i32 %aux2946, %aux2947
	store i32 %aux2948, i32* @IdPos6
	br label %etiq1413
	
	etiq1413:
	;___Asignación___
	%aux2950 = load i32, i32* @Pivot6
	%aux2951 = add i32 0, 1
	%aux2952 = sub i32 %aux2950, %aux2951
	store i32 %aux2952, i32* @Pivot6
	br label %etiq1416
	
	etiq1409:
	;___Asignación___
	%aux2954 = load i32, i32* @IdPos6
	%aux2955 = add i32 0, 1
	%aux2956 = add i32 %aux2954, %aux2955
	store i32 %aux2956, i32* @IdPos6
	br label %etiq1416
	
	etiq1416:
	;___IfElse___
	%aux2958 = add i32 0, 3
	%aux2959 = load i32, i32* @Pivot6
	%aux2960 = sub i32 %aux2958, %aux2959
	%aux2961 = load i32, i32* @IdPos6
	%aux2962 = icmp eq i32 %aux2960, %aux2961
	br i1 %aux2962, label %etiq1417, label %etiq1418
	
	etiq1417:
	;___Asignación___
	%aux2964 = load i32, i32* @_Acum11
	%aux2965 = load i32, i32* @_Acum8
	%aux2966 = add i32 %aux2964, %aux2965
	store i32 %aux2966, i32* @_Acum11
	br label %etiq1420
	
	etiq1420:
	;___Asignación___
	%aux2968 = load i32, i32* @IdPos6
	%aux2969 = add i32 0, 1
	%aux2970 = add i32 %aux2968, %aux2969
	store i32 %aux2970, i32* @IdPos6
	br label %etiq1422
	
	etiq1422:
	;___Asignación___
	%aux2972 = load i32, i32* @Pivot6
	%aux2973 = add i32 0, 1
	%aux2974 = sub i32 %aux2972, %aux2973
	store i32 %aux2974, i32* @Pivot6
	br label %etiq1425
	
	etiq1418:
	;___Asignación___
	%aux2976 = load i32, i32* @IdPos6
	%aux2977 = add i32 0, 1
	%aux2978 = add i32 %aux2976, %aux2977
	store i32 %aux2978, i32* @IdPos6
	br label %etiq1425
	
	etiq1425:
	;___IfElse___
	%aux2980 = add i32 0, 3
	%aux2981 = load i32, i32* @Pivot6
	%aux2982 = sub i32 %aux2980, %aux2981
	%aux2983 = load i32, i32* @IdPos6
	%aux2984 = icmp eq i32 %aux2982, %aux2983
	br i1 %aux2984, label %etiq1426, label %etiq1427
	
	etiq1426:
	;___Asignación___
	%aux2986 = load i32, i32* @_Acum11
	%aux2987 = load i32, i32* @_Acum10
	%aux2988 = add i32 %aux2986, %aux2987
	store i32 %aux2988, i32* @_Acum11
	br label %etiq1429
	
	etiq1429:
	;___Asignación___
	%aux2990 = load i32, i32* @IdPos6
	%aux2991 = add i32 0, 1
	%aux2992 = add i32 %aux2990, %aux2991
	store i32 %aux2992, i32* @IdPos6
	br label %etiq1431
	
	etiq1431:
	;___Asignación___
	%aux2994 = load i32, i32* @Pivot6
	%aux2995 = add i32 0, 1
	%aux2996 = sub i32 %aux2994, %aux2995
	store i32 %aux2996, i32* @Pivot6
	br label %etiq1434
	
	etiq1427:
	;___Asignación___
	%aux2998 = load i32, i32* @IdPos6
	%aux2999 = add i32 0, 1
	%aux3000 = add i32 %aux2998, %aux2999
	store i32 %aux3000, i32* @IdPos6
	br label %etiq1434
	
	etiq1406:
	;___DisplayCadenaCaracteres___
	%aux3001 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1434
	
	etiq1402:
	;___DisplayCadenaCaracteres___
	%aux3002 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1434
	
	etiq1399:
	;___DisplayCadenaCaracteres___
	%aux3003 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1434
	
	etiq1434:
	;___Asignación___
	%aux3005 = load i32, i32* @_Acum11
	store i32 %aux3005, i32* @_Acum12
	br label %etiq1435
	
	etiq1435:
	%aux3006 = load i32, i32* @_Acum12
	%aux3007 = add i32 0, 15
	%aux3008 = sub i32 %aux3006, %aux3007
	%aux3009 = add i32 %aux2561, %aux3008
	store i32 %aux3009, i32* @_Acum19
	br label %etiq1437
	
	etiq1437:
	;___Asignación___
	%aux3011 = load i32, i32* @IdPos10
	%aux3012 = add i32 0, 1
	%aux3013 = add i32 %aux3011, %aux3012
	store i32 %aux3013, i32* @IdPos10
	br label %etiq1439
	
	etiq1439:
	;___Asignación___
	%aux3015 = load i32, i32* @Pivot10
	%aux3016 = add i32 0, 1
	%aux3017 = sub i32 %aux3015, %aux3016
	store i32 %aux3017, i32* @Pivot10
	br label %etiq1442
	
	etiq1210:
	;___Asignación___
	%aux3019 = load i32, i32* @IdPos10
	%aux3020 = add i32 0, 1
	%aux3021 = add i32 %aux3019, %aux3020
	store i32 %aux3021, i32* @IdPos10
	br label %etiq1442
	
	etiq1442:
	;___IfElse___
	%aux3023 = add i32 0, 100
	%aux3024 = load i32, i32* @Pivot10
	%aux3025 = sub i32 %aux3023, %aux3024
	%aux3026 = load i32, i32* @IdPos10
	%aux3027 = icmp eq i32 %aux3025, %aux3026
	br i1 %aux3027, label %etiq1443, label %etiq1444
	
	etiq1443:
	;___Asignación___
	%aux3029 = load i32, i32* @_Acum19
	%aux3030 = add i32 0, 1
	%aux3031 = add i32 0, 2
	%aux3032 = sub i32 %aux3030, %aux3031
	%aux3033 = add i32 0, 3
	%aux3034 = add i32 %aux3032, %aux3033
	%aux3035 = add i32 0, 1
	%aux3036 = sub i32 %aux3034, %aux3035
	%aux3037 = add i32 %aux3029, %aux3036
	store i32 %aux3037, i32* @_Acum19
	br label %etiq1450
	
	etiq1450:
	;___Asignación___
	%aux3039 = load i32, i32* @IdPos10
	%aux3040 = add i32 0, 1
	%aux3041 = add i32 %aux3039, %aux3040
	store i32 %aux3041, i32* @IdPos10
	br label %etiq1452
	
	etiq1452:
	;___Asignación___
	%aux3043 = load i32, i32* @Pivot10
	%aux3044 = add i32 0, 1
	%aux3045 = sub i32 %aux3043, %aux3044
	store i32 %aux3045, i32* @Pivot10
	br label %etiq1455
	
	etiq1444:
	;___Asignación___
	%aux3047 = load i32, i32* @IdPos10
	%aux3048 = add i32 0, 1
	%aux3049 = add i32 %aux3047, %aux3048
	store i32 %aux3049, i32* @IdPos10
	br label %etiq1455
	
	etiq1455:
	;___IfElse___
	%aux3051 = add i32 0, 100
	%aux3052 = load i32, i32* @Pivot10
	%aux3053 = sub i32 %aux3051, %aux3052
	%aux3054 = load i32, i32* @IdPos10
	%aux3055 = icmp eq i32 %aux3053, %aux3054
	br i1 %aux3055, label %etiq1456, label %etiq1457
	
	etiq1456:
	;___Asignación___
	%aux3057 = load i32, i32* @_Acum19
	%aux3058 = add i32 0, 1
	%aux3059 = sub i32 0, %aux3058
	br label %etiq1460
	
	etiq1460:
	;___Asignación___
	%aux3061 = add i32 0, 2
	store i32 %aux3061, i32* @Pivot7
	br label %etiq1461
	
	etiq1461:
	;___IfElse___
	%aux3063 = load i32, i32* @Pivot7
	%aux3064 = add i32 0, 1
	%aux3065 = icmp sge i32 %aux3063, %aux3064
	br i1 %aux3065, label %etiq1463, label %etiq1464
	
	etiq1463:
	;___IfElse___
	%aux3067 = add i32 0, 2
	%aux3068 = load i32, i32* @Pivot7
	%aux3069 = icmp sge i32 %aux3067, %aux3068
	br i1 %aux3069, label %etiq1466, label %etiq1467
	
	etiq1466:
	;___IfElse___
	%aux3071 = add i32 0, 2
	%aux3072 = add i32 0, 0
	%aux3073 = icmp sgt i32 %aux3071, %aux3072
	br i1 %aux3073, label %etiq1470, label %etiq1471
	
	etiq1470:
	;___IfElse___
	%aux3075 = add i32 0, 2
	%aux3076 = load i32, i32* @Pivot7
	%aux3077 = sub i32 %aux3075, %aux3076
	%aux3078 = load i32, i32* @IdPos7
	%aux3079 = icmp eq i32 %aux3077, %aux3078
	br i1 %aux3079, label %etiq1473, label %etiq1474
	
	etiq1473:
	;___Asignación___
	%aux3081 = load i32, i32* @_Acum13
	%aux3082 = load i32, i32* @edad
	%aux3083 = add i32 0, 0
	%aux3084 = mul i32 %aux3082, %aux3083
	%aux3085 = add i32 %aux3081, %aux3084
	store i32 %aux3085, i32* @_Acum13
	br label %etiq1478
	
	etiq1478:
	;___Asignación___
	%aux3087 = load i32, i32* @IdPos7
	%aux3088 = add i32 0, 1
	%aux3089 = add i32 %aux3087, %aux3088
	store i32 %aux3089, i32* @IdPos7
	br label %etiq1480
	
	etiq1480:
	;___Asignación___
	%aux3091 = load i32, i32* @Pivot7
	%aux3092 = add i32 0, 1
	%aux3093 = sub i32 %aux3091, %aux3092
	store i32 %aux3093, i32* @Pivot7
	br label %etiq1483
	
	etiq1474:
	;___Asignación___
	%aux3095 = load i32, i32* @IdPos7
	%aux3096 = add i32 0, 1
	%aux3097 = add i32 %aux3095, %aux3096
	store i32 %aux3097, i32* @IdPos7
	br label %etiq1483
	
	etiq1483:
	;___IfElse___
	%aux3099 = add i32 0, 2
	%aux3100 = load i32, i32* @Pivot7
	%aux3101 = sub i32 %aux3099, %aux3100
	%aux3102 = load i32, i32* @IdPos7
	%aux3103 = icmp eq i32 %aux3101, %aux3102
	br i1 %aux3103, label %etiq1484, label %etiq1485
	
	etiq1484:
	;___Asignación___
	%aux3105 = load i32, i32* @_Acum13
	%aux3106 = add i32 0, 2
	%aux3107 = add i32 %aux3105, %aux3106
	store i32 %aux3107, i32* @_Acum13
	br label %etiq1488
	
	etiq1488:
	;___Asignación___
	%aux3109 = load i32, i32* @IdPos7
	%aux3110 = add i32 0, 1
	%aux3111 = add i32 %aux3109, %aux3110
	store i32 %aux3111, i32* @IdPos7
	br label %etiq1490
	
	etiq1490:
	;___Asignación___
	%aux3113 = load i32, i32* @Pivot7
	%aux3114 = add i32 0, 1
	%aux3115 = sub i32 %aux3113, %aux3114
	store i32 %aux3115, i32* @Pivot7
	br label %etiq1493
	
	etiq1485:
	;___Asignación___
	%aux3117 = load i32, i32* @IdPos7
	%aux3118 = add i32 0, 1
	%aux3119 = add i32 %aux3117, %aux3118
	store i32 %aux3119, i32* @IdPos7
	br label %etiq1493
	
	etiq1471:
	;___DisplayCadenaCaracteres___
	%aux3120 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1493
	
	etiq1467:
	;___DisplayCadenaCaracteres___
	%aux3121 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1493
	
	etiq1464:
	;___DisplayCadenaCaracteres___
	%aux3122 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1493
	
	etiq1493:
	;___Asignación___
	%aux3124 = load i32, i32* @_Acum13
	store i32 %aux3124, i32* @_Acum14
	br label %etiq1494
	
	etiq1494:
	%aux3125 = load i32, i32* @_Acum14
	%aux3126 = add i32 %aux3059, %aux3125
	%aux3127 = add i32 %aux3057, %aux3126
	store i32 %aux3127, i32* @_Acum19
	br label %etiq1495
	
	etiq1495:
	;___Asignación___
	%aux3129 = load i32, i32* @IdPos10
	%aux3130 = add i32 0, 1
	%aux3131 = add i32 %aux3129, %aux3130
	store i32 %aux3131, i32* @IdPos10
	br label %etiq1497
	
	etiq1497:
	;___Asignación___
	%aux3133 = load i32, i32* @Pivot10
	%aux3134 = add i32 0, 1
	%aux3135 = sub i32 %aux3133, %aux3134
	store i32 %aux3135, i32* @Pivot10
	br label %etiq1500
	
	etiq1457:
	;___Asignación___
	%aux3137 = load i32, i32* @IdPos10
	%aux3138 = add i32 0, 1
	%aux3139 = add i32 %aux3137, %aux3138
	store i32 %aux3139, i32* @IdPos10
	br label %etiq1500
	
	etiq1500:
	;___IfElse___
	%aux3141 = add i32 0, 100
	%aux3142 = load i32, i32* @Pivot10
	%aux3143 = sub i32 %aux3141, %aux3142
	%aux3144 = load i32, i32* @IdPos10
	%aux3145 = icmp eq i32 %aux3143, %aux3144
	br i1 %aux3145, label %etiq1501, label %etiq1502
	
	etiq1501:
	;___Asignación___
	%aux3147 = load i32, i32* @_Acum19
	%aux3148 = add i32 0, 1
	%aux3149 = add i32 0, 2
	%aux3150 = add i32 0, 2
	%aux3151 = add i32 0, 1
	%aux3152 = sdiv i32 %aux3150, %aux3151
	%aux3153 = mul i32 %aux3149, %aux3152
	%aux3154 = sub i32 %aux3148, %aux3153
	%aux3155 = add i32 0, 4
	%aux3156 = add i32 %aux3154, %aux3155
	%aux3157 = add i32 0, 1
	%aux3158 = mul i32 %aux3156, %aux3157
	%aux3159 = add i32 %aux3147, %aux3158
	store i32 %aux3159, i32* @_Acum19
	br label %etiq1510
	
	etiq1510:
	;___Asignación___
	%aux3161 = load i32, i32* @IdPos10
	%aux3162 = add i32 0, 1
	%aux3163 = add i32 %aux3161, %aux3162
	store i32 %aux3163, i32* @IdPos10
	br label %etiq1512
	
	etiq1512:
	;___Asignación___
	%aux3165 = load i32, i32* @Pivot10
	%aux3166 = add i32 0, 1
	%aux3167 = sub i32 %aux3165, %aux3166
	store i32 %aux3167, i32* @Pivot10
	br label %etiq1515
	
	etiq1502:
	;___Asignación___
	%aux3169 = load i32, i32* @IdPos10
	%aux3170 = add i32 0, 1
	%aux3171 = add i32 %aux3169, %aux3170
	store i32 %aux3171, i32* @IdPos10
	br label %etiq1515
	
	etiq1515:
	;___IfElse___
	%aux3173 = add i32 0, 100
	%aux3174 = load i32, i32* @Pivot10
	%aux3175 = sub i32 %aux3173, %aux3174
	%aux3176 = load i32, i32* @IdPos10
	%aux3177 = icmp eq i32 %aux3175, %aux3176
	br i1 %aux3177, label %etiq1516, label %etiq1517
	
	etiq1516:
	;___Asignación___
	%aux3179 = load i32, i32* @_Acum19
	%aux3180 = add i32 0, 10
	%aux3181 = add i32 0, 10
	%aux3182 = add i32 0, 10
	%aux3183 = mul i32 %aux3181, %aux3182
	%aux3184 = add i32 %aux3180, %aux3183
	%aux3185 = add i32 0, 10
	%aux3186 = sub i32 %aux3184, %aux3185
	%aux3187 = add i32 0, 100
	%aux3188 = sdiv i32 %aux3186, %aux3187
	%aux3189 = add i32 %aux3179, %aux3188
	store i32 %aux3189, i32* @_Acum19
	br label %etiq1524
	
	etiq1524:
	;___Asignación___
	%aux3191 = load i32, i32* @IdPos10
	%aux3192 = add i32 0, 1
	%aux3193 = add i32 %aux3191, %aux3192
	store i32 %aux3193, i32* @IdPos10
	br label %etiq1526
	
	etiq1526:
	;___Asignación___
	%aux3195 = load i32, i32* @Pivot10
	%aux3196 = add i32 0, 1
	%aux3197 = sub i32 %aux3195, %aux3196
	store i32 %aux3197, i32* @Pivot10
	br label %etiq1529
	
	etiq1517:
	;___Asignación___
	%aux3199 = load i32, i32* @IdPos10
	%aux3200 = add i32 0, 1
	%aux3201 = add i32 %aux3199, %aux3200
	store i32 %aux3201, i32* @IdPos10
	br label %etiq1529
	
	etiq1529:
	;___IfElse___
	%aux3203 = add i32 0, 100
	%aux3204 = load i32, i32* @Pivot10
	%aux3205 = sub i32 %aux3203, %aux3204
	%aux3206 = load i32, i32* @IdPos10
	%aux3207 = icmp eq i32 %aux3205, %aux3206
	br i1 %aux3207, label %etiq1530, label %etiq1531
	
	etiq1530:
	;___Asignación___
	%aux3209 = load i32, i32* @_Acum19
	br label %etiq1533
	
	etiq1533:
	;___Asignación___
	%aux3211 = add i32 0, 2
	store i32 %aux3211, i32* @Pivot8
	br label %etiq1534
	
	etiq1534:
	;___IfElse___
	%aux3213 = load i32, i32* @Pivot8
	%aux3214 = add i32 0, 1
	%aux3215 = icmp sge i32 %aux3213, %aux3214
	br i1 %aux3215, label %etiq1536, label %etiq1537
	
	etiq1536:
	;___IfElse___
	%aux3217 = add i32 0, 3
	%aux3218 = load i32, i32* @Pivot8
	%aux3219 = icmp sge i32 %aux3217, %aux3218
	br i1 %aux3219, label %etiq1539, label %etiq1540
	
	etiq1539:
	;___IfElse___
	%aux3221 = add i32 0, 3
	%aux3222 = add i32 0, 0
	%aux3223 = icmp sgt i32 %aux3221, %aux3222
	br i1 %aux3223, label %etiq1543, label %etiq1544
	
	etiq1543:
	;___IfElse___
	%aux3225 = add i32 0, 3
	%aux3226 = load i32, i32* @Pivot8
	%aux3227 = sub i32 %aux3225, %aux3226
	%aux3228 = load i32, i32* @IdPos8
	%aux3229 = icmp eq i32 %aux3227, %aux3228
	br i1 %aux3229, label %etiq1546, label %etiq1547
	
	etiq1546:
	;___Asignación___
	%aux3231 = load i32, i32* @_Acum15
	%aux3232 = add i32 0, 5
	%aux3233 = add i32 %aux3231, %aux3232
	store i32 %aux3233, i32* @_Acum15
	br label %etiq1550
	
	etiq1550:
	;___Asignación___
	%aux3235 = load i32, i32* @IdPos8
	%aux3236 = add i32 0, 1
	%aux3237 = add i32 %aux3235, %aux3236
	store i32 %aux3237, i32* @IdPos8
	br label %etiq1552
	
	etiq1552:
	;___Asignación___
	%aux3239 = load i32, i32* @Pivot8
	%aux3240 = add i32 0, 1
	%aux3241 = sub i32 %aux3239, %aux3240
	store i32 %aux3241, i32* @Pivot8
	br label %etiq1555
	
	etiq1547:
	;___Asignación___
	%aux3243 = load i32, i32* @IdPos8
	%aux3244 = add i32 0, 1
	%aux3245 = add i32 %aux3243, %aux3244
	store i32 %aux3245, i32* @IdPos8
	br label %etiq1555
	
	etiq1555:
	;___IfElse___
	%aux3247 = add i32 0, 3
	%aux3248 = load i32, i32* @Pivot8
	%aux3249 = sub i32 %aux3247, %aux3248
	%aux3250 = load i32, i32* @IdPos8
	%aux3251 = icmp eq i32 %aux3249, %aux3250
	br i1 %aux3251, label %etiq1556, label %etiq1557
	
	etiq1556:
	;___Asignación___
	%aux3253 = load i32, i32* @_Acum15
	%aux3254 = add i32 0, 1
	%aux3255 = sub i32 0, %aux3254
	%aux3256 = add i32 %aux3253, %aux3255
	store i32 %aux3256, i32* @_Acum15
	br label %etiq1560
	
	etiq1560:
	;___Asignación___
	%aux3258 = load i32, i32* @IdPos8
	%aux3259 = add i32 0, 1
	%aux3260 = add i32 %aux3258, %aux3259
	store i32 %aux3260, i32* @IdPos8
	br label %etiq1562
	
	etiq1562:
	;___Asignación___
	%aux3262 = load i32, i32* @Pivot8
	%aux3263 = add i32 0, 1
	%aux3264 = sub i32 %aux3262, %aux3263
	store i32 %aux3264, i32* @Pivot8
	br label %etiq1565
	
	etiq1557:
	;___Asignación___
	%aux3266 = load i32, i32* @IdPos8
	%aux3267 = add i32 0, 1
	%aux3268 = add i32 %aux3266, %aux3267
	store i32 %aux3268, i32* @IdPos8
	br label %etiq1565
	
	etiq1565:
	;___IfElse___
	%aux3270 = add i32 0, 3
	%aux3271 = load i32, i32* @Pivot8
	%aux3272 = sub i32 %aux3270, %aux3271
	%aux3273 = load i32, i32* @IdPos8
	%aux3274 = icmp eq i32 %aux3272, %aux3273
	br i1 %aux3274, label %etiq1566, label %etiq1567
	
	etiq1566:
	;___Asignación___
	%aux3276 = load i32, i32* @_Acum15
	%aux3277 = add i32 0, 2
	%aux3278 = add i32 %aux3276, %aux3277
	store i32 %aux3278, i32* @_Acum15
	br label %etiq1570
	
	etiq1570:
	;___Asignación___
	%aux3280 = load i32, i32* @IdPos8
	%aux3281 = add i32 0, 1
	%aux3282 = add i32 %aux3280, %aux3281
	store i32 %aux3282, i32* @IdPos8
	br label %etiq1572
	
	etiq1572:
	;___Asignación___
	%aux3284 = load i32, i32* @Pivot8
	%aux3285 = add i32 0, 1
	%aux3286 = sub i32 %aux3284, %aux3285
	store i32 %aux3286, i32* @Pivot8
	br label %etiq1575
	
	etiq1567:
	;___Asignación___
	%aux3288 = load i32, i32* @IdPos8
	%aux3289 = add i32 0, 1
	%aux3290 = add i32 %aux3288, %aux3289
	store i32 %aux3290, i32* @IdPos8
	br label %etiq1575
	
	etiq1544:
	;___DisplayCadenaCaracteres___
	%aux3291 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1575
	
	etiq1540:
	;___DisplayCadenaCaracteres___
	%aux3292 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1575
	
	etiq1537:
	;___DisplayCadenaCaracteres___
	%aux3293 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1575
	
	etiq1575:
	;___Asignación___
	%aux3295 = load i32, i32* @_Acum15
	store i32 %aux3295, i32* @_Acum16
	br label %etiq1576
	
	etiq1576:
	%aux3296 = load i32, i32* @_Acum16
	%aux3297 = sub i32 0, %aux3296
	%aux3298 = add i32 0, 1
	%aux3299 = sub i32 0, %aux3298
	%aux3300 = mul i32 %aux3297, %aux3299
	%aux3301 = add i32 %aux3209, %aux3300
	store i32 %aux3301, i32* @_Acum19
	br label %etiq1578
	
	etiq1578:
	;___Asignación___
	%aux3303 = load i32, i32* @IdPos10
	%aux3304 = add i32 0, 1
	%aux3305 = add i32 %aux3303, %aux3304
	store i32 %aux3305, i32* @IdPos10
	br label %etiq1580
	
	etiq1580:
	;___Asignación___
	%aux3307 = load i32, i32* @Pivot10
	%aux3308 = add i32 0, 1
	%aux3309 = sub i32 %aux3307, %aux3308
	store i32 %aux3309, i32* @Pivot10
	br label %etiq1583
	
	etiq1531:
	;___Asignación___
	%aux3311 = load i32, i32* @IdPos10
	%aux3312 = add i32 0, 1
	%aux3313 = add i32 %aux3311, %aux3312
	store i32 %aux3313, i32* @IdPos10
	br label %etiq1583
	
	etiq1583:
	;___IfElse___
	%aux3315 = add i32 0, 100
	%aux3316 = load i32, i32* @Pivot10
	%aux3317 = sub i32 %aux3315, %aux3316
	%aux3318 = load i32, i32* @IdPos10
	%aux3319 = icmp eq i32 %aux3317, %aux3318
	br i1 %aux3319, label %etiq1584, label %etiq1585
	
	etiq1584:
	;___Asignación___
	%aux3321 = load i32, i32* @_Acum19
	%aux3322 = add i32 0, 1
	%aux3323 = add i32 0, 2
	%aux3324 = add i32 %aux3322, %aux3323
	%aux3325 = add i32 0, 3
	%aux3326 = add i32 %aux3324, %aux3325
	%aux3327 = add i32 0, 4
	%aux3328 = add i32 %aux3326, %aux3327
	%aux3329 = add i32 0, 10
	%aux3330 = sdiv i32 %aux3328, %aux3329
	%aux3331 = add i32 %aux3321, %aux3330
	store i32 %aux3331, i32* @_Acum19
	br label %etiq1592
	
	etiq1592:
	;___Asignación___
	%aux3333 = load i32, i32* @IdPos10
	%aux3334 = add i32 0, 1
	%aux3335 = add i32 %aux3333, %aux3334
	store i32 %aux3335, i32* @IdPos10
	br label %etiq1594
	
	etiq1594:
	;___Asignación___
	%aux3337 = load i32, i32* @Pivot10
	%aux3338 = add i32 0, 1
	%aux3339 = sub i32 %aux3337, %aux3338
	store i32 %aux3339, i32* @Pivot10
	br label %etiq1597
	
	etiq1585:
	;___Asignación___
	%aux3341 = load i32, i32* @IdPos10
	%aux3342 = add i32 0, 1
	%aux3343 = add i32 %aux3341, %aux3342
	store i32 %aux3343, i32* @IdPos10
	br label %etiq1597
	
	etiq1597:
	;___IfElse___
	%aux3345 = add i32 0, 100
	%aux3346 = load i32, i32* @Pivot10
	%aux3347 = sub i32 %aux3345, %aux3346
	%aux3348 = load i32, i32* @IdPos10
	%aux3349 = icmp eq i32 %aux3347, %aux3348
	br i1 %aux3349, label %etiq1598, label %etiq1599
	
	etiq1598:
	;___Asignación___
	%aux3351 = load i32, i32* @_Acum19
	%aux3352 = add i32 0, 50
	%aux3353 = add i32 0, 50
	%aux3354 = sdiv i32 %aux3352, %aux3353
	%aux3355 = add i32 %aux3351, %aux3354
	store i32 %aux3355, i32* @_Acum19
	br label %etiq1603
	
	etiq1603:
	;___Asignación___
	%aux3357 = load i32, i32* @IdPos10
	%aux3358 = add i32 0, 1
	%aux3359 = add i32 %aux3357, %aux3358
	store i32 %aux3359, i32* @IdPos10
	br label %etiq1605
	
	etiq1605:
	;___Asignación___
	%aux3361 = load i32, i32* @Pivot10
	%aux3362 = add i32 0, 1
	%aux3363 = sub i32 %aux3361, %aux3362
	store i32 %aux3363, i32* @Pivot10
	br label %etiq1608
	
	etiq1599:
	;___Asignación___
	%aux3365 = load i32, i32* @IdPos10
	%aux3366 = add i32 0, 1
	%aux3367 = add i32 %aux3365, %aux3366
	store i32 %aux3367, i32* @IdPos10
	br label %etiq1608
	
	etiq1608:
	;___IfElse___
	%aux3369 = add i32 0, 100
	%aux3370 = load i32, i32* @Pivot10
	%aux3371 = sub i32 %aux3369, %aux3370
	%aux3372 = load i32, i32* @IdPos10
	%aux3373 = icmp eq i32 %aux3371, %aux3372
	br i1 %aux3373, label %etiq1609, label %etiq1610
	
	etiq1609:
	;___Asignación___
	%aux3375 = load i32, i32* @_Acum19
	%aux3376 = add i32 0, 50000
	%aux3377 = add i32 0, 49999
	%aux3378 = sub i32 %aux3376, %aux3377
	%aux3379 = add i32 %aux3375, %aux3378
	store i32 %aux3379, i32* @_Acum19
	br label %etiq1614
	
	etiq1614:
	;___Asignación___
	%aux3381 = load i32, i32* @IdPos10
	%aux3382 = add i32 0, 1
	%aux3383 = add i32 %aux3381, %aux3382
	store i32 %aux3383, i32* @IdPos10
	br label %etiq1616
	
	etiq1616:
	;___Asignación___
	%aux3385 = load i32, i32* @Pivot10
	%aux3386 = add i32 0, 1
	%aux3387 = sub i32 %aux3385, %aux3386
	store i32 %aux3387, i32* @Pivot10
	br label %etiq1619
	
	etiq1610:
	;___Asignación___
	%aux3389 = load i32, i32* @IdPos10
	%aux3390 = add i32 0, 1
	%aux3391 = add i32 %aux3389, %aux3390
	store i32 %aux3391, i32* @IdPos10
	br label %etiq1619
	
	etiq1619:
	;___IfElse___
	%aux3393 = add i32 0, 100
	%aux3394 = load i32, i32* @Pivot10
	%aux3395 = sub i32 %aux3393, %aux3394
	%aux3396 = load i32, i32* @IdPos10
	%aux3397 = icmp eq i32 %aux3395, %aux3396
	br i1 %aux3397, label %etiq1620, label %etiq1621
	
	etiq1620:
	;___Asignación___
	%aux3399 = load i32, i32* @_Acum19
	%aux3400 = add i32 0, 2
	%aux3401 = add i32 0, 1
	%aux3402 = sub i32 %aux3400, %aux3401
	%aux3403 = add i32 %aux3399, %aux3402
	store i32 %aux3403, i32* @_Acum19
	br label %etiq1625
	
	etiq1625:
	;___Asignación___
	%aux3405 = load i32, i32* @IdPos10
	%aux3406 = add i32 0, 1
	%aux3407 = add i32 %aux3405, %aux3406
	store i32 %aux3407, i32* @IdPos10
	br label %etiq1627
	
	etiq1627:
	;___Asignación___
	%aux3409 = load i32, i32* @Pivot10
	%aux3410 = add i32 0, 1
	%aux3411 = sub i32 %aux3409, %aux3410
	store i32 %aux3411, i32* @Pivot10
	br label %etiq1630
	
	etiq1621:
	;___Asignación___
	%aux3413 = load i32, i32* @IdPos10
	%aux3414 = add i32 0, 1
	%aux3415 = add i32 %aux3413, %aux3414
	store i32 %aux3415, i32* @IdPos10
	br label %etiq1630
	
	etiq1630:
	;___IfElse___
	%aux3417 = add i32 0, 100
	%aux3418 = load i32, i32* @Pivot10
	%aux3419 = sub i32 %aux3417, %aux3418
	%aux3420 = load i32, i32* @IdPos10
	%aux3421 = icmp eq i32 %aux3419, %aux3420
	br i1 %aux3421, label %etiq1631, label %etiq1632
	
	etiq1631:
	;___Asignación___
	%aux3423 = load i32, i32* @_Acum19
	%aux3424 = add i32 0, 1
	%aux3425 = add i32 0, 1
	%aux3426 = mul i32 %aux3424, %aux3425
	%aux3427 = add i32 %aux3423, %aux3426
	store i32 %aux3427, i32* @_Acum19
	br label %etiq1636
	
	etiq1636:
	;___Asignación___
	%aux3429 = load i32, i32* @IdPos10
	%aux3430 = add i32 0, 1
	%aux3431 = add i32 %aux3429, %aux3430
	store i32 %aux3431, i32* @IdPos10
	br label %etiq1638
	
	etiq1638:
	;___Asignación___
	%aux3433 = load i32, i32* @Pivot10
	%aux3434 = add i32 0, 1
	%aux3435 = sub i32 %aux3433, %aux3434
	store i32 %aux3435, i32* @Pivot10
	br label %etiq1641
	
	etiq1632:
	;___Asignación___
	%aux3437 = load i32, i32* @IdPos10
	%aux3438 = add i32 0, 1
	%aux3439 = add i32 %aux3437, %aux3438
	store i32 %aux3439, i32* @IdPos10
	br label %etiq1641
	
	etiq1641:
	;___IfElse___
	%aux3441 = add i32 0, 100
	%aux3442 = load i32, i32* @Pivot10
	%aux3443 = sub i32 %aux3441, %aux3442
	%aux3444 = load i32, i32* @IdPos10
	%aux3445 = icmp eq i32 %aux3443, %aux3444
	br i1 %aux3445, label %etiq1642, label %etiq1643
	
	etiq1642:
	;___Asignación___
	%aux3447 = load i32, i32* @_Acum19
	%aux3448 = add i32 0, 1
	%aux3449 = add i32 0, 0
	%aux3450 = add i32 %aux3448, %aux3449
	%aux3451 = add i32 %aux3447, %aux3450
	store i32 %aux3451, i32* @_Acum19
	br label %etiq1647
	
	etiq1647:
	;___Asignación___
	%aux3453 = load i32, i32* @IdPos10
	%aux3454 = add i32 0, 1
	%aux3455 = add i32 %aux3453, %aux3454
	store i32 %aux3455, i32* @IdPos10
	br label %etiq1649
	
	etiq1649:
	;___Asignación___
	%aux3457 = load i32, i32* @Pivot10
	%aux3458 = add i32 0, 1
	%aux3459 = sub i32 %aux3457, %aux3458
	store i32 %aux3459, i32* @Pivot10
	br label %etiq1652
	
	etiq1643:
	;___Asignación___
	%aux3461 = load i32, i32* @IdPos10
	%aux3462 = add i32 0, 1
	%aux3463 = add i32 %aux3461, %aux3462
	store i32 %aux3463, i32* @IdPos10
	br label %etiq1652
	
	etiq1652:
	;___IfElse___
	%aux3465 = add i32 0, 100
	%aux3466 = load i32, i32* @Pivot10
	%aux3467 = sub i32 %aux3465, %aux3466
	%aux3468 = load i32, i32* @IdPos10
	%aux3469 = icmp eq i32 %aux3467, %aux3468
	br i1 %aux3469, label %etiq1653, label %etiq1654
	
	etiq1653:
	;___Asignación___
	%aux3471 = load i32, i32* @_Acum19
	%aux3472 = load i32, i32* @_Acum18
	%aux3473 = add i32 %aux3471, %aux3472
	store i32 %aux3473, i32* @_Acum19
	br label %etiq1656
	
	etiq1656:
	;___Asignación___
	%aux3475 = load i32, i32* @IdPos10
	%aux3476 = add i32 0, 1
	%aux3477 = add i32 %aux3475, %aux3476
	store i32 %aux3477, i32* @IdPos10
	br label %etiq1658
	
	etiq1658:
	;___Asignación___
	%aux3479 = load i32, i32* @Pivot10
	%aux3480 = add i32 0, 1
	%aux3481 = sub i32 %aux3479, %aux3480
	store i32 %aux3481, i32* @Pivot10
	br label %etiq1661
	
	etiq1654:
	;___Asignación___
	%aux3483 = load i32, i32* @IdPos10
	%aux3484 = add i32 0, 1
	%aux3485 = add i32 %aux3483, %aux3484
	store i32 %aux3485, i32* @IdPos10
	br label %etiq1661
	
	etiq337:
	;___DisplayCadenaCaracteres___
	%aux3486 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1661
	
	etiq333:
	;___DisplayCadenaCaracteres___
	%aux3487 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1661
	
	etiq330:
	;___DisplayCadenaCaracteres___
	%aux3488 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1661
	
	etiq1661:
	;___Asignación___
	%aux3490 = load i32, i32* @_Acum19
	store i32 %aux3490, i32* @res
	br label %etiq1662
	
	etiq1662:
	;___DisplayCadenaCaracteres___
	%aux3491 = call i32 @puts(i8* getelementptr ([12 x i8], [12 x i8] * @str60, i32 0, i32 0))
	br label %etiq1663
	
	etiq1663:
	;___DisplayExpresion___
	%aux3493 = load i32, i32* @res
	%aux3492 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux3493)
	br label %etiq1664
	
	etiq1664:
	;___DisplayCadenaCaracteres___
	%aux3494 = call i32 @puts(i8* getelementptr ([29 x i8], [29 x i8] * @str61, i32 0, i32 0))
	br label %etiq1665
	
	etiq1665:
	;___DisplayCadenaCaracteres___
	%aux3495 = call i32 @puts(i8* getelementptr ([30 x i8], [30 x i8] * @str62, i32 0, i32 0))
	br label %etiq1666
	
	etiq1666:
	;___Asignación___
	%aux3497 = alloca double
	%aux3498 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux3497)
	%aux3499 = load double, double* %aux3497
	store double %aux3499, double* @peso
	br label %etiq1667
	
	etiq1667:
	;___DisplayCadenaCaracteres___
	%aux3500 = call i32 @puts(i8* getelementptr ([32 x i8], [32 x i8] * @str63, i32 0, i32 0))
	br label %etiq1668
	
	etiq1668:
	;___Asignación___
	%aux3502 = alloca double
	%aux3503 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux3502)
	%aux3504 = load double, double* %aux3502
	store double %aux3504, double* @altura
	br label %etiq1669
	
	etiq1669:
	;___Asignación___
	%aux3506 = add i1 0, 1
	store i1 %aux3506, i1* @aux2
	br label %etiq1670
	
	etiq1670:
	;___While___
	%aux3508 = load i1, i1* @aux2
	br i1 %aux3508, label %etiq1671, label %etiq1704
	
	etiq1671:
	;___DisplayCadenaCaracteres___
	%aux3509 = call i32 @puts(i8* getelementptr ([90 x i8], [90 x i8] * @str64, i32 0, i32 0))
	br label %etiq1673
	
	etiq1673:
	;___Asignación___
	%aux3511 = alloca i32
	%aux3512 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux3511)
	%aux3513 = load i32, i32* %aux3511
	store i32 %aux3513, i32* @res
	br label %etiq1674
	
	etiq1674:
	;___IfElse___
	%aux3515 = load i32, i32* @res
	%aux3516 = add i32 0, 1
	%aux3517 = icmp eq i32 %aux3515, %aux3516
	br i1 %aux3517, label %etiq1676, label %etiq1677
	
	etiq1676:
	;___DisplayCadenaCaracteres___
	%aux3518 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str65, i32 0, i32 0))
	br label %etiq1679
	
	etiq1679:
	;___DisplayExpresion___
	%aux3520 = load double, double* @peso
	%aux3521 = load double, double* @altura
	%aux3522 = fmul double %aux3520, %aux3521
	%aux3523 = load i32, i32* @edad
	%aux3524 = sitofp i32 %aux3523 to double
	%aux3525 = fmul double %aux3522, %aux3524
	%aux3519 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3525)
	br label %etiq1681
	
	etiq1681:
	;___Asignación___
	%aux3527 = load i1, i1* @aux2
	%aux3528 = xor i1 %aux3527, 1
	store i1 %aux3528, i1* @aux2
	br label %etiq1670
	
	etiq1677:
	;___IfElse___
	%aux3530 = load i32, i32* @res
	%aux3531 = add i32 0, 2
	%aux3532 = icmp eq i32 %aux3530, %aux3531
	br i1 %aux3532, label %etiq1683, label %etiq1684
	
	etiq1683:
	;___DisplayCadenaCaracteres___
	%aux3533 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str66, i32 0, i32 0))
	br label %etiq1686
	
	etiq1686:
	;___DisplayExpresion___
	%aux3535 = load double, double* @peso
	%aux3536 = load double, double* @altura
	%aux3537 = fdiv double %aux3535, %aux3536
	%aux3538 = load i32, i32* @edad
	%aux3539 = sitofp i32 %aux3538 to double
	%aux3540 = fdiv double %aux3537, %aux3539
	%aux3534 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3540)
	br label %etiq1688
	
	etiq1688:
	;___Asignación___
	%aux3542 = load i1, i1* @aux2
	%aux3543 = xor i1 %aux3542, 1
	store i1 %aux3543, i1* @aux2
	br label %etiq1670
	
	etiq1684:
	;___IfElse___
	%aux3545 = load i32, i32* @res
	%aux3546 = add i32 0, 3
	%aux3547 = icmp eq i32 %aux3545, %aux3546
	br i1 %aux3547, label %etiq1690, label %etiq1691
	
	etiq1690:
	;___DisplayCadenaCaracteres___
	%aux3548 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str67, i32 0, i32 0))
	br label %etiq1693
	
	etiq1693:
	;___DisplayExpresion___
	%aux3550 = load double, double* @peso
	%aux3551 = load double, double* @altura
	%aux3552 = fadd double %aux3550, %aux3551
	%aux3553 = load i32, i32* @edad
	%aux3554 = sitofp i32 %aux3553 to double
	%aux3555 = fadd double %aux3552, %aux3554
	%aux3549 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3555)
	br label %etiq1695
	
	etiq1695:
	;___Asignación___
	%aux3557 = load i1, i1* @aux2
	%aux3558 = xor i1 %aux3557, 1
	store i1 %aux3558, i1* @aux2
	br label %etiq1670
	
	etiq1691:
	;___IfElse___
	%aux3560 = load i32, i32* @res
	%aux3561 = add i32 0, 4
	%aux3562 = icmp eq i32 %aux3560, %aux3561
	br i1 %aux3562, label %etiq1697, label %etiq1698
	
	etiq1697:
	;___DisplayCadenaCaracteres___
	%aux3563 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str68, i32 0, i32 0))
	br label %etiq1700
	
	etiq1700:
	;___DisplayExpresion___
	%aux3565 = load double, double* @peso
	%aux3566 = load double, double* @altura
	%aux3567 = fsub double %aux3565, %aux3566
	%aux3568 = load i32, i32* @edad
	%aux3569 = sitofp i32 %aux3568 to double
	%aux3570 = fsub double %aux3567, %aux3569
	%aux3564 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3570)
	br label %etiq1702
	
	etiq1702:
	;___Asignación___
	%aux3572 = load i1, i1* @aux2
	%aux3573 = xor i1 %aux3572, 1
	store i1 %aux3573, i1* @aux2
	br label %etiq1670
	
	etiq1698:
	;___DisplayCadenaCaracteres___
	%aux3574 = call i32 @puts(i8* getelementptr ([60 x i8], [60 x i8] * @str69, i32 0, i32 0))
	br label %etiq1670
	
	etiq1704:
	;___DisplayCadenaCaracteres___
	%aux3575 = call i32 @puts(i8* getelementptr ([46 x i8], [46 x i8] * @str70, i32 0, i32 0))
	br label %etiq1705
	
	etiq1705:
	;___Asignación___
	%aux3577 = alloca i32
	%aux3578 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux3577)
	%aux3579 = load i32, i32* %aux3577
	%aux3580 = trunc i32 %aux3579 to i1
	store i1 %aux3580, i1* @aux
	br label %etiq2
	
	etiq1707:
	ret i32 0
}

