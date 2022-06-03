;Programa: 'Prueba'
source_filename = "pruebas.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.29.30145"

declare i32 @puts(i8*)
declare i32 @printf(i8*, ...)
declare i32 @scanf(i8* %0, ...)
@.integer = private constant [4 x i8] c"%d\0A\00"
@.double = private constant [4 x i8] c"%f\0A\00"
@.bool = private constant [4 x i8] c"%c\0A\00"
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
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	
	etiq2:
	;___Asignación___
	%aux2 = add i32 0, 3
	store i32 %aux2, i32* @Pivot1
	br label %etiq3
	
	
	etiq3:
	;___IfElse___
	%aux4 = load i32, i32* @Pivot3
	%aux7 = add i32 0, 1
	%aux6 = icmp sge i32 %aux4, %aux7
	br i1 %aux6, label %etiq4, label %etiq5
	
	etiq4:
	;___IfElse___
	%aux12 = add i32 0, 3
	%aux10 = load i32, i32* @Pivot3
	%aux11 = icmp sge i32 %aux12, %aux10
	br i1 %aux11, label %etiq7, label %etiq8
	
	etiq7:
	;___IfElse___
	%aux17 = add i32 0, 3
	%aux18 = add i32 0, 0
	%aux16 = icmp sgt i32 %aux17, %aux18
	br i1 %aux16, label %etiq10, label %etiq11
	
	etiq10:
	;___IfElse___
	%aux26 = add i32 0, 2
	%aux24 = load i32, i32* @Pivot3
	%aux25 = sub i32 %aux26, %aux24
	%aux21 = load i32, i32* @IdPos3
	%aux22 = icmp eq i32 %aux25, %aux21
	br i1 %aux22, label %etiq13, label %etiq14
	
	etiq13:
	;___Asignación___
	%aux28 = load i32, i32* @_Acum1
	%aux31 = add i32 0, 4
	%aux30 = add i32 %aux28, %aux31
	store i32 %aux30, i32* @_Acum1
	br label %etiq16
	
	etiq16:
	;___Asignación___
	%aux33 = load i32, i32* @IdPos3
	%aux36 = add i32 0, 1
	%aux35 = add i32 %aux33, %aux36
	store i32 %aux35, i32* @IdPos3
	br label %etiq17
	
	etiq17:
	;___Asignación___
	%aux38 = load i32, i32* @Pivot3
	%aux41 = add i32 0, 1
	%aux40 = sub i32 %aux38, %aux41
	store i32 %aux40, i32* @Pivot3
	br label %etiq18
	
	etiq14:
	;___Asignación___
	%aux43 = load i32, i32* @IdPos3
	%aux46 = add i32 0, 1
	%aux45 = add i32 %aux43, %aux46
	store i32 %aux45, i32* @IdPos3
	br label %etiq18
	
	etiq18:
	;___IfElse___
	%aux54 = add i32 0, 2
	%aux52 = load i32, i32* @Pivot3
	%aux53 = sub i32 %aux54, %aux52
	%aux49 = load i32, i32* @IdPos3
	%aux50 = icmp eq i32 %aux53, %aux49
	br i1 %aux50, label %etiq19, label %etiq20
	
	etiq19:
	;___Asignación___
	%aux56 = load i32, i32* @_Acum1
	%aux59 = add i32 0, 5
	%aux58 = add i32 %aux56, %aux59
	store i32 %aux58, i32* @_Acum1
	br label %etiq22
	
	etiq22:
	;___Asignación___
	%aux61 = load i32, i32* @IdPos3
	%aux64 = add i32 0, 1
	%aux63 = add i32 %aux61, %aux64
	store i32 %aux63, i32* @IdPos3
	br label %etiq23
	
	etiq23:
	;___Asignación___
	%aux66 = load i32, i32* @Pivot3
	%aux69 = add i32 0, 1
	%aux68 = sub i32 %aux66, %aux69
	store i32 %aux68, i32* @Pivot3
	br label %etiq24
	
	etiq20:
	;___Asignación___
	%aux71 = load i32, i32* @IdPos3
	%aux74 = add i32 0, 1
	%aux73 = add i32 %aux71, %aux74
	store i32 %aux73, i32* @IdPos3
	br label %etiq24
	
	etiq24:
	;___IfElse___
	%aux82 = add i32 0, 2
	%aux80 = load i32, i32* @Pivot3
	%aux81 = sub i32 %aux82, %aux80
	%aux77 = load i32, i32* @IdPos3
	%aux78 = icmp eq i32 %aux81, %aux77
	br i1 %aux78, label %etiq25, label %etiq26
	
	etiq25:
	;___Asignación___
	%aux84 = load i32, i32* @_Acum1
	%aux87 = add i32 0, 6
	%aux86 = add i32 %aux84, %aux87
	store i32 %aux86, i32* @_Acum1
	br label %etiq28
	
	etiq28:
	;___Asignación___
	%aux89 = load i32, i32* @IdPos3
	%aux92 = add i32 0, 1
	%aux91 = add i32 %aux89, %aux92
	store i32 %aux91, i32* @IdPos3
	br label %etiq29
	
	etiq29:
	;___Asignación___
	%aux94 = load i32, i32* @Pivot3
	%aux97 = add i32 0, 1
	%aux96 = sub i32 %aux94, %aux97
	store i32 %aux96, i32* @Pivot3
	br label %etiq30
	
	etiq26:
	;___Asignación___
	%aux99 = load i32, i32* @IdPos3
	%aux102 = add i32 0, 1
	%aux101 = add i32 %aux99, %aux102
	store i32 %aux101, i32* @IdPos3
	br label %etiq30
	
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux103 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq30
	
	etiq8:
	;___DisplayCadenaCaracteres___
	%aux104 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq30
	
	etiq5:
	;___DisplayCadenaCaracteres___
	%aux105 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq30
	
	etiq30:
	;___Asignacion_Acum___
	%aux106 = load i32, i32* @_Acum1
	store i32 %aux106, i32* @res
	br label %etiq31
	
	
	etiq31:
	;___Asignación___
	%aux108 = add i32 0, 1
	store i32 %aux108, i32* @Pivot2
	br label %etiq32
	
	
	etiq32:
	;___IfElse___
	%aux110 = load i32, i32* @Pivot3
	%aux113 = add i32 0, 1
	%aux112 = icmp sge i32 %aux110, %aux113
	br i1 %aux112, label %etiq33, label %etiq34
	
	etiq33:
	;___IfElse___
	%aux118 = add i32 0, 2
	%aux116 = load i32, i32* @Pivot3
	%aux117 = icmp sge i32 %aux118, %aux116
	br i1 %aux117, label %etiq36, label %etiq37
	
	etiq36:
	;___IfElse___
	%aux123 = add i32 0, 2
	%aux124 = add i32 0, 0
	%aux122 = icmp sgt i32 %aux123, %aux124
	br i1 %aux122, label %etiq39, label %etiq40
	
	etiq39:
	;___IfElse___
	%aux132 = add i32 0, 2
	%aux130 = load i32, i32* @Pivot3
	%aux131 = sub i32 %aux132, %aux130
	%aux127 = load i32, i32* @IdPos3
	%aux128 = icmp eq i32 %aux131, %aux127
	br i1 %aux128, label %etiq42, label %etiq43
	
	etiq42:
	;___Asignación___
	%aux134 = load i32, i32* @_Acum3
	%aux137 = add i32 0, 2
	%aux136 = add i32 %aux134, %aux137
	store i32 %aux136, i32* @_Acum3
	br label %etiq45
	
	etiq45:
	;___Asignación___
	%aux139 = load i32, i32* @IdPos3
	%aux142 = add i32 0, 1
	%aux141 = add i32 %aux139, %aux142
	store i32 %aux141, i32* @IdPos3
	br label %etiq46
	
	etiq46:
	;___Asignación___
	%aux144 = load i32, i32* @Pivot3
	%aux147 = add i32 0, 1
	%aux146 = sub i32 %aux144, %aux147
	store i32 %aux146, i32* @Pivot3
	br label %etiq47
	
	etiq43:
	;___Asignación___
	%aux149 = load i32, i32* @IdPos3
	%aux152 = add i32 0, 1
	%aux151 = add i32 %aux149, %aux152
	store i32 %aux151, i32* @IdPos3
	br label %etiq47
	
	etiq47:
	;___IfElse___
	%aux160 = add i32 0, 2
	%aux158 = load i32, i32* @Pivot3
	%aux159 = sub i32 %aux160, %aux158
	%aux155 = load i32, i32* @IdPos3
	%aux156 = icmp eq i32 %aux159, %aux155
	br i1 %aux156, label %etiq48, label %etiq49
	
	etiq48:
	;___Asignación___
	%aux162 = load i32, i32* @_Acum3
	%aux163 = load i32, i32* @_Acum4
	%aux164 = add i32 %aux162, %aux163
	store i32 %aux164, i32* @_Acum3
	br label %etiq51
	
	etiq51:
	;___Asignación___
	%aux166 = load i32, i32* @IdPos3
	%aux169 = add i32 0, 1
	%aux168 = add i32 %aux166, %aux169
	store i32 %aux168, i32* @IdPos3
	br label %etiq52
	
	etiq52:
	;___Asignación___
	%aux171 = load i32, i32* @Pivot3
	%aux174 = add i32 0, 1
	%aux173 = sub i32 %aux171, %aux174
	store i32 %aux173, i32* @Pivot3
	br label %etiq53
	
	etiq49:
	;___Asignación___
	%aux176 = load i32, i32* @IdPos3
	%aux179 = add i32 0, 1
	%aux178 = add i32 %aux176, %aux179
	store i32 %aux178, i32* @IdPos3
	br label %etiq53
	
	etiq40:
	;___DisplayCadenaCaracteres___
	%aux180 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq53
	
	etiq37:
	;___DisplayCadenaCaracteres___
	%aux181 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq53
	
	etiq34:
	;___DisplayCadenaCaracteres___
	%aux182 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq53
	
	etiq53:
	;___Asignacion_Acum___
	%aux183 = load i32, i32* @_Acum3
	store i32 %aux183, i32* @res
	br label %etiq54
	
	etiq54:
	;___DisplayExpresion___
	%aux185 = load i32, i32* @res
	%aux184 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux185)
	br label %etiq55
	
	etiq55:
	ret i32 0
}

