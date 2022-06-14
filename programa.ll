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
	br i1 %aux6, label %etiq4, label %etiq1708
	
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
	br i1 %aux51, label %etiq35, label %etiq1666
	
	etiq35:
	;___Asignacion___
	%aux53 = add i32 0, 100
	%aux54 = load i32, i32* @edad
	%aux55 = sub i32 %aux53, %aux54
	store i32 %aux55, i32* @pivot
	br label %etiq37
	
	etiq37:
	;___Asignacion___
	%aux57 = add i32 0, 1
	store i32 %aux57, i32* @Pivot9
	br label %etiq38
	
	etiq38:
	;___IfElse___
	%aux59 = load i32, i32* @Pivot9
	%aux60 = add i32 0, 1
	%aux61 = icmp sge i32 %aux59, %aux60
	br i1 %aux61, label %etiq40, label %etiq41
	
	etiq40:
	;___IfElse___
	%aux63 = add i32 0, 2
	%aux64 = load i32, i32* @Pivot9
	%aux65 = icmp sge i32 %aux63, %aux64
	br i1 %aux65, label %etiq43, label %etiq44
	
	etiq43:
	;___IfElse___
	%aux67 = add i32 0, 2
	%aux68 = add i32 0, 0
	%aux69 = icmp sgt i32 %aux67, %aux68
	br i1 %aux69, label %etiq47, label %etiq48
	
	etiq47:
	;___IfElse___
	%aux71 = add i32 0, 2
	%aux72 = load i32, i32* @Pivot9
	%aux73 = sub i32 %aux71, %aux72
	%aux74 = load i32, i32* @IdPos9
	%aux75 = icmp eq i32 %aux73, %aux74
	br i1 %aux75, label %etiq50, label %etiq51
	
	etiq50:
	;___Asignacion___
	%aux77 = load i32, i32* @_Acum17
	%aux78 = add i32 0, 2
	%aux79 = add i32 %aux77, %aux78
	store i32 %aux79, i32* @_Acum17
	br label %etiq54
	
	etiq54:
	;___Asignacion___
	%aux81 = load i32, i32* @IdPos9
	%aux82 = add i32 0, 1
	%aux83 = add i32 %aux81, %aux82
	store i32 %aux83, i32* @IdPos9
	br label %etiq56
	
	etiq56:
	;___Asignacion___
	%aux85 = load i32, i32* @Pivot9
	%aux86 = add i32 0, 1
	%aux87 = sub i32 %aux85, %aux86
	store i32 %aux87, i32* @Pivot9
	br label %etiq59
	
	etiq51:
	;___Asignacion___
	%aux89 = load i32, i32* @IdPos9
	%aux90 = add i32 0, 1
	%aux91 = add i32 %aux89, %aux90
	store i32 %aux91, i32* @IdPos9
	br label %etiq59
	
	etiq59:
	;___IfElse___
	%aux93 = add i32 0, 2
	%aux94 = load i32, i32* @Pivot9
	%aux95 = sub i32 %aux93, %aux94
	%aux96 = load i32, i32* @IdPos9
	%aux97 = icmp eq i32 %aux95, %aux96
	br i1 %aux97, label %etiq60, label %etiq61
	
	etiq60:
	;___Asignacion___
	%aux99 = load i32, i32* @_Acum17
	%aux100 = add i32 0, 1
	%aux101 = add i32 %aux99, %aux100
	store i32 %aux101, i32* @_Acum17
	br label %etiq64
	
	etiq64:
	;___Asignacion___
	%aux103 = load i32, i32* @IdPos9
	%aux104 = add i32 0, 1
	%aux105 = add i32 %aux103, %aux104
	store i32 %aux105, i32* @IdPos9
	br label %etiq66
	
	etiq66:
	;___Asignacion___
	%aux107 = load i32, i32* @Pivot9
	%aux108 = add i32 0, 1
	%aux109 = sub i32 %aux107, %aux108
	store i32 %aux109, i32* @Pivot9
	br label %etiq69
	
	etiq61:
	;___Asignacion___
	%aux111 = load i32, i32* @IdPos9
	%aux112 = add i32 0, 1
	%aux113 = add i32 %aux111, %aux112
	store i32 %aux113, i32* @IdPos9
	br label %etiq69
	
	etiq48:
	;___DisplayCadenaCaracteres___
	%aux114 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq69
	
	etiq44:
	;___DisplayCadenaCaracteres___
	%aux115 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq69
	
	etiq41:
	;___DisplayCadenaCaracteres___
	%aux116 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq69
	
	etiq69:
	;___Asignacion___
	%aux118 = load i32, i32* @_Acum17
	store i32 %aux118, i32* @_Acum18
	br label %etiq70
	
	etiq70:
	;___Asignacion___
	%aux120 = add i32 0, 2
	store i32 %aux120, i32* @Pivot7
	br label %etiq71
	
	etiq71:
	;___IfElse___
	%aux122 = load i32, i32* @Pivot7
	%aux123 = add i32 0, 1
	%aux124 = icmp sge i32 %aux122, %aux123
	br i1 %aux124, label %etiq73, label %etiq74
	
	etiq73:
	;___IfElse___
	%aux126 = add i32 0, 2
	%aux127 = load i32, i32* @Pivot7
	%aux128 = icmp sge i32 %aux126, %aux127
	br i1 %aux128, label %etiq76, label %etiq77
	
	etiq76:
	;___IfElse___
	%aux130 = add i32 0, 2
	%aux131 = add i32 0, 0
	%aux132 = icmp sgt i32 %aux130, %aux131
	br i1 %aux132, label %etiq80, label %etiq81
	
	etiq80:
	;___IfElse___
	%aux134 = add i32 0, 2
	%aux135 = load i32, i32* @Pivot7
	%aux136 = sub i32 %aux134, %aux135
	%aux137 = load i32, i32* @IdPos7
	%aux138 = icmp eq i32 %aux136, %aux137
	br i1 %aux138, label %etiq83, label %etiq84
	
	etiq83:
	;___Asignacion___
	%aux140 = load i32, i32* @_Acum13
	%aux141 = load i32, i32* @edad
	%aux142 = add i32 0, 0
	%aux143 = mul i32 %aux141, %aux142
	%aux144 = add i32 %aux140, %aux143
	store i32 %aux144, i32* @_Acum13
	br label %etiq88
	
	etiq88:
	;___Asignacion___
	%aux146 = load i32, i32* @IdPos7
	%aux147 = add i32 0, 1
	%aux148 = add i32 %aux146, %aux147
	store i32 %aux148, i32* @IdPos7
	br label %etiq90
	
	etiq90:
	;___Asignacion___
	%aux150 = load i32, i32* @Pivot7
	%aux151 = add i32 0, 1
	%aux152 = sub i32 %aux150, %aux151
	store i32 %aux152, i32* @Pivot7
	br label %etiq93
	
	etiq84:
	;___Asignacion___
	%aux154 = load i32, i32* @IdPos7
	%aux155 = add i32 0, 1
	%aux156 = add i32 %aux154, %aux155
	store i32 %aux156, i32* @IdPos7
	br label %etiq93
	
	etiq93:
	;___IfElse___
	%aux158 = add i32 0, 2
	%aux159 = load i32, i32* @Pivot7
	%aux160 = sub i32 %aux158, %aux159
	%aux161 = load i32, i32* @IdPos7
	%aux162 = icmp eq i32 %aux160, %aux161
	br i1 %aux162, label %etiq94, label %etiq95
	
	etiq94:
	;___Asignacion___
	%aux164 = load i32, i32* @_Acum13
	%aux165 = add i32 0, 2
	%aux166 = add i32 %aux164, %aux165
	store i32 %aux166, i32* @_Acum13
	br label %etiq98
	
	etiq98:
	;___Asignacion___
	%aux168 = load i32, i32* @IdPos7
	%aux169 = add i32 0, 1
	%aux170 = add i32 %aux168, %aux169
	store i32 %aux170, i32* @IdPos7
	br label %etiq100
	
	etiq100:
	;___Asignacion___
	%aux172 = load i32, i32* @Pivot7
	%aux173 = add i32 0, 1
	%aux174 = sub i32 %aux172, %aux173
	store i32 %aux174, i32* @Pivot7
	br label %etiq103
	
	etiq95:
	;___Asignacion___
	%aux176 = load i32, i32* @IdPos7
	%aux177 = add i32 0, 1
	%aux178 = add i32 %aux176, %aux177
	store i32 %aux178, i32* @IdPos7
	br label %etiq103
	
	etiq81:
	;___DisplayCadenaCaracteres___
	%aux179 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq103
	
	etiq77:
	;___DisplayCadenaCaracteres___
	%aux180 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq103
	
	etiq74:
	;___DisplayCadenaCaracteres___
	%aux181 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq103
	
	etiq103:
	;___Asignacion___
	%aux183 = load i32, i32* @_Acum13
	store i32 %aux183, i32* @_Acum14
	br label %etiq104
	
	etiq104:
	;___Asignacion___
	%aux185 = add i32 0, 4
	store i32 %aux185, i32* @Pivot5
	br label %etiq105
	
	etiq105:
	;___IfElse___
	%aux187 = load i32, i32* @Pivot5
	%aux188 = add i32 0, 1
	%aux189 = icmp sge i32 %aux187, %aux188
	br i1 %aux189, label %etiq107, label %etiq108
	
	etiq107:
	;___IfElse___
	%aux191 = add i32 0, 4
	%aux192 = load i32, i32* @Pivot5
	%aux193 = icmp sge i32 %aux191, %aux192
	br i1 %aux193, label %etiq110, label %etiq111
	
	etiq110:
	;___IfElse___
	%aux195 = add i32 0, 4
	%aux196 = add i32 0, 0
	%aux197 = icmp sgt i32 %aux195, %aux196
	br i1 %aux197, label %etiq114, label %etiq115
	
	etiq114:
	;___IfElse___
	%aux199 = add i32 0, 4
	%aux200 = load i32, i32* @Pivot5
	%aux201 = sub i32 %aux199, %aux200
	%aux202 = load i32, i32* @IdPos5
	%aux203 = icmp eq i32 %aux201, %aux202
	br i1 %aux203, label %etiq117, label %etiq118
	
	etiq117:
	;___Asignacion___
	%aux205 = load i32, i32* @_Acum9
	%aux206 = add i32 0, 1
	%aux207 = add i32 %aux205, %aux206
	store i32 %aux207, i32* @_Acum9
	br label %etiq121
	
	etiq121:
	;___Asignacion___
	%aux209 = load i32, i32* @IdPos5
	%aux210 = add i32 0, 1
	%aux211 = add i32 %aux209, %aux210
	store i32 %aux211, i32* @IdPos5
	br label %etiq123
	
	etiq123:
	;___Asignacion___
	%aux213 = load i32, i32* @Pivot5
	%aux214 = add i32 0, 1
	%aux215 = sub i32 %aux213, %aux214
	store i32 %aux215, i32* @Pivot5
	br label %etiq126
	
	etiq118:
	;___Asignacion___
	%aux217 = load i32, i32* @IdPos5
	%aux218 = add i32 0, 1
	%aux219 = add i32 %aux217, %aux218
	store i32 %aux219, i32* @IdPos5
	br label %etiq126
	
	etiq126:
	;___IfElse___
	%aux221 = add i32 0, 4
	%aux222 = load i32, i32* @Pivot5
	%aux223 = sub i32 %aux221, %aux222
	%aux224 = load i32, i32* @IdPos5
	%aux225 = icmp eq i32 %aux223, %aux224
	br i1 %aux225, label %etiq127, label %etiq128
	
	etiq127:
	;___Asignacion___
	%aux227 = load i32, i32* @_Acum9
	%aux228 = add i32 0, 2
	%aux229 = add i32 %aux227, %aux228
	store i32 %aux229, i32* @_Acum9
	br label %etiq131
	
	etiq131:
	;___Asignacion___
	%aux231 = load i32, i32* @IdPos5
	%aux232 = add i32 0, 1
	%aux233 = add i32 %aux231, %aux232
	store i32 %aux233, i32* @IdPos5
	br label %etiq133
	
	etiq133:
	;___Asignacion___
	%aux235 = load i32, i32* @Pivot5
	%aux236 = add i32 0, 1
	%aux237 = sub i32 %aux235, %aux236
	store i32 %aux237, i32* @Pivot5
	br label %etiq136
	
	etiq128:
	;___Asignacion___
	%aux239 = load i32, i32* @IdPos5
	%aux240 = add i32 0, 1
	%aux241 = add i32 %aux239, %aux240
	store i32 %aux241, i32* @IdPos5
	br label %etiq136
	
	etiq136:
	;___IfElse___
	%aux243 = add i32 0, 4
	%aux244 = load i32, i32* @Pivot5
	%aux245 = sub i32 %aux243, %aux244
	%aux246 = load i32, i32* @IdPos5
	%aux247 = icmp eq i32 %aux245, %aux246
	br i1 %aux247, label %etiq137, label %etiq138
	
	etiq137:
	;___Asignacion___
	%aux249 = load i32, i32* @_Acum9
	%aux250 = add i32 0, 3
	%aux251 = add i32 %aux249, %aux250
	store i32 %aux251, i32* @_Acum9
	br label %etiq141
	
	etiq141:
	;___Asignacion___
	%aux253 = load i32, i32* @IdPos5
	%aux254 = add i32 0, 1
	%aux255 = add i32 %aux253, %aux254
	store i32 %aux255, i32* @IdPos5
	br label %etiq143
	
	etiq143:
	;___Asignacion___
	%aux257 = load i32, i32* @Pivot5
	%aux258 = add i32 0, 1
	%aux259 = sub i32 %aux257, %aux258
	store i32 %aux259, i32* @Pivot5
	br label %etiq156
	
	etiq138:
	;___Asignacion___
	%aux261 = load i32, i32* @IdPos5
	%aux262 = add i32 0, 1
	%aux263 = add i32 %aux261, %aux262
	store i32 %aux263, i32* @IdPos5
	br label %etiq146
	
	etiq146:
	;___IfElse___
	%aux265 = add i32 0, 4
	%aux266 = load i32, i32* @Pivot5
	%aux267 = sub i32 %aux265, %aux266
	%aux268 = load i32, i32* @IdPos5
	%aux269 = icmp eq i32 %aux267, %aux268
	br i1 %aux269, label %etiq147, label %etiq148
	
	etiq147:
	;___Asignacion___
	%aux271 = load i32, i32* @_Acum9
	%aux272 = add i32 0, 4
	%aux273 = add i32 %aux271, %aux272
	store i32 %aux273, i32* @_Acum9
	br label %etiq151
	
	etiq151:
	;___Asignacion___
	%aux275 = load i32, i32* @IdPos5
	%aux276 = add i32 0, 1
	%aux277 = add i32 %aux275, %aux276
	store i32 %aux277, i32* @IdPos5
	br label %etiq153
	
	etiq153:
	;___Asignacion___
	%aux279 = load i32, i32* @Pivot5
	%aux280 = add i32 0, 1
	%aux281 = sub i32 %aux279, %aux280
	store i32 %aux281, i32* @Pivot5
	br label %etiq156
	
	etiq148:
	;___Asignacion___
	%aux283 = load i32, i32* @IdPos5
	%aux284 = add i32 0, 1
	%aux285 = add i32 %aux283, %aux284
	store i32 %aux285, i32* @IdPos5
	br label %etiq156
	
	etiq115:
	;___DisplayCadenaCaracteres___
	%aux286 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq156
	
	etiq111:
	;___DisplayCadenaCaracteres___
	%aux287 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq156
	
	etiq108:
	;___DisplayCadenaCaracteres___
	%aux288 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq156
	
	etiq156:
	;___Asignacion___
	%aux290 = load i32, i32* @_Acum9
	store i32 %aux290, i32* @_Acum10
	br label %etiq157
	
	etiq157:
	;___Asignacion___
	%aux292 = add i32 0, 3
	store i32 %aux292, i32* @Pivot4
	br label %etiq158
	
	etiq158:
	;___IfElse___
	%aux294 = load i32, i32* @Pivot4
	%aux295 = add i32 0, 1
	%aux296 = icmp sge i32 %aux294, %aux295
	br i1 %aux296, label %etiq160, label %etiq161
	
	etiq160:
	;___IfElse___
	%aux298 = add i32 0, 3
	%aux299 = load i32, i32* @Pivot4
	%aux300 = icmp sge i32 %aux298, %aux299
	br i1 %aux300, label %etiq163, label %etiq164
	
	etiq163:
	;___IfElse___
	%aux302 = add i32 0, 3
	%aux303 = add i32 0, 0
	%aux304 = icmp sgt i32 %aux302, %aux303
	br i1 %aux304, label %etiq167, label %etiq168
	
	etiq167:
	;___IfElse___
	%aux306 = add i32 0, 3
	%aux307 = load i32, i32* @Pivot4
	%aux308 = sub i32 %aux306, %aux307
	%aux309 = load i32, i32* @IdPos4
	%aux310 = icmp eq i32 %aux308, %aux309
	br i1 %aux310, label %etiq170, label %etiq171
	
	etiq170:
	;___Asignacion___
	%aux312 = load i32, i32* @_Acum7
	%aux313 = add i32 0, 1
	%aux314 = add i32 %aux312, %aux313
	store i32 %aux314, i32* @_Acum7
	br label %etiq174
	
	etiq174:
	;___Asignacion___
	%aux316 = load i32, i32* @IdPos4
	%aux317 = add i32 0, 1
	%aux318 = add i32 %aux316, %aux317
	store i32 %aux318, i32* @IdPos4
	br label %etiq176
	
	etiq176:
	;___Asignacion___
	%aux320 = load i32, i32* @Pivot4
	%aux321 = add i32 0, 1
	%aux322 = sub i32 %aux320, %aux321
	store i32 %aux322, i32* @Pivot4
	br label %etiq179
	
	etiq171:
	;___Asignacion___
	%aux324 = load i32, i32* @IdPos4
	%aux325 = add i32 0, 1
	%aux326 = add i32 %aux324, %aux325
	store i32 %aux326, i32* @IdPos4
	br label %etiq179
	
	etiq179:
	;___IfElse___
	%aux328 = add i32 0, 3
	%aux329 = load i32, i32* @Pivot4
	%aux330 = sub i32 %aux328, %aux329
	%aux331 = load i32, i32* @IdPos4
	%aux332 = icmp eq i32 %aux330, %aux331
	br i1 %aux332, label %etiq180, label %etiq181
	
	etiq180:
	;___Asignacion___
	%aux334 = load i32, i32* @_Acum7
	%aux335 = add i32 0, 2
	%aux336 = add i32 %aux334, %aux335
	store i32 %aux336, i32* @_Acum7
	br label %etiq184
	
	etiq184:
	;___Asignacion___
	%aux338 = load i32, i32* @IdPos4
	%aux339 = add i32 0, 1
	%aux340 = add i32 %aux338, %aux339
	store i32 %aux340, i32* @IdPos4
	br label %etiq186
	
	etiq186:
	;___Asignacion___
	%aux342 = load i32, i32* @Pivot4
	%aux343 = add i32 0, 1
	%aux344 = sub i32 %aux342, %aux343
	store i32 %aux344, i32* @Pivot4
	br label %etiq189
	
	etiq181:
	;___Asignacion___
	%aux346 = load i32, i32* @IdPos4
	%aux347 = add i32 0, 1
	%aux348 = add i32 %aux346, %aux347
	store i32 %aux348, i32* @IdPos4
	br label %etiq189
	
	etiq189:
	;___IfElse___
	%aux350 = add i32 0, 3
	%aux351 = load i32, i32* @Pivot4
	%aux352 = sub i32 %aux350, %aux351
	%aux353 = load i32, i32* @IdPos4
	%aux354 = icmp eq i32 %aux352, %aux353
	br i1 %aux354, label %etiq190, label %etiq191
	
	etiq190:
	;___Asignacion___
	%aux356 = load i32, i32* @_Acum7
	%aux357 = add i32 0, 3
	%aux358 = add i32 %aux356, %aux357
	store i32 %aux358, i32* @_Acum7
	br label %etiq194
	
	etiq194:
	;___Asignacion___
	%aux360 = load i32, i32* @IdPos4
	%aux361 = add i32 0, 1
	%aux362 = add i32 %aux360, %aux361
	store i32 %aux362, i32* @IdPos4
	br label %etiq196
	
	etiq196:
	;___Asignacion___
	%aux364 = load i32, i32* @Pivot4
	%aux365 = add i32 0, 1
	%aux366 = sub i32 %aux364, %aux365
	store i32 %aux366, i32* @Pivot4
	br label %etiq199
	
	etiq191:
	;___Asignacion___
	%aux368 = load i32, i32* @IdPos4
	%aux369 = add i32 0, 1
	%aux370 = add i32 %aux368, %aux369
	store i32 %aux370, i32* @IdPos4
	br label %etiq199
	
	etiq168:
	;___DisplayCadenaCaracteres___
	%aux371 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq199
	
	etiq164:
	;___DisplayCadenaCaracteres___
	%aux372 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq199
	
	etiq161:
	;___DisplayCadenaCaracteres___
	%aux373 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq199
	
	etiq199:
	;___Asignacion___
	%aux375 = load i32, i32* @_Acum7
	store i32 %aux375, i32* @_Acum8
	br label %etiq200
	
	etiq200:
	;___Asignacion___
	%aux377 = add i32 0, 2
	store i32 %aux377, i32* @Pivot2
	br label %etiq201
	
	etiq201:
	;___IfElse___
	%aux379 = load i32, i32* @Pivot2
	%aux380 = add i32 0, 1
	%aux381 = icmp sge i32 %aux379, %aux380
	br i1 %aux381, label %etiq203, label %etiq204
	
	etiq203:
	;___IfElse___
	%aux383 = add i32 0, 2
	%aux384 = load i32, i32* @Pivot2
	%aux385 = icmp sge i32 %aux383, %aux384
	br i1 %aux385, label %etiq206, label %etiq207
	
	etiq206:
	;___IfElse___
	%aux387 = add i32 0, 2
	%aux388 = add i32 0, 0
	%aux389 = icmp sgt i32 %aux387, %aux388
	br i1 %aux389, label %etiq210, label %etiq211
	
	etiq210:
	;___IfElse___
	%aux391 = add i32 0, 2
	%aux392 = load i32, i32* @Pivot2
	%aux393 = sub i32 %aux391, %aux392
	%aux394 = load i32, i32* @IdPos2
	%aux395 = icmp eq i32 %aux393, %aux394
	br i1 %aux395, label %etiq213, label %etiq214
	
	etiq213:
	;___Asignacion___
	%aux397 = load i32, i32* @_Acum3
	%aux398 = add i32 0, 1
	%aux399 = add i32 %aux397, %aux398
	store i32 %aux399, i32* @_Acum3
	br label %etiq217
	
	etiq217:
	;___Asignacion___
	%aux401 = load i32, i32* @IdPos2
	%aux402 = add i32 0, 1
	%aux403 = add i32 %aux401, %aux402
	store i32 %aux403, i32* @IdPos2
	br label %etiq219
	
	etiq219:
	;___Asignacion___
	%aux405 = load i32, i32* @Pivot2
	%aux406 = add i32 0, 1
	%aux407 = sub i32 %aux405, %aux406
	store i32 %aux407, i32* @Pivot2
	br label %etiq222
	
	etiq214:
	;___Asignacion___
	%aux409 = load i32, i32* @IdPos2
	%aux410 = add i32 0, 1
	%aux411 = add i32 %aux409, %aux410
	store i32 %aux411, i32* @IdPos2
	br label %etiq222
	
	etiq222:
	;___IfElse___
	%aux413 = add i32 0, 2
	%aux414 = load i32, i32* @Pivot2
	%aux415 = sub i32 %aux413, %aux414
	%aux416 = load i32, i32* @IdPos2
	%aux417 = icmp eq i32 %aux415, %aux416
	br i1 %aux417, label %etiq223, label %etiq224
	
	etiq223:
	;___Asignacion___
	%aux419 = load i32, i32* @_Acum3
	%aux420 = add i32 0, 2
	%aux421 = add i32 %aux419, %aux420
	store i32 %aux421, i32* @_Acum3
	br label %etiq227
	
	etiq227:
	;___Asignacion___
	%aux423 = load i32, i32* @IdPos2
	%aux424 = add i32 0, 1
	%aux425 = add i32 %aux423, %aux424
	store i32 %aux425, i32* @IdPos2
	br label %etiq229
	
	etiq229:
	;___Asignacion___
	%aux427 = load i32, i32* @Pivot2
	%aux428 = add i32 0, 1
	%aux429 = sub i32 %aux427, %aux428
	store i32 %aux429, i32* @Pivot2
	br label %etiq232
	
	etiq224:
	;___Asignacion___
	%aux431 = load i32, i32* @IdPos2
	%aux432 = add i32 0, 1
	%aux433 = add i32 %aux431, %aux432
	store i32 %aux433, i32* @IdPos2
	br label %etiq232
	
	etiq211:
	;___DisplayCadenaCaracteres___
	%aux434 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq232
	
	etiq207:
	;___DisplayCadenaCaracteres___
	%aux435 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq232
	
	etiq204:
	;___DisplayCadenaCaracteres___
	%aux436 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq232
	
	etiq232:
	;___Asignacion___
	%aux438 = load i32, i32* @_Acum3
	store i32 %aux438, i32* @_Acum4
	br label %etiq233
	
	etiq233:
	;___Asignacion___
	%aux440 = add i32 0, 1
	store i32 %aux440, i32* @Pivot1
	br label %etiq234
	
	etiq234:
	;___IfElse___
	%aux442 = load i32, i32* @Pivot1
	%aux443 = add i32 0, 1
	%aux444 = icmp sge i32 %aux442, %aux443
	br i1 %aux444, label %etiq236, label %etiq237
	
	etiq236:
	;___IfElse___
	%aux446 = add i32 0, 1
	%aux447 = load i32, i32* @Pivot1
	%aux448 = icmp sge i32 %aux446, %aux447
	br i1 %aux448, label %etiq239, label %etiq240
	
	etiq239:
	;___IfElse___
	%aux450 = add i32 0, 1
	%aux451 = add i32 0, 0
	%aux452 = icmp sgt i32 %aux450, %aux451
	br i1 %aux452, label %etiq243, label %etiq244
	
	etiq243:
	;___IfElse___
	%aux454 = add i32 0, 1
	%aux455 = load i32, i32* @Pivot1
	%aux456 = sub i32 %aux454, %aux455
	%aux457 = load i32, i32* @IdPos1
	%aux458 = icmp eq i32 %aux456, %aux457
	br i1 %aux458, label %etiq246, label %etiq247
	
	etiq246:
	;___Asignacion___
	%aux460 = load i32, i32* @_Acum1
	%aux461 = add i32 0, 1
	%aux462 = add i32 %aux460, %aux461
	store i32 %aux462, i32* @_Acum1
	br label %etiq250
	
	etiq250:
	;___Asignacion___
	%aux464 = load i32, i32* @IdPos1
	%aux465 = add i32 0, 1
	%aux466 = add i32 %aux464, %aux465
	store i32 %aux466, i32* @IdPos1
	br label %etiq252
	
	etiq252:
	;___Asignacion___
	%aux468 = load i32, i32* @Pivot1
	%aux469 = add i32 0, 1
	%aux470 = sub i32 %aux468, %aux469
	store i32 %aux470, i32* @Pivot1
	br label %etiq255
	
	etiq247:
	;___Asignacion___
	%aux472 = load i32, i32* @IdPos1
	%aux473 = add i32 0, 1
	%aux474 = add i32 %aux472, %aux473
	store i32 %aux474, i32* @IdPos1
	br label %etiq255
	
	etiq244:
	;___DisplayCadenaCaracteres___
	%aux475 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq255
	
	etiq240:
	;___DisplayCadenaCaracteres___
	%aux476 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq255
	
	etiq237:
	;___DisplayCadenaCaracteres___
	%aux477 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq255
	
	etiq255:
	;___Asignacion___
	%aux479 = load i32, i32* @_Acum1
	store i32 %aux479, i32* @_Acum2
	br label %etiq256
	
	etiq256:
	;___Asignacion___
	%aux481 = add i32 0, 2
	store i32 %aux481, i32* @Pivot3
	br label %etiq257
	
	etiq257:
	;___IfElse___
	%aux483 = load i32, i32* @Pivot3
	%aux484 = add i32 0, 1
	%aux485 = icmp sge i32 %aux483, %aux484
	br i1 %aux485, label %etiq259, label %etiq260
	
	etiq259:
	;___IfElse___
	%aux487 = add i32 0, 2
	%aux488 = load i32, i32* @Pivot3
	%aux489 = icmp sge i32 %aux487, %aux488
	br i1 %aux489, label %etiq262, label %etiq263
	
	etiq262:
	;___IfElse___
	%aux491 = add i32 0, 2
	%aux492 = add i32 0, 0
	%aux493 = icmp sgt i32 %aux491, %aux492
	br i1 %aux493, label %etiq266, label %etiq267
	
	etiq266:
	;___IfElse___
	%aux495 = add i32 0, 2
	%aux496 = load i32, i32* @Pivot3
	%aux497 = sub i32 %aux495, %aux496
	%aux498 = load i32, i32* @IdPos3
	%aux499 = icmp eq i32 %aux497, %aux498
	br i1 %aux499, label %etiq269, label %etiq270
	
	etiq269:
	;___Asignacion___
	%aux501 = load i32, i32* @_Acum5
	%aux502 = load i32, i32* @_Acum2
	%aux503 = add i32 %aux501, %aux502
	store i32 %aux503, i32* @_Acum5
	br label %etiq272
	
	etiq272:
	;___Asignacion___
	%aux505 = load i32, i32* @IdPos3
	%aux506 = add i32 0, 1
	%aux507 = add i32 %aux505, %aux506
	store i32 %aux507, i32* @IdPos3
	br label %etiq274
	
	etiq274:
	;___Asignacion___
	%aux509 = load i32, i32* @Pivot3
	%aux510 = add i32 0, 1
	%aux511 = sub i32 %aux509, %aux510
	store i32 %aux511, i32* @Pivot3
	br label %etiq277
	
	etiq270:
	;___Asignacion___
	%aux513 = load i32, i32* @IdPos3
	%aux514 = add i32 0, 1
	%aux515 = add i32 %aux513, %aux514
	store i32 %aux515, i32* @IdPos3
	br label %etiq277
	
	etiq277:
	;___IfElse___
	%aux517 = add i32 0, 2
	%aux518 = load i32, i32* @Pivot3
	%aux519 = sub i32 %aux517, %aux518
	%aux520 = load i32, i32* @IdPos3
	%aux521 = icmp eq i32 %aux519, %aux520
	br i1 %aux521, label %etiq278, label %etiq279
	
	etiq278:
	;___Asignacion___
	%aux523 = load i32, i32* @_Acum5
	%aux524 = load i32, i32* @_Acum4
	%aux525 = add i32 %aux523, %aux524
	store i32 %aux525, i32* @_Acum5
	br label %etiq281
	
	etiq281:
	;___Asignacion___
	%aux527 = load i32, i32* @IdPos3
	%aux528 = add i32 0, 1
	%aux529 = add i32 %aux527, %aux528
	store i32 %aux529, i32* @IdPos3
	br label %etiq283
	
	etiq283:
	;___Asignacion___
	%aux531 = load i32, i32* @Pivot3
	%aux532 = add i32 0, 1
	%aux533 = sub i32 %aux531, %aux532
	store i32 %aux533, i32* @Pivot3
	br label %etiq286
	
	etiq279:
	;___Asignacion___
	%aux535 = load i32, i32* @IdPos3
	%aux536 = add i32 0, 1
	%aux537 = add i32 %aux535, %aux536
	store i32 %aux537, i32* @IdPos3
	br label %etiq286
	
	etiq267:
	;___DisplayCadenaCaracteres___
	%aux538 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq286
	
	etiq263:
	;___DisplayCadenaCaracteres___
	%aux539 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq286
	
	etiq260:
	;___DisplayCadenaCaracteres___
	%aux540 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq286
	
	etiq286:
	;___Asignacion___
	%aux542 = load i32, i32* @_Acum5
	store i32 %aux542, i32* @_Acum6
	br label %etiq287
	
	etiq287:
	;___Asignacion___
	%aux544 = add i32 0, 3
	store i32 %aux544, i32* @Pivot6
	br label %etiq288
	
	etiq288:
	;___IfElse___
	%aux546 = load i32, i32* @Pivot6
	%aux547 = add i32 0, 1
	%aux548 = icmp sge i32 %aux546, %aux547
	br i1 %aux548, label %etiq290, label %etiq291
	
	etiq290:
	;___IfElse___
	%aux550 = add i32 0, 3
	%aux551 = load i32, i32* @Pivot6
	%aux552 = icmp sge i32 %aux550, %aux551
	br i1 %aux552, label %etiq293, label %etiq294
	
	etiq293:
	;___IfElse___
	%aux554 = add i32 0, 3
	%aux555 = add i32 0, 0
	%aux556 = icmp sgt i32 %aux554, %aux555
	br i1 %aux556, label %etiq297, label %etiq298
	
	etiq297:
	;___IfElse___
	%aux558 = add i32 0, 3
	%aux559 = load i32, i32* @Pivot6
	%aux560 = sub i32 %aux558, %aux559
	%aux561 = load i32, i32* @IdPos6
	%aux562 = icmp eq i32 %aux560, %aux561
	br i1 %aux562, label %etiq300, label %etiq301
	
	etiq300:
	;___Asignacion___
	%aux564 = load i32, i32* @_Acum11
	%aux565 = load i32, i32* @_Acum6
	%aux566 = add i32 %aux564, %aux565
	store i32 %aux566, i32* @_Acum11
	br label %etiq303
	
	etiq303:
	;___Asignacion___
	%aux568 = load i32, i32* @IdPos6
	%aux569 = add i32 0, 1
	%aux570 = add i32 %aux568, %aux569
	store i32 %aux570, i32* @IdPos6
	br label %etiq305
	
	etiq305:
	;___Asignacion___
	%aux572 = load i32, i32* @Pivot6
	%aux573 = add i32 0, 1
	%aux574 = sub i32 %aux572, %aux573
	store i32 %aux574, i32* @Pivot6
	br label %etiq308
	
	etiq301:
	;___Asignacion___
	%aux576 = load i32, i32* @IdPos6
	%aux577 = add i32 0, 1
	%aux578 = add i32 %aux576, %aux577
	store i32 %aux578, i32* @IdPos6
	br label %etiq308
	
	etiq308:
	;___IfElse___
	%aux580 = add i32 0, 3
	%aux581 = load i32, i32* @Pivot6
	%aux582 = sub i32 %aux580, %aux581
	%aux583 = load i32, i32* @IdPos6
	%aux584 = icmp eq i32 %aux582, %aux583
	br i1 %aux584, label %etiq309, label %etiq310
	
	etiq309:
	;___Asignacion___
	%aux586 = load i32, i32* @_Acum11
	%aux587 = load i32, i32* @_Acum8
	%aux588 = add i32 %aux586, %aux587
	store i32 %aux588, i32* @_Acum11
	br label %etiq312
	
	etiq312:
	;___Asignacion___
	%aux590 = load i32, i32* @IdPos6
	%aux591 = add i32 0, 1
	%aux592 = add i32 %aux590, %aux591
	store i32 %aux592, i32* @IdPos6
	br label %etiq314
	
	etiq314:
	;___Asignacion___
	%aux594 = load i32, i32* @Pivot6
	%aux595 = add i32 0, 1
	%aux596 = sub i32 %aux594, %aux595
	store i32 %aux596, i32* @Pivot6
	br label %etiq317
	
	etiq310:
	;___Asignacion___
	%aux598 = load i32, i32* @IdPos6
	%aux599 = add i32 0, 1
	%aux600 = add i32 %aux598, %aux599
	store i32 %aux600, i32* @IdPos6
	br label %etiq317
	
	etiq317:
	;___IfElse___
	%aux602 = add i32 0, 3
	%aux603 = load i32, i32* @Pivot6
	%aux604 = sub i32 %aux602, %aux603
	%aux605 = load i32, i32* @IdPos6
	%aux606 = icmp eq i32 %aux604, %aux605
	br i1 %aux606, label %etiq318, label %etiq319
	
	etiq318:
	;___Asignacion___
	%aux608 = load i32, i32* @_Acum11
	%aux609 = load i32, i32* @_Acum10
	%aux610 = add i32 %aux608, %aux609
	store i32 %aux610, i32* @_Acum11
	br label %etiq321
	
	etiq321:
	;___Asignacion___
	%aux612 = load i32, i32* @IdPos6
	%aux613 = add i32 0, 1
	%aux614 = add i32 %aux612, %aux613
	store i32 %aux614, i32* @IdPos6
	br label %etiq323
	
	etiq323:
	;___Asignacion___
	%aux616 = load i32, i32* @Pivot6
	%aux617 = add i32 0, 1
	%aux618 = sub i32 %aux616, %aux617
	store i32 %aux618, i32* @Pivot6
	br label %etiq326
	
	etiq319:
	;___Asignacion___
	%aux620 = load i32, i32* @IdPos6
	%aux621 = add i32 0, 1
	%aux622 = add i32 %aux620, %aux621
	store i32 %aux622, i32* @IdPos6
	br label %etiq326
	
	etiq298:
	;___DisplayCadenaCaracteres___
	%aux623 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq326
	
	etiq294:
	;___DisplayCadenaCaracteres___
	%aux624 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq326
	
	etiq291:
	;___DisplayCadenaCaracteres___
	%aux625 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq326
	
	etiq326:
	;___Asignacion___
	%aux627 = load i32, i32* @_Acum11
	store i32 %aux627, i32* @_Acum12
	br label %etiq327
	
	etiq327:
	;___Asignacion___
	%aux629 = load i32, i32* @pivot
	store i32 %aux629, i32* @Pivot10
	br label %etiq328
	
	etiq328:
	;___IfElse___
	%aux631 = load i32, i32* @Pivot10
	%aux632 = add i32 0, 1
	%aux633 = icmp sge i32 %aux631, %aux632
	br i1 %aux633, label %etiq330, label %etiq331
	
	etiq330:
	;___IfElse___
	%aux635 = add i32 0, 100
	%aux636 = load i32, i32* @Pivot10
	%aux637 = icmp sge i32 %aux635, %aux636
	br i1 %aux637, label %etiq333, label %etiq334
	
	etiq333:
	;___IfElse___
	%aux639 = add i32 0, 100
	%aux640 = add i32 0, 0
	%aux641 = icmp sgt i32 %aux639, %aux640
	br i1 %aux641, label %etiq337, label %etiq338
	
	etiq337:
	;___IfElse___
	%aux643 = add i32 0, 100
	%aux644 = load i32, i32* @Pivot10
	%aux645 = sub i32 %aux643, %aux644
	%aux646 = load i32, i32* @IdPos10
	%aux647 = icmp eq i32 %aux645, %aux646
	br i1 %aux647, label %etiq340, label %etiq341
	
	etiq340:
	;___Asignacion___
	%aux649 = load i32, i32* @_Acum19
	%aux650 = add i32 0, 1
	%aux651 = add i32 %aux649, %aux650
	store i32 %aux651, i32* @_Acum19
	br label %etiq344
	
	etiq344:
	;___Asignacion___
	%aux653 = load i32, i32* @IdPos10
	%aux654 = add i32 0, 1
	%aux655 = add i32 %aux653, %aux654
	store i32 %aux655, i32* @IdPos10
	br label %etiq346
	
	etiq346:
	;___Asignacion___
	%aux657 = load i32, i32* @Pivot10
	%aux658 = add i32 0, 1
	%aux659 = sub i32 %aux657, %aux658
	store i32 %aux659, i32* @Pivot10
	br label %etiq349
	
	etiq341:
	;___Asignacion___
	%aux661 = load i32, i32* @IdPos10
	%aux662 = add i32 0, 1
	%aux663 = add i32 %aux661, %aux662
	store i32 %aux663, i32* @IdPos10
	br label %etiq349
	
	etiq349:
	;___IfElse___
	%aux665 = add i32 0, 100
	%aux666 = load i32, i32* @Pivot10
	%aux667 = sub i32 %aux665, %aux666
	%aux668 = load i32, i32* @IdPos10
	%aux669 = icmp eq i32 %aux667, %aux668
	br i1 %aux669, label %etiq350, label %etiq351
	
	etiq350:
	;___Asignacion___
	%aux671 = load i32, i32* @_Acum19
	%aux672 = add i32 0, 1
	%aux673 = add i32 %aux671, %aux672
	store i32 %aux673, i32* @_Acum19
	br label %etiq354
	
	etiq354:
	;___Asignacion___
	%aux675 = load i32, i32* @IdPos10
	%aux676 = add i32 0, 1
	%aux677 = add i32 %aux675, %aux676
	store i32 %aux677, i32* @IdPos10
	br label %etiq356
	
	etiq356:
	;___Asignacion___
	%aux679 = load i32, i32* @Pivot10
	%aux680 = add i32 0, 1
	%aux681 = sub i32 %aux679, %aux680
	store i32 %aux681, i32* @Pivot10
	br label %etiq359
	
	etiq351:
	;___Asignacion___
	%aux683 = load i32, i32* @IdPos10
	%aux684 = add i32 0, 1
	%aux685 = add i32 %aux683, %aux684
	store i32 %aux685, i32* @IdPos10
	br label %etiq359
	
	etiq359:
	;___IfElse___
	%aux687 = add i32 0, 100
	%aux688 = load i32, i32* @Pivot10
	%aux689 = sub i32 %aux687, %aux688
	%aux690 = load i32, i32* @IdPos10
	%aux691 = icmp eq i32 %aux689, %aux690
	br i1 %aux691, label %etiq360, label %etiq361
	
	etiq360:
	;___Asignacion___
	%aux693 = load i32, i32* @_Acum19
	%aux694 = add i32 0, 1
	%aux695 = add i32 %aux693, %aux694
	store i32 %aux695, i32* @_Acum19
	br label %etiq364
	
	etiq364:
	;___Asignacion___
	%aux697 = load i32, i32* @IdPos10
	%aux698 = add i32 0, 1
	%aux699 = add i32 %aux697, %aux698
	store i32 %aux699, i32* @IdPos10
	br label %etiq366
	
	etiq366:
	;___Asignacion___
	%aux701 = load i32, i32* @Pivot10
	%aux702 = add i32 0, 1
	%aux703 = sub i32 %aux701, %aux702
	store i32 %aux703, i32* @Pivot10
	br label %etiq1662
	
	etiq361:
	;___Asignacion___
	%aux705 = load i32, i32* @IdPos10
	%aux706 = add i32 0, 1
	%aux707 = add i32 %aux705, %aux706
	store i32 %aux707, i32* @IdPos10
	br label %etiq369
	
	etiq369:
	;___IfElse___
	%aux709 = add i32 0, 100
	%aux710 = load i32, i32* @Pivot10
	%aux711 = sub i32 %aux709, %aux710
	%aux712 = load i32, i32* @IdPos10
	%aux713 = icmp eq i32 %aux711, %aux712
	br i1 %aux713, label %etiq370, label %etiq371
	
	etiq370:
	;___Asignacion___
	%aux715 = load i32, i32* @_Acum19
	%aux716 = add i32 0, 1
	%aux717 = add i32 %aux715, %aux716
	store i32 %aux717, i32* @_Acum19
	br label %etiq374
	
	etiq374:
	;___Asignacion___
	%aux719 = load i32, i32* @IdPos10
	%aux720 = add i32 0, 1
	%aux721 = add i32 %aux719, %aux720
	store i32 %aux721, i32* @IdPos10
	br label %etiq376
	
	etiq376:
	;___Asignacion___
	%aux723 = load i32, i32* @Pivot10
	%aux724 = add i32 0, 1
	%aux725 = sub i32 %aux723, %aux724
	store i32 %aux725, i32* @Pivot10
	br label %etiq379
	
	etiq371:
	;___Asignacion___
	%aux727 = load i32, i32* @IdPos10
	%aux728 = add i32 0, 1
	%aux729 = add i32 %aux727, %aux728
	store i32 %aux729, i32* @IdPos10
	br label %etiq379
	
	etiq379:
	;___IfElse___
	%aux731 = add i32 0, 100
	%aux732 = load i32, i32* @Pivot10
	%aux733 = sub i32 %aux731, %aux732
	%aux734 = load i32, i32* @IdPos10
	%aux735 = icmp eq i32 %aux733, %aux734
	br i1 %aux735, label %etiq380, label %etiq381
	
	etiq380:
	;___Asignacion___
	%aux737 = load i32, i32* @_Acum19
	%aux738 = add i32 0, 1
	%aux739 = add i32 %aux737, %aux738
	store i32 %aux739, i32* @_Acum19
	br label %etiq384
	
	etiq384:
	;___Asignacion___
	%aux741 = load i32, i32* @IdPos10
	%aux742 = add i32 0, 1
	%aux743 = add i32 %aux741, %aux742
	store i32 %aux743, i32* @IdPos10
	br label %etiq386
	
	etiq386:
	;___Asignacion___
	%aux745 = load i32, i32* @Pivot10
	%aux746 = add i32 0, 1
	%aux747 = sub i32 %aux745, %aux746
	store i32 %aux747, i32* @Pivot10
	br label %etiq389
	
	etiq381:
	;___Asignacion___
	%aux749 = load i32, i32* @IdPos10
	%aux750 = add i32 0, 1
	%aux751 = add i32 %aux749, %aux750
	store i32 %aux751, i32* @IdPos10
	br label %etiq389
	
	etiq389:
	;___IfElse___
	%aux753 = add i32 0, 100
	%aux754 = load i32, i32* @Pivot10
	%aux755 = sub i32 %aux753, %aux754
	%aux756 = load i32, i32* @IdPos10
	%aux757 = icmp eq i32 %aux755, %aux756
	br i1 %aux757, label %etiq390, label %etiq391
	
	etiq390:
	;___Asignacion___
	%aux759 = load i32, i32* @_Acum19
	%aux760 = add i32 0, 1
	%aux761 = add i32 %aux759, %aux760
	store i32 %aux761, i32* @_Acum19
	br label %etiq394
	
	etiq394:
	;___Asignacion___
	%aux763 = load i32, i32* @IdPos10
	%aux764 = add i32 0, 1
	%aux765 = add i32 %aux763, %aux764
	store i32 %aux765, i32* @IdPos10
	br label %etiq396
	
	etiq396:
	;___Asignacion___
	%aux767 = load i32, i32* @Pivot10
	%aux768 = add i32 0, 1
	%aux769 = sub i32 %aux767, %aux768
	store i32 %aux769, i32* @Pivot10
	br label %etiq399
	
	etiq391:
	;___Asignacion___
	%aux771 = load i32, i32* @IdPos10
	%aux772 = add i32 0, 1
	%aux773 = add i32 %aux771, %aux772
	store i32 %aux773, i32* @IdPos10
	br label %etiq399
	
	etiq399:
	;___IfElse___
	%aux775 = add i32 0, 100
	%aux776 = load i32, i32* @Pivot10
	%aux777 = sub i32 %aux775, %aux776
	%aux778 = load i32, i32* @IdPos10
	%aux779 = icmp eq i32 %aux777, %aux778
	br i1 %aux779, label %etiq400, label %etiq401
	
	etiq400:
	;___Asignacion___
	%aux781 = load i32, i32* @_Acum19
	%aux782 = add i32 0, 1
	%aux783 = add i32 %aux781, %aux782
	store i32 %aux783, i32* @_Acum19
	br label %etiq404
	
	etiq404:
	;___Asignacion___
	%aux785 = load i32, i32* @IdPos10
	%aux786 = add i32 0, 1
	%aux787 = add i32 %aux785, %aux786
	store i32 %aux787, i32* @IdPos10
	br label %etiq406
	
	etiq406:
	;___Asignacion___
	%aux789 = load i32, i32* @Pivot10
	%aux790 = add i32 0, 1
	%aux791 = sub i32 %aux789, %aux790
	store i32 %aux791, i32* @Pivot10
	br label %etiq409
	
	etiq401:
	;___Asignacion___
	%aux793 = load i32, i32* @IdPos10
	%aux794 = add i32 0, 1
	%aux795 = add i32 %aux793, %aux794
	store i32 %aux795, i32* @IdPos10
	br label %etiq409
	
	etiq409:
	;___IfElse___
	%aux797 = add i32 0, 100
	%aux798 = load i32, i32* @Pivot10
	%aux799 = sub i32 %aux797, %aux798
	%aux800 = load i32, i32* @IdPos10
	%aux801 = icmp eq i32 %aux799, %aux800
	br i1 %aux801, label %etiq410, label %etiq411
	
	etiq410:
	;___Asignacion___
	%aux803 = load i32, i32* @_Acum19
	%aux804 = add i32 0, 1
	%aux805 = add i32 %aux803, %aux804
	store i32 %aux805, i32* @_Acum19
	br label %etiq414
	
	etiq414:
	;___Asignacion___
	%aux807 = load i32, i32* @IdPos10
	%aux808 = add i32 0, 1
	%aux809 = add i32 %aux807, %aux808
	store i32 %aux809, i32* @IdPos10
	br label %etiq416
	
	etiq416:
	;___Asignacion___
	%aux811 = load i32, i32* @Pivot10
	%aux812 = add i32 0, 1
	%aux813 = sub i32 %aux811, %aux812
	store i32 %aux813, i32* @Pivot10
	br label %etiq419
	
	etiq411:
	;___Asignacion___
	%aux815 = load i32, i32* @IdPos10
	%aux816 = add i32 0, 1
	%aux817 = add i32 %aux815, %aux816
	store i32 %aux817, i32* @IdPos10
	br label %etiq419
	
	etiq419:
	;___IfElse___
	%aux819 = add i32 0, 100
	%aux820 = load i32, i32* @Pivot10
	%aux821 = sub i32 %aux819, %aux820
	%aux822 = load i32, i32* @IdPos10
	%aux823 = icmp eq i32 %aux821, %aux822
	br i1 %aux823, label %etiq420, label %etiq421
	
	etiq420:
	;___Asignacion___
	%aux825 = load i32, i32* @_Acum19
	%aux826 = add i32 0, 1
	%aux827 = add i32 %aux825, %aux826
	store i32 %aux827, i32* @_Acum19
	br label %etiq424
	
	etiq424:
	;___Asignacion___
	%aux829 = load i32, i32* @IdPos10
	%aux830 = add i32 0, 1
	%aux831 = add i32 %aux829, %aux830
	store i32 %aux831, i32* @IdPos10
	br label %etiq426
	
	etiq426:
	;___Asignacion___
	%aux833 = load i32, i32* @Pivot10
	%aux834 = add i32 0, 1
	%aux835 = sub i32 %aux833, %aux834
	store i32 %aux835, i32* @Pivot10
	br label %etiq429
	
	etiq421:
	;___Asignacion___
	%aux837 = load i32, i32* @IdPos10
	%aux838 = add i32 0, 1
	%aux839 = add i32 %aux837, %aux838
	store i32 %aux839, i32* @IdPos10
	br label %etiq429
	
	etiq429:
	;___IfElse___
	%aux841 = add i32 0, 100
	%aux842 = load i32, i32* @Pivot10
	%aux843 = sub i32 %aux841, %aux842
	%aux844 = load i32, i32* @IdPos10
	%aux845 = icmp eq i32 %aux843, %aux844
	br i1 %aux845, label %etiq430, label %etiq431
	
	etiq430:
	;___Asignacion___
	%aux847 = load i32, i32* @_Acum19
	%aux848 = add i32 0, 1
	%aux849 = add i32 %aux847, %aux848
	store i32 %aux849, i32* @_Acum19
	br label %etiq434
	
	etiq434:
	;___Asignacion___
	%aux851 = load i32, i32* @IdPos10
	%aux852 = add i32 0, 1
	%aux853 = add i32 %aux851, %aux852
	store i32 %aux853, i32* @IdPos10
	br label %etiq436
	
	etiq436:
	;___Asignacion___
	%aux855 = load i32, i32* @Pivot10
	%aux856 = add i32 0, 1
	%aux857 = sub i32 %aux855, %aux856
	store i32 %aux857, i32* @Pivot10
	br label %etiq439
	
	etiq431:
	;___Asignacion___
	%aux859 = load i32, i32* @IdPos10
	%aux860 = add i32 0, 1
	%aux861 = add i32 %aux859, %aux860
	store i32 %aux861, i32* @IdPos10
	br label %etiq439
	
	etiq439:
	;___IfElse___
	%aux863 = add i32 0, 100
	%aux864 = load i32, i32* @Pivot10
	%aux865 = sub i32 %aux863, %aux864
	%aux866 = load i32, i32* @IdPos10
	%aux867 = icmp eq i32 %aux865, %aux866
	br i1 %aux867, label %etiq440, label %etiq441
	
	etiq440:
	;___Asignacion___
	%aux869 = load i32, i32* @_Acum19
	%aux870 = add i32 0, 1
	%aux871 = add i32 %aux869, %aux870
	store i32 %aux871, i32* @_Acum19
	br label %etiq444
	
	etiq444:
	;___Asignacion___
	%aux873 = load i32, i32* @IdPos10
	%aux874 = add i32 0, 1
	%aux875 = add i32 %aux873, %aux874
	store i32 %aux875, i32* @IdPos10
	br label %etiq446
	
	etiq446:
	;___Asignacion___
	%aux877 = load i32, i32* @Pivot10
	%aux878 = add i32 0, 1
	%aux879 = sub i32 %aux877, %aux878
	store i32 %aux879, i32* @Pivot10
	br label %etiq449
	
	etiq441:
	;___Asignacion___
	%aux881 = load i32, i32* @IdPos10
	%aux882 = add i32 0, 1
	%aux883 = add i32 %aux881, %aux882
	store i32 %aux883, i32* @IdPos10
	br label %etiq449
	
	etiq449:
	;___IfElse___
	%aux885 = add i32 0, 100
	%aux886 = load i32, i32* @Pivot10
	%aux887 = sub i32 %aux885, %aux886
	%aux888 = load i32, i32* @IdPos10
	%aux889 = icmp eq i32 %aux887, %aux888
	br i1 %aux889, label %etiq450, label %etiq451
	
	etiq450:
	;___Asignacion___
	%aux891 = load i32, i32* @_Acum19
	%aux892 = add i32 0, 1
	%aux893 = add i32 %aux891, %aux892
	store i32 %aux893, i32* @_Acum19
	br label %etiq454
	
	etiq454:
	;___Asignacion___
	%aux895 = load i32, i32* @IdPos10
	%aux896 = add i32 0, 1
	%aux897 = add i32 %aux895, %aux896
	store i32 %aux897, i32* @IdPos10
	br label %etiq456
	
	etiq456:
	;___Asignacion___
	%aux899 = load i32, i32* @Pivot10
	%aux900 = add i32 0, 1
	%aux901 = sub i32 %aux899, %aux900
	store i32 %aux901, i32* @Pivot10
	br label %etiq459
	
	etiq451:
	;___Asignacion___
	%aux903 = load i32, i32* @IdPos10
	%aux904 = add i32 0, 1
	%aux905 = add i32 %aux903, %aux904
	store i32 %aux905, i32* @IdPos10
	br label %etiq459
	
	etiq459:
	;___IfElse___
	%aux907 = add i32 0, 100
	%aux908 = load i32, i32* @Pivot10
	%aux909 = sub i32 %aux907, %aux908
	%aux910 = load i32, i32* @IdPos10
	%aux911 = icmp eq i32 %aux909, %aux910
	br i1 %aux911, label %etiq460, label %etiq461
	
	etiq460:
	;___Asignacion___
	%aux913 = load i32, i32* @_Acum19
	%aux914 = add i32 0, 1
	%aux915 = add i32 %aux913, %aux914
	store i32 %aux915, i32* @_Acum19
	br label %etiq464
	
	etiq464:
	;___Asignacion___
	%aux917 = load i32, i32* @IdPos10
	%aux918 = add i32 0, 1
	%aux919 = add i32 %aux917, %aux918
	store i32 %aux919, i32* @IdPos10
	br label %etiq466
	
	etiq466:
	;___Asignacion___
	%aux921 = load i32, i32* @Pivot10
	%aux922 = add i32 0, 1
	%aux923 = sub i32 %aux921, %aux922
	store i32 %aux923, i32* @Pivot10
	br label %etiq469
	
	etiq461:
	;___Asignacion___
	%aux925 = load i32, i32* @IdPos10
	%aux926 = add i32 0, 1
	%aux927 = add i32 %aux925, %aux926
	store i32 %aux927, i32* @IdPos10
	br label %etiq469
	
	etiq469:
	;___IfElse___
	%aux929 = add i32 0, 100
	%aux930 = load i32, i32* @Pivot10
	%aux931 = sub i32 %aux929, %aux930
	%aux932 = load i32, i32* @IdPos10
	%aux933 = icmp eq i32 %aux931, %aux932
	br i1 %aux933, label %etiq470, label %etiq471
	
	etiq470:
	;___Asignacion___
	%aux935 = load i32, i32* @_Acum19
	%aux936 = add i32 0, 1
	%aux937 = add i32 %aux935, %aux936
	store i32 %aux937, i32* @_Acum19
	br label %etiq474
	
	etiq474:
	;___Asignacion___
	%aux939 = load i32, i32* @IdPos10
	%aux940 = add i32 0, 1
	%aux941 = add i32 %aux939, %aux940
	store i32 %aux941, i32* @IdPos10
	br label %etiq476
	
	etiq476:
	;___Asignacion___
	%aux943 = load i32, i32* @Pivot10
	%aux944 = add i32 0, 1
	%aux945 = sub i32 %aux943, %aux944
	store i32 %aux945, i32* @Pivot10
	br label %etiq479
	
	etiq471:
	;___Asignacion___
	%aux947 = load i32, i32* @IdPos10
	%aux948 = add i32 0, 1
	%aux949 = add i32 %aux947, %aux948
	store i32 %aux949, i32* @IdPos10
	br label %etiq479
	
	etiq479:
	;___IfElse___
	%aux951 = add i32 0, 100
	%aux952 = load i32, i32* @Pivot10
	%aux953 = sub i32 %aux951, %aux952
	%aux954 = load i32, i32* @IdPos10
	%aux955 = icmp eq i32 %aux953, %aux954
	br i1 %aux955, label %etiq480, label %etiq481
	
	etiq480:
	;___Asignacion___
	%aux957 = load i32, i32* @_Acum19
	%aux958 = add i32 0, 1
	%aux959 = add i32 %aux957, %aux958
	store i32 %aux959, i32* @_Acum19
	br label %etiq484
	
	etiq484:
	;___Asignacion___
	%aux961 = load i32, i32* @IdPos10
	%aux962 = add i32 0, 1
	%aux963 = add i32 %aux961, %aux962
	store i32 %aux963, i32* @IdPos10
	br label %etiq486
	
	etiq486:
	;___Asignacion___
	%aux965 = load i32, i32* @Pivot10
	%aux966 = add i32 0, 1
	%aux967 = sub i32 %aux965, %aux966
	store i32 %aux967, i32* @Pivot10
	br label %etiq489
	
	etiq481:
	;___Asignacion___
	%aux969 = load i32, i32* @IdPos10
	%aux970 = add i32 0, 1
	%aux971 = add i32 %aux969, %aux970
	store i32 %aux971, i32* @IdPos10
	br label %etiq489
	
	etiq489:
	;___IfElse___
	%aux973 = add i32 0, 100
	%aux974 = load i32, i32* @Pivot10
	%aux975 = sub i32 %aux973, %aux974
	%aux976 = load i32, i32* @IdPos10
	%aux977 = icmp eq i32 %aux975, %aux976
	br i1 %aux977, label %etiq490, label %etiq491
	
	etiq490:
	;___Asignacion___
	%aux979 = load i32, i32* @_Acum19
	%aux980 = add i32 0, 1
	%aux981 = add i32 %aux979, %aux980
	store i32 %aux981, i32* @_Acum19
	br label %etiq494
	
	etiq494:
	;___Asignacion___
	%aux983 = load i32, i32* @IdPos10
	%aux984 = add i32 0, 1
	%aux985 = add i32 %aux983, %aux984
	store i32 %aux985, i32* @IdPos10
	br label %etiq496
	
	etiq496:
	;___Asignacion___
	%aux987 = load i32, i32* @Pivot10
	%aux988 = add i32 0, 1
	%aux989 = sub i32 %aux987, %aux988
	store i32 %aux989, i32* @Pivot10
	br label %etiq499
	
	etiq491:
	;___Asignacion___
	%aux991 = load i32, i32* @IdPos10
	%aux992 = add i32 0, 1
	%aux993 = add i32 %aux991, %aux992
	store i32 %aux993, i32* @IdPos10
	br label %etiq499
	
	etiq499:
	;___IfElse___
	%aux995 = add i32 0, 100
	%aux996 = load i32, i32* @Pivot10
	%aux997 = sub i32 %aux995, %aux996
	%aux998 = load i32, i32* @IdPos10
	%aux999 = icmp eq i32 %aux997, %aux998
	br i1 %aux999, label %etiq500, label %etiq501
	
	etiq500:
	;___Asignacion___
	%aux1001 = load i32, i32* @_Acum19
	%aux1002 = add i32 0, 1
	%aux1003 = add i32 %aux1001, %aux1002
	store i32 %aux1003, i32* @_Acum19
	br label %etiq504
	
	etiq504:
	;___Asignacion___
	%aux1005 = load i32, i32* @IdPos10
	%aux1006 = add i32 0, 1
	%aux1007 = add i32 %aux1005, %aux1006
	store i32 %aux1007, i32* @IdPos10
	br label %etiq506
	
	etiq506:
	;___Asignacion___
	%aux1009 = load i32, i32* @Pivot10
	%aux1010 = add i32 0, 1
	%aux1011 = sub i32 %aux1009, %aux1010
	store i32 %aux1011, i32* @Pivot10
	br label %etiq509
	
	etiq501:
	;___Asignacion___
	%aux1013 = load i32, i32* @IdPos10
	%aux1014 = add i32 0, 1
	%aux1015 = add i32 %aux1013, %aux1014
	store i32 %aux1015, i32* @IdPos10
	br label %etiq509
	
	etiq509:
	;___IfElse___
	%aux1017 = add i32 0, 100
	%aux1018 = load i32, i32* @Pivot10
	%aux1019 = sub i32 %aux1017, %aux1018
	%aux1020 = load i32, i32* @IdPos10
	%aux1021 = icmp eq i32 %aux1019, %aux1020
	br i1 %aux1021, label %etiq510, label %etiq511
	
	etiq510:
	;___Asignacion___
	%aux1023 = load i32, i32* @_Acum19
	%aux1024 = add i32 0, 1
	%aux1025 = add i32 %aux1023, %aux1024
	store i32 %aux1025, i32* @_Acum19
	br label %etiq514
	
	etiq514:
	;___Asignacion___
	%aux1027 = load i32, i32* @IdPos10
	%aux1028 = add i32 0, 1
	%aux1029 = add i32 %aux1027, %aux1028
	store i32 %aux1029, i32* @IdPos10
	br label %etiq516
	
	etiq516:
	;___Asignacion___
	%aux1031 = load i32, i32* @Pivot10
	%aux1032 = add i32 0, 1
	%aux1033 = sub i32 %aux1031, %aux1032
	store i32 %aux1033, i32* @Pivot10
	br label %etiq519
	
	etiq511:
	;___Asignacion___
	%aux1035 = load i32, i32* @IdPos10
	%aux1036 = add i32 0, 1
	%aux1037 = add i32 %aux1035, %aux1036
	store i32 %aux1037, i32* @IdPos10
	br label %etiq519
	
	etiq519:
	;___IfElse___
	%aux1039 = add i32 0, 100
	%aux1040 = load i32, i32* @Pivot10
	%aux1041 = sub i32 %aux1039, %aux1040
	%aux1042 = load i32, i32* @IdPos10
	%aux1043 = icmp eq i32 %aux1041, %aux1042
	br i1 %aux1043, label %etiq520, label %etiq521
	
	etiq520:
	;___Asignacion___
	%aux1045 = load i32, i32* @_Acum19
	%aux1046 = add i32 0, 1
	%aux1047 = add i32 %aux1045, %aux1046
	store i32 %aux1047, i32* @_Acum19
	br label %etiq524
	
	etiq524:
	;___Asignacion___
	%aux1049 = load i32, i32* @IdPos10
	%aux1050 = add i32 0, 1
	%aux1051 = add i32 %aux1049, %aux1050
	store i32 %aux1051, i32* @IdPos10
	br label %etiq526
	
	etiq526:
	;___Asignacion___
	%aux1053 = load i32, i32* @Pivot10
	%aux1054 = add i32 0, 1
	%aux1055 = sub i32 %aux1053, %aux1054
	store i32 %aux1055, i32* @Pivot10
	br label %etiq529
	
	etiq521:
	;___Asignacion___
	%aux1057 = load i32, i32* @IdPos10
	%aux1058 = add i32 0, 1
	%aux1059 = add i32 %aux1057, %aux1058
	store i32 %aux1059, i32* @IdPos10
	br label %etiq529
	
	etiq529:
	;___IfElse___
	%aux1061 = add i32 0, 100
	%aux1062 = load i32, i32* @Pivot10
	%aux1063 = sub i32 %aux1061, %aux1062
	%aux1064 = load i32, i32* @IdPos10
	%aux1065 = icmp eq i32 %aux1063, %aux1064
	br i1 %aux1065, label %etiq530, label %etiq531
	
	etiq530:
	;___Asignacion___
	%aux1067 = load i32, i32* @_Acum19
	%aux1068 = add i32 0, 1
	%aux1069 = add i32 %aux1067, %aux1068
	store i32 %aux1069, i32* @_Acum19
	br label %etiq534
	
	etiq534:
	;___Asignacion___
	%aux1071 = load i32, i32* @IdPos10
	%aux1072 = add i32 0, 1
	%aux1073 = add i32 %aux1071, %aux1072
	store i32 %aux1073, i32* @IdPos10
	br label %etiq536
	
	etiq536:
	;___Asignacion___
	%aux1075 = load i32, i32* @Pivot10
	%aux1076 = add i32 0, 1
	%aux1077 = sub i32 %aux1075, %aux1076
	store i32 %aux1077, i32* @Pivot10
	br label %etiq539
	
	etiq531:
	;___Asignacion___
	%aux1079 = load i32, i32* @IdPos10
	%aux1080 = add i32 0, 1
	%aux1081 = add i32 %aux1079, %aux1080
	store i32 %aux1081, i32* @IdPos10
	br label %etiq539
	
	etiq539:
	;___IfElse___
	%aux1083 = add i32 0, 100
	%aux1084 = load i32, i32* @Pivot10
	%aux1085 = sub i32 %aux1083, %aux1084
	%aux1086 = load i32, i32* @IdPos10
	%aux1087 = icmp eq i32 %aux1085, %aux1086
	br i1 %aux1087, label %etiq540, label %etiq541
	
	etiq540:
	;___Asignacion___
	%aux1089 = load i32, i32* @_Acum19
	%aux1090 = add i32 0, 1
	%aux1091 = add i32 %aux1089, %aux1090
	store i32 %aux1091, i32* @_Acum19
	br label %etiq544
	
	etiq544:
	;___Asignacion___
	%aux1093 = load i32, i32* @IdPos10
	%aux1094 = add i32 0, 1
	%aux1095 = add i32 %aux1093, %aux1094
	store i32 %aux1095, i32* @IdPos10
	br label %etiq546
	
	etiq546:
	;___Asignacion___
	%aux1097 = load i32, i32* @Pivot10
	%aux1098 = add i32 0, 1
	%aux1099 = sub i32 %aux1097, %aux1098
	store i32 %aux1099, i32* @Pivot10
	br label %etiq549
	
	etiq541:
	;___Asignacion___
	%aux1101 = load i32, i32* @IdPos10
	%aux1102 = add i32 0, 1
	%aux1103 = add i32 %aux1101, %aux1102
	store i32 %aux1103, i32* @IdPos10
	br label %etiq549
	
	etiq549:
	;___IfElse___
	%aux1105 = add i32 0, 100
	%aux1106 = load i32, i32* @Pivot10
	%aux1107 = sub i32 %aux1105, %aux1106
	%aux1108 = load i32, i32* @IdPos10
	%aux1109 = icmp eq i32 %aux1107, %aux1108
	br i1 %aux1109, label %etiq550, label %etiq551
	
	etiq550:
	;___Asignacion___
	%aux1111 = load i32, i32* @_Acum19
	%aux1112 = add i32 0, 1
	%aux1113 = add i32 %aux1111, %aux1112
	store i32 %aux1113, i32* @_Acum19
	br label %etiq554
	
	etiq554:
	;___Asignacion___
	%aux1115 = load i32, i32* @IdPos10
	%aux1116 = add i32 0, 1
	%aux1117 = add i32 %aux1115, %aux1116
	store i32 %aux1117, i32* @IdPos10
	br label %etiq556
	
	etiq556:
	;___Asignacion___
	%aux1119 = load i32, i32* @Pivot10
	%aux1120 = add i32 0, 1
	%aux1121 = sub i32 %aux1119, %aux1120
	store i32 %aux1121, i32* @Pivot10
	br label %etiq559
	
	etiq551:
	;___Asignacion___
	%aux1123 = load i32, i32* @IdPos10
	%aux1124 = add i32 0, 1
	%aux1125 = add i32 %aux1123, %aux1124
	store i32 %aux1125, i32* @IdPos10
	br label %etiq559
	
	etiq559:
	;___IfElse___
	%aux1127 = add i32 0, 100
	%aux1128 = load i32, i32* @Pivot10
	%aux1129 = sub i32 %aux1127, %aux1128
	%aux1130 = load i32, i32* @IdPos10
	%aux1131 = icmp eq i32 %aux1129, %aux1130
	br i1 %aux1131, label %etiq560, label %etiq561
	
	etiq560:
	;___Asignacion___
	%aux1133 = load i32, i32* @_Acum19
	%aux1134 = add i32 0, 1
	%aux1135 = add i32 %aux1133, %aux1134
	store i32 %aux1135, i32* @_Acum19
	br label %etiq564
	
	etiq564:
	;___Asignacion___
	%aux1137 = load i32, i32* @IdPos10
	%aux1138 = add i32 0, 1
	%aux1139 = add i32 %aux1137, %aux1138
	store i32 %aux1139, i32* @IdPos10
	br label %etiq566
	
	etiq566:
	;___Asignacion___
	%aux1141 = load i32, i32* @Pivot10
	%aux1142 = add i32 0, 1
	%aux1143 = sub i32 %aux1141, %aux1142
	store i32 %aux1143, i32* @Pivot10
	br label %etiq569
	
	etiq561:
	;___Asignacion___
	%aux1145 = load i32, i32* @IdPos10
	%aux1146 = add i32 0, 1
	%aux1147 = add i32 %aux1145, %aux1146
	store i32 %aux1147, i32* @IdPos10
	br label %etiq569
	
	etiq569:
	;___IfElse___
	%aux1149 = add i32 0, 100
	%aux1150 = load i32, i32* @Pivot10
	%aux1151 = sub i32 %aux1149, %aux1150
	%aux1152 = load i32, i32* @IdPos10
	%aux1153 = icmp eq i32 %aux1151, %aux1152
	br i1 %aux1153, label %etiq570, label %etiq571
	
	etiq570:
	;___Asignacion___
	%aux1155 = load i32, i32* @_Acum19
	%aux1156 = add i32 0, 1
	%aux1157 = add i32 %aux1155, %aux1156
	store i32 %aux1157, i32* @_Acum19
	br label %etiq574
	
	etiq574:
	;___Asignacion___
	%aux1159 = load i32, i32* @IdPos10
	%aux1160 = add i32 0, 1
	%aux1161 = add i32 %aux1159, %aux1160
	store i32 %aux1161, i32* @IdPos10
	br label %etiq576
	
	etiq576:
	;___Asignacion___
	%aux1163 = load i32, i32* @Pivot10
	%aux1164 = add i32 0, 1
	%aux1165 = sub i32 %aux1163, %aux1164
	store i32 %aux1165, i32* @Pivot10
	br label %etiq579
	
	etiq571:
	;___Asignacion___
	%aux1167 = load i32, i32* @IdPos10
	%aux1168 = add i32 0, 1
	%aux1169 = add i32 %aux1167, %aux1168
	store i32 %aux1169, i32* @IdPos10
	br label %etiq579
	
	etiq579:
	;___IfElse___
	%aux1171 = add i32 0, 100
	%aux1172 = load i32, i32* @Pivot10
	%aux1173 = sub i32 %aux1171, %aux1172
	%aux1174 = load i32, i32* @IdPos10
	%aux1175 = icmp eq i32 %aux1173, %aux1174
	br i1 %aux1175, label %etiq580, label %etiq581
	
	etiq580:
	;___Asignacion___
	%aux1177 = load i32, i32* @_Acum19
	%aux1178 = add i32 0, 1
	%aux1179 = add i32 %aux1177, %aux1178
	store i32 %aux1179, i32* @_Acum19
	br label %etiq584
	
	etiq584:
	;___Asignacion___
	%aux1181 = load i32, i32* @IdPos10
	%aux1182 = add i32 0, 1
	%aux1183 = add i32 %aux1181, %aux1182
	store i32 %aux1183, i32* @IdPos10
	br label %etiq586
	
	etiq586:
	;___Asignacion___
	%aux1185 = load i32, i32* @Pivot10
	%aux1186 = add i32 0, 1
	%aux1187 = sub i32 %aux1185, %aux1186
	store i32 %aux1187, i32* @Pivot10
	br label %etiq589
	
	etiq581:
	;___Asignacion___
	%aux1189 = load i32, i32* @IdPos10
	%aux1190 = add i32 0, 1
	%aux1191 = add i32 %aux1189, %aux1190
	store i32 %aux1191, i32* @IdPos10
	br label %etiq589
	
	etiq589:
	;___IfElse___
	%aux1193 = add i32 0, 100
	%aux1194 = load i32, i32* @Pivot10
	%aux1195 = sub i32 %aux1193, %aux1194
	%aux1196 = load i32, i32* @IdPos10
	%aux1197 = icmp eq i32 %aux1195, %aux1196
	br i1 %aux1197, label %etiq590, label %etiq591
	
	etiq590:
	;___Asignacion___
	%aux1199 = load i32, i32* @_Acum19
	%aux1200 = add i32 0, 1
	%aux1201 = add i32 %aux1199, %aux1200
	store i32 %aux1201, i32* @_Acum19
	br label %etiq594
	
	etiq594:
	;___Asignacion___
	%aux1203 = load i32, i32* @IdPos10
	%aux1204 = add i32 0, 1
	%aux1205 = add i32 %aux1203, %aux1204
	store i32 %aux1205, i32* @IdPos10
	br label %etiq596
	
	etiq596:
	;___Asignacion___
	%aux1207 = load i32, i32* @Pivot10
	%aux1208 = add i32 0, 1
	%aux1209 = sub i32 %aux1207, %aux1208
	store i32 %aux1209, i32* @Pivot10
	br label %etiq599
	
	etiq591:
	;___Asignacion___
	%aux1211 = load i32, i32* @IdPos10
	%aux1212 = add i32 0, 1
	%aux1213 = add i32 %aux1211, %aux1212
	store i32 %aux1213, i32* @IdPos10
	br label %etiq599
	
	etiq599:
	;___IfElse___
	%aux1215 = add i32 0, 100
	%aux1216 = load i32, i32* @Pivot10
	%aux1217 = sub i32 %aux1215, %aux1216
	%aux1218 = load i32, i32* @IdPos10
	%aux1219 = icmp eq i32 %aux1217, %aux1218
	br i1 %aux1219, label %etiq600, label %etiq601
	
	etiq600:
	;___Asignacion___
	%aux1221 = load i32, i32* @_Acum19
	%aux1222 = add i32 0, 1
	%aux1223 = add i32 %aux1221, %aux1222
	store i32 %aux1223, i32* @_Acum19
	br label %etiq604
	
	etiq604:
	;___Asignacion___
	%aux1225 = load i32, i32* @IdPos10
	%aux1226 = add i32 0, 1
	%aux1227 = add i32 %aux1225, %aux1226
	store i32 %aux1227, i32* @IdPos10
	br label %etiq606
	
	etiq606:
	;___Asignacion___
	%aux1229 = load i32, i32* @Pivot10
	%aux1230 = add i32 0, 1
	%aux1231 = sub i32 %aux1229, %aux1230
	store i32 %aux1231, i32* @Pivot10
	br label %etiq609
	
	etiq601:
	;___Asignacion___
	%aux1233 = load i32, i32* @IdPos10
	%aux1234 = add i32 0, 1
	%aux1235 = add i32 %aux1233, %aux1234
	store i32 %aux1235, i32* @IdPos10
	br label %etiq609
	
	etiq609:
	;___IfElse___
	%aux1237 = add i32 0, 100
	%aux1238 = load i32, i32* @Pivot10
	%aux1239 = sub i32 %aux1237, %aux1238
	%aux1240 = load i32, i32* @IdPos10
	%aux1241 = icmp eq i32 %aux1239, %aux1240
	br i1 %aux1241, label %etiq610, label %etiq611
	
	etiq610:
	;___Asignacion___
	%aux1243 = load i32, i32* @_Acum19
	%aux1244 = add i32 0, 1
	%aux1245 = add i32 %aux1243, %aux1244
	store i32 %aux1245, i32* @_Acum19
	br label %etiq614
	
	etiq614:
	;___Asignacion___
	%aux1247 = load i32, i32* @IdPos10
	%aux1248 = add i32 0, 1
	%aux1249 = add i32 %aux1247, %aux1248
	store i32 %aux1249, i32* @IdPos10
	br label %etiq616
	
	etiq616:
	;___Asignacion___
	%aux1251 = load i32, i32* @Pivot10
	%aux1252 = add i32 0, 1
	%aux1253 = sub i32 %aux1251, %aux1252
	store i32 %aux1253, i32* @Pivot10
	br label %etiq619
	
	etiq611:
	;___Asignacion___
	%aux1255 = load i32, i32* @IdPos10
	%aux1256 = add i32 0, 1
	%aux1257 = add i32 %aux1255, %aux1256
	store i32 %aux1257, i32* @IdPos10
	br label %etiq619
	
	etiq619:
	;___IfElse___
	%aux1259 = add i32 0, 100
	%aux1260 = load i32, i32* @Pivot10
	%aux1261 = sub i32 %aux1259, %aux1260
	%aux1262 = load i32, i32* @IdPos10
	%aux1263 = icmp eq i32 %aux1261, %aux1262
	br i1 %aux1263, label %etiq620, label %etiq621
	
	etiq620:
	;___Asignacion___
	%aux1265 = load i32, i32* @_Acum19
	%aux1266 = add i32 0, 1
	%aux1267 = add i32 %aux1265, %aux1266
	store i32 %aux1267, i32* @_Acum19
	br label %etiq624
	
	etiq624:
	;___Asignacion___
	%aux1269 = load i32, i32* @IdPos10
	%aux1270 = add i32 0, 1
	%aux1271 = add i32 %aux1269, %aux1270
	store i32 %aux1271, i32* @IdPos10
	br label %etiq626
	
	etiq626:
	;___Asignacion___
	%aux1273 = load i32, i32* @Pivot10
	%aux1274 = add i32 0, 1
	%aux1275 = sub i32 %aux1273, %aux1274
	store i32 %aux1275, i32* @Pivot10
	br label %etiq629
	
	etiq621:
	;___Asignacion___
	%aux1277 = load i32, i32* @IdPos10
	%aux1278 = add i32 0, 1
	%aux1279 = add i32 %aux1277, %aux1278
	store i32 %aux1279, i32* @IdPos10
	br label %etiq629
	
	etiq629:
	;___IfElse___
	%aux1281 = add i32 0, 100
	%aux1282 = load i32, i32* @Pivot10
	%aux1283 = sub i32 %aux1281, %aux1282
	%aux1284 = load i32, i32* @IdPos10
	%aux1285 = icmp eq i32 %aux1283, %aux1284
	br i1 %aux1285, label %etiq630, label %etiq631
	
	etiq630:
	;___Asignacion___
	%aux1287 = load i32, i32* @_Acum19
	%aux1288 = add i32 0, 1
	%aux1289 = add i32 %aux1287, %aux1288
	store i32 %aux1289, i32* @_Acum19
	br label %etiq634
	
	etiq634:
	;___Asignacion___
	%aux1291 = load i32, i32* @IdPos10
	%aux1292 = add i32 0, 1
	%aux1293 = add i32 %aux1291, %aux1292
	store i32 %aux1293, i32* @IdPos10
	br label %etiq636
	
	etiq636:
	;___Asignacion___
	%aux1295 = load i32, i32* @Pivot10
	%aux1296 = add i32 0, 1
	%aux1297 = sub i32 %aux1295, %aux1296
	store i32 %aux1297, i32* @Pivot10
	br label %etiq639
	
	etiq631:
	;___Asignacion___
	%aux1299 = load i32, i32* @IdPos10
	%aux1300 = add i32 0, 1
	%aux1301 = add i32 %aux1299, %aux1300
	store i32 %aux1301, i32* @IdPos10
	br label %etiq639
	
	etiq639:
	;___IfElse___
	%aux1303 = add i32 0, 100
	%aux1304 = load i32, i32* @Pivot10
	%aux1305 = sub i32 %aux1303, %aux1304
	%aux1306 = load i32, i32* @IdPos10
	%aux1307 = icmp eq i32 %aux1305, %aux1306
	br i1 %aux1307, label %etiq640, label %etiq641
	
	etiq640:
	;___Asignacion___
	%aux1309 = load i32, i32* @_Acum19
	%aux1310 = add i32 0, 1
	%aux1311 = add i32 %aux1309, %aux1310
	store i32 %aux1311, i32* @_Acum19
	br label %etiq644
	
	etiq644:
	;___Asignacion___
	%aux1313 = load i32, i32* @IdPos10
	%aux1314 = add i32 0, 1
	%aux1315 = add i32 %aux1313, %aux1314
	store i32 %aux1315, i32* @IdPos10
	br label %etiq646
	
	etiq646:
	;___Asignacion___
	%aux1317 = load i32, i32* @Pivot10
	%aux1318 = add i32 0, 1
	%aux1319 = sub i32 %aux1317, %aux1318
	store i32 %aux1319, i32* @Pivot10
	br label %etiq649
	
	etiq641:
	;___Asignacion___
	%aux1321 = load i32, i32* @IdPos10
	%aux1322 = add i32 0, 1
	%aux1323 = add i32 %aux1321, %aux1322
	store i32 %aux1323, i32* @IdPos10
	br label %etiq649
	
	etiq649:
	;___IfElse___
	%aux1325 = add i32 0, 100
	%aux1326 = load i32, i32* @Pivot10
	%aux1327 = sub i32 %aux1325, %aux1326
	%aux1328 = load i32, i32* @IdPos10
	%aux1329 = icmp eq i32 %aux1327, %aux1328
	br i1 %aux1329, label %etiq650, label %etiq651
	
	etiq650:
	;___Asignacion___
	%aux1331 = load i32, i32* @_Acum19
	%aux1332 = add i32 0, 1
	%aux1333 = add i32 %aux1331, %aux1332
	store i32 %aux1333, i32* @_Acum19
	br label %etiq654
	
	etiq654:
	;___Asignacion___
	%aux1335 = load i32, i32* @IdPos10
	%aux1336 = add i32 0, 1
	%aux1337 = add i32 %aux1335, %aux1336
	store i32 %aux1337, i32* @IdPos10
	br label %etiq656
	
	etiq656:
	;___Asignacion___
	%aux1339 = load i32, i32* @Pivot10
	%aux1340 = add i32 0, 1
	%aux1341 = sub i32 %aux1339, %aux1340
	store i32 %aux1341, i32* @Pivot10
	br label %etiq659
	
	etiq651:
	;___Asignacion___
	%aux1343 = load i32, i32* @IdPos10
	%aux1344 = add i32 0, 1
	%aux1345 = add i32 %aux1343, %aux1344
	store i32 %aux1345, i32* @IdPos10
	br label %etiq659
	
	etiq659:
	;___IfElse___
	%aux1347 = add i32 0, 100
	%aux1348 = load i32, i32* @Pivot10
	%aux1349 = sub i32 %aux1347, %aux1348
	%aux1350 = load i32, i32* @IdPos10
	%aux1351 = icmp eq i32 %aux1349, %aux1350
	br i1 %aux1351, label %etiq660, label %etiq661
	
	etiq660:
	;___Asignacion___
	%aux1353 = load i32, i32* @_Acum19
	%aux1354 = add i32 0, 1
	%aux1355 = add i32 %aux1353, %aux1354
	store i32 %aux1355, i32* @_Acum19
	br label %etiq664
	
	etiq664:
	;___Asignacion___
	%aux1357 = load i32, i32* @IdPos10
	%aux1358 = add i32 0, 1
	%aux1359 = add i32 %aux1357, %aux1358
	store i32 %aux1359, i32* @IdPos10
	br label %etiq666
	
	etiq666:
	;___Asignacion___
	%aux1361 = load i32, i32* @Pivot10
	%aux1362 = add i32 0, 1
	%aux1363 = sub i32 %aux1361, %aux1362
	store i32 %aux1363, i32* @Pivot10
	br label %etiq669
	
	etiq661:
	;___Asignacion___
	%aux1365 = load i32, i32* @IdPos10
	%aux1366 = add i32 0, 1
	%aux1367 = add i32 %aux1365, %aux1366
	store i32 %aux1367, i32* @IdPos10
	br label %etiq669
	
	etiq669:
	;___IfElse___
	%aux1369 = add i32 0, 100
	%aux1370 = load i32, i32* @Pivot10
	%aux1371 = sub i32 %aux1369, %aux1370
	%aux1372 = load i32, i32* @IdPos10
	%aux1373 = icmp eq i32 %aux1371, %aux1372
	br i1 %aux1373, label %etiq670, label %etiq671
	
	etiq670:
	;___Asignacion___
	%aux1375 = load i32, i32* @_Acum19
	%aux1376 = add i32 0, 1
	%aux1377 = add i32 %aux1375, %aux1376
	store i32 %aux1377, i32* @_Acum19
	br label %etiq674
	
	etiq674:
	;___Asignacion___
	%aux1379 = load i32, i32* @IdPos10
	%aux1380 = add i32 0, 1
	%aux1381 = add i32 %aux1379, %aux1380
	store i32 %aux1381, i32* @IdPos10
	br label %etiq676
	
	etiq676:
	;___Asignacion___
	%aux1383 = load i32, i32* @Pivot10
	%aux1384 = add i32 0, 1
	%aux1385 = sub i32 %aux1383, %aux1384
	store i32 %aux1385, i32* @Pivot10
	br label %etiq679
	
	etiq671:
	;___Asignacion___
	%aux1387 = load i32, i32* @IdPos10
	%aux1388 = add i32 0, 1
	%aux1389 = add i32 %aux1387, %aux1388
	store i32 %aux1389, i32* @IdPos10
	br label %etiq679
	
	etiq679:
	;___IfElse___
	%aux1391 = add i32 0, 100
	%aux1392 = load i32, i32* @Pivot10
	%aux1393 = sub i32 %aux1391, %aux1392
	%aux1394 = load i32, i32* @IdPos10
	%aux1395 = icmp eq i32 %aux1393, %aux1394
	br i1 %aux1395, label %etiq680, label %etiq681
	
	etiq680:
	;___Asignacion___
	%aux1397 = load i32, i32* @_Acum19
	%aux1398 = add i32 0, 1
	%aux1399 = add i32 %aux1397, %aux1398
	store i32 %aux1399, i32* @_Acum19
	br label %etiq684
	
	etiq684:
	;___Asignacion___
	%aux1401 = load i32, i32* @IdPos10
	%aux1402 = add i32 0, 1
	%aux1403 = add i32 %aux1401, %aux1402
	store i32 %aux1403, i32* @IdPos10
	br label %etiq686
	
	etiq686:
	;___Asignacion___
	%aux1405 = load i32, i32* @Pivot10
	%aux1406 = add i32 0, 1
	%aux1407 = sub i32 %aux1405, %aux1406
	store i32 %aux1407, i32* @Pivot10
	br label %etiq689
	
	etiq681:
	;___Asignacion___
	%aux1409 = load i32, i32* @IdPos10
	%aux1410 = add i32 0, 1
	%aux1411 = add i32 %aux1409, %aux1410
	store i32 %aux1411, i32* @IdPos10
	br label %etiq689
	
	etiq689:
	;___IfElse___
	%aux1413 = add i32 0, 100
	%aux1414 = load i32, i32* @Pivot10
	%aux1415 = sub i32 %aux1413, %aux1414
	%aux1416 = load i32, i32* @IdPos10
	%aux1417 = icmp eq i32 %aux1415, %aux1416
	br i1 %aux1417, label %etiq690, label %etiq691
	
	etiq690:
	;___Asignacion___
	%aux1419 = load i32, i32* @_Acum19
	%aux1420 = add i32 0, 1
	%aux1421 = add i32 %aux1419, %aux1420
	store i32 %aux1421, i32* @_Acum19
	br label %etiq694
	
	etiq694:
	;___Asignacion___
	%aux1423 = load i32, i32* @IdPos10
	%aux1424 = add i32 0, 1
	%aux1425 = add i32 %aux1423, %aux1424
	store i32 %aux1425, i32* @IdPos10
	br label %etiq696
	
	etiq696:
	;___Asignacion___
	%aux1427 = load i32, i32* @Pivot10
	%aux1428 = add i32 0, 1
	%aux1429 = sub i32 %aux1427, %aux1428
	store i32 %aux1429, i32* @Pivot10
	br label %etiq699
	
	etiq691:
	;___Asignacion___
	%aux1431 = load i32, i32* @IdPos10
	%aux1432 = add i32 0, 1
	%aux1433 = add i32 %aux1431, %aux1432
	store i32 %aux1433, i32* @IdPos10
	br label %etiq699
	
	etiq699:
	;___IfElse___
	%aux1435 = add i32 0, 100
	%aux1436 = load i32, i32* @Pivot10
	%aux1437 = sub i32 %aux1435, %aux1436
	%aux1438 = load i32, i32* @IdPos10
	%aux1439 = icmp eq i32 %aux1437, %aux1438
	br i1 %aux1439, label %etiq700, label %etiq701
	
	etiq700:
	;___Asignacion___
	%aux1441 = load i32, i32* @_Acum19
	%aux1442 = add i32 0, 1
	%aux1443 = add i32 %aux1441, %aux1442
	store i32 %aux1443, i32* @_Acum19
	br label %etiq704
	
	etiq704:
	;___Asignacion___
	%aux1445 = load i32, i32* @IdPos10
	%aux1446 = add i32 0, 1
	%aux1447 = add i32 %aux1445, %aux1446
	store i32 %aux1447, i32* @IdPos10
	br label %etiq706
	
	etiq706:
	;___Asignacion___
	%aux1449 = load i32, i32* @Pivot10
	%aux1450 = add i32 0, 1
	%aux1451 = sub i32 %aux1449, %aux1450
	store i32 %aux1451, i32* @Pivot10
	br label %etiq709
	
	etiq701:
	;___Asignacion___
	%aux1453 = load i32, i32* @IdPos10
	%aux1454 = add i32 0, 1
	%aux1455 = add i32 %aux1453, %aux1454
	store i32 %aux1455, i32* @IdPos10
	br label %etiq709
	
	etiq709:
	;___IfElse___
	%aux1457 = add i32 0, 100
	%aux1458 = load i32, i32* @Pivot10
	%aux1459 = sub i32 %aux1457, %aux1458
	%aux1460 = load i32, i32* @IdPos10
	%aux1461 = icmp eq i32 %aux1459, %aux1460
	br i1 %aux1461, label %etiq710, label %etiq711
	
	etiq710:
	;___Asignacion___
	%aux1463 = load i32, i32* @_Acum19
	%aux1464 = add i32 0, 1
	%aux1465 = add i32 %aux1463, %aux1464
	store i32 %aux1465, i32* @_Acum19
	br label %etiq714
	
	etiq714:
	;___Asignacion___
	%aux1467 = load i32, i32* @IdPos10
	%aux1468 = add i32 0, 1
	%aux1469 = add i32 %aux1467, %aux1468
	store i32 %aux1469, i32* @IdPos10
	br label %etiq716
	
	etiq716:
	;___Asignacion___
	%aux1471 = load i32, i32* @Pivot10
	%aux1472 = add i32 0, 1
	%aux1473 = sub i32 %aux1471, %aux1472
	store i32 %aux1473, i32* @Pivot10
	br label %etiq719
	
	etiq711:
	;___Asignacion___
	%aux1475 = load i32, i32* @IdPos10
	%aux1476 = add i32 0, 1
	%aux1477 = add i32 %aux1475, %aux1476
	store i32 %aux1477, i32* @IdPos10
	br label %etiq719
	
	etiq719:
	;___IfElse___
	%aux1479 = add i32 0, 100
	%aux1480 = load i32, i32* @Pivot10
	%aux1481 = sub i32 %aux1479, %aux1480
	%aux1482 = load i32, i32* @IdPos10
	%aux1483 = icmp eq i32 %aux1481, %aux1482
	br i1 %aux1483, label %etiq720, label %etiq721
	
	etiq720:
	;___Asignacion___
	%aux1485 = load i32, i32* @_Acum19
	%aux1486 = add i32 0, 1
	%aux1487 = add i32 %aux1485, %aux1486
	store i32 %aux1487, i32* @_Acum19
	br label %etiq724
	
	etiq724:
	;___Asignacion___
	%aux1489 = load i32, i32* @IdPos10
	%aux1490 = add i32 0, 1
	%aux1491 = add i32 %aux1489, %aux1490
	store i32 %aux1491, i32* @IdPos10
	br label %etiq726
	
	etiq726:
	;___Asignacion___
	%aux1493 = load i32, i32* @Pivot10
	%aux1494 = add i32 0, 1
	%aux1495 = sub i32 %aux1493, %aux1494
	store i32 %aux1495, i32* @Pivot10
	br label %etiq729
	
	etiq721:
	;___Asignacion___
	%aux1497 = load i32, i32* @IdPos10
	%aux1498 = add i32 0, 1
	%aux1499 = add i32 %aux1497, %aux1498
	store i32 %aux1499, i32* @IdPos10
	br label %etiq729
	
	etiq729:
	;___IfElse___
	%aux1501 = add i32 0, 100
	%aux1502 = load i32, i32* @Pivot10
	%aux1503 = sub i32 %aux1501, %aux1502
	%aux1504 = load i32, i32* @IdPos10
	%aux1505 = icmp eq i32 %aux1503, %aux1504
	br i1 %aux1505, label %etiq730, label %etiq731
	
	etiq730:
	;___Asignacion___
	%aux1507 = load i32, i32* @_Acum19
	%aux1508 = add i32 0, 1
	%aux1509 = add i32 %aux1507, %aux1508
	store i32 %aux1509, i32* @_Acum19
	br label %etiq734
	
	etiq734:
	;___Asignacion___
	%aux1511 = load i32, i32* @IdPos10
	%aux1512 = add i32 0, 1
	%aux1513 = add i32 %aux1511, %aux1512
	store i32 %aux1513, i32* @IdPos10
	br label %etiq736
	
	etiq736:
	;___Asignacion___
	%aux1515 = load i32, i32* @Pivot10
	%aux1516 = add i32 0, 1
	%aux1517 = sub i32 %aux1515, %aux1516
	store i32 %aux1517, i32* @Pivot10
	br label %etiq739
	
	etiq731:
	;___Asignacion___
	%aux1519 = load i32, i32* @IdPos10
	%aux1520 = add i32 0, 1
	%aux1521 = add i32 %aux1519, %aux1520
	store i32 %aux1521, i32* @IdPos10
	br label %etiq739
	
	etiq739:
	;___IfElse___
	%aux1523 = add i32 0, 100
	%aux1524 = load i32, i32* @Pivot10
	%aux1525 = sub i32 %aux1523, %aux1524
	%aux1526 = load i32, i32* @IdPos10
	%aux1527 = icmp eq i32 %aux1525, %aux1526
	br i1 %aux1527, label %etiq740, label %etiq741
	
	etiq740:
	;___Asignacion___
	%aux1529 = load i32, i32* @_Acum19
	%aux1530 = add i32 0, 1
	%aux1531 = add i32 %aux1529, %aux1530
	store i32 %aux1531, i32* @_Acum19
	br label %etiq744
	
	etiq744:
	;___Asignacion___
	%aux1533 = load i32, i32* @IdPos10
	%aux1534 = add i32 0, 1
	%aux1535 = add i32 %aux1533, %aux1534
	store i32 %aux1535, i32* @IdPos10
	br label %etiq746
	
	etiq746:
	;___Asignacion___
	%aux1537 = load i32, i32* @Pivot10
	%aux1538 = add i32 0, 1
	%aux1539 = sub i32 %aux1537, %aux1538
	store i32 %aux1539, i32* @Pivot10
	br label %etiq749
	
	etiq741:
	;___Asignacion___
	%aux1541 = load i32, i32* @IdPos10
	%aux1542 = add i32 0, 1
	%aux1543 = add i32 %aux1541, %aux1542
	store i32 %aux1543, i32* @IdPos10
	br label %etiq749
	
	etiq749:
	;___IfElse___
	%aux1545 = add i32 0, 100
	%aux1546 = load i32, i32* @Pivot10
	%aux1547 = sub i32 %aux1545, %aux1546
	%aux1548 = load i32, i32* @IdPos10
	%aux1549 = icmp eq i32 %aux1547, %aux1548
	br i1 %aux1549, label %etiq750, label %etiq751
	
	etiq750:
	;___Asignacion___
	%aux1551 = load i32, i32* @_Acum19
	%aux1552 = add i32 0, 1
	%aux1553 = add i32 %aux1551, %aux1552
	store i32 %aux1553, i32* @_Acum19
	br label %etiq754
	
	etiq754:
	;___Asignacion___
	%aux1555 = load i32, i32* @IdPos10
	%aux1556 = add i32 0, 1
	%aux1557 = add i32 %aux1555, %aux1556
	store i32 %aux1557, i32* @IdPos10
	br label %etiq756
	
	etiq756:
	;___Asignacion___
	%aux1559 = load i32, i32* @Pivot10
	%aux1560 = add i32 0, 1
	%aux1561 = sub i32 %aux1559, %aux1560
	store i32 %aux1561, i32* @Pivot10
	br label %etiq759
	
	etiq751:
	;___Asignacion___
	%aux1563 = load i32, i32* @IdPos10
	%aux1564 = add i32 0, 1
	%aux1565 = add i32 %aux1563, %aux1564
	store i32 %aux1565, i32* @IdPos10
	br label %etiq759
	
	etiq759:
	;___IfElse___
	%aux1567 = add i32 0, 100
	%aux1568 = load i32, i32* @Pivot10
	%aux1569 = sub i32 %aux1567, %aux1568
	%aux1570 = load i32, i32* @IdPos10
	%aux1571 = icmp eq i32 %aux1569, %aux1570
	br i1 %aux1571, label %etiq760, label %etiq761
	
	etiq760:
	;___Asignacion___
	%aux1573 = load i32, i32* @_Acum19
	%aux1574 = add i32 0, 1
	%aux1575 = add i32 %aux1573, %aux1574
	store i32 %aux1575, i32* @_Acum19
	br label %etiq764
	
	etiq764:
	;___Asignacion___
	%aux1577 = load i32, i32* @IdPos10
	%aux1578 = add i32 0, 1
	%aux1579 = add i32 %aux1577, %aux1578
	store i32 %aux1579, i32* @IdPos10
	br label %etiq766
	
	etiq766:
	;___Asignacion___
	%aux1581 = load i32, i32* @Pivot10
	%aux1582 = add i32 0, 1
	%aux1583 = sub i32 %aux1581, %aux1582
	store i32 %aux1583, i32* @Pivot10
	br label %etiq769
	
	etiq761:
	;___Asignacion___
	%aux1585 = load i32, i32* @IdPos10
	%aux1586 = add i32 0, 1
	%aux1587 = add i32 %aux1585, %aux1586
	store i32 %aux1587, i32* @IdPos10
	br label %etiq769
	
	etiq769:
	;___IfElse___
	%aux1589 = add i32 0, 100
	%aux1590 = load i32, i32* @Pivot10
	%aux1591 = sub i32 %aux1589, %aux1590
	%aux1592 = load i32, i32* @IdPos10
	%aux1593 = icmp eq i32 %aux1591, %aux1592
	br i1 %aux1593, label %etiq770, label %etiq771
	
	etiq770:
	;___Asignacion___
	%aux1595 = load i32, i32* @_Acum19
	%aux1596 = add i32 0, 1
	%aux1597 = add i32 %aux1595, %aux1596
	store i32 %aux1597, i32* @_Acum19
	br label %etiq774
	
	etiq774:
	;___Asignacion___
	%aux1599 = load i32, i32* @IdPos10
	%aux1600 = add i32 0, 1
	%aux1601 = add i32 %aux1599, %aux1600
	store i32 %aux1601, i32* @IdPos10
	br label %etiq776
	
	etiq776:
	;___Asignacion___
	%aux1603 = load i32, i32* @Pivot10
	%aux1604 = add i32 0, 1
	%aux1605 = sub i32 %aux1603, %aux1604
	store i32 %aux1605, i32* @Pivot10
	br label %etiq779
	
	etiq771:
	;___Asignacion___
	%aux1607 = load i32, i32* @IdPos10
	%aux1608 = add i32 0, 1
	%aux1609 = add i32 %aux1607, %aux1608
	store i32 %aux1609, i32* @IdPos10
	br label %etiq779
	
	etiq779:
	;___IfElse___
	%aux1611 = add i32 0, 100
	%aux1612 = load i32, i32* @Pivot10
	%aux1613 = sub i32 %aux1611, %aux1612
	%aux1614 = load i32, i32* @IdPos10
	%aux1615 = icmp eq i32 %aux1613, %aux1614
	br i1 %aux1615, label %etiq780, label %etiq781
	
	etiq780:
	;___Asignacion___
	%aux1617 = load i32, i32* @_Acum19
	%aux1618 = add i32 0, 1
	%aux1619 = add i32 %aux1617, %aux1618
	store i32 %aux1619, i32* @_Acum19
	br label %etiq784
	
	etiq784:
	;___Asignacion___
	%aux1621 = load i32, i32* @IdPos10
	%aux1622 = add i32 0, 1
	%aux1623 = add i32 %aux1621, %aux1622
	store i32 %aux1623, i32* @IdPos10
	br label %etiq786
	
	etiq786:
	;___Asignacion___
	%aux1625 = load i32, i32* @Pivot10
	%aux1626 = add i32 0, 1
	%aux1627 = sub i32 %aux1625, %aux1626
	store i32 %aux1627, i32* @Pivot10
	br label %etiq789
	
	etiq781:
	;___Asignacion___
	%aux1629 = load i32, i32* @IdPos10
	%aux1630 = add i32 0, 1
	%aux1631 = add i32 %aux1629, %aux1630
	store i32 %aux1631, i32* @IdPos10
	br label %etiq789
	
	etiq789:
	;___IfElse___
	%aux1633 = add i32 0, 100
	%aux1634 = load i32, i32* @Pivot10
	%aux1635 = sub i32 %aux1633, %aux1634
	%aux1636 = load i32, i32* @IdPos10
	%aux1637 = icmp eq i32 %aux1635, %aux1636
	br i1 %aux1637, label %etiq790, label %etiq791
	
	etiq790:
	;___Asignacion___
	%aux1639 = load i32, i32* @_Acum19
	%aux1640 = add i32 0, 1
	%aux1641 = add i32 %aux1639, %aux1640
	store i32 %aux1641, i32* @_Acum19
	br label %etiq794
	
	etiq794:
	;___Asignacion___
	%aux1643 = load i32, i32* @IdPos10
	%aux1644 = add i32 0, 1
	%aux1645 = add i32 %aux1643, %aux1644
	store i32 %aux1645, i32* @IdPos10
	br label %etiq796
	
	etiq796:
	;___Asignacion___
	%aux1647 = load i32, i32* @Pivot10
	%aux1648 = add i32 0, 1
	%aux1649 = sub i32 %aux1647, %aux1648
	store i32 %aux1649, i32* @Pivot10
	br label %etiq799
	
	etiq791:
	;___Asignacion___
	%aux1651 = load i32, i32* @IdPos10
	%aux1652 = add i32 0, 1
	%aux1653 = add i32 %aux1651, %aux1652
	store i32 %aux1653, i32* @IdPos10
	br label %etiq799
	
	etiq799:
	;___IfElse___
	%aux1655 = add i32 0, 100
	%aux1656 = load i32, i32* @Pivot10
	%aux1657 = sub i32 %aux1655, %aux1656
	%aux1658 = load i32, i32* @IdPos10
	%aux1659 = icmp eq i32 %aux1657, %aux1658
	br i1 %aux1659, label %etiq800, label %etiq801
	
	etiq800:
	;___Asignacion___
	%aux1661 = load i32, i32* @_Acum19
	%aux1662 = add i32 0, 1
	%aux1663 = add i32 %aux1661, %aux1662
	store i32 %aux1663, i32* @_Acum19
	br label %etiq804
	
	etiq804:
	;___Asignacion___
	%aux1665 = load i32, i32* @IdPos10
	%aux1666 = add i32 0, 1
	%aux1667 = add i32 %aux1665, %aux1666
	store i32 %aux1667, i32* @IdPos10
	br label %etiq806
	
	etiq806:
	;___Asignacion___
	%aux1669 = load i32, i32* @Pivot10
	%aux1670 = add i32 0, 1
	%aux1671 = sub i32 %aux1669, %aux1670
	store i32 %aux1671, i32* @Pivot10
	br label %etiq809
	
	etiq801:
	;___Asignacion___
	%aux1673 = load i32, i32* @IdPos10
	%aux1674 = add i32 0, 1
	%aux1675 = add i32 %aux1673, %aux1674
	store i32 %aux1675, i32* @IdPos10
	br label %etiq809
	
	etiq809:
	;___IfElse___
	%aux1677 = add i32 0, 100
	%aux1678 = load i32, i32* @Pivot10
	%aux1679 = sub i32 %aux1677, %aux1678
	%aux1680 = load i32, i32* @IdPos10
	%aux1681 = icmp eq i32 %aux1679, %aux1680
	br i1 %aux1681, label %etiq810, label %etiq811
	
	etiq810:
	;___Asignacion___
	%aux1683 = load i32, i32* @_Acum19
	%aux1684 = add i32 0, 1
	%aux1685 = add i32 %aux1683, %aux1684
	store i32 %aux1685, i32* @_Acum19
	br label %etiq814
	
	etiq814:
	;___Asignacion___
	%aux1687 = load i32, i32* @IdPos10
	%aux1688 = add i32 0, 1
	%aux1689 = add i32 %aux1687, %aux1688
	store i32 %aux1689, i32* @IdPos10
	br label %etiq816
	
	etiq816:
	;___Asignacion___
	%aux1691 = load i32, i32* @Pivot10
	%aux1692 = add i32 0, 1
	%aux1693 = sub i32 %aux1691, %aux1692
	store i32 %aux1693, i32* @Pivot10
	br label %etiq819
	
	etiq811:
	;___Asignacion___
	%aux1695 = load i32, i32* @IdPos10
	%aux1696 = add i32 0, 1
	%aux1697 = add i32 %aux1695, %aux1696
	store i32 %aux1697, i32* @IdPos10
	br label %etiq819
	
	etiq819:
	;___IfElse___
	%aux1699 = add i32 0, 100
	%aux1700 = load i32, i32* @Pivot10
	%aux1701 = sub i32 %aux1699, %aux1700
	%aux1702 = load i32, i32* @IdPos10
	%aux1703 = icmp eq i32 %aux1701, %aux1702
	br i1 %aux1703, label %etiq820, label %etiq821
	
	etiq820:
	;___Asignacion___
	%aux1705 = load i32, i32* @_Acum19
	%aux1706 = add i32 0, 1
	%aux1707 = add i32 %aux1705, %aux1706
	store i32 %aux1707, i32* @_Acum19
	br label %etiq824
	
	etiq824:
	;___Asignacion___
	%aux1709 = load i32, i32* @IdPos10
	%aux1710 = add i32 0, 1
	%aux1711 = add i32 %aux1709, %aux1710
	store i32 %aux1711, i32* @IdPos10
	br label %etiq826
	
	etiq826:
	;___Asignacion___
	%aux1713 = load i32, i32* @Pivot10
	%aux1714 = add i32 0, 1
	%aux1715 = sub i32 %aux1713, %aux1714
	store i32 %aux1715, i32* @Pivot10
	br label %etiq829
	
	etiq821:
	;___Asignacion___
	%aux1717 = load i32, i32* @IdPos10
	%aux1718 = add i32 0, 1
	%aux1719 = add i32 %aux1717, %aux1718
	store i32 %aux1719, i32* @IdPos10
	br label %etiq829
	
	etiq829:
	;___IfElse___
	%aux1721 = add i32 0, 100
	%aux1722 = load i32, i32* @Pivot10
	%aux1723 = sub i32 %aux1721, %aux1722
	%aux1724 = load i32, i32* @IdPos10
	%aux1725 = icmp eq i32 %aux1723, %aux1724
	br i1 %aux1725, label %etiq830, label %etiq831
	
	etiq830:
	;___Asignacion___
	%aux1727 = load i32, i32* @_Acum19
	%aux1728 = add i32 0, 1
	%aux1729 = add i32 %aux1727, %aux1728
	store i32 %aux1729, i32* @_Acum19
	br label %etiq834
	
	etiq834:
	;___Asignacion___
	%aux1731 = load i32, i32* @IdPos10
	%aux1732 = add i32 0, 1
	%aux1733 = add i32 %aux1731, %aux1732
	store i32 %aux1733, i32* @IdPos10
	br label %etiq836
	
	etiq836:
	;___Asignacion___
	%aux1735 = load i32, i32* @Pivot10
	%aux1736 = add i32 0, 1
	%aux1737 = sub i32 %aux1735, %aux1736
	store i32 %aux1737, i32* @Pivot10
	br label %etiq839
	
	etiq831:
	;___Asignacion___
	%aux1739 = load i32, i32* @IdPos10
	%aux1740 = add i32 0, 1
	%aux1741 = add i32 %aux1739, %aux1740
	store i32 %aux1741, i32* @IdPos10
	br label %etiq839
	
	etiq839:
	;___IfElse___
	%aux1743 = add i32 0, 100
	%aux1744 = load i32, i32* @Pivot10
	%aux1745 = sub i32 %aux1743, %aux1744
	%aux1746 = load i32, i32* @IdPos10
	%aux1747 = icmp eq i32 %aux1745, %aux1746
	br i1 %aux1747, label %etiq840, label %etiq841
	
	etiq840:
	;___Asignacion___
	%aux1749 = load i32, i32* @_Acum19
	%aux1750 = add i32 0, 1
	%aux1751 = add i32 %aux1749, %aux1750
	store i32 %aux1751, i32* @_Acum19
	br label %etiq844
	
	etiq844:
	;___Asignacion___
	%aux1753 = load i32, i32* @IdPos10
	%aux1754 = add i32 0, 1
	%aux1755 = add i32 %aux1753, %aux1754
	store i32 %aux1755, i32* @IdPos10
	br label %etiq846
	
	etiq846:
	;___Asignacion___
	%aux1757 = load i32, i32* @Pivot10
	%aux1758 = add i32 0, 1
	%aux1759 = sub i32 %aux1757, %aux1758
	store i32 %aux1759, i32* @Pivot10
	br label %etiq849
	
	etiq841:
	;___Asignacion___
	%aux1761 = load i32, i32* @IdPos10
	%aux1762 = add i32 0, 1
	%aux1763 = add i32 %aux1761, %aux1762
	store i32 %aux1763, i32* @IdPos10
	br label %etiq849
	
	etiq849:
	;___IfElse___
	%aux1765 = add i32 0, 100
	%aux1766 = load i32, i32* @Pivot10
	%aux1767 = sub i32 %aux1765, %aux1766
	%aux1768 = load i32, i32* @IdPos10
	%aux1769 = icmp eq i32 %aux1767, %aux1768
	br i1 %aux1769, label %etiq850, label %etiq851
	
	etiq850:
	;___Asignacion___
	%aux1771 = load i32, i32* @_Acum19
	%aux1772 = add i32 0, 1
	%aux1773 = add i32 %aux1771, %aux1772
	store i32 %aux1773, i32* @_Acum19
	br label %etiq854
	
	etiq854:
	;___Asignacion___
	%aux1775 = load i32, i32* @IdPos10
	%aux1776 = add i32 0, 1
	%aux1777 = add i32 %aux1775, %aux1776
	store i32 %aux1777, i32* @IdPos10
	br label %etiq856
	
	etiq856:
	;___Asignacion___
	%aux1779 = load i32, i32* @Pivot10
	%aux1780 = add i32 0, 1
	%aux1781 = sub i32 %aux1779, %aux1780
	store i32 %aux1781, i32* @Pivot10
	br label %etiq859
	
	etiq851:
	;___Asignacion___
	%aux1783 = load i32, i32* @IdPos10
	%aux1784 = add i32 0, 1
	%aux1785 = add i32 %aux1783, %aux1784
	store i32 %aux1785, i32* @IdPos10
	br label %etiq859
	
	etiq859:
	;___IfElse___
	%aux1787 = add i32 0, 100
	%aux1788 = load i32, i32* @Pivot10
	%aux1789 = sub i32 %aux1787, %aux1788
	%aux1790 = load i32, i32* @IdPos10
	%aux1791 = icmp eq i32 %aux1789, %aux1790
	br i1 %aux1791, label %etiq860, label %etiq861
	
	etiq860:
	;___Asignacion___
	%aux1793 = load i32, i32* @_Acum19
	%aux1794 = add i32 0, 1
	%aux1795 = add i32 %aux1793, %aux1794
	store i32 %aux1795, i32* @_Acum19
	br label %etiq864
	
	etiq864:
	;___Asignacion___
	%aux1797 = load i32, i32* @IdPos10
	%aux1798 = add i32 0, 1
	%aux1799 = add i32 %aux1797, %aux1798
	store i32 %aux1799, i32* @IdPos10
	br label %etiq866
	
	etiq866:
	;___Asignacion___
	%aux1801 = load i32, i32* @Pivot10
	%aux1802 = add i32 0, 1
	%aux1803 = sub i32 %aux1801, %aux1802
	store i32 %aux1803, i32* @Pivot10
	br label %etiq869
	
	etiq861:
	;___Asignacion___
	%aux1805 = load i32, i32* @IdPos10
	%aux1806 = add i32 0, 1
	%aux1807 = add i32 %aux1805, %aux1806
	store i32 %aux1807, i32* @IdPos10
	br label %etiq869
	
	etiq869:
	;___IfElse___
	%aux1809 = add i32 0, 100
	%aux1810 = load i32, i32* @Pivot10
	%aux1811 = sub i32 %aux1809, %aux1810
	%aux1812 = load i32, i32* @IdPos10
	%aux1813 = icmp eq i32 %aux1811, %aux1812
	br i1 %aux1813, label %etiq870, label %etiq871
	
	etiq870:
	;___Asignacion___
	%aux1815 = load i32, i32* @_Acum19
	%aux1816 = add i32 0, 1
	%aux1817 = add i32 %aux1815, %aux1816
	store i32 %aux1817, i32* @_Acum19
	br label %etiq874
	
	etiq874:
	;___Asignacion___
	%aux1819 = load i32, i32* @IdPos10
	%aux1820 = add i32 0, 1
	%aux1821 = add i32 %aux1819, %aux1820
	store i32 %aux1821, i32* @IdPos10
	br label %etiq876
	
	etiq876:
	;___Asignacion___
	%aux1823 = load i32, i32* @Pivot10
	%aux1824 = add i32 0, 1
	%aux1825 = sub i32 %aux1823, %aux1824
	store i32 %aux1825, i32* @Pivot10
	br label %etiq879
	
	etiq871:
	;___Asignacion___
	%aux1827 = load i32, i32* @IdPos10
	%aux1828 = add i32 0, 1
	%aux1829 = add i32 %aux1827, %aux1828
	store i32 %aux1829, i32* @IdPos10
	br label %etiq879
	
	etiq879:
	;___IfElse___
	%aux1831 = add i32 0, 100
	%aux1832 = load i32, i32* @Pivot10
	%aux1833 = sub i32 %aux1831, %aux1832
	%aux1834 = load i32, i32* @IdPos10
	%aux1835 = icmp eq i32 %aux1833, %aux1834
	br i1 %aux1835, label %etiq880, label %etiq881
	
	etiq880:
	;___Asignacion___
	%aux1837 = load i32, i32* @_Acum19
	%aux1838 = add i32 0, 1
	%aux1839 = add i32 %aux1837, %aux1838
	store i32 %aux1839, i32* @_Acum19
	br label %etiq884
	
	etiq884:
	;___Asignacion___
	%aux1841 = load i32, i32* @IdPos10
	%aux1842 = add i32 0, 1
	%aux1843 = add i32 %aux1841, %aux1842
	store i32 %aux1843, i32* @IdPos10
	br label %etiq886
	
	etiq886:
	;___Asignacion___
	%aux1845 = load i32, i32* @Pivot10
	%aux1846 = add i32 0, 1
	%aux1847 = sub i32 %aux1845, %aux1846
	store i32 %aux1847, i32* @Pivot10
	br label %etiq889
	
	etiq881:
	;___Asignacion___
	%aux1849 = load i32, i32* @IdPos10
	%aux1850 = add i32 0, 1
	%aux1851 = add i32 %aux1849, %aux1850
	store i32 %aux1851, i32* @IdPos10
	br label %etiq889
	
	etiq889:
	;___IfElse___
	%aux1853 = add i32 0, 100
	%aux1854 = load i32, i32* @Pivot10
	%aux1855 = sub i32 %aux1853, %aux1854
	%aux1856 = load i32, i32* @IdPos10
	%aux1857 = icmp eq i32 %aux1855, %aux1856
	br i1 %aux1857, label %etiq890, label %etiq891
	
	etiq890:
	;___Asignacion___
	%aux1859 = load i32, i32* @_Acum19
	%aux1860 = add i32 0, 1
	%aux1861 = add i32 %aux1859, %aux1860
	store i32 %aux1861, i32* @_Acum19
	br label %etiq894
	
	etiq894:
	;___Asignacion___
	%aux1863 = load i32, i32* @IdPos10
	%aux1864 = add i32 0, 1
	%aux1865 = add i32 %aux1863, %aux1864
	store i32 %aux1865, i32* @IdPos10
	br label %etiq896
	
	etiq896:
	;___Asignacion___
	%aux1867 = load i32, i32* @Pivot10
	%aux1868 = add i32 0, 1
	%aux1869 = sub i32 %aux1867, %aux1868
	store i32 %aux1869, i32* @Pivot10
	br label %etiq899
	
	etiq891:
	;___Asignacion___
	%aux1871 = load i32, i32* @IdPos10
	%aux1872 = add i32 0, 1
	%aux1873 = add i32 %aux1871, %aux1872
	store i32 %aux1873, i32* @IdPos10
	br label %etiq899
	
	etiq899:
	;___IfElse___
	%aux1875 = add i32 0, 100
	%aux1876 = load i32, i32* @Pivot10
	%aux1877 = sub i32 %aux1875, %aux1876
	%aux1878 = load i32, i32* @IdPos10
	%aux1879 = icmp eq i32 %aux1877, %aux1878
	br i1 %aux1879, label %etiq900, label %etiq901
	
	etiq900:
	;___Asignacion___
	%aux1881 = load i32, i32* @_Acum19
	%aux1882 = add i32 0, 1
	%aux1883 = add i32 %aux1881, %aux1882
	store i32 %aux1883, i32* @_Acum19
	br label %etiq904
	
	etiq904:
	;___Asignacion___
	%aux1885 = load i32, i32* @IdPos10
	%aux1886 = add i32 0, 1
	%aux1887 = add i32 %aux1885, %aux1886
	store i32 %aux1887, i32* @IdPos10
	br label %etiq906
	
	etiq906:
	;___Asignacion___
	%aux1889 = load i32, i32* @Pivot10
	%aux1890 = add i32 0, 1
	%aux1891 = sub i32 %aux1889, %aux1890
	store i32 %aux1891, i32* @Pivot10
	br label %etiq909
	
	etiq901:
	;___Asignacion___
	%aux1893 = load i32, i32* @IdPos10
	%aux1894 = add i32 0, 1
	%aux1895 = add i32 %aux1893, %aux1894
	store i32 %aux1895, i32* @IdPos10
	br label %etiq909
	
	etiq909:
	;___IfElse___
	%aux1897 = add i32 0, 100
	%aux1898 = load i32, i32* @Pivot10
	%aux1899 = sub i32 %aux1897, %aux1898
	%aux1900 = load i32, i32* @IdPos10
	%aux1901 = icmp eq i32 %aux1899, %aux1900
	br i1 %aux1901, label %etiq910, label %etiq911
	
	etiq910:
	;___Asignacion___
	%aux1903 = load i32, i32* @_Acum19
	%aux1904 = add i32 0, 1
	%aux1905 = add i32 %aux1903, %aux1904
	store i32 %aux1905, i32* @_Acum19
	br label %etiq914
	
	etiq914:
	;___Asignacion___
	%aux1907 = load i32, i32* @IdPos10
	%aux1908 = add i32 0, 1
	%aux1909 = add i32 %aux1907, %aux1908
	store i32 %aux1909, i32* @IdPos10
	br label %etiq916
	
	etiq916:
	;___Asignacion___
	%aux1911 = load i32, i32* @Pivot10
	%aux1912 = add i32 0, 1
	%aux1913 = sub i32 %aux1911, %aux1912
	store i32 %aux1913, i32* @Pivot10
	br label %etiq919
	
	etiq911:
	;___Asignacion___
	%aux1915 = load i32, i32* @IdPos10
	%aux1916 = add i32 0, 1
	%aux1917 = add i32 %aux1915, %aux1916
	store i32 %aux1917, i32* @IdPos10
	br label %etiq919
	
	etiq919:
	;___IfElse___
	%aux1919 = add i32 0, 100
	%aux1920 = load i32, i32* @Pivot10
	%aux1921 = sub i32 %aux1919, %aux1920
	%aux1922 = load i32, i32* @IdPos10
	%aux1923 = icmp eq i32 %aux1921, %aux1922
	br i1 %aux1923, label %etiq920, label %etiq921
	
	etiq920:
	;___Asignacion___
	%aux1925 = load i32, i32* @_Acum19
	%aux1926 = add i32 0, 1
	%aux1927 = add i32 %aux1925, %aux1926
	store i32 %aux1927, i32* @_Acum19
	br label %etiq924
	
	etiq924:
	;___Asignacion___
	%aux1929 = load i32, i32* @IdPos10
	%aux1930 = add i32 0, 1
	%aux1931 = add i32 %aux1929, %aux1930
	store i32 %aux1931, i32* @IdPos10
	br label %etiq926
	
	etiq926:
	;___Asignacion___
	%aux1933 = load i32, i32* @Pivot10
	%aux1934 = add i32 0, 1
	%aux1935 = sub i32 %aux1933, %aux1934
	store i32 %aux1935, i32* @Pivot10
	br label %etiq929
	
	etiq921:
	;___Asignacion___
	%aux1937 = load i32, i32* @IdPos10
	%aux1938 = add i32 0, 1
	%aux1939 = add i32 %aux1937, %aux1938
	store i32 %aux1939, i32* @IdPos10
	br label %etiq929
	
	etiq929:
	;___IfElse___
	%aux1941 = add i32 0, 100
	%aux1942 = load i32, i32* @Pivot10
	%aux1943 = sub i32 %aux1941, %aux1942
	%aux1944 = load i32, i32* @IdPos10
	%aux1945 = icmp eq i32 %aux1943, %aux1944
	br i1 %aux1945, label %etiq930, label %etiq931
	
	etiq930:
	;___Asignacion___
	%aux1947 = load i32, i32* @_Acum19
	%aux1948 = add i32 0, 1
	%aux1949 = add i32 %aux1947, %aux1948
	store i32 %aux1949, i32* @_Acum19
	br label %etiq934
	
	etiq934:
	;___Asignacion___
	%aux1951 = load i32, i32* @IdPos10
	%aux1952 = add i32 0, 1
	%aux1953 = add i32 %aux1951, %aux1952
	store i32 %aux1953, i32* @IdPos10
	br label %etiq936
	
	etiq936:
	;___Asignacion___
	%aux1955 = load i32, i32* @Pivot10
	%aux1956 = add i32 0, 1
	%aux1957 = sub i32 %aux1955, %aux1956
	store i32 %aux1957, i32* @Pivot10
	br label %etiq939
	
	etiq931:
	;___Asignacion___
	%aux1959 = load i32, i32* @IdPos10
	%aux1960 = add i32 0, 1
	%aux1961 = add i32 %aux1959, %aux1960
	store i32 %aux1961, i32* @IdPos10
	br label %etiq939
	
	etiq939:
	;___IfElse___
	%aux1963 = add i32 0, 100
	%aux1964 = load i32, i32* @Pivot10
	%aux1965 = sub i32 %aux1963, %aux1964
	%aux1966 = load i32, i32* @IdPos10
	%aux1967 = icmp eq i32 %aux1965, %aux1966
	br i1 %aux1967, label %etiq940, label %etiq941
	
	etiq940:
	;___Asignacion___
	%aux1969 = load i32, i32* @_Acum19
	%aux1970 = add i32 0, 1
	%aux1971 = add i32 %aux1969, %aux1970
	store i32 %aux1971, i32* @_Acum19
	br label %etiq944
	
	etiq944:
	;___Asignacion___
	%aux1973 = load i32, i32* @IdPos10
	%aux1974 = add i32 0, 1
	%aux1975 = add i32 %aux1973, %aux1974
	store i32 %aux1975, i32* @IdPos10
	br label %etiq946
	
	etiq946:
	;___Asignacion___
	%aux1977 = load i32, i32* @Pivot10
	%aux1978 = add i32 0, 1
	%aux1979 = sub i32 %aux1977, %aux1978
	store i32 %aux1979, i32* @Pivot10
	br label %etiq949
	
	etiq941:
	;___Asignacion___
	%aux1981 = load i32, i32* @IdPos10
	%aux1982 = add i32 0, 1
	%aux1983 = add i32 %aux1981, %aux1982
	store i32 %aux1983, i32* @IdPos10
	br label %etiq949
	
	etiq949:
	;___IfElse___
	%aux1985 = add i32 0, 100
	%aux1986 = load i32, i32* @Pivot10
	%aux1987 = sub i32 %aux1985, %aux1986
	%aux1988 = load i32, i32* @IdPos10
	%aux1989 = icmp eq i32 %aux1987, %aux1988
	br i1 %aux1989, label %etiq950, label %etiq951
	
	etiq950:
	;___Asignacion___
	%aux1991 = load i32, i32* @_Acum19
	%aux1992 = add i32 0, 1
	%aux1993 = add i32 %aux1991, %aux1992
	store i32 %aux1993, i32* @_Acum19
	br label %etiq954
	
	etiq954:
	;___Asignacion___
	%aux1995 = load i32, i32* @IdPos10
	%aux1996 = add i32 0, 1
	%aux1997 = add i32 %aux1995, %aux1996
	store i32 %aux1997, i32* @IdPos10
	br label %etiq956
	
	etiq956:
	;___Asignacion___
	%aux1999 = load i32, i32* @Pivot10
	%aux2000 = add i32 0, 1
	%aux2001 = sub i32 %aux1999, %aux2000
	store i32 %aux2001, i32* @Pivot10
	br label %etiq959
	
	etiq951:
	;___Asignacion___
	%aux2003 = load i32, i32* @IdPos10
	%aux2004 = add i32 0, 1
	%aux2005 = add i32 %aux2003, %aux2004
	store i32 %aux2005, i32* @IdPos10
	br label %etiq959
	
	etiq959:
	;___IfElse___
	%aux2007 = add i32 0, 100
	%aux2008 = load i32, i32* @Pivot10
	%aux2009 = sub i32 %aux2007, %aux2008
	%aux2010 = load i32, i32* @IdPos10
	%aux2011 = icmp eq i32 %aux2009, %aux2010
	br i1 %aux2011, label %etiq960, label %etiq961
	
	etiq960:
	;___Asignacion___
	%aux2013 = load i32, i32* @_Acum19
	%aux2014 = add i32 0, 1
	%aux2015 = add i32 %aux2013, %aux2014
	store i32 %aux2015, i32* @_Acum19
	br label %etiq964
	
	etiq964:
	;___Asignacion___
	%aux2017 = load i32, i32* @IdPos10
	%aux2018 = add i32 0, 1
	%aux2019 = add i32 %aux2017, %aux2018
	store i32 %aux2019, i32* @IdPos10
	br label %etiq966
	
	etiq966:
	;___Asignacion___
	%aux2021 = load i32, i32* @Pivot10
	%aux2022 = add i32 0, 1
	%aux2023 = sub i32 %aux2021, %aux2022
	store i32 %aux2023, i32* @Pivot10
	br label %etiq969
	
	etiq961:
	;___Asignacion___
	%aux2025 = load i32, i32* @IdPos10
	%aux2026 = add i32 0, 1
	%aux2027 = add i32 %aux2025, %aux2026
	store i32 %aux2027, i32* @IdPos10
	br label %etiq969
	
	etiq969:
	;___IfElse___
	%aux2029 = add i32 0, 100
	%aux2030 = load i32, i32* @Pivot10
	%aux2031 = sub i32 %aux2029, %aux2030
	%aux2032 = load i32, i32* @IdPos10
	%aux2033 = icmp eq i32 %aux2031, %aux2032
	br i1 %aux2033, label %etiq970, label %etiq971
	
	etiq970:
	;___Asignacion___
	%aux2035 = load i32, i32* @_Acum19
	%aux2036 = add i32 0, 1
	%aux2037 = add i32 %aux2035, %aux2036
	store i32 %aux2037, i32* @_Acum19
	br label %etiq974
	
	etiq974:
	;___Asignacion___
	%aux2039 = load i32, i32* @IdPos10
	%aux2040 = add i32 0, 1
	%aux2041 = add i32 %aux2039, %aux2040
	store i32 %aux2041, i32* @IdPos10
	br label %etiq976
	
	etiq976:
	;___Asignacion___
	%aux2043 = load i32, i32* @Pivot10
	%aux2044 = add i32 0, 1
	%aux2045 = sub i32 %aux2043, %aux2044
	store i32 %aux2045, i32* @Pivot10
	br label %etiq979
	
	etiq971:
	;___Asignacion___
	%aux2047 = load i32, i32* @IdPos10
	%aux2048 = add i32 0, 1
	%aux2049 = add i32 %aux2047, %aux2048
	store i32 %aux2049, i32* @IdPos10
	br label %etiq979
	
	etiq979:
	;___IfElse___
	%aux2051 = add i32 0, 100
	%aux2052 = load i32, i32* @Pivot10
	%aux2053 = sub i32 %aux2051, %aux2052
	%aux2054 = load i32, i32* @IdPos10
	%aux2055 = icmp eq i32 %aux2053, %aux2054
	br i1 %aux2055, label %etiq980, label %etiq981
	
	etiq980:
	;___Asignacion___
	%aux2057 = load i32, i32* @_Acum19
	%aux2058 = add i32 0, 1
	%aux2059 = add i32 %aux2057, %aux2058
	store i32 %aux2059, i32* @_Acum19
	br label %etiq984
	
	etiq984:
	;___Asignacion___
	%aux2061 = load i32, i32* @IdPos10
	%aux2062 = add i32 0, 1
	%aux2063 = add i32 %aux2061, %aux2062
	store i32 %aux2063, i32* @IdPos10
	br label %etiq986
	
	etiq986:
	;___Asignacion___
	%aux2065 = load i32, i32* @Pivot10
	%aux2066 = add i32 0, 1
	%aux2067 = sub i32 %aux2065, %aux2066
	store i32 %aux2067, i32* @Pivot10
	br label %etiq989
	
	etiq981:
	;___Asignacion___
	%aux2069 = load i32, i32* @IdPos10
	%aux2070 = add i32 0, 1
	%aux2071 = add i32 %aux2069, %aux2070
	store i32 %aux2071, i32* @IdPos10
	br label %etiq989
	
	etiq989:
	;___IfElse___
	%aux2073 = add i32 0, 100
	%aux2074 = load i32, i32* @Pivot10
	%aux2075 = sub i32 %aux2073, %aux2074
	%aux2076 = load i32, i32* @IdPos10
	%aux2077 = icmp eq i32 %aux2075, %aux2076
	br i1 %aux2077, label %etiq990, label %etiq991
	
	etiq990:
	;___Asignacion___
	%aux2079 = load i32, i32* @_Acum19
	%aux2080 = add i32 0, 1
	%aux2081 = add i32 %aux2079, %aux2080
	store i32 %aux2081, i32* @_Acum19
	br label %etiq994
	
	etiq994:
	;___Asignacion___
	%aux2083 = load i32, i32* @IdPos10
	%aux2084 = add i32 0, 1
	%aux2085 = add i32 %aux2083, %aux2084
	store i32 %aux2085, i32* @IdPos10
	br label %etiq996
	
	etiq996:
	;___Asignacion___
	%aux2087 = load i32, i32* @Pivot10
	%aux2088 = add i32 0, 1
	%aux2089 = sub i32 %aux2087, %aux2088
	store i32 %aux2089, i32* @Pivot10
	br label %etiq999
	
	etiq991:
	;___Asignacion___
	%aux2091 = load i32, i32* @IdPos10
	%aux2092 = add i32 0, 1
	%aux2093 = add i32 %aux2091, %aux2092
	store i32 %aux2093, i32* @IdPos10
	br label %etiq999
	
	etiq999:
	;___IfElse___
	%aux2095 = add i32 0, 100
	%aux2096 = load i32, i32* @Pivot10
	%aux2097 = sub i32 %aux2095, %aux2096
	%aux2098 = load i32, i32* @IdPos10
	%aux2099 = icmp eq i32 %aux2097, %aux2098
	br i1 %aux2099, label %etiq1000, label %etiq1001
	
	etiq1000:
	;___Asignacion___
	%aux2101 = load i32, i32* @_Acum19
	%aux2102 = add i32 0, 1
	%aux2103 = add i32 %aux2101, %aux2102
	store i32 %aux2103, i32* @_Acum19
	br label %etiq1004
	
	etiq1004:
	;___Asignacion___
	%aux2105 = load i32, i32* @IdPos10
	%aux2106 = add i32 0, 1
	%aux2107 = add i32 %aux2105, %aux2106
	store i32 %aux2107, i32* @IdPos10
	br label %etiq1006
	
	etiq1006:
	;___Asignacion___
	%aux2109 = load i32, i32* @Pivot10
	%aux2110 = add i32 0, 1
	%aux2111 = sub i32 %aux2109, %aux2110
	store i32 %aux2111, i32* @Pivot10
	br label %etiq1009
	
	etiq1001:
	;___Asignacion___
	%aux2113 = load i32, i32* @IdPos10
	%aux2114 = add i32 0, 1
	%aux2115 = add i32 %aux2113, %aux2114
	store i32 %aux2115, i32* @IdPos10
	br label %etiq1009
	
	etiq1009:
	;___IfElse___
	%aux2117 = add i32 0, 100
	%aux2118 = load i32, i32* @Pivot10
	%aux2119 = sub i32 %aux2117, %aux2118
	%aux2120 = load i32, i32* @IdPos10
	%aux2121 = icmp eq i32 %aux2119, %aux2120
	br i1 %aux2121, label %etiq1010, label %etiq1011
	
	etiq1010:
	;___Asignacion___
	%aux2123 = load i32, i32* @_Acum19
	%aux2124 = add i32 0, 1
	%aux2125 = add i32 %aux2123, %aux2124
	store i32 %aux2125, i32* @_Acum19
	br label %etiq1014
	
	etiq1014:
	;___Asignacion___
	%aux2127 = load i32, i32* @IdPos10
	%aux2128 = add i32 0, 1
	%aux2129 = add i32 %aux2127, %aux2128
	store i32 %aux2129, i32* @IdPos10
	br label %etiq1016
	
	etiq1016:
	;___Asignacion___
	%aux2131 = load i32, i32* @Pivot10
	%aux2132 = add i32 0, 1
	%aux2133 = sub i32 %aux2131, %aux2132
	store i32 %aux2133, i32* @Pivot10
	br label %etiq1019
	
	etiq1011:
	;___Asignacion___
	%aux2135 = load i32, i32* @IdPos10
	%aux2136 = add i32 0, 1
	%aux2137 = add i32 %aux2135, %aux2136
	store i32 %aux2137, i32* @IdPos10
	br label %etiq1019
	
	etiq1019:
	;___IfElse___
	%aux2139 = add i32 0, 100
	%aux2140 = load i32, i32* @Pivot10
	%aux2141 = sub i32 %aux2139, %aux2140
	%aux2142 = load i32, i32* @IdPos10
	%aux2143 = icmp eq i32 %aux2141, %aux2142
	br i1 %aux2143, label %etiq1020, label %etiq1021
	
	etiq1020:
	;___Asignacion___
	%aux2145 = load i32, i32* @_Acum19
	%aux2146 = add i32 0, 1
	%aux2147 = add i32 %aux2145, %aux2146
	store i32 %aux2147, i32* @_Acum19
	br label %etiq1024
	
	etiq1024:
	;___Asignacion___
	%aux2149 = load i32, i32* @IdPos10
	%aux2150 = add i32 0, 1
	%aux2151 = add i32 %aux2149, %aux2150
	store i32 %aux2151, i32* @IdPos10
	br label %etiq1026
	
	etiq1026:
	;___Asignacion___
	%aux2153 = load i32, i32* @Pivot10
	%aux2154 = add i32 0, 1
	%aux2155 = sub i32 %aux2153, %aux2154
	store i32 %aux2155, i32* @Pivot10
	br label %etiq1029
	
	etiq1021:
	;___Asignacion___
	%aux2157 = load i32, i32* @IdPos10
	%aux2158 = add i32 0, 1
	%aux2159 = add i32 %aux2157, %aux2158
	store i32 %aux2159, i32* @IdPos10
	br label %etiq1029
	
	etiq1029:
	;___IfElse___
	%aux2161 = add i32 0, 100
	%aux2162 = load i32, i32* @Pivot10
	%aux2163 = sub i32 %aux2161, %aux2162
	%aux2164 = load i32, i32* @IdPos10
	%aux2165 = icmp eq i32 %aux2163, %aux2164
	br i1 %aux2165, label %etiq1030, label %etiq1031
	
	etiq1030:
	;___Asignacion___
	%aux2167 = load i32, i32* @_Acum19
	%aux2168 = add i32 0, 1
	%aux2169 = add i32 %aux2167, %aux2168
	store i32 %aux2169, i32* @_Acum19
	br label %etiq1034
	
	etiq1034:
	;___Asignacion___
	%aux2171 = load i32, i32* @IdPos10
	%aux2172 = add i32 0, 1
	%aux2173 = add i32 %aux2171, %aux2172
	store i32 %aux2173, i32* @IdPos10
	br label %etiq1036
	
	etiq1036:
	;___Asignacion___
	%aux2175 = load i32, i32* @Pivot10
	%aux2176 = add i32 0, 1
	%aux2177 = sub i32 %aux2175, %aux2176
	store i32 %aux2177, i32* @Pivot10
	br label %etiq1039
	
	etiq1031:
	;___Asignacion___
	%aux2179 = load i32, i32* @IdPos10
	%aux2180 = add i32 0, 1
	%aux2181 = add i32 %aux2179, %aux2180
	store i32 %aux2181, i32* @IdPos10
	br label %etiq1039
	
	etiq1039:
	;___IfElse___
	%aux2183 = add i32 0, 100
	%aux2184 = load i32, i32* @Pivot10
	%aux2185 = sub i32 %aux2183, %aux2184
	%aux2186 = load i32, i32* @IdPos10
	%aux2187 = icmp eq i32 %aux2185, %aux2186
	br i1 %aux2187, label %etiq1040, label %etiq1041
	
	etiq1040:
	;___Asignacion___
	%aux2189 = load i32, i32* @_Acum19
	%aux2190 = add i32 0, 1
	%aux2191 = add i32 %aux2189, %aux2190
	store i32 %aux2191, i32* @_Acum19
	br label %etiq1044
	
	etiq1044:
	;___Asignacion___
	%aux2193 = load i32, i32* @IdPos10
	%aux2194 = add i32 0, 1
	%aux2195 = add i32 %aux2193, %aux2194
	store i32 %aux2195, i32* @IdPos10
	br label %etiq1046
	
	etiq1046:
	;___Asignacion___
	%aux2197 = load i32, i32* @Pivot10
	%aux2198 = add i32 0, 1
	%aux2199 = sub i32 %aux2197, %aux2198
	store i32 %aux2199, i32* @Pivot10
	br label %etiq1049
	
	etiq1041:
	;___Asignacion___
	%aux2201 = load i32, i32* @IdPos10
	%aux2202 = add i32 0, 1
	%aux2203 = add i32 %aux2201, %aux2202
	store i32 %aux2203, i32* @IdPos10
	br label %etiq1049
	
	etiq1049:
	;___IfElse___
	%aux2205 = add i32 0, 100
	%aux2206 = load i32, i32* @Pivot10
	%aux2207 = sub i32 %aux2205, %aux2206
	%aux2208 = load i32, i32* @IdPos10
	%aux2209 = icmp eq i32 %aux2207, %aux2208
	br i1 %aux2209, label %etiq1050, label %etiq1051
	
	etiq1050:
	;___Asignacion___
	%aux2211 = load i32, i32* @_Acum19
	%aux2212 = add i32 0, 1
	%aux2213 = add i32 %aux2211, %aux2212
	store i32 %aux2213, i32* @_Acum19
	br label %etiq1054
	
	etiq1054:
	;___Asignacion___
	%aux2215 = load i32, i32* @IdPos10
	%aux2216 = add i32 0, 1
	%aux2217 = add i32 %aux2215, %aux2216
	store i32 %aux2217, i32* @IdPos10
	br label %etiq1056
	
	etiq1056:
	;___Asignacion___
	%aux2219 = load i32, i32* @Pivot10
	%aux2220 = add i32 0, 1
	%aux2221 = sub i32 %aux2219, %aux2220
	store i32 %aux2221, i32* @Pivot10
	br label %etiq1059
	
	etiq1051:
	;___Asignacion___
	%aux2223 = load i32, i32* @IdPos10
	%aux2224 = add i32 0, 1
	%aux2225 = add i32 %aux2223, %aux2224
	store i32 %aux2225, i32* @IdPos10
	br label %etiq1059
	
	etiq1059:
	;___IfElse___
	%aux2227 = add i32 0, 100
	%aux2228 = load i32, i32* @Pivot10
	%aux2229 = sub i32 %aux2227, %aux2228
	%aux2230 = load i32, i32* @IdPos10
	%aux2231 = icmp eq i32 %aux2229, %aux2230
	br i1 %aux2231, label %etiq1060, label %etiq1061
	
	etiq1060:
	;___Asignacion___
	%aux2233 = load i32, i32* @_Acum19
	%aux2234 = add i32 0, 1
	%aux2235 = add i32 %aux2233, %aux2234
	store i32 %aux2235, i32* @_Acum19
	br label %etiq1064
	
	etiq1064:
	;___Asignacion___
	%aux2237 = load i32, i32* @IdPos10
	%aux2238 = add i32 0, 1
	%aux2239 = add i32 %aux2237, %aux2238
	store i32 %aux2239, i32* @IdPos10
	br label %etiq1066
	
	etiq1066:
	;___Asignacion___
	%aux2241 = load i32, i32* @Pivot10
	%aux2242 = add i32 0, 1
	%aux2243 = sub i32 %aux2241, %aux2242
	store i32 %aux2243, i32* @Pivot10
	br label %etiq1069
	
	etiq1061:
	;___Asignacion___
	%aux2245 = load i32, i32* @IdPos10
	%aux2246 = add i32 0, 1
	%aux2247 = add i32 %aux2245, %aux2246
	store i32 %aux2247, i32* @IdPos10
	br label %etiq1069
	
	etiq1069:
	;___IfElse___
	%aux2249 = add i32 0, 100
	%aux2250 = load i32, i32* @Pivot10
	%aux2251 = sub i32 %aux2249, %aux2250
	%aux2252 = load i32, i32* @IdPos10
	%aux2253 = icmp eq i32 %aux2251, %aux2252
	br i1 %aux2253, label %etiq1070, label %etiq1071
	
	etiq1070:
	;___Asignacion___
	%aux2255 = load i32, i32* @_Acum19
	%aux2256 = add i32 0, 1
	%aux2257 = add i32 %aux2255, %aux2256
	store i32 %aux2257, i32* @_Acum19
	br label %etiq1074
	
	etiq1074:
	;___Asignacion___
	%aux2259 = load i32, i32* @IdPos10
	%aux2260 = add i32 0, 1
	%aux2261 = add i32 %aux2259, %aux2260
	store i32 %aux2261, i32* @IdPos10
	br label %etiq1076
	
	etiq1076:
	;___Asignacion___
	%aux2263 = load i32, i32* @Pivot10
	%aux2264 = add i32 0, 1
	%aux2265 = sub i32 %aux2263, %aux2264
	store i32 %aux2265, i32* @Pivot10
	br label %etiq1079
	
	etiq1071:
	;___Asignacion___
	%aux2267 = load i32, i32* @IdPos10
	%aux2268 = add i32 0, 1
	%aux2269 = add i32 %aux2267, %aux2268
	store i32 %aux2269, i32* @IdPos10
	br label %etiq1079
	
	etiq1079:
	;___IfElse___
	%aux2271 = add i32 0, 100
	%aux2272 = load i32, i32* @Pivot10
	%aux2273 = sub i32 %aux2271, %aux2272
	%aux2274 = load i32, i32* @IdPos10
	%aux2275 = icmp eq i32 %aux2273, %aux2274
	br i1 %aux2275, label %etiq1080, label %etiq1081
	
	etiq1080:
	;___Asignacion___
	%aux2277 = load i32, i32* @_Acum19
	%aux2278 = add i32 0, 1
	%aux2279 = add i32 %aux2277, %aux2278
	store i32 %aux2279, i32* @_Acum19
	br label %etiq1084
	
	etiq1084:
	;___Asignacion___
	%aux2281 = load i32, i32* @IdPos10
	%aux2282 = add i32 0, 1
	%aux2283 = add i32 %aux2281, %aux2282
	store i32 %aux2283, i32* @IdPos10
	br label %etiq1086
	
	etiq1086:
	;___Asignacion___
	%aux2285 = load i32, i32* @Pivot10
	%aux2286 = add i32 0, 1
	%aux2287 = sub i32 %aux2285, %aux2286
	store i32 %aux2287, i32* @Pivot10
	br label %etiq1089
	
	etiq1081:
	;___Asignacion___
	%aux2289 = load i32, i32* @IdPos10
	%aux2290 = add i32 0, 1
	%aux2291 = add i32 %aux2289, %aux2290
	store i32 %aux2291, i32* @IdPos10
	br label %etiq1089
	
	etiq1089:
	;___IfElse___
	%aux2293 = add i32 0, 100
	%aux2294 = load i32, i32* @Pivot10
	%aux2295 = sub i32 %aux2293, %aux2294
	%aux2296 = load i32, i32* @IdPos10
	%aux2297 = icmp eq i32 %aux2295, %aux2296
	br i1 %aux2297, label %etiq1090, label %etiq1091
	
	etiq1090:
	;___Asignacion___
	%aux2299 = load i32, i32* @_Acum19
	%aux2300 = add i32 0, 1
	%aux2301 = add i32 %aux2299, %aux2300
	store i32 %aux2301, i32* @_Acum19
	br label %etiq1094
	
	etiq1094:
	;___Asignacion___
	%aux2303 = load i32, i32* @IdPos10
	%aux2304 = add i32 0, 1
	%aux2305 = add i32 %aux2303, %aux2304
	store i32 %aux2305, i32* @IdPos10
	br label %etiq1096
	
	etiq1096:
	;___Asignacion___
	%aux2307 = load i32, i32* @Pivot10
	%aux2308 = add i32 0, 1
	%aux2309 = sub i32 %aux2307, %aux2308
	store i32 %aux2309, i32* @Pivot10
	br label %etiq1099
	
	etiq1091:
	;___Asignacion___
	%aux2311 = load i32, i32* @IdPos10
	%aux2312 = add i32 0, 1
	%aux2313 = add i32 %aux2311, %aux2312
	store i32 %aux2313, i32* @IdPos10
	br label %etiq1099
	
	etiq1099:
	;___IfElse___
	%aux2315 = add i32 0, 100
	%aux2316 = load i32, i32* @Pivot10
	%aux2317 = sub i32 %aux2315, %aux2316
	%aux2318 = load i32, i32* @IdPos10
	%aux2319 = icmp eq i32 %aux2317, %aux2318
	br i1 %aux2319, label %etiq1100, label %etiq1101
	
	etiq1100:
	;___Asignacion___
	%aux2321 = load i32, i32* @_Acum19
	%aux2322 = add i32 0, 1
	%aux2323 = add i32 %aux2321, %aux2322
	store i32 %aux2323, i32* @_Acum19
	br label %etiq1104
	
	etiq1104:
	;___Asignacion___
	%aux2325 = load i32, i32* @IdPos10
	%aux2326 = add i32 0, 1
	%aux2327 = add i32 %aux2325, %aux2326
	store i32 %aux2327, i32* @IdPos10
	br label %etiq1106
	
	etiq1106:
	;___Asignacion___
	%aux2329 = load i32, i32* @Pivot10
	%aux2330 = add i32 0, 1
	%aux2331 = sub i32 %aux2329, %aux2330
	store i32 %aux2331, i32* @Pivot10
	br label %etiq1109
	
	etiq1101:
	;___Asignacion___
	%aux2333 = load i32, i32* @IdPos10
	%aux2334 = add i32 0, 1
	%aux2335 = add i32 %aux2333, %aux2334
	store i32 %aux2335, i32* @IdPos10
	br label %etiq1109
	
	etiq1109:
	;___IfElse___
	%aux2337 = add i32 0, 100
	%aux2338 = load i32, i32* @Pivot10
	%aux2339 = sub i32 %aux2337, %aux2338
	%aux2340 = load i32, i32* @IdPos10
	%aux2341 = icmp eq i32 %aux2339, %aux2340
	br i1 %aux2341, label %etiq1110, label %etiq1111
	
	etiq1110:
	;___Asignacion___
	%aux2343 = load i32, i32* @_Acum19
	%aux2344 = add i32 0, 1
	%aux2345 = add i32 %aux2343, %aux2344
	store i32 %aux2345, i32* @_Acum19
	br label %etiq1114
	
	etiq1114:
	;___Asignacion___
	%aux2347 = load i32, i32* @IdPos10
	%aux2348 = add i32 0, 1
	%aux2349 = add i32 %aux2347, %aux2348
	store i32 %aux2349, i32* @IdPos10
	br label %etiq1116
	
	etiq1116:
	;___Asignacion___
	%aux2351 = load i32, i32* @Pivot10
	%aux2352 = add i32 0, 1
	%aux2353 = sub i32 %aux2351, %aux2352
	store i32 %aux2353, i32* @Pivot10
	br label %etiq1119
	
	etiq1111:
	;___Asignacion___
	%aux2355 = load i32, i32* @IdPos10
	%aux2356 = add i32 0, 1
	%aux2357 = add i32 %aux2355, %aux2356
	store i32 %aux2357, i32* @IdPos10
	br label %etiq1119
	
	etiq1119:
	;___IfElse___
	%aux2359 = add i32 0, 100
	%aux2360 = load i32, i32* @Pivot10
	%aux2361 = sub i32 %aux2359, %aux2360
	%aux2362 = load i32, i32* @IdPos10
	%aux2363 = icmp eq i32 %aux2361, %aux2362
	br i1 %aux2363, label %etiq1120, label %etiq1121
	
	etiq1120:
	;___Asignacion___
	%aux2365 = load i32, i32* @_Acum19
	%aux2366 = add i32 0, 1
	%aux2367 = add i32 %aux2365, %aux2366
	store i32 %aux2367, i32* @_Acum19
	br label %etiq1124
	
	etiq1124:
	;___Asignacion___
	%aux2369 = load i32, i32* @IdPos10
	%aux2370 = add i32 0, 1
	%aux2371 = add i32 %aux2369, %aux2370
	store i32 %aux2371, i32* @IdPos10
	br label %etiq1126
	
	etiq1126:
	;___Asignacion___
	%aux2373 = load i32, i32* @Pivot10
	%aux2374 = add i32 0, 1
	%aux2375 = sub i32 %aux2373, %aux2374
	store i32 %aux2375, i32* @Pivot10
	br label %etiq1129
	
	etiq1121:
	;___Asignacion___
	%aux2377 = load i32, i32* @IdPos10
	%aux2378 = add i32 0, 1
	%aux2379 = add i32 %aux2377, %aux2378
	store i32 %aux2379, i32* @IdPos10
	br label %etiq1129
	
	etiq1129:
	;___IfElse___
	%aux2381 = add i32 0, 100
	%aux2382 = load i32, i32* @Pivot10
	%aux2383 = sub i32 %aux2381, %aux2382
	%aux2384 = load i32, i32* @IdPos10
	%aux2385 = icmp eq i32 %aux2383, %aux2384
	br i1 %aux2385, label %etiq1130, label %etiq1131
	
	etiq1130:
	;___Asignacion___
	%aux2387 = load i32, i32* @_Acum19
	%aux2388 = add i32 0, 1
	%aux2389 = add i32 %aux2387, %aux2388
	store i32 %aux2389, i32* @_Acum19
	br label %etiq1134
	
	etiq1134:
	;___Asignacion___
	%aux2391 = load i32, i32* @IdPos10
	%aux2392 = add i32 0, 1
	%aux2393 = add i32 %aux2391, %aux2392
	store i32 %aux2393, i32* @IdPos10
	br label %etiq1136
	
	etiq1136:
	;___Asignacion___
	%aux2395 = load i32, i32* @Pivot10
	%aux2396 = add i32 0, 1
	%aux2397 = sub i32 %aux2395, %aux2396
	store i32 %aux2397, i32* @Pivot10
	br label %etiq1139
	
	etiq1131:
	;___Asignacion___
	%aux2399 = load i32, i32* @IdPos10
	%aux2400 = add i32 0, 1
	%aux2401 = add i32 %aux2399, %aux2400
	store i32 %aux2401, i32* @IdPos10
	br label %etiq1139
	
	etiq1139:
	;___IfElse___
	%aux2403 = add i32 0, 100
	%aux2404 = load i32, i32* @Pivot10
	%aux2405 = sub i32 %aux2403, %aux2404
	%aux2406 = load i32, i32* @IdPos10
	%aux2407 = icmp eq i32 %aux2405, %aux2406
	br i1 %aux2407, label %etiq1140, label %etiq1141
	
	etiq1140:
	;___Asignacion___
	%aux2409 = load i32, i32* @_Acum19
	%aux2410 = add i32 0, 1
	%aux2411 = add i32 %aux2409, %aux2410
	store i32 %aux2411, i32* @_Acum19
	br label %etiq1144
	
	etiq1144:
	;___Asignacion___
	%aux2413 = load i32, i32* @IdPos10
	%aux2414 = add i32 0, 1
	%aux2415 = add i32 %aux2413, %aux2414
	store i32 %aux2415, i32* @IdPos10
	br label %etiq1146
	
	etiq1146:
	;___Asignacion___
	%aux2417 = load i32, i32* @Pivot10
	%aux2418 = add i32 0, 1
	%aux2419 = sub i32 %aux2417, %aux2418
	store i32 %aux2419, i32* @Pivot10
	br label %etiq1149
	
	etiq1141:
	;___Asignacion___
	%aux2421 = load i32, i32* @IdPos10
	%aux2422 = add i32 0, 1
	%aux2423 = add i32 %aux2421, %aux2422
	store i32 %aux2423, i32* @IdPos10
	br label %etiq1149
	
	etiq1149:
	;___IfElse___
	%aux2425 = add i32 0, 100
	%aux2426 = load i32, i32* @Pivot10
	%aux2427 = sub i32 %aux2425, %aux2426
	%aux2428 = load i32, i32* @IdPos10
	%aux2429 = icmp eq i32 %aux2427, %aux2428
	br i1 %aux2429, label %etiq1150, label %etiq1151
	
	etiq1150:
	;___Asignacion___
	%aux2431 = load i32, i32* @_Acum19
	%aux2432 = add i32 0, 1
	%aux2433 = add i32 %aux2431, %aux2432
	store i32 %aux2433, i32* @_Acum19
	br label %etiq1154
	
	etiq1154:
	;___Asignacion___
	%aux2435 = load i32, i32* @IdPos10
	%aux2436 = add i32 0, 1
	%aux2437 = add i32 %aux2435, %aux2436
	store i32 %aux2437, i32* @IdPos10
	br label %etiq1156
	
	etiq1156:
	;___Asignacion___
	%aux2439 = load i32, i32* @Pivot10
	%aux2440 = add i32 0, 1
	%aux2441 = sub i32 %aux2439, %aux2440
	store i32 %aux2441, i32* @Pivot10
	br label %etiq1159
	
	etiq1151:
	;___Asignacion___
	%aux2443 = load i32, i32* @IdPos10
	%aux2444 = add i32 0, 1
	%aux2445 = add i32 %aux2443, %aux2444
	store i32 %aux2445, i32* @IdPos10
	br label %etiq1159
	
	etiq1159:
	;___IfElse___
	%aux2447 = add i32 0, 100
	%aux2448 = load i32, i32* @Pivot10
	%aux2449 = sub i32 %aux2447, %aux2448
	%aux2450 = load i32, i32* @IdPos10
	%aux2451 = icmp eq i32 %aux2449, %aux2450
	br i1 %aux2451, label %etiq1160, label %etiq1161
	
	etiq1160:
	;___Asignacion___
	%aux2453 = load i32, i32* @_Acum19
	%aux2454 = add i32 0, 1
	%aux2455 = add i32 %aux2453, %aux2454
	store i32 %aux2455, i32* @_Acum19
	br label %etiq1164
	
	etiq1164:
	;___Asignacion___
	%aux2457 = load i32, i32* @IdPos10
	%aux2458 = add i32 0, 1
	%aux2459 = add i32 %aux2457, %aux2458
	store i32 %aux2459, i32* @IdPos10
	br label %etiq1166
	
	etiq1166:
	;___Asignacion___
	%aux2461 = load i32, i32* @Pivot10
	%aux2462 = add i32 0, 1
	%aux2463 = sub i32 %aux2461, %aux2462
	store i32 %aux2463, i32* @Pivot10
	br label %etiq1169
	
	etiq1161:
	;___Asignacion___
	%aux2465 = load i32, i32* @IdPos10
	%aux2466 = add i32 0, 1
	%aux2467 = add i32 %aux2465, %aux2466
	store i32 %aux2467, i32* @IdPos10
	br label %etiq1169
	
	etiq1169:
	;___IfElse___
	%aux2469 = add i32 0, 100
	%aux2470 = load i32, i32* @Pivot10
	%aux2471 = sub i32 %aux2469, %aux2470
	%aux2472 = load i32, i32* @IdPos10
	%aux2473 = icmp eq i32 %aux2471, %aux2472
	br i1 %aux2473, label %etiq1170, label %etiq1171
	
	etiq1170:
	;___Asignacion___
	%aux2475 = load i32, i32* @_Acum19
	%aux2476 = add i32 0, 1
	%aux2477 = add i32 %aux2475, %aux2476
	store i32 %aux2477, i32* @_Acum19
	br label %etiq1174
	
	etiq1174:
	;___Asignacion___
	%aux2479 = load i32, i32* @IdPos10
	%aux2480 = add i32 0, 1
	%aux2481 = add i32 %aux2479, %aux2480
	store i32 %aux2481, i32* @IdPos10
	br label %etiq1176
	
	etiq1176:
	;___Asignacion___
	%aux2483 = load i32, i32* @Pivot10
	%aux2484 = add i32 0, 1
	%aux2485 = sub i32 %aux2483, %aux2484
	store i32 %aux2485, i32* @Pivot10
	br label %etiq1179
	
	etiq1171:
	;___Asignacion___
	%aux2487 = load i32, i32* @IdPos10
	%aux2488 = add i32 0, 1
	%aux2489 = add i32 %aux2487, %aux2488
	store i32 %aux2489, i32* @IdPos10
	br label %etiq1179
	
	etiq1179:
	;___IfElse___
	%aux2491 = add i32 0, 100
	%aux2492 = load i32, i32* @Pivot10
	%aux2493 = sub i32 %aux2491, %aux2492
	%aux2494 = load i32, i32* @IdPos10
	%aux2495 = icmp eq i32 %aux2493, %aux2494
	br i1 %aux2495, label %etiq1180, label %etiq1181
	
	etiq1180:
	;___Asignacion___
	%aux2497 = load i32, i32* @_Acum19
	%aux2498 = add i32 0, 1
	%aux2499 = add i32 %aux2497, %aux2498
	store i32 %aux2499, i32* @_Acum19
	br label %etiq1184
	
	etiq1184:
	;___Asignacion___
	%aux2501 = load i32, i32* @IdPos10
	%aux2502 = add i32 0, 1
	%aux2503 = add i32 %aux2501, %aux2502
	store i32 %aux2503, i32* @IdPos10
	br label %etiq1186
	
	etiq1186:
	;___Asignacion___
	%aux2505 = load i32, i32* @Pivot10
	%aux2506 = add i32 0, 1
	%aux2507 = sub i32 %aux2505, %aux2506
	store i32 %aux2507, i32* @Pivot10
	br label %etiq1189
	
	etiq1181:
	;___Asignacion___
	%aux2509 = load i32, i32* @IdPos10
	%aux2510 = add i32 0, 1
	%aux2511 = add i32 %aux2509, %aux2510
	store i32 %aux2511, i32* @IdPos10
	br label %etiq1189
	
	etiq1189:
	;___IfElse___
	%aux2513 = add i32 0, 100
	%aux2514 = load i32, i32* @Pivot10
	%aux2515 = sub i32 %aux2513, %aux2514
	%aux2516 = load i32, i32* @IdPos10
	%aux2517 = icmp eq i32 %aux2515, %aux2516
	br i1 %aux2517, label %etiq1190, label %etiq1191
	
	etiq1190:
	;___Asignacion___
	%aux2519 = load i32, i32* @_Acum19
	%aux2520 = add i32 0, 1
	%aux2521 = add i32 %aux2519, %aux2520
	store i32 %aux2521, i32* @_Acum19
	br label %etiq1194
	
	etiq1194:
	;___Asignacion___
	%aux2523 = load i32, i32* @IdPos10
	%aux2524 = add i32 0, 1
	%aux2525 = add i32 %aux2523, %aux2524
	store i32 %aux2525, i32* @IdPos10
	br label %etiq1196
	
	etiq1196:
	;___Asignacion___
	%aux2527 = load i32, i32* @Pivot10
	%aux2528 = add i32 0, 1
	%aux2529 = sub i32 %aux2527, %aux2528
	store i32 %aux2529, i32* @Pivot10
	br label %etiq1199
	
	etiq1191:
	;___Asignacion___
	%aux2531 = load i32, i32* @IdPos10
	%aux2532 = add i32 0, 1
	%aux2533 = add i32 %aux2531, %aux2532
	store i32 %aux2533, i32* @IdPos10
	br label %etiq1199
	
	etiq1199:
	;___IfElse___
	%aux2535 = add i32 0, 100
	%aux2536 = load i32, i32* @Pivot10
	%aux2537 = sub i32 %aux2535, %aux2536
	%aux2538 = load i32, i32* @IdPos10
	%aux2539 = icmp eq i32 %aux2537, %aux2538
	br i1 %aux2539, label %etiq1200, label %etiq1201
	
	etiq1200:
	;___Asignacion___
	%aux2541 = load i32, i32* @_Acum19
	%aux2542 = add i32 0, 1
	%aux2543 = add i32 %aux2541, %aux2542
	store i32 %aux2543, i32* @_Acum19
	br label %etiq1204
	
	etiq1204:
	;___Asignacion___
	%aux2545 = load i32, i32* @IdPos10
	%aux2546 = add i32 0, 1
	%aux2547 = add i32 %aux2545, %aux2546
	store i32 %aux2547, i32* @IdPos10
	br label %etiq1206
	
	etiq1206:
	;___Asignacion___
	%aux2549 = load i32, i32* @Pivot10
	%aux2550 = add i32 0, 1
	%aux2551 = sub i32 %aux2549, %aux2550
	store i32 %aux2551, i32* @Pivot10
	br label %etiq1209
	
	etiq1201:
	;___Asignacion___
	%aux2553 = load i32, i32* @IdPos10
	%aux2554 = add i32 0, 1
	%aux2555 = add i32 %aux2553, %aux2554
	store i32 %aux2555, i32* @IdPos10
	br label %etiq1209
	
	etiq1209:
	;___IfElse___
	%aux2557 = add i32 0, 100
	%aux2558 = load i32, i32* @Pivot10
	%aux2559 = sub i32 %aux2557, %aux2558
	%aux2560 = load i32, i32* @IdPos10
	%aux2561 = icmp eq i32 %aux2559, %aux2560
	br i1 %aux2561, label %etiq1210, label %etiq1211
	
	etiq1210:
	;___Asignacion___
	%aux2563 = load i32, i32* @_Acum19
	br label %etiq1213
	
	etiq1213:
	;___Asignacion___
	%aux2565 = add i32 0, 4
	store i32 %aux2565, i32* @Pivot5
	br label %etiq1214
	
	etiq1214:
	;___IfElse___
	%aux2567 = load i32, i32* @Pivot5
	%aux2568 = add i32 0, 1
	%aux2569 = icmp sge i32 %aux2567, %aux2568
	br i1 %aux2569, label %etiq1216, label %etiq1217
	
	etiq1216:
	;___IfElse___
	%aux2571 = add i32 0, 4
	%aux2572 = load i32, i32* @Pivot5
	%aux2573 = icmp sge i32 %aux2571, %aux2572
	br i1 %aux2573, label %etiq1219, label %etiq1220
	
	etiq1219:
	;___IfElse___
	%aux2575 = add i32 0, 4
	%aux2576 = add i32 0, 0
	%aux2577 = icmp sgt i32 %aux2575, %aux2576
	br i1 %aux2577, label %etiq1223, label %etiq1224
	
	etiq1223:
	;___IfElse___
	%aux2579 = add i32 0, 4
	%aux2580 = load i32, i32* @Pivot5
	%aux2581 = sub i32 %aux2579, %aux2580
	%aux2582 = load i32, i32* @IdPos5
	%aux2583 = icmp eq i32 %aux2581, %aux2582
	br i1 %aux2583, label %etiq1226, label %etiq1227
	
	etiq1226:
	;___Asignacion___
	%aux2585 = load i32, i32* @_Acum9
	%aux2586 = add i32 0, 1
	%aux2587 = add i32 %aux2585, %aux2586
	store i32 %aux2587, i32* @_Acum9
	br label %etiq1230
	
	etiq1230:
	;___Asignacion___
	%aux2589 = load i32, i32* @IdPos5
	%aux2590 = add i32 0, 1
	%aux2591 = add i32 %aux2589, %aux2590
	store i32 %aux2591, i32* @IdPos5
	br label %etiq1232
	
	etiq1232:
	;___Asignacion___
	%aux2593 = load i32, i32* @Pivot5
	%aux2594 = add i32 0, 1
	%aux2595 = sub i32 %aux2593, %aux2594
	store i32 %aux2595, i32* @Pivot5
	br label %etiq1235
	
	etiq1227:
	;___Asignacion___
	%aux2597 = load i32, i32* @IdPos5
	%aux2598 = add i32 0, 1
	%aux2599 = add i32 %aux2597, %aux2598
	store i32 %aux2599, i32* @IdPos5
	br label %etiq1235
	
	etiq1235:
	;___IfElse___
	%aux2601 = add i32 0, 4
	%aux2602 = load i32, i32* @Pivot5
	%aux2603 = sub i32 %aux2601, %aux2602
	%aux2604 = load i32, i32* @IdPos5
	%aux2605 = icmp eq i32 %aux2603, %aux2604
	br i1 %aux2605, label %etiq1236, label %etiq1237
	
	etiq1236:
	;___Asignacion___
	%aux2607 = load i32, i32* @_Acum9
	%aux2608 = add i32 0, 2
	%aux2609 = add i32 %aux2607, %aux2608
	store i32 %aux2609, i32* @_Acum9
	br label %etiq1240
	
	etiq1240:
	;___Asignacion___
	%aux2611 = load i32, i32* @IdPos5
	%aux2612 = add i32 0, 1
	%aux2613 = add i32 %aux2611, %aux2612
	store i32 %aux2613, i32* @IdPos5
	br label %etiq1242
	
	etiq1242:
	;___Asignacion___
	%aux2615 = load i32, i32* @Pivot5
	%aux2616 = add i32 0, 1
	%aux2617 = sub i32 %aux2615, %aux2616
	store i32 %aux2617, i32* @Pivot5
	br label %etiq1245
	
	etiq1237:
	;___Asignacion___
	%aux2619 = load i32, i32* @IdPos5
	%aux2620 = add i32 0, 1
	%aux2621 = add i32 %aux2619, %aux2620
	store i32 %aux2621, i32* @IdPos5
	br label %etiq1245
	
	etiq1245:
	;___IfElse___
	%aux2623 = add i32 0, 4
	%aux2624 = load i32, i32* @Pivot5
	%aux2625 = sub i32 %aux2623, %aux2624
	%aux2626 = load i32, i32* @IdPos5
	%aux2627 = icmp eq i32 %aux2625, %aux2626
	br i1 %aux2627, label %etiq1246, label %etiq1247
	
	etiq1246:
	;___Asignacion___
	%aux2629 = load i32, i32* @_Acum9
	%aux2630 = add i32 0, 3
	%aux2631 = add i32 %aux2629, %aux2630
	store i32 %aux2631, i32* @_Acum9
	br label %etiq1250
	
	etiq1250:
	;___Asignacion___
	%aux2633 = load i32, i32* @IdPos5
	%aux2634 = add i32 0, 1
	%aux2635 = add i32 %aux2633, %aux2634
	store i32 %aux2635, i32* @IdPos5
	br label %etiq1252
	
	etiq1252:
	;___Asignacion___
	%aux2637 = load i32, i32* @Pivot5
	%aux2638 = add i32 0, 1
	%aux2639 = sub i32 %aux2637, %aux2638
	store i32 %aux2639, i32* @Pivot5
	br label %etiq1265
	
	etiq1247:
	;___Asignacion___
	%aux2641 = load i32, i32* @IdPos5
	%aux2642 = add i32 0, 1
	%aux2643 = add i32 %aux2641, %aux2642
	store i32 %aux2643, i32* @IdPos5
	br label %etiq1255
	
	etiq1255:
	;___IfElse___
	%aux2645 = add i32 0, 4
	%aux2646 = load i32, i32* @Pivot5
	%aux2647 = sub i32 %aux2645, %aux2646
	%aux2648 = load i32, i32* @IdPos5
	%aux2649 = icmp eq i32 %aux2647, %aux2648
	br i1 %aux2649, label %etiq1256, label %etiq1257
	
	etiq1256:
	;___Asignacion___
	%aux2651 = load i32, i32* @_Acum9
	%aux2652 = add i32 0, 4
	%aux2653 = add i32 %aux2651, %aux2652
	store i32 %aux2653, i32* @_Acum9
	br label %etiq1260
	
	etiq1260:
	;___Asignacion___
	%aux2655 = load i32, i32* @IdPos5
	%aux2656 = add i32 0, 1
	%aux2657 = add i32 %aux2655, %aux2656
	store i32 %aux2657, i32* @IdPos5
	br label %etiq1262
	
	etiq1262:
	;___Asignacion___
	%aux2659 = load i32, i32* @Pivot5
	%aux2660 = add i32 0, 1
	%aux2661 = sub i32 %aux2659, %aux2660
	store i32 %aux2661, i32* @Pivot5
	br label %etiq1265
	
	etiq1257:
	;___Asignacion___
	%aux2663 = load i32, i32* @IdPos5
	%aux2664 = add i32 0, 1
	%aux2665 = add i32 %aux2663, %aux2664
	store i32 %aux2665, i32* @IdPos5
	br label %etiq1265
	
	etiq1224:
	;___DisplayCadenaCaracteres___
	%aux2666 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1265
	
	etiq1220:
	;___DisplayCadenaCaracteres___
	%aux2667 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1265
	
	etiq1217:
	;___DisplayCadenaCaracteres___
	%aux2668 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1265
	
	etiq1265:
	;___Asignacion___
	%aux2670 = load i32, i32* @_Acum9
	store i32 %aux2670, i32* @_Acum10
	br label %etiq1266
	
	etiq1266:
	;___Asignacion___
	%aux2672 = add i32 0, 3
	store i32 %aux2672, i32* @Pivot4
	br label %etiq1267
	
	etiq1267:
	;___IfElse___
	%aux2674 = load i32, i32* @Pivot4
	%aux2675 = add i32 0, 1
	%aux2676 = icmp sge i32 %aux2674, %aux2675
	br i1 %aux2676, label %etiq1269, label %etiq1270
	
	etiq1269:
	;___IfElse___
	%aux2678 = add i32 0, 3
	%aux2679 = load i32, i32* @Pivot4
	%aux2680 = icmp sge i32 %aux2678, %aux2679
	br i1 %aux2680, label %etiq1272, label %etiq1273
	
	etiq1272:
	;___IfElse___
	%aux2682 = add i32 0, 3
	%aux2683 = add i32 0, 0
	%aux2684 = icmp sgt i32 %aux2682, %aux2683
	br i1 %aux2684, label %etiq1276, label %etiq1277
	
	etiq1276:
	;___IfElse___
	%aux2686 = add i32 0, 3
	%aux2687 = load i32, i32* @Pivot4
	%aux2688 = sub i32 %aux2686, %aux2687
	%aux2689 = load i32, i32* @IdPos4
	%aux2690 = icmp eq i32 %aux2688, %aux2689
	br i1 %aux2690, label %etiq1279, label %etiq1280
	
	etiq1279:
	;___Asignacion___
	%aux2692 = load i32, i32* @_Acum7
	%aux2693 = add i32 0, 1
	%aux2694 = add i32 %aux2692, %aux2693
	store i32 %aux2694, i32* @_Acum7
	br label %etiq1283
	
	etiq1283:
	;___Asignacion___
	%aux2696 = load i32, i32* @IdPos4
	%aux2697 = add i32 0, 1
	%aux2698 = add i32 %aux2696, %aux2697
	store i32 %aux2698, i32* @IdPos4
	br label %etiq1285
	
	etiq1285:
	;___Asignacion___
	%aux2700 = load i32, i32* @Pivot4
	%aux2701 = add i32 0, 1
	%aux2702 = sub i32 %aux2700, %aux2701
	store i32 %aux2702, i32* @Pivot4
	br label %etiq1288
	
	etiq1280:
	;___Asignacion___
	%aux2704 = load i32, i32* @IdPos4
	%aux2705 = add i32 0, 1
	%aux2706 = add i32 %aux2704, %aux2705
	store i32 %aux2706, i32* @IdPos4
	br label %etiq1288
	
	etiq1288:
	;___IfElse___
	%aux2708 = add i32 0, 3
	%aux2709 = load i32, i32* @Pivot4
	%aux2710 = sub i32 %aux2708, %aux2709
	%aux2711 = load i32, i32* @IdPos4
	%aux2712 = icmp eq i32 %aux2710, %aux2711
	br i1 %aux2712, label %etiq1289, label %etiq1290
	
	etiq1289:
	;___Asignacion___
	%aux2714 = load i32, i32* @_Acum7
	%aux2715 = add i32 0, 2
	%aux2716 = add i32 %aux2714, %aux2715
	store i32 %aux2716, i32* @_Acum7
	br label %etiq1293
	
	etiq1293:
	;___Asignacion___
	%aux2718 = load i32, i32* @IdPos4
	%aux2719 = add i32 0, 1
	%aux2720 = add i32 %aux2718, %aux2719
	store i32 %aux2720, i32* @IdPos4
	br label %etiq1295
	
	etiq1295:
	;___Asignacion___
	%aux2722 = load i32, i32* @Pivot4
	%aux2723 = add i32 0, 1
	%aux2724 = sub i32 %aux2722, %aux2723
	store i32 %aux2724, i32* @Pivot4
	br label %etiq1298
	
	etiq1290:
	;___Asignacion___
	%aux2726 = load i32, i32* @IdPos4
	%aux2727 = add i32 0, 1
	%aux2728 = add i32 %aux2726, %aux2727
	store i32 %aux2728, i32* @IdPos4
	br label %etiq1298
	
	etiq1298:
	;___IfElse___
	%aux2730 = add i32 0, 3
	%aux2731 = load i32, i32* @Pivot4
	%aux2732 = sub i32 %aux2730, %aux2731
	%aux2733 = load i32, i32* @IdPos4
	%aux2734 = icmp eq i32 %aux2732, %aux2733
	br i1 %aux2734, label %etiq1299, label %etiq1300
	
	etiq1299:
	;___Asignacion___
	%aux2736 = load i32, i32* @_Acum7
	%aux2737 = add i32 0, 3
	%aux2738 = add i32 %aux2736, %aux2737
	store i32 %aux2738, i32* @_Acum7
	br label %etiq1303
	
	etiq1303:
	;___Asignacion___
	%aux2740 = load i32, i32* @IdPos4
	%aux2741 = add i32 0, 1
	%aux2742 = add i32 %aux2740, %aux2741
	store i32 %aux2742, i32* @IdPos4
	br label %etiq1305
	
	etiq1305:
	;___Asignacion___
	%aux2744 = load i32, i32* @Pivot4
	%aux2745 = add i32 0, 1
	%aux2746 = sub i32 %aux2744, %aux2745
	store i32 %aux2746, i32* @Pivot4
	br label %etiq1308
	
	etiq1300:
	;___Asignacion___
	%aux2748 = load i32, i32* @IdPos4
	%aux2749 = add i32 0, 1
	%aux2750 = add i32 %aux2748, %aux2749
	store i32 %aux2750, i32* @IdPos4
	br label %etiq1308
	
	etiq1277:
	;___DisplayCadenaCaracteres___
	%aux2751 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1308
	
	etiq1273:
	;___DisplayCadenaCaracteres___
	%aux2752 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1308
	
	etiq1270:
	;___DisplayCadenaCaracteres___
	%aux2753 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1308
	
	etiq1308:
	;___Asignacion___
	%aux2755 = load i32, i32* @_Acum7
	store i32 %aux2755, i32* @_Acum8
	br label %etiq1309
	
	etiq1309:
	;___Asignacion___
	%aux2757 = add i32 0, 2
	store i32 %aux2757, i32* @Pivot2
	br label %etiq1310
	
	etiq1310:
	;___IfElse___
	%aux2759 = load i32, i32* @Pivot2
	%aux2760 = add i32 0, 1
	%aux2761 = icmp sge i32 %aux2759, %aux2760
	br i1 %aux2761, label %etiq1312, label %etiq1313
	
	etiq1312:
	;___IfElse___
	%aux2763 = add i32 0, 2
	%aux2764 = load i32, i32* @Pivot2
	%aux2765 = icmp sge i32 %aux2763, %aux2764
	br i1 %aux2765, label %etiq1315, label %etiq1316
	
	etiq1315:
	;___IfElse___
	%aux2767 = add i32 0, 2
	%aux2768 = add i32 0, 0
	%aux2769 = icmp sgt i32 %aux2767, %aux2768
	br i1 %aux2769, label %etiq1319, label %etiq1320
	
	etiq1319:
	;___IfElse___
	%aux2771 = add i32 0, 2
	%aux2772 = load i32, i32* @Pivot2
	%aux2773 = sub i32 %aux2771, %aux2772
	%aux2774 = load i32, i32* @IdPos2
	%aux2775 = icmp eq i32 %aux2773, %aux2774
	br i1 %aux2775, label %etiq1322, label %etiq1323
	
	etiq1322:
	;___Asignacion___
	%aux2777 = load i32, i32* @_Acum3
	%aux2778 = add i32 0, 1
	%aux2779 = add i32 %aux2777, %aux2778
	store i32 %aux2779, i32* @_Acum3
	br label %etiq1326
	
	etiq1326:
	;___Asignacion___
	%aux2781 = load i32, i32* @IdPos2
	%aux2782 = add i32 0, 1
	%aux2783 = add i32 %aux2781, %aux2782
	store i32 %aux2783, i32* @IdPos2
	br label %etiq1328
	
	etiq1328:
	;___Asignacion___
	%aux2785 = load i32, i32* @Pivot2
	%aux2786 = add i32 0, 1
	%aux2787 = sub i32 %aux2785, %aux2786
	store i32 %aux2787, i32* @Pivot2
	br label %etiq1331
	
	etiq1323:
	;___Asignacion___
	%aux2789 = load i32, i32* @IdPos2
	%aux2790 = add i32 0, 1
	%aux2791 = add i32 %aux2789, %aux2790
	store i32 %aux2791, i32* @IdPos2
	br label %etiq1331
	
	etiq1331:
	;___IfElse___
	%aux2793 = add i32 0, 2
	%aux2794 = load i32, i32* @Pivot2
	%aux2795 = sub i32 %aux2793, %aux2794
	%aux2796 = load i32, i32* @IdPos2
	%aux2797 = icmp eq i32 %aux2795, %aux2796
	br i1 %aux2797, label %etiq1332, label %etiq1333
	
	etiq1332:
	;___Asignacion___
	%aux2799 = load i32, i32* @_Acum3
	%aux2800 = add i32 0, 2
	%aux2801 = add i32 %aux2799, %aux2800
	store i32 %aux2801, i32* @_Acum3
	br label %etiq1336
	
	etiq1336:
	;___Asignacion___
	%aux2803 = load i32, i32* @IdPos2
	%aux2804 = add i32 0, 1
	%aux2805 = add i32 %aux2803, %aux2804
	store i32 %aux2805, i32* @IdPos2
	br label %etiq1338
	
	etiq1338:
	;___Asignacion___
	%aux2807 = load i32, i32* @Pivot2
	%aux2808 = add i32 0, 1
	%aux2809 = sub i32 %aux2807, %aux2808
	store i32 %aux2809, i32* @Pivot2
	br label %etiq1341
	
	etiq1333:
	;___Asignacion___
	%aux2811 = load i32, i32* @IdPos2
	%aux2812 = add i32 0, 1
	%aux2813 = add i32 %aux2811, %aux2812
	store i32 %aux2813, i32* @IdPos2
	br label %etiq1341
	
	etiq1320:
	;___DisplayCadenaCaracteres___
	%aux2814 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1341
	
	etiq1316:
	;___DisplayCadenaCaracteres___
	%aux2815 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1341
	
	etiq1313:
	;___DisplayCadenaCaracteres___
	%aux2816 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1341
	
	etiq1341:
	;___Asignacion___
	%aux2818 = load i32, i32* @_Acum3
	store i32 %aux2818, i32* @_Acum4
	br label %etiq1342
	
	etiq1342:
	;___Asignacion___
	%aux2820 = add i32 0, 1
	store i32 %aux2820, i32* @Pivot1
	br label %etiq1343
	
	etiq1343:
	;___IfElse___
	%aux2822 = load i32, i32* @Pivot1
	%aux2823 = add i32 0, 1
	%aux2824 = icmp sge i32 %aux2822, %aux2823
	br i1 %aux2824, label %etiq1345, label %etiq1346
	
	etiq1345:
	;___IfElse___
	%aux2826 = add i32 0, 1
	%aux2827 = load i32, i32* @Pivot1
	%aux2828 = icmp sge i32 %aux2826, %aux2827
	br i1 %aux2828, label %etiq1348, label %etiq1349
	
	etiq1348:
	;___IfElse___
	%aux2830 = add i32 0, 1
	%aux2831 = add i32 0, 0
	%aux2832 = icmp sgt i32 %aux2830, %aux2831
	br i1 %aux2832, label %etiq1352, label %etiq1353
	
	etiq1352:
	;___IfElse___
	%aux2834 = add i32 0, 1
	%aux2835 = load i32, i32* @Pivot1
	%aux2836 = sub i32 %aux2834, %aux2835
	%aux2837 = load i32, i32* @IdPos1
	%aux2838 = icmp eq i32 %aux2836, %aux2837
	br i1 %aux2838, label %etiq1355, label %etiq1356
	
	etiq1355:
	;___Asignacion___
	%aux2840 = load i32, i32* @_Acum1
	%aux2841 = add i32 0, 1
	%aux2842 = add i32 %aux2840, %aux2841
	store i32 %aux2842, i32* @_Acum1
	br label %etiq1359
	
	etiq1359:
	;___Asignacion___
	%aux2844 = load i32, i32* @IdPos1
	%aux2845 = add i32 0, 1
	%aux2846 = add i32 %aux2844, %aux2845
	store i32 %aux2846, i32* @IdPos1
	br label %etiq1361
	
	etiq1361:
	;___Asignacion___
	%aux2848 = load i32, i32* @Pivot1
	%aux2849 = add i32 0, 1
	%aux2850 = sub i32 %aux2848, %aux2849
	store i32 %aux2850, i32* @Pivot1
	br label %etiq1364
	
	etiq1356:
	;___Asignacion___
	%aux2852 = load i32, i32* @IdPos1
	%aux2853 = add i32 0, 1
	%aux2854 = add i32 %aux2852, %aux2853
	store i32 %aux2854, i32* @IdPos1
	br label %etiq1364
	
	etiq1353:
	;___DisplayCadenaCaracteres___
	%aux2855 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1364
	
	etiq1349:
	;___DisplayCadenaCaracteres___
	%aux2856 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1364
	
	etiq1346:
	;___DisplayCadenaCaracteres___
	%aux2857 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1364
	
	etiq1364:
	;___Asignacion___
	%aux2859 = load i32, i32* @_Acum1
	store i32 %aux2859, i32* @_Acum2
	br label %etiq1365
	
	etiq1365:
	;___Asignacion___
	%aux2861 = add i32 0, 2
	store i32 %aux2861, i32* @Pivot3
	br label %etiq1366
	
	etiq1366:
	;___IfElse___
	%aux2863 = load i32, i32* @Pivot3
	%aux2864 = add i32 0, 1
	%aux2865 = icmp sge i32 %aux2863, %aux2864
	br i1 %aux2865, label %etiq1368, label %etiq1369
	
	etiq1368:
	;___IfElse___
	%aux2867 = add i32 0, 2
	%aux2868 = load i32, i32* @Pivot3
	%aux2869 = icmp sge i32 %aux2867, %aux2868
	br i1 %aux2869, label %etiq1371, label %etiq1372
	
	etiq1371:
	;___IfElse___
	%aux2871 = add i32 0, 2
	%aux2872 = add i32 0, 0
	%aux2873 = icmp sgt i32 %aux2871, %aux2872
	br i1 %aux2873, label %etiq1375, label %etiq1376
	
	etiq1375:
	;___IfElse___
	%aux2875 = add i32 0, 2
	%aux2876 = load i32, i32* @Pivot3
	%aux2877 = sub i32 %aux2875, %aux2876
	%aux2878 = load i32, i32* @IdPos3
	%aux2879 = icmp eq i32 %aux2877, %aux2878
	br i1 %aux2879, label %etiq1378, label %etiq1379
	
	etiq1378:
	;___Asignacion___
	%aux2881 = load i32, i32* @_Acum5
	%aux2882 = load i32, i32* @_Acum2
	%aux2883 = add i32 %aux2881, %aux2882
	store i32 %aux2883, i32* @_Acum5
	br label %etiq1381
	
	etiq1381:
	;___Asignacion___
	%aux2885 = load i32, i32* @IdPos3
	%aux2886 = add i32 0, 1
	%aux2887 = add i32 %aux2885, %aux2886
	store i32 %aux2887, i32* @IdPos3
	br label %etiq1383
	
	etiq1383:
	;___Asignacion___
	%aux2889 = load i32, i32* @Pivot3
	%aux2890 = add i32 0, 1
	%aux2891 = sub i32 %aux2889, %aux2890
	store i32 %aux2891, i32* @Pivot3
	br label %etiq1386
	
	etiq1379:
	;___Asignacion___
	%aux2893 = load i32, i32* @IdPos3
	%aux2894 = add i32 0, 1
	%aux2895 = add i32 %aux2893, %aux2894
	store i32 %aux2895, i32* @IdPos3
	br label %etiq1386
	
	etiq1386:
	;___IfElse___
	%aux2897 = add i32 0, 2
	%aux2898 = load i32, i32* @Pivot3
	%aux2899 = sub i32 %aux2897, %aux2898
	%aux2900 = load i32, i32* @IdPos3
	%aux2901 = icmp eq i32 %aux2899, %aux2900
	br i1 %aux2901, label %etiq1387, label %etiq1388
	
	etiq1387:
	;___Asignacion___
	%aux2903 = load i32, i32* @_Acum5
	%aux2904 = load i32, i32* @_Acum4
	%aux2905 = add i32 %aux2903, %aux2904
	store i32 %aux2905, i32* @_Acum5
	br label %etiq1390
	
	etiq1390:
	;___Asignacion___
	%aux2907 = load i32, i32* @IdPos3
	%aux2908 = add i32 0, 1
	%aux2909 = add i32 %aux2907, %aux2908
	store i32 %aux2909, i32* @IdPos3
	br label %etiq1392
	
	etiq1392:
	;___Asignacion___
	%aux2911 = load i32, i32* @Pivot3
	%aux2912 = add i32 0, 1
	%aux2913 = sub i32 %aux2911, %aux2912
	store i32 %aux2913, i32* @Pivot3
	br label %etiq1395
	
	etiq1388:
	;___Asignacion___
	%aux2915 = load i32, i32* @IdPos3
	%aux2916 = add i32 0, 1
	%aux2917 = add i32 %aux2915, %aux2916
	store i32 %aux2917, i32* @IdPos3
	br label %etiq1395
	
	etiq1376:
	;___DisplayCadenaCaracteres___
	%aux2918 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1395
	
	etiq1372:
	;___DisplayCadenaCaracteres___
	%aux2919 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1395
	
	etiq1369:
	;___DisplayCadenaCaracteres___
	%aux2920 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1395
	
	etiq1395:
	;___Asignacion___
	%aux2922 = load i32, i32* @_Acum5
	store i32 %aux2922, i32* @_Acum6
	br label %etiq1396
	
	etiq1396:
	;___Asignacion___
	%aux2924 = add i32 0, 3
	store i32 %aux2924, i32* @Pivot6
	br label %etiq1397
	
	etiq1397:
	;___IfElse___
	%aux2926 = load i32, i32* @Pivot6
	%aux2927 = add i32 0, 1
	%aux2928 = icmp sge i32 %aux2926, %aux2927
	br i1 %aux2928, label %etiq1399, label %etiq1400
	
	etiq1399:
	;___IfElse___
	%aux2930 = add i32 0, 3
	%aux2931 = load i32, i32* @Pivot6
	%aux2932 = icmp sge i32 %aux2930, %aux2931
	br i1 %aux2932, label %etiq1402, label %etiq1403
	
	etiq1402:
	;___IfElse___
	%aux2934 = add i32 0, 3
	%aux2935 = add i32 0, 0
	%aux2936 = icmp sgt i32 %aux2934, %aux2935
	br i1 %aux2936, label %etiq1406, label %etiq1407
	
	etiq1406:
	;___IfElse___
	%aux2938 = add i32 0, 3
	%aux2939 = load i32, i32* @Pivot6
	%aux2940 = sub i32 %aux2938, %aux2939
	%aux2941 = load i32, i32* @IdPos6
	%aux2942 = icmp eq i32 %aux2940, %aux2941
	br i1 %aux2942, label %etiq1409, label %etiq1410
	
	etiq1409:
	;___Asignacion___
	%aux2944 = load i32, i32* @_Acum11
	%aux2945 = load i32, i32* @_Acum6
	%aux2946 = add i32 %aux2944, %aux2945
	store i32 %aux2946, i32* @_Acum11
	br label %etiq1412
	
	etiq1412:
	;___Asignacion___
	%aux2948 = load i32, i32* @IdPos6
	%aux2949 = add i32 0, 1
	%aux2950 = add i32 %aux2948, %aux2949
	store i32 %aux2950, i32* @IdPos6
	br label %etiq1414
	
	etiq1414:
	;___Asignacion___
	%aux2952 = load i32, i32* @Pivot6
	%aux2953 = add i32 0, 1
	%aux2954 = sub i32 %aux2952, %aux2953
	store i32 %aux2954, i32* @Pivot6
	br label %etiq1417
	
	etiq1410:
	;___Asignacion___
	%aux2956 = load i32, i32* @IdPos6
	%aux2957 = add i32 0, 1
	%aux2958 = add i32 %aux2956, %aux2957
	store i32 %aux2958, i32* @IdPos6
	br label %etiq1417
	
	etiq1417:
	;___IfElse___
	%aux2960 = add i32 0, 3
	%aux2961 = load i32, i32* @Pivot6
	%aux2962 = sub i32 %aux2960, %aux2961
	%aux2963 = load i32, i32* @IdPos6
	%aux2964 = icmp eq i32 %aux2962, %aux2963
	br i1 %aux2964, label %etiq1418, label %etiq1419
	
	etiq1418:
	;___Asignacion___
	%aux2966 = load i32, i32* @_Acum11
	%aux2967 = load i32, i32* @_Acum8
	%aux2968 = add i32 %aux2966, %aux2967
	store i32 %aux2968, i32* @_Acum11
	br label %etiq1421
	
	etiq1421:
	;___Asignacion___
	%aux2970 = load i32, i32* @IdPos6
	%aux2971 = add i32 0, 1
	%aux2972 = add i32 %aux2970, %aux2971
	store i32 %aux2972, i32* @IdPos6
	br label %etiq1423
	
	etiq1423:
	;___Asignacion___
	%aux2974 = load i32, i32* @Pivot6
	%aux2975 = add i32 0, 1
	%aux2976 = sub i32 %aux2974, %aux2975
	store i32 %aux2976, i32* @Pivot6
	br label %etiq1426
	
	etiq1419:
	;___Asignacion___
	%aux2978 = load i32, i32* @IdPos6
	%aux2979 = add i32 0, 1
	%aux2980 = add i32 %aux2978, %aux2979
	store i32 %aux2980, i32* @IdPos6
	br label %etiq1426
	
	etiq1426:
	;___IfElse___
	%aux2982 = add i32 0, 3
	%aux2983 = load i32, i32* @Pivot6
	%aux2984 = sub i32 %aux2982, %aux2983
	%aux2985 = load i32, i32* @IdPos6
	%aux2986 = icmp eq i32 %aux2984, %aux2985
	br i1 %aux2986, label %etiq1427, label %etiq1428
	
	etiq1427:
	;___Asignacion___
	%aux2988 = load i32, i32* @_Acum11
	%aux2989 = load i32, i32* @_Acum10
	%aux2990 = add i32 %aux2988, %aux2989
	store i32 %aux2990, i32* @_Acum11
	br label %etiq1430
	
	etiq1430:
	;___Asignacion___
	%aux2992 = load i32, i32* @IdPos6
	%aux2993 = add i32 0, 1
	%aux2994 = add i32 %aux2992, %aux2993
	store i32 %aux2994, i32* @IdPos6
	br label %etiq1432
	
	etiq1432:
	;___Asignacion___
	%aux2996 = load i32, i32* @Pivot6
	%aux2997 = add i32 0, 1
	%aux2998 = sub i32 %aux2996, %aux2997
	store i32 %aux2998, i32* @Pivot6
	br label %etiq1435
	
	etiq1428:
	;___Asignacion___
	%aux3000 = load i32, i32* @IdPos6
	%aux3001 = add i32 0, 1
	%aux3002 = add i32 %aux3000, %aux3001
	store i32 %aux3002, i32* @IdPos6
	br label %etiq1435
	
	etiq1407:
	;___DisplayCadenaCaracteres___
	%aux3003 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1435
	
	etiq1403:
	;___DisplayCadenaCaracteres___
	%aux3004 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1435
	
	etiq1400:
	;___DisplayCadenaCaracteres___
	%aux3005 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1435
	
	etiq1435:
	;___Asignacion___
	%aux3007 = load i32, i32* @_Acum11
	store i32 %aux3007, i32* @_Acum12
	br label %etiq1436
	
	etiq1436:
	%aux3008 = load i32, i32* @_Acum12
	%aux3009 = add i32 0, 15
	%aux3010 = sub i32 %aux3008, %aux3009
	%aux3011 = add i32 %aux2563, %aux3010
	store i32 %aux3011, i32* @_Acum19
	br label %etiq1438
	
	etiq1438:
	;___Asignacion___
	%aux3013 = load i32, i32* @IdPos10
	%aux3014 = add i32 0, 1
	%aux3015 = add i32 %aux3013, %aux3014
	store i32 %aux3015, i32* @IdPos10
	br label %etiq1440
	
	etiq1440:
	;___Asignacion___
	%aux3017 = load i32, i32* @Pivot10
	%aux3018 = add i32 0, 1
	%aux3019 = sub i32 %aux3017, %aux3018
	store i32 %aux3019, i32* @Pivot10
	br label %etiq1443
	
	etiq1211:
	;___Asignacion___
	%aux3021 = load i32, i32* @IdPos10
	%aux3022 = add i32 0, 1
	%aux3023 = add i32 %aux3021, %aux3022
	store i32 %aux3023, i32* @IdPos10
	br label %etiq1443
	
	etiq1443:
	;___IfElse___
	%aux3025 = add i32 0, 100
	%aux3026 = load i32, i32* @Pivot10
	%aux3027 = sub i32 %aux3025, %aux3026
	%aux3028 = load i32, i32* @IdPos10
	%aux3029 = icmp eq i32 %aux3027, %aux3028
	br i1 %aux3029, label %etiq1444, label %etiq1445
	
	etiq1444:
	;___Asignacion___
	%aux3031 = load i32, i32* @_Acum19
	%aux3032 = add i32 0, 1
	%aux3033 = add i32 0, 2
	%aux3034 = sub i32 %aux3032, %aux3033
	%aux3035 = add i32 0, 3
	%aux3036 = add i32 %aux3034, %aux3035
	%aux3037 = add i32 0, 1
	%aux3038 = sub i32 %aux3036, %aux3037
	%aux3039 = add i32 %aux3031, %aux3038
	store i32 %aux3039, i32* @_Acum19
	br label %etiq1451
	
	etiq1451:
	;___Asignacion___
	%aux3041 = load i32, i32* @IdPos10
	%aux3042 = add i32 0, 1
	%aux3043 = add i32 %aux3041, %aux3042
	store i32 %aux3043, i32* @IdPos10
	br label %etiq1453
	
	etiq1453:
	;___Asignacion___
	%aux3045 = load i32, i32* @Pivot10
	%aux3046 = add i32 0, 1
	%aux3047 = sub i32 %aux3045, %aux3046
	store i32 %aux3047, i32* @Pivot10
	br label %etiq1456
	
	etiq1445:
	;___Asignacion___
	%aux3049 = load i32, i32* @IdPos10
	%aux3050 = add i32 0, 1
	%aux3051 = add i32 %aux3049, %aux3050
	store i32 %aux3051, i32* @IdPos10
	br label %etiq1456
	
	etiq1456:
	;___IfElse___
	%aux3053 = add i32 0, 100
	%aux3054 = load i32, i32* @Pivot10
	%aux3055 = sub i32 %aux3053, %aux3054
	%aux3056 = load i32, i32* @IdPos10
	%aux3057 = icmp eq i32 %aux3055, %aux3056
	br i1 %aux3057, label %etiq1457, label %etiq1458
	
	etiq1457:
	;___Asignacion___
	%aux3059 = load i32, i32* @_Acum19
	%aux3060 = add i32 0, 1
	%aux3061 = sub i32 0, %aux3060
	br label %etiq1461
	
	etiq1461:
	;___Asignacion___
	%aux3063 = add i32 0, 2
	store i32 %aux3063, i32* @Pivot7
	br label %etiq1462
	
	etiq1462:
	;___IfElse___
	%aux3065 = load i32, i32* @Pivot7
	%aux3066 = add i32 0, 1
	%aux3067 = icmp sge i32 %aux3065, %aux3066
	br i1 %aux3067, label %etiq1464, label %etiq1465
	
	etiq1464:
	;___IfElse___
	%aux3069 = add i32 0, 2
	%aux3070 = load i32, i32* @Pivot7
	%aux3071 = icmp sge i32 %aux3069, %aux3070
	br i1 %aux3071, label %etiq1467, label %etiq1468
	
	etiq1467:
	;___IfElse___
	%aux3073 = add i32 0, 2
	%aux3074 = add i32 0, 0
	%aux3075 = icmp sgt i32 %aux3073, %aux3074
	br i1 %aux3075, label %etiq1471, label %etiq1472
	
	etiq1471:
	;___IfElse___
	%aux3077 = add i32 0, 2
	%aux3078 = load i32, i32* @Pivot7
	%aux3079 = sub i32 %aux3077, %aux3078
	%aux3080 = load i32, i32* @IdPos7
	%aux3081 = icmp eq i32 %aux3079, %aux3080
	br i1 %aux3081, label %etiq1474, label %etiq1475
	
	etiq1474:
	;___Asignacion___
	%aux3083 = load i32, i32* @_Acum13
	%aux3084 = load i32, i32* @edad
	%aux3085 = add i32 0, 0
	%aux3086 = mul i32 %aux3084, %aux3085
	%aux3087 = add i32 %aux3083, %aux3086
	store i32 %aux3087, i32* @_Acum13
	br label %etiq1479
	
	etiq1479:
	;___Asignacion___
	%aux3089 = load i32, i32* @IdPos7
	%aux3090 = add i32 0, 1
	%aux3091 = add i32 %aux3089, %aux3090
	store i32 %aux3091, i32* @IdPos7
	br label %etiq1481
	
	etiq1481:
	;___Asignacion___
	%aux3093 = load i32, i32* @Pivot7
	%aux3094 = add i32 0, 1
	%aux3095 = sub i32 %aux3093, %aux3094
	store i32 %aux3095, i32* @Pivot7
	br label %etiq1484
	
	etiq1475:
	;___Asignacion___
	%aux3097 = load i32, i32* @IdPos7
	%aux3098 = add i32 0, 1
	%aux3099 = add i32 %aux3097, %aux3098
	store i32 %aux3099, i32* @IdPos7
	br label %etiq1484
	
	etiq1484:
	;___IfElse___
	%aux3101 = add i32 0, 2
	%aux3102 = load i32, i32* @Pivot7
	%aux3103 = sub i32 %aux3101, %aux3102
	%aux3104 = load i32, i32* @IdPos7
	%aux3105 = icmp eq i32 %aux3103, %aux3104
	br i1 %aux3105, label %etiq1485, label %etiq1486
	
	etiq1485:
	;___Asignacion___
	%aux3107 = load i32, i32* @_Acum13
	%aux3108 = add i32 0, 2
	%aux3109 = add i32 %aux3107, %aux3108
	store i32 %aux3109, i32* @_Acum13
	br label %etiq1489
	
	etiq1489:
	;___Asignacion___
	%aux3111 = load i32, i32* @IdPos7
	%aux3112 = add i32 0, 1
	%aux3113 = add i32 %aux3111, %aux3112
	store i32 %aux3113, i32* @IdPos7
	br label %etiq1491
	
	etiq1491:
	;___Asignacion___
	%aux3115 = load i32, i32* @Pivot7
	%aux3116 = add i32 0, 1
	%aux3117 = sub i32 %aux3115, %aux3116
	store i32 %aux3117, i32* @Pivot7
	br label %etiq1494
	
	etiq1486:
	;___Asignacion___
	%aux3119 = load i32, i32* @IdPos7
	%aux3120 = add i32 0, 1
	%aux3121 = add i32 %aux3119, %aux3120
	store i32 %aux3121, i32* @IdPos7
	br label %etiq1494
	
	etiq1472:
	;___DisplayCadenaCaracteres___
	%aux3122 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1494
	
	etiq1468:
	;___DisplayCadenaCaracteres___
	%aux3123 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1494
	
	etiq1465:
	;___DisplayCadenaCaracteres___
	%aux3124 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1494
	
	etiq1494:
	;___Asignacion___
	%aux3126 = load i32, i32* @_Acum13
	store i32 %aux3126, i32* @_Acum14
	br label %etiq1495
	
	etiq1495:
	%aux3127 = load i32, i32* @_Acum14
	%aux3128 = add i32 %aux3061, %aux3127
	%aux3129 = add i32 %aux3059, %aux3128
	store i32 %aux3129, i32* @_Acum19
	br label %etiq1496
	
	etiq1496:
	;___Asignacion___
	%aux3131 = load i32, i32* @IdPos10
	%aux3132 = add i32 0, 1
	%aux3133 = add i32 %aux3131, %aux3132
	store i32 %aux3133, i32* @IdPos10
	br label %etiq1498
	
	etiq1498:
	;___Asignacion___
	%aux3135 = load i32, i32* @Pivot10
	%aux3136 = add i32 0, 1
	%aux3137 = sub i32 %aux3135, %aux3136
	store i32 %aux3137, i32* @Pivot10
	br label %etiq1501
	
	etiq1458:
	;___Asignacion___
	%aux3139 = load i32, i32* @IdPos10
	%aux3140 = add i32 0, 1
	%aux3141 = add i32 %aux3139, %aux3140
	store i32 %aux3141, i32* @IdPos10
	br label %etiq1501
	
	etiq1501:
	;___IfElse___
	%aux3143 = add i32 0, 100
	%aux3144 = load i32, i32* @Pivot10
	%aux3145 = sub i32 %aux3143, %aux3144
	%aux3146 = load i32, i32* @IdPos10
	%aux3147 = icmp eq i32 %aux3145, %aux3146
	br i1 %aux3147, label %etiq1502, label %etiq1503
	
	etiq1502:
	;___Asignacion___
	%aux3149 = load i32, i32* @_Acum19
	%aux3150 = add i32 0, 1
	%aux3151 = add i32 0, 2
	%aux3152 = add i32 0, 2
	%aux3153 = add i32 0, 1
	%aux3154 = sdiv i32 %aux3152, %aux3153
	%aux3155 = mul i32 %aux3151, %aux3154
	%aux3156 = sub i32 %aux3150, %aux3155
	%aux3157 = add i32 0, 4
	%aux3158 = add i32 %aux3156, %aux3157
	%aux3159 = add i32 0, 1
	%aux3160 = mul i32 %aux3158, %aux3159
	%aux3161 = add i32 %aux3149, %aux3160
	store i32 %aux3161, i32* @_Acum19
	br label %etiq1511
	
	etiq1511:
	;___Asignacion___
	%aux3163 = load i32, i32* @IdPos10
	%aux3164 = add i32 0, 1
	%aux3165 = add i32 %aux3163, %aux3164
	store i32 %aux3165, i32* @IdPos10
	br label %etiq1513
	
	etiq1513:
	;___Asignacion___
	%aux3167 = load i32, i32* @Pivot10
	%aux3168 = add i32 0, 1
	%aux3169 = sub i32 %aux3167, %aux3168
	store i32 %aux3169, i32* @Pivot10
	br label %etiq1516
	
	etiq1503:
	;___Asignacion___
	%aux3171 = load i32, i32* @IdPos10
	%aux3172 = add i32 0, 1
	%aux3173 = add i32 %aux3171, %aux3172
	store i32 %aux3173, i32* @IdPos10
	br label %etiq1516
	
	etiq1516:
	;___IfElse___
	%aux3175 = add i32 0, 100
	%aux3176 = load i32, i32* @Pivot10
	%aux3177 = sub i32 %aux3175, %aux3176
	%aux3178 = load i32, i32* @IdPos10
	%aux3179 = icmp eq i32 %aux3177, %aux3178
	br i1 %aux3179, label %etiq1517, label %etiq1518
	
	etiq1517:
	;___Asignacion___
	%aux3181 = load i32, i32* @_Acum19
	%aux3182 = add i32 0, 10
	%aux3183 = add i32 0, 10
	%aux3184 = add i32 0, 10
	%aux3185 = mul i32 %aux3183, %aux3184
	%aux3186 = add i32 %aux3182, %aux3185
	%aux3187 = add i32 0, 10
	%aux3188 = sub i32 %aux3186, %aux3187
	%aux3189 = add i32 0, 100
	%aux3190 = sdiv i32 %aux3188, %aux3189
	%aux3191 = add i32 %aux3181, %aux3190
	store i32 %aux3191, i32* @_Acum19
	br label %etiq1525
	
	etiq1525:
	;___Asignacion___
	%aux3193 = load i32, i32* @IdPos10
	%aux3194 = add i32 0, 1
	%aux3195 = add i32 %aux3193, %aux3194
	store i32 %aux3195, i32* @IdPos10
	br label %etiq1527
	
	etiq1527:
	;___Asignacion___
	%aux3197 = load i32, i32* @Pivot10
	%aux3198 = add i32 0, 1
	%aux3199 = sub i32 %aux3197, %aux3198
	store i32 %aux3199, i32* @Pivot10
	br label %etiq1530
	
	etiq1518:
	;___Asignacion___
	%aux3201 = load i32, i32* @IdPos10
	%aux3202 = add i32 0, 1
	%aux3203 = add i32 %aux3201, %aux3202
	store i32 %aux3203, i32* @IdPos10
	br label %etiq1530
	
	etiq1530:
	;___IfElse___
	%aux3205 = add i32 0, 100
	%aux3206 = load i32, i32* @Pivot10
	%aux3207 = sub i32 %aux3205, %aux3206
	%aux3208 = load i32, i32* @IdPos10
	%aux3209 = icmp eq i32 %aux3207, %aux3208
	br i1 %aux3209, label %etiq1531, label %etiq1532
	
	etiq1531:
	;___Asignacion___
	%aux3211 = load i32, i32* @_Acum19
	br label %etiq1534
	
	etiq1534:
	;___Asignacion___
	%aux3213 = add i32 0, 2
	store i32 %aux3213, i32* @Pivot8
	br label %etiq1535
	
	etiq1535:
	;___IfElse___
	%aux3215 = load i32, i32* @Pivot8
	%aux3216 = add i32 0, 1
	%aux3217 = icmp sge i32 %aux3215, %aux3216
	br i1 %aux3217, label %etiq1537, label %etiq1538
	
	etiq1537:
	;___IfElse___
	%aux3219 = add i32 0, 3
	%aux3220 = load i32, i32* @Pivot8
	%aux3221 = icmp sge i32 %aux3219, %aux3220
	br i1 %aux3221, label %etiq1540, label %etiq1541
	
	etiq1540:
	;___IfElse___
	%aux3223 = add i32 0, 3
	%aux3224 = add i32 0, 0
	%aux3225 = icmp sgt i32 %aux3223, %aux3224
	br i1 %aux3225, label %etiq1544, label %etiq1545
	
	etiq1544:
	;___IfElse___
	%aux3227 = add i32 0, 3
	%aux3228 = load i32, i32* @Pivot8
	%aux3229 = sub i32 %aux3227, %aux3228
	%aux3230 = load i32, i32* @IdPos8
	%aux3231 = icmp eq i32 %aux3229, %aux3230
	br i1 %aux3231, label %etiq1547, label %etiq1548
	
	etiq1547:
	;___Asignacion___
	%aux3233 = load i32, i32* @_Acum15
	%aux3234 = add i32 0, 5
	%aux3235 = add i32 %aux3233, %aux3234
	store i32 %aux3235, i32* @_Acum15
	br label %etiq1551
	
	etiq1551:
	;___Asignacion___
	%aux3237 = load i32, i32* @IdPos8
	%aux3238 = add i32 0, 1
	%aux3239 = add i32 %aux3237, %aux3238
	store i32 %aux3239, i32* @IdPos8
	br label %etiq1553
	
	etiq1553:
	;___Asignacion___
	%aux3241 = load i32, i32* @Pivot8
	%aux3242 = add i32 0, 1
	%aux3243 = sub i32 %aux3241, %aux3242
	store i32 %aux3243, i32* @Pivot8
	br label %etiq1556
	
	etiq1548:
	;___Asignacion___
	%aux3245 = load i32, i32* @IdPos8
	%aux3246 = add i32 0, 1
	%aux3247 = add i32 %aux3245, %aux3246
	store i32 %aux3247, i32* @IdPos8
	br label %etiq1556
	
	etiq1556:
	;___IfElse___
	%aux3249 = add i32 0, 3
	%aux3250 = load i32, i32* @Pivot8
	%aux3251 = sub i32 %aux3249, %aux3250
	%aux3252 = load i32, i32* @IdPos8
	%aux3253 = icmp eq i32 %aux3251, %aux3252
	br i1 %aux3253, label %etiq1557, label %etiq1558
	
	etiq1557:
	;___Asignacion___
	%aux3255 = load i32, i32* @_Acum15
	%aux3256 = add i32 0, 1
	%aux3257 = sub i32 0, %aux3256
	%aux3258 = add i32 %aux3255, %aux3257
	store i32 %aux3258, i32* @_Acum15
	br label %etiq1561
	
	etiq1561:
	;___Asignacion___
	%aux3260 = load i32, i32* @IdPos8
	%aux3261 = add i32 0, 1
	%aux3262 = add i32 %aux3260, %aux3261
	store i32 %aux3262, i32* @IdPos8
	br label %etiq1563
	
	etiq1563:
	;___Asignacion___
	%aux3264 = load i32, i32* @Pivot8
	%aux3265 = add i32 0, 1
	%aux3266 = sub i32 %aux3264, %aux3265
	store i32 %aux3266, i32* @Pivot8
	br label %etiq1566
	
	etiq1558:
	;___Asignacion___
	%aux3268 = load i32, i32* @IdPos8
	%aux3269 = add i32 0, 1
	%aux3270 = add i32 %aux3268, %aux3269
	store i32 %aux3270, i32* @IdPos8
	br label %etiq1566
	
	etiq1566:
	;___IfElse___
	%aux3272 = add i32 0, 3
	%aux3273 = load i32, i32* @Pivot8
	%aux3274 = sub i32 %aux3272, %aux3273
	%aux3275 = load i32, i32* @IdPos8
	%aux3276 = icmp eq i32 %aux3274, %aux3275
	br i1 %aux3276, label %etiq1567, label %etiq1568
	
	etiq1567:
	;___Asignacion___
	%aux3278 = load i32, i32* @_Acum15
	%aux3279 = add i32 0, 2
	%aux3280 = add i32 %aux3278, %aux3279
	store i32 %aux3280, i32* @_Acum15
	br label %etiq1571
	
	etiq1571:
	;___Asignacion___
	%aux3282 = load i32, i32* @IdPos8
	%aux3283 = add i32 0, 1
	%aux3284 = add i32 %aux3282, %aux3283
	store i32 %aux3284, i32* @IdPos8
	br label %etiq1573
	
	etiq1573:
	;___Asignacion___
	%aux3286 = load i32, i32* @Pivot8
	%aux3287 = add i32 0, 1
	%aux3288 = sub i32 %aux3286, %aux3287
	store i32 %aux3288, i32* @Pivot8
	br label %etiq1576
	
	etiq1568:
	;___Asignacion___
	%aux3290 = load i32, i32* @IdPos8
	%aux3291 = add i32 0, 1
	%aux3292 = add i32 %aux3290, %aux3291
	store i32 %aux3292, i32* @IdPos8
	br label %etiq1576
	
	etiq1545:
	;___DisplayCadenaCaracteres___
	%aux3293 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1576
	
	etiq1541:
	;___DisplayCadenaCaracteres___
	%aux3294 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1576
	
	etiq1538:
	;___DisplayCadenaCaracteres___
	%aux3295 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1576
	
	etiq1576:
	;___Asignacion___
	%aux3297 = load i32, i32* @_Acum15
	store i32 %aux3297, i32* @_Acum16
	br label %etiq1577
	
	etiq1577:
	%aux3298 = load i32, i32* @_Acum16
	%aux3299 = sub i32 0, %aux3298
	%aux3300 = add i32 0, 1
	%aux3301 = sub i32 0, %aux3300
	%aux3302 = mul i32 %aux3299, %aux3301
	%aux3303 = add i32 %aux3211, %aux3302
	store i32 %aux3303, i32* @_Acum19
	br label %etiq1579
	
	etiq1579:
	;___Asignacion___
	%aux3305 = load i32, i32* @IdPos10
	%aux3306 = add i32 0, 1
	%aux3307 = add i32 %aux3305, %aux3306
	store i32 %aux3307, i32* @IdPos10
	br label %etiq1581
	
	etiq1581:
	;___Asignacion___
	%aux3309 = load i32, i32* @Pivot10
	%aux3310 = add i32 0, 1
	%aux3311 = sub i32 %aux3309, %aux3310
	store i32 %aux3311, i32* @Pivot10
	br label %etiq1584
	
	etiq1532:
	;___Asignacion___
	%aux3313 = load i32, i32* @IdPos10
	%aux3314 = add i32 0, 1
	%aux3315 = add i32 %aux3313, %aux3314
	store i32 %aux3315, i32* @IdPos10
	br label %etiq1584
	
	etiq1584:
	;___IfElse___
	%aux3317 = add i32 0, 100
	%aux3318 = load i32, i32* @Pivot10
	%aux3319 = sub i32 %aux3317, %aux3318
	%aux3320 = load i32, i32* @IdPos10
	%aux3321 = icmp eq i32 %aux3319, %aux3320
	br i1 %aux3321, label %etiq1585, label %etiq1586
	
	etiq1585:
	;___Asignacion___
	%aux3323 = load i32, i32* @_Acum19
	%aux3324 = add i32 0, 1
	%aux3325 = add i32 0, 2
	%aux3326 = add i32 %aux3324, %aux3325
	%aux3327 = add i32 0, 3
	%aux3328 = add i32 %aux3326, %aux3327
	%aux3329 = add i32 0, 4
	%aux3330 = add i32 %aux3328, %aux3329
	%aux3331 = add i32 0, 10
	%aux3332 = sdiv i32 %aux3330, %aux3331
	%aux3333 = add i32 %aux3323, %aux3332
	store i32 %aux3333, i32* @_Acum19
	br label %etiq1593
	
	etiq1593:
	;___Asignacion___
	%aux3335 = load i32, i32* @IdPos10
	%aux3336 = add i32 0, 1
	%aux3337 = add i32 %aux3335, %aux3336
	store i32 %aux3337, i32* @IdPos10
	br label %etiq1595
	
	etiq1595:
	;___Asignacion___
	%aux3339 = load i32, i32* @Pivot10
	%aux3340 = add i32 0, 1
	%aux3341 = sub i32 %aux3339, %aux3340
	store i32 %aux3341, i32* @Pivot10
	br label %etiq1598
	
	etiq1586:
	;___Asignacion___
	%aux3343 = load i32, i32* @IdPos10
	%aux3344 = add i32 0, 1
	%aux3345 = add i32 %aux3343, %aux3344
	store i32 %aux3345, i32* @IdPos10
	br label %etiq1598
	
	etiq1598:
	;___IfElse___
	%aux3347 = add i32 0, 100
	%aux3348 = load i32, i32* @Pivot10
	%aux3349 = sub i32 %aux3347, %aux3348
	%aux3350 = load i32, i32* @IdPos10
	%aux3351 = icmp eq i32 %aux3349, %aux3350
	br i1 %aux3351, label %etiq1599, label %etiq1600
	
	etiq1599:
	;___Asignacion___
	%aux3353 = load i32, i32* @_Acum19
	%aux3354 = add i32 0, 50
	%aux3355 = add i32 0, 50
	%aux3356 = sdiv i32 %aux3354, %aux3355
	%aux3357 = add i32 %aux3353, %aux3356
	store i32 %aux3357, i32* @_Acum19
	br label %etiq1604
	
	etiq1604:
	;___Asignacion___
	%aux3359 = load i32, i32* @IdPos10
	%aux3360 = add i32 0, 1
	%aux3361 = add i32 %aux3359, %aux3360
	store i32 %aux3361, i32* @IdPos10
	br label %etiq1606
	
	etiq1606:
	;___Asignacion___
	%aux3363 = load i32, i32* @Pivot10
	%aux3364 = add i32 0, 1
	%aux3365 = sub i32 %aux3363, %aux3364
	store i32 %aux3365, i32* @Pivot10
	br label %etiq1609
	
	etiq1600:
	;___Asignacion___
	%aux3367 = load i32, i32* @IdPos10
	%aux3368 = add i32 0, 1
	%aux3369 = add i32 %aux3367, %aux3368
	store i32 %aux3369, i32* @IdPos10
	br label %etiq1609
	
	etiq1609:
	;___IfElse___
	%aux3371 = add i32 0, 100
	%aux3372 = load i32, i32* @Pivot10
	%aux3373 = sub i32 %aux3371, %aux3372
	%aux3374 = load i32, i32* @IdPos10
	%aux3375 = icmp eq i32 %aux3373, %aux3374
	br i1 %aux3375, label %etiq1610, label %etiq1611
	
	etiq1610:
	;___Asignacion___
	%aux3377 = load i32, i32* @_Acum19
	%aux3378 = add i32 0, 50000
	%aux3379 = add i32 0, 49999
	%aux3380 = sub i32 %aux3378, %aux3379
	%aux3381 = add i32 %aux3377, %aux3380
	store i32 %aux3381, i32* @_Acum19
	br label %etiq1615
	
	etiq1615:
	;___Asignacion___
	%aux3383 = load i32, i32* @IdPos10
	%aux3384 = add i32 0, 1
	%aux3385 = add i32 %aux3383, %aux3384
	store i32 %aux3385, i32* @IdPos10
	br label %etiq1617
	
	etiq1617:
	;___Asignacion___
	%aux3387 = load i32, i32* @Pivot10
	%aux3388 = add i32 0, 1
	%aux3389 = sub i32 %aux3387, %aux3388
	store i32 %aux3389, i32* @Pivot10
	br label %etiq1620
	
	etiq1611:
	;___Asignacion___
	%aux3391 = load i32, i32* @IdPos10
	%aux3392 = add i32 0, 1
	%aux3393 = add i32 %aux3391, %aux3392
	store i32 %aux3393, i32* @IdPos10
	br label %etiq1620
	
	etiq1620:
	;___IfElse___
	%aux3395 = add i32 0, 100
	%aux3396 = load i32, i32* @Pivot10
	%aux3397 = sub i32 %aux3395, %aux3396
	%aux3398 = load i32, i32* @IdPos10
	%aux3399 = icmp eq i32 %aux3397, %aux3398
	br i1 %aux3399, label %etiq1621, label %etiq1622
	
	etiq1621:
	;___Asignacion___
	%aux3401 = load i32, i32* @_Acum19
	%aux3402 = add i32 0, 2
	%aux3403 = add i32 0, 1
	%aux3404 = sub i32 %aux3402, %aux3403
	%aux3405 = add i32 %aux3401, %aux3404
	store i32 %aux3405, i32* @_Acum19
	br label %etiq1626
	
	etiq1626:
	;___Asignacion___
	%aux3407 = load i32, i32* @IdPos10
	%aux3408 = add i32 0, 1
	%aux3409 = add i32 %aux3407, %aux3408
	store i32 %aux3409, i32* @IdPos10
	br label %etiq1628
	
	etiq1628:
	;___Asignacion___
	%aux3411 = load i32, i32* @Pivot10
	%aux3412 = add i32 0, 1
	%aux3413 = sub i32 %aux3411, %aux3412
	store i32 %aux3413, i32* @Pivot10
	br label %etiq1631
	
	etiq1622:
	;___Asignacion___
	%aux3415 = load i32, i32* @IdPos10
	%aux3416 = add i32 0, 1
	%aux3417 = add i32 %aux3415, %aux3416
	store i32 %aux3417, i32* @IdPos10
	br label %etiq1631
	
	etiq1631:
	;___IfElse___
	%aux3419 = add i32 0, 100
	%aux3420 = load i32, i32* @Pivot10
	%aux3421 = sub i32 %aux3419, %aux3420
	%aux3422 = load i32, i32* @IdPos10
	%aux3423 = icmp eq i32 %aux3421, %aux3422
	br i1 %aux3423, label %etiq1632, label %etiq1633
	
	etiq1632:
	;___Asignacion___
	%aux3425 = load i32, i32* @_Acum19
	%aux3426 = add i32 0, 1
	%aux3427 = add i32 0, 1
	%aux3428 = mul i32 %aux3426, %aux3427
	%aux3429 = add i32 %aux3425, %aux3428
	store i32 %aux3429, i32* @_Acum19
	br label %etiq1637
	
	etiq1637:
	;___Asignacion___
	%aux3431 = load i32, i32* @IdPos10
	%aux3432 = add i32 0, 1
	%aux3433 = add i32 %aux3431, %aux3432
	store i32 %aux3433, i32* @IdPos10
	br label %etiq1639
	
	etiq1639:
	;___Asignacion___
	%aux3435 = load i32, i32* @Pivot10
	%aux3436 = add i32 0, 1
	%aux3437 = sub i32 %aux3435, %aux3436
	store i32 %aux3437, i32* @Pivot10
	br label %etiq1642
	
	etiq1633:
	;___Asignacion___
	%aux3439 = load i32, i32* @IdPos10
	%aux3440 = add i32 0, 1
	%aux3441 = add i32 %aux3439, %aux3440
	store i32 %aux3441, i32* @IdPos10
	br label %etiq1642
	
	etiq1642:
	;___IfElse___
	%aux3443 = add i32 0, 100
	%aux3444 = load i32, i32* @Pivot10
	%aux3445 = sub i32 %aux3443, %aux3444
	%aux3446 = load i32, i32* @IdPos10
	%aux3447 = icmp eq i32 %aux3445, %aux3446
	br i1 %aux3447, label %etiq1643, label %etiq1644
	
	etiq1643:
	;___Asignacion___
	%aux3449 = load i32, i32* @_Acum19
	%aux3450 = add i32 0, 1
	%aux3451 = add i32 0, 0
	%aux3452 = add i32 %aux3450, %aux3451
	%aux3453 = add i32 %aux3449, %aux3452
	store i32 %aux3453, i32* @_Acum19
	br label %etiq1648
	
	etiq1648:
	;___Asignacion___
	%aux3455 = load i32, i32* @IdPos10
	%aux3456 = add i32 0, 1
	%aux3457 = add i32 %aux3455, %aux3456
	store i32 %aux3457, i32* @IdPos10
	br label %etiq1650
	
	etiq1650:
	;___Asignacion___
	%aux3459 = load i32, i32* @Pivot10
	%aux3460 = add i32 0, 1
	%aux3461 = sub i32 %aux3459, %aux3460
	store i32 %aux3461, i32* @Pivot10
	br label %etiq1653
	
	etiq1644:
	;___Asignacion___
	%aux3463 = load i32, i32* @IdPos10
	%aux3464 = add i32 0, 1
	%aux3465 = add i32 %aux3463, %aux3464
	store i32 %aux3465, i32* @IdPos10
	br label %etiq1653
	
	etiq1653:
	;___IfElse___
	%aux3467 = add i32 0, 100
	%aux3468 = load i32, i32* @Pivot10
	%aux3469 = sub i32 %aux3467, %aux3468
	%aux3470 = load i32, i32* @IdPos10
	%aux3471 = icmp eq i32 %aux3469, %aux3470
	br i1 %aux3471, label %etiq1654, label %etiq1655
	
	etiq1654:
	;___Asignacion___
	%aux3473 = load i32, i32* @_Acum19
	%aux3474 = load i32, i32* @_Acum18
	%aux3475 = add i32 %aux3473, %aux3474
	store i32 %aux3475, i32* @_Acum19
	br label %etiq1657
	
	etiq1657:
	;___Asignacion___
	%aux3477 = load i32, i32* @IdPos10
	%aux3478 = add i32 0, 1
	%aux3479 = add i32 %aux3477, %aux3478
	store i32 %aux3479, i32* @IdPos10
	br label %etiq1659
	
	etiq1659:
	;___Asignacion___
	%aux3481 = load i32, i32* @Pivot10
	%aux3482 = add i32 0, 1
	%aux3483 = sub i32 %aux3481, %aux3482
	store i32 %aux3483, i32* @Pivot10
	br label %etiq1662
	
	etiq1655:
	;___Asignacion___
	%aux3485 = load i32, i32* @IdPos10
	%aux3486 = add i32 0, 1
	%aux3487 = add i32 %aux3485, %aux3486
	store i32 %aux3487, i32* @IdPos10
	br label %etiq1662
	
	etiq338:
	;___DisplayCadenaCaracteres___
	%aux3488 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1662
	
	etiq334:
	;___DisplayCadenaCaracteres___
	%aux3489 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1662
	
	etiq331:
	;___DisplayCadenaCaracteres___
	%aux3490 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1662
	
	etiq1662:
	;___Asignacion___
	%aux3492 = load i32, i32* @_Acum19
	store i32 %aux3492, i32* @res
	br label %etiq1663
	
	etiq1663:
	;___DisplayCadenaCaracteres___
	%aux3493 = call i32 @puts(i8* getelementptr ([12 x i8], [12 x i8] * @str61, i32 0, i32 0))
	br label %etiq1664
	
	etiq1664:
	;___DisplayExpresion___
	%aux3495 = load i32, i32* @res
	%aux3494 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux3495)
	br label %etiq1665
	
	etiq1665:
	;___DisplayCadenaCaracteres___
	%aux3496 = call i32 @puts(i8* getelementptr ([28 x i8], [28 x i8] * @str62, i32 0, i32 0))
	br label %etiq1666
	
	etiq1666:
	;___DisplayCadenaCaracteres___
	%aux3497 = call i32 @puts(i8* getelementptr ([30 x i8], [30 x i8] * @str63, i32 0, i32 0))
	br label %etiq1667
	
	etiq1667:
	;___Asignacion___
	%aux3499 = alloca double
	%aux3500 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux3499)
	%aux3501 = load double, double* %aux3499
	store double %aux3501, double* @peso
	br label %etiq1668
	
	etiq1668:
	;___DisplayCadenaCaracteres___
	%aux3502 = call i32 @puts(i8* getelementptr ([32 x i8], [32 x i8] * @str64, i32 0, i32 0))
	br label %etiq1669
	
	etiq1669:
	;___Asignacion___
	%aux3504 = alloca double
	%aux3505 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux3504)
	%aux3506 = load double, double* %aux3504
	store double %aux3506, double* @altura
	br label %etiq1670
	
	etiq1670:
	;___Asignacion___
	%aux3508 = add i1 0, 1
	store i1 %aux3508, i1* @aux2
	br label %etiq1671
	
	etiq1671:
	;___While___
	%aux3510 = load i1, i1* @aux2
	br i1 %aux3510, label %etiq1672, label %etiq1705
	
	etiq1672:
	;___DisplayCadenaCaracteres___
	%aux3511 = call i32 @puts(i8* getelementptr ([90 x i8], [90 x i8] * @str65, i32 0, i32 0))
	br label %etiq1674
	
	etiq1674:
	;___Asignacion___
	%aux3513 = alloca i32
	%aux3514 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux3513)
	%aux3515 = load i32, i32* %aux3513
	store i32 %aux3515, i32* @res
	br label %etiq1675
	
	etiq1675:
	;___IfElse___
	%aux3517 = load i32, i32* @res
	%aux3518 = add i32 0, 1
	%aux3519 = icmp eq i32 %aux3517, %aux3518
	br i1 %aux3519, label %etiq1677, label %etiq1678
	
	etiq1677:
	;___DisplayCadenaCaracteres___
	%aux3520 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str66, i32 0, i32 0))
	br label %etiq1680
	
	etiq1680:
	;___DisplayExpresion___
	%aux3522 = load double, double* @peso
	%aux3523 = load double, double* @altura
	%aux3524 = fmul double %aux3522, %aux3523
	%aux3525 = load i32, i32* @edad
	%aux3526 = sitofp i32 %aux3525 to double
	%aux3527 = fmul double %aux3524, %aux3526
	%aux3521 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3527)
	br label %etiq1682
	
	etiq1682:
	;___Asignacion___
	%aux3529 = load i1, i1* @aux2
	%aux3530 = xor i1 %aux3529, 1
	store i1 %aux3530, i1* @aux2
	br label %etiq1671
	
	etiq1678:
	;___IfElse___
	%aux3532 = load i32, i32* @res
	%aux3533 = add i32 0, 2
	%aux3534 = icmp eq i32 %aux3532, %aux3533
	br i1 %aux3534, label %etiq1684, label %etiq1685
	
	etiq1684:
	;___DisplayCadenaCaracteres___
	%aux3535 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str67, i32 0, i32 0))
	br label %etiq1687
	
	etiq1687:
	;___DisplayExpresion___
	%aux3537 = load double, double* @peso
	%aux3538 = load double, double* @altura
	%aux3539 = fdiv double %aux3537, %aux3538
	%aux3540 = load i32, i32* @edad
	%aux3541 = sitofp i32 %aux3540 to double
	%aux3542 = fdiv double %aux3539, %aux3541
	%aux3536 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3542)
	br label %etiq1689
	
	etiq1689:
	;___Asignacion___
	%aux3544 = load i1, i1* @aux2
	%aux3545 = xor i1 %aux3544, 1
	store i1 %aux3545, i1* @aux2
	br label %etiq1671
	
	etiq1685:
	;___IfElse___
	%aux3547 = load i32, i32* @res
	%aux3548 = add i32 0, 3
	%aux3549 = icmp eq i32 %aux3547, %aux3548
	br i1 %aux3549, label %etiq1691, label %etiq1692
	
	etiq1691:
	;___DisplayCadenaCaracteres___
	%aux3550 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str68, i32 0, i32 0))
	br label %etiq1694
	
	etiq1694:
	;___DisplayExpresion___
	%aux3552 = load double, double* @peso
	%aux3553 = load double, double* @altura
	%aux3554 = fadd double %aux3552, %aux3553
	%aux3555 = load i32, i32* @edad
	%aux3556 = sitofp i32 %aux3555 to double
	%aux3557 = fadd double %aux3554, %aux3556
	%aux3551 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3557)
	br label %etiq1696
	
	etiq1696:
	;___Asignacion___
	%aux3559 = load i1, i1* @aux2
	%aux3560 = xor i1 %aux3559, 1
	store i1 %aux3560, i1* @aux2
	br label %etiq1671
	
	etiq1692:
	;___IfElse___
	%aux3562 = load i32, i32* @res
	%aux3563 = add i32 0, 4
	%aux3564 = icmp eq i32 %aux3562, %aux3563
	br i1 %aux3564, label %etiq1698, label %etiq1699
	
	etiq1698:
	;___DisplayCadenaCaracteres___
	%aux3565 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str69, i32 0, i32 0))
	br label %etiq1701
	
	etiq1701:
	;___DisplayExpresion___
	%aux3567 = load double, double* @peso
	%aux3568 = load double, double* @altura
	%aux3569 = fsub double %aux3567, %aux3568
	%aux3570 = load i32, i32* @edad
	%aux3571 = sitofp i32 %aux3570 to double
	%aux3572 = fsub double %aux3569, %aux3571
	%aux3566 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux3572)
	br label %etiq1703
	
	etiq1703:
	;___Asignacion___
	%aux3574 = load i1, i1* @aux2
	%aux3575 = xor i1 %aux3574, 1
	store i1 %aux3575, i1* @aux2
	br label %etiq1671
	
	etiq1699:
	;___DisplayCadenaCaracteres___
	%aux3576 = call i32 @puts(i8* getelementptr ([60 x i8], [60 x i8] * @str70, i32 0, i32 0))
	br label %etiq1671
	
	etiq1705:
	;___DisplayCadenaCaracteres___
	%aux3577 = call i32 @puts(i8* getelementptr ([46 x i8], [46 x i8] * @str71, i32 0, i32 0))
	br label %etiq1706
	
	etiq1706:
	;___Asignacion___
	%aux3579 = alloca i32
	%aux3580 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux3579)
	%aux3581 = load i32, i32* %aux3579
	%aux3582 = trunc i32 %aux3581 to i1
	store i1 %aux3582, i1* @aux
	br label %etiq3
	
	etiq1708:
	ret i32 0
}

