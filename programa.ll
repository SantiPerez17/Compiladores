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
@IdPos2 = global i32 0
@IdPos3 = global i32 0
@Pivot1 = global i32 0
@Pivot2 = global i32 0
@Pivot3 = global i32 0
@_Acum1 = global i32 0
@_Acum2 = global i32 0
@_Acum3 = global i32 0
@_Acum4 = global i32 0
@_Acum5 = global i32 0
@_Acum6 = global i32 0
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
@res3 = global i32 0
@res4 = global i32 0
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq2:
	;___Asignación___
	%aux3 = add i32 0, 2
	store i32 %aux3, i32* @Pivot1
	br label %etiq3
	
	etiq3:
	;___IfElse___
	%aux5 = load i32, i32* @Pivot1
	%aux6 = add i32 0, 1
	%aux7 = icmp sge i32 %aux5, %aux6
	br i1 %aux7, label %etiq5, label %etiq6
	
	etiq5:
	;___IfElse___
	%aux9 = add i32 0, 2
	%aux10 = load i32, i32* @Pivot1
	%aux11 = icmp sge i32 %aux9, %aux10
	br i1 %aux11, label %etiq9, label %etiq10
	
	etiq9:
	;___IfElse___
	%aux13 = add i32 0, 2
	%aux14 = add i32 0, 0
	%aux15 = icmp sgt i32 %aux13, %aux14
	br i1 %aux15, label %etiq14, label %etiq15
	
	etiq14:
	;___IfElse___
	%aux17 = add i32 0, 2
	%aux18 = load i32, i32* @Pivot1
	%aux19 = sub i32 %aux17, %aux18
	%aux20 = load i32, i32* @IdPos1
	%aux21 = icmp eq i32 %aux19, %aux20
	br i1 %aux21, label %etiq19, label %etiq20
	
	etiq19:
	;___Asignación___
	%aux23 = load i32, i32* @_Acum1
	%aux24 = add i32 0, 1
	%aux25 = add i32 %aux23, %aux24
	store i32 %aux25, i32* @_Acum1
	br label %etiq23
	
	etiq23:
	;___Asignación___
	%aux27 = load i32, i32* @IdPos1
	%aux28 = add i32 0, 1
	%aux29 = add i32 %aux27, %aux28
	store i32 %aux29, i32* @IdPos1
	br label %etiq25
	
	etiq25:
	;___Asignación___
	%aux31 = load i32, i32* @Pivot1
	%aux32 = add i32 0, 1
	%aux33 = sub i32 %aux31, %aux32
	store i32 %aux33, i32* @Pivot1
	br label %etiq28
	
	etiq20:
	;___Asignación___
	%aux35 = load i32, i32* @IdPos1
	%aux36 = add i32 0, 1
	%aux37 = add i32 %aux35, %aux36
	store i32 %aux37, i32* @IdPos1
	br label %etiq28
	
	etiq28:
	;___IfElse___
	%aux39 = add i32 0, 2
	%aux40 = load i32, i32* @Pivot1
	%aux41 = sub i32 %aux39, %aux40
	%aux42 = load i32, i32* @IdPos1
	%aux43 = icmp eq i32 %aux41, %aux42
	br i1 %aux43, label %etiq31, label %etiq32
	
	etiq31:
	;___Asignación___
	%aux45 = load i32, i32* @_Acum1
	%aux46 = add i32 0, 2
	%aux47 = add i32 %aux45, %aux46
	store i32 %aux47, i32* @_Acum1
	br label %etiq35
	
	etiq35:
	;___Asignación___
	%aux49 = load i32, i32* @IdPos1
	%aux50 = add i32 0, 1
	%aux51 = add i32 %aux49, %aux50
	store i32 %aux51, i32* @IdPos1
	br label %etiq37
	
	etiq37:
	;___Asignación___
	%aux53 = load i32, i32* @Pivot1
	%aux54 = add i32 0, 1
	%aux55 = sub i32 %aux53, %aux54
	store i32 %aux55, i32* @Pivot1
	br label %etiq40
	
	etiq32:
	;___Asignación___
	%aux57 = load i32, i32* @IdPos1
	%aux58 = add i32 0, 1
	%aux59 = add i32 %aux57, %aux58
	store i32 %aux59, i32* @IdPos1
	br label %etiq40
	
	etiq15:
	;___DisplayCadenaCaracteres___
	%aux60 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq40
	
	etiq10:
	;___DisplayCadenaCaracteres___
	%aux61 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq40
	
	etiq6:
	;___DisplayCadenaCaracteres___
	%aux62 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq40
	
	etiq40:
	;___Asignación___
	%aux64 = load i32, i32* @_Acum1
	store i32 %aux64, i32* @_Acum2
	br label %etiq41
	
	etiq41:
	;___Asignación___
	%aux66 = add i32 0, 1
	store i32 %aux66, i32* @Pivot2
	br label %etiq42
	
	etiq42:
	;___IfElse___
	%aux68 = load i32, i32* @Pivot2
	%aux69 = add i32 0, 1
	%aux70 = icmp sge i32 %aux68, %aux69
	br i1 %aux70, label %etiq44, label %etiq45
	
	etiq44:
	;___IfElse___
	%aux72 = add i32 0, 2
	%aux73 = load i32, i32* @Pivot2
	%aux74 = icmp sge i32 %aux72, %aux73
	br i1 %aux74, label %etiq48, label %etiq49
	
	etiq48:
	;___IfElse___
	%aux76 = add i32 0, 2
	%aux77 = add i32 0, 0
	%aux78 = icmp sgt i32 %aux76, %aux77
	br i1 %aux78, label %etiq53, label %etiq54
	
	etiq53:
	;___IfElse___
	%aux80 = add i32 0, 2
	%aux81 = load i32, i32* @Pivot2
	%aux82 = sub i32 %aux80, %aux81
	%aux83 = load i32, i32* @IdPos2
	%aux84 = icmp eq i32 %aux82, %aux83
	br i1 %aux84, label %etiq58, label %etiq59
	
	etiq58:
	;___Asignación___
	%aux86 = load i32, i32* @_Acum3
	%aux87 = add i32 0, 1
	%aux88 = add i32 %aux86, %aux87
	store i32 %aux88, i32* @_Acum3
	br label %etiq62
	
	etiq62:
	;___Asignación___
	%aux90 = load i32, i32* @IdPos2
	%aux91 = add i32 0, 1
	%aux92 = add i32 %aux90, %aux91
	store i32 %aux92, i32* @IdPos2
	br label %etiq64
	
	etiq64:
	;___Asignación___
	%aux94 = load i32, i32* @Pivot2
	%aux95 = add i32 0, 1
	%aux96 = sub i32 %aux94, %aux95
	store i32 %aux96, i32* @Pivot2
	br label %etiq67
	
	etiq59:
	;___Asignación___
	%aux98 = load i32, i32* @IdPos2
	%aux99 = add i32 0, 1
	%aux100 = add i32 %aux98, %aux99
	store i32 %aux100, i32* @IdPos2
	br label %etiq67
	
	etiq67:
	;___IfElse___
	%aux102 = add i32 0, 2
	%aux103 = load i32, i32* @Pivot2
	%aux104 = sub i32 %aux102, %aux103
	%aux105 = load i32, i32* @IdPos2
	%aux106 = icmp eq i32 %aux104, %aux105
	br i1 %aux106, label %etiq70, label %etiq71
	
	etiq70:
	;___Asignación___
	%aux108 = load i32, i32* @_Acum3
	br label %etiq74
	
	etiq74:
	;___Asignación___
	%aux110 = add i32 0, 2
	store i32 %aux110, i32* @Pivot1
	br label %etiq75
	
	etiq75:
	;___IfElse___
	%aux112 = load i32, i32* @Pivot1
	%aux113 = add i32 0, 1
	%aux114 = icmp sge i32 %aux112, %aux113
	br i1 %aux114, label %etiq77, label %etiq78
	
	etiq77:
	;___IfElse___
	%aux116 = add i32 0, 2
	%aux117 = load i32, i32* @Pivot1
	%aux118 = icmp sge i32 %aux116, %aux117
	br i1 %aux118, label %etiq81, label %etiq82
	
	etiq81:
	;___IfElse___
	%aux120 = add i32 0, 2
	%aux121 = add i32 0, 0
	%aux122 = icmp sgt i32 %aux120, %aux121
	br i1 %aux122, label %etiq86, label %etiq87
	
	etiq86:
	;___IfElse___
	%aux124 = add i32 0, 2
	%aux125 = load i32, i32* @Pivot1
	%aux126 = sub i32 %aux124, %aux125
	%aux127 = load i32, i32* @IdPos1
	%aux128 = icmp eq i32 %aux126, %aux127
	br i1 %aux128, label %etiq91, label %etiq92
	
	etiq91:
	;___Asignación___
	%aux130 = load i32, i32* @_Acum1
	%aux131 = add i32 0, 1
	%aux132 = add i32 %aux130, %aux131
	store i32 %aux132, i32* @_Acum1
	br label %etiq95
	
	etiq95:
	;___Asignación___
	%aux134 = load i32, i32* @IdPos1
	%aux135 = add i32 0, 1
	%aux136 = add i32 %aux134, %aux135
	store i32 %aux136, i32* @IdPos1
	br label %etiq97
	
	etiq97:
	;___Asignación___
	%aux138 = load i32, i32* @Pivot1
	%aux139 = add i32 0, 1
	%aux140 = sub i32 %aux138, %aux139
	store i32 %aux140, i32* @Pivot1
	br label %etiq100
	
	etiq92:
	;___Asignación___
	%aux142 = load i32, i32* @IdPos1
	%aux143 = add i32 0, 1
	%aux144 = add i32 %aux142, %aux143
	store i32 %aux144, i32* @IdPos1
	br label %etiq100
	
	etiq100:
	;___IfElse___
	%aux146 = add i32 0, 2
	%aux147 = load i32, i32* @Pivot1
	%aux148 = sub i32 %aux146, %aux147
	%aux149 = load i32, i32* @IdPos1
	%aux150 = icmp eq i32 %aux148, %aux149
	br i1 %aux150, label %etiq103, label %etiq104
	
	etiq103:
	;___Asignación___
	%aux152 = load i32, i32* @_Acum1
	%aux153 = add i32 0, 2
	%aux154 = add i32 %aux152, %aux153
	store i32 %aux154, i32* @_Acum1
	br label %etiq107
	
	etiq107:
	;___Asignación___
	%aux156 = load i32, i32* @IdPos1
	%aux157 = add i32 0, 1
	%aux158 = add i32 %aux156, %aux157
	store i32 %aux158, i32* @IdPos1
	br label %etiq109
	
	etiq109:
	;___Asignación___
	%aux160 = load i32, i32* @Pivot1
	%aux161 = add i32 0, 1
	%aux162 = sub i32 %aux160, %aux161
	store i32 %aux162, i32* @Pivot1
	br label %etiq112
	
	etiq104:
	;___Asignación___
	%aux164 = load i32, i32* @IdPos1
	%aux165 = add i32 0, 1
	%aux166 = add i32 %aux164, %aux165
	store i32 %aux166, i32* @IdPos1
	br label %etiq112
	
	etiq87:
	;___DisplayCadenaCaracteres___
	%aux167 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq112
	
	etiq82:
	;___DisplayCadenaCaracteres___
	%aux168 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq112
	
	etiq78:
	;___DisplayCadenaCaracteres___
	%aux169 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq112
	
	etiq112:
	;___Asignación___
	%aux171 = load i32, i32* @_Acum1
	store i32 %aux171, i32* @_Acum2
	br label %etiq113
	
	etiq113:
	%aux172 = load i32, i32* @_Acum2
	%aux173 = add i32 0, 5
	%aux174 = add i32 %aux172, %aux173
	%aux175 = add i32 %aux108, %aux174
	store i32 %aux175, i32* @_Acum3
	br label %etiq115
	
	etiq115:
	;___Asignación___
	%aux177 = load i32, i32* @IdPos2
	%aux178 = add i32 0, 1
	%aux179 = add i32 %aux177, %aux178
	store i32 %aux179, i32* @IdPos2
	br label %etiq117
	
	etiq117:
	;___Asignación___
	%aux181 = load i32, i32* @Pivot2
	%aux182 = add i32 0, 1
	%aux183 = sub i32 %aux181, %aux182
	store i32 %aux183, i32* @Pivot2
	br label %etiq120
	
	etiq71:
	;___Asignación___
	%aux185 = load i32, i32* @IdPos2
	%aux186 = add i32 0, 1
	%aux187 = add i32 %aux185, %aux186
	store i32 %aux187, i32* @IdPos2
	br label %etiq120
	
	etiq54:
	;___DisplayCadenaCaracteres___
	%aux188 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq120
	
	etiq49:
	;___DisplayCadenaCaracteres___
	%aux189 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq120
	
	etiq45:
	;___DisplayCadenaCaracteres___
	%aux190 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq120
	
	etiq120:
	;___Asignación___
	%aux192 = load i32, i32* @_Acum3
	store i32 %aux192, i32* @_Acum4
	br label %etiq121
	
	etiq121:
	%aux193 = load i32, i32* @_Acum4
	br label %etiq122
	
	etiq122:
	;___Asignación___
	%aux195 = add i32 0, 2
	store i32 %aux195, i32* @Pivot3
	br label %etiq123
	
	etiq123:
	;___IfElse___
	%aux197 = load i32, i32* @Pivot3
	%aux198 = add i32 0, 1
	%aux199 = icmp sge i32 %aux197, %aux198
	br i1 %aux199, label %etiq125, label %etiq126
	
	etiq125:
	;___IfElse___
	%aux201 = add i32 0, 2
	%aux202 = load i32, i32* @Pivot3
	%aux203 = icmp sge i32 %aux201, %aux202
	br i1 %aux203, label %etiq129, label %etiq130
	
	etiq129:
	;___IfElse___
	%aux205 = add i32 0, 2
	%aux206 = add i32 0, 0
	%aux207 = icmp sgt i32 %aux205, %aux206
	br i1 %aux207, label %etiq134, label %etiq135
	
	etiq134:
	;___IfElse___
	%aux209 = add i32 0, 2
	%aux210 = load i32, i32* @Pivot3
	%aux211 = sub i32 %aux209, %aux210
	%aux212 = load i32, i32* @IdPos3
	%aux213 = icmp eq i32 %aux211, %aux212
	br i1 %aux213, label %etiq139, label %etiq140
	
	etiq139:
	;___Asignación___
	%aux215 = load i32, i32* @_Acum5
	%aux216 = add i32 0, 1
	%aux217 = add i32 %aux215, %aux216
	store i32 %aux217, i32* @_Acum5
	br label %etiq143
	
	etiq143:
	;___Asignación___
	%aux219 = load i32, i32* @IdPos3
	%aux220 = add i32 0, 1
	%aux221 = add i32 %aux219, %aux220
	store i32 %aux221, i32* @IdPos3
	br label %etiq145
	
	etiq145:
	;___Asignación___
	%aux223 = load i32, i32* @Pivot3
	%aux224 = add i32 0, 1
	%aux225 = sub i32 %aux223, %aux224
	store i32 %aux225, i32* @Pivot3
	br label %etiq148
	
	etiq140:
	;___Asignación___
	%aux227 = load i32, i32* @IdPos3
	%aux228 = add i32 0, 1
	%aux229 = add i32 %aux227, %aux228
	store i32 %aux229, i32* @IdPos3
	br label %etiq148
	
	etiq148:
	;___IfElse___
	%aux231 = add i32 0, 2
	%aux232 = load i32, i32* @Pivot3
	%aux233 = sub i32 %aux231, %aux232
	%aux234 = load i32, i32* @IdPos3
	%aux235 = icmp eq i32 %aux233, %aux234
	br i1 %aux235, label %etiq151, label %etiq152
	
	etiq151:
	;___Asignación___
	%aux237 = load i32, i32* @_Acum5
	%aux238 = add i32 0, 2
	%aux239 = add i32 %aux237, %aux238
	store i32 %aux239, i32* @_Acum5
	br label %etiq155
	
	etiq155:
	;___Asignación___
	%aux241 = load i32, i32* @IdPos3
	%aux242 = add i32 0, 1
	%aux243 = add i32 %aux241, %aux242
	store i32 %aux243, i32* @IdPos3
	br label %etiq157
	
	etiq157:
	;___Asignación___
	%aux245 = load i32, i32* @Pivot3
	%aux246 = add i32 0, 1
	%aux247 = sub i32 %aux245, %aux246
	store i32 %aux247, i32* @Pivot3
	br label %etiq160
	
	etiq152:
	;___Asignación___
	%aux249 = load i32, i32* @IdPos3
	%aux250 = add i32 0, 1
	%aux251 = add i32 %aux249, %aux250
	store i32 %aux251, i32* @IdPos3
	br label %etiq160
	
	etiq135:
	;___DisplayCadenaCaracteres___
	%aux252 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq160
	
	etiq130:
	;___DisplayCadenaCaracteres___
	%aux253 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq160
	
	etiq126:
	;___DisplayCadenaCaracteres___
	%aux254 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq160
	
	etiq160:
	;___Asignación___
	%aux256 = load i32, i32* @_Acum5
	store i32 %aux256, i32* @_Acum6
	br label %etiq161
	
	etiq161:
	%aux257 = load i32, i32* @_Acum6
	%aux258 = add i32 %aux193, %aux257
	store i32 %aux258, i32* @res
	br label %etiq162
	
	etiq162:
	;___DisplayExpresion___
	%aux260 = load i32, i32* @res
	%aux259 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux260)
	br label %etiq163
	
	etiq163:
	ret i32 0
}

