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
@str11 = private constant [20 x i8] c"\0AIngrese su edad: \0A\00"
@str12 = private constant [19 x i8] c"\0AUsted es un nino\0A\00"
@str13 = private constant [25 x i8] c"\0AUsted es un adolecente\0A\00"
@str14 = private constant [21 x i8] c"\0AUsted es un adulto\0A\00"
@str15 = private constant [26 x i8] c"\0AUsted es un senor mayor\0A\00"
@str16 = private constant [17 x i8] c"\0ASu edad es par\0A\00"
@str17 = private constant [19 x i8] c"\0ASu edad es impar\0A\00"
@str61 = private constant [12 x i8] c"\0ALe faltan\0A\00"
@str62 = private constant [28 x i8] c"\0Aanos para cumplir los 100\0A\00"
@str63 = private constant [30 x i8] c"\0AIngrese su peso aproximado:\0A\00"
@str64 = private constant [32 x i8] c"\0AIngrese su altura aproximada:\0A\00"
@str65 = private constant [90 x i8] c"\0AElija una de las siguientes opciones:     Producto=1    Cociente=2    Suma=3    Resta=4\0A\00"
@str66 = private constant [24 x i8] c"\0APeso * Altura * Edad:\0A\00"
@str67 = private constant [24 x i8] c"\0APeso / Altura / Edad:\0A\00"
@str68 = private constant [24 x i8] c"\0APeso + Altura + Edad:\0A\00"
@str69 = private constant [24 x i8] c"\0APeso - Altura - Edad:\0A\00"
@str70 = private constant [60 x i8] c"\0ALa opcion elegida no es aceptada, intentelo nuevamente...\0A\00"
@str71 = private constant [46 x i8] c"\0ADesea comenzar de nuevo?      1=Si     0=No\0A\00"
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
	br i1 %aux6, label %etiq4, label %etiq1806
	
	etiq4:
	;___DisplayCadenaCaracteres___
	%aux7 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str11, i32 0, i32 0))
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
	%aux16 = call i32 @puts(i8* getelementptr ([19 x i8], [19 x i8] * @str12, i32 0, i32 0))
	br label %etiq20
	
	etiq10:
	;___IfElse___
	%aux18 = load i32, i32* @edad
	%aux19 = add i32 0, 25
	%aux20 = icmp sle i32 %aux18, %aux19
	br i1 %aux20, label %etiq13, label %etiq14
	
	etiq13:
	;___DisplayCadenaCaracteres___
	%aux21 = call i32 @puts(i8* getelementptr ([25 x i8], [25 x i8] * @str13, i32 0, i32 0))
	br label %etiq20
	
	etiq14:
	;___IfElse___
	%aux23 = load i32, i32* @edad
	%aux24 = add i32 0, 65
	%aux25 = icmp sle i32 %aux23, %aux24
	br i1 %aux25, label %etiq17, label %etiq18
	
	etiq17:
	;___DisplayCadenaCaracteres___
	%aux26 = call i32 @puts(i8* getelementptr ([21 x i8], [21 x i8] * @str14, i32 0, i32 0))
	br label %etiq20
	
	etiq18:
	;___DisplayCadenaCaracteres___
	%aux27 = call i32 @puts(i8* getelementptr ([26 x i8], [26 x i8] * @str15, i32 0, i32 0))
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
	%aux45 = call i32 @puts(i8* getelementptr ([17 x i8], [17 x i8] * @str16, i32 0, i32 0))
	br label %etiq33
	
	etiq31:
	;___DisplayCadenaCaracteres___
	%aux46 = call i32 @puts(i8* getelementptr ([19 x i8], [19 x i8] * @str17, i32 0, i32 0))
	br label %etiq33
	
	etiq33:
	;___IfSimple___
	%aux48 = load i32, i32* @edad
	%aux49 = add i32 0, 100
	%aux50 = icmp sge i32 %aux48, %aux49
	%aux51 = xor i1 %aux50, 1
	br i1 %aux51, label %etiq35, label %etiq1764
	
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
	store i32 %aux57, i32* @_Acum17
	br label %etiq38
	
	etiq38:
	;___Asignacion___
	%aux59 = add i32 0, 0
	store i32 %aux59, i32* @_Acum18
	br label %etiq39
	
	etiq39:
	;___Asignacion___
	%aux61 = add i32 0, 1
	store i32 %aux61, i32* @Pivot9
	br label %etiq40
	
	etiq40:
	;___IfElse___
	%aux63 = load i32, i32* @Pivot9
	%aux64 = add i32 0, 1
	%aux65 = icmp sge i32 %aux63, %aux64
	br i1 %aux65, label %etiq42, label %etiq43
	
	etiq42:
	;___IfElse___
	%aux67 = add i32 0, 2
	%aux68 = load i32, i32* @Pivot9
	%aux69 = icmp sge i32 %aux67, %aux68
	br i1 %aux69, label %etiq45, label %etiq46
	
	etiq45:
	;___IfElse___
	%aux71 = add i32 0, 2
	%aux72 = add i32 0, 0
	%aux73 = icmp sgt i32 %aux71, %aux72
	br i1 %aux73, label %etiq49, label %etiq50
	
	etiq49:
	;___IfElse___
	%aux75 = add i32 0, 2
	%aux76 = load i32, i32* @Pivot9
	%aux77 = sub i32 %aux75, %aux76
	%aux78 = load i32, i32* @IdPos9
	%aux79 = icmp eq i32 %aux77, %aux78
	br i1 %aux79, label %etiq52, label %etiq53
	
	etiq52:
	;___Asignacion___
	%aux81 = load i32, i32* @_Acum17
	%aux82 = add i32 0, 2
	%aux83 = add i32 %aux81, %aux82
	store i32 %aux83, i32* @_Acum17
	br label %etiq56
	
	etiq56:
	;___Asignacion___
	%aux85 = load i32, i32* @IdPos9
	%aux86 = add i32 0, 1
	%aux87 = add i32 %aux85, %aux86
	store i32 %aux87, i32* @IdPos9
	br label %etiq58
	
	etiq58:
	;___Asignacion___
	%aux89 = load i32, i32* @Pivot9
	%aux90 = add i32 0, 1
	%aux91 = sub i32 %aux89, %aux90
	store i32 %aux91, i32* @Pivot9
	br label %etiq61
	
	etiq53:
	;___Asignacion___
	%aux93 = load i32, i32* @IdPos9
	%aux94 = add i32 0, 1
	%aux95 = add i32 %aux93, %aux94
	store i32 %aux95, i32* @IdPos9
	br label %etiq61
	
	etiq61:
	;___IfElse___
	%aux97 = add i32 0, 2
	%aux98 = load i32, i32* @Pivot9
	%aux99 = sub i32 %aux97, %aux98
	%aux100 = load i32, i32* @IdPos9
	%aux101 = icmp eq i32 %aux99, %aux100
	br i1 %aux101, label %etiq62, label %etiq63
	
	etiq62:
	;___Asignacion___
	%aux103 = load i32, i32* @_Acum17
	%aux104 = add i32 0, 1
	%aux105 = add i32 %aux103, %aux104
	store i32 %aux105, i32* @_Acum17
	br label %etiq66
	
	etiq66:
	;___Asignacion___
	%aux107 = load i32, i32* @IdPos9
	%aux108 = add i32 0, 1
	%aux109 = add i32 %aux107, %aux108
	store i32 %aux109, i32* @IdPos9
	br label %etiq68
	
	etiq68:
	;___Asignacion___
	%aux111 = load i32, i32* @Pivot9
	%aux112 = add i32 0, 1
	%aux113 = sub i32 %aux111, %aux112
	store i32 %aux113, i32* @Pivot9
	br label %etiq71
	
	etiq63:
	;___Asignacion___
	%aux115 = load i32, i32* @IdPos9
	%aux116 = add i32 0, 1
	%aux117 = add i32 %aux115, %aux116
	store i32 %aux117, i32* @IdPos9
	br label %etiq71
	
	etiq50:
	;___DisplayCadenaCaracteres___
	%aux118 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq71
	
	etiq46:
	;___DisplayCadenaCaracteres___
	%aux119 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq71
	
	etiq43:
	;___DisplayCadenaCaracteres___
	%aux120 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq71
	
	etiq71:
	;___Asignacion___
	%aux122 = load i32, i32* @_Acum17
	store i32 %aux122, i32* @_Acum18
	br label %etiq72
	
	etiq72:
	;___Asignacion___
	%aux124 = add i32 0, 1
	store i32 %aux124, i32* @Pivot9
	br label %etiq73
	
	etiq73:
	;___Asignacion___
	%aux126 = add i32 0, 0
	store i32 %aux126, i32* @IdPos9
	br label %etiq74
	
	etiq74:
	;___Asignacion___
	%aux128 = add i32 0, 0
	store i32 %aux128, i32* @_Acum13
	br label %etiq75
	
	etiq75:
	;___Asignacion___
	%aux130 = add i32 0, 0
	store i32 %aux130, i32* @_Acum14
	br label %etiq76
	
	etiq76:
	;___Asignacion___
	%aux132 = add i32 0, 2
	store i32 %aux132, i32* @Pivot7
	br label %etiq77
	
	etiq77:
	;___IfElse___
	%aux134 = load i32, i32* @Pivot7
	%aux135 = add i32 0, 1
	%aux136 = icmp sge i32 %aux134, %aux135
	br i1 %aux136, label %etiq79, label %etiq80
	
	etiq79:
	;___IfElse___
	%aux138 = add i32 0, 2
	%aux139 = load i32, i32* @Pivot7
	%aux140 = icmp sge i32 %aux138, %aux139
	br i1 %aux140, label %etiq82, label %etiq83
	
	etiq82:
	;___IfElse___
	%aux142 = add i32 0, 2
	%aux143 = add i32 0, 0
	%aux144 = icmp sgt i32 %aux142, %aux143
	br i1 %aux144, label %etiq86, label %etiq87
	
	etiq86:
	;___IfElse___
	%aux146 = add i32 0, 2
	%aux147 = load i32, i32* @Pivot7
	%aux148 = sub i32 %aux146, %aux147
	%aux149 = load i32, i32* @IdPos7
	%aux150 = icmp eq i32 %aux148, %aux149
	br i1 %aux150, label %etiq89, label %etiq90
	
	etiq89:
	;___Asignacion___
	%aux152 = load i32, i32* @_Acum13
	%aux153 = load i32, i32* @edad
	%aux154 = add i32 0, 0
	%aux155 = mul i32 %aux153, %aux154
	%aux156 = add i32 %aux152, %aux155
	store i32 %aux156, i32* @_Acum13
	br label %etiq94
	
	etiq94:
	;___Asignacion___
	%aux158 = load i32, i32* @IdPos7
	%aux159 = add i32 0, 1
	%aux160 = add i32 %aux158, %aux159
	store i32 %aux160, i32* @IdPos7
	br label %etiq96
	
	etiq96:
	;___Asignacion___
	%aux162 = load i32, i32* @Pivot7
	%aux163 = add i32 0, 1
	%aux164 = sub i32 %aux162, %aux163
	store i32 %aux164, i32* @Pivot7
	br label %etiq99
	
	etiq90:
	;___Asignacion___
	%aux166 = load i32, i32* @IdPos7
	%aux167 = add i32 0, 1
	%aux168 = add i32 %aux166, %aux167
	store i32 %aux168, i32* @IdPos7
	br label %etiq99
	
	etiq99:
	;___IfElse___
	%aux170 = add i32 0, 2
	%aux171 = load i32, i32* @Pivot7
	%aux172 = sub i32 %aux170, %aux171
	%aux173 = load i32, i32* @IdPos7
	%aux174 = icmp eq i32 %aux172, %aux173
	br i1 %aux174, label %etiq100, label %etiq101
	
	etiq100:
	;___Asignacion___
	%aux176 = load i32, i32* @_Acum13
	%aux177 = add i32 0, 2
	%aux178 = add i32 %aux176, %aux177
	store i32 %aux178, i32* @_Acum13
	br label %etiq104
	
	etiq104:
	;___Asignacion___
	%aux180 = load i32, i32* @IdPos7
	%aux181 = add i32 0, 1
	%aux182 = add i32 %aux180, %aux181
	store i32 %aux182, i32* @IdPos7
	br label %etiq106
	
	etiq106:
	;___Asignacion___
	%aux184 = load i32, i32* @Pivot7
	%aux185 = add i32 0, 1
	%aux186 = sub i32 %aux184, %aux185
	store i32 %aux186, i32* @Pivot7
	br label %etiq109
	
	etiq101:
	;___Asignacion___
	%aux188 = load i32, i32* @IdPos7
	%aux189 = add i32 0, 1
	%aux190 = add i32 %aux188, %aux189
	store i32 %aux190, i32* @IdPos7
	br label %etiq109
	
	etiq87:
	;___DisplayCadenaCaracteres___
	%aux191 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq109
	
	etiq83:
	;___DisplayCadenaCaracteres___
	%aux192 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq109
	
	etiq80:
	;___DisplayCadenaCaracteres___
	%aux193 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq109
	
	etiq109:
	;___Asignacion___
	%aux195 = load i32, i32* @_Acum13
	store i32 %aux195, i32* @_Acum14
	br label %etiq110
	
	etiq110:
	;___Asignacion___
	%aux197 = add i32 0, 2
	store i32 %aux197, i32* @Pivot7
	br label %etiq111
	
	etiq111:
	;___Asignacion___
	%aux199 = add i32 0, 0
	store i32 %aux199, i32* @IdPos7
	br label %etiq112
	
	etiq112:
	;___Asignacion___
	%aux201 = add i32 0, 0
	store i32 %aux201, i32* @_Acum9
	br label %etiq113
	
	etiq113:
	;___Asignacion___
	%aux203 = add i32 0, 0
	store i32 %aux203, i32* @_Acum10
	br label %etiq114
	
	etiq114:
	;___Asignacion___
	%aux205 = add i32 0, 4
	store i32 %aux205, i32* @Pivot5
	br label %etiq115
	
	etiq115:
	;___IfElse___
	%aux207 = load i32, i32* @Pivot5
	%aux208 = add i32 0, 1
	%aux209 = icmp sge i32 %aux207, %aux208
	br i1 %aux209, label %etiq117, label %etiq118
	
	etiq117:
	;___IfElse___
	%aux211 = add i32 0, 4
	%aux212 = load i32, i32* @Pivot5
	%aux213 = icmp sge i32 %aux211, %aux212
	br i1 %aux213, label %etiq120, label %etiq121
	
	etiq120:
	;___IfElse___
	%aux215 = add i32 0, 4
	%aux216 = add i32 0, 0
	%aux217 = icmp sgt i32 %aux215, %aux216
	br i1 %aux217, label %etiq124, label %etiq125
	
	etiq124:
	;___IfElse___
	%aux219 = add i32 0, 4
	%aux220 = load i32, i32* @Pivot5
	%aux221 = sub i32 %aux219, %aux220
	%aux222 = load i32, i32* @IdPos5
	%aux223 = icmp eq i32 %aux221, %aux222
	br i1 %aux223, label %etiq127, label %etiq128
	
	etiq127:
	;___Asignacion___
	%aux225 = load i32, i32* @_Acum9
	%aux226 = add i32 0, 1
	%aux227 = add i32 %aux225, %aux226
	store i32 %aux227, i32* @_Acum9
	br label %etiq131
	
	etiq131:
	;___Asignacion___
	%aux229 = load i32, i32* @IdPos5
	%aux230 = add i32 0, 1
	%aux231 = add i32 %aux229, %aux230
	store i32 %aux231, i32* @IdPos5
	br label %etiq133
	
	etiq133:
	;___Asignacion___
	%aux233 = load i32, i32* @Pivot5
	%aux234 = add i32 0, 1
	%aux235 = sub i32 %aux233, %aux234
	store i32 %aux235, i32* @Pivot5
	br label %etiq136
	
	etiq128:
	;___Asignacion___
	%aux237 = load i32, i32* @IdPos5
	%aux238 = add i32 0, 1
	%aux239 = add i32 %aux237, %aux238
	store i32 %aux239, i32* @IdPos5
	br label %etiq136
	
	etiq136:
	;___IfElse___
	%aux241 = add i32 0, 4
	%aux242 = load i32, i32* @Pivot5
	%aux243 = sub i32 %aux241, %aux242
	%aux244 = load i32, i32* @IdPos5
	%aux245 = icmp eq i32 %aux243, %aux244
	br i1 %aux245, label %etiq137, label %etiq138
	
	etiq137:
	;___Asignacion___
	%aux247 = load i32, i32* @_Acum9
	%aux248 = add i32 0, 2
	%aux249 = add i32 %aux247, %aux248
	store i32 %aux249, i32* @_Acum9
	br label %etiq141
	
	etiq141:
	;___Asignacion___
	%aux251 = load i32, i32* @IdPos5
	%aux252 = add i32 0, 1
	%aux253 = add i32 %aux251, %aux252
	store i32 %aux253, i32* @IdPos5
	br label %etiq143
	
	etiq143:
	;___Asignacion___
	%aux255 = load i32, i32* @Pivot5
	%aux256 = add i32 0, 1
	%aux257 = sub i32 %aux255, %aux256
	store i32 %aux257, i32* @Pivot5
	br label %etiq146
	
	etiq138:
	;___Asignacion___
	%aux259 = load i32, i32* @IdPos5
	%aux260 = add i32 0, 1
	%aux261 = add i32 %aux259, %aux260
	store i32 %aux261, i32* @IdPos5
	br label %etiq146
	
	etiq146:
	;___IfElse___
	%aux263 = add i32 0, 4
	%aux264 = load i32, i32* @Pivot5
	%aux265 = sub i32 %aux263, %aux264
	%aux266 = load i32, i32* @IdPos5
	%aux267 = icmp eq i32 %aux265, %aux266
	br i1 %aux267, label %etiq147, label %etiq148
	
	etiq147:
	;___Asignacion___
	%aux269 = load i32, i32* @_Acum9
	%aux270 = add i32 0, 3
	%aux271 = add i32 %aux269, %aux270
	store i32 %aux271, i32* @_Acum9
	br label %etiq151
	
	etiq151:
	;___Asignacion___
	%aux273 = load i32, i32* @IdPos5
	%aux274 = add i32 0, 1
	%aux275 = add i32 %aux273, %aux274
	store i32 %aux275, i32* @IdPos5
	br label %etiq153
	
	etiq153:
	;___Asignacion___
	%aux277 = load i32, i32* @Pivot5
	%aux278 = add i32 0, 1
	%aux279 = sub i32 %aux277, %aux278
	store i32 %aux279, i32* @Pivot5
	br label %etiq166
	
	etiq148:
	;___Asignacion___
	%aux281 = load i32, i32* @IdPos5
	%aux282 = add i32 0, 1
	%aux283 = add i32 %aux281, %aux282
	store i32 %aux283, i32* @IdPos5
	br label %etiq156
	
	etiq156:
	;___IfElse___
	%aux285 = add i32 0, 4
	%aux286 = load i32, i32* @Pivot5
	%aux287 = sub i32 %aux285, %aux286
	%aux288 = load i32, i32* @IdPos5
	%aux289 = icmp eq i32 %aux287, %aux288
	br i1 %aux289, label %etiq157, label %etiq158
	
	etiq157:
	;___Asignacion___
	%aux291 = load i32, i32* @_Acum9
	%aux292 = add i32 0, 4
	%aux293 = add i32 %aux291, %aux292
	store i32 %aux293, i32* @_Acum9
	br label %etiq161
	
	etiq161:
	;___Asignacion___
	%aux295 = load i32, i32* @IdPos5
	%aux296 = add i32 0, 1
	%aux297 = add i32 %aux295, %aux296
	store i32 %aux297, i32* @IdPos5
	br label %etiq163
	
	etiq163:
	;___Asignacion___
	%aux299 = load i32, i32* @Pivot5
	%aux300 = add i32 0, 1
	%aux301 = sub i32 %aux299, %aux300
	store i32 %aux301, i32* @Pivot5
	br label %etiq166
	
	etiq158:
	;___Asignacion___
	%aux303 = load i32, i32* @IdPos5
	%aux304 = add i32 0, 1
	%aux305 = add i32 %aux303, %aux304
	store i32 %aux305, i32* @IdPos5
	br label %etiq166
	
	etiq125:
	;___DisplayCadenaCaracteres___
	%aux306 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq166
	
	etiq121:
	;___DisplayCadenaCaracteres___
	%aux307 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq166
	
	etiq118:
	;___DisplayCadenaCaracteres___
	%aux308 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq166
	
	etiq166:
	;___Asignacion___
	%aux310 = load i32, i32* @_Acum9
	store i32 %aux310, i32* @_Acum10
	br label %etiq167
	
	etiq167:
	;___Asignacion___
	%aux312 = add i32 0, 4
	store i32 %aux312, i32* @Pivot5
	br label %etiq168
	
	etiq168:
	;___Asignacion___
	%aux314 = add i32 0, 0
	store i32 %aux314, i32* @IdPos5
	br label %etiq169
	
	etiq169:
	;___Asignacion___
	%aux316 = add i32 0, 0
	store i32 %aux316, i32* @_Acum7
	br label %etiq170
	
	etiq170:
	;___Asignacion___
	%aux318 = add i32 0, 0
	store i32 %aux318, i32* @_Acum8
	br label %etiq171
	
	etiq171:
	;___Asignacion___
	%aux320 = add i32 0, 3
	store i32 %aux320, i32* @Pivot4
	br label %etiq172
	
	etiq172:
	;___IfElse___
	%aux322 = load i32, i32* @Pivot4
	%aux323 = add i32 0, 1
	%aux324 = icmp sge i32 %aux322, %aux323
	br i1 %aux324, label %etiq174, label %etiq175
	
	etiq174:
	;___IfElse___
	%aux326 = add i32 0, 3
	%aux327 = load i32, i32* @Pivot4
	%aux328 = icmp sge i32 %aux326, %aux327
	br i1 %aux328, label %etiq177, label %etiq178
	
	etiq177:
	;___IfElse___
	%aux330 = add i32 0, 3
	%aux331 = add i32 0, 0
	%aux332 = icmp sgt i32 %aux330, %aux331
	br i1 %aux332, label %etiq181, label %etiq182
	
	etiq181:
	;___IfElse___
	%aux334 = add i32 0, 3
	%aux335 = load i32, i32* @Pivot4
	%aux336 = sub i32 %aux334, %aux335
	%aux337 = load i32, i32* @IdPos4
	%aux338 = icmp eq i32 %aux336, %aux337
	br i1 %aux338, label %etiq184, label %etiq185
	
	etiq184:
	;___Asignacion___
	%aux340 = load i32, i32* @_Acum7
	%aux341 = add i32 0, 1
	%aux342 = add i32 %aux340, %aux341
	store i32 %aux342, i32* @_Acum7
	br label %etiq188
	
	etiq188:
	;___Asignacion___
	%aux344 = load i32, i32* @IdPos4
	%aux345 = add i32 0, 1
	%aux346 = add i32 %aux344, %aux345
	store i32 %aux346, i32* @IdPos4
	br label %etiq190
	
	etiq190:
	;___Asignacion___
	%aux348 = load i32, i32* @Pivot4
	%aux349 = add i32 0, 1
	%aux350 = sub i32 %aux348, %aux349
	store i32 %aux350, i32* @Pivot4
	br label %etiq193
	
	etiq185:
	;___Asignacion___
	%aux352 = load i32, i32* @IdPos4
	%aux353 = add i32 0, 1
	%aux354 = add i32 %aux352, %aux353
	store i32 %aux354, i32* @IdPos4
	br label %etiq193
	
	etiq193:
	;___IfElse___
	%aux356 = add i32 0, 3
	%aux357 = load i32, i32* @Pivot4
	%aux358 = sub i32 %aux356, %aux357
	%aux359 = load i32, i32* @IdPos4
	%aux360 = icmp eq i32 %aux358, %aux359
	br i1 %aux360, label %etiq194, label %etiq195
	
	etiq194:
	;___Asignacion___
	%aux362 = load i32, i32* @_Acum7
	%aux363 = add i32 0, 2
	%aux364 = add i32 %aux362, %aux363
	store i32 %aux364, i32* @_Acum7
	br label %etiq198
	
	etiq198:
	;___Asignacion___
	%aux366 = load i32, i32* @IdPos4
	%aux367 = add i32 0, 1
	%aux368 = add i32 %aux366, %aux367
	store i32 %aux368, i32* @IdPos4
	br label %etiq200
	
	etiq200:
	;___Asignacion___
	%aux370 = load i32, i32* @Pivot4
	%aux371 = add i32 0, 1
	%aux372 = sub i32 %aux370, %aux371
	store i32 %aux372, i32* @Pivot4
	br label %etiq203
	
	etiq195:
	;___Asignacion___
	%aux374 = load i32, i32* @IdPos4
	%aux375 = add i32 0, 1
	%aux376 = add i32 %aux374, %aux375
	store i32 %aux376, i32* @IdPos4
	br label %etiq203
	
	etiq203:
	;___IfElse___
	%aux378 = add i32 0, 3
	%aux379 = load i32, i32* @Pivot4
	%aux380 = sub i32 %aux378, %aux379
	%aux381 = load i32, i32* @IdPos4
	%aux382 = icmp eq i32 %aux380, %aux381
	br i1 %aux382, label %etiq204, label %etiq205
	
	etiq204:
	;___Asignacion___
	%aux384 = load i32, i32* @_Acum7
	%aux385 = add i32 0, 3
	%aux386 = add i32 %aux384, %aux385
	store i32 %aux386, i32* @_Acum7
	br label %etiq208
	
	etiq208:
	;___Asignacion___
	%aux388 = load i32, i32* @IdPos4
	%aux389 = add i32 0, 1
	%aux390 = add i32 %aux388, %aux389
	store i32 %aux390, i32* @IdPos4
	br label %etiq210
	
	etiq210:
	;___Asignacion___
	%aux392 = load i32, i32* @Pivot4
	%aux393 = add i32 0, 1
	%aux394 = sub i32 %aux392, %aux393
	store i32 %aux394, i32* @Pivot4
	br label %etiq213
	
	etiq205:
	;___Asignacion___
	%aux396 = load i32, i32* @IdPos4
	%aux397 = add i32 0, 1
	%aux398 = add i32 %aux396, %aux397
	store i32 %aux398, i32* @IdPos4
	br label %etiq213
	
	etiq182:
	;___DisplayCadenaCaracteres___
	%aux399 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq213
	
	etiq178:
	;___DisplayCadenaCaracteres___
	%aux400 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq213
	
	etiq175:
	;___DisplayCadenaCaracteres___
	%aux401 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq213
	
	etiq213:
	;___Asignacion___
	%aux403 = load i32, i32* @_Acum7
	store i32 %aux403, i32* @_Acum8
	br label %etiq214
	
	etiq214:
	;___Asignacion___
	%aux405 = add i32 0, 3
	store i32 %aux405, i32* @Pivot4
	br label %etiq215
	
	etiq215:
	;___Asignacion___
	%aux407 = add i32 0, 0
	store i32 %aux407, i32* @IdPos4
	br label %etiq216
	
	etiq216:
	;___Asignacion___
	%aux409 = add i32 0, 0
	store i32 %aux409, i32* @_Acum3
	br label %etiq217
	
	etiq217:
	;___Asignacion___
	%aux411 = add i32 0, 0
	store i32 %aux411, i32* @_Acum4
	br label %etiq218
	
	etiq218:
	;___Asignacion___
	%aux413 = add i32 0, 2
	store i32 %aux413, i32* @Pivot2
	br label %etiq219
	
	etiq219:
	;___IfElse___
	%aux415 = load i32, i32* @Pivot2
	%aux416 = add i32 0, 1
	%aux417 = icmp sge i32 %aux415, %aux416
	br i1 %aux417, label %etiq221, label %etiq222
	
	etiq221:
	;___IfElse___
	%aux419 = add i32 0, 2
	%aux420 = load i32, i32* @Pivot2
	%aux421 = icmp sge i32 %aux419, %aux420
	br i1 %aux421, label %etiq224, label %etiq225
	
	etiq224:
	;___IfElse___
	%aux423 = add i32 0, 2
	%aux424 = add i32 0, 0
	%aux425 = icmp sgt i32 %aux423, %aux424
	br i1 %aux425, label %etiq228, label %etiq229
	
	etiq228:
	;___IfElse___
	%aux427 = add i32 0, 2
	%aux428 = load i32, i32* @Pivot2
	%aux429 = sub i32 %aux427, %aux428
	%aux430 = load i32, i32* @IdPos2
	%aux431 = icmp eq i32 %aux429, %aux430
	br i1 %aux431, label %etiq231, label %etiq232
	
	etiq231:
	;___Asignacion___
	%aux433 = load i32, i32* @_Acum3
	%aux434 = add i32 0, 1
	%aux435 = add i32 %aux433, %aux434
	store i32 %aux435, i32* @_Acum3
	br label %etiq235
	
	etiq235:
	;___Asignacion___
	%aux437 = load i32, i32* @IdPos2
	%aux438 = add i32 0, 1
	%aux439 = add i32 %aux437, %aux438
	store i32 %aux439, i32* @IdPos2
	br label %etiq237
	
	etiq237:
	;___Asignacion___
	%aux441 = load i32, i32* @Pivot2
	%aux442 = add i32 0, 1
	%aux443 = sub i32 %aux441, %aux442
	store i32 %aux443, i32* @Pivot2
	br label %etiq240
	
	etiq232:
	;___Asignacion___
	%aux445 = load i32, i32* @IdPos2
	%aux446 = add i32 0, 1
	%aux447 = add i32 %aux445, %aux446
	store i32 %aux447, i32* @IdPos2
	br label %etiq240
	
	etiq240:
	;___IfElse___
	%aux449 = add i32 0, 2
	%aux450 = load i32, i32* @Pivot2
	%aux451 = sub i32 %aux449, %aux450
	%aux452 = load i32, i32* @IdPos2
	%aux453 = icmp eq i32 %aux451, %aux452
	br i1 %aux453, label %etiq241, label %etiq242
	
	etiq241:
	;___Asignacion___
	%aux455 = load i32, i32* @_Acum3
	%aux456 = add i32 0, 2
	%aux457 = add i32 %aux455, %aux456
	store i32 %aux457, i32* @_Acum3
	br label %etiq245
	
	etiq245:
	;___Asignacion___
	%aux459 = load i32, i32* @IdPos2
	%aux460 = add i32 0, 1
	%aux461 = add i32 %aux459, %aux460
	store i32 %aux461, i32* @IdPos2
	br label %etiq247
	
	etiq247:
	;___Asignacion___
	%aux463 = load i32, i32* @Pivot2
	%aux464 = add i32 0, 1
	%aux465 = sub i32 %aux463, %aux464
	store i32 %aux465, i32* @Pivot2
	br label %etiq250
	
	etiq242:
	;___Asignacion___
	%aux467 = load i32, i32* @IdPos2
	%aux468 = add i32 0, 1
	%aux469 = add i32 %aux467, %aux468
	store i32 %aux469, i32* @IdPos2
	br label %etiq250
	
	etiq229:
	;___DisplayCadenaCaracteres___
	%aux470 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq250
	
	etiq225:
	;___DisplayCadenaCaracteres___
	%aux471 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq250
	
	etiq222:
	;___DisplayCadenaCaracteres___
	%aux472 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq250
	
	etiq250:
	;___Asignacion___
	%aux474 = load i32, i32* @_Acum3
	store i32 %aux474, i32* @_Acum4
	br label %etiq251
	
	etiq251:
	;___Asignacion___
	%aux476 = add i32 0, 2
	store i32 %aux476, i32* @Pivot2
	br label %etiq252
	
	etiq252:
	;___Asignacion___
	%aux478 = add i32 0, 0
	store i32 %aux478, i32* @IdPos2
	br label %etiq253
	
	etiq253:
	;___Asignacion___
	%aux480 = add i32 0, 0
	store i32 %aux480, i32* @_Acum1
	br label %etiq254
	
	etiq254:
	;___Asignacion___
	%aux482 = add i32 0, 0
	store i32 %aux482, i32* @_Acum2
	br label %etiq255
	
	etiq255:
	;___Asignacion___
	%aux484 = add i32 0, 1
	store i32 %aux484, i32* @Pivot1
	br label %etiq256
	
	etiq256:
	;___IfElse___
	%aux486 = load i32, i32* @Pivot1
	%aux487 = add i32 0, 1
	%aux488 = icmp sge i32 %aux486, %aux487
	br i1 %aux488, label %etiq258, label %etiq259
	
	etiq258:
	;___IfElse___
	%aux490 = add i32 0, 1
	%aux491 = load i32, i32* @Pivot1
	%aux492 = icmp sge i32 %aux490, %aux491
	br i1 %aux492, label %etiq261, label %etiq262
	
	etiq261:
	;___IfElse___
	%aux494 = add i32 0, 1
	%aux495 = add i32 0, 0
	%aux496 = icmp sgt i32 %aux494, %aux495
	br i1 %aux496, label %etiq265, label %etiq266
	
	etiq265:
	;___IfElse___
	%aux498 = add i32 0, 1
	%aux499 = load i32, i32* @Pivot1
	%aux500 = sub i32 %aux498, %aux499
	%aux501 = load i32, i32* @IdPos1
	%aux502 = icmp eq i32 %aux500, %aux501
	br i1 %aux502, label %etiq268, label %etiq269
	
	etiq268:
	;___Asignacion___
	%aux504 = load i32, i32* @_Acum1
	%aux505 = add i32 0, 1
	%aux506 = add i32 %aux504, %aux505
	store i32 %aux506, i32* @_Acum1
	br label %etiq272
	
	etiq272:
	;___Asignacion___
	%aux508 = load i32, i32* @IdPos1
	%aux509 = add i32 0, 1
	%aux510 = add i32 %aux508, %aux509
	store i32 %aux510, i32* @IdPos1
	br label %etiq274
	
	etiq274:
	;___Asignacion___
	%aux512 = load i32, i32* @Pivot1
	%aux513 = add i32 0, 1
	%aux514 = sub i32 %aux512, %aux513
	store i32 %aux514, i32* @Pivot1
	br label %etiq277
	
	etiq269:
	;___Asignacion___
	%aux516 = load i32, i32* @IdPos1
	%aux517 = add i32 0, 1
	%aux518 = add i32 %aux516, %aux517
	store i32 %aux518, i32* @IdPos1
	br label %etiq277
	
	etiq266:
	;___DisplayCadenaCaracteres___
	%aux519 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq277
	
	etiq262:
	;___DisplayCadenaCaracteres___
	%aux520 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq277
	
	etiq259:
	;___DisplayCadenaCaracteres___
	%aux521 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq277
	
	etiq277:
	;___Asignacion___
	%aux523 = load i32, i32* @_Acum1
	store i32 %aux523, i32* @_Acum2
	br label %etiq278
	
	etiq278:
	;___Asignacion___
	%aux525 = add i32 0, 1
	store i32 %aux525, i32* @Pivot1
	br label %etiq279
	
	etiq279:
	;___Asignacion___
	%aux527 = add i32 0, 0
	store i32 %aux527, i32* @IdPos1
	br label %etiq280
	
	etiq280:
	;___Asignacion___
	%aux529 = add i32 0, 0
	store i32 %aux529, i32* @_Acum5
	br label %etiq281
	
	etiq281:
	;___Asignacion___
	%aux531 = add i32 0, 0
	store i32 %aux531, i32* @_Acum6
	br label %etiq282
	
	etiq282:
	;___Asignacion___
	%aux533 = add i32 0, 2
	store i32 %aux533, i32* @Pivot3
	br label %etiq283
	
	etiq283:
	;___IfElse___
	%aux535 = load i32, i32* @Pivot3
	%aux536 = add i32 0, 1
	%aux537 = icmp sge i32 %aux535, %aux536
	br i1 %aux537, label %etiq285, label %etiq286
	
	etiq285:
	;___IfElse___
	%aux539 = add i32 0, 2
	%aux540 = load i32, i32* @Pivot3
	%aux541 = icmp sge i32 %aux539, %aux540
	br i1 %aux541, label %etiq288, label %etiq289
	
	etiq288:
	;___IfElse___
	%aux543 = add i32 0, 2
	%aux544 = add i32 0, 0
	%aux545 = icmp sgt i32 %aux543, %aux544
	br i1 %aux545, label %etiq292, label %etiq293
	
	etiq292:
	;___IfElse___
	%aux547 = add i32 0, 2
	%aux548 = load i32, i32* @Pivot3
	%aux549 = sub i32 %aux547, %aux548
	%aux550 = load i32, i32* @IdPos3
	%aux551 = icmp eq i32 %aux549, %aux550
	br i1 %aux551, label %etiq295, label %etiq296
	
	etiq295:
	;___Asignacion___
	%aux553 = load i32, i32* @_Acum5
	%aux554 = load i32, i32* @_Acum2
	%aux555 = add i32 %aux553, %aux554
	store i32 %aux555, i32* @_Acum5
	br label %etiq298
	
	etiq298:
	;___Asignacion___
	%aux557 = load i32, i32* @IdPos3
	%aux558 = add i32 0, 1
	%aux559 = add i32 %aux557, %aux558
	store i32 %aux559, i32* @IdPos3
	br label %etiq300
	
	etiq300:
	;___Asignacion___
	%aux561 = load i32, i32* @Pivot3
	%aux562 = add i32 0, 1
	%aux563 = sub i32 %aux561, %aux562
	store i32 %aux563, i32* @Pivot3
	br label %etiq303
	
	etiq296:
	;___Asignacion___
	%aux565 = load i32, i32* @IdPos3
	%aux566 = add i32 0, 1
	%aux567 = add i32 %aux565, %aux566
	store i32 %aux567, i32* @IdPos3
	br label %etiq303
	
	etiq303:
	;___IfElse___
	%aux569 = add i32 0, 2
	%aux570 = load i32, i32* @Pivot3
	%aux571 = sub i32 %aux569, %aux570
	%aux572 = load i32, i32* @IdPos3
	%aux573 = icmp eq i32 %aux571, %aux572
	br i1 %aux573, label %etiq304, label %etiq305
	
	etiq304:
	;___Asignacion___
	%aux575 = load i32, i32* @_Acum5
	%aux576 = load i32, i32* @_Acum4
	%aux577 = add i32 %aux575, %aux576
	store i32 %aux577, i32* @_Acum5
	br label %etiq307
	
	etiq307:
	;___Asignacion___
	%aux579 = load i32, i32* @IdPos3
	%aux580 = add i32 0, 1
	%aux581 = add i32 %aux579, %aux580
	store i32 %aux581, i32* @IdPos3
	br label %etiq309
	
	etiq309:
	;___Asignacion___
	%aux583 = load i32, i32* @Pivot3
	%aux584 = add i32 0, 1
	%aux585 = sub i32 %aux583, %aux584
	store i32 %aux585, i32* @Pivot3
	br label %etiq312
	
	etiq305:
	;___Asignacion___
	%aux587 = load i32, i32* @IdPos3
	%aux588 = add i32 0, 1
	%aux589 = add i32 %aux587, %aux588
	store i32 %aux589, i32* @IdPos3
	br label %etiq312
	
	etiq293:
	;___DisplayCadenaCaracteres___
	%aux590 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq312
	
	etiq289:
	;___DisplayCadenaCaracteres___
	%aux591 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq312
	
	etiq286:
	;___DisplayCadenaCaracteres___
	%aux592 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq312
	
	etiq312:
	;___Asignacion___
	%aux594 = load i32, i32* @_Acum5
	store i32 %aux594, i32* @_Acum6
	br label %etiq313
	
	etiq313:
	;___Asignacion___
	%aux596 = add i32 0, 2
	store i32 %aux596, i32* @Pivot3
	br label %etiq314
	
	etiq314:
	;___Asignacion___
	%aux598 = add i32 0, 0
	store i32 %aux598, i32* @IdPos3
	br label %etiq315
	
	etiq315:
	;___Asignacion___
	%aux600 = add i32 0, 0
	store i32 %aux600, i32* @_Acum11
	br label %etiq316
	
	etiq316:
	;___Asignacion___
	%aux602 = add i32 0, 0
	store i32 %aux602, i32* @_Acum12
	br label %etiq317
	
	etiq317:
	;___Asignacion___
	%aux604 = add i32 0, 3
	store i32 %aux604, i32* @Pivot6
	br label %etiq318
	
	etiq318:
	;___IfElse___
	%aux606 = load i32, i32* @Pivot6
	%aux607 = add i32 0, 1
	%aux608 = icmp sge i32 %aux606, %aux607
	br i1 %aux608, label %etiq320, label %etiq321
	
	etiq320:
	;___IfElse___
	%aux610 = add i32 0, 3
	%aux611 = load i32, i32* @Pivot6
	%aux612 = icmp sge i32 %aux610, %aux611
	br i1 %aux612, label %etiq323, label %etiq324
	
	etiq323:
	;___IfElse___
	%aux614 = add i32 0, 3
	%aux615 = add i32 0, 0
	%aux616 = icmp sgt i32 %aux614, %aux615
	br i1 %aux616, label %etiq327, label %etiq328
	
	etiq327:
	;___IfElse___
	%aux618 = add i32 0, 3
	%aux619 = load i32, i32* @Pivot6
	%aux620 = sub i32 %aux618, %aux619
	%aux621 = load i32, i32* @IdPos6
	%aux622 = icmp eq i32 %aux620, %aux621
	br i1 %aux622, label %etiq330, label %etiq331
	
	etiq330:
	;___Asignacion___
	%aux624 = load i32, i32* @_Acum11
	%aux625 = load i32, i32* @_Acum6
	%aux626 = add i32 %aux624, %aux625
	store i32 %aux626, i32* @_Acum11
	br label %etiq333
	
	etiq333:
	;___Asignacion___
	%aux628 = load i32, i32* @IdPos6
	%aux629 = add i32 0, 1
	%aux630 = add i32 %aux628, %aux629
	store i32 %aux630, i32* @IdPos6
	br label %etiq335
	
	etiq335:
	;___Asignacion___
	%aux632 = load i32, i32* @Pivot6
	%aux633 = add i32 0, 1
	%aux634 = sub i32 %aux632, %aux633
	store i32 %aux634, i32* @Pivot6
	br label %etiq338
	
	etiq331:
	;___Asignacion___
	%aux636 = load i32, i32* @IdPos6
	%aux637 = add i32 0, 1
	%aux638 = add i32 %aux636, %aux637
	store i32 %aux638, i32* @IdPos6
	br label %etiq338
	
	etiq338:
	;___IfElse___
	%aux640 = add i32 0, 3
	%aux641 = load i32, i32* @Pivot6
	%aux642 = sub i32 %aux640, %aux641
	%aux643 = load i32, i32* @IdPos6
	%aux644 = icmp eq i32 %aux642, %aux643
	br i1 %aux644, label %etiq339, label %etiq340
	
	etiq339:
	;___Asignacion___
	%aux646 = load i32, i32* @_Acum11
	%aux647 = load i32, i32* @_Acum8
	%aux648 = add i32 %aux646, %aux647
	store i32 %aux648, i32* @_Acum11
	br label %etiq342
	
	etiq342:
	;___Asignacion___
	%aux650 = load i32, i32* @IdPos6
	%aux651 = add i32 0, 1
	%aux652 = add i32 %aux650, %aux651
	store i32 %aux652, i32* @IdPos6
	br label %etiq344
	
	etiq344:
	;___Asignacion___
	%aux654 = load i32, i32* @Pivot6
	%aux655 = add i32 0, 1
	%aux656 = sub i32 %aux654, %aux655
	store i32 %aux656, i32* @Pivot6
	br label %etiq347
	
	etiq340:
	;___Asignacion___
	%aux658 = load i32, i32* @IdPos6
	%aux659 = add i32 0, 1
	%aux660 = add i32 %aux658, %aux659
	store i32 %aux660, i32* @IdPos6
	br label %etiq347
	
	etiq347:
	;___IfElse___
	%aux662 = add i32 0, 3
	%aux663 = load i32, i32* @Pivot6
	%aux664 = sub i32 %aux662, %aux663
	%aux665 = load i32, i32* @IdPos6
	%aux666 = icmp eq i32 %aux664, %aux665
	br i1 %aux666, label %etiq348, label %etiq349
	
	etiq348:
	;___Asignacion___
	%aux668 = load i32, i32* @_Acum11
	%aux669 = load i32, i32* @_Acum10
	%aux670 = add i32 %aux668, %aux669
	store i32 %aux670, i32* @_Acum11
	br label %etiq351
	
	etiq351:
	;___Asignacion___
	%aux672 = load i32, i32* @IdPos6
	%aux673 = add i32 0, 1
	%aux674 = add i32 %aux672, %aux673
	store i32 %aux674, i32* @IdPos6
	br label %etiq353
	
	etiq353:
	;___Asignacion___
	%aux676 = load i32, i32* @Pivot6
	%aux677 = add i32 0, 1
	%aux678 = sub i32 %aux676, %aux677
	store i32 %aux678, i32* @Pivot6
	br label %etiq356
	
	etiq349:
	;___Asignacion___
	%aux680 = load i32, i32* @IdPos6
	%aux681 = add i32 0, 1
	%aux682 = add i32 %aux680, %aux681
	store i32 %aux682, i32* @IdPos6
	br label %etiq356
	
	etiq328:
	;___DisplayCadenaCaracteres___
	%aux683 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq356
	
	etiq324:
	;___DisplayCadenaCaracteres___
	%aux684 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq356
	
	etiq321:
	;___DisplayCadenaCaracteres___
	%aux685 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq356
	
	etiq356:
	;___Asignacion___
	%aux687 = load i32, i32* @_Acum11
	store i32 %aux687, i32* @_Acum12
	br label %etiq357
	
	etiq357:
	;___Asignacion___
	%aux689 = add i32 0, 3
	store i32 %aux689, i32* @Pivot6
	br label %etiq358
	
	etiq358:
	;___Asignacion___
	%aux691 = add i32 0, 0
	store i32 %aux691, i32* @IdPos6
	br label %etiq359
	
	etiq359:
	;___Asignacion___
	%aux693 = add i32 0, 0
	store i32 %aux693, i32* @_Acum19
	br label %etiq360
	
	etiq360:
	;___Asignacion___
	%aux695 = add i32 0, 0
	store i32 %aux695, i32* @_Acum20
	br label %etiq361
	
	etiq361:
	;___Asignacion___
	%aux697 = load i32, i32* @pivot
	store i32 %aux697, i32* @Pivot10
	br label %etiq362
	
	etiq362:
	;___IfElse___
	%aux699 = load i32, i32* @Pivot10
	%aux700 = add i32 0, 1
	%aux701 = icmp sge i32 %aux699, %aux700
	br i1 %aux701, label %etiq364, label %etiq365
	
	etiq364:
	;___IfElse___
	%aux703 = add i32 0, 103
	%aux704 = load i32, i32* @Pivot10
	%aux705 = icmp sge i32 %aux703, %aux704
	br i1 %aux705, label %etiq367, label %etiq368
	
	etiq367:
	;___IfElse___
	%aux707 = add i32 0, 103
	%aux708 = add i32 0, 0
	%aux709 = icmp sgt i32 %aux707, %aux708
	br i1 %aux709, label %etiq371, label %etiq372
	
	etiq371:
	;___IfElse___
	%aux711 = add i32 0, 103
	%aux712 = load i32, i32* @Pivot10
	%aux713 = sub i32 %aux711, %aux712
	%aux714 = load i32, i32* @IdPos10
	%aux715 = icmp eq i32 %aux713, %aux714
	br i1 %aux715, label %etiq374, label %etiq375
	
	etiq374:
	;___Asignacion___
	%aux717 = load i32, i32* @_Acum19
	%aux718 = add i32 0, 1
	%aux719 = add i32 %aux717, %aux718
	store i32 %aux719, i32* @_Acum19
	br label %etiq378
	
	etiq378:
	;___Asignacion___
	%aux721 = load i32, i32* @IdPos10
	%aux722 = add i32 0, 1
	%aux723 = add i32 %aux721, %aux722
	store i32 %aux723, i32* @IdPos10
	br label %etiq380
	
	etiq380:
	;___Asignacion___
	%aux725 = load i32, i32* @Pivot10
	%aux726 = add i32 0, 1
	%aux727 = sub i32 %aux725, %aux726
	store i32 %aux727, i32* @Pivot10
	br label %etiq383
	
	etiq375:
	;___Asignacion___
	%aux729 = load i32, i32* @IdPos10
	%aux730 = add i32 0, 1
	%aux731 = add i32 %aux729, %aux730
	store i32 %aux731, i32* @IdPos10
	br label %etiq383
	
	etiq383:
	;___IfElse___
	%aux733 = add i32 0, 103
	%aux734 = load i32, i32* @Pivot10
	%aux735 = sub i32 %aux733, %aux734
	%aux736 = load i32, i32* @IdPos10
	%aux737 = icmp eq i32 %aux735, %aux736
	br i1 %aux737, label %etiq384, label %etiq385
	
	etiq384:
	;___Asignacion___
	%aux739 = load i32, i32* @_Acum19
	%aux740 = add i32 0, 1
	%aux741 = add i32 %aux739, %aux740
	store i32 %aux741, i32* @_Acum19
	br label %etiq388
	
	etiq388:
	;___Asignacion___
	%aux743 = load i32, i32* @IdPos10
	%aux744 = add i32 0, 1
	%aux745 = add i32 %aux743, %aux744
	store i32 %aux745, i32* @IdPos10
	br label %etiq390
	
	etiq390:
	;___Asignacion___
	%aux747 = load i32, i32* @Pivot10
	%aux748 = add i32 0, 1
	%aux749 = sub i32 %aux747, %aux748
	store i32 %aux749, i32* @Pivot10
	br label %etiq393
	
	etiq385:
	;___Asignacion___
	%aux751 = load i32, i32* @IdPos10
	%aux752 = add i32 0, 1
	%aux753 = add i32 %aux751, %aux752
	store i32 %aux753, i32* @IdPos10
	br label %etiq393
	
	etiq393:
	;___IfElse___
	%aux755 = add i32 0, 103
	%aux756 = load i32, i32* @Pivot10
	%aux757 = sub i32 %aux755, %aux756
	%aux758 = load i32, i32* @IdPos10
	%aux759 = icmp eq i32 %aux757, %aux758
	br i1 %aux759, label %etiq394, label %etiq395
	
	etiq394:
	;___Asignacion___
	%aux761 = load i32, i32* @_Acum19
	%aux762 = add i32 0, 1
	%aux763 = add i32 %aux761, %aux762
	store i32 %aux763, i32* @_Acum19
	br label %etiq398
	
	etiq398:
	;___Asignacion___
	%aux765 = load i32, i32* @IdPos10
	%aux766 = add i32 0, 1
	%aux767 = add i32 %aux765, %aux766
	store i32 %aux767, i32* @IdPos10
	br label %etiq400
	
	etiq400:
	;___Asignacion___
	%aux769 = load i32, i32* @Pivot10
	%aux770 = add i32 0, 1
	%aux771 = sub i32 %aux769, %aux770
	store i32 %aux771, i32* @Pivot10
	br label %etiq1758
	
	etiq395:
	;___Asignacion___
	%aux773 = load i32, i32* @IdPos10
	%aux774 = add i32 0, 1
	%aux775 = add i32 %aux773, %aux774
	store i32 %aux775, i32* @IdPos10
	br label %etiq403
	
	etiq403:
	;___IfElse___
	%aux777 = add i32 0, 103
	%aux778 = load i32, i32* @Pivot10
	%aux779 = sub i32 %aux777, %aux778
	%aux780 = load i32, i32* @IdPos10
	%aux781 = icmp eq i32 %aux779, %aux780
	br i1 %aux781, label %etiq404, label %etiq405
	
	etiq404:
	;___Asignacion___
	%aux783 = load i32, i32* @_Acum19
	%aux784 = add i32 0, 1
	%aux785 = add i32 %aux783, %aux784
	store i32 %aux785, i32* @_Acum19
	br label %etiq408
	
	etiq408:
	;___Asignacion___
	%aux787 = load i32, i32* @IdPos10
	%aux788 = add i32 0, 1
	%aux789 = add i32 %aux787, %aux788
	store i32 %aux789, i32* @IdPos10
	br label %etiq410
	
	etiq410:
	;___Asignacion___
	%aux791 = load i32, i32* @Pivot10
	%aux792 = add i32 0, 1
	%aux793 = sub i32 %aux791, %aux792
	store i32 %aux793, i32* @Pivot10
	br label %etiq413
	
	etiq405:
	;___Asignacion___
	%aux795 = load i32, i32* @IdPos10
	%aux796 = add i32 0, 1
	%aux797 = add i32 %aux795, %aux796
	store i32 %aux797, i32* @IdPos10
	br label %etiq413
	
	etiq413:
	;___IfElse___
	%aux799 = add i32 0, 103
	%aux800 = load i32, i32* @Pivot10
	%aux801 = sub i32 %aux799, %aux800
	%aux802 = load i32, i32* @IdPos10
	%aux803 = icmp eq i32 %aux801, %aux802
	br i1 %aux803, label %etiq414, label %etiq415
	
	etiq414:
	;___Asignacion___
	%aux805 = load i32, i32* @_Acum19
	%aux806 = add i32 0, 1
	%aux807 = add i32 %aux805, %aux806
	store i32 %aux807, i32* @_Acum19
	br label %etiq418
	
	etiq418:
	;___Asignacion___
	%aux809 = load i32, i32* @IdPos10
	%aux810 = add i32 0, 1
	%aux811 = add i32 %aux809, %aux810
	store i32 %aux811, i32* @IdPos10
	br label %etiq420
	
	etiq420:
	;___Asignacion___
	%aux813 = load i32, i32* @Pivot10
	%aux814 = add i32 0, 1
	%aux815 = sub i32 %aux813, %aux814
	store i32 %aux815, i32* @Pivot10
	br label %etiq423
	
	etiq415:
	;___Asignacion___
	%aux817 = load i32, i32* @IdPos10
	%aux818 = add i32 0, 1
	%aux819 = add i32 %aux817, %aux818
	store i32 %aux819, i32* @IdPos10
	br label %etiq423
	
	etiq423:
	;___IfElse___
	%aux821 = add i32 0, 103
	%aux822 = load i32, i32* @Pivot10
	%aux823 = sub i32 %aux821, %aux822
	%aux824 = load i32, i32* @IdPos10
	%aux825 = icmp eq i32 %aux823, %aux824
	br i1 %aux825, label %etiq424, label %etiq425
	
	etiq424:
	;___Asignacion___
	%aux827 = load i32, i32* @_Acum19
	%aux828 = add i32 0, 1
	%aux829 = add i32 %aux827, %aux828
	store i32 %aux829, i32* @_Acum19
	br label %etiq428
	
	etiq428:
	;___Asignacion___
	%aux831 = load i32, i32* @IdPos10
	%aux832 = add i32 0, 1
	%aux833 = add i32 %aux831, %aux832
	store i32 %aux833, i32* @IdPos10
	br label %etiq430
	
	etiq430:
	;___Asignacion___
	%aux835 = load i32, i32* @Pivot10
	%aux836 = add i32 0, 1
	%aux837 = sub i32 %aux835, %aux836
	store i32 %aux837, i32* @Pivot10
	br label %etiq433
	
	etiq425:
	;___Asignacion___
	%aux839 = load i32, i32* @IdPos10
	%aux840 = add i32 0, 1
	%aux841 = add i32 %aux839, %aux840
	store i32 %aux841, i32* @IdPos10
	br label %etiq433
	
	etiq433:
	;___IfElse___
	%aux843 = add i32 0, 103
	%aux844 = load i32, i32* @Pivot10
	%aux845 = sub i32 %aux843, %aux844
	%aux846 = load i32, i32* @IdPos10
	%aux847 = icmp eq i32 %aux845, %aux846
	br i1 %aux847, label %etiq434, label %etiq435
	
	etiq434:
	;___Asignacion___
	%aux849 = load i32, i32* @_Acum19
	%aux850 = add i32 0, 1
	%aux851 = add i32 %aux849, %aux850
	store i32 %aux851, i32* @_Acum19
	br label %etiq438
	
	etiq438:
	;___Asignacion___
	%aux853 = load i32, i32* @IdPos10
	%aux854 = add i32 0, 1
	%aux855 = add i32 %aux853, %aux854
	store i32 %aux855, i32* @IdPos10
	br label %etiq440
	
	etiq440:
	;___Asignacion___
	%aux857 = load i32, i32* @Pivot10
	%aux858 = add i32 0, 1
	%aux859 = sub i32 %aux857, %aux858
	store i32 %aux859, i32* @Pivot10
	br label %etiq443
	
	etiq435:
	;___Asignacion___
	%aux861 = load i32, i32* @IdPos10
	%aux862 = add i32 0, 1
	%aux863 = add i32 %aux861, %aux862
	store i32 %aux863, i32* @IdPos10
	br label %etiq443
	
	etiq443:
	;___IfElse___
	%aux865 = add i32 0, 103
	%aux866 = load i32, i32* @Pivot10
	%aux867 = sub i32 %aux865, %aux866
	%aux868 = load i32, i32* @IdPos10
	%aux869 = icmp eq i32 %aux867, %aux868
	br i1 %aux869, label %etiq444, label %etiq445
	
	etiq444:
	;___Asignacion___
	%aux871 = load i32, i32* @_Acum19
	%aux872 = add i32 0, 1
	%aux873 = add i32 %aux871, %aux872
	store i32 %aux873, i32* @_Acum19
	br label %etiq448
	
	etiq448:
	;___Asignacion___
	%aux875 = load i32, i32* @IdPos10
	%aux876 = add i32 0, 1
	%aux877 = add i32 %aux875, %aux876
	store i32 %aux877, i32* @IdPos10
	br label %etiq450
	
	etiq450:
	;___Asignacion___
	%aux879 = load i32, i32* @Pivot10
	%aux880 = add i32 0, 1
	%aux881 = sub i32 %aux879, %aux880
	store i32 %aux881, i32* @Pivot10
	br label %etiq453
	
	etiq445:
	;___Asignacion___
	%aux883 = load i32, i32* @IdPos10
	%aux884 = add i32 0, 1
	%aux885 = add i32 %aux883, %aux884
	store i32 %aux885, i32* @IdPos10
	br label %etiq453
	
	etiq453:
	;___IfElse___
	%aux887 = add i32 0, 103
	%aux888 = load i32, i32* @Pivot10
	%aux889 = sub i32 %aux887, %aux888
	%aux890 = load i32, i32* @IdPos10
	%aux891 = icmp eq i32 %aux889, %aux890
	br i1 %aux891, label %etiq454, label %etiq455
	
	etiq454:
	;___Asignacion___
	%aux893 = load i32, i32* @_Acum19
	%aux894 = add i32 0, 1
	%aux895 = add i32 %aux893, %aux894
	store i32 %aux895, i32* @_Acum19
	br label %etiq458
	
	etiq458:
	;___Asignacion___
	%aux897 = load i32, i32* @IdPos10
	%aux898 = add i32 0, 1
	%aux899 = add i32 %aux897, %aux898
	store i32 %aux899, i32* @IdPos10
	br label %etiq460
	
	etiq460:
	;___Asignacion___
	%aux901 = load i32, i32* @Pivot10
	%aux902 = add i32 0, 1
	%aux903 = sub i32 %aux901, %aux902
	store i32 %aux903, i32* @Pivot10
	br label %etiq463
	
	etiq455:
	;___Asignacion___
	%aux905 = load i32, i32* @IdPos10
	%aux906 = add i32 0, 1
	%aux907 = add i32 %aux905, %aux906
	store i32 %aux907, i32* @IdPos10
	br label %etiq463
	
	etiq463:
	;___IfElse___
	%aux909 = add i32 0, 103
	%aux910 = load i32, i32* @Pivot10
	%aux911 = sub i32 %aux909, %aux910
	%aux912 = load i32, i32* @IdPos10
	%aux913 = icmp eq i32 %aux911, %aux912
	br i1 %aux913, label %etiq464, label %etiq465
	
	etiq464:
	;___Asignacion___
	%aux915 = load i32, i32* @_Acum19
	%aux916 = add i32 0, 1
	%aux917 = add i32 %aux915, %aux916
	store i32 %aux917, i32* @_Acum19
	br label %etiq468
	
	etiq468:
	;___Asignacion___
	%aux919 = load i32, i32* @IdPos10
	%aux920 = add i32 0, 1
	%aux921 = add i32 %aux919, %aux920
	store i32 %aux921, i32* @IdPos10
	br label %etiq470
	
	etiq470:
	;___Asignacion___
	%aux923 = load i32, i32* @Pivot10
	%aux924 = add i32 0, 1
	%aux925 = sub i32 %aux923, %aux924
	store i32 %aux925, i32* @Pivot10
	br label %etiq473
	
	etiq465:
	;___Asignacion___
	%aux927 = load i32, i32* @IdPos10
	%aux928 = add i32 0, 1
	%aux929 = add i32 %aux927, %aux928
	store i32 %aux929, i32* @IdPos10
	br label %etiq473
	
	etiq473:
	;___IfElse___
	%aux931 = add i32 0, 103
	%aux932 = load i32, i32* @Pivot10
	%aux933 = sub i32 %aux931, %aux932
	%aux934 = load i32, i32* @IdPos10
	%aux935 = icmp eq i32 %aux933, %aux934
	br i1 %aux935, label %etiq474, label %etiq475
	
	etiq474:
	;___Asignacion___
	%aux937 = load i32, i32* @_Acum19
	%aux938 = add i32 0, 1
	%aux939 = add i32 %aux937, %aux938
	store i32 %aux939, i32* @_Acum19
	br label %etiq478
	
	etiq478:
	;___Asignacion___
	%aux941 = load i32, i32* @IdPos10
	%aux942 = add i32 0, 1
	%aux943 = add i32 %aux941, %aux942
	store i32 %aux943, i32* @IdPos10
	br label %etiq480
	
	etiq480:
	;___Asignacion___
	%aux945 = load i32, i32* @Pivot10
	%aux946 = add i32 0, 1
	%aux947 = sub i32 %aux945, %aux946
	store i32 %aux947, i32* @Pivot10
	br label %etiq483
	
	etiq475:
	;___Asignacion___
	%aux949 = load i32, i32* @IdPos10
	%aux950 = add i32 0, 1
	%aux951 = add i32 %aux949, %aux950
	store i32 %aux951, i32* @IdPos10
	br label %etiq483
	
	etiq483:
	;___IfElse___
	%aux953 = add i32 0, 103
	%aux954 = load i32, i32* @Pivot10
	%aux955 = sub i32 %aux953, %aux954
	%aux956 = load i32, i32* @IdPos10
	%aux957 = icmp eq i32 %aux955, %aux956
	br i1 %aux957, label %etiq484, label %etiq485
	
	etiq484:
	;___Asignacion___
	%aux959 = load i32, i32* @_Acum19
	%aux960 = add i32 0, 1
	%aux961 = add i32 %aux959, %aux960
	store i32 %aux961, i32* @_Acum19
	br label %etiq488
	
	etiq488:
	;___Asignacion___
	%aux963 = load i32, i32* @IdPos10
	%aux964 = add i32 0, 1
	%aux965 = add i32 %aux963, %aux964
	store i32 %aux965, i32* @IdPos10
	br label %etiq490
	
	etiq490:
	;___Asignacion___
	%aux967 = load i32, i32* @Pivot10
	%aux968 = add i32 0, 1
	%aux969 = sub i32 %aux967, %aux968
	store i32 %aux969, i32* @Pivot10
	br label %etiq493
	
	etiq485:
	;___Asignacion___
	%aux971 = load i32, i32* @IdPos10
	%aux972 = add i32 0, 1
	%aux973 = add i32 %aux971, %aux972
	store i32 %aux973, i32* @IdPos10
	br label %etiq493
	
	etiq493:
	;___IfElse___
	%aux975 = add i32 0, 103
	%aux976 = load i32, i32* @Pivot10
	%aux977 = sub i32 %aux975, %aux976
	%aux978 = load i32, i32* @IdPos10
	%aux979 = icmp eq i32 %aux977, %aux978
	br i1 %aux979, label %etiq494, label %etiq495
	
	etiq494:
	;___Asignacion___
	%aux981 = load i32, i32* @_Acum19
	%aux982 = add i32 0, 1
	%aux983 = add i32 %aux981, %aux982
	store i32 %aux983, i32* @_Acum19
	br label %etiq498
	
	etiq498:
	;___Asignacion___
	%aux985 = load i32, i32* @IdPos10
	%aux986 = add i32 0, 1
	%aux987 = add i32 %aux985, %aux986
	store i32 %aux987, i32* @IdPos10
	br label %etiq500
	
	etiq500:
	;___Asignacion___
	%aux989 = load i32, i32* @Pivot10
	%aux990 = add i32 0, 1
	%aux991 = sub i32 %aux989, %aux990
	store i32 %aux991, i32* @Pivot10
	br label %etiq503
	
	etiq495:
	;___Asignacion___
	%aux993 = load i32, i32* @IdPos10
	%aux994 = add i32 0, 1
	%aux995 = add i32 %aux993, %aux994
	store i32 %aux995, i32* @IdPos10
	br label %etiq503
	
	etiq503:
	;___IfElse___
	%aux997 = add i32 0, 103
	%aux998 = load i32, i32* @Pivot10
	%aux999 = sub i32 %aux997, %aux998
	%aux1000 = load i32, i32* @IdPos10
	%aux1001 = icmp eq i32 %aux999, %aux1000
	br i1 %aux1001, label %etiq504, label %etiq505
	
	etiq504:
	;___Asignacion___
	%aux1003 = load i32, i32* @_Acum19
	%aux1004 = add i32 0, 1
	%aux1005 = add i32 %aux1003, %aux1004
	store i32 %aux1005, i32* @_Acum19
	br label %etiq508
	
	etiq508:
	;___Asignacion___
	%aux1007 = load i32, i32* @IdPos10
	%aux1008 = add i32 0, 1
	%aux1009 = add i32 %aux1007, %aux1008
	store i32 %aux1009, i32* @IdPos10
	br label %etiq510
	
	etiq510:
	;___Asignacion___
	%aux1011 = load i32, i32* @Pivot10
	%aux1012 = add i32 0, 1
	%aux1013 = sub i32 %aux1011, %aux1012
	store i32 %aux1013, i32* @Pivot10
	br label %etiq513
	
	etiq505:
	;___Asignacion___
	%aux1015 = load i32, i32* @IdPos10
	%aux1016 = add i32 0, 1
	%aux1017 = add i32 %aux1015, %aux1016
	store i32 %aux1017, i32* @IdPos10
	br label %etiq513
	
	etiq513:
	;___IfElse___
	%aux1019 = add i32 0, 103
	%aux1020 = load i32, i32* @Pivot10
	%aux1021 = sub i32 %aux1019, %aux1020
	%aux1022 = load i32, i32* @IdPos10
	%aux1023 = icmp eq i32 %aux1021, %aux1022
	br i1 %aux1023, label %etiq514, label %etiq515
	
	etiq514:
	;___Asignacion___
	%aux1025 = load i32, i32* @_Acum19
	%aux1026 = add i32 0, 1
	%aux1027 = add i32 %aux1025, %aux1026
	store i32 %aux1027, i32* @_Acum19
	br label %etiq518
	
	etiq518:
	;___Asignacion___
	%aux1029 = load i32, i32* @IdPos10
	%aux1030 = add i32 0, 1
	%aux1031 = add i32 %aux1029, %aux1030
	store i32 %aux1031, i32* @IdPos10
	br label %etiq520
	
	etiq520:
	;___Asignacion___
	%aux1033 = load i32, i32* @Pivot10
	%aux1034 = add i32 0, 1
	%aux1035 = sub i32 %aux1033, %aux1034
	store i32 %aux1035, i32* @Pivot10
	br label %etiq523
	
	etiq515:
	;___Asignacion___
	%aux1037 = load i32, i32* @IdPos10
	%aux1038 = add i32 0, 1
	%aux1039 = add i32 %aux1037, %aux1038
	store i32 %aux1039, i32* @IdPos10
	br label %etiq523
	
	etiq523:
	;___IfElse___
	%aux1041 = add i32 0, 103
	%aux1042 = load i32, i32* @Pivot10
	%aux1043 = sub i32 %aux1041, %aux1042
	%aux1044 = load i32, i32* @IdPos10
	%aux1045 = icmp eq i32 %aux1043, %aux1044
	br i1 %aux1045, label %etiq524, label %etiq525
	
	etiq524:
	;___Asignacion___
	%aux1047 = load i32, i32* @_Acum19
	%aux1048 = add i32 0, 1
	%aux1049 = add i32 %aux1047, %aux1048
	store i32 %aux1049, i32* @_Acum19
	br label %etiq528
	
	etiq528:
	;___Asignacion___
	%aux1051 = load i32, i32* @IdPos10
	%aux1052 = add i32 0, 1
	%aux1053 = add i32 %aux1051, %aux1052
	store i32 %aux1053, i32* @IdPos10
	br label %etiq530
	
	etiq530:
	;___Asignacion___
	%aux1055 = load i32, i32* @Pivot10
	%aux1056 = add i32 0, 1
	%aux1057 = sub i32 %aux1055, %aux1056
	store i32 %aux1057, i32* @Pivot10
	br label %etiq533
	
	etiq525:
	;___Asignacion___
	%aux1059 = load i32, i32* @IdPos10
	%aux1060 = add i32 0, 1
	%aux1061 = add i32 %aux1059, %aux1060
	store i32 %aux1061, i32* @IdPos10
	br label %etiq533
	
	etiq533:
	;___IfElse___
	%aux1063 = add i32 0, 103
	%aux1064 = load i32, i32* @Pivot10
	%aux1065 = sub i32 %aux1063, %aux1064
	%aux1066 = load i32, i32* @IdPos10
	%aux1067 = icmp eq i32 %aux1065, %aux1066
	br i1 %aux1067, label %etiq534, label %etiq535
	
	etiq534:
	;___Asignacion___
	%aux1069 = load i32, i32* @_Acum19
	%aux1070 = add i32 0, 1
	%aux1071 = add i32 %aux1069, %aux1070
	store i32 %aux1071, i32* @_Acum19
	br label %etiq538
	
	etiq538:
	;___Asignacion___
	%aux1073 = load i32, i32* @IdPos10
	%aux1074 = add i32 0, 1
	%aux1075 = add i32 %aux1073, %aux1074
	store i32 %aux1075, i32* @IdPos10
	br label %etiq540
	
	etiq540:
	;___Asignacion___
	%aux1077 = load i32, i32* @Pivot10
	%aux1078 = add i32 0, 1
	%aux1079 = sub i32 %aux1077, %aux1078
	store i32 %aux1079, i32* @Pivot10
	br label %etiq543
	
	etiq535:
	;___Asignacion___
	%aux1081 = load i32, i32* @IdPos10
	%aux1082 = add i32 0, 1
	%aux1083 = add i32 %aux1081, %aux1082
	store i32 %aux1083, i32* @IdPos10
	br label %etiq543
	
	etiq543:
	;___IfElse___
	%aux1085 = add i32 0, 103
	%aux1086 = load i32, i32* @Pivot10
	%aux1087 = sub i32 %aux1085, %aux1086
	%aux1088 = load i32, i32* @IdPos10
	%aux1089 = icmp eq i32 %aux1087, %aux1088
	br i1 %aux1089, label %etiq544, label %etiq545
	
	etiq544:
	;___Asignacion___
	%aux1091 = load i32, i32* @_Acum19
	%aux1092 = add i32 0, 1
	%aux1093 = add i32 %aux1091, %aux1092
	store i32 %aux1093, i32* @_Acum19
	br label %etiq548
	
	etiq548:
	;___Asignacion___
	%aux1095 = load i32, i32* @IdPos10
	%aux1096 = add i32 0, 1
	%aux1097 = add i32 %aux1095, %aux1096
	store i32 %aux1097, i32* @IdPos10
	br label %etiq550
	
	etiq550:
	;___Asignacion___
	%aux1099 = load i32, i32* @Pivot10
	%aux1100 = add i32 0, 1
	%aux1101 = sub i32 %aux1099, %aux1100
	store i32 %aux1101, i32* @Pivot10
	br label %etiq553
	
	etiq545:
	;___Asignacion___
	%aux1103 = load i32, i32* @IdPos10
	%aux1104 = add i32 0, 1
	%aux1105 = add i32 %aux1103, %aux1104
	store i32 %aux1105, i32* @IdPos10
	br label %etiq553
	
	etiq553:
	;___IfElse___
	%aux1107 = add i32 0, 103
	%aux1108 = load i32, i32* @Pivot10
	%aux1109 = sub i32 %aux1107, %aux1108
	%aux1110 = load i32, i32* @IdPos10
	%aux1111 = icmp eq i32 %aux1109, %aux1110
	br i1 %aux1111, label %etiq554, label %etiq555
	
	etiq554:
	;___Asignacion___
	%aux1113 = load i32, i32* @_Acum19
	%aux1114 = add i32 0, 1
	%aux1115 = add i32 %aux1113, %aux1114
	store i32 %aux1115, i32* @_Acum19
	br label %etiq558
	
	etiq558:
	;___Asignacion___
	%aux1117 = load i32, i32* @IdPos10
	%aux1118 = add i32 0, 1
	%aux1119 = add i32 %aux1117, %aux1118
	store i32 %aux1119, i32* @IdPos10
	br label %etiq560
	
	etiq560:
	;___Asignacion___
	%aux1121 = load i32, i32* @Pivot10
	%aux1122 = add i32 0, 1
	%aux1123 = sub i32 %aux1121, %aux1122
	store i32 %aux1123, i32* @Pivot10
	br label %etiq563
	
	etiq555:
	;___Asignacion___
	%aux1125 = load i32, i32* @IdPos10
	%aux1126 = add i32 0, 1
	%aux1127 = add i32 %aux1125, %aux1126
	store i32 %aux1127, i32* @IdPos10
	br label %etiq563
	
	etiq563:
	;___IfElse___
	%aux1129 = add i32 0, 103
	%aux1130 = load i32, i32* @Pivot10
	%aux1131 = sub i32 %aux1129, %aux1130
	%aux1132 = load i32, i32* @IdPos10
	%aux1133 = icmp eq i32 %aux1131, %aux1132
	br i1 %aux1133, label %etiq564, label %etiq565
	
	etiq564:
	;___Asignacion___
	%aux1135 = load i32, i32* @_Acum19
	%aux1136 = add i32 0, 1
	%aux1137 = add i32 %aux1135, %aux1136
	store i32 %aux1137, i32* @_Acum19
	br label %etiq568
	
	etiq568:
	;___Asignacion___
	%aux1139 = load i32, i32* @IdPos10
	%aux1140 = add i32 0, 1
	%aux1141 = add i32 %aux1139, %aux1140
	store i32 %aux1141, i32* @IdPos10
	br label %etiq570
	
	etiq570:
	;___Asignacion___
	%aux1143 = load i32, i32* @Pivot10
	%aux1144 = add i32 0, 1
	%aux1145 = sub i32 %aux1143, %aux1144
	store i32 %aux1145, i32* @Pivot10
	br label %etiq573
	
	etiq565:
	;___Asignacion___
	%aux1147 = load i32, i32* @IdPos10
	%aux1148 = add i32 0, 1
	%aux1149 = add i32 %aux1147, %aux1148
	store i32 %aux1149, i32* @IdPos10
	br label %etiq573
	
	etiq573:
	;___IfElse___
	%aux1151 = add i32 0, 103
	%aux1152 = load i32, i32* @Pivot10
	%aux1153 = sub i32 %aux1151, %aux1152
	%aux1154 = load i32, i32* @IdPos10
	%aux1155 = icmp eq i32 %aux1153, %aux1154
	br i1 %aux1155, label %etiq574, label %etiq575
	
	etiq574:
	;___Asignacion___
	%aux1157 = load i32, i32* @_Acum19
	%aux1158 = add i32 0, 1
	%aux1159 = add i32 %aux1157, %aux1158
	store i32 %aux1159, i32* @_Acum19
	br label %etiq578
	
	etiq578:
	;___Asignacion___
	%aux1161 = load i32, i32* @IdPos10
	%aux1162 = add i32 0, 1
	%aux1163 = add i32 %aux1161, %aux1162
	store i32 %aux1163, i32* @IdPos10
	br label %etiq580
	
	etiq580:
	;___Asignacion___
	%aux1165 = load i32, i32* @Pivot10
	%aux1166 = add i32 0, 1
	%aux1167 = sub i32 %aux1165, %aux1166
	store i32 %aux1167, i32* @Pivot10
	br label %etiq583
	
	etiq575:
	;___Asignacion___
	%aux1169 = load i32, i32* @IdPos10
	%aux1170 = add i32 0, 1
	%aux1171 = add i32 %aux1169, %aux1170
	store i32 %aux1171, i32* @IdPos10
	br label %etiq583
	
	etiq583:
	;___IfElse___
	%aux1173 = add i32 0, 103
	%aux1174 = load i32, i32* @Pivot10
	%aux1175 = sub i32 %aux1173, %aux1174
	%aux1176 = load i32, i32* @IdPos10
	%aux1177 = icmp eq i32 %aux1175, %aux1176
	br i1 %aux1177, label %etiq584, label %etiq585
	
	etiq584:
	;___Asignacion___
	%aux1179 = load i32, i32* @_Acum19
	%aux1180 = add i32 0, 1
	%aux1181 = add i32 %aux1179, %aux1180
	store i32 %aux1181, i32* @_Acum19
	br label %etiq588
	
	etiq588:
	;___Asignacion___
	%aux1183 = load i32, i32* @IdPos10
	%aux1184 = add i32 0, 1
	%aux1185 = add i32 %aux1183, %aux1184
	store i32 %aux1185, i32* @IdPos10
	br label %etiq590
	
	etiq590:
	;___Asignacion___
	%aux1187 = load i32, i32* @Pivot10
	%aux1188 = add i32 0, 1
	%aux1189 = sub i32 %aux1187, %aux1188
	store i32 %aux1189, i32* @Pivot10
	br label %etiq593
	
	etiq585:
	;___Asignacion___
	%aux1191 = load i32, i32* @IdPos10
	%aux1192 = add i32 0, 1
	%aux1193 = add i32 %aux1191, %aux1192
	store i32 %aux1193, i32* @IdPos10
	br label %etiq593
	
	etiq593:
	;___IfElse___
	%aux1195 = add i32 0, 103
	%aux1196 = load i32, i32* @Pivot10
	%aux1197 = sub i32 %aux1195, %aux1196
	%aux1198 = load i32, i32* @IdPos10
	%aux1199 = icmp eq i32 %aux1197, %aux1198
	br i1 %aux1199, label %etiq594, label %etiq595
	
	etiq594:
	;___Asignacion___
	%aux1201 = load i32, i32* @_Acum19
	%aux1202 = add i32 0, 1
	%aux1203 = add i32 %aux1201, %aux1202
	store i32 %aux1203, i32* @_Acum19
	br label %etiq598
	
	etiq598:
	;___Asignacion___
	%aux1205 = load i32, i32* @IdPos10
	%aux1206 = add i32 0, 1
	%aux1207 = add i32 %aux1205, %aux1206
	store i32 %aux1207, i32* @IdPos10
	br label %etiq600
	
	etiq600:
	;___Asignacion___
	%aux1209 = load i32, i32* @Pivot10
	%aux1210 = add i32 0, 1
	%aux1211 = sub i32 %aux1209, %aux1210
	store i32 %aux1211, i32* @Pivot10
	br label %etiq603
	
	etiq595:
	;___Asignacion___
	%aux1213 = load i32, i32* @IdPos10
	%aux1214 = add i32 0, 1
	%aux1215 = add i32 %aux1213, %aux1214
	store i32 %aux1215, i32* @IdPos10
	br label %etiq603
	
	etiq603:
	;___IfElse___
	%aux1217 = add i32 0, 103
	%aux1218 = load i32, i32* @Pivot10
	%aux1219 = sub i32 %aux1217, %aux1218
	%aux1220 = load i32, i32* @IdPos10
	%aux1221 = icmp eq i32 %aux1219, %aux1220
	br i1 %aux1221, label %etiq604, label %etiq605
	
	etiq604:
	;___Asignacion___
	%aux1223 = load i32, i32* @_Acum19
	%aux1224 = add i32 0, 1
	%aux1225 = add i32 %aux1223, %aux1224
	store i32 %aux1225, i32* @_Acum19
	br label %etiq608
	
	etiq608:
	;___Asignacion___
	%aux1227 = load i32, i32* @IdPos10
	%aux1228 = add i32 0, 1
	%aux1229 = add i32 %aux1227, %aux1228
	store i32 %aux1229, i32* @IdPos10
	br label %etiq610
	
	etiq610:
	;___Asignacion___
	%aux1231 = load i32, i32* @Pivot10
	%aux1232 = add i32 0, 1
	%aux1233 = sub i32 %aux1231, %aux1232
	store i32 %aux1233, i32* @Pivot10
	br label %etiq613
	
	etiq605:
	;___Asignacion___
	%aux1235 = load i32, i32* @IdPos10
	%aux1236 = add i32 0, 1
	%aux1237 = add i32 %aux1235, %aux1236
	store i32 %aux1237, i32* @IdPos10
	br label %etiq613
	
	etiq613:
	;___IfElse___
	%aux1239 = add i32 0, 103
	%aux1240 = load i32, i32* @Pivot10
	%aux1241 = sub i32 %aux1239, %aux1240
	%aux1242 = load i32, i32* @IdPos10
	%aux1243 = icmp eq i32 %aux1241, %aux1242
	br i1 %aux1243, label %etiq614, label %etiq615
	
	etiq614:
	;___Asignacion___
	%aux1245 = load i32, i32* @_Acum19
	%aux1246 = add i32 0, 1
	%aux1247 = add i32 %aux1245, %aux1246
	store i32 %aux1247, i32* @_Acum19
	br label %etiq618
	
	etiq618:
	;___Asignacion___
	%aux1249 = load i32, i32* @IdPos10
	%aux1250 = add i32 0, 1
	%aux1251 = add i32 %aux1249, %aux1250
	store i32 %aux1251, i32* @IdPos10
	br label %etiq620
	
	etiq620:
	;___Asignacion___
	%aux1253 = load i32, i32* @Pivot10
	%aux1254 = add i32 0, 1
	%aux1255 = sub i32 %aux1253, %aux1254
	store i32 %aux1255, i32* @Pivot10
	br label %etiq623
	
	etiq615:
	;___Asignacion___
	%aux1257 = load i32, i32* @IdPos10
	%aux1258 = add i32 0, 1
	%aux1259 = add i32 %aux1257, %aux1258
	store i32 %aux1259, i32* @IdPos10
	br label %etiq623
	
	etiq623:
	;___IfElse___
	%aux1261 = add i32 0, 103
	%aux1262 = load i32, i32* @Pivot10
	%aux1263 = sub i32 %aux1261, %aux1262
	%aux1264 = load i32, i32* @IdPos10
	%aux1265 = icmp eq i32 %aux1263, %aux1264
	br i1 %aux1265, label %etiq624, label %etiq625
	
	etiq624:
	;___Asignacion___
	%aux1267 = load i32, i32* @_Acum19
	%aux1268 = add i32 0, 1
	%aux1269 = add i32 %aux1267, %aux1268
	store i32 %aux1269, i32* @_Acum19
	br label %etiq628
	
	etiq628:
	;___Asignacion___
	%aux1271 = load i32, i32* @IdPos10
	%aux1272 = add i32 0, 1
	%aux1273 = add i32 %aux1271, %aux1272
	store i32 %aux1273, i32* @IdPos10
	br label %etiq630
	
	etiq630:
	;___Asignacion___
	%aux1275 = load i32, i32* @Pivot10
	%aux1276 = add i32 0, 1
	%aux1277 = sub i32 %aux1275, %aux1276
	store i32 %aux1277, i32* @Pivot10
	br label %etiq633
	
	etiq625:
	;___Asignacion___
	%aux1279 = load i32, i32* @IdPos10
	%aux1280 = add i32 0, 1
	%aux1281 = add i32 %aux1279, %aux1280
	store i32 %aux1281, i32* @IdPos10
	br label %etiq633
	
	etiq633:
	;___IfElse___
	%aux1283 = add i32 0, 103
	%aux1284 = load i32, i32* @Pivot10
	%aux1285 = sub i32 %aux1283, %aux1284
	%aux1286 = load i32, i32* @IdPos10
	%aux1287 = icmp eq i32 %aux1285, %aux1286
	br i1 %aux1287, label %etiq634, label %etiq635
	
	etiq634:
	;___Asignacion___
	%aux1289 = load i32, i32* @_Acum19
	%aux1290 = add i32 0, 1
	%aux1291 = add i32 %aux1289, %aux1290
	store i32 %aux1291, i32* @_Acum19
	br label %etiq638
	
	etiq638:
	;___Asignacion___
	%aux1293 = load i32, i32* @IdPos10
	%aux1294 = add i32 0, 1
	%aux1295 = add i32 %aux1293, %aux1294
	store i32 %aux1295, i32* @IdPos10
	br label %etiq640
	
	etiq640:
	;___Asignacion___
	%aux1297 = load i32, i32* @Pivot10
	%aux1298 = add i32 0, 1
	%aux1299 = sub i32 %aux1297, %aux1298
	store i32 %aux1299, i32* @Pivot10
	br label %etiq643
	
	etiq635:
	;___Asignacion___
	%aux1301 = load i32, i32* @IdPos10
	%aux1302 = add i32 0, 1
	%aux1303 = add i32 %aux1301, %aux1302
	store i32 %aux1303, i32* @IdPos10
	br label %etiq643
	
	etiq643:
	;___IfElse___
	%aux1305 = add i32 0, 103
	%aux1306 = load i32, i32* @Pivot10
	%aux1307 = sub i32 %aux1305, %aux1306
	%aux1308 = load i32, i32* @IdPos10
	%aux1309 = icmp eq i32 %aux1307, %aux1308
	br i1 %aux1309, label %etiq644, label %etiq645
	
	etiq644:
	;___Asignacion___
	%aux1311 = load i32, i32* @_Acum19
	%aux1312 = add i32 0, 1
	%aux1313 = add i32 %aux1311, %aux1312
	store i32 %aux1313, i32* @_Acum19
	br label %etiq648
	
	etiq648:
	;___Asignacion___
	%aux1315 = load i32, i32* @IdPos10
	%aux1316 = add i32 0, 1
	%aux1317 = add i32 %aux1315, %aux1316
	store i32 %aux1317, i32* @IdPos10
	br label %etiq650
	
	etiq650:
	;___Asignacion___
	%aux1319 = load i32, i32* @Pivot10
	%aux1320 = add i32 0, 1
	%aux1321 = sub i32 %aux1319, %aux1320
	store i32 %aux1321, i32* @Pivot10
	br label %etiq653
	
	etiq645:
	;___Asignacion___
	%aux1323 = load i32, i32* @IdPos10
	%aux1324 = add i32 0, 1
	%aux1325 = add i32 %aux1323, %aux1324
	store i32 %aux1325, i32* @IdPos10
	br label %etiq653
	
	etiq653:
	;___IfElse___
	%aux1327 = add i32 0, 103
	%aux1328 = load i32, i32* @Pivot10
	%aux1329 = sub i32 %aux1327, %aux1328
	%aux1330 = load i32, i32* @IdPos10
	%aux1331 = icmp eq i32 %aux1329, %aux1330
	br i1 %aux1331, label %etiq654, label %etiq655
	
	etiq654:
	;___Asignacion___
	%aux1333 = load i32, i32* @_Acum19
	%aux1334 = add i32 0, 1
	%aux1335 = add i32 %aux1333, %aux1334
	store i32 %aux1335, i32* @_Acum19
	br label %etiq658
	
	etiq658:
	;___Asignacion___
	%aux1337 = load i32, i32* @IdPos10
	%aux1338 = add i32 0, 1
	%aux1339 = add i32 %aux1337, %aux1338
	store i32 %aux1339, i32* @IdPos10
	br label %etiq660
	
	etiq660:
	;___Asignacion___
	%aux1341 = load i32, i32* @Pivot10
	%aux1342 = add i32 0, 1
	%aux1343 = sub i32 %aux1341, %aux1342
	store i32 %aux1343, i32* @Pivot10
	br label %etiq663
	
	etiq655:
	;___Asignacion___
	%aux1345 = load i32, i32* @IdPos10
	%aux1346 = add i32 0, 1
	%aux1347 = add i32 %aux1345, %aux1346
	store i32 %aux1347, i32* @IdPos10
	br label %etiq663
	
	etiq663:
	;___IfElse___
	%aux1349 = add i32 0, 103
	%aux1350 = load i32, i32* @Pivot10
	%aux1351 = sub i32 %aux1349, %aux1350
	%aux1352 = load i32, i32* @IdPos10
	%aux1353 = icmp eq i32 %aux1351, %aux1352
	br i1 %aux1353, label %etiq664, label %etiq665
	
	etiq664:
	;___Asignacion___
	%aux1355 = load i32, i32* @_Acum19
	%aux1356 = add i32 0, 1
	%aux1357 = add i32 %aux1355, %aux1356
	store i32 %aux1357, i32* @_Acum19
	br label %etiq668
	
	etiq668:
	;___Asignacion___
	%aux1359 = load i32, i32* @IdPos10
	%aux1360 = add i32 0, 1
	%aux1361 = add i32 %aux1359, %aux1360
	store i32 %aux1361, i32* @IdPos10
	br label %etiq670
	
	etiq670:
	;___Asignacion___
	%aux1363 = load i32, i32* @Pivot10
	%aux1364 = add i32 0, 1
	%aux1365 = sub i32 %aux1363, %aux1364
	store i32 %aux1365, i32* @Pivot10
	br label %etiq673
	
	etiq665:
	;___Asignacion___
	%aux1367 = load i32, i32* @IdPos10
	%aux1368 = add i32 0, 1
	%aux1369 = add i32 %aux1367, %aux1368
	store i32 %aux1369, i32* @IdPos10
	br label %etiq673
	
	etiq673:
	;___IfElse___
	%aux1371 = add i32 0, 103
	%aux1372 = load i32, i32* @Pivot10
	%aux1373 = sub i32 %aux1371, %aux1372
	%aux1374 = load i32, i32* @IdPos10
	%aux1375 = icmp eq i32 %aux1373, %aux1374
	br i1 %aux1375, label %etiq674, label %etiq675
	
	etiq674:
	;___Asignacion___
	%aux1377 = load i32, i32* @_Acum19
	%aux1378 = add i32 0, 1
	%aux1379 = add i32 %aux1377, %aux1378
	store i32 %aux1379, i32* @_Acum19
	br label %etiq678
	
	etiq678:
	;___Asignacion___
	%aux1381 = load i32, i32* @IdPos10
	%aux1382 = add i32 0, 1
	%aux1383 = add i32 %aux1381, %aux1382
	store i32 %aux1383, i32* @IdPos10
	br label %etiq680
	
	etiq680:
	;___Asignacion___
	%aux1385 = load i32, i32* @Pivot10
	%aux1386 = add i32 0, 1
	%aux1387 = sub i32 %aux1385, %aux1386
	store i32 %aux1387, i32* @Pivot10
	br label %etiq683
	
	etiq675:
	;___Asignacion___
	%aux1389 = load i32, i32* @IdPos10
	%aux1390 = add i32 0, 1
	%aux1391 = add i32 %aux1389, %aux1390
	store i32 %aux1391, i32* @IdPos10
	br label %etiq683
	
	etiq683:
	;___IfElse___
	%aux1393 = add i32 0, 103
	%aux1394 = load i32, i32* @Pivot10
	%aux1395 = sub i32 %aux1393, %aux1394
	%aux1396 = load i32, i32* @IdPos10
	%aux1397 = icmp eq i32 %aux1395, %aux1396
	br i1 %aux1397, label %etiq684, label %etiq685
	
	etiq684:
	;___Asignacion___
	%aux1399 = load i32, i32* @_Acum19
	%aux1400 = add i32 0, 1
	%aux1401 = add i32 %aux1399, %aux1400
	store i32 %aux1401, i32* @_Acum19
	br label %etiq688
	
	etiq688:
	;___Asignacion___
	%aux1403 = load i32, i32* @IdPos10
	%aux1404 = add i32 0, 1
	%aux1405 = add i32 %aux1403, %aux1404
	store i32 %aux1405, i32* @IdPos10
	br label %etiq690
	
	etiq690:
	;___Asignacion___
	%aux1407 = load i32, i32* @Pivot10
	%aux1408 = add i32 0, 1
	%aux1409 = sub i32 %aux1407, %aux1408
	store i32 %aux1409, i32* @Pivot10
	br label %etiq693
	
	etiq685:
	;___Asignacion___
	%aux1411 = load i32, i32* @IdPos10
	%aux1412 = add i32 0, 1
	%aux1413 = add i32 %aux1411, %aux1412
	store i32 %aux1413, i32* @IdPos10
	br label %etiq693
	
	etiq693:
	;___IfElse___
	%aux1415 = add i32 0, 103
	%aux1416 = load i32, i32* @Pivot10
	%aux1417 = sub i32 %aux1415, %aux1416
	%aux1418 = load i32, i32* @IdPos10
	%aux1419 = icmp eq i32 %aux1417, %aux1418
	br i1 %aux1419, label %etiq694, label %etiq695
	
	etiq694:
	;___Asignacion___
	%aux1421 = load i32, i32* @_Acum19
	%aux1422 = add i32 0, 1
	%aux1423 = add i32 %aux1421, %aux1422
	store i32 %aux1423, i32* @_Acum19
	br label %etiq698
	
	etiq698:
	;___Asignacion___
	%aux1425 = load i32, i32* @IdPos10
	%aux1426 = add i32 0, 1
	%aux1427 = add i32 %aux1425, %aux1426
	store i32 %aux1427, i32* @IdPos10
	br label %etiq700
	
	etiq700:
	;___Asignacion___
	%aux1429 = load i32, i32* @Pivot10
	%aux1430 = add i32 0, 1
	%aux1431 = sub i32 %aux1429, %aux1430
	store i32 %aux1431, i32* @Pivot10
	br label %etiq703
	
	etiq695:
	;___Asignacion___
	%aux1433 = load i32, i32* @IdPos10
	%aux1434 = add i32 0, 1
	%aux1435 = add i32 %aux1433, %aux1434
	store i32 %aux1435, i32* @IdPos10
	br label %etiq703
	
	etiq703:
	;___IfElse___
	%aux1437 = add i32 0, 103
	%aux1438 = load i32, i32* @Pivot10
	%aux1439 = sub i32 %aux1437, %aux1438
	%aux1440 = load i32, i32* @IdPos10
	%aux1441 = icmp eq i32 %aux1439, %aux1440
	br i1 %aux1441, label %etiq704, label %etiq705
	
	etiq704:
	;___Asignacion___
	%aux1443 = load i32, i32* @_Acum19
	%aux1444 = add i32 0, 1
	%aux1445 = add i32 %aux1443, %aux1444
	store i32 %aux1445, i32* @_Acum19
	br label %etiq708
	
	etiq708:
	;___Asignacion___
	%aux1447 = load i32, i32* @IdPos10
	%aux1448 = add i32 0, 1
	%aux1449 = add i32 %aux1447, %aux1448
	store i32 %aux1449, i32* @IdPos10
	br label %etiq710
	
	etiq710:
	;___Asignacion___
	%aux1451 = load i32, i32* @Pivot10
	%aux1452 = add i32 0, 1
	%aux1453 = sub i32 %aux1451, %aux1452
	store i32 %aux1453, i32* @Pivot10
	br label %etiq713
	
	etiq705:
	;___Asignacion___
	%aux1455 = load i32, i32* @IdPos10
	%aux1456 = add i32 0, 1
	%aux1457 = add i32 %aux1455, %aux1456
	store i32 %aux1457, i32* @IdPos10
	br label %etiq713
	
	etiq713:
	;___IfElse___
	%aux1459 = add i32 0, 103
	%aux1460 = load i32, i32* @Pivot10
	%aux1461 = sub i32 %aux1459, %aux1460
	%aux1462 = load i32, i32* @IdPos10
	%aux1463 = icmp eq i32 %aux1461, %aux1462
	br i1 %aux1463, label %etiq714, label %etiq715
	
	etiq714:
	;___Asignacion___
	%aux1465 = load i32, i32* @_Acum19
	%aux1466 = add i32 0, 1
	%aux1467 = add i32 %aux1465, %aux1466
	store i32 %aux1467, i32* @_Acum19
	br label %etiq718
	
	etiq718:
	;___Asignacion___
	%aux1469 = load i32, i32* @IdPos10
	%aux1470 = add i32 0, 1
	%aux1471 = add i32 %aux1469, %aux1470
	store i32 %aux1471, i32* @IdPos10
	br label %etiq720
	
	etiq720:
	;___Asignacion___
	%aux1473 = load i32, i32* @Pivot10
	%aux1474 = add i32 0, 1
	%aux1475 = sub i32 %aux1473, %aux1474
	store i32 %aux1475, i32* @Pivot10
	br label %etiq723
	
	etiq715:
	;___Asignacion___
	%aux1477 = load i32, i32* @IdPos10
	%aux1478 = add i32 0, 1
	%aux1479 = add i32 %aux1477, %aux1478
	store i32 %aux1479, i32* @IdPos10
	br label %etiq723
	
	etiq723:
	;___IfElse___
	%aux1481 = add i32 0, 103
	%aux1482 = load i32, i32* @Pivot10
	%aux1483 = sub i32 %aux1481, %aux1482
	%aux1484 = load i32, i32* @IdPos10
	%aux1485 = icmp eq i32 %aux1483, %aux1484
	br i1 %aux1485, label %etiq724, label %etiq725
	
	etiq724:
	;___Asignacion___
	%aux1487 = load i32, i32* @_Acum19
	%aux1488 = add i32 0, 1
	%aux1489 = add i32 %aux1487, %aux1488
	store i32 %aux1489, i32* @_Acum19
	br label %etiq728
	
	etiq728:
	;___Asignacion___
	%aux1491 = load i32, i32* @IdPos10
	%aux1492 = add i32 0, 1
	%aux1493 = add i32 %aux1491, %aux1492
	store i32 %aux1493, i32* @IdPos10
	br label %etiq730
	
	etiq730:
	;___Asignacion___
	%aux1495 = load i32, i32* @Pivot10
	%aux1496 = add i32 0, 1
	%aux1497 = sub i32 %aux1495, %aux1496
	store i32 %aux1497, i32* @Pivot10
	br label %etiq733
	
	etiq725:
	;___Asignacion___
	%aux1499 = load i32, i32* @IdPos10
	%aux1500 = add i32 0, 1
	%aux1501 = add i32 %aux1499, %aux1500
	store i32 %aux1501, i32* @IdPos10
	br label %etiq733
	
	etiq733:
	;___IfElse___
	%aux1503 = add i32 0, 103
	%aux1504 = load i32, i32* @Pivot10
	%aux1505 = sub i32 %aux1503, %aux1504
	%aux1506 = load i32, i32* @IdPos10
	%aux1507 = icmp eq i32 %aux1505, %aux1506
	br i1 %aux1507, label %etiq734, label %etiq735
	
	etiq734:
	;___Asignacion___
	%aux1509 = load i32, i32* @_Acum19
	%aux1510 = add i32 0, 1
	%aux1511 = add i32 %aux1509, %aux1510
	store i32 %aux1511, i32* @_Acum19
	br label %etiq738
	
	etiq738:
	;___Asignacion___
	%aux1513 = load i32, i32* @IdPos10
	%aux1514 = add i32 0, 1
	%aux1515 = add i32 %aux1513, %aux1514
	store i32 %aux1515, i32* @IdPos10
	br label %etiq740
	
	etiq740:
	;___Asignacion___
	%aux1517 = load i32, i32* @Pivot10
	%aux1518 = add i32 0, 1
	%aux1519 = sub i32 %aux1517, %aux1518
	store i32 %aux1519, i32* @Pivot10
	br label %etiq743
	
	etiq735:
	;___Asignacion___
	%aux1521 = load i32, i32* @IdPos10
	%aux1522 = add i32 0, 1
	%aux1523 = add i32 %aux1521, %aux1522
	store i32 %aux1523, i32* @IdPos10
	br label %etiq743
	
	etiq743:
	;___IfElse___
	%aux1525 = add i32 0, 103
	%aux1526 = load i32, i32* @Pivot10
	%aux1527 = sub i32 %aux1525, %aux1526
	%aux1528 = load i32, i32* @IdPos10
	%aux1529 = icmp eq i32 %aux1527, %aux1528
	br i1 %aux1529, label %etiq744, label %etiq745
	
	etiq744:
	;___Asignacion___
	%aux1531 = load i32, i32* @_Acum19
	%aux1532 = add i32 0, 1
	%aux1533 = add i32 %aux1531, %aux1532
	store i32 %aux1533, i32* @_Acum19
	br label %etiq748
	
	etiq748:
	;___Asignacion___
	%aux1535 = load i32, i32* @IdPos10
	%aux1536 = add i32 0, 1
	%aux1537 = add i32 %aux1535, %aux1536
	store i32 %aux1537, i32* @IdPos10
	br label %etiq750
	
	etiq750:
	;___Asignacion___
	%aux1539 = load i32, i32* @Pivot10
	%aux1540 = add i32 0, 1
	%aux1541 = sub i32 %aux1539, %aux1540
	store i32 %aux1541, i32* @Pivot10
	br label %etiq753
	
	etiq745:
	;___Asignacion___
	%aux1543 = load i32, i32* @IdPos10
	%aux1544 = add i32 0, 1
	%aux1545 = add i32 %aux1543, %aux1544
	store i32 %aux1545, i32* @IdPos10
	br label %etiq753
	
	etiq753:
	;___IfElse___
	%aux1547 = add i32 0, 103
	%aux1548 = load i32, i32* @Pivot10
	%aux1549 = sub i32 %aux1547, %aux1548
	%aux1550 = load i32, i32* @IdPos10
	%aux1551 = icmp eq i32 %aux1549, %aux1550
	br i1 %aux1551, label %etiq754, label %etiq755
	
	etiq754:
	;___Asignacion___
	%aux1553 = load i32, i32* @_Acum19
	%aux1554 = add i32 0, 1
	%aux1555 = add i32 %aux1553, %aux1554
	store i32 %aux1555, i32* @_Acum19
	br label %etiq758
	
	etiq758:
	;___Asignacion___
	%aux1557 = load i32, i32* @IdPos10
	%aux1558 = add i32 0, 1
	%aux1559 = add i32 %aux1557, %aux1558
	store i32 %aux1559, i32* @IdPos10
	br label %etiq760
	
	etiq760:
	;___Asignacion___
	%aux1561 = load i32, i32* @Pivot10
	%aux1562 = add i32 0, 1
	%aux1563 = sub i32 %aux1561, %aux1562
	store i32 %aux1563, i32* @Pivot10
	br label %etiq763
	
	etiq755:
	;___Asignacion___
	%aux1565 = load i32, i32* @IdPos10
	%aux1566 = add i32 0, 1
	%aux1567 = add i32 %aux1565, %aux1566
	store i32 %aux1567, i32* @IdPos10
	br label %etiq763
	
	etiq763:
	;___IfElse___
	%aux1569 = add i32 0, 103
	%aux1570 = load i32, i32* @Pivot10
	%aux1571 = sub i32 %aux1569, %aux1570
	%aux1572 = load i32, i32* @IdPos10
	%aux1573 = icmp eq i32 %aux1571, %aux1572
	br i1 %aux1573, label %etiq764, label %etiq765
	
	etiq764:
	;___Asignacion___
	%aux1575 = load i32, i32* @_Acum19
	%aux1576 = add i32 0, 1
	%aux1577 = add i32 %aux1575, %aux1576
	store i32 %aux1577, i32* @_Acum19
	br label %etiq768
	
	etiq768:
	;___Asignacion___
	%aux1579 = load i32, i32* @IdPos10
	%aux1580 = add i32 0, 1
	%aux1581 = add i32 %aux1579, %aux1580
	store i32 %aux1581, i32* @IdPos10
	br label %etiq770
	
	etiq770:
	;___Asignacion___
	%aux1583 = load i32, i32* @Pivot10
	%aux1584 = add i32 0, 1
	%aux1585 = sub i32 %aux1583, %aux1584
	store i32 %aux1585, i32* @Pivot10
	br label %etiq773
	
	etiq765:
	;___Asignacion___
	%aux1587 = load i32, i32* @IdPos10
	%aux1588 = add i32 0, 1
	%aux1589 = add i32 %aux1587, %aux1588
	store i32 %aux1589, i32* @IdPos10
	br label %etiq773
	
	etiq773:
	;___IfElse___
	%aux1591 = add i32 0, 103
	%aux1592 = load i32, i32* @Pivot10
	%aux1593 = sub i32 %aux1591, %aux1592
	%aux1594 = load i32, i32* @IdPos10
	%aux1595 = icmp eq i32 %aux1593, %aux1594
	br i1 %aux1595, label %etiq774, label %etiq775
	
	etiq774:
	;___Asignacion___
	%aux1597 = load i32, i32* @_Acum19
	%aux1598 = add i32 0, 1
	%aux1599 = add i32 %aux1597, %aux1598
	store i32 %aux1599, i32* @_Acum19
	br label %etiq778
	
	etiq778:
	;___Asignacion___
	%aux1601 = load i32, i32* @IdPos10
	%aux1602 = add i32 0, 1
	%aux1603 = add i32 %aux1601, %aux1602
	store i32 %aux1603, i32* @IdPos10
	br label %etiq780
	
	etiq780:
	;___Asignacion___
	%aux1605 = load i32, i32* @Pivot10
	%aux1606 = add i32 0, 1
	%aux1607 = sub i32 %aux1605, %aux1606
	store i32 %aux1607, i32* @Pivot10
	br label %etiq783
	
	etiq775:
	;___Asignacion___
	%aux1609 = load i32, i32* @IdPos10
	%aux1610 = add i32 0, 1
	%aux1611 = add i32 %aux1609, %aux1610
	store i32 %aux1611, i32* @IdPos10
	br label %etiq783
	
	etiq783:
	;___IfElse___
	%aux1613 = add i32 0, 103
	%aux1614 = load i32, i32* @Pivot10
	%aux1615 = sub i32 %aux1613, %aux1614
	%aux1616 = load i32, i32* @IdPos10
	%aux1617 = icmp eq i32 %aux1615, %aux1616
	br i1 %aux1617, label %etiq784, label %etiq785
	
	etiq784:
	;___Asignacion___
	%aux1619 = load i32, i32* @_Acum19
	%aux1620 = add i32 0, 1
	%aux1621 = add i32 %aux1619, %aux1620
	store i32 %aux1621, i32* @_Acum19
	br label %etiq788
	
	etiq788:
	;___Asignacion___
	%aux1623 = load i32, i32* @IdPos10
	%aux1624 = add i32 0, 1
	%aux1625 = add i32 %aux1623, %aux1624
	store i32 %aux1625, i32* @IdPos10
	br label %etiq790
	
	etiq790:
	;___Asignacion___
	%aux1627 = load i32, i32* @Pivot10
	%aux1628 = add i32 0, 1
	%aux1629 = sub i32 %aux1627, %aux1628
	store i32 %aux1629, i32* @Pivot10
	br label %etiq793
	
	etiq785:
	;___Asignacion___
	%aux1631 = load i32, i32* @IdPos10
	%aux1632 = add i32 0, 1
	%aux1633 = add i32 %aux1631, %aux1632
	store i32 %aux1633, i32* @IdPos10
	br label %etiq793
	
	etiq793:
	;___IfElse___
	%aux1635 = add i32 0, 103
	%aux1636 = load i32, i32* @Pivot10
	%aux1637 = sub i32 %aux1635, %aux1636
	%aux1638 = load i32, i32* @IdPos10
	%aux1639 = icmp eq i32 %aux1637, %aux1638
	br i1 %aux1639, label %etiq794, label %etiq795
	
	etiq794:
	;___Asignacion___
	%aux1641 = load i32, i32* @_Acum19
	%aux1642 = add i32 0, 1
	%aux1643 = add i32 %aux1641, %aux1642
	store i32 %aux1643, i32* @_Acum19
	br label %etiq798
	
	etiq798:
	;___Asignacion___
	%aux1645 = load i32, i32* @IdPos10
	%aux1646 = add i32 0, 1
	%aux1647 = add i32 %aux1645, %aux1646
	store i32 %aux1647, i32* @IdPos10
	br label %etiq800
	
	etiq800:
	;___Asignacion___
	%aux1649 = load i32, i32* @Pivot10
	%aux1650 = add i32 0, 1
	%aux1651 = sub i32 %aux1649, %aux1650
	store i32 %aux1651, i32* @Pivot10
	br label %etiq803
	
	etiq795:
	;___Asignacion___
	%aux1653 = load i32, i32* @IdPos10
	%aux1654 = add i32 0, 1
	%aux1655 = add i32 %aux1653, %aux1654
	store i32 %aux1655, i32* @IdPos10
	br label %etiq803
	
	etiq803:
	;___IfElse___
	%aux1657 = add i32 0, 103
	%aux1658 = load i32, i32* @Pivot10
	%aux1659 = sub i32 %aux1657, %aux1658
	%aux1660 = load i32, i32* @IdPos10
	%aux1661 = icmp eq i32 %aux1659, %aux1660
	br i1 %aux1661, label %etiq804, label %etiq805
	
	etiq804:
	;___Asignacion___
	%aux1663 = load i32, i32* @_Acum19
	%aux1664 = add i32 0, 1
	%aux1665 = add i32 %aux1663, %aux1664
	store i32 %aux1665, i32* @_Acum19
	br label %etiq808
	
	etiq808:
	;___Asignacion___
	%aux1667 = load i32, i32* @IdPos10
	%aux1668 = add i32 0, 1
	%aux1669 = add i32 %aux1667, %aux1668
	store i32 %aux1669, i32* @IdPos10
	br label %etiq810
	
	etiq810:
	;___Asignacion___
	%aux1671 = load i32, i32* @Pivot10
	%aux1672 = add i32 0, 1
	%aux1673 = sub i32 %aux1671, %aux1672
	store i32 %aux1673, i32* @Pivot10
	br label %etiq813
	
	etiq805:
	;___Asignacion___
	%aux1675 = load i32, i32* @IdPos10
	%aux1676 = add i32 0, 1
	%aux1677 = add i32 %aux1675, %aux1676
	store i32 %aux1677, i32* @IdPos10
	br label %etiq813
	
	etiq813:
	;___IfElse___
	%aux1679 = add i32 0, 103
	%aux1680 = load i32, i32* @Pivot10
	%aux1681 = sub i32 %aux1679, %aux1680
	%aux1682 = load i32, i32* @IdPos10
	%aux1683 = icmp eq i32 %aux1681, %aux1682
	br i1 %aux1683, label %etiq814, label %etiq815
	
	etiq814:
	;___Asignacion___
	%aux1685 = load i32, i32* @_Acum19
	%aux1686 = add i32 0, 1
	%aux1687 = add i32 %aux1685, %aux1686
	store i32 %aux1687, i32* @_Acum19
	br label %etiq818
	
	etiq818:
	;___Asignacion___
	%aux1689 = load i32, i32* @IdPos10
	%aux1690 = add i32 0, 1
	%aux1691 = add i32 %aux1689, %aux1690
	store i32 %aux1691, i32* @IdPos10
	br label %etiq820
	
	etiq820:
	;___Asignacion___
	%aux1693 = load i32, i32* @Pivot10
	%aux1694 = add i32 0, 1
	%aux1695 = sub i32 %aux1693, %aux1694
	store i32 %aux1695, i32* @Pivot10
	br label %etiq823
	
	etiq815:
	;___Asignacion___
	%aux1697 = load i32, i32* @IdPos10
	%aux1698 = add i32 0, 1
	%aux1699 = add i32 %aux1697, %aux1698
	store i32 %aux1699, i32* @IdPos10
	br label %etiq823
	
	etiq823:
	;___IfElse___
	%aux1701 = add i32 0, 103
	%aux1702 = load i32, i32* @Pivot10
	%aux1703 = sub i32 %aux1701, %aux1702
	%aux1704 = load i32, i32* @IdPos10
	%aux1705 = icmp eq i32 %aux1703, %aux1704
	br i1 %aux1705, label %etiq824, label %etiq825
	
	etiq824:
	;___Asignacion___
	%aux1707 = load i32, i32* @_Acum19
	%aux1708 = add i32 0, 1
	%aux1709 = add i32 %aux1707, %aux1708
	store i32 %aux1709, i32* @_Acum19
	br label %etiq828
	
	etiq828:
	;___Asignacion___
	%aux1711 = load i32, i32* @IdPos10
	%aux1712 = add i32 0, 1
	%aux1713 = add i32 %aux1711, %aux1712
	store i32 %aux1713, i32* @IdPos10
	br label %etiq830
	
	etiq830:
	;___Asignacion___
	%aux1715 = load i32, i32* @Pivot10
	%aux1716 = add i32 0, 1
	%aux1717 = sub i32 %aux1715, %aux1716
	store i32 %aux1717, i32* @Pivot10
	br label %etiq833
	
	etiq825:
	;___Asignacion___
	%aux1719 = load i32, i32* @IdPos10
	%aux1720 = add i32 0, 1
	%aux1721 = add i32 %aux1719, %aux1720
	store i32 %aux1721, i32* @IdPos10
	br label %etiq833
	
	etiq833:
	;___IfElse___
	%aux1723 = add i32 0, 103
	%aux1724 = load i32, i32* @Pivot10
	%aux1725 = sub i32 %aux1723, %aux1724
	%aux1726 = load i32, i32* @IdPos10
	%aux1727 = icmp eq i32 %aux1725, %aux1726
	br i1 %aux1727, label %etiq834, label %etiq835
	
	etiq834:
	;___Asignacion___
	%aux1729 = load i32, i32* @_Acum19
	%aux1730 = add i32 0, 1
	%aux1731 = add i32 %aux1729, %aux1730
	store i32 %aux1731, i32* @_Acum19
	br label %etiq838
	
	etiq838:
	;___Asignacion___
	%aux1733 = load i32, i32* @IdPos10
	%aux1734 = add i32 0, 1
	%aux1735 = add i32 %aux1733, %aux1734
	store i32 %aux1735, i32* @IdPos10
	br label %etiq840
	
	etiq840:
	;___Asignacion___
	%aux1737 = load i32, i32* @Pivot10
	%aux1738 = add i32 0, 1
	%aux1739 = sub i32 %aux1737, %aux1738
	store i32 %aux1739, i32* @Pivot10
	br label %etiq843
	
	etiq835:
	;___Asignacion___
	%aux1741 = load i32, i32* @IdPos10
	%aux1742 = add i32 0, 1
	%aux1743 = add i32 %aux1741, %aux1742
	store i32 %aux1743, i32* @IdPos10
	br label %etiq843
	
	etiq843:
	;___IfElse___
	%aux1745 = add i32 0, 103
	%aux1746 = load i32, i32* @Pivot10
	%aux1747 = sub i32 %aux1745, %aux1746
	%aux1748 = load i32, i32* @IdPos10
	%aux1749 = icmp eq i32 %aux1747, %aux1748
	br i1 %aux1749, label %etiq844, label %etiq845
	
	etiq844:
	;___Asignacion___
	%aux1751 = load i32, i32* @_Acum19
	%aux1752 = add i32 0, 1
	%aux1753 = add i32 %aux1751, %aux1752
	store i32 %aux1753, i32* @_Acum19
	br label %etiq848
	
	etiq848:
	;___Asignacion___
	%aux1755 = load i32, i32* @IdPos10
	%aux1756 = add i32 0, 1
	%aux1757 = add i32 %aux1755, %aux1756
	store i32 %aux1757, i32* @IdPos10
	br label %etiq850
	
	etiq850:
	;___Asignacion___
	%aux1759 = load i32, i32* @Pivot10
	%aux1760 = add i32 0, 1
	%aux1761 = sub i32 %aux1759, %aux1760
	store i32 %aux1761, i32* @Pivot10
	br label %etiq853
	
	etiq845:
	;___Asignacion___
	%aux1763 = load i32, i32* @IdPos10
	%aux1764 = add i32 0, 1
	%aux1765 = add i32 %aux1763, %aux1764
	store i32 %aux1765, i32* @IdPos10
	br label %etiq853
	
	etiq853:
	;___IfElse___
	%aux1767 = add i32 0, 103
	%aux1768 = load i32, i32* @Pivot10
	%aux1769 = sub i32 %aux1767, %aux1768
	%aux1770 = load i32, i32* @IdPos10
	%aux1771 = icmp eq i32 %aux1769, %aux1770
	br i1 %aux1771, label %etiq854, label %etiq855
	
	etiq854:
	;___Asignacion___
	%aux1773 = load i32, i32* @_Acum19
	%aux1774 = add i32 0, 1
	%aux1775 = add i32 %aux1773, %aux1774
	store i32 %aux1775, i32* @_Acum19
	br label %etiq858
	
	etiq858:
	;___Asignacion___
	%aux1777 = load i32, i32* @IdPos10
	%aux1778 = add i32 0, 1
	%aux1779 = add i32 %aux1777, %aux1778
	store i32 %aux1779, i32* @IdPos10
	br label %etiq860
	
	etiq860:
	;___Asignacion___
	%aux1781 = load i32, i32* @Pivot10
	%aux1782 = add i32 0, 1
	%aux1783 = sub i32 %aux1781, %aux1782
	store i32 %aux1783, i32* @Pivot10
	br label %etiq863
	
	etiq855:
	;___Asignacion___
	%aux1785 = load i32, i32* @IdPos10
	%aux1786 = add i32 0, 1
	%aux1787 = add i32 %aux1785, %aux1786
	store i32 %aux1787, i32* @IdPos10
	br label %etiq863
	
	etiq863:
	;___IfElse___
	%aux1789 = add i32 0, 103
	%aux1790 = load i32, i32* @Pivot10
	%aux1791 = sub i32 %aux1789, %aux1790
	%aux1792 = load i32, i32* @IdPos10
	%aux1793 = icmp eq i32 %aux1791, %aux1792
	br i1 %aux1793, label %etiq864, label %etiq865
	
	etiq864:
	;___Asignacion___
	%aux1795 = load i32, i32* @_Acum19
	%aux1796 = add i32 0, 1
	%aux1797 = add i32 %aux1795, %aux1796
	store i32 %aux1797, i32* @_Acum19
	br label %etiq868
	
	etiq868:
	;___Asignacion___
	%aux1799 = load i32, i32* @IdPos10
	%aux1800 = add i32 0, 1
	%aux1801 = add i32 %aux1799, %aux1800
	store i32 %aux1801, i32* @IdPos10
	br label %etiq870
	
	etiq870:
	;___Asignacion___
	%aux1803 = load i32, i32* @Pivot10
	%aux1804 = add i32 0, 1
	%aux1805 = sub i32 %aux1803, %aux1804
	store i32 %aux1805, i32* @Pivot10
	br label %etiq873
	
	etiq865:
	;___Asignacion___
	%aux1807 = load i32, i32* @IdPos10
	%aux1808 = add i32 0, 1
	%aux1809 = add i32 %aux1807, %aux1808
	store i32 %aux1809, i32* @IdPos10
	br label %etiq873
	
	etiq873:
	;___IfElse___
	%aux1811 = add i32 0, 103
	%aux1812 = load i32, i32* @Pivot10
	%aux1813 = sub i32 %aux1811, %aux1812
	%aux1814 = load i32, i32* @IdPos10
	%aux1815 = icmp eq i32 %aux1813, %aux1814
	br i1 %aux1815, label %etiq874, label %etiq875
	
	etiq874:
	;___Asignacion___
	%aux1817 = load i32, i32* @_Acum19
	%aux1818 = add i32 0, 1
	%aux1819 = add i32 %aux1817, %aux1818
	store i32 %aux1819, i32* @_Acum19
	br label %etiq878
	
	etiq878:
	;___Asignacion___
	%aux1821 = load i32, i32* @IdPos10
	%aux1822 = add i32 0, 1
	%aux1823 = add i32 %aux1821, %aux1822
	store i32 %aux1823, i32* @IdPos10
	br label %etiq880
	
	etiq880:
	;___Asignacion___
	%aux1825 = load i32, i32* @Pivot10
	%aux1826 = add i32 0, 1
	%aux1827 = sub i32 %aux1825, %aux1826
	store i32 %aux1827, i32* @Pivot10
	br label %etiq883
	
	etiq875:
	;___Asignacion___
	%aux1829 = load i32, i32* @IdPos10
	%aux1830 = add i32 0, 1
	%aux1831 = add i32 %aux1829, %aux1830
	store i32 %aux1831, i32* @IdPos10
	br label %etiq883
	
	etiq883:
	;___IfElse___
	%aux1833 = add i32 0, 103
	%aux1834 = load i32, i32* @Pivot10
	%aux1835 = sub i32 %aux1833, %aux1834
	%aux1836 = load i32, i32* @IdPos10
	%aux1837 = icmp eq i32 %aux1835, %aux1836
	br i1 %aux1837, label %etiq884, label %etiq885
	
	etiq884:
	;___Asignacion___
	%aux1839 = load i32, i32* @_Acum19
	%aux1840 = add i32 0, 1
	%aux1841 = add i32 %aux1839, %aux1840
	store i32 %aux1841, i32* @_Acum19
	br label %etiq888
	
	etiq888:
	;___Asignacion___
	%aux1843 = load i32, i32* @IdPos10
	%aux1844 = add i32 0, 1
	%aux1845 = add i32 %aux1843, %aux1844
	store i32 %aux1845, i32* @IdPos10
	br label %etiq890
	
	etiq890:
	;___Asignacion___
	%aux1847 = load i32, i32* @Pivot10
	%aux1848 = add i32 0, 1
	%aux1849 = sub i32 %aux1847, %aux1848
	store i32 %aux1849, i32* @Pivot10
	br label %etiq893
	
	etiq885:
	;___Asignacion___
	%aux1851 = load i32, i32* @IdPos10
	%aux1852 = add i32 0, 1
	%aux1853 = add i32 %aux1851, %aux1852
	store i32 %aux1853, i32* @IdPos10
	br label %etiq893
	
	etiq893:
	;___IfElse___
	%aux1855 = add i32 0, 103
	%aux1856 = load i32, i32* @Pivot10
	%aux1857 = sub i32 %aux1855, %aux1856
	%aux1858 = load i32, i32* @IdPos10
	%aux1859 = icmp eq i32 %aux1857, %aux1858
	br i1 %aux1859, label %etiq894, label %etiq895
	
	etiq894:
	;___Asignacion___
	%aux1861 = load i32, i32* @_Acum19
	%aux1862 = add i32 0, 1
	%aux1863 = add i32 %aux1861, %aux1862
	store i32 %aux1863, i32* @_Acum19
	br label %etiq898
	
	etiq898:
	;___Asignacion___
	%aux1865 = load i32, i32* @IdPos10
	%aux1866 = add i32 0, 1
	%aux1867 = add i32 %aux1865, %aux1866
	store i32 %aux1867, i32* @IdPos10
	br label %etiq900
	
	etiq900:
	;___Asignacion___
	%aux1869 = load i32, i32* @Pivot10
	%aux1870 = add i32 0, 1
	%aux1871 = sub i32 %aux1869, %aux1870
	store i32 %aux1871, i32* @Pivot10
	br label %etiq903
	
	etiq895:
	;___Asignacion___
	%aux1873 = load i32, i32* @IdPos10
	%aux1874 = add i32 0, 1
	%aux1875 = add i32 %aux1873, %aux1874
	store i32 %aux1875, i32* @IdPos10
	br label %etiq903
	
	etiq903:
	;___IfElse___
	%aux1877 = add i32 0, 103
	%aux1878 = load i32, i32* @Pivot10
	%aux1879 = sub i32 %aux1877, %aux1878
	%aux1880 = load i32, i32* @IdPos10
	%aux1881 = icmp eq i32 %aux1879, %aux1880
	br i1 %aux1881, label %etiq904, label %etiq905
	
	etiq904:
	;___Asignacion___
	%aux1883 = load i32, i32* @_Acum19
	%aux1884 = add i32 0, 1
	%aux1885 = add i32 %aux1883, %aux1884
	store i32 %aux1885, i32* @_Acum19
	br label %etiq908
	
	etiq908:
	;___Asignacion___
	%aux1887 = load i32, i32* @IdPos10
	%aux1888 = add i32 0, 1
	%aux1889 = add i32 %aux1887, %aux1888
	store i32 %aux1889, i32* @IdPos10
	br label %etiq910
	
	etiq910:
	;___Asignacion___
	%aux1891 = load i32, i32* @Pivot10
	%aux1892 = add i32 0, 1
	%aux1893 = sub i32 %aux1891, %aux1892
	store i32 %aux1893, i32* @Pivot10
	br label %etiq913
	
	etiq905:
	;___Asignacion___
	%aux1895 = load i32, i32* @IdPos10
	%aux1896 = add i32 0, 1
	%aux1897 = add i32 %aux1895, %aux1896
	store i32 %aux1897, i32* @IdPos10
	br label %etiq913
	
	etiq913:
	;___IfElse___
	%aux1899 = add i32 0, 103
	%aux1900 = load i32, i32* @Pivot10
	%aux1901 = sub i32 %aux1899, %aux1900
	%aux1902 = load i32, i32* @IdPos10
	%aux1903 = icmp eq i32 %aux1901, %aux1902
	br i1 %aux1903, label %etiq914, label %etiq915
	
	etiq914:
	;___Asignacion___
	%aux1905 = load i32, i32* @_Acum19
	%aux1906 = add i32 0, 1
	%aux1907 = add i32 %aux1905, %aux1906
	store i32 %aux1907, i32* @_Acum19
	br label %etiq918
	
	etiq918:
	;___Asignacion___
	%aux1909 = load i32, i32* @IdPos10
	%aux1910 = add i32 0, 1
	%aux1911 = add i32 %aux1909, %aux1910
	store i32 %aux1911, i32* @IdPos10
	br label %etiq920
	
	etiq920:
	;___Asignacion___
	%aux1913 = load i32, i32* @Pivot10
	%aux1914 = add i32 0, 1
	%aux1915 = sub i32 %aux1913, %aux1914
	store i32 %aux1915, i32* @Pivot10
	br label %etiq923
	
	etiq915:
	;___Asignacion___
	%aux1917 = load i32, i32* @IdPos10
	%aux1918 = add i32 0, 1
	%aux1919 = add i32 %aux1917, %aux1918
	store i32 %aux1919, i32* @IdPos10
	br label %etiq923
	
	etiq923:
	;___IfElse___
	%aux1921 = add i32 0, 103
	%aux1922 = load i32, i32* @Pivot10
	%aux1923 = sub i32 %aux1921, %aux1922
	%aux1924 = load i32, i32* @IdPos10
	%aux1925 = icmp eq i32 %aux1923, %aux1924
	br i1 %aux1925, label %etiq924, label %etiq925
	
	etiq924:
	;___Asignacion___
	%aux1927 = load i32, i32* @_Acum19
	%aux1928 = add i32 0, 1
	%aux1929 = add i32 %aux1927, %aux1928
	store i32 %aux1929, i32* @_Acum19
	br label %etiq928
	
	etiq928:
	;___Asignacion___
	%aux1931 = load i32, i32* @IdPos10
	%aux1932 = add i32 0, 1
	%aux1933 = add i32 %aux1931, %aux1932
	store i32 %aux1933, i32* @IdPos10
	br label %etiq930
	
	etiq930:
	;___Asignacion___
	%aux1935 = load i32, i32* @Pivot10
	%aux1936 = add i32 0, 1
	%aux1937 = sub i32 %aux1935, %aux1936
	store i32 %aux1937, i32* @Pivot10
	br label %etiq933
	
	etiq925:
	;___Asignacion___
	%aux1939 = load i32, i32* @IdPos10
	%aux1940 = add i32 0, 1
	%aux1941 = add i32 %aux1939, %aux1940
	store i32 %aux1941, i32* @IdPos10
	br label %etiq933
	
	etiq933:
	;___IfElse___
	%aux1943 = add i32 0, 103
	%aux1944 = load i32, i32* @Pivot10
	%aux1945 = sub i32 %aux1943, %aux1944
	%aux1946 = load i32, i32* @IdPos10
	%aux1947 = icmp eq i32 %aux1945, %aux1946
	br i1 %aux1947, label %etiq934, label %etiq935
	
	etiq934:
	;___Asignacion___
	%aux1949 = load i32, i32* @_Acum19
	%aux1950 = add i32 0, 1
	%aux1951 = add i32 %aux1949, %aux1950
	store i32 %aux1951, i32* @_Acum19
	br label %etiq938
	
	etiq938:
	;___Asignacion___
	%aux1953 = load i32, i32* @IdPos10
	%aux1954 = add i32 0, 1
	%aux1955 = add i32 %aux1953, %aux1954
	store i32 %aux1955, i32* @IdPos10
	br label %etiq940
	
	etiq940:
	;___Asignacion___
	%aux1957 = load i32, i32* @Pivot10
	%aux1958 = add i32 0, 1
	%aux1959 = sub i32 %aux1957, %aux1958
	store i32 %aux1959, i32* @Pivot10
	br label %etiq943
	
	etiq935:
	;___Asignacion___
	%aux1961 = load i32, i32* @IdPos10
	%aux1962 = add i32 0, 1
	%aux1963 = add i32 %aux1961, %aux1962
	store i32 %aux1963, i32* @IdPos10
	br label %etiq943
	
	etiq943:
	;___IfElse___
	%aux1965 = add i32 0, 103
	%aux1966 = load i32, i32* @Pivot10
	%aux1967 = sub i32 %aux1965, %aux1966
	%aux1968 = load i32, i32* @IdPos10
	%aux1969 = icmp eq i32 %aux1967, %aux1968
	br i1 %aux1969, label %etiq944, label %etiq945
	
	etiq944:
	;___Asignacion___
	%aux1971 = load i32, i32* @_Acum19
	%aux1972 = add i32 0, 1
	%aux1973 = add i32 %aux1971, %aux1972
	store i32 %aux1973, i32* @_Acum19
	br label %etiq948
	
	etiq948:
	;___Asignacion___
	%aux1975 = load i32, i32* @IdPos10
	%aux1976 = add i32 0, 1
	%aux1977 = add i32 %aux1975, %aux1976
	store i32 %aux1977, i32* @IdPos10
	br label %etiq950
	
	etiq950:
	;___Asignacion___
	%aux1979 = load i32, i32* @Pivot10
	%aux1980 = add i32 0, 1
	%aux1981 = sub i32 %aux1979, %aux1980
	store i32 %aux1981, i32* @Pivot10
	br label %etiq953
	
	etiq945:
	;___Asignacion___
	%aux1983 = load i32, i32* @IdPos10
	%aux1984 = add i32 0, 1
	%aux1985 = add i32 %aux1983, %aux1984
	store i32 %aux1985, i32* @IdPos10
	br label %etiq953
	
	etiq953:
	;___IfElse___
	%aux1987 = add i32 0, 103
	%aux1988 = load i32, i32* @Pivot10
	%aux1989 = sub i32 %aux1987, %aux1988
	%aux1990 = load i32, i32* @IdPos10
	%aux1991 = icmp eq i32 %aux1989, %aux1990
	br i1 %aux1991, label %etiq954, label %etiq955
	
	etiq954:
	;___Asignacion___
	%aux1993 = load i32, i32* @_Acum19
	%aux1994 = add i32 0, 1
	%aux1995 = add i32 %aux1993, %aux1994
	store i32 %aux1995, i32* @_Acum19
	br label %etiq958
	
	etiq958:
	;___Asignacion___
	%aux1997 = load i32, i32* @IdPos10
	%aux1998 = add i32 0, 1
	%aux1999 = add i32 %aux1997, %aux1998
	store i32 %aux1999, i32* @IdPos10
	br label %etiq960
	
	etiq960:
	;___Asignacion___
	%aux2001 = load i32, i32* @Pivot10
	%aux2002 = add i32 0, 1
	%aux2003 = sub i32 %aux2001, %aux2002
	store i32 %aux2003, i32* @Pivot10
	br label %etiq963
	
	etiq955:
	;___Asignacion___
	%aux2005 = load i32, i32* @IdPos10
	%aux2006 = add i32 0, 1
	%aux2007 = add i32 %aux2005, %aux2006
	store i32 %aux2007, i32* @IdPos10
	br label %etiq963
	
	etiq963:
	;___IfElse___
	%aux2009 = add i32 0, 103
	%aux2010 = load i32, i32* @Pivot10
	%aux2011 = sub i32 %aux2009, %aux2010
	%aux2012 = load i32, i32* @IdPos10
	%aux2013 = icmp eq i32 %aux2011, %aux2012
	br i1 %aux2013, label %etiq964, label %etiq965
	
	etiq964:
	;___Asignacion___
	%aux2015 = load i32, i32* @_Acum19
	%aux2016 = add i32 0, 1
	%aux2017 = add i32 %aux2015, %aux2016
	store i32 %aux2017, i32* @_Acum19
	br label %etiq968
	
	etiq968:
	;___Asignacion___
	%aux2019 = load i32, i32* @IdPos10
	%aux2020 = add i32 0, 1
	%aux2021 = add i32 %aux2019, %aux2020
	store i32 %aux2021, i32* @IdPos10
	br label %etiq970
	
	etiq970:
	;___Asignacion___
	%aux2023 = load i32, i32* @Pivot10
	%aux2024 = add i32 0, 1
	%aux2025 = sub i32 %aux2023, %aux2024
	store i32 %aux2025, i32* @Pivot10
	br label %etiq973
	
	etiq965:
	;___Asignacion___
	%aux2027 = load i32, i32* @IdPos10
	%aux2028 = add i32 0, 1
	%aux2029 = add i32 %aux2027, %aux2028
	store i32 %aux2029, i32* @IdPos10
	br label %etiq973
	
	etiq973:
	;___IfElse___
	%aux2031 = add i32 0, 103
	%aux2032 = load i32, i32* @Pivot10
	%aux2033 = sub i32 %aux2031, %aux2032
	%aux2034 = load i32, i32* @IdPos10
	%aux2035 = icmp eq i32 %aux2033, %aux2034
	br i1 %aux2035, label %etiq974, label %etiq975
	
	etiq974:
	;___Asignacion___
	%aux2037 = load i32, i32* @_Acum19
	%aux2038 = add i32 0, 1
	%aux2039 = add i32 %aux2037, %aux2038
	store i32 %aux2039, i32* @_Acum19
	br label %etiq978
	
	etiq978:
	;___Asignacion___
	%aux2041 = load i32, i32* @IdPos10
	%aux2042 = add i32 0, 1
	%aux2043 = add i32 %aux2041, %aux2042
	store i32 %aux2043, i32* @IdPos10
	br label %etiq980
	
	etiq980:
	;___Asignacion___
	%aux2045 = load i32, i32* @Pivot10
	%aux2046 = add i32 0, 1
	%aux2047 = sub i32 %aux2045, %aux2046
	store i32 %aux2047, i32* @Pivot10
	br label %etiq983
	
	etiq975:
	;___Asignacion___
	%aux2049 = load i32, i32* @IdPos10
	%aux2050 = add i32 0, 1
	%aux2051 = add i32 %aux2049, %aux2050
	store i32 %aux2051, i32* @IdPos10
	br label %etiq983
	
	etiq983:
	;___IfElse___
	%aux2053 = add i32 0, 103
	%aux2054 = load i32, i32* @Pivot10
	%aux2055 = sub i32 %aux2053, %aux2054
	%aux2056 = load i32, i32* @IdPos10
	%aux2057 = icmp eq i32 %aux2055, %aux2056
	br i1 %aux2057, label %etiq984, label %etiq985
	
	etiq984:
	;___Asignacion___
	%aux2059 = load i32, i32* @_Acum19
	%aux2060 = add i32 0, 1
	%aux2061 = add i32 %aux2059, %aux2060
	store i32 %aux2061, i32* @_Acum19
	br label %etiq988
	
	etiq988:
	;___Asignacion___
	%aux2063 = load i32, i32* @IdPos10
	%aux2064 = add i32 0, 1
	%aux2065 = add i32 %aux2063, %aux2064
	store i32 %aux2065, i32* @IdPos10
	br label %etiq990
	
	etiq990:
	;___Asignacion___
	%aux2067 = load i32, i32* @Pivot10
	%aux2068 = add i32 0, 1
	%aux2069 = sub i32 %aux2067, %aux2068
	store i32 %aux2069, i32* @Pivot10
	br label %etiq993
	
	etiq985:
	;___Asignacion___
	%aux2071 = load i32, i32* @IdPos10
	%aux2072 = add i32 0, 1
	%aux2073 = add i32 %aux2071, %aux2072
	store i32 %aux2073, i32* @IdPos10
	br label %etiq993
	
	etiq993:
	;___IfElse___
	%aux2075 = add i32 0, 103
	%aux2076 = load i32, i32* @Pivot10
	%aux2077 = sub i32 %aux2075, %aux2076
	%aux2078 = load i32, i32* @IdPos10
	%aux2079 = icmp eq i32 %aux2077, %aux2078
	br i1 %aux2079, label %etiq994, label %etiq995
	
	etiq994:
	;___Asignacion___
	%aux2081 = load i32, i32* @_Acum19
	%aux2082 = add i32 0, 1
	%aux2083 = add i32 %aux2081, %aux2082
	store i32 %aux2083, i32* @_Acum19
	br label %etiq998
	
	etiq998:
	;___Asignacion___
	%aux2085 = load i32, i32* @IdPos10
	%aux2086 = add i32 0, 1
	%aux2087 = add i32 %aux2085, %aux2086
	store i32 %aux2087, i32* @IdPos10
	br label %etiq1000
	
	etiq1000:
	;___Asignacion___
	%aux2089 = load i32, i32* @Pivot10
	%aux2090 = add i32 0, 1
	%aux2091 = sub i32 %aux2089, %aux2090
	store i32 %aux2091, i32* @Pivot10
	br label %etiq1003
	
	etiq995:
	;___Asignacion___
	%aux2093 = load i32, i32* @IdPos10
	%aux2094 = add i32 0, 1
	%aux2095 = add i32 %aux2093, %aux2094
	store i32 %aux2095, i32* @IdPos10
	br label %etiq1003
	
	etiq1003:
	;___IfElse___
	%aux2097 = add i32 0, 103
	%aux2098 = load i32, i32* @Pivot10
	%aux2099 = sub i32 %aux2097, %aux2098
	%aux2100 = load i32, i32* @IdPos10
	%aux2101 = icmp eq i32 %aux2099, %aux2100
	br i1 %aux2101, label %etiq1004, label %etiq1005
	
	etiq1004:
	;___Asignacion___
	%aux2103 = load i32, i32* @_Acum19
	%aux2104 = add i32 0, 1
	%aux2105 = add i32 %aux2103, %aux2104
	store i32 %aux2105, i32* @_Acum19
	br label %etiq1008
	
	etiq1008:
	;___Asignacion___
	%aux2107 = load i32, i32* @IdPos10
	%aux2108 = add i32 0, 1
	%aux2109 = add i32 %aux2107, %aux2108
	store i32 %aux2109, i32* @IdPos10
	br label %etiq1010
	
	etiq1010:
	;___Asignacion___
	%aux2111 = load i32, i32* @Pivot10
	%aux2112 = add i32 0, 1
	%aux2113 = sub i32 %aux2111, %aux2112
	store i32 %aux2113, i32* @Pivot10
	br label %etiq1013
	
	etiq1005:
	;___Asignacion___
	%aux2115 = load i32, i32* @IdPos10
	%aux2116 = add i32 0, 1
	%aux2117 = add i32 %aux2115, %aux2116
	store i32 %aux2117, i32* @IdPos10
	br label %etiq1013
	
	etiq1013:
	;___IfElse___
	%aux2119 = add i32 0, 103
	%aux2120 = load i32, i32* @Pivot10
	%aux2121 = sub i32 %aux2119, %aux2120
	%aux2122 = load i32, i32* @IdPos10
	%aux2123 = icmp eq i32 %aux2121, %aux2122
	br i1 %aux2123, label %etiq1014, label %etiq1015
	
	etiq1014:
	;___Asignacion___
	%aux2125 = load i32, i32* @_Acum19
	%aux2126 = add i32 0, 1
	%aux2127 = add i32 %aux2125, %aux2126
	store i32 %aux2127, i32* @_Acum19
	br label %etiq1018
	
	etiq1018:
	;___Asignacion___
	%aux2129 = load i32, i32* @IdPos10
	%aux2130 = add i32 0, 1
	%aux2131 = add i32 %aux2129, %aux2130
	store i32 %aux2131, i32* @IdPos10
	br label %etiq1020
	
	etiq1020:
	;___Asignacion___
	%aux2133 = load i32, i32* @Pivot10
	%aux2134 = add i32 0, 1
	%aux2135 = sub i32 %aux2133, %aux2134
	store i32 %aux2135, i32* @Pivot10
	br label %etiq1023
	
	etiq1015:
	;___Asignacion___
	%aux2137 = load i32, i32* @IdPos10
	%aux2138 = add i32 0, 1
	%aux2139 = add i32 %aux2137, %aux2138
	store i32 %aux2139, i32* @IdPos10
	br label %etiq1023
	
	etiq1023:
	;___IfElse___
	%aux2141 = add i32 0, 103
	%aux2142 = load i32, i32* @Pivot10
	%aux2143 = sub i32 %aux2141, %aux2142
	%aux2144 = load i32, i32* @IdPos10
	%aux2145 = icmp eq i32 %aux2143, %aux2144
	br i1 %aux2145, label %etiq1024, label %etiq1025
	
	etiq1024:
	;___Asignacion___
	%aux2147 = load i32, i32* @_Acum19
	%aux2148 = add i32 0, 1
	%aux2149 = add i32 %aux2147, %aux2148
	store i32 %aux2149, i32* @_Acum19
	br label %etiq1028
	
	etiq1028:
	;___Asignacion___
	%aux2151 = load i32, i32* @IdPos10
	%aux2152 = add i32 0, 1
	%aux2153 = add i32 %aux2151, %aux2152
	store i32 %aux2153, i32* @IdPos10
	br label %etiq1030
	
	etiq1030:
	;___Asignacion___
	%aux2155 = load i32, i32* @Pivot10
	%aux2156 = add i32 0, 1
	%aux2157 = sub i32 %aux2155, %aux2156
	store i32 %aux2157, i32* @Pivot10
	br label %etiq1033
	
	etiq1025:
	;___Asignacion___
	%aux2159 = load i32, i32* @IdPos10
	%aux2160 = add i32 0, 1
	%aux2161 = add i32 %aux2159, %aux2160
	store i32 %aux2161, i32* @IdPos10
	br label %etiq1033
	
	etiq1033:
	;___IfElse___
	%aux2163 = add i32 0, 103
	%aux2164 = load i32, i32* @Pivot10
	%aux2165 = sub i32 %aux2163, %aux2164
	%aux2166 = load i32, i32* @IdPos10
	%aux2167 = icmp eq i32 %aux2165, %aux2166
	br i1 %aux2167, label %etiq1034, label %etiq1035
	
	etiq1034:
	;___Asignacion___
	%aux2169 = load i32, i32* @_Acum19
	%aux2170 = add i32 0, 1
	%aux2171 = add i32 %aux2169, %aux2170
	store i32 %aux2171, i32* @_Acum19
	br label %etiq1038
	
	etiq1038:
	;___Asignacion___
	%aux2173 = load i32, i32* @IdPos10
	%aux2174 = add i32 0, 1
	%aux2175 = add i32 %aux2173, %aux2174
	store i32 %aux2175, i32* @IdPos10
	br label %etiq1040
	
	etiq1040:
	;___Asignacion___
	%aux2177 = load i32, i32* @Pivot10
	%aux2178 = add i32 0, 1
	%aux2179 = sub i32 %aux2177, %aux2178
	store i32 %aux2179, i32* @Pivot10
	br label %etiq1043
	
	etiq1035:
	;___Asignacion___
	%aux2181 = load i32, i32* @IdPos10
	%aux2182 = add i32 0, 1
	%aux2183 = add i32 %aux2181, %aux2182
	store i32 %aux2183, i32* @IdPos10
	br label %etiq1043
	
	etiq1043:
	;___IfElse___
	%aux2185 = add i32 0, 103
	%aux2186 = load i32, i32* @Pivot10
	%aux2187 = sub i32 %aux2185, %aux2186
	%aux2188 = load i32, i32* @IdPos10
	%aux2189 = icmp eq i32 %aux2187, %aux2188
	br i1 %aux2189, label %etiq1044, label %etiq1045
	
	etiq1044:
	;___Asignacion___
	%aux2191 = load i32, i32* @_Acum19
	%aux2192 = add i32 0, 1
	%aux2193 = add i32 %aux2191, %aux2192
	store i32 %aux2193, i32* @_Acum19
	br label %etiq1048
	
	etiq1048:
	;___Asignacion___
	%aux2195 = load i32, i32* @IdPos10
	%aux2196 = add i32 0, 1
	%aux2197 = add i32 %aux2195, %aux2196
	store i32 %aux2197, i32* @IdPos10
	br label %etiq1050
	
	etiq1050:
	;___Asignacion___
	%aux2199 = load i32, i32* @Pivot10
	%aux2200 = add i32 0, 1
	%aux2201 = sub i32 %aux2199, %aux2200
	store i32 %aux2201, i32* @Pivot10
	br label %etiq1053
	
	etiq1045:
	;___Asignacion___
	%aux2203 = load i32, i32* @IdPos10
	%aux2204 = add i32 0, 1
	%aux2205 = add i32 %aux2203, %aux2204
	store i32 %aux2205, i32* @IdPos10
	br label %etiq1053
	
	etiq1053:
	;___IfElse___
	%aux2207 = add i32 0, 103
	%aux2208 = load i32, i32* @Pivot10
	%aux2209 = sub i32 %aux2207, %aux2208
	%aux2210 = load i32, i32* @IdPos10
	%aux2211 = icmp eq i32 %aux2209, %aux2210
	br i1 %aux2211, label %etiq1054, label %etiq1055
	
	etiq1054:
	;___Asignacion___
	%aux2213 = load i32, i32* @_Acum19
	%aux2214 = add i32 0, 1
	%aux2215 = add i32 %aux2213, %aux2214
	store i32 %aux2215, i32* @_Acum19
	br label %etiq1058
	
	etiq1058:
	;___Asignacion___
	%aux2217 = load i32, i32* @IdPos10
	%aux2218 = add i32 0, 1
	%aux2219 = add i32 %aux2217, %aux2218
	store i32 %aux2219, i32* @IdPos10
	br label %etiq1060
	
	etiq1060:
	;___Asignacion___
	%aux2221 = load i32, i32* @Pivot10
	%aux2222 = add i32 0, 1
	%aux2223 = sub i32 %aux2221, %aux2222
	store i32 %aux2223, i32* @Pivot10
	br label %etiq1063
	
	etiq1055:
	;___Asignacion___
	%aux2225 = load i32, i32* @IdPos10
	%aux2226 = add i32 0, 1
	%aux2227 = add i32 %aux2225, %aux2226
	store i32 %aux2227, i32* @IdPos10
	br label %etiq1063
	
	etiq1063:
	;___IfElse___
	%aux2229 = add i32 0, 103
	%aux2230 = load i32, i32* @Pivot10
	%aux2231 = sub i32 %aux2229, %aux2230
	%aux2232 = load i32, i32* @IdPos10
	%aux2233 = icmp eq i32 %aux2231, %aux2232
	br i1 %aux2233, label %etiq1064, label %etiq1065
	
	etiq1064:
	;___Asignacion___
	%aux2235 = load i32, i32* @_Acum19
	%aux2236 = add i32 0, 1
	%aux2237 = add i32 %aux2235, %aux2236
	store i32 %aux2237, i32* @_Acum19
	br label %etiq1068
	
	etiq1068:
	;___Asignacion___
	%aux2239 = load i32, i32* @IdPos10
	%aux2240 = add i32 0, 1
	%aux2241 = add i32 %aux2239, %aux2240
	store i32 %aux2241, i32* @IdPos10
	br label %etiq1070
	
	etiq1070:
	;___Asignacion___
	%aux2243 = load i32, i32* @Pivot10
	%aux2244 = add i32 0, 1
	%aux2245 = sub i32 %aux2243, %aux2244
	store i32 %aux2245, i32* @Pivot10
	br label %etiq1073
	
	etiq1065:
	;___Asignacion___
	%aux2247 = load i32, i32* @IdPos10
	%aux2248 = add i32 0, 1
	%aux2249 = add i32 %aux2247, %aux2248
	store i32 %aux2249, i32* @IdPos10
	br label %etiq1073
	
	etiq1073:
	;___IfElse___
	%aux2251 = add i32 0, 103
	%aux2252 = load i32, i32* @Pivot10
	%aux2253 = sub i32 %aux2251, %aux2252
	%aux2254 = load i32, i32* @IdPos10
	%aux2255 = icmp eq i32 %aux2253, %aux2254
	br i1 %aux2255, label %etiq1074, label %etiq1075
	
	etiq1074:
	;___Asignacion___
	%aux2257 = load i32, i32* @_Acum19
	%aux2258 = add i32 0, 1
	%aux2259 = add i32 %aux2257, %aux2258
	store i32 %aux2259, i32* @_Acum19
	br label %etiq1078
	
	etiq1078:
	;___Asignacion___
	%aux2261 = load i32, i32* @IdPos10
	%aux2262 = add i32 0, 1
	%aux2263 = add i32 %aux2261, %aux2262
	store i32 %aux2263, i32* @IdPos10
	br label %etiq1080
	
	etiq1080:
	;___Asignacion___
	%aux2265 = load i32, i32* @Pivot10
	%aux2266 = add i32 0, 1
	%aux2267 = sub i32 %aux2265, %aux2266
	store i32 %aux2267, i32* @Pivot10
	br label %etiq1083
	
	etiq1075:
	;___Asignacion___
	%aux2269 = load i32, i32* @IdPos10
	%aux2270 = add i32 0, 1
	%aux2271 = add i32 %aux2269, %aux2270
	store i32 %aux2271, i32* @IdPos10
	br label %etiq1083
	
	etiq1083:
	;___IfElse___
	%aux2273 = add i32 0, 103
	%aux2274 = load i32, i32* @Pivot10
	%aux2275 = sub i32 %aux2273, %aux2274
	%aux2276 = load i32, i32* @IdPos10
	%aux2277 = icmp eq i32 %aux2275, %aux2276
	br i1 %aux2277, label %etiq1084, label %etiq1085
	
	etiq1084:
	;___Asignacion___
	%aux2279 = load i32, i32* @_Acum19
	%aux2280 = add i32 0, 1
	%aux2281 = add i32 %aux2279, %aux2280
	store i32 %aux2281, i32* @_Acum19
	br label %etiq1088
	
	etiq1088:
	;___Asignacion___
	%aux2283 = load i32, i32* @IdPos10
	%aux2284 = add i32 0, 1
	%aux2285 = add i32 %aux2283, %aux2284
	store i32 %aux2285, i32* @IdPos10
	br label %etiq1090
	
	etiq1090:
	;___Asignacion___
	%aux2287 = load i32, i32* @Pivot10
	%aux2288 = add i32 0, 1
	%aux2289 = sub i32 %aux2287, %aux2288
	store i32 %aux2289, i32* @Pivot10
	br label %etiq1093
	
	etiq1085:
	;___Asignacion___
	%aux2291 = load i32, i32* @IdPos10
	%aux2292 = add i32 0, 1
	%aux2293 = add i32 %aux2291, %aux2292
	store i32 %aux2293, i32* @IdPos10
	br label %etiq1093
	
	etiq1093:
	;___IfElse___
	%aux2295 = add i32 0, 103
	%aux2296 = load i32, i32* @Pivot10
	%aux2297 = sub i32 %aux2295, %aux2296
	%aux2298 = load i32, i32* @IdPos10
	%aux2299 = icmp eq i32 %aux2297, %aux2298
	br i1 %aux2299, label %etiq1094, label %etiq1095
	
	etiq1094:
	;___Asignacion___
	%aux2301 = load i32, i32* @_Acum19
	%aux2302 = add i32 0, 1
	%aux2303 = add i32 %aux2301, %aux2302
	store i32 %aux2303, i32* @_Acum19
	br label %etiq1098
	
	etiq1098:
	;___Asignacion___
	%aux2305 = load i32, i32* @IdPos10
	%aux2306 = add i32 0, 1
	%aux2307 = add i32 %aux2305, %aux2306
	store i32 %aux2307, i32* @IdPos10
	br label %etiq1100
	
	etiq1100:
	;___Asignacion___
	%aux2309 = load i32, i32* @Pivot10
	%aux2310 = add i32 0, 1
	%aux2311 = sub i32 %aux2309, %aux2310
	store i32 %aux2311, i32* @Pivot10
	br label %etiq1103
	
	etiq1095:
	;___Asignacion___
	%aux2313 = load i32, i32* @IdPos10
	%aux2314 = add i32 0, 1
	%aux2315 = add i32 %aux2313, %aux2314
	store i32 %aux2315, i32* @IdPos10
	br label %etiq1103
	
	etiq1103:
	;___IfElse___
	%aux2317 = add i32 0, 103
	%aux2318 = load i32, i32* @Pivot10
	%aux2319 = sub i32 %aux2317, %aux2318
	%aux2320 = load i32, i32* @IdPos10
	%aux2321 = icmp eq i32 %aux2319, %aux2320
	br i1 %aux2321, label %etiq1104, label %etiq1105
	
	etiq1104:
	;___Asignacion___
	%aux2323 = load i32, i32* @_Acum19
	%aux2324 = add i32 0, 1
	%aux2325 = add i32 %aux2323, %aux2324
	store i32 %aux2325, i32* @_Acum19
	br label %etiq1108
	
	etiq1108:
	;___Asignacion___
	%aux2327 = load i32, i32* @IdPos10
	%aux2328 = add i32 0, 1
	%aux2329 = add i32 %aux2327, %aux2328
	store i32 %aux2329, i32* @IdPos10
	br label %etiq1110
	
	etiq1110:
	;___Asignacion___
	%aux2331 = load i32, i32* @Pivot10
	%aux2332 = add i32 0, 1
	%aux2333 = sub i32 %aux2331, %aux2332
	store i32 %aux2333, i32* @Pivot10
	br label %etiq1113
	
	etiq1105:
	;___Asignacion___
	%aux2335 = load i32, i32* @IdPos10
	%aux2336 = add i32 0, 1
	%aux2337 = add i32 %aux2335, %aux2336
	store i32 %aux2337, i32* @IdPos10
	br label %etiq1113
	
	etiq1113:
	;___IfElse___
	%aux2339 = add i32 0, 103
	%aux2340 = load i32, i32* @Pivot10
	%aux2341 = sub i32 %aux2339, %aux2340
	%aux2342 = load i32, i32* @IdPos10
	%aux2343 = icmp eq i32 %aux2341, %aux2342
	br i1 %aux2343, label %etiq1114, label %etiq1115
	
	etiq1114:
	;___Asignacion___
	%aux2345 = load i32, i32* @_Acum19
	%aux2346 = add i32 0, 1
	%aux2347 = add i32 %aux2345, %aux2346
	store i32 %aux2347, i32* @_Acum19
	br label %etiq1118
	
	etiq1118:
	;___Asignacion___
	%aux2349 = load i32, i32* @IdPos10
	%aux2350 = add i32 0, 1
	%aux2351 = add i32 %aux2349, %aux2350
	store i32 %aux2351, i32* @IdPos10
	br label %etiq1120
	
	etiq1120:
	;___Asignacion___
	%aux2353 = load i32, i32* @Pivot10
	%aux2354 = add i32 0, 1
	%aux2355 = sub i32 %aux2353, %aux2354
	store i32 %aux2355, i32* @Pivot10
	br label %etiq1123
	
	etiq1115:
	;___Asignacion___
	%aux2357 = load i32, i32* @IdPos10
	%aux2358 = add i32 0, 1
	%aux2359 = add i32 %aux2357, %aux2358
	store i32 %aux2359, i32* @IdPos10
	br label %etiq1123
	
	etiq1123:
	;___IfElse___
	%aux2361 = add i32 0, 103
	%aux2362 = load i32, i32* @Pivot10
	%aux2363 = sub i32 %aux2361, %aux2362
	%aux2364 = load i32, i32* @IdPos10
	%aux2365 = icmp eq i32 %aux2363, %aux2364
	br i1 %aux2365, label %etiq1124, label %etiq1125
	
	etiq1124:
	;___Asignacion___
	%aux2367 = load i32, i32* @_Acum19
	%aux2368 = add i32 0, 1
	%aux2369 = add i32 %aux2367, %aux2368
	store i32 %aux2369, i32* @_Acum19
	br label %etiq1128
	
	etiq1128:
	;___Asignacion___
	%aux2371 = load i32, i32* @IdPos10
	%aux2372 = add i32 0, 1
	%aux2373 = add i32 %aux2371, %aux2372
	store i32 %aux2373, i32* @IdPos10
	br label %etiq1130
	
	etiq1130:
	;___Asignacion___
	%aux2375 = load i32, i32* @Pivot10
	%aux2376 = add i32 0, 1
	%aux2377 = sub i32 %aux2375, %aux2376
	store i32 %aux2377, i32* @Pivot10
	br label %etiq1133
	
	etiq1125:
	;___Asignacion___
	%aux2379 = load i32, i32* @IdPos10
	%aux2380 = add i32 0, 1
	%aux2381 = add i32 %aux2379, %aux2380
	store i32 %aux2381, i32* @IdPos10
	br label %etiq1133
	
	etiq1133:
	;___IfElse___
	%aux2383 = add i32 0, 103
	%aux2384 = load i32, i32* @Pivot10
	%aux2385 = sub i32 %aux2383, %aux2384
	%aux2386 = load i32, i32* @IdPos10
	%aux2387 = icmp eq i32 %aux2385, %aux2386
	br i1 %aux2387, label %etiq1134, label %etiq1135
	
	etiq1134:
	;___Asignacion___
	%aux2389 = load i32, i32* @_Acum19
	%aux2390 = add i32 0, 1
	%aux2391 = add i32 %aux2389, %aux2390
	store i32 %aux2391, i32* @_Acum19
	br label %etiq1138
	
	etiq1138:
	;___Asignacion___
	%aux2393 = load i32, i32* @IdPos10
	%aux2394 = add i32 0, 1
	%aux2395 = add i32 %aux2393, %aux2394
	store i32 %aux2395, i32* @IdPos10
	br label %etiq1140
	
	etiq1140:
	;___Asignacion___
	%aux2397 = load i32, i32* @Pivot10
	%aux2398 = add i32 0, 1
	%aux2399 = sub i32 %aux2397, %aux2398
	store i32 %aux2399, i32* @Pivot10
	br label %etiq1143
	
	etiq1135:
	;___Asignacion___
	%aux2401 = load i32, i32* @IdPos10
	%aux2402 = add i32 0, 1
	%aux2403 = add i32 %aux2401, %aux2402
	store i32 %aux2403, i32* @IdPos10
	br label %etiq1143
	
	etiq1143:
	;___IfElse___
	%aux2405 = add i32 0, 103
	%aux2406 = load i32, i32* @Pivot10
	%aux2407 = sub i32 %aux2405, %aux2406
	%aux2408 = load i32, i32* @IdPos10
	%aux2409 = icmp eq i32 %aux2407, %aux2408
	br i1 %aux2409, label %etiq1144, label %etiq1145
	
	etiq1144:
	;___Asignacion___
	%aux2411 = load i32, i32* @_Acum19
	%aux2412 = add i32 0, 1
	%aux2413 = add i32 %aux2411, %aux2412
	store i32 %aux2413, i32* @_Acum19
	br label %etiq1148
	
	etiq1148:
	;___Asignacion___
	%aux2415 = load i32, i32* @IdPos10
	%aux2416 = add i32 0, 1
	%aux2417 = add i32 %aux2415, %aux2416
	store i32 %aux2417, i32* @IdPos10
	br label %etiq1150
	
	etiq1150:
	;___Asignacion___
	%aux2419 = load i32, i32* @Pivot10
	%aux2420 = add i32 0, 1
	%aux2421 = sub i32 %aux2419, %aux2420
	store i32 %aux2421, i32* @Pivot10
	br label %etiq1153
	
	etiq1145:
	;___Asignacion___
	%aux2423 = load i32, i32* @IdPos10
	%aux2424 = add i32 0, 1
	%aux2425 = add i32 %aux2423, %aux2424
	store i32 %aux2425, i32* @IdPos10
	br label %etiq1153
	
	etiq1153:
	;___IfElse___
	%aux2427 = add i32 0, 103
	%aux2428 = load i32, i32* @Pivot10
	%aux2429 = sub i32 %aux2427, %aux2428
	%aux2430 = load i32, i32* @IdPos10
	%aux2431 = icmp eq i32 %aux2429, %aux2430
	br i1 %aux2431, label %etiq1154, label %etiq1155
	
	etiq1154:
	;___Asignacion___
	%aux2433 = load i32, i32* @_Acum19
	%aux2434 = add i32 0, 1
	%aux2435 = add i32 %aux2433, %aux2434
	store i32 %aux2435, i32* @_Acum19
	br label %etiq1158
	
	etiq1158:
	;___Asignacion___
	%aux2437 = load i32, i32* @IdPos10
	%aux2438 = add i32 0, 1
	%aux2439 = add i32 %aux2437, %aux2438
	store i32 %aux2439, i32* @IdPos10
	br label %etiq1160
	
	etiq1160:
	;___Asignacion___
	%aux2441 = load i32, i32* @Pivot10
	%aux2442 = add i32 0, 1
	%aux2443 = sub i32 %aux2441, %aux2442
	store i32 %aux2443, i32* @Pivot10
	br label %etiq1163
	
	etiq1155:
	;___Asignacion___
	%aux2445 = load i32, i32* @IdPos10
	%aux2446 = add i32 0, 1
	%aux2447 = add i32 %aux2445, %aux2446
	store i32 %aux2447, i32* @IdPos10
	br label %etiq1163
	
	etiq1163:
	;___IfElse___
	%aux2449 = add i32 0, 103
	%aux2450 = load i32, i32* @Pivot10
	%aux2451 = sub i32 %aux2449, %aux2450
	%aux2452 = load i32, i32* @IdPos10
	%aux2453 = icmp eq i32 %aux2451, %aux2452
	br i1 %aux2453, label %etiq1164, label %etiq1165
	
	etiq1164:
	;___Asignacion___
	%aux2455 = load i32, i32* @_Acum19
	%aux2456 = add i32 0, 1
	%aux2457 = add i32 %aux2455, %aux2456
	store i32 %aux2457, i32* @_Acum19
	br label %etiq1168
	
	etiq1168:
	;___Asignacion___
	%aux2459 = load i32, i32* @IdPos10
	%aux2460 = add i32 0, 1
	%aux2461 = add i32 %aux2459, %aux2460
	store i32 %aux2461, i32* @IdPos10
	br label %etiq1170
	
	etiq1170:
	;___Asignacion___
	%aux2463 = load i32, i32* @Pivot10
	%aux2464 = add i32 0, 1
	%aux2465 = sub i32 %aux2463, %aux2464
	store i32 %aux2465, i32* @Pivot10
	br label %etiq1173
	
	etiq1165:
	;___Asignacion___
	%aux2467 = load i32, i32* @IdPos10
	%aux2468 = add i32 0, 1
	%aux2469 = add i32 %aux2467, %aux2468
	store i32 %aux2469, i32* @IdPos10
	br label %etiq1173
	
	etiq1173:
	;___IfElse___
	%aux2471 = add i32 0, 103
	%aux2472 = load i32, i32* @Pivot10
	%aux2473 = sub i32 %aux2471, %aux2472
	%aux2474 = load i32, i32* @IdPos10
	%aux2475 = icmp eq i32 %aux2473, %aux2474
	br i1 %aux2475, label %etiq1174, label %etiq1175
	
	etiq1174:
	;___Asignacion___
	%aux2477 = load i32, i32* @_Acum19
	%aux2478 = add i32 0, 1
	%aux2479 = add i32 %aux2477, %aux2478
	store i32 %aux2479, i32* @_Acum19
	br label %etiq1178
	
	etiq1178:
	;___Asignacion___
	%aux2481 = load i32, i32* @IdPos10
	%aux2482 = add i32 0, 1
	%aux2483 = add i32 %aux2481, %aux2482
	store i32 %aux2483, i32* @IdPos10
	br label %etiq1180
	
	etiq1180:
	;___Asignacion___
	%aux2485 = load i32, i32* @Pivot10
	%aux2486 = add i32 0, 1
	%aux2487 = sub i32 %aux2485, %aux2486
	store i32 %aux2487, i32* @Pivot10
	br label %etiq1183
	
	etiq1175:
	;___Asignacion___
	%aux2489 = load i32, i32* @IdPos10
	%aux2490 = add i32 0, 1
	%aux2491 = add i32 %aux2489, %aux2490
	store i32 %aux2491, i32* @IdPos10
	br label %etiq1183
	
	etiq1183:
	;___IfElse___
	%aux2493 = add i32 0, 103
	%aux2494 = load i32, i32* @Pivot10
	%aux2495 = sub i32 %aux2493, %aux2494
	%aux2496 = load i32, i32* @IdPos10
	%aux2497 = icmp eq i32 %aux2495, %aux2496
	br i1 %aux2497, label %etiq1184, label %etiq1185
	
	etiq1184:
	;___Asignacion___
	%aux2499 = load i32, i32* @_Acum19
	%aux2500 = add i32 0, 1
	%aux2501 = add i32 %aux2499, %aux2500
	store i32 %aux2501, i32* @_Acum19
	br label %etiq1188
	
	etiq1188:
	;___Asignacion___
	%aux2503 = load i32, i32* @IdPos10
	%aux2504 = add i32 0, 1
	%aux2505 = add i32 %aux2503, %aux2504
	store i32 %aux2505, i32* @IdPos10
	br label %etiq1190
	
	etiq1190:
	;___Asignacion___
	%aux2507 = load i32, i32* @Pivot10
	%aux2508 = add i32 0, 1
	%aux2509 = sub i32 %aux2507, %aux2508
	store i32 %aux2509, i32* @Pivot10
	br label %etiq1193
	
	etiq1185:
	;___Asignacion___
	%aux2511 = load i32, i32* @IdPos10
	%aux2512 = add i32 0, 1
	%aux2513 = add i32 %aux2511, %aux2512
	store i32 %aux2513, i32* @IdPos10
	br label %etiq1193
	
	etiq1193:
	;___IfElse___
	%aux2515 = add i32 0, 103
	%aux2516 = load i32, i32* @Pivot10
	%aux2517 = sub i32 %aux2515, %aux2516
	%aux2518 = load i32, i32* @IdPos10
	%aux2519 = icmp eq i32 %aux2517, %aux2518
	br i1 %aux2519, label %etiq1194, label %etiq1195
	
	etiq1194:
	;___Asignacion___
	%aux2521 = load i32, i32* @_Acum19
	%aux2522 = add i32 0, 1
	%aux2523 = add i32 %aux2521, %aux2522
	store i32 %aux2523, i32* @_Acum19
	br label %etiq1198
	
	etiq1198:
	;___Asignacion___
	%aux2525 = load i32, i32* @IdPos10
	%aux2526 = add i32 0, 1
	%aux2527 = add i32 %aux2525, %aux2526
	store i32 %aux2527, i32* @IdPos10
	br label %etiq1200
	
	etiq1200:
	;___Asignacion___
	%aux2529 = load i32, i32* @Pivot10
	%aux2530 = add i32 0, 1
	%aux2531 = sub i32 %aux2529, %aux2530
	store i32 %aux2531, i32* @Pivot10
	br label %etiq1203
	
	etiq1195:
	;___Asignacion___
	%aux2533 = load i32, i32* @IdPos10
	%aux2534 = add i32 0, 1
	%aux2535 = add i32 %aux2533, %aux2534
	store i32 %aux2535, i32* @IdPos10
	br label %etiq1203
	
	etiq1203:
	;___IfElse___
	%aux2537 = add i32 0, 103
	%aux2538 = load i32, i32* @Pivot10
	%aux2539 = sub i32 %aux2537, %aux2538
	%aux2540 = load i32, i32* @IdPos10
	%aux2541 = icmp eq i32 %aux2539, %aux2540
	br i1 %aux2541, label %etiq1204, label %etiq1205
	
	etiq1204:
	;___Asignacion___
	%aux2543 = load i32, i32* @_Acum19
	%aux2544 = add i32 0, 1
	%aux2545 = add i32 %aux2543, %aux2544
	store i32 %aux2545, i32* @_Acum19
	br label %etiq1208
	
	etiq1208:
	;___Asignacion___
	%aux2547 = load i32, i32* @IdPos10
	%aux2548 = add i32 0, 1
	%aux2549 = add i32 %aux2547, %aux2548
	store i32 %aux2549, i32* @IdPos10
	br label %etiq1210
	
	etiq1210:
	;___Asignacion___
	%aux2551 = load i32, i32* @Pivot10
	%aux2552 = add i32 0, 1
	%aux2553 = sub i32 %aux2551, %aux2552
	store i32 %aux2553, i32* @Pivot10
	br label %etiq1213
	
	etiq1205:
	;___Asignacion___
	%aux2555 = load i32, i32* @IdPos10
	%aux2556 = add i32 0, 1
	%aux2557 = add i32 %aux2555, %aux2556
	store i32 %aux2557, i32* @IdPos10
	br label %etiq1213
	
	etiq1213:
	;___IfElse___
	%aux2559 = add i32 0, 103
	%aux2560 = load i32, i32* @Pivot10
	%aux2561 = sub i32 %aux2559, %aux2560
	%aux2562 = load i32, i32* @IdPos10
	%aux2563 = icmp eq i32 %aux2561, %aux2562
	br i1 %aux2563, label %etiq1214, label %etiq1215
	
	etiq1214:
	;___Asignacion___
	%aux2565 = load i32, i32* @_Acum19
	%aux2566 = add i32 0, 1
	%aux2567 = add i32 %aux2565, %aux2566
	store i32 %aux2567, i32* @_Acum19
	br label %etiq1218
	
	etiq1218:
	;___Asignacion___
	%aux2569 = load i32, i32* @IdPos10
	%aux2570 = add i32 0, 1
	%aux2571 = add i32 %aux2569, %aux2570
	store i32 %aux2571, i32* @IdPos10
	br label %etiq1220
	
	etiq1220:
	;___Asignacion___
	%aux2573 = load i32, i32* @Pivot10
	%aux2574 = add i32 0, 1
	%aux2575 = sub i32 %aux2573, %aux2574
	store i32 %aux2575, i32* @Pivot10
	br label %etiq1223
	
	etiq1215:
	;___Asignacion___
	%aux2577 = load i32, i32* @IdPos10
	%aux2578 = add i32 0, 1
	%aux2579 = add i32 %aux2577, %aux2578
	store i32 %aux2579, i32* @IdPos10
	br label %etiq1223
	
	etiq1223:
	;___IfElse___
	%aux2581 = add i32 0, 103
	%aux2582 = load i32, i32* @Pivot10
	%aux2583 = sub i32 %aux2581, %aux2582
	%aux2584 = load i32, i32* @IdPos10
	%aux2585 = icmp eq i32 %aux2583, %aux2584
	br i1 %aux2585, label %etiq1224, label %etiq1225
	
	etiq1224:
	;___Asignacion___
	%aux2587 = load i32, i32* @_Acum19
	%aux2588 = add i32 0, 1
	%aux2589 = add i32 %aux2587, %aux2588
	store i32 %aux2589, i32* @_Acum19
	br label %etiq1228
	
	etiq1228:
	;___Asignacion___
	%aux2591 = load i32, i32* @IdPos10
	%aux2592 = add i32 0, 1
	%aux2593 = add i32 %aux2591, %aux2592
	store i32 %aux2593, i32* @IdPos10
	br label %etiq1230
	
	etiq1230:
	;___Asignacion___
	%aux2595 = load i32, i32* @Pivot10
	%aux2596 = add i32 0, 1
	%aux2597 = sub i32 %aux2595, %aux2596
	store i32 %aux2597, i32* @Pivot10
	br label %etiq1233
	
	etiq1225:
	;___Asignacion___
	%aux2599 = load i32, i32* @IdPos10
	%aux2600 = add i32 0, 1
	%aux2601 = add i32 %aux2599, %aux2600
	store i32 %aux2601, i32* @IdPos10
	br label %etiq1233
	
	etiq1233:
	;___IfElse___
	%aux2603 = add i32 0, 103
	%aux2604 = load i32, i32* @Pivot10
	%aux2605 = sub i32 %aux2603, %aux2604
	%aux2606 = load i32, i32* @IdPos10
	%aux2607 = icmp eq i32 %aux2605, %aux2606
	br i1 %aux2607, label %etiq1234, label %etiq1235
	
	etiq1234:
	;___Asignacion___
	%aux2609 = load i32, i32* @_Acum19
	%aux2610 = add i32 0, 1
	%aux2611 = add i32 %aux2609, %aux2610
	store i32 %aux2611, i32* @_Acum19
	br label %etiq1238
	
	etiq1238:
	;___Asignacion___
	%aux2613 = load i32, i32* @IdPos10
	%aux2614 = add i32 0, 1
	%aux2615 = add i32 %aux2613, %aux2614
	store i32 %aux2615, i32* @IdPos10
	br label %etiq1240
	
	etiq1240:
	;___Asignacion___
	%aux2617 = load i32, i32* @Pivot10
	%aux2618 = add i32 0, 1
	%aux2619 = sub i32 %aux2617, %aux2618
	store i32 %aux2619, i32* @Pivot10
	br label %etiq1243
	
	etiq1235:
	;___Asignacion___
	%aux2621 = load i32, i32* @IdPos10
	%aux2622 = add i32 0, 1
	%aux2623 = add i32 %aux2621, %aux2622
	store i32 %aux2623, i32* @IdPos10
	br label %etiq1243
	
	etiq1243:
	;___IfElse___
	%aux2625 = add i32 0, 103
	%aux2626 = load i32, i32* @Pivot10
	%aux2627 = sub i32 %aux2625, %aux2626
	%aux2628 = load i32, i32* @IdPos10
	%aux2629 = icmp eq i32 %aux2627, %aux2628
	br i1 %aux2629, label %etiq1244, label %etiq1245
	
	etiq1244:
	;___Asignacion___
	%aux2631 = load i32, i32* @_Acum19
	%aux2632 = add i32 0, 1
	%aux2633 = add i32 %aux2631, %aux2632
	store i32 %aux2633, i32* @_Acum19
	br label %etiq1248
	
	etiq1248:
	;___Asignacion___
	%aux2635 = load i32, i32* @IdPos10
	%aux2636 = add i32 0, 1
	%aux2637 = add i32 %aux2635, %aux2636
	store i32 %aux2637, i32* @IdPos10
	br label %etiq1250
	
	etiq1250:
	;___Asignacion___
	%aux2639 = load i32, i32* @Pivot10
	%aux2640 = add i32 0, 1
	%aux2641 = sub i32 %aux2639, %aux2640
	store i32 %aux2641, i32* @Pivot10
	br label %etiq1253
	
	etiq1245:
	;___Asignacion___
	%aux2643 = load i32, i32* @IdPos10
	%aux2644 = add i32 0, 1
	%aux2645 = add i32 %aux2643, %aux2644
	store i32 %aux2645, i32* @IdPos10
	br label %etiq1253
	
	etiq1253:
	;___IfElse___
	%aux2647 = add i32 0, 103
	%aux2648 = load i32, i32* @Pivot10
	%aux2649 = sub i32 %aux2647, %aux2648
	%aux2650 = load i32, i32* @IdPos10
	%aux2651 = icmp eq i32 %aux2649, %aux2650
	br i1 %aux2651, label %etiq1254, label %etiq1255
	
	etiq1254:
	;___Asignacion___
	%aux2653 = load i32, i32* @_Acum19
	%aux2654 = add i32 0, 1
	%aux2655 = add i32 %aux2653, %aux2654
	store i32 %aux2655, i32* @_Acum19
	br label %etiq1258
	
	etiq1258:
	;___Asignacion___
	%aux2657 = load i32, i32* @IdPos10
	%aux2658 = add i32 0, 1
	%aux2659 = add i32 %aux2657, %aux2658
	store i32 %aux2659, i32* @IdPos10
	br label %etiq1260
	
	etiq1260:
	;___Asignacion___
	%aux2661 = load i32, i32* @Pivot10
	%aux2662 = add i32 0, 1
	%aux2663 = sub i32 %aux2661, %aux2662
	store i32 %aux2663, i32* @Pivot10
	br label %etiq1263
	
	etiq1255:
	;___Asignacion___
	%aux2665 = load i32, i32* @IdPos10
	%aux2666 = add i32 0, 1
	%aux2667 = add i32 %aux2665, %aux2666
	store i32 %aux2667, i32* @IdPos10
	br label %etiq1263
	
	etiq1263:
	;___IfElse___
	%aux2669 = add i32 0, 103
	%aux2670 = load i32, i32* @Pivot10
	%aux2671 = sub i32 %aux2669, %aux2670
	%aux2672 = load i32, i32* @IdPos10
	%aux2673 = icmp eq i32 %aux2671, %aux2672
	br i1 %aux2673, label %etiq1264, label %etiq1265
	
	etiq1264:
	;___Asignacion___
	%aux2675 = load i32, i32* @_Acum19
	%aux2676 = add i32 0, 1
	%aux2677 = add i32 %aux2675, %aux2676
	store i32 %aux2677, i32* @_Acum19
	br label %etiq1268
	
	etiq1268:
	;___Asignacion___
	%aux2679 = load i32, i32* @IdPos10
	%aux2680 = add i32 0, 1
	%aux2681 = add i32 %aux2679, %aux2680
	store i32 %aux2681, i32* @IdPos10
	br label %etiq1270
	
	etiq1270:
	;___Asignacion___
	%aux2683 = load i32, i32* @Pivot10
	%aux2684 = add i32 0, 1
	%aux2685 = sub i32 %aux2683, %aux2684
	store i32 %aux2685, i32* @Pivot10
	br label %etiq1273
	
	etiq1265:
	;___Asignacion___
	%aux2687 = load i32, i32* @IdPos10
	%aux2688 = add i32 0, 1
	%aux2689 = add i32 %aux2687, %aux2688
	store i32 %aux2689, i32* @IdPos10
	br label %etiq1273
	
	etiq1273:
	;___IfElse___
	%aux2691 = add i32 0, 103
	%aux2692 = load i32, i32* @Pivot10
	%aux2693 = sub i32 %aux2691, %aux2692
	%aux2694 = load i32, i32* @IdPos10
	%aux2695 = icmp eq i32 %aux2693, %aux2694
	br i1 %aux2695, label %etiq1274, label %etiq1275
	
	etiq1274:
	;___Asignacion___
	%aux2697 = load i32, i32* @_Acum19
	br label %etiq1277
	
	etiq1277:
	;___Asignacion___
	%aux2699 = add i32 0, 0
	store i32 %aux2699, i32* @_Acum9
	br label %etiq1278
	
	etiq1278:
	;___Asignacion___
	%aux2701 = add i32 0, 0
	store i32 %aux2701, i32* @_Acum10
	br label %etiq1279
	
	etiq1279:
	;___Asignacion___
	%aux2703 = add i32 0, 4
	store i32 %aux2703, i32* @Pivot5
	br label %etiq1280
	
	etiq1280:
	;___IfElse___
	%aux2705 = load i32, i32* @Pivot5
	%aux2706 = add i32 0, 1
	%aux2707 = icmp sge i32 %aux2705, %aux2706
	br i1 %aux2707, label %etiq1282, label %etiq1283
	
	etiq1282:
	;___IfElse___
	%aux2709 = add i32 0, 4
	%aux2710 = load i32, i32* @Pivot5
	%aux2711 = icmp sge i32 %aux2709, %aux2710
	br i1 %aux2711, label %etiq1285, label %etiq1286
	
	etiq1285:
	;___IfElse___
	%aux2713 = add i32 0, 4
	%aux2714 = add i32 0, 0
	%aux2715 = icmp sgt i32 %aux2713, %aux2714
	br i1 %aux2715, label %etiq1289, label %etiq1290
	
	etiq1289:
	;___IfElse___
	%aux2717 = add i32 0, 4
	%aux2718 = load i32, i32* @Pivot5
	%aux2719 = sub i32 %aux2717, %aux2718
	%aux2720 = load i32, i32* @IdPos5
	%aux2721 = icmp eq i32 %aux2719, %aux2720
	br i1 %aux2721, label %etiq1292, label %etiq1293
	
	etiq1292:
	;___Asignacion___
	%aux2723 = load i32, i32* @_Acum9
	%aux2724 = add i32 0, 1
	%aux2725 = add i32 %aux2723, %aux2724
	store i32 %aux2725, i32* @_Acum9
	br label %etiq1296
	
	etiq1296:
	;___Asignacion___
	%aux2727 = load i32, i32* @IdPos5
	%aux2728 = add i32 0, 1
	%aux2729 = add i32 %aux2727, %aux2728
	store i32 %aux2729, i32* @IdPos5
	br label %etiq1298
	
	etiq1298:
	;___Asignacion___
	%aux2731 = load i32, i32* @Pivot5
	%aux2732 = add i32 0, 1
	%aux2733 = sub i32 %aux2731, %aux2732
	store i32 %aux2733, i32* @Pivot5
	br label %etiq1301
	
	etiq1293:
	;___Asignacion___
	%aux2735 = load i32, i32* @IdPos5
	%aux2736 = add i32 0, 1
	%aux2737 = add i32 %aux2735, %aux2736
	store i32 %aux2737, i32* @IdPos5
	br label %etiq1301
	
	etiq1301:
	;___IfElse___
	%aux2739 = add i32 0, 4
	%aux2740 = load i32, i32* @Pivot5
	%aux2741 = sub i32 %aux2739, %aux2740
	%aux2742 = load i32, i32* @IdPos5
	%aux2743 = icmp eq i32 %aux2741, %aux2742
	br i1 %aux2743, label %etiq1302, label %etiq1303
	
	etiq1302:
	;___Asignacion___
	%aux2745 = load i32, i32* @_Acum9
	%aux2746 = add i32 0, 2
	%aux2747 = add i32 %aux2745, %aux2746
	store i32 %aux2747, i32* @_Acum9
	br label %etiq1306
	
	etiq1306:
	;___Asignacion___
	%aux2749 = load i32, i32* @IdPos5
	%aux2750 = add i32 0, 1
	%aux2751 = add i32 %aux2749, %aux2750
	store i32 %aux2751, i32* @IdPos5
	br label %etiq1308
	
	etiq1308:
	;___Asignacion___
	%aux2753 = load i32, i32* @Pivot5
	%aux2754 = add i32 0, 1
	%aux2755 = sub i32 %aux2753, %aux2754
	store i32 %aux2755, i32* @Pivot5
	br label %etiq1311
	
	etiq1303:
	;___Asignacion___
	%aux2757 = load i32, i32* @IdPos5
	%aux2758 = add i32 0, 1
	%aux2759 = add i32 %aux2757, %aux2758
	store i32 %aux2759, i32* @IdPos5
	br label %etiq1311
	
	etiq1311:
	;___IfElse___
	%aux2761 = add i32 0, 4
	%aux2762 = load i32, i32* @Pivot5
	%aux2763 = sub i32 %aux2761, %aux2762
	%aux2764 = load i32, i32* @IdPos5
	%aux2765 = icmp eq i32 %aux2763, %aux2764
	br i1 %aux2765, label %etiq1312, label %etiq1313
	
	etiq1312:
	;___Asignacion___
	%aux2767 = load i32, i32* @_Acum9
	%aux2768 = add i32 0, 3
	%aux2769 = add i32 %aux2767, %aux2768
	store i32 %aux2769, i32* @_Acum9
	br label %etiq1316
	
	etiq1316:
	;___Asignacion___
	%aux2771 = load i32, i32* @IdPos5
	%aux2772 = add i32 0, 1
	%aux2773 = add i32 %aux2771, %aux2772
	store i32 %aux2773, i32* @IdPos5
	br label %etiq1318
	
	etiq1318:
	;___Asignacion___
	%aux2775 = load i32, i32* @Pivot5
	%aux2776 = add i32 0, 1
	%aux2777 = sub i32 %aux2775, %aux2776
	store i32 %aux2777, i32* @Pivot5
	br label %etiq1331
	
	etiq1313:
	;___Asignacion___
	%aux2779 = load i32, i32* @IdPos5
	%aux2780 = add i32 0, 1
	%aux2781 = add i32 %aux2779, %aux2780
	store i32 %aux2781, i32* @IdPos5
	br label %etiq1321
	
	etiq1321:
	;___IfElse___
	%aux2783 = add i32 0, 4
	%aux2784 = load i32, i32* @Pivot5
	%aux2785 = sub i32 %aux2783, %aux2784
	%aux2786 = load i32, i32* @IdPos5
	%aux2787 = icmp eq i32 %aux2785, %aux2786
	br i1 %aux2787, label %etiq1322, label %etiq1323
	
	etiq1322:
	;___Asignacion___
	%aux2789 = load i32, i32* @_Acum9
	%aux2790 = add i32 0, 4
	%aux2791 = add i32 %aux2789, %aux2790
	store i32 %aux2791, i32* @_Acum9
	br label %etiq1326
	
	etiq1326:
	;___Asignacion___
	%aux2793 = load i32, i32* @IdPos5
	%aux2794 = add i32 0, 1
	%aux2795 = add i32 %aux2793, %aux2794
	store i32 %aux2795, i32* @IdPos5
	br label %etiq1328
	
	etiq1328:
	;___Asignacion___
	%aux2797 = load i32, i32* @Pivot5
	%aux2798 = add i32 0, 1
	%aux2799 = sub i32 %aux2797, %aux2798
	store i32 %aux2799, i32* @Pivot5
	br label %etiq1331
	
	etiq1323:
	;___Asignacion___
	%aux2801 = load i32, i32* @IdPos5
	%aux2802 = add i32 0, 1
	%aux2803 = add i32 %aux2801, %aux2802
	store i32 %aux2803, i32* @IdPos5
	br label %etiq1331
	
	etiq1290:
	;___DisplayCadenaCaracteres___
	%aux2804 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1331
	
	etiq1286:
	;___DisplayCadenaCaracteres___
	%aux2805 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1331
	
	etiq1283:
	;___DisplayCadenaCaracteres___
	%aux2806 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1331
	
	etiq1331:
	;___Asignacion___
	%aux2808 = load i32, i32* @_Acum9
	store i32 %aux2808, i32* @_Acum10
	br label %etiq1332
	
	etiq1332:
	;___Asignacion___
	%aux2810 = add i32 0, 4
	store i32 %aux2810, i32* @Pivot5
	br label %etiq1333
	
	etiq1333:
	;___Asignacion___
	%aux2812 = add i32 0, 0
	store i32 %aux2812, i32* @IdPos5
	br label %etiq1334
	
	etiq1334:
	;___Asignacion___
	%aux2814 = add i32 0, 0
	store i32 %aux2814, i32* @_Acum7
	br label %etiq1335
	
	etiq1335:
	;___Asignacion___
	%aux2816 = add i32 0, 0
	store i32 %aux2816, i32* @_Acum8
	br label %etiq1336
	
	etiq1336:
	;___Asignacion___
	%aux2818 = add i32 0, 3
	store i32 %aux2818, i32* @Pivot4
	br label %etiq1337
	
	etiq1337:
	;___IfElse___
	%aux2820 = load i32, i32* @Pivot4
	%aux2821 = add i32 0, 1
	%aux2822 = icmp sge i32 %aux2820, %aux2821
	br i1 %aux2822, label %etiq1339, label %etiq1340
	
	etiq1339:
	;___IfElse___
	%aux2824 = add i32 0, 3
	%aux2825 = load i32, i32* @Pivot4
	%aux2826 = icmp sge i32 %aux2824, %aux2825
	br i1 %aux2826, label %etiq1342, label %etiq1343
	
	etiq1342:
	;___IfElse___
	%aux2828 = add i32 0, 3
	%aux2829 = add i32 0, 0
	%aux2830 = icmp sgt i32 %aux2828, %aux2829
	br i1 %aux2830, label %etiq1346, label %etiq1347
	
	etiq1346:
	;___IfElse___
	%aux2832 = add i32 0, 3
	%aux2833 = load i32, i32* @Pivot4
	%aux2834 = sub i32 %aux2832, %aux2833
	%aux2835 = load i32, i32* @IdPos4
	%aux2836 = icmp eq i32 %aux2834, %aux2835
	br i1 %aux2836, label %etiq1349, label %etiq1350
	
	etiq1349:
	;___Asignacion___
	%aux2838 = load i32, i32* @_Acum7
	%aux2839 = add i32 0, 1
	%aux2840 = add i32 %aux2838, %aux2839
	store i32 %aux2840, i32* @_Acum7
	br label %etiq1353
	
	etiq1353:
	;___Asignacion___
	%aux2842 = load i32, i32* @IdPos4
	%aux2843 = add i32 0, 1
	%aux2844 = add i32 %aux2842, %aux2843
	store i32 %aux2844, i32* @IdPos4
	br label %etiq1355
	
	etiq1355:
	;___Asignacion___
	%aux2846 = load i32, i32* @Pivot4
	%aux2847 = add i32 0, 1
	%aux2848 = sub i32 %aux2846, %aux2847
	store i32 %aux2848, i32* @Pivot4
	br label %etiq1358
	
	etiq1350:
	;___Asignacion___
	%aux2850 = load i32, i32* @IdPos4
	%aux2851 = add i32 0, 1
	%aux2852 = add i32 %aux2850, %aux2851
	store i32 %aux2852, i32* @IdPos4
	br label %etiq1358
	
	etiq1358:
	;___IfElse___
	%aux2854 = add i32 0, 3
	%aux2855 = load i32, i32* @Pivot4
	%aux2856 = sub i32 %aux2854, %aux2855
	%aux2857 = load i32, i32* @IdPos4
	%aux2858 = icmp eq i32 %aux2856, %aux2857
	br i1 %aux2858, label %etiq1359, label %etiq1360
	
	etiq1359:
	;___Asignacion___
	%aux2860 = load i32, i32* @_Acum7
	%aux2861 = add i32 0, 2
	%aux2862 = add i32 %aux2860, %aux2861
	store i32 %aux2862, i32* @_Acum7
	br label %etiq1363
	
	etiq1363:
	;___Asignacion___
	%aux2864 = load i32, i32* @IdPos4
	%aux2865 = add i32 0, 1
	%aux2866 = add i32 %aux2864, %aux2865
	store i32 %aux2866, i32* @IdPos4
	br label %etiq1365
	
	etiq1365:
	;___Asignacion___
	%aux2868 = load i32, i32* @Pivot4
	%aux2869 = add i32 0, 1
	%aux2870 = sub i32 %aux2868, %aux2869
	store i32 %aux2870, i32* @Pivot4
	br label %etiq1368
	
	etiq1360:
	;___Asignacion___
	%aux2872 = load i32, i32* @IdPos4
	%aux2873 = add i32 0, 1
	%aux2874 = add i32 %aux2872, %aux2873
	store i32 %aux2874, i32* @IdPos4
	br label %etiq1368
	
	etiq1368:
	;___IfElse___
	%aux2876 = add i32 0, 3
	%aux2877 = load i32, i32* @Pivot4
	%aux2878 = sub i32 %aux2876, %aux2877
	%aux2879 = load i32, i32* @IdPos4
	%aux2880 = icmp eq i32 %aux2878, %aux2879
	br i1 %aux2880, label %etiq1369, label %etiq1370
	
	etiq1369:
	;___Asignacion___
	%aux2882 = load i32, i32* @_Acum7
	%aux2883 = add i32 0, 3
	%aux2884 = add i32 %aux2882, %aux2883
	store i32 %aux2884, i32* @_Acum7
	br label %etiq1373
	
	etiq1373:
	;___Asignacion___
	%aux2886 = load i32, i32* @IdPos4
	%aux2887 = add i32 0, 1
	%aux2888 = add i32 %aux2886, %aux2887
	store i32 %aux2888, i32* @IdPos4
	br label %etiq1375
	
	etiq1375:
	;___Asignacion___
	%aux2890 = load i32, i32* @Pivot4
	%aux2891 = add i32 0, 1
	%aux2892 = sub i32 %aux2890, %aux2891
	store i32 %aux2892, i32* @Pivot4
	br label %etiq1378
	
	etiq1370:
	;___Asignacion___
	%aux2894 = load i32, i32* @IdPos4
	%aux2895 = add i32 0, 1
	%aux2896 = add i32 %aux2894, %aux2895
	store i32 %aux2896, i32* @IdPos4
	br label %etiq1378
	
	etiq1347:
	;___DisplayCadenaCaracteres___
	%aux2897 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1378
	
	etiq1343:
	;___DisplayCadenaCaracteres___
	%aux2898 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1378
	
	etiq1340:
	;___DisplayCadenaCaracteres___
	%aux2899 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1378
	
	etiq1378:
	;___Asignacion___
	%aux2901 = load i32, i32* @_Acum7
	store i32 %aux2901, i32* @_Acum8
	br label %etiq1379
	
	etiq1379:
	;___Asignacion___
	%aux2903 = add i32 0, 3
	store i32 %aux2903, i32* @Pivot4
	br label %etiq1380
	
	etiq1380:
	;___Asignacion___
	%aux2905 = add i32 0, 0
	store i32 %aux2905, i32* @IdPos4
	br label %etiq1381
	
	etiq1381:
	;___Asignacion___
	%aux2907 = add i32 0, 0
	store i32 %aux2907, i32* @_Acum3
	br label %etiq1382
	
	etiq1382:
	;___Asignacion___
	%aux2909 = add i32 0, 0
	store i32 %aux2909, i32* @_Acum4
	br label %etiq1383
	
	etiq1383:
	;___Asignacion___
	%aux2911 = add i32 0, 2
	store i32 %aux2911, i32* @Pivot2
	br label %etiq1384
	
	etiq1384:
	;___IfElse___
	%aux2913 = load i32, i32* @Pivot2
	%aux2914 = add i32 0, 1
	%aux2915 = icmp sge i32 %aux2913, %aux2914
	br i1 %aux2915, label %etiq1386, label %etiq1387
	
	etiq1386:
	;___IfElse___
	%aux2917 = add i32 0, 2
	%aux2918 = load i32, i32* @Pivot2
	%aux2919 = icmp sge i32 %aux2917, %aux2918
	br i1 %aux2919, label %etiq1389, label %etiq1390
	
	etiq1389:
	;___IfElse___
	%aux2921 = add i32 0, 2
	%aux2922 = add i32 0, 0
	%aux2923 = icmp sgt i32 %aux2921, %aux2922
	br i1 %aux2923, label %etiq1393, label %etiq1394
	
	etiq1393:
	;___IfElse___
	%aux2925 = add i32 0, 2
	%aux2926 = load i32, i32* @Pivot2
	%aux2927 = sub i32 %aux2925, %aux2926
	%aux2928 = load i32, i32* @IdPos2
	%aux2929 = icmp eq i32 %aux2927, %aux2928
	br i1 %aux2929, label %etiq1396, label %etiq1397
	
	etiq1396:
	;___Asignacion___
	%aux2931 = load i32, i32* @_Acum3
	%aux2932 = add i32 0, 1
	%aux2933 = add i32 %aux2931, %aux2932
	store i32 %aux2933, i32* @_Acum3
	br label %etiq1400
	
	etiq1400:
	;___Asignacion___
	%aux2935 = load i32, i32* @IdPos2
	%aux2936 = add i32 0, 1
	%aux2937 = add i32 %aux2935, %aux2936
	store i32 %aux2937, i32* @IdPos2
	br label %etiq1402
	
	etiq1402:
	;___Asignacion___
	%aux2939 = load i32, i32* @Pivot2
	%aux2940 = add i32 0, 1
	%aux2941 = sub i32 %aux2939, %aux2940
	store i32 %aux2941, i32* @Pivot2
	br label %etiq1405
	
	etiq1397:
	;___Asignacion___
	%aux2943 = load i32, i32* @IdPos2
	%aux2944 = add i32 0, 1
	%aux2945 = add i32 %aux2943, %aux2944
	store i32 %aux2945, i32* @IdPos2
	br label %etiq1405
	
	etiq1405:
	;___IfElse___
	%aux2947 = add i32 0, 2
	%aux2948 = load i32, i32* @Pivot2
	%aux2949 = sub i32 %aux2947, %aux2948
	%aux2950 = load i32, i32* @IdPos2
	%aux2951 = icmp eq i32 %aux2949, %aux2950
	br i1 %aux2951, label %etiq1406, label %etiq1407
	
	etiq1406:
	;___Asignacion___
	%aux2953 = load i32, i32* @_Acum3
	%aux2954 = add i32 0, 2
	%aux2955 = add i32 %aux2953, %aux2954
	store i32 %aux2955, i32* @_Acum3
	br label %etiq1410
	
	etiq1410:
	;___Asignacion___
	%aux2957 = load i32, i32* @IdPos2
	%aux2958 = add i32 0, 1
	%aux2959 = add i32 %aux2957, %aux2958
	store i32 %aux2959, i32* @IdPos2
	br label %etiq1412
	
	etiq1412:
	;___Asignacion___
	%aux2961 = load i32, i32* @Pivot2
	%aux2962 = add i32 0, 1
	%aux2963 = sub i32 %aux2961, %aux2962
	store i32 %aux2963, i32* @Pivot2
	br label %etiq1415
	
	etiq1407:
	;___Asignacion___
	%aux2965 = load i32, i32* @IdPos2
	%aux2966 = add i32 0, 1
	%aux2967 = add i32 %aux2965, %aux2966
	store i32 %aux2967, i32* @IdPos2
	br label %etiq1415
	
	etiq1394:
	;___DisplayCadenaCaracteres___
	%aux2968 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1415
	
	etiq1390:
	;___DisplayCadenaCaracteres___
	%aux2969 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1415
	
	etiq1387:
	;___DisplayCadenaCaracteres___
	%aux2970 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1415
	
	etiq1415:
	;___Asignacion___
	%aux2972 = load i32, i32* @_Acum3
	store i32 %aux2972, i32* @_Acum4
	br label %etiq1416
	
	etiq1416:
	;___Asignacion___
	%aux2974 = add i32 0, 2
	store i32 %aux2974, i32* @Pivot2
	br label %etiq1417
	
	etiq1417:
	;___Asignacion___
	%aux2976 = add i32 0, 0
	store i32 %aux2976, i32* @IdPos2
	br label %etiq1418
	
	etiq1418:
	;___Asignacion___
	%aux2978 = add i32 0, 0
	store i32 %aux2978, i32* @_Acum1
	br label %etiq1419
	
	etiq1419:
	;___Asignacion___
	%aux2980 = add i32 0, 0
	store i32 %aux2980, i32* @_Acum2
	br label %etiq1420
	
	etiq1420:
	;___Asignacion___
	%aux2982 = add i32 0, 1
	store i32 %aux2982, i32* @Pivot1
	br label %etiq1421
	
	etiq1421:
	;___IfElse___
	%aux2984 = load i32, i32* @Pivot1
	%aux2985 = add i32 0, 1
	%aux2986 = icmp sge i32 %aux2984, %aux2985
	br i1 %aux2986, label %etiq1423, label %etiq1424
	
	etiq1423:
	;___IfElse___
	%aux2988 = add i32 0, 1
	%aux2989 = load i32, i32* @Pivot1
	%aux2990 = icmp sge i32 %aux2988, %aux2989
	br i1 %aux2990, label %etiq1426, label %etiq1427
	
	etiq1426:
	;___IfElse___
	%aux2992 = add i32 0, 1
	%aux2993 = add i32 0, 0
	%aux2994 = icmp sgt i32 %aux2992, %aux2993
	br i1 %aux2994, label %etiq1430, label %etiq1431
	
	etiq1430:
	;___IfElse___
	%aux2996 = add i32 0, 1
	%aux2997 = load i32, i32* @Pivot1
	%aux2998 = sub i32 %aux2996, %aux2997
	%aux2999 = load i32, i32* @IdPos1
	%aux3000 = icmp eq i32 %aux2998, %aux2999
	br i1 %aux3000, label %etiq1433, label %etiq1434
	
	etiq1433:
	;___Asignacion___
	%aux3002 = load i32, i32* @_Acum1
	%aux3003 = add i32 0, 1
	%aux3004 = add i32 %aux3002, %aux3003
	store i32 %aux3004, i32* @_Acum1
	br label %etiq1437
	
	etiq1437:
	;___Asignacion___
	%aux3006 = load i32, i32* @IdPos1
	%aux3007 = add i32 0, 1
	%aux3008 = add i32 %aux3006, %aux3007
	store i32 %aux3008, i32* @IdPos1
	br label %etiq1439
	
	etiq1439:
	;___Asignacion___
	%aux3010 = load i32, i32* @Pivot1
	%aux3011 = add i32 0, 1
	%aux3012 = sub i32 %aux3010, %aux3011
	store i32 %aux3012, i32* @Pivot1
	br label %etiq1442
	
	etiq1434:
	;___Asignacion___
	%aux3014 = load i32, i32* @IdPos1
	%aux3015 = add i32 0, 1
	%aux3016 = add i32 %aux3014, %aux3015
	store i32 %aux3016, i32* @IdPos1
	br label %etiq1442
	
	etiq1431:
	;___DisplayCadenaCaracteres___
	%aux3017 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1442
	
	etiq1427:
	;___DisplayCadenaCaracteres___
	%aux3018 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1442
	
	etiq1424:
	;___DisplayCadenaCaracteres___
	%aux3019 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1442
	
	etiq1442:
	;___Asignacion___
	%aux3021 = load i32, i32* @_Acum1
	store i32 %aux3021, i32* @_Acum2
	br label %etiq1443
	
	etiq1443:
	;___Asignacion___
	%aux3023 = add i32 0, 1
	store i32 %aux3023, i32* @Pivot1
	br label %etiq1444
	
	etiq1444:
	;___Asignacion___
	%aux3025 = add i32 0, 0
	store i32 %aux3025, i32* @IdPos1
	br label %etiq1445
	
	etiq1445:
	;___Asignacion___
	%aux3027 = add i32 0, 0
	store i32 %aux3027, i32* @_Acum5
	br label %etiq1446
	
	etiq1446:
	;___Asignacion___
	%aux3029 = add i32 0, 0
	store i32 %aux3029, i32* @_Acum6
	br label %etiq1447
	
	etiq1447:
	;___Asignacion___
	%aux3031 = add i32 0, 2
	store i32 %aux3031, i32* @Pivot3
	br label %etiq1448
	
	etiq1448:
	;___IfElse___
	%aux3033 = load i32, i32* @Pivot3
	%aux3034 = add i32 0, 1
	%aux3035 = icmp sge i32 %aux3033, %aux3034
	br i1 %aux3035, label %etiq1450, label %etiq1451
	
	etiq1450:
	;___IfElse___
	%aux3037 = add i32 0, 2
	%aux3038 = load i32, i32* @Pivot3
	%aux3039 = icmp sge i32 %aux3037, %aux3038
	br i1 %aux3039, label %etiq1453, label %etiq1454
	
	etiq1453:
	;___IfElse___
	%aux3041 = add i32 0, 2
	%aux3042 = add i32 0, 0
	%aux3043 = icmp sgt i32 %aux3041, %aux3042
	br i1 %aux3043, label %etiq1457, label %etiq1458
	
	etiq1457:
	;___IfElse___
	%aux3045 = add i32 0, 2
	%aux3046 = load i32, i32* @Pivot3
	%aux3047 = sub i32 %aux3045, %aux3046
	%aux3048 = load i32, i32* @IdPos3
	%aux3049 = icmp eq i32 %aux3047, %aux3048
	br i1 %aux3049, label %etiq1460, label %etiq1461
	
	etiq1460:
	;___Asignacion___
	%aux3051 = load i32, i32* @_Acum5
	%aux3052 = load i32, i32* @_Acum2
	%aux3053 = add i32 %aux3051, %aux3052
	store i32 %aux3053, i32* @_Acum5
	br label %etiq1463
	
	etiq1463:
	;___Asignacion___
	%aux3055 = load i32, i32* @IdPos3
	%aux3056 = add i32 0, 1
	%aux3057 = add i32 %aux3055, %aux3056
	store i32 %aux3057, i32* @IdPos3
	br label %etiq1465
	
	etiq1465:
	;___Asignacion___
	%aux3059 = load i32, i32* @Pivot3
	%aux3060 = add i32 0, 1
	%aux3061 = sub i32 %aux3059, %aux3060
	store i32 %aux3061, i32* @Pivot3
	br label %etiq1468
	
	etiq1461:
	;___Asignacion___
	%aux3063 = load i32, i32* @IdPos3
	%aux3064 = add i32 0, 1
	%aux3065 = add i32 %aux3063, %aux3064
	store i32 %aux3065, i32* @IdPos3
	br label %etiq1468
	
	etiq1468:
	;___IfElse___
	%aux3067 = add i32 0, 2
	%aux3068 = load i32, i32* @Pivot3
	%aux3069 = sub i32 %aux3067, %aux3068
	%aux3070 = load i32, i32* @IdPos3
	%aux3071 = icmp eq i32 %aux3069, %aux3070
	br i1 %aux3071, label %etiq1469, label %etiq1470
	
	etiq1469:
	;___Asignacion___
	%aux3073 = load i32, i32* @_Acum5
	%aux3074 = load i32, i32* @_Acum4
	%aux3075 = add i32 %aux3073, %aux3074
	store i32 %aux3075, i32* @_Acum5
	br label %etiq1472
	
	etiq1472:
	;___Asignacion___
	%aux3077 = load i32, i32* @IdPos3
	%aux3078 = add i32 0, 1
	%aux3079 = add i32 %aux3077, %aux3078
	store i32 %aux3079, i32* @IdPos3
	br label %etiq1474
	
	etiq1474:
	;___Asignacion___
	%aux3081 = load i32, i32* @Pivot3
	%aux3082 = add i32 0, 1
	%aux3083 = sub i32 %aux3081, %aux3082
	store i32 %aux3083, i32* @Pivot3
	br label %etiq1477
	
	etiq1470:
	;___Asignacion___
	%aux3085 = load i32, i32* @IdPos3
	%aux3086 = add i32 0, 1
	%aux3087 = add i32 %aux3085, %aux3086
	store i32 %aux3087, i32* @IdPos3
	br label %etiq1477
	
	etiq1458:
	;___DisplayCadenaCaracteres___
	%aux3088 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1477
	
	etiq1454:
	;___DisplayCadenaCaracteres___
	%aux3089 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1477
	
	etiq1451:
	;___DisplayCadenaCaracteres___
	%aux3090 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1477
	
	etiq1477:
	;___Asignacion___
	%aux3092 = load i32, i32* @_Acum5
	store i32 %aux3092, i32* @_Acum6
	br label %etiq1478
	
	etiq1478:
	;___Asignacion___
	%aux3094 = add i32 0, 2
	store i32 %aux3094, i32* @Pivot3
	br label %etiq1479
	
	etiq1479:
	;___Asignacion___
	%aux3096 = add i32 0, 0
	store i32 %aux3096, i32* @IdPos3
	br label %etiq1480
	
	etiq1480:
	;___Asignacion___
	%aux3098 = add i32 0, 0
	store i32 %aux3098, i32* @_Acum11
	br label %etiq1481
	
	etiq1481:
	;___Asignacion___
	%aux3100 = add i32 0, 0
	store i32 %aux3100, i32* @_Acum12
	br label %etiq1482
	
	etiq1482:
	;___Asignacion___
	%aux3102 = add i32 0, 3
	store i32 %aux3102, i32* @Pivot6
	br label %etiq1483
	
	etiq1483:
	;___IfElse___
	%aux3104 = load i32, i32* @Pivot6
	%aux3105 = add i32 0, 1
	%aux3106 = icmp sge i32 %aux3104, %aux3105
	br i1 %aux3106, label %etiq1485, label %etiq1486
	
	etiq1485:
	;___IfElse___
	%aux3108 = add i32 0, 3
	%aux3109 = load i32, i32* @Pivot6
	%aux3110 = icmp sge i32 %aux3108, %aux3109
	br i1 %aux3110, label %etiq1488, label %etiq1489
	
	etiq1488:
	;___IfElse___
	%aux3112 = add i32 0, 3
	%aux3113 = add i32 0, 0
	%aux3114 = icmp sgt i32 %aux3112, %aux3113
	br i1 %aux3114, label %etiq1492, label %etiq1493
	
	etiq1492:
	;___IfElse___
	%aux3116 = add i32 0, 3
	%aux3117 = load i32, i32* @Pivot6
	%aux3118 = sub i32 %aux3116, %aux3117
	%aux3119 = load i32, i32* @IdPos6
	%aux3120 = icmp eq i32 %aux3118, %aux3119
	br i1 %aux3120, label %etiq1495, label %etiq1496
	
	etiq1495:
	;___Asignacion___
	%aux3122 = load i32, i32* @_Acum11
	%aux3123 = load i32, i32* @_Acum6
	%aux3124 = add i32 %aux3122, %aux3123
	store i32 %aux3124, i32* @_Acum11
	br label %etiq1498
	
	etiq1498:
	;___Asignacion___
	%aux3126 = load i32, i32* @IdPos6
	%aux3127 = add i32 0, 1
	%aux3128 = add i32 %aux3126, %aux3127
	store i32 %aux3128, i32* @IdPos6
	br label %etiq1500
	
	etiq1500:
	;___Asignacion___
	%aux3130 = load i32, i32* @Pivot6
	%aux3131 = add i32 0, 1
	%aux3132 = sub i32 %aux3130, %aux3131
	store i32 %aux3132, i32* @Pivot6
	br label %etiq1503
	
	etiq1496:
	;___Asignacion___
	%aux3134 = load i32, i32* @IdPos6
	%aux3135 = add i32 0, 1
	%aux3136 = add i32 %aux3134, %aux3135
	store i32 %aux3136, i32* @IdPos6
	br label %etiq1503
	
	etiq1503:
	;___IfElse___
	%aux3138 = add i32 0, 3
	%aux3139 = load i32, i32* @Pivot6
	%aux3140 = sub i32 %aux3138, %aux3139
	%aux3141 = load i32, i32* @IdPos6
	%aux3142 = icmp eq i32 %aux3140, %aux3141
	br i1 %aux3142, label %etiq1504, label %etiq1505
	
	etiq1504:
	;___Asignacion___
	%aux3144 = load i32, i32* @_Acum11
	%aux3145 = load i32, i32* @_Acum8
	%aux3146 = add i32 %aux3144, %aux3145
	store i32 %aux3146, i32* @_Acum11
	br label %etiq1507
	
	etiq1507:
	;___Asignacion___
	%aux3148 = load i32, i32* @IdPos6
	%aux3149 = add i32 0, 1
	%aux3150 = add i32 %aux3148, %aux3149
	store i32 %aux3150, i32* @IdPos6
	br label %etiq1509
	
	etiq1509:
	;___Asignacion___
	%aux3152 = load i32, i32* @Pivot6
	%aux3153 = add i32 0, 1
	%aux3154 = sub i32 %aux3152, %aux3153
	store i32 %aux3154, i32* @Pivot6
	br label %etiq1512
	
	etiq1505:
	;___Asignacion___
	%aux3156 = load i32, i32* @IdPos6
	%aux3157 = add i32 0, 1
	%aux3158 = add i32 %aux3156, %aux3157
	store i32 %aux3158, i32* @IdPos6
	br label %etiq1512
	
	etiq1512:
	;___IfElse___
	%aux3160 = add i32 0, 3
	%aux3161 = load i32, i32* @Pivot6
	%aux3162 = sub i32 %aux3160, %aux3161
	%aux3163 = load i32, i32* @IdPos6
	%aux3164 = icmp eq i32 %aux3162, %aux3163
	br i1 %aux3164, label %etiq1513, label %etiq1514
	
	etiq1513:
	;___Asignacion___
	%aux3166 = load i32, i32* @_Acum11
	%aux3167 = load i32, i32* @_Acum10
	%aux3168 = add i32 %aux3166, %aux3167
	store i32 %aux3168, i32* @_Acum11
	br label %etiq1516
	
	etiq1516:
	;___Asignacion___
	%aux3170 = load i32, i32* @IdPos6
	%aux3171 = add i32 0, 1
	%aux3172 = add i32 %aux3170, %aux3171
	store i32 %aux3172, i32* @IdPos6
	br label %etiq1518
	
	etiq1518:
	;___Asignacion___
	%aux3174 = load i32, i32* @Pivot6
	%aux3175 = add i32 0, 1
	%aux3176 = sub i32 %aux3174, %aux3175
	store i32 %aux3176, i32* @Pivot6
	br label %etiq1521
	
	etiq1514:
	;___Asignacion___
	%aux3178 = load i32, i32* @IdPos6
	%aux3179 = add i32 0, 1
	%aux3180 = add i32 %aux3178, %aux3179
	store i32 %aux3180, i32* @IdPos6
	br label %etiq1521
	
	etiq1493:
	;___DisplayCadenaCaracteres___
	%aux3181 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1521
	
	etiq1489:
	;___DisplayCadenaCaracteres___
	%aux3182 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1521
	
	etiq1486:
	;___DisplayCadenaCaracteres___
	%aux3183 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1521
	
	etiq1521:
	;___Asignacion___
	%aux3185 = load i32, i32* @_Acum11
	store i32 %aux3185, i32* @_Acum12
	br label %etiq1522
	
	etiq1522:
	;___Asignacion___
	%aux3187 = add i32 0, 3
	store i32 %aux3187, i32* @Pivot6
	br label %etiq1523
	
	etiq1523:
	;___Asignacion___
	%aux3189 = add i32 0, 0
	store i32 %aux3189, i32* @IdPos6
	br label %etiq1524
	
	etiq1524:
	%aux3190 = load i32, i32* @_Acum12
	%aux3191 = add i32 0, 15
	%aux3192 = sub i32 %aux3190, %aux3191
	%aux3193 = add i32 %aux2697, %aux3192
	store i32 %aux3193, i32* @_Acum19
	br label %etiq1526
	
	etiq1526:
	;___Asignacion___
	%aux3195 = load i32, i32* @IdPos10
	%aux3196 = add i32 0, 1
	%aux3197 = add i32 %aux3195, %aux3196
	store i32 %aux3197, i32* @IdPos10
	br label %etiq1528
	
	etiq1528:
	;___Asignacion___
	%aux3199 = load i32, i32* @Pivot10
	%aux3200 = add i32 0, 1
	%aux3201 = sub i32 %aux3199, %aux3200
	store i32 %aux3201, i32* @Pivot10
	br label %etiq1531
	
	etiq1275:
	;___Asignacion___
	%aux3203 = load i32, i32* @IdPos10
	%aux3204 = add i32 0, 1
	%aux3205 = add i32 %aux3203, %aux3204
	store i32 %aux3205, i32* @IdPos10
	br label %etiq1531
	
	etiq1531:
	;___IfElse___
	%aux3207 = add i32 0, 103
	%aux3208 = load i32, i32* @Pivot10
	%aux3209 = sub i32 %aux3207, %aux3208
	%aux3210 = load i32, i32* @IdPos10
	%aux3211 = icmp eq i32 %aux3209, %aux3210
	br i1 %aux3211, label %etiq1532, label %etiq1533
	
	etiq1532:
	;___Asignacion___
	%aux3213 = load i32, i32* @_Acum19
	%aux3214 = add i32 0, 1
	%aux3215 = add i32 0, 2
	%aux3216 = sub i32 %aux3214, %aux3215
	%aux3217 = add i32 0, 3
	%aux3218 = add i32 %aux3216, %aux3217
	%aux3219 = add i32 0, 1
	%aux3220 = sub i32 %aux3218, %aux3219
	%aux3221 = add i32 %aux3213, %aux3220
	store i32 %aux3221, i32* @_Acum19
	br label %etiq1539
	
	etiq1539:
	;___Asignacion___
	%aux3223 = load i32, i32* @IdPos10
	%aux3224 = add i32 0, 1
	%aux3225 = add i32 %aux3223, %aux3224
	store i32 %aux3225, i32* @IdPos10
	br label %etiq1541
	
	etiq1541:
	;___Asignacion___
	%aux3227 = load i32, i32* @Pivot10
	%aux3228 = add i32 0, 1
	%aux3229 = sub i32 %aux3227, %aux3228
	store i32 %aux3229, i32* @Pivot10
	br label %etiq1544
	
	etiq1533:
	;___Asignacion___
	%aux3231 = load i32, i32* @IdPos10
	%aux3232 = add i32 0, 1
	%aux3233 = add i32 %aux3231, %aux3232
	store i32 %aux3233, i32* @IdPos10
	br label %etiq1544
	
	etiq1544:
	;___IfElse___
	%aux3235 = add i32 0, 103
	%aux3236 = load i32, i32* @Pivot10
	%aux3237 = sub i32 %aux3235, %aux3236
	%aux3238 = load i32, i32* @IdPos10
	%aux3239 = icmp eq i32 %aux3237, %aux3238
	br i1 %aux3239, label %etiq1545, label %etiq1546
	
	etiq1545:
	;___Asignacion___
	%aux3241 = load i32, i32* @_Acum19
	%aux3242 = add i32 0, 1
	%aux3243 = sub i32 0, %aux3242
	br label %etiq1549
	
	etiq1549:
	;___Asignacion___
	%aux3245 = add i32 0, 0
	store i32 %aux3245, i32* @_Acum13
	br label %etiq1550
	
	etiq1550:
	;___Asignacion___
	%aux3247 = add i32 0, 0
	store i32 %aux3247, i32* @_Acum14
	br label %etiq1551
	
	etiq1551:
	;___Asignacion___
	%aux3249 = add i32 0, 2
	store i32 %aux3249, i32* @Pivot7
	br label %etiq1552
	
	etiq1552:
	;___IfElse___
	%aux3251 = load i32, i32* @Pivot7
	%aux3252 = add i32 0, 1
	%aux3253 = icmp sge i32 %aux3251, %aux3252
	br i1 %aux3253, label %etiq1554, label %etiq1555
	
	etiq1554:
	;___IfElse___
	%aux3255 = add i32 0, 2
	%aux3256 = load i32, i32* @Pivot7
	%aux3257 = icmp sge i32 %aux3255, %aux3256
	br i1 %aux3257, label %etiq1557, label %etiq1558
	
	etiq1557:
	;___IfElse___
	%aux3259 = add i32 0, 2
	%aux3260 = add i32 0, 0
	%aux3261 = icmp sgt i32 %aux3259, %aux3260
	br i1 %aux3261, label %etiq1561, label %etiq1562
	
	etiq1561:
	;___IfElse___
	%aux3263 = add i32 0, 2
	%aux3264 = load i32, i32* @Pivot7
	%aux3265 = sub i32 %aux3263, %aux3264
	%aux3266 = load i32, i32* @IdPos7
	%aux3267 = icmp eq i32 %aux3265, %aux3266
	br i1 %aux3267, label %etiq1564, label %etiq1565
	
	etiq1564:
	;___Asignacion___
	%aux3269 = load i32, i32* @_Acum13
	%aux3270 = load i32, i32* @edad
	%aux3271 = add i32 0, 0
	%aux3272 = mul i32 %aux3270, %aux3271
	%aux3273 = add i32 %aux3269, %aux3272
	store i32 %aux3273, i32* @_Acum13
	br label %etiq1569
	
	etiq1569:
	;___Asignacion___
	%aux3275 = load i32, i32* @IdPos7
	%aux3276 = add i32 0, 1
	%aux3277 = add i32 %aux3275, %aux3276
	store i32 %aux3277, i32* @IdPos7
	br label %etiq1571
	
	etiq1571:
	;___Asignacion___
	%aux3279 = load i32, i32* @Pivot7
	%aux3280 = add i32 0, 1
	%aux3281 = sub i32 %aux3279, %aux3280
	store i32 %aux3281, i32* @Pivot7
	br label %etiq1574
	
	etiq1565:
	;___Asignacion___
	%aux3283 = load i32, i32* @IdPos7
	%aux3284 = add i32 0, 1
	%aux3285 = add i32 %aux3283, %aux3284
	store i32 %aux3285, i32* @IdPos7
	br label %etiq1574
	
	etiq1574:
	;___IfElse___
	%aux3287 = add i32 0, 2
	%aux3288 = load i32, i32* @Pivot7
	%aux3289 = sub i32 %aux3287, %aux3288
	%aux3290 = load i32, i32* @IdPos7
	%aux3291 = icmp eq i32 %aux3289, %aux3290
	br i1 %aux3291, label %etiq1575, label %etiq1576
	
	etiq1575:
	;___Asignacion___
	%aux3293 = load i32, i32* @_Acum13
	%aux3294 = add i32 0, 2
	%aux3295 = add i32 %aux3293, %aux3294
	store i32 %aux3295, i32* @_Acum13
	br label %etiq1579
	
	etiq1579:
	;___Asignacion___
	%aux3297 = load i32, i32* @IdPos7
	%aux3298 = add i32 0, 1
	%aux3299 = add i32 %aux3297, %aux3298
	store i32 %aux3299, i32* @IdPos7
	br label %etiq1581
	
	etiq1581:
	;___Asignacion___
	%aux3301 = load i32, i32* @Pivot7
	%aux3302 = add i32 0, 1
	%aux3303 = sub i32 %aux3301, %aux3302
	store i32 %aux3303, i32* @Pivot7
	br label %etiq1584
	
	etiq1576:
	;___Asignacion___
	%aux3305 = load i32, i32* @IdPos7
	%aux3306 = add i32 0, 1
	%aux3307 = add i32 %aux3305, %aux3306
	store i32 %aux3307, i32* @IdPos7
	br label %etiq1584
	
	etiq1562:
	;___DisplayCadenaCaracteres___
	%aux3308 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1584
	
	etiq1558:
	;___DisplayCadenaCaracteres___
	%aux3309 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1584
	
	etiq1555:
	;___DisplayCadenaCaracteres___
	%aux3310 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1584
	
	etiq1584:
	;___Asignacion___
	%aux3312 = load i32, i32* @_Acum13
	store i32 %aux3312, i32* @_Acum14
	br label %etiq1585
	
	etiq1585:
	;___Asignacion___
	%aux3314 = add i32 0, 2
	store i32 %aux3314, i32* @Pivot7
	br label %etiq1586
	
	etiq1586:
	;___Asignacion___
	%aux3316 = add i32 0, 0
	store i32 %aux3316, i32* @IdPos7
	br label %etiq1587
	
	etiq1587:
	%aux3317 = load i32, i32* @_Acum14
	%aux3318 = add i32 %aux3243, %aux3317
	%aux3319 = add i32 %aux3241, %aux3318
	store i32 %aux3319, i32* @_Acum19
	br label %etiq1588
	
	etiq1588:
	;___Asignacion___
	%aux3321 = load i32, i32* @IdPos10
	%aux3322 = add i32 0, 1
	%aux3323 = add i32 %aux3321, %aux3322
	store i32 %aux3323, i32* @IdPos10
	br label %etiq1590
	
	etiq1590:
	;___Asignacion___
	%aux3325 = load i32, i32* @Pivot10
	%aux3326 = add i32 0, 1
	%aux3327 = sub i32 %aux3325, %aux3326
	store i32 %aux3327, i32* @Pivot10
	br label %etiq1593
	
	etiq1546:
	;___Asignacion___
	%aux3329 = load i32, i32* @IdPos10
	%aux3330 = add i32 0, 1
	%aux3331 = add i32 %aux3329, %aux3330
	store i32 %aux3331, i32* @IdPos10
	br label %etiq1593
	
	etiq1593:
	;___IfElse___
	%aux3333 = add i32 0, 103
	%aux3334 = load i32, i32* @Pivot10
	%aux3335 = sub i32 %aux3333, %aux3334
	%aux3336 = load i32, i32* @IdPos10
	%aux3337 = icmp eq i32 %aux3335, %aux3336
	br i1 %aux3337, label %etiq1594, label %etiq1595
	
	etiq1594:
	;___Asignacion___
	%aux3339 = load i32, i32* @_Acum19
	%aux3340 = add i32 0, 1
	%aux3341 = add i32 0, 2
	%aux3342 = add i32 0, 2
	%aux3343 = add i32 0, 1
	%aux3344 = sdiv i32 %aux3342, %aux3343
	%aux3345 = mul i32 %aux3341, %aux3344
	%aux3346 = sub i32 %aux3340, %aux3345
	%aux3347 = add i32 0, 4
	%aux3348 = add i32 %aux3346, %aux3347
	%aux3349 = add i32 0, 1
	%aux3350 = mul i32 %aux3348, %aux3349
	%aux3351 = add i32 %aux3339, %aux3350
	store i32 %aux3351, i32* @_Acum19
	br label %etiq1603
	
	etiq1603:
	;___Asignacion___
	%aux3353 = load i32, i32* @IdPos10
	%aux3354 = add i32 0, 1
	%aux3355 = add i32 %aux3353, %aux3354
	store i32 %aux3355, i32* @IdPos10
	br label %etiq1605
	
	etiq1605:
	;___Asignacion___
	%aux3357 = load i32, i32* @Pivot10
	%aux3358 = add i32 0, 1
	%aux3359 = sub i32 %aux3357, %aux3358
	store i32 %aux3359, i32* @Pivot10
	br label %etiq1608
	
	etiq1595:
	;___Asignacion___
	%aux3361 = load i32, i32* @IdPos10
	%aux3362 = add i32 0, 1
	%aux3363 = add i32 %aux3361, %aux3362
	store i32 %aux3363, i32* @IdPos10
	br label %etiq1608
	
	etiq1608:
	;___IfElse___
	%aux3365 = add i32 0, 103
	%aux3366 = load i32, i32* @Pivot10
	%aux3367 = sub i32 %aux3365, %aux3366
	%aux3368 = load i32, i32* @IdPos10
	%aux3369 = icmp eq i32 %aux3367, %aux3368
	br i1 %aux3369, label %etiq1609, label %etiq1610
	
	etiq1609:
	;___Asignacion___
	%aux3371 = load i32, i32* @_Acum19
	%aux3372 = add i32 0, 10
	%aux3373 = add i32 0, 10
	%aux3374 = add i32 0, 10
	%aux3375 = mul i32 %aux3373, %aux3374
	%aux3376 = add i32 %aux3372, %aux3375
	%aux3377 = add i32 0, 10
	%aux3378 = sub i32 %aux3376, %aux3377
	%aux3379 = add i32 0, 100
	%aux3380 = sdiv i32 %aux3378, %aux3379
	%aux3381 = add i32 %aux3371, %aux3380
	store i32 %aux3381, i32* @_Acum19
	br label %etiq1617
	
	etiq1617:
	;___Asignacion___
	%aux3383 = load i32, i32* @IdPos10
	%aux3384 = add i32 0, 1
	%aux3385 = add i32 %aux3383, %aux3384
	store i32 %aux3385, i32* @IdPos10
	br label %etiq1619
	
	etiq1619:
	;___Asignacion___
	%aux3387 = load i32, i32* @Pivot10
	%aux3388 = add i32 0, 1
	%aux3389 = sub i32 %aux3387, %aux3388
	store i32 %aux3389, i32* @Pivot10
	br label %etiq1622
	
	etiq1610:
	;___Asignacion___
	%aux3391 = load i32, i32* @IdPos10
	%aux3392 = add i32 0, 1
	%aux3393 = add i32 %aux3391, %aux3392
	store i32 %aux3393, i32* @IdPos10
	br label %etiq1622
	
	etiq1622:
	;___IfElse___
	%aux3395 = add i32 0, 103
	%aux3396 = load i32, i32* @Pivot10
	%aux3397 = sub i32 %aux3395, %aux3396
	%aux3398 = load i32, i32* @IdPos10
	%aux3399 = icmp eq i32 %aux3397, %aux3398
	br i1 %aux3399, label %etiq1623, label %etiq1624
	
	etiq1623:
	;___Asignacion___
	%aux3401 = load i32, i32* @_Acum19
	br label %etiq1626
	
	etiq1626:
	;___Asignacion___
	%aux3403 = add i32 0, 0
	store i32 %aux3403, i32* @_Acum15
	br label %etiq1627
	
	etiq1627:
	;___Asignacion___
	%aux3405 = add i32 0, 0
	store i32 %aux3405, i32* @_Acum16
	br label %etiq1628
	
	etiq1628:
	;___Asignacion___
	%aux3407 = add i32 0, 2
	store i32 %aux3407, i32* @Pivot8
	br label %etiq1629
	
	etiq1629:
	;___IfElse___
	%aux3409 = load i32, i32* @Pivot8
	%aux3410 = add i32 0, 1
	%aux3411 = icmp sge i32 %aux3409, %aux3410
	br i1 %aux3411, label %etiq1631, label %etiq1632
	
	etiq1631:
	;___IfElse___
	%aux3413 = add i32 0, 3
	%aux3414 = load i32, i32* @Pivot8
	%aux3415 = icmp sge i32 %aux3413, %aux3414
	br i1 %aux3415, label %etiq1634, label %etiq1635
	
	etiq1634:
	;___IfElse___
	%aux3417 = add i32 0, 3
	%aux3418 = add i32 0, 0
	%aux3419 = icmp sgt i32 %aux3417, %aux3418
	br i1 %aux3419, label %etiq1638, label %etiq1639
	
	etiq1638:
	;___IfElse___
	%aux3421 = add i32 0, 3
	%aux3422 = load i32, i32* @Pivot8
	%aux3423 = sub i32 %aux3421, %aux3422
	%aux3424 = load i32, i32* @IdPos8
	%aux3425 = icmp eq i32 %aux3423, %aux3424
	br i1 %aux3425, label %etiq1641, label %etiq1642
	
	etiq1641:
	;___Asignacion___
	%aux3427 = load i32, i32* @_Acum15
	%aux3428 = add i32 0, 5
	%aux3429 = add i32 %aux3427, %aux3428
	store i32 %aux3429, i32* @_Acum15
	br label %etiq1645
	
	etiq1645:
	;___Asignacion___
	%aux3431 = load i32, i32* @IdPos8
	%aux3432 = add i32 0, 1
	%aux3433 = add i32 %aux3431, %aux3432
	store i32 %aux3433, i32* @IdPos8
	br label %etiq1647
	
	etiq1647:
	;___Asignacion___
	%aux3435 = load i32, i32* @Pivot8
	%aux3436 = add i32 0, 1
	%aux3437 = sub i32 %aux3435, %aux3436
	store i32 %aux3437, i32* @Pivot8
	br label %etiq1650
	
	etiq1642:
	;___Asignacion___
	%aux3439 = load i32, i32* @IdPos8
	%aux3440 = add i32 0, 1
	%aux3441 = add i32 %aux3439, %aux3440
	store i32 %aux3441, i32* @IdPos8
	br label %etiq1650
	
	etiq1650:
	;___IfElse___
	%aux3443 = add i32 0, 3
	%aux3444 = load i32, i32* @Pivot8
	%aux3445 = sub i32 %aux3443, %aux3444
	%aux3446 = load i32, i32* @IdPos8
	%aux3447 = icmp eq i32 %aux3445, %aux3446
	br i1 %aux3447, label %etiq1651, label %etiq1652
	
	etiq1651:
	;___Asignacion___
	%aux3449 = load i32, i32* @_Acum15
	%aux3450 = add i32 0, 1
	%aux3451 = sub i32 0, %aux3450
	%aux3452 = add i32 %aux3449, %aux3451
	store i32 %aux3452, i32* @_Acum15
	br label %etiq1655
	
	etiq1655:
	;___Asignacion___
	%aux3454 = load i32, i32* @IdPos8
	%aux3455 = add i32 0, 1
	%aux3456 = add i32 %aux3454, %aux3455
	store i32 %aux3456, i32* @IdPos8
	br label %etiq1657
	
	etiq1657:
	;___Asignacion___
	%aux3458 = load i32, i32* @Pivot8
	%aux3459 = add i32 0, 1
	%aux3460 = sub i32 %aux3458, %aux3459
	store i32 %aux3460, i32* @Pivot8
	br label %etiq1660
	
	etiq1652:
	;___Asignacion___
	%aux3462 = load i32, i32* @IdPos8
	%aux3463 = add i32 0, 1
	%aux3464 = add i32 %aux3462, %aux3463
	store i32 %aux3464, i32* @IdPos8
	br label %etiq1660
	
	etiq1660:
	;___IfElse___
	%aux3466 = add i32 0, 3
	%aux3467 = load i32, i32* @Pivot8
	%aux3468 = sub i32 %aux3466, %aux3467
	%aux3469 = load i32, i32* @IdPos8
	%aux3470 = icmp eq i32 %aux3468, %aux3469
	br i1 %aux3470, label %etiq1661, label %etiq1662
	
	etiq1661:
	;___Asignacion___
	%aux3472 = load i32, i32* @_Acum15
	%aux3473 = add i32 0, 2
	%aux3474 = add i32 %aux3472, %aux3473
	store i32 %aux3474, i32* @_Acum15
	br label %etiq1665
	
	etiq1665:
	;___Asignacion___
	%aux3476 = load i32, i32* @IdPos8
	%aux3477 = add i32 0, 1
	%aux3478 = add i32 %aux3476, %aux3477
	store i32 %aux3478, i32* @IdPos8
	br label %etiq1667
	
	etiq1667:
	;___Asignacion___
	%aux3480 = load i32, i32* @Pivot8
	%aux3481 = add i32 0, 1
	%aux3482 = sub i32 %aux3480, %aux3481
	store i32 %aux3482, i32* @Pivot8
	br label %etiq1670
	
	etiq1662:
	;___Asignacion___
	%aux3484 = load i32, i32* @IdPos8
	%aux3485 = add i32 0, 1
	%aux3486 = add i32 %aux3484, %aux3485
	store i32 %aux3486, i32* @IdPos8
	br label %etiq1670
	
	etiq1639:
	;___DisplayCadenaCaracteres___
	%aux3487 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1670
	
	etiq1635:
	;___DisplayCadenaCaracteres___
	%aux3488 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1670
	
	etiq1632:
	;___DisplayCadenaCaracteres___
	%aux3489 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1670
	
	etiq1670:
	;___Asignacion___
	%aux3491 = load i32, i32* @_Acum15
	store i32 %aux3491, i32* @_Acum16
	br label %etiq1671
	
	etiq1671:
	;___Asignacion___
	%aux3493 = add i32 0, 2
	store i32 %aux3493, i32* @Pivot8
	br label %etiq1672
	
	etiq1672:
	;___Asignacion___
	%aux3495 = add i32 0, 0
	store i32 %aux3495, i32* @IdPos8
	br label %etiq1673
	
	etiq1673:
	%aux3496 = load i32, i32* @_Acum16
	%aux3497 = sub i32 0, %aux3496
	%aux3498 = add i32 0, 1
	%aux3499 = sub i32 0, %aux3498
	%aux3500 = mul i32 %aux3497, %aux3499
	%aux3501 = add i32 %aux3401, %aux3500
	store i32 %aux3501, i32* @_Acum19
	br label %etiq1675
	
	etiq1675:
	;___Asignacion___
	%aux3503 = load i32, i32* @IdPos10
	%aux3504 = add i32 0, 1
	%aux3505 = add i32 %aux3503, %aux3504
	store i32 %aux3505, i32* @IdPos10
	br label %etiq1677
	
	etiq1677:
	;___Asignacion___
	%aux3507 = load i32, i32* @Pivot10
	%aux3508 = add i32 0, 1
	%aux3509 = sub i32 %aux3507, %aux3508
	store i32 %aux3509, i32* @Pivot10
	br label %etiq1680
	
	etiq1624:
	;___Asignacion___
	%aux3511 = load i32, i32* @IdPos10
	%aux3512 = add i32 0, 1
	%aux3513 = add i32 %aux3511, %aux3512
	store i32 %aux3513, i32* @IdPos10
	br label %etiq1680
	
	etiq1680:
	;___IfElse___
	%aux3515 = add i32 0, 103
	%aux3516 = load i32, i32* @Pivot10
	%aux3517 = sub i32 %aux3515, %aux3516
	%aux3518 = load i32, i32* @IdPos10
	%aux3519 = icmp eq i32 %aux3517, %aux3518
	br i1 %aux3519, label %etiq1681, label %etiq1682
	
	etiq1681:
	;___Asignacion___
	%aux3521 = load i32, i32* @_Acum19
	%aux3522 = add i32 0, 1
	%aux3523 = add i32 0, 2
	%aux3524 = add i32 %aux3522, %aux3523
	%aux3525 = add i32 0, 3
	%aux3526 = add i32 %aux3524, %aux3525
	%aux3527 = add i32 0, 4
	%aux3528 = add i32 %aux3526, %aux3527
	%aux3529 = add i32 0, 10
	%aux3530 = sdiv i32 %aux3528, %aux3529
	%aux3531 = add i32 %aux3521, %aux3530
	store i32 %aux3531, i32* @_Acum19
	br label %etiq1689
	
	etiq1689:
	;___Asignacion___
	%aux3533 = load i32, i32* @IdPos10
	%aux3534 = add i32 0, 1
	%aux3535 = add i32 %aux3533, %aux3534
	store i32 %aux3535, i32* @IdPos10
	br label %etiq1691
	
	etiq1691:
	;___Asignacion___
	%aux3537 = load i32, i32* @Pivot10
	%aux3538 = add i32 0, 1
	%aux3539 = sub i32 %aux3537, %aux3538
	store i32 %aux3539, i32* @Pivot10
	br label %etiq1694
	
	etiq1682:
	;___Asignacion___
	%aux3541 = load i32, i32* @IdPos10
	%aux3542 = add i32 0, 1
	%aux3543 = add i32 %aux3541, %aux3542
	store i32 %aux3543, i32* @IdPos10
	br label %etiq1694
	
	etiq1694:
	;___IfElse___
	%aux3545 = add i32 0, 103
	%aux3546 = load i32, i32* @Pivot10
	%aux3547 = sub i32 %aux3545, %aux3546
	%aux3548 = load i32, i32* @IdPos10
	%aux3549 = icmp eq i32 %aux3547, %aux3548
	br i1 %aux3549, label %etiq1695, label %etiq1696
	
	etiq1695:
	;___Asignacion___
	%aux3551 = load i32, i32* @_Acum19
	%aux3552 = add i32 0, 50
	%aux3553 = add i32 0, 50
	%aux3554 = sdiv i32 %aux3552, %aux3553
	%aux3555 = add i32 %aux3551, %aux3554
	store i32 %aux3555, i32* @_Acum19
	br label %etiq1700
	
	etiq1700:
	;___Asignacion___
	%aux3557 = load i32, i32* @IdPos10
	%aux3558 = add i32 0, 1
	%aux3559 = add i32 %aux3557, %aux3558
	store i32 %aux3559, i32* @IdPos10
	br label %etiq1702
	
	etiq1702:
	;___Asignacion___
	%aux3561 = load i32, i32* @Pivot10
	%aux3562 = add i32 0, 1
	%aux3563 = sub i32 %aux3561, %aux3562
	store i32 %aux3563, i32* @Pivot10
	br label %etiq1705
	
	etiq1696:
	;___Asignacion___
	%aux3565 = load i32, i32* @IdPos10
	%aux3566 = add i32 0, 1
	%aux3567 = add i32 %aux3565, %aux3566
	store i32 %aux3567, i32* @IdPos10
	br label %etiq1705
	
	etiq1705:
	;___IfElse___
	%aux3569 = add i32 0, 103
	%aux3570 = load i32, i32* @Pivot10
	%aux3571 = sub i32 %aux3569, %aux3570
	%aux3572 = load i32, i32* @IdPos10
	%aux3573 = icmp eq i32 %aux3571, %aux3572
	br i1 %aux3573, label %etiq1706, label %etiq1707
	
	etiq1706:
	;___Asignacion___
	%aux3575 = load i32, i32* @_Acum19
	%aux3576 = add i32 0, 50000
	%aux3577 = add i32 0, 49999
	%aux3578 = sub i32 %aux3576, %aux3577
	%aux3579 = add i32 %aux3575, %aux3578
	store i32 %aux3579, i32* @_Acum19
	br label %etiq1711
	
	etiq1711:
	;___Asignacion___
	%aux3581 = load i32, i32* @IdPos10
	%aux3582 = add i32 0, 1
	%aux3583 = add i32 %aux3581, %aux3582
	store i32 %aux3583, i32* @IdPos10
	br label %etiq1713
	
	etiq1713:
	;___Asignacion___
	%aux3585 = load i32, i32* @Pivot10
	%aux3586 = add i32 0, 1
	%aux3587 = sub i32 %aux3585, %aux3586
	store i32 %aux3587, i32* @Pivot10
	br label %etiq1716
	
	etiq1707:
	;___Asignacion___
	%aux3589 = load i32, i32* @IdPos10
	%aux3590 = add i32 0, 1
	%aux3591 = add i32 %aux3589, %aux3590
	store i32 %aux3591, i32* @IdPos10
	br label %etiq1716
	
	etiq1716:
	;___IfElse___
	%aux3593 = add i32 0, 103
	%aux3594 = load i32, i32* @Pivot10
	%aux3595 = sub i32 %aux3593, %aux3594
	%aux3596 = load i32, i32* @IdPos10
	%aux3597 = icmp eq i32 %aux3595, %aux3596
	br i1 %aux3597, label %etiq1717, label %etiq1718
	
	etiq1717:
	;___Asignacion___
	%aux3599 = load i32, i32* @_Acum19
	%aux3600 = add i32 0, 2
	%aux3601 = add i32 0, 1
	%aux3602 = sub i32 %aux3600, %aux3601
	%aux3603 = add i32 %aux3599, %aux3602
	store i32 %aux3603, i32* @_Acum19
	br label %etiq1722
	
	etiq1722:
	;___Asignacion___
	%aux3605 = load i32, i32* @IdPos10
	%aux3606 = add i32 0, 1
	%aux3607 = add i32 %aux3605, %aux3606
	store i32 %aux3607, i32* @IdPos10
	br label %etiq1724
	
	etiq1724:
	;___Asignacion___
	%aux3609 = load i32, i32* @Pivot10
	%aux3610 = add i32 0, 1
	%aux3611 = sub i32 %aux3609, %aux3610
	store i32 %aux3611, i32* @Pivot10
	br label %etiq1727
	
	etiq1718:
	;___Asignacion___
	%aux3613 = load i32, i32* @IdPos10
	%aux3614 = add i32 0, 1
	%aux3615 = add i32 %aux3613, %aux3614
	store i32 %aux3615, i32* @IdPos10
	br label %etiq1727
	
	etiq1727:
	;___IfElse___
	%aux3617 = add i32 0, 103
	%aux3618 = load i32, i32* @Pivot10
	%aux3619 = sub i32 %aux3617, %aux3618
	%aux3620 = load i32, i32* @IdPos10
	%aux3621 = icmp eq i32 %aux3619, %aux3620
	br i1 %aux3621, label %etiq1728, label %etiq1729
	
	etiq1728:
	;___Asignacion___
	%aux3623 = load i32, i32* @_Acum19
	%aux3624 = add i32 0, 1
	%aux3625 = add i32 0, 1
	%aux3626 = mul i32 %aux3624, %aux3625
	%aux3627 = add i32 %aux3623, %aux3626
	store i32 %aux3627, i32* @_Acum19
	br label %etiq1733
	
	etiq1733:
	;___Asignacion___
	%aux3629 = load i32, i32* @IdPos10
	%aux3630 = add i32 0, 1
	%aux3631 = add i32 %aux3629, %aux3630
	store i32 %aux3631, i32* @IdPos10
	br label %etiq1735
	
	etiq1735:
	;___Asignacion___
	%aux3633 = load i32, i32* @Pivot10
	%aux3634 = add i32 0, 1
	%aux3635 = sub i32 %aux3633, %aux3634
	store i32 %aux3635, i32* @Pivot10
	br label %etiq1738
	
	etiq1729:
	;___Asignacion___
	%aux3637 = load i32, i32* @IdPos10
	%aux3638 = add i32 0, 1
	%aux3639 = add i32 %aux3637, %aux3638
	store i32 %aux3639, i32* @IdPos10
	br label %etiq1738
	
	etiq1738:
	;___IfElse___
	%aux3641 = add i32 0, 103
	%aux3642 = load i32, i32* @Pivot10
	%aux3643 = sub i32 %aux3641, %aux3642
	%aux3644 = load i32, i32* @IdPos10
	%aux3645 = icmp eq i32 %aux3643, %aux3644
	br i1 %aux3645, label %etiq1739, label %etiq1740
	
	etiq1739:
	;___Asignacion___
	%aux3647 = load i32, i32* @_Acum19
	%aux3648 = add i32 0, 1
	%aux3649 = add i32 0, 0
	%aux3650 = add i32 %aux3648, %aux3649
	%aux3651 = add i32 %aux3647, %aux3650
	store i32 %aux3651, i32* @_Acum19
	br label %etiq1744
	
	etiq1744:
	;___Asignacion___
	%aux3653 = load i32, i32* @IdPos10
	%aux3654 = add i32 0, 1
	%aux3655 = add i32 %aux3653, %aux3654
	store i32 %aux3655, i32* @IdPos10
	br label %etiq1746
	
	etiq1746:
	;___Asignacion___
	%aux3657 = load i32, i32* @Pivot10
	%aux3658 = add i32 0, 1
	%aux3659 = sub i32 %aux3657, %aux3658
	store i32 %aux3659, i32* @Pivot10
	br label %etiq1749
	
	etiq1740:
	;___Asignacion___
	%aux3661 = load i32, i32* @IdPos10
	%aux3662 = add i32 0, 1
	%aux3663 = add i32 %aux3661, %aux3662
	store i32 %aux3663, i32* @IdPos10
	br label %etiq1749
	
	etiq1749:
	;___IfElse___
	%aux3665 = add i32 0, 103
	%aux3666 = load i32, i32* @Pivot10
	%aux3667 = sub i32 %aux3665, %aux3666
	%aux3668 = load i32, i32* @IdPos10
	%aux3669 = icmp eq i32 %aux3667, %aux3668
	br i1 %aux3669, label %etiq1750, label %etiq1751
	
	etiq1750:
	;___Asignacion___
	%aux3671 = load i32, i32* @_Acum19
	%aux3672 = load i32, i32* @_Acum18
	%aux3673 = add i32 %aux3671, %aux3672
	store i32 %aux3673, i32* @_Acum19
	br label %etiq1753
	
	etiq1753:
	;___Asignacion___
	%aux3675 = load i32, i32* @IdPos10
	%aux3676 = add i32 0, 1
	%aux3677 = add i32 %aux3675, %aux3676
	store i32 %aux3677, i32* @IdPos10
	br label %etiq1755
	
	etiq1755:
	;___Asignacion___
	%aux3679 = load i32, i32* @Pivot10
	%aux3680 = add i32 0, 1
	%aux3681 = sub i32 %aux3679, %aux3680
	store i32 %aux3681, i32* @Pivot10
	br label %etiq1758
	
	etiq1751:
	;___Asignacion___
	%aux3683 = load i32, i32* @IdPos10
	%aux3684 = add i32 0, 1
	%aux3685 = add i32 %aux3683, %aux3684
	store i32 %aux3685, i32* @IdPos10
	br label %etiq1758
	
	etiq372:
	;___DisplayCadenaCaracteres___
	%aux3686 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1758
	
	etiq368:
	;___DisplayCadenaCaracteres___
	%aux3687 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1758
	
	etiq365:
	;___DisplayCadenaCaracteres___
	%aux3688 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1758
	
	etiq1758:
	;___Asignacion___
	%aux3690 = load i32, i32* @_Acum19
	store i32 %aux3690, i32* @res
	br label %etiq1759
	
	etiq1759:
	;___Asignacion___
	%aux3692 = load i32, i32* @pivot
	store i32 %aux3692, i32* @Pivot10
	br label %etiq1760
	
	etiq1760:
	;___Asignacion___
	%aux3694 = add i32 0, 0
	store i32 %aux3694, i32* @IdPos10
	br label %etiq1761
	
	etiq1761:
	;___DisplayCadenaCaracteres___
	%aux3695 = call i32 @puts(i8* getelementptr ([12 x i8], [12 x i8] * @str61, i32 0, i32 0))
	br label %etiq1762
	
	etiq1762:
	;___DisplayExpresion___
	%aux3697 = load i32, i32* @res
	%aux3696 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux3697)
	br label %etiq1763
	
	etiq1763:
	;___DisplayCadenaCaracteres___
	%aux3698 = call i32 @puts(i8* getelementptr ([28 x i8], [28 x i8] * @str62, i32 0, i32 0))
	br label %etiq1764
	
	etiq1764:
	;___DisplayCadenaCaracteres___
	%aux3699 = call i32 @puts(i8* getelementptr ([30 x i8], [30 x i8] * @str63, i32 0, i32 0))
	br label %etiq1765
	
	etiq1765:
	;___Asignacion___
	%aux3701 = alloca double
	%aux3702 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux3701)
	%aux3703 = load double, double* %aux3701
	store double %aux3703, double* @peso
	br label %etiq1766
	
	etiq1766:
	;___DisplayCadenaCaracteres___
	%aux3704 = call i32 @puts(i8* getelementptr ([32 x i8], [32 x i8] * @str64, i32 0, i32 0))
	br label %etiq1767
	
	etiq1767:
	;___Asignacion___
	%aux3706 = alloca double
	%aux3707 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux3706)
	%aux3708 = load double, double* %aux3706
	store double %aux3708, double* @altura
	br label %etiq1768
	
	etiq1768:
	;___Asignacion___
	%aux3710 = add i1 0, 1
	store i1 %aux3710, i1* @aux2
	br label %etiq1769
	
	etiq1769:
	;___While___
	%aux3712 = load i1, i1* @aux2
	br i1 %aux3712, label %etiq1770, label %etiq1803
	
	etiq1770:
	;___DisplayCadenaCaracteres___
	%aux3713 = call i32 @puts(i8* getelementptr ([90 x i8], [90 x i8] * @str65, i32 0, i32 0))
	br label %etiq1772
	
	etiq1772:
	;___Asignacion___
	%aux3715 = alloca i32
	%aux3716 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux3715)
	%aux3717 = load i32, i32* %aux3715
	store i32 %aux3717, i32* @res
	br label %etiq1773
	
	etiq1773:
	;___IfElse___
	%aux3719 = load i32, i32* @res
	%aux3720 = add i32 0, 1
	%aux3721 = icmp eq i32 %aux3719, %aux3720
	br i1 %aux3721, label %etiq1775, label %etiq1776
	
	etiq1775:
	;___DisplayCadenaCaracteres___
	%aux3722 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str66, i32 0, i32 0))
	br label %etiq1778
	
	etiq1778:
	;___DisplayExpresion___
	%aux3724 = load double, double* @peso
	%aux3725 = load double, double* @altura
	%aux3726 = fmul double %aux3724, %aux3725
	%aux3727 = load i32, i32* @edad
	%aux3728 = sitofp i32 %aux3727 to double
	%aux3729 = fmul double %aux3726, %aux3728
	%aux3723 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3729)
	br label %etiq1780
	
	etiq1780:
	;___Asignacion___
	%aux3731 = load i1, i1* @aux2
	%aux3732 = xor i1 %aux3731, 1
	store i1 %aux3732, i1* @aux2
	br label %etiq1769
	
	etiq1776:
	;___IfElse___
	%aux3734 = load i32, i32* @res
	%aux3735 = add i32 0, 2
	%aux3736 = icmp eq i32 %aux3734, %aux3735
	br i1 %aux3736, label %etiq1782, label %etiq1783
	
	etiq1782:
	;___DisplayCadenaCaracteres___
	%aux3737 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str67, i32 0, i32 0))
	br label %etiq1785
	
	etiq1785:
	;___DisplayExpresion___
	%aux3739 = load double, double* @peso
	%aux3740 = load double, double* @altura
	%aux3741 = fdiv double %aux3739, %aux3740
	%aux3742 = load i32, i32* @edad
	%aux3743 = sitofp i32 %aux3742 to double
	%aux3744 = fdiv double %aux3741, %aux3743
	%aux3738 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3744)
	br label %etiq1787
	
	etiq1787:
	;___Asignacion___
	%aux3746 = load i1, i1* @aux2
	%aux3747 = xor i1 %aux3746, 1
	store i1 %aux3747, i1* @aux2
	br label %etiq1769
	
	etiq1783:
	;___IfElse___
	%aux3749 = load i32, i32* @res
	%aux3750 = add i32 0, 3
	%aux3751 = icmp eq i32 %aux3749, %aux3750
	br i1 %aux3751, label %etiq1789, label %etiq1790
	
	etiq1789:
	;___DisplayCadenaCaracteres___
	%aux3752 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str68, i32 0, i32 0))
	br label %etiq1792
	
	etiq1792:
	;___DisplayExpresion___
	%aux3754 = load double, double* @peso
	%aux3755 = load double, double* @altura
	%aux3756 = fadd double %aux3754, %aux3755
	%aux3757 = load i32, i32* @edad
	%aux3758 = sitofp i32 %aux3757 to double
	%aux3759 = fadd double %aux3756, %aux3758
	%aux3753 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3759)
	br label %etiq1794
	
	etiq1794:
	;___Asignacion___
	%aux3761 = load i1, i1* @aux2
	%aux3762 = xor i1 %aux3761, 1
	store i1 %aux3762, i1* @aux2
	br label %etiq1769
	
	etiq1790:
	;___IfElse___
	%aux3764 = load i32, i32* @res
	%aux3765 = add i32 0, 4
	%aux3766 = icmp eq i32 %aux3764, %aux3765
	br i1 %aux3766, label %etiq1796, label %etiq1797
	
	etiq1796:
	;___DisplayCadenaCaracteres___
	%aux3767 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str69, i32 0, i32 0))
	br label %etiq1799
	
	etiq1799:
	;___DisplayExpresion___
	%aux3769 = load double, double* @peso
	%aux3770 = load double, double* @altura
	%aux3771 = fsub double %aux3769, %aux3770
	%aux3772 = load i32, i32* @edad
	%aux3773 = sitofp i32 %aux3772 to double
	%aux3774 = fsub double %aux3771, %aux3773
	%aux3768 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3774)
	br label %etiq1801
	
	etiq1801:
	;___Asignacion___
	%aux3776 = load i1, i1* @aux2
	%aux3777 = xor i1 %aux3776, 1
	store i1 %aux3777, i1* @aux2
	br label %etiq1769
	
	etiq1797:
	;___DisplayCadenaCaracteres___
	%aux3778 = call i32 @puts(i8* getelementptr ([60 x i8], [60 x i8] * @str70, i32 0, i32 0))
	br label %etiq1769
	
	etiq1803:
	;___DisplayCadenaCaracteres___
	%aux3779 = call i32 @puts(i8* getelementptr ([46 x i8], [46 x i8] * @str71, i32 0, i32 0))
	br label %etiq1804
	
	etiq1804:
	;___Asignacion___
	%aux3781 = alloca i32
	%aux3782 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux3781)
	%aux3783 = load i32, i32* %aux3781
	%aux3784 = trunc i32 %aux3783 to i1
	store i1 %aux3784, i1* @aux
	br label %etiq3
	
	etiq1806:
	ret i32 0
}

