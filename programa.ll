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
@Pivot1 = global i32 0
@_Acum1 = global i32 0
@_Acum2 = global i32 0
@altura = global double 0.0
@aux = global i1 0
@aux2 = global i1 0
@edad = global i32 0
@edad1 = global i32 0
@peso = global double 0.0
@pivot = global i32 0
@res = global i32 0
@resultado = global double 0.0
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@na = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___Asignacion___
	%aux2 = add i32 0, 0
	store i32 %aux2, i32* @_Acum1
	br label %etiq2
	
	etiq2:
	;___Asignacion___
	%aux4 = add i32 0, 0
	store i32 %aux4, i32* @_Acum2
	br label %etiq3
	
	etiq3:
	;___Asignacion___
	%aux6 = add i32 0, 2
	store i32 %aux6, i32* @Pivot1
	br label %etiq4
	
	etiq4:
	;___IfElse___
	%aux8 = load i32, i32* @Pivot1
	%aux9 = add i32 0, 1
	%aux10 = icmp sge i32 %aux8, %aux9
	br i1 %aux10, label %etiq6, label %etiq7
	
	etiq6:
	;___IfElse___
	%aux12 = add i32 0, 5
	%aux13 = load i32, i32* @Pivot1
	%aux14 = icmp sge i32 %aux12, %aux13
	br i1 %aux14, label %etiq9, label %etiq10
	
	etiq9:
	;___IfElse___
	%aux16 = add i32 0, 5
	%aux17 = add i32 0, 0
	%aux18 = icmp sgt i32 %aux16, %aux17
	br i1 %aux18, label %etiq13, label %etiq14
	
	etiq13:
	;___IfElse___
	%aux20 = add i32 0, 5
	%aux21 = load i32, i32* @Pivot1
	%aux22 = sub i32 %aux20, %aux21
	%aux23 = load i32, i32* @IdPos1
	%aux24 = icmp eq i32 %aux22, %aux23
	br i1 %aux24, label %etiq16, label %etiq17
	
	etiq16:
	;___Asignacion___
	%aux26 = load i32, i32* @_Acum1
	%aux27 = add i32 0, 1
	%aux28 = add i32 %aux26, %aux27
	store i32 %aux28, i32* @_Acum1
	br label %etiq20
	
	etiq20:
	;___Asignacion___
	%aux30 = load i32, i32* @IdPos1
	%aux31 = add i32 0, 1
	%aux32 = add i32 %aux30, %aux31
	store i32 %aux32, i32* @IdPos1
	br label %etiq22
	
	etiq22:
	;___Asignacion___
	%aux34 = load i32, i32* @Pivot1
	%aux35 = add i32 0, 1
	%aux36 = sub i32 %aux34, %aux35
	store i32 %aux36, i32* @Pivot1
	br label %etiq25
	
	etiq17:
	;___Asignacion___
	%aux38 = load i32, i32* @IdPos1
	%aux39 = add i32 0, 1
	%aux40 = add i32 %aux38, %aux39
	store i32 %aux40, i32* @IdPos1
	br label %etiq25
	
	etiq25:
	;___IfElse___
	%aux42 = add i32 0, 5
	%aux43 = load i32, i32* @Pivot1
	%aux44 = sub i32 %aux42, %aux43
	%aux45 = load i32, i32* @IdPos1
	%aux46 = icmp eq i32 %aux44, %aux45
	br i1 %aux46, label %etiq26, label %etiq27
	
	etiq26:
	;___Asignacion___
	%aux48 = load i32, i32* @_Acum1
	%aux49 = add i32 0, 2
	%aux50 = add i32 %aux48, %aux49
	store i32 %aux50, i32* @_Acum1
	br label %etiq30
	
	etiq30:
	;___Asignacion___
	%aux52 = load i32, i32* @IdPos1
	%aux53 = add i32 0, 1
	%aux54 = add i32 %aux52, %aux53
	store i32 %aux54, i32* @IdPos1
	br label %etiq32
	
	etiq32:
	;___Asignacion___
	%aux56 = load i32, i32* @Pivot1
	%aux57 = add i32 0, 1
	%aux58 = sub i32 %aux56, %aux57
	store i32 %aux58, i32* @Pivot1
	br label %etiq35
	
	etiq27:
	;___Asignacion___
	%aux60 = load i32, i32* @IdPos1
	%aux61 = add i32 0, 1
	%aux62 = add i32 %aux60, %aux61
	store i32 %aux62, i32* @IdPos1
	br label %etiq35
	
	etiq35:
	;___IfElse___
	%aux64 = add i32 0, 5
	%aux65 = load i32, i32* @Pivot1
	%aux66 = sub i32 %aux64, %aux65
	%aux67 = load i32, i32* @IdPos1
	%aux68 = icmp eq i32 %aux66, %aux67
	br i1 %aux68, label %etiq36, label %etiq37
	
	etiq36:
	;___Asignacion___
	%aux70 = load i32, i32* @_Acum1
	%aux71 = add i32 0, 3
	%aux72 = add i32 %aux70, %aux71
	store i32 %aux72, i32* @_Acum1
	br label %etiq40
	
	etiq40:
	;___Asignacion___
	%aux74 = load i32, i32* @IdPos1
	%aux75 = add i32 0, 1
	%aux76 = add i32 %aux74, %aux75
	store i32 %aux76, i32* @IdPos1
	br label %etiq42
	
	etiq42:
	;___Asignacion___
	%aux78 = load i32, i32* @Pivot1
	%aux79 = add i32 0, 1
	%aux80 = sub i32 %aux78, %aux79
	store i32 %aux80, i32* @Pivot1
	br label %etiq45
	
	etiq37:
	;___Asignacion___
	%aux82 = load i32, i32* @IdPos1
	%aux83 = add i32 0, 1
	%aux84 = add i32 %aux82, %aux83
	store i32 %aux84, i32* @IdPos1
	br label %etiq45
	
	etiq45:
	;___IfElse___
	%aux86 = add i32 0, 5
	%aux87 = load i32, i32* @Pivot1
	%aux88 = sub i32 %aux86, %aux87
	%aux89 = load i32, i32* @IdPos1
	%aux90 = icmp eq i32 %aux88, %aux89
	br i1 %aux90, label %etiq46, label %etiq47
	
	etiq46:
	;___Asignacion___
	%aux92 = load i32, i32* @_Acum1
	%aux93 = add i32 0, 4
	%aux94 = add i32 %aux92, %aux93
	store i32 %aux94, i32* @_Acum1
	br label %etiq50
	
	etiq50:
	;___Asignacion___
	%aux96 = load i32, i32* @IdPos1
	%aux97 = add i32 0, 1
	%aux98 = add i32 %aux96, %aux97
	store i32 %aux98, i32* @IdPos1
	br label %etiq52
	
	etiq52:
	;___Asignacion___
	%aux100 = load i32, i32* @Pivot1
	%aux101 = add i32 0, 1
	%aux102 = sub i32 %aux100, %aux101
	store i32 %aux102, i32* @Pivot1
	br label %etiq55
	
	etiq47:
	;___Asignacion___
	%aux104 = load i32, i32* @IdPos1
	%aux105 = add i32 0, 1
	%aux106 = add i32 %aux104, %aux105
	store i32 %aux106, i32* @IdPos1
	br label %etiq55
	
	etiq55:
	;___IfElse___
	%aux108 = add i32 0, 5
	%aux109 = load i32, i32* @Pivot1
	%aux110 = sub i32 %aux108, %aux109
	%aux111 = load i32, i32* @IdPos1
	%aux112 = icmp eq i32 %aux110, %aux111
	br i1 %aux112, label %etiq56, label %etiq57
	
	etiq56:
	;___Asignacion___
	%aux114 = load i32, i32* @_Acum1
	%aux115 = add i32 0, 5
	%aux116 = add i32 %aux114, %aux115
	store i32 %aux116, i32* @_Acum1
	br label %etiq60
	
	etiq60:
	;___Asignacion___
	%aux118 = load i32, i32* @IdPos1
	%aux119 = add i32 0, 1
	%aux120 = add i32 %aux118, %aux119
	store i32 %aux120, i32* @IdPos1
	br label %etiq62
	
	etiq62:
	;___Asignacion___
	%aux122 = load i32, i32* @Pivot1
	%aux123 = add i32 0, 1
	%aux124 = sub i32 %aux122, %aux123
	store i32 %aux124, i32* @Pivot1
	br label %etiq65
	
	etiq57:
	;___Asignacion___
	%aux126 = load i32, i32* @IdPos1
	%aux127 = add i32 0, 1
	%aux128 = add i32 %aux126, %aux127
	store i32 %aux128, i32* @IdPos1
	br label %etiq65
	
	etiq14:
	;___DisplayCadenaCaracteres___
	%aux129 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq65
	
	etiq10:
	;___DisplayCadenaCaracteres___
	%aux130 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq65
	
	etiq7:
	;___DisplayCadenaCaracteres___
	%aux131 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq65
	
	etiq65:
	;___Asignacion___
	%aux133 = load i32, i32* @_Acum1
	store i32 %aux133, i32* @res
	br label %etiq66
	
	etiq66:
	;___Asignacion___
	%aux135 = add i32 0, 2
	store i32 %aux135, i32* @Pivot1
	br label %etiq67
	
	etiq67:
	;___Asignacion___
	%aux137 = add i32 0, 0
	store i32 %aux137, i32* @IdPos1
	br label %etiq68
	
	etiq68:
	;___DisplayExpresion___
	%aux139 = load i32, i32* @res
	%aux138 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux139)
	br label %etiq69
	
	etiq69:
	ret i32 0
}

