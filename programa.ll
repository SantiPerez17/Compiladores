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
@a = global i32 0
@ahre = global i1 0
@aux = global i32 0
@b = global i32 0
@c = global i32 0
@d = global i32 0
@f = global double 0.0
@fi = global double 0.0
@pivot = global i32 0
@r = global i1 0
@res = global i32 0
@res2 = global i32 0
@res3 = global i32 0
@res4 = global i32 0
@str17 = private constant [21 x i8] c"\0Aingrese valor de f\0A\00"
@str25 = private constant [7 x i8] c"\0Apasa\0A\00"
@str26 = private constant [10 x i8] c"\0Ano pasa\0A\00"
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___DisplayCadenaCaracteres___
	%aux1 = call i32 @puts(i8* getelementptr ([21 x i8], [21 x i8] * @str17, i32 0, i32 0))
	br label %etiq2
	
	etiq2:
	;___Asignación___
	%aux3 = add i32 0, 0
	%aux4 = sitofp i32 %aux3 to double
	store double %aux4, double* @f
	br label %etiq3
	
	etiq3:
	;___Asignación___
	%aux6 = alloca double
	%aux7 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux6)
	%aux8 = load double, double* %aux6
	store double %aux8, double* @f
	br label %etiq4
	
	etiq4:
	;___Asignación___
	%aux10 = load double, double* @f
	%aux11 = add i32 0, 300
	%aux12 = sitofp i32 %aux11 to double
	%aux13 = fmul double %aux10, %aux12
	store double %aux13, double* @fi
	br label %etiq6
	
	etiq6:
	;___IfElse___
	%aux15 = load double, double* @fi
	
	etiq7:
	;___Asignación___
	%aux17 = add i32 0, 2
	store i32 %aux17, i32* @Pivot1
	br label %etiq8
	
	etiq8:
	;___IfElse___
	%aux19 = load i32, i32* @Pivot1
	%aux20 = add i32 0, 1
	%aux21 = icmp sge i32 %aux19, %aux20
	br i1 %aux21, label %etiq10, label %etiq11
	
	etiq10:
	;___IfElse___
	%aux23 = add i32 0, 2
	%aux24 = load i32, i32* @Pivot1
	%aux25 = icmp sge i32 %aux23, %aux24
	br i1 %aux25, label %etiq13, label %etiq14
	
	etiq13:
	;___IfElse___
	%aux27 = add i32 0, 2
	%aux28 = add i32 0, 0
	%aux29 = icmp sgt i32 %aux27, %aux28
	br i1 %aux29, label %etiq17, label %etiq18
	
	etiq17:
	;___IfElse___
	%aux31 = add i32 0, 2
	%aux32 = load i32, i32* @Pivot1
	%aux33 = sub i32 %aux31, %aux32
	%aux34 = load i32, i32* @IdPos1
	%aux35 = icmp eq i32 %aux33, %aux34
	br i1 %aux35, label %etiq20, label %etiq21
	
	etiq20:
	;___Asignación___
	%aux37 = load i32, i32* @_Acum1
	%aux38 = add i32 0, 5
	%aux39 = add i32 %aux37, %aux38
	store i32 %aux39, i32* @_Acum1
	br label %etiq24
	
	etiq24:
	;___Asignación___
	%aux41 = load i32, i32* @IdPos1
	%aux42 = add i32 0, 1
	%aux43 = add i32 %aux41, %aux42
	store i32 %aux43, i32* @IdPos1
	br label %etiq26
	
	etiq26:
	;___Asignación___
	%aux45 = load i32, i32* @Pivot1
	%aux46 = add i32 0, 1
	%aux47 = sub i32 %aux45, %aux46
	store i32 %aux47, i32* @Pivot1
	br label %etiq29
	
	etiq21:
	;___Asignación___
	%aux49 = load i32, i32* @IdPos1
	%aux50 = add i32 0, 1
	%aux51 = add i32 %aux49, %aux50
	store i32 %aux51, i32* @IdPos1
	br label %etiq29
	
	etiq29:
	;___IfElse___
	%aux53 = add i32 0, 2
	%aux54 = load i32, i32* @Pivot1
	%aux55 = sub i32 %aux53, %aux54
	%aux56 = load i32, i32* @IdPos1
	%aux57 = icmp eq i32 %aux55, %aux56
	br i1 %aux57, label %etiq30, label %etiq31
	
	etiq30:
	;___Asignación___
	%aux59 = load i32, i32* @_Acum1
	%aux60 = add i32 0, 5
	%aux61 = add i32 %aux59, %aux60
	store i32 %aux61, i32* @_Acum1
	br label %etiq34
	
	etiq34:
	;___Asignación___
	%aux63 = load i32, i32* @IdPos1
	%aux64 = add i32 0, 1
	%aux65 = add i32 %aux63, %aux64
	store i32 %aux65, i32* @IdPos1
	br label %etiq36
	
	etiq36:
	;___Asignación___
	%aux67 = load i32, i32* @Pivot1
	%aux68 = add i32 0, 1
	%aux69 = sub i32 %aux67, %aux68
	store i32 %aux69, i32* @Pivot1
	br label %etiq39
	
	etiq31:
	;___Asignación___
	%aux71 = load i32, i32* @IdPos1
	%aux72 = add i32 0, 1
	%aux73 = add i32 %aux71, %aux72
	store i32 %aux73, i32* @IdPos1
	br label %etiq39
	
	etiq18:
	;___DisplayCadenaCaracteres___
	%aux74 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq39
	
	etiq14:
	;___DisplayCadenaCaracteres___
	%aux75 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq39
	
	etiq11:
	;___DisplayCadenaCaracteres___
	%aux76 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq39
	
	etiq39:
	;___Asignación___
	%aux78 = load i32, i32* @_Acum1
	store i32 %aux78, i32* @_Acum2
	br label %etiq40
	
	etiq40:
	%aux79 = load i32, i32* @_Acum2
	%aux80 = sub i32 0, %aux79
	%aux81 = sitofp i32 %aux80 to double
	%aux82 = fcmp ult double %aux15, %aux81
	br i1 %aux82, label %etiq41, label %etiq42
	
	etiq41:
	;___DisplayCadenaCaracteres___
	%aux83 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str25, i32 0, i32 0))
	br label %etiq45
	
	etiq42:
	;___DisplayCadenaCaracteres___
	%aux84 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str26, i32 0, i32 0))
	br label %etiq44
	
	etiq44:
	;___DisplayExpresion___
	%aux86 = load double, double* @fi
	%aux87 = load double, double* @f
	%aux88 = fadd double %aux86, %aux87
	%aux85 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux88)
	br label %etiq45
	
	etiq45:
	ret i32 0
}

