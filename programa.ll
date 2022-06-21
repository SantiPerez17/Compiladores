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
@_Acum10 = global i32 0
@_Acum11 = global i32 0
@_Acum12 = global i32 0
@_Acum13 = global i32 0
@_Acum14 = global i32 0
@_Acum2 = global i32 0
@_Acum3 = global i32 0
@_Acum4 = global i32 0
@_Acum5 = global i32 0
@_Acum6 = global i32 0
@_Acum7 = global i32 0
@_Acum8 = global i32 0
@_Acum9 = global i32 0
@_IdPos1 = global i32 0
@_IdPos2 = global i32 0
@_IdPos3 = global i32 0
@_IdPos4 = global i32 0
@_IdPos5 = global i32 0
@_IdPos6 = global i32 0
@_IdPos7 = global i32 0
@_Pivot1 = global i32 0
@_Pivot2 = global i32 0
@_Pivot3 = global i32 0
@_Pivot4 = global i32 0
@_Pivot5 = global i32 0
@_Pivot6 = global i32 0
@_Pivot7 = global i32 0
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
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@na = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___Asignacion___
	%aux2 = add i32 0, 1
	store i32 %aux2, i32* @pivot
	br label %etiq2
	
	etiq2:
	;___Asignacion___
	%aux5 = add i32 0, 0
	store i32 %aux5, i32* @_Acum1
	br label %etiq3
	
	etiq3:
	;___Asignacion___
	%aux7 = add i32 0, 0
	store i32 %aux7, i32* @_Acum2
	br label %etiq4
	
	etiq4:
	;___Asignacion___
	%aux9 = load i32, i32* @pivot
	store i32 %aux9, i32* @_Pivot1
	br label %etiq5
	
	etiq5:
	;___IfElse___
	%aux11 = load i32, i32* @_Pivot1
	%aux12 = add i32 0, 1
	%aux13 = icmp sge i32 %aux11, %aux12
	br i1 %aux13, label %etiq7, label %etiq8
	
	etiq7:
	;___IfElse___
	%aux15 = add i32 0, 1
	%aux16 = load i32, i32* @_Pivot1
	%aux17 = icmp sge i32 %aux15, %aux16
	br i1 %aux17, label %etiq10, label %etiq11
	
	etiq10:
	;___IfElse___
	%aux19 = add i32 0, 1
	%aux20 = add i32 0, 0
	%aux21 = icmp sgt i32 %aux19, %aux20
	br i1 %aux21, label %etiq14, label %etiq15
	
	etiq14:
	;___IfElse___
	%aux23 = add i32 0, 1
	%aux24 = load i32, i32* @_Pivot1
	%aux25 = sub i32 %aux23, %aux24
	%aux26 = load i32, i32* @_IdPos1
	%aux27 = icmp eq i32 %aux25, %aux26
	br i1 %aux27, label %etiq17, label %etiq18
	
	etiq17:
	;___Asignacion___
	%aux29 = load i32, i32* @_Acum1
	%aux30 = add i32 0, 1
	%aux31 = add i32 %aux29, %aux30
	store i32 %aux31, i32* @_Acum1
	br label %etiq21
	
	etiq21:
	;___Asignacion___
	%aux33 = load i32, i32* @_IdPos1
	%aux34 = add i32 0, 1
	%aux35 = add i32 %aux33, %aux34
	store i32 %aux35, i32* @_IdPos1
	br label %etiq23
	
	etiq23:
	;___Asignacion___
	%aux37 = load i32, i32* @_Pivot1
	%aux38 = add i32 0, 1
	%aux39 = sub i32 %aux37, %aux38
	store i32 %aux39, i32* @_Pivot1
	br label %etiq26
	
	etiq18:
	;___Asignacion___
	%aux41 = load i32, i32* @_IdPos1
	%aux42 = add i32 0, 1
	%aux43 = add i32 %aux41, %aux42
	store i32 %aux43, i32* @_IdPos1
	br label %etiq26
	
	etiq15:
	;___DisplayCadenaCaracteres___
	%aux44 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq26
	
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux45 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq26
	
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux46 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq26
	
	etiq26:
	;___Asignacion___
	%aux48 = load i32, i32* @_Acum1
	store i32 %aux48, i32* @_Acum2
	br label %etiq27
	
	etiq27:
	;___Asignacion___
	%aux50 = load i32, i32* @pivot
	store i32 %aux50, i32* @_Pivot1
	br label %etiq28
	
	etiq28:
	;___Asignacion___
	%aux52 = add i32 0, 0
	store i32 %aux52, i32* @_IdPos1
	br label %etiq29
	
	etiq29:
	%aux53 = load i32, i32* @_Acum2
	%aux54 = sub i32 0, %aux53
	store i32 %aux54, i32* @res
	br label %etiq30
	
	etiq30:
	;___Asignacion___
	%aux56 = add i32 0, 1
	br label %etiq31
	
	etiq31:
	;___Asignacion___
	%aux58 = add i32 0, 0
	store i32 %aux58, i32* @_Acum3
	br label %etiq32
	
	etiq32:
	;___Asignacion___
	%aux60 = add i32 0, 0
	store i32 %aux60, i32* @_Acum4
	br label %etiq33
	
	etiq33:
	;___Asignacion___
	%aux62 = add i32 0, 2
	store i32 %aux62, i32* @_Pivot2
	br label %etiq34
	
	etiq34:
	;___IfElse___
	%aux64 = load i32, i32* @_Pivot2
	%aux65 = add i32 0, 1
	%aux66 = icmp sge i32 %aux64, %aux65
	br i1 %aux66, label %etiq36, label %etiq37
	
	etiq36:
	;___IfElse___
	%aux68 = add i32 0, 2
	%aux69 = load i32, i32* @_Pivot2
	%aux70 = icmp sge i32 %aux68, %aux69
	br i1 %aux70, label %etiq39, label %etiq40
	
	etiq39:
	;___IfElse___
	%aux72 = add i32 0, 2
	%aux73 = add i32 0, 0
	%aux74 = icmp sgt i32 %aux72, %aux73
	br i1 %aux74, label %etiq43, label %etiq44
	
	etiq43:
	;___IfElse___
	%aux76 = add i32 0, 2
	%aux77 = load i32, i32* @_Pivot2
	%aux78 = sub i32 %aux76, %aux77
	%aux79 = load i32, i32* @_IdPos2
	%aux80 = icmp eq i32 %aux78, %aux79
	br i1 %aux80, label %etiq46, label %etiq47
	
	etiq46:
	;___Asignacion___
	%aux82 = load i32, i32* @_Acum3
	%aux83 = add i32 0, 1
	%aux84 = add i32 %aux82, %aux83
	store i32 %aux84, i32* @_Acum3
	br label %etiq50
	
	etiq50:
	;___Asignacion___
	%aux86 = load i32, i32* @_IdPos2
	%aux87 = add i32 0, 1
	%aux88 = add i32 %aux86, %aux87
	store i32 %aux88, i32* @_IdPos2
	br label %etiq52
	
	etiq52:
	;___Asignacion___
	%aux90 = load i32, i32* @_Pivot2
	%aux91 = add i32 0, 1
	%aux92 = sub i32 %aux90, %aux91
	store i32 %aux92, i32* @_Pivot2
	br label %etiq55
	
	etiq47:
	;___Asignacion___
	%aux94 = load i32, i32* @_IdPos2
	%aux95 = add i32 0, 1
	%aux96 = add i32 %aux94, %aux95
	store i32 %aux96, i32* @_IdPos2
	br label %etiq55
	
	etiq55:
	;___IfElse___
	%aux98 = add i32 0, 2
	%aux99 = load i32, i32* @_Pivot2
	%aux100 = sub i32 %aux98, %aux99
	%aux101 = load i32, i32* @_IdPos2
	%aux102 = icmp eq i32 %aux100, %aux101
	br i1 %aux102, label %etiq56, label %etiq57
	
	etiq56:
	;___Asignacion___
	%aux104 = load i32, i32* @_Acum3
	%aux105 = add i32 0, 2
	%aux106 = add i32 %aux104, %aux105
	store i32 %aux106, i32* @_Acum3
	br label %etiq60
	
	etiq60:
	;___Asignacion___
	%aux108 = load i32, i32* @_IdPos2
	%aux109 = add i32 0, 1
	%aux110 = add i32 %aux108, %aux109
	store i32 %aux110, i32* @_IdPos2
	br label %etiq62
	
	etiq62:
	;___Asignacion___
	%aux112 = load i32, i32* @_Pivot2
	%aux113 = add i32 0, 1
	%aux114 = sub i32 %aux112, %aux113
	store i32 %aux114, i32* @_Pivot2
	br label %etiq65
	
	etiq57:
	;___Asignacion___
	%aux116 = load i32, i32* @_IdPos2
	%aux117 = add i32 0, 1
	%aux118 = add i32 %aux116, %aux117
	store i32 %aux118, i32* @_IdPos2
	br label %etiq65
	
	etiq44:
	;___DisplayCadenaCaracteres___
	%aux119 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq65
	
	etiq40:
	;___DisplayCadenaCaracteres___
	%aux120 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq65
	
	etiq37:
	;___DisplayCadenaCaracteres___
	%aux121 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq65
	
	etiq65:
	;___Asignacion___
	%aux123 = load i32, i32* @_Acum3
	store i32 %aux123, i32* @_Acum4
	br label %etiq66
	
	etiq66:
	;___Asignacion___
	%aux125 = add i32 0, 2
	store i32 %aux125, i32* @_Pivot2
	br label %etiq67
	
	etiq67:
	;___Asignacion___
	%aux127 = add i32 0, 0
	store i32 %aux127, i32* @_IdPos2
	br label %etiq68
	
	etiq68:
	%aux128 = load i32, i32* @_Acum4
	%aux129 = add i32 %aux56, %aux128
	store i32 %aux129, i32* @res2
	br label %etiq69
	
	etiq69:
	;___Asignacion___
	%aux132 = add i32 0, 0
	store i32 %aux132, i32* @_Acum5
	br label %etiq70
	
	etiq70:
	;___Asignacion___
	%aux134 = add i32 0, 0
	store i32 %aux134, i32* @_Acum6
	br label %etiq71
	
	etiq71:
	;___Asignacion___
	%aux136 = add i32 0, 3
	store i32 %aux136, i32* @_Pivot3
	br label %etiq72
	
	etiq72:
	;___IfElse___
	%aux138 = load i32, i32* @_Pivot3
	%aux139 = add i32 0, 1
	%aux140 = icmp sge i32 %aux138, %aux139
	br i1 %aux140, label %etiq74, label %etiq75
	
	etiq74:
	;___IfElse___
	%aux142 = add i32 0, 3
	%aux143 = load i32, i32* @_Pivot3
	%aux144 = icmp sge i32 %aux142, %aux143
	br i1 %aux144, label %etiq77, label %etiq78
	
	etiq77:
	;___IfElse___
	%aux146 = add i32 0, 3
	%aux147 = add i32 0, 0
	%aux148 = icmp sgt i32 %aux146, %aux147
	br i1 %aux148, label %etiq81, label %etiq82
	
	etiq81:
	;___IfElse___
	%aux150 = add i32 0, 3
	%aux151 = load i32, i32* @_Pivot3
	%aux152 = sub i32 %aux150, %aux151
	%aux153 = load i32, i32* @_IdPos3
	%aux154 = icmp eq i32 %aux152, %aux153
	br i1 %aux154, label %etiq84, label %etiq85
	
	etiq84:
	;___Asignacion___
	%aux156 = load i32, i32* @_Acum5
	%aux157 = add i32 0, 4
	%aux158 = add i32 %aux156, %aux157
	store i32 %aux158, i32* @_Acum5
	br label %etiq88
	
	etiq88:
	;___Asignacion___
	%aux160 = load i32, i32* @_IdPos3
	%aux161 = add i32 0, 1
	%aux162 = add i32 %aux160, %aux161
	store i32 %aux162, i32* @_IdPos3
	br label %etiq90
	
	etiq90:
	;___Asignacion___
	%aux164 = load i32, i32* @_Pivot3
	%aux165 = add i32 0, 1
	%aux166 = sub i32 %aux164, %aux165
	store i32 %aux166, i32* @_Pivot3
	br label %etiq93
	
	etiq85:
	;___Asignacion___
	%aux168 = load i32, i32* @_IdPos3
	%aux169 = add i32 0, 1
	%aux170 = add i32 %aux168, %aux169
	store i32 %aux170, i32* @_IdPos3
	br label %etiq93
	
	etiq93:
	;___IfElse___
	%aux172 = add i32 0, 3
	%aux173 = load i32, i32* @_Pivot3
	%aux174 = sub i32 %aux172, %aux173
	%aux175 = load i32, i32* @_IdPos3
	%aux176 = icmp eq i32 %aux174, %aux175
	br i1 %aux176, label %etiq94, label %etiq95
	
	etiq94:
	;___Asignacion___
	%aux178 = load i32, i32* @_Acum5
	%aux179 = add i32 0, 5
	%aux180 = add i32 %aux178, %aux179
	store i32 %aux180, i32* @_Acum5
	br label %etiq98
	
	etiq98:
	;___Asignacion___
	%aux182 = load i32, i32* @_IdPos3
	%aux183 = add i32 0, 1
	%aux184 = add i32 %aux182, %aux183
	store i32 %aux184, i32* @_IdPos3
	br label %etiq100
	
	etiq100:
	;___Asignacion___
	%aux186 = load i32, i32* @_Pivot3
	%aux187 = add i32 0, 1
	%aux188 = sub i32 %aux186, %aux187
	store i32 %aux188, i32* @_Pivot3
	br label %etiq103
	
	etiq95:
	;___Asignacion___
	%aux190 = load i32, i32* @_IdPos3
	%aux191 = add i32 0, 1
	%aux192 = add i32 %aux190, %aux191
	store i32 %aux192, i32* @_IdPos3
	br label %etiq103
	
	etiq103:
	;___IfElse___
	%aux194 = add i32 0, 3
	%aux195 = load i32, i32* @_Pivot3
	%aux196 = sub i32 %aux194, %aux195
	%aux197 = load i32, i32* @_IdPos3
	%aux198 = icmp eq i32 %aux196, %aux197
	br i1 %aux198, label %etiq104, label %etiq105
	
	etiq104:
	;___Asignacion___
	%aux200 = load i32, i32* @_Acum5
	%aux201 = add i32 0, 6
	%aux202 = add i32 %aux200, %aux201
	store i32 %aux202, i32* @_Acum5
	br label %etiq108
	
	etiq108:
	;___Asignacion___
	%aux204 = load i32, i32* @_IdPos3
	%aux205 = add i32 0, 1
	%aux206 = add i32 %aux204, %aux205
	store i32 %aux206, i32* @_IdPos3
	br label %etiq110
	
	etiq110:
	;___Asignacion___
	%aux208 = load i32, i32* @_Pivot3
	%aux209 = add i32 0, 1
	%aux210 = sub i32 %aux208, %aux209
	store i32 %aux210, i32* @_Pivot3
	br label %etiq113
	
	etiq105:
	;___Asignacion___
	%aux212 = load i32, i32* @_IdPos3
	%aux213 = add i32 0, 1
	%aux214 = add i32 %aux212, %aux213
	store i32 %aux214, i32* @_IdPos3
	br label %etiq113
	
	etiq82:
	;___DisplayCadenaCaracteres___
	%aux215 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq113
	
	etiq78:
	;___DisplayCadenaCaracteres___
	%aux216 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq113
	
	etiq75:
	;___DisplayCadenaCaracteres___
	%aux217 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq113
	
	etiq113:
	;___Asignacion___
	%aux219 = load i32, i32* @_Acum5
	store i32 %aux219, i32* @_Acum6
	br label %etiq114
	
	etiq114:
	;___Asignacion___
	%aux221 = add i32 0, 3
	store i32 %aux221, i32* @_Pivot3
	br label %etiq115
	
	etiq115:
	;___Asignacion___
	%aux223 = add i32 0, 0
	store i32 %aux223, i32* @_IdPos3
	br label %etiq116
	
	etiq116:
	;___Asignacion___
	%aux225 = add i32 0, 0
	store i32 %aux225, i32* @_Acum7
	br label %etiq117
	
	etiq117:
	;___Asignacion___
	%aux227 = add i32 0, 0
	store i32 %aux227, i32* @_Acum8
	br label %etiq118
	
	etiq118:
	;___Asignacion___
	%aux229 = add i32 0, 1
	store i32 %aux229, i32* @_Pivot4
	br label %etiq119
	
	etiq119:
	;___IfElse___
	%aux231 = load i32, i32* @_Pivot4
	%aux232 = add i32 0, 1
	%aux233 = icmp sge i32 %aux231, %aux232
	br i1 %aux233, label %etiq121, label %etiq122
	
	etiq121:
	;___IfElse___
	%aux235 = add i32 0, 2
	%aux236 = load i32, i32* @_Pivot4
	%aux237 = icmp sge i32 %aux235, %aux236
	br i1 %aux237, label %etiq124, label %etiq125
	
	etiq124:
	;___IfElse___
	%aux239 = add i32 0, 2
	%aux240 = add i32 0, 0
	%aux241 = icmp sgt i32 %aux239, %aux240
	br i1 %aux241, label %etiq128, label %etiq129
	
	etiq128:
	;___IfElse___
	%aux243 = add i32 0, 2
	%aux244 = load i32, i32* @_Pivot4
	%aux245 = sub i32 %aux243, %aux244
	%aux246 = load i32, i32* @_IdPos4
	%aux247 = icmp eq i32 %aux245, %aux246
	br i1 %aux247, label %etiq131, label %etiq132
	
	etiq131:
	;___Asignacion___
	%aux249 = load i32, i32* @_Acum7
	%aux250 = add i32 0, 2
	%aux251 = add i32 %aux249, %aux250
	store i32 %aux251, i32* @_Acum7
	br label %etiq135
	
	etiq135:
	;___Asignacion___
	%aux253 = load i32, i32* @_IdPos4
	%aux254 = add i32 0, 1
	%aux255 = add i32 %aux253, %aux254
	store i32 %aux255, i32* @_IdPos4
	br label %etiq137
	
	etiq137:
	;___Asignacion___
	%aux257 = load i32, i32* @_Pivot4
	%aux258 = add i32 0, 1
	%aux259 = sub i32 %aux257, %aux258
	store i32 %aux259, i32* @_Pivot4
	br label %etiq140
	
	etiq132:
	;___Asignacion___
	%aux261 = load i32, i32* @_IdPos4
	%aux262 = add i32 0, 1
	%aux263 = add i32 %aux261, %aux262
	store i32 %aux263, i32* @_IdPos4
	br label %etiq140
	
	etiq140:
	;___IfElse___
	%aux265 = add i32 0, 2
	%aux266 = load i32, i32* @_Pivot4
	%aux267 = sub i32 %aux265, %aux266
	%aux268 = load i32, i32* @_IdPos4
	%aux269 = icmp eq i32 %aux267, %aux268
	br i1 %aux269, label %etiq141, label %etiq142
	
	etiq141:
	;___Asignacion___
	%aux271 = load i32, i32* @_Acum7
	%aux272 = load i32, i32* @_Acum6
	%aux273 = add i32 %aux271, %aux272
	store i32 %aux273, i32* @_Acum7
	br label %etiq144
	
	etiq144:
	;___Asignacion___
	%aux275 = load i32, i32* @_IdPos4
	%aux276 = add i32 0, 1
	%aux277 = add i32 %aux275, %aux276
	store i32 %aux277, i32* @_IdPos4
	br label %etiq146
	
	etiq146:
	;___Asignacion___
	%aux279 = load i32, i32* @_Pivot4
	%aux280 = add i32 0, 1
	%aux281 = sub i32 %aux279, %aux280
	store i32 %aux281, i32* @_Pivot4
	br label %etiq149
	
	etiq142:
	;___Asignacion___
	%aux283 = load i32, i32* @_IdPos4
	%aux284 = add i32 0, 1
	%aux285 = add i32 %aux283, %aux284
	store i32 %aux285, i32* @_IdPos4
	br label %etiq149
	
	etiq129:
	;___DisplayCadenaCaracteres___
	%aux286 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq149
	
	etiq125:
	;___DisplayCadenaCaracteres___
	%aux287 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq149
	
	etiq122:
	;___DisplayCadenaCaracteres___
	%aux288 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq149
	
	etiq149:
	;___Asignacion___
	%aux290 = load i32, i32* @_Acum7
	store i32 %aux290, i32* @_Acum8
	br label %etiq150
	
	etiq150:
	;___Asignacion___
	%aux292 = add i32 0, 1
	store i32 %aux292, i32* @_Pivot4
	br label %etiq151
	
	etiq151:
	;___Asignacion___
	%aux294 = add i32 0, 0
	store i32 %aux294, i32* @_IdPos4
	br label %etiq152
	
	etiq152:
	%aux295 = load i32, i32* @_Acum8
	%aux296 = add i32 0, 1
	%aux297 = add i32 %aux295, %aux296
	store i32 %aux297, i32* @res3
	br label %etiq154
	
	etiq154:
	;___Asignacion___
	%aux300 = add i32 0, 0
	store i32 %aux300, i32* @_Acum9
	br label %etiq155
	
	etiq155:
	;___Asignacion___
	%aux302 = add i32 0, 0
	store i32 %aux302, i32* @_Acum10
	br label %etiq156
	
	etiq156:
	;___Asignacion___
	%aux304 = add i32 0, 2
	store i32 %aux304, i32* @_Pivot5
	br label %etiq157
	
	etiq157:
	;___IfElse___
	%aux306 = load i32, i32* @_Pivot5
	%aux307 = add i32 0, 1
	%aux308 = icmp sge i32 %aux306, %aux307
	br i1 %aux308, label %etiq159, label %etiq160
	
	etiq159:
	;___IfElse___
	%aux310 = add i32 0, 2
	%aux311 = load i32, i32* @_Pivot5
	%aux312 = icmp sge i32 %aux310, %aux311
	br i1 %aux312, label %etiq162, label %etiq163
	
	etiq162:
	;___IfElse___
	%aux314 = add i32 0, 2
	%aux315 = add i32 0, 0
	%aux316 = icmp sgt i32 %aux314, %aux315
	br i1 %aux316, label %etiq166, label %etiq167
	
	etiq166:
	;___IfElse___
	%aux318 = add i32 0, 2
	%aux319 = load i32, i32* @_Pivot5
	%aux320 = sub i32 %aux318, %aux319
	%aux321 = load i32, i32* @_IdPos5
	%aux322 = icmp eq i32 %aux320, %aux321
	br i1 %aux322, label %etiq169, label %etiq170
	
	etiq169:
	;___Asignacion___
	%aux324 = load i32, i32* @_Acum9
	%aux325 = add i32 0, 1
	%aux326 = add i32 %aux324, %aux325
	store i32 %aux326, i32* @_Acum9
	br label %etiq173
	
	etiq173:
	;___Asignacion___
	%aux328 = load i32, i32* @_IdPos5
	%aux329 = add i32 0, 1
	%aux330 = add i32 %aux328, %aux329
	store i32 %aux330, i32* @_IdPos5
	br label %etiq175
	
	etiq175:
	;___Asignacion___
	%aux332 = load i32, i32* @_Pivot5
	%aux333 = add i32 0, 1
	%aux334 = sub i32 %aux332, %aux333
	store i32 %aux334, i32* @_Pivot5
	br label %etiq178
	
	etiq170:
	;___Asignacion___
	%aux336 = load i32, i32* @_IdPos5
	%aux337 = add i32 0, 1
	%aux338 = add i32 %aux336, %aux337
	store i32 %aux338, i32* @_IdPos5
	br label %etiq178
	
	etiq178:
	;___IfElse___
	%aux340 = add i32 0, 2
	%aux341 = load i32, i32* @_Pivot5
	%aux342 = sub i32 %aux340, %aux341
	%aux343 = load i32, i32* @_IdPos5
	%aux344 = icmp eq i32 %aux342, %aux343
	br i1 %aux344, label %etiq179, label %etiq180
	
	etiq179:
	;___Asignacion___
	%aux346 = load i32, i32* @_Acum9
	%aux347 = add i32 0, 2
	%aux348 = add i32 %aux346, %aux347
	store i32 %aux348, i32* @_Acum9
	br label %etiq183
	
	etiq183:
	;___Asignacion___
	%aux350 = load i32, i32* @_IdPos5
	%aux351 = add i32 0, 1
	%aux352 = add i32 %aux350, %aux351
	store i32 %aux352, i32* @_IdPos5
	br label %etiq185
	
	etiq185:
	;___Asignacion___
	%aux354 = load i32, i32* @_Pivot5
	%aux355 = add i32 0, 1
	%aux356 = sub i32 %aux354, %aux355
	store i32 %aux356, i32* @_Pivot5
	br label %etiq188
	
	etiq180:
	;___Asignacion___
	%aux358 = load i32, i32* @_IdPos5
	%aux359 = add i32 0, 1
	%aux360 = add i32 %aux358, %aux359
	store i32 %aux360, i32* @_IdPos5
	br label %etiq188
	
	etiq167:
	;___DisplayCadenaCaracteres___
	%aux361 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq188
	
	etiq163:
	;___DisplayCadenaCaracteres___
	%aux362 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq188
	
	etiq160:
	;___DisplayCadenaCaracteres___
	%aux363 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq188
	
	etiq188:
	;___Asignacion___
	%aux365 = load i32, i32* @_Acum9
	store i32 %aux365, i32* @_Acum10
	br label %etiq189
	
	etiq189:
	;___Asignacion___
	%aux367 = add i32 0, 2
	store i32 %aux367, i32* @_Pivot5
	br label %etiq190
	
	etiq190:
	;___Asignacion___
	%aux369 = add i32 0, 0
	store i32 %aux369, i32* @_IdPos5
	br label %etiq191
	
	etiq191:
	;___Asignacion___
	%aux371 = add i32 0, 0
	store i32 %aux371, i32* @_Acum11
	br label %etiq192
	
	etiq192:
	;___Asignacion___
	%aux373 = add i32 0, 0
	store i32 %aux373, i32* @_Acum12
	br label %etiq193
	
	etiq193:
	;___Asignacion___
	%aux375 = add i32 0, 1
	store i32 %aux375, i32* @_Pivot6
	br label %etiq194
	
	etiq194:
	;___IfElse___
	%aux377 = load i32, i32* @_Pivot6
	%aux378 = add i32 0, 1
	%aux379 = icmp sge i32 %aux377, %aux378
	br i1 %aux379, label %etiq196, label %etiq197
	
	etiq196:
	;___IfElse___
	%aux381 = add i32 0, 2
	%aux382 = load i32, i32* @_Pivot6
	%aux383 = icmp sge i32 %aux381, %aux382
	br i1 %aux383, label %etiq199, label %etiq200
	
	etiq199:
	;___IfElse___
	%aux385 = add i32 0, 2
	%aux386 = add i32 0, 0
	%aux387 = icmp sgt i32 %aux385, %aux386
	br i1 %aux387, label %etiq203, label %etiq204
	
	etiq203:
	;___IfElse___
	%aux389 = add i32 0, 2
	%aux390 = load i32, i32* @_Pivot6
	%aux391 = sub i32 %aux389, %aux390
	%aux392 = load i32, i32* @_IdPos6
	%aux393 = icmp eq i32 %aux391, %aux392
	br i1 %aux393, label %etiq206, label %etiq207
	
	etiq206:
	;___Asignacion___
	%aux395 = load i32, i32* @_Acum11
	%aux396 = add i32 0, 1
	%aux397 = add i32 %aux395, %aux396
	store i32 %aux397, i32* @_Acum11
	br label %etiq210
	
	etiq210:
	;___Asignacion___
	%aux399 = load i32, i32* @_IdPos6
	%aux400 = add i32 0, 1
	%aux401 = add i32 %aux399, %aux400
	store i32 %aux401, i32* @_IdPos6
	br label %etiq212
	
	etiq212:
	;___Asignacion___
	%aux403 = load i32, i32* @_Pivot6
	%aux404 = add i32 0, 1
	%aux405 = sub i32 %aux403, %aux404
	store i32 %aux405, i32* @_Pivot6
	br label %etiq215
	
	etiq207:
	;___Asignacion___
	%aux407 = load i32, i32* @_IdPos6
	%aux408 = add i32 0, 1
	%aux409 = add i32 %aux407, %aux408
	store i32 %aux409, i32* @_IdPos6
	br label %etiq215
	
	etiq215:
	;___IfElse___
	%aux411 = add i32 0, 2
	%aux412 = load i32, i32* @_Pivot6
	%aux413 = sub i32 %aux411, %aux412
	%aux414 = load i32, i32* @_IdPos6
	%aux415 = icmp eq i32 %aux413, %aux414
	br i1 %aux415, label %etiq216, label %etiq217
	
	etiq216:
	;___Asignacion___
	%aux417 = load i32, i32* @_Acum11
	br label %etiq219
	
	etiq219:
	;___Asignacion___
	%aux419 = add i32 0, 0
	store i32 %aux419, i32* @_Acum9
	br label %etiq220
	
	etiq220:
	;___Asignacion___
	%aux421 = add i32 0, 0
	store i32 %aux421, i32* @_Acum10
	br label %etiq221
	
	etiq221:
	;___Asignacion___
	%aux423 = add i32 0, 2
	store i32 %aux423, i32* @_Pivot5
	br label %etiq222
	
	etiq222:
	;___IfElse___
	%aux425 = load i32, i32* @_Pivot5
	%aux426 = add i32 0, 1
	%aux427 = icmp sge i32 %aux425, %aux426
	br i1 %aux427, label %etiq224, label %etiq225
	
	etiq224:
	;___IfElse___
	%aux429 = add i32 0, 2
	%aux430 = load i32, i32* @_Pivot5
	%aux431 = icmp sge i32 %aux429, %aux430
	br i1 %aux431, label %etiq227, label %etiq228
	
	etiq227:
	;___IfElse___
	%aux433 = add i32 0, 2
	%aux434 = add i32 0, 0
	%aux435 = icmp sgt i32 %aux433, %aux434
	br i1 %aux435, label %etiq231, label %etiq232
	
	etiq231:
	;___IfElse___
	%aux437 = add i32 0, 2
	%aux438 = load i32, i32* @_Pivot5
	%aux439 = sub i32 %aux437, %aux438
	%aux440 = load i32, i32* @_IdPos5
	%aux441 = icmp eq i32 %aux439, %aux440
	br i1 %aux441, label %etiq234, label %etiq235
	
	etiq234:
	;___Asignacion___
	%aux443 = load i32, i32* @_Acum9
	%aux444 = add i32 0, 1
	%aux445 = add i32 %aux443, %aux444
	store i32 %aux445, i32* @_Acum9
	br label %etiq238
	
	etiq238:
	;___Asignacion___
	%aux447 = load i32, i32* @_IdPos5
	%aux448 = add i32 0, 1
	%aux449 = add i32 %aux447, %aux448
	store i32 %aux449, i32* @_IdPos5
	br label %etiq240
	
	etiq240:
	;___Asignacion___
	%aux451 = load i32, i32* @_Pivot5
	%aux452 = add i32 0, 1
	%aux453 = sub i32 %aux451, %aux452
	store i32 %aux453, i32* @_Pivot5
	br label %etiq243
	
	etiq235:
	;___Asignacion___
	%aux455 = load i32, i32* @_IdPos5
	%aux456 = add i32 0, 1
	%aux457 = add i32 %aux455, %aux456
	store i32 %aux457, i32* @_IdPos5
	br label %etiq243
	
	etiq243:
	;___IfElse___
	%aux459 = add i32 0, 2
	%aux460 = load i32, i32* @_Pivot5
	%aux461 = sub i32 %aux459, %aux460
	%aux462 = load i32, i32* @_IdPos5
	%aux463 = icmp eq i32 %aux461, %aux462
	br i1 %aux463, label %etiq244, label %etiq245
	
	etiq244:
	;___Asignacion___
	%aux465 = load i32, i32* @_Acum9
	%aux466 = add i32 0, 2
	%aux467 = add i32 %aux465, %aux466
	store i32 %aux467, i32* @_Acum9
	br label %etiq248
	
	etiq248:
	;___Asignacion___
	%aux469 = load i32, i32* @_IdPos5
	%aux470 = add i32 0, 1
	%aux471 = add i32 %aux469, %aux470
	store i32 %aux471, i32* @_IdPos5
	br label %etiq250
	
	etiq250:
	;___Asignacion___
	%aux473 = load i32, i32* @_Pivot5
	%aux474 = add i32 0, 1
	%aux475 = sub i32 %aux473, %aux474
	store i32 %aux475, i32* @_Pivot5
	br label %etiq253
	
	etiq245:
	;___Asignacion___
	%aux477 = load i32, i32* @_IdPos5
	%aux478 = add i32 0, 1
	%aux479 = add i32 %aux477, %aux478
	store i32 %aux479, i32* @_IdPos5
	br label %etiq253
	
	etiq232:
	;___DisplayCadenaCaracteres___
	%aux480 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq253
	
	etiq228:
	;___DisplayCadenaCaracteres___
	%aux481 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq253
	
	etiq225:
	;___DisplayCadenaCaracteres___
	%aux482 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq253
	
	etiq253:
	;___Asignacion___
	%aux484 = load i32, i32* @_Acum9
	store i32 %aux484, i32* @_Acum10
	br label %etiq254
	
	etiq254:
	;___Asignacion___
	%aux486 = add i32 0, 2
	store i32 %aux486, i32* @_Pivot5
	br label %etiq255
	
	etiq255:
	;___Asignacion___
	%aux488 = add i32 0, 0
	store i32 %aux488, i32* @_IdPos5
	br label %etiq256
	
	etiq256:
	%aux489 = load i32, i32* @_Acum10
	%aux490 = add i32 0, 5
	%aux491 = add i32 %aux489, %aux490
	%aux492 = add i32 %aux417, %aux491
	store i32 %aux492, i32* @_Acum11
	br label %etiq258
	
	etiq258:
	;___Asignacion___
	%aux494 = load i32, i32* @_IdPos6
	%aux495 = add i32 0, 1
	%aux496 = add i32 %aux494, %aux495
	store i32 %aux496, i32* @_IdPos6
	br label %etiq260
	
	etiq260:
	;___Asignacion___
	%aux498 = load i32, i32* @_Pivot6
	%aux499 = add i32 0, 1
	%aux500 = sub i32 %aux498, %aux499
	store i32 %aux500, i32* @_Pivot6
	br label %etiq263
	
	etiq217:
	;___Asignacion___
	%aux502 = load i32, i32* @_IdPos6
	%aux503 = add i32 0, 1
	%aux504 = add i32 %aux502, %aux503
	store i32 %aux504, i32* @_IdPos6
	br label %etiq263
	
	etiq204:
	;___DisplayCadenaCaracteres___
	%aux505 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq263
	
	etiq200:
	;___DisplayCadenaCaracteres___
	%aux506 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq263
	
	etiq197:
	;___DisplayCadenaCaracteres___
	%aux507 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq263
	
	etiq263:
	;___Asignacion___
	%aux509 = load i32, i32* @_Acum11
	store i32 %aux509, i32* @_Acum12
	br label %etiq264
	
	etiq264:
	;___Asignacion___
	%aux511 = add i32 0, 1
	store i32 %aux511, i32* @_Pivot6
	br label %etiq265
	
	etiq265:
	;___Asignacion___
	%aux513 = add i32 0, 0
	store i32 %aux513, i32* @_IdPos6
	br label %etiq266
	
	etiq266:
	%aux514 = load i32, i32* @_Acum12
	br label %etiq267
	
	etiq267:
	;___Asignacion___
	%aux516 = add i32 0, 0
	store i32 %aux516, i32* @_Acum13
	br label %etiq268
	
	etiq268:
	;___Asignacion___
	%aux518 = add i32 0, 0
	store i32 %aux518, i32* @_Acum14
	br label %etiq269
	
	etiq269:
	;___Asignacion___
	%aux520 = add i32 0, 2
	store i32 %aux520, i32* @_Pivot7
	br label %etiq270
	
	etiq270:
	;___IfElse___
	%aux522 = load i32, i32* @_Pivot7
	%aux523 = add i32 0, 1
	%aux524 = icmp sge i32 %aux522, %aux523
	br i1 %aux524, label %etiq272, label %etiq273
	
	etiq272:
	;___IfElse___
	%aux526 = add i32 0, 2
	%aux527 = load i32, i32* @_Pivot7
	%aux528 = icmp sge i32 %aux526, %aux527
	br i1 %aux528, label %etiq275, label %etiq276
	
	etiq275:
	;___IfElse___
	%aux530 = add i32 0, 2
	%aux531 = add i32 0, 0
	%aux532 = icmp sgt i32 %aux530, %aux531
	br i1 %aux532, label %etiq279, label %etiq280
	
	etiq279:
	;___IfElse___
	%aux534 = add i32 0, 2
	%aux535 = load i32, i32* @_Pivot7
	%aux536 = sub i32 %aux534, %aux535
	%aux537 = load i32, i32* @_IdPos7
	%aux538 = icmp eq i32 %aux536, %aux537
	br i1 %aux538, label %etiq282, label %etiq283
	
	etiq282:
	;___Asignacion___
	%aux540 = load i32, i32* @_Acum13
	%aux541 = add i32 0, 1
	%aux542 = add i32 %aux540, %aux541
	store i32 %aux542, i32* @_Acum13
	br label %etiq286
	
	etiq286:
	;___Asignacion___
	%aux544 = load i32, i32* @_IdPos7
	%aux545 = add i32 0, 1
	%aux546 = add i32 %aux544, %aux545
	store i32 %aux546, i32* @_IdPos7
	br label %etiq288
	
	etiq288:
	;___Asignacion___
	%aux548 = load i32, i32* @_Pivot7
	%aux549 = add i32 0, 1
	%aux550 = sub i32 %aux548, %aux549
	store i32 %aux550, i32* @_Pivot7
	br label %etiq291
	
	etiq283:
	;___Asignacion___
	%aux552 = load i32, i32* @_IdPos7
	%aux553 = add i32 0, 1
	%aux554 = add i32 %aux552, %aux553
	store i32 %aux554, i32* @_IdPos7
	br label %etiq291
	
	etiq291:
	;___IfElse___
	%aux556 = add i32 0, 2
	%aux557 = load i32, i32* @_Pivot7
	%aux558 = sub i32 %aux556, %aux557
	%aux559 = load i32, i32* @_IdPos7
	%aux560 = icmp eq i32 %aux558, %aux559
	br i1 %aux560, label %etiq292, label %etiq293
	
	etiq292:
	;___Asignacion___
	%aux562 = load i32, i32* @_Acum13
	%aux563 = add i32 0, 2
	%aux564 = add i32 %aux562, %aux563
	store i32 %aux564, i32* @_Acum13
	br label %etiq296
	
	etiq296:
	;___Asignacion___
	%aux566 = load i32, i32* @_IdPos7
	%aux567 = add i32 0, 1
	%aux568 = add i32 %aux566, %aux567
	store i32 %aux568, i32* @_IdPos7
	br label %etiq298
	
	etiq298:
	;___Asignacion___
	%aux570 = load i32, i32* @_Pivot7
	%aux571 = add i32 0, 1
	%aux572 = sub i32 %aux570, %aux571
	store i32 %aux572, i32* @_Pivot7
	br label %etiq301
	
	etiq293:
	;___Asignacion___
	%aux574 = load i32, i32* @_IdPos7
	%aux575 = add i32 0, 1
	%aux576 = add i32 %aux574, %aux575
	store i32 %aux576, i32* @_IdPos7
	br label %etiq301
	
	etiq280:
	;___DisplayCadenaCaracteres___
	%aux577 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq301
	
	etiq276:
	;___DisplayCadenaCaracteres___
	%aux578 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq301
	
	etiq273:
	;___DisplayCadenaCaracteres___
	%aux579 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq301
	
	etiq301:
	;___Asignacion___
	%aux581 = load i32, i32* @_Acum13
	store i32 %aux581, i32* @_Acum14
	br label %etiq302
	
	etiq302:
	;___Asignacion___
	%aux583 = add i32 0, 2
	store i32 %aux583, i32* @_Pivot7
	br label %etiq303
	
	etiq303:
	;___Asignacion___
	%aux585 = add i32 0, 0
	store i32 %aux585, i32* @_IdPos7
	br label %etiq304
	
	etiq304:
	%aux586 = load i32, i32* @_Acum14
	%aux587 = add i32 %aux514, %aux586
	store i32 %aux587, i32* @res4
	br label %etiq305
	
	etiq305:
	;___DisplayExpresion___
	%aux589 = load i32, i32* @res
	%aux590 = load i32, i32* @res2
	%aux591 = add i32 %aux589, %aux590
	%aux592 = load i32, i32* @res3
	%aux593 = add i32 %aux591, %aux592
	%aux594 = load i32, i32* @res4
	%aux595 = add i32 %aux593, %aux594
	%aux588 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux595)
	br label %etiq306
	
	etiq306:
	;___DisplayExpresion___
	%aux597 = load i32, i32* @res
	%aux596 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux597)
	br label %etiq307
	
	etiq307:
	;___DisplayExpresion___
	%aux599 = load i32, i32* @res2
	%aux598 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux599)
	br label %etiq308
	
	etiq308:
	;___DisplayExpresion___
	%aux601 = load i32, i32* @res3
	%aux600 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux601)
	br label %etiq309
	
	etiq309:
	;___DisplayExpresion___
	%aux603 = load i32, i32* @res4
	%aux602 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux603)
	br label %etiq310
	
	etiq310:
	ret i32 0
}

