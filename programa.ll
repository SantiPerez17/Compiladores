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
@IdPos6 = global i32 0
@IdPos7 = global i32 0
@Pivot6 = global i32 0
@Pivot7 = global i32 0
@_Acum11 = global i32 0
@_Acum12 = global i32 0
@_Acum13 = global i32 0
@_Acum14 = global i32 0
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
@str27 = private constant [7 x i8] c"\0Apasa\0A\00"
@str28 = private constant [10 x i8] c"\0Ano pasa\0A\00"
@str29 = private constant [7 x i8] c"\0Acero\0A\00"
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq431:
	;___IfElse___
	%aux846 = fadd double 0.0, 5.5
	br label %etiq432
	
	etiq432:
	;___Asignación___
	%aux848 = add i32 0, 3
	store i32 %aux848, i32* @Pivot6
	br label %etiq433
	
	etiq433:
	;___IfElse___
	%aux850 = load i32, i32* @Pivot6
	%aux851 = add i32 0, 1
	%aux852 = icmp sge i32 %aux850, %aux851
	br i1 %aux852, label %etiq435, label %etiq436
	
	etiq435:
	;___IfElse___
	%aux854 = add i32 0, 3
	%aux855 = load i32, i32* @Pivot6
	%aux856 = icmp sge i32 %aux854, %aux855
	br i1 %aux856, label %etiq438, label %etiq439
	
	etiq438:
	;___IfElse___
	%aux858 = add i32 0, 3
	%aux859 = add i32 0, 0
	%aux860 = icmp sgt i32 %aux858, %aux859
	br i1 %aux860, label %etiq442, label %etiq443
	
	etiq442:
	;___IfElse___
	%aux862 = add i32 0, 3
	%aux863 = load i32, i32* @Pivot6
	%aux864 = sub i32 %aux862, %aux863
	%aux865 = load i32, i32* @IdPos6
	%aux866 = icmp eq i32 %aux864, %aux865
	br i1 %aux866, label %etiq445, label %etiq446
	
	etiq445:
	;___Asignación___
	%aux868 = load i32, i32* @_Acum11
	%aux869 = add i32 0, 1
	%aux870 = add i32 %aux868, %aux869
	store i32 %aux870, i32* @_Acum11
	br label %etiq449
	
	etiq449:
	;___Asignación___
	%aux872 = load i32, i32* @IdPos6
	%aux873 = add i32 0, 1
	%aux874 = add i32 %aux872, %aux873
	store i32 %aux874, i32* @IdPos6
	br label %etiq451
	
	etiq451:
	;___Asignación___
	%aux876 = load i32, i32* @Pivot6
	%aux877 = add i32 0, 1
	%aux878 = sub i32 %aux876, %aux877
	store i32 %aux878, i32* @Pivot6
	br label %etiq454
	
	etiq446:
	;___Asignación___
	%aux880 = load i32, i32* @IdPos6
	%aux881 = add i32 0, 1
	%aux882 = add i32 %aux880, %aux881
	store i32 %aux882, i32* @IdPos6
	br label %etiq454
	
	etiq454:
	;___IfElse___
	%aux884 = add i32 0, 3
	%aux885 = load i32, i32* @Pivot6
	%aux886 = sub i32 %aux884, %aux885
	%aux887 = load i32, i32* @IdPos6
	%aux888 = icmp eq i32 %aux886, %aux887
	br i1 %aux888, label %etiq455, label %etiq456
	
	etiq455:
	;___Asignación___
	%aux890 = load i32, i32* @_Acum11
	%aux891 = add i32 0, 7
	%aux892 = add i32 %aux890, %aux891
	store i32 %aux892, i32* @_Acum11
	br label %etiq459
	
	etiq459:
	;___Asignación___
	%aux894 = load i32, i32* @IdPos6
	%aux895 = add i32 0, 1
	%aux896 = add i32 %aux894, %aux895
	store i32 %aux896, i32* @IdPos6
	br label %etiq461
	
	etiq461:
	;___Asignación___
	%aux898 = load i32, i32* @Pivot6
	%aux899 = add i32 0, 1
	%aux900 = sub i32 %aux898, %aux899
	store i32 %aux900, i32* @Pivot6
	br label %etiq464
	
	etiq456:
	;___Asignación___
	%aux902 = load i32, i32* @IdPos6
	%aux903 = add i32 0, 1
	%aux904 = add i32 %aux902, %aux903
	store i32 %aux904, i32* @IdPos6
	br label %etiq464
	
	etiq464:
	;___IfElse___
	%aux906 = add i32 0, 3
	%aux907 = load i32, i32* @Pivot6
	%aux908 = sub i32 %aux906, %aux907
	%aux909 = load i32, i32* @IdPos6
	%aux910 = icmp eq i32 %aux908, %aux909
	br i1 %aux910, label %etiq465, label %etiq466
	
	etiq465:
	;___Asignación___
	%aux912 = load i32, i32* @_Acum11
	%aux913 = add i32 0, 2
	%aux914 = add i32 %aux912, %aux913
	store i32 %aux914, i32* @_Acum11
	br label %etiq469
	
	etiq469:
	;___Asignación___
	%aux916 = load i32, i32* @IdPos6
	%aux917 = add i32 0, 1
	%aux918 = add i32 %aux916, %aux917
	store i32 %aux918, i32* @IdPos6
	br label %etiq471
	
	etiq471:
	;___Asignación___
	%aux920 = load i32, i32* @Pivot6
	%aux921 = add i32 0, 1
	%aux922 = sub i32 %aux920, %aux921
	store i32 %aux922, i32* @Pivot6
	br label %etiq474
	
	etiq466:
	;___Asignación___
	%aux924 = load i32, i32* @IdPos6
	%aux925 = add i32 0, 1
	%aux926 = add i32 %aux924, %aux925
	store i32 %aux926, i32* @IdPos6
	br label %etiq474
	
	etiq443:
	;___DisplayCadenaCaracteres___
	%aux927 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq474
	
	etiq439:
	;___DisplayCadenaCaracteres___
	%aux928 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq474
	
	etiq436:
	;___DisplayCadenaCaracteres___
	%aux929 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq474
	
	etiq474:
	;___Asignación___
	%aux931 = load i32, i32* @_Acum11
	store i32 %aux931, i32* @_Acum12
	br label %etiq475
	
	etiq475:
	%aux932 = load i32, i32* @_Acum12
	%aux933 = sub i32 0, %aux932
	%aux934 = sitofp i32 %aux933 to double
	%aux935 = fadd double 0.0, 7.6
	br label %etiq477
	
	etiq477:
	;___Asignación___
	%aux937 = add i32 0, 2
	store i32 %aux937, i32* @Pivot7
	br label %etiq478
	
	etiq478:
	;___IfElse___
	%aux939 = load i32, i32* @Pivot7
	%aux940 = add i32 0, 1
	%aux941 = icmp sge i32 %aux939, %aux940
	br i1 %aux941, label %etiq480, label %etiq481
	
	etiq480:
	;___IfElse___
	%aux943 = add i32 0, 2
	%aux944 = load i32, i32* @Pivot7
	%aux945 = icmp sge i32 %aux943, %aux944
	br i1 %aux945, label %etiq483, label %etiq484
	
	etiq483:
	;___IfElse___
	%aux947 = add i32 0, 2
	%aux948 = add i32 0, 0
	%aux949 = icmp sgt i32 %aux947, %aux948
	br i1 %aux949, label %etiq487, label %etiq488
	
	etiq487:
	;___IfElse___
	%aux951 = add i32 0, 2
	%aux952 = load i32, i32* @Pivot7
	%aux953 = sub i32 %aux951, %aux952
	%aux954 = load i32, i32* @IdPos7
	%aux955 = icmp eq i32 %aux953, %aux954
	br i1 %aux955, label %etiq490, label %etiq491
	
	etiq490:
	;___Asignación___
	%aux957 = load i32, i32* @_Acum13
	%aux958 = add i32 0, 5
	%aux959 = add i32 %aux957, %aux958
	store i32 %aux959, i32* @_Acum13
	br label %etiq494
	
	etiq494:
	;___Asignación___
	%aux961 = load i32, i32* @IdPos7
	%aux962 = add i32 0, 1
	%aux963 = add i32 %aux961, %aux962
	store i32 %aux963, i32* @IdPos7
	br label %etiq496
	
	etiq496:
	;___Asignación___
	%aux965 = load i32, i32* @Pivot7
	%aux966 = add i32 0, 1
	%aux967 = sub i32 %aux965, %aux966
	store i32 %aux967, i32* @Pivot7
	br label %etiq499
	
	etiq491:
	;___Asignación___
	%aux969 = load i32, i32* @IdPos7
	%aux970 = add i32 0, 1
	%aux971 = add i32 %aux969, %aux970
	store i32 %aux971, i32* @IdPos7
	br label %etiq499
	
	etiq499:
	;___IfElse___
	%aux973 = add i32 0, 2
	%aux974 = load i32, i32* @Pivot7
	%aux975 = sub i32 %aux973, %aux974
	%aux976 = load i32, i32* @IdPos7
	%aux977 = icmp eq i32 %aux975, %aux976
	br i1 %aux977, label %etiq500, label %etiq501
	
	etiq500:
	;___Asignación___
	%aux979 = load i32, i32* @_Acum13
	%aux980 = add i32 0, 5
	%aux981 = add i32 %aux979, %aux980
	store i32 %aux981, i32* @_Acum13
	br label %etiq504
	
	etiq504:
	;___Asignación___
	%aux983 = load i32, i32* @IdPos7
	%aux984 = add i32 0, 1
	%aux985 = add i32 %aux983, %aux984
	store i32 %aux985, i32* @IdPos7
	br label %etiq506
	
	etiq506:
	;___Asignación___
	%aux987 = load i32, i32* @Pivot7
	%aux988 = add i32 0, 1
	%aux989 = sub i32 %aux987, %aux988
	store i32 %aux989, i32* @Pivot7
	br label %etiq509
	
	etiq501:
	;___Asignación___
	%aux991 = load i32, i32* @IdPos7
	%aux992 = add i32 0, 1
	%aux993 = add i32 %aux991, %aux992
	store i32 %aux993, i32* @IdPos7
	br label %etiq509
	
	etiq488:
	;___DisplayCadenaCaracteres___
	%aux994 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq509
	
	etiq484:
	;___DisplayCadenaCaracteres___
	%aux995 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq509
	
	etiq481:
	;___DisplayCadenaCaracteres___
	%aux996 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq509
	
	etiq509:
	;___Asignación___
	%aux998 = load i32, i32* @_Acum13
	store i32 %aux998, i32* @_Acum14
	br label %etiq510
	
	etiq510:
	%aux999 = load i32, i32* @_Acum14
	%aux1000 = sub i32 0, %aux999
	%aux1001 = sitofp i32 %aux1000 to double
	%aux1002 = fsub double %aux935, %aux1001
	%aux1003 = fmul double %aux934, %aux1002
	%aux1004 = fsub double 0.0, %aux1003
	%aux1005 = fcmp ult double %aux846, %aux1004
	%aux1006 = add i1 0, 1
	br i1 %aux1006, label %etiq669, label %etiq670
	
	etiq669:
	;___DisplayCadenaCaracteres___
	%aux1327 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str27, i32 0, i32 0))
	br label %etiq672
	
	etiq670:
	;___DisplayCadenaCaracteres___
	%aux1328 = call i32 @puts(i8* getelementptr ([10 x i8], [10 x i8] * @str28, i32 0, i32 0))
	br label %etiq672
	
	etiq672:
	;___Asignación___
	%aux1330 = add i32 0, 1
	store i32 %aux1330, i32* @a
	br label %etiq673
	
	etiq673:
	;___IfElse___
	%aux1332 = load i32, i32* @a
	%aux1333 = add i32 0, 1
	%aux1334 = sub i32 0, %aux1333
	%aux1335 = icmp eq i32 %aux1332, %aux1334
	br i1 %aux1335, label %etiq675, label %etiq676
	
	etiq675:
	;___IfElse___
	%aux1337 = load i32, i32* @b
	%aux1338 = add i32 0, 1
	%aux1339 = add i32 0, 5
	%aux1340 = mul i32 %aux1338, %aux1339
	%aux1341 = sub i32 0, %aux1340
	%aux1342 = icmp eq i32 %aux1337, %aux1341
	br i1 %aux1342, label %etiq680, label %etiq681
	
	etiq680:
	;___IfElse___
	%aux1344 = load i32, i32* @c
	%aux1345 = add i32 0, 2
	%aux1346 = sub i32 0, %aux1345
	%aux1347 = icmp eq i32 %aux1344, %aux1346
	br i1 %aux1347, label %etiq684, label %etiq685
	
	etiq684:
	;___DisplayExpresion___
	%aux1349 = load i32, i32* @a
	%aux1350 = load i32, i32* @b
	%aux1351 = add i32 %aux1349, %aux1350
	%aux1352 = load i32, i32* @c
	%aux1353 = add i32 %aux1351, %aux1352
	%aux1348 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux1353)
	br label %etiq687
	
	etiq685:
	;___DisplayExpresion___
	%aux1355 = load i32, i32* @a
	%aux1356 = load i32, i32* @b
	%aux1357 = add i32 %aux1355, %aux1356
	%aux1354 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux1357)
	br label %etiq687
	
	etiq681:
	;___DisplayExpresion___
	%aux1359 = load i32, i32* @a
	%aux1358 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux1359)
	br label %etiq687
	
	etiq676:
	;___DisplayCadenaCaracteres___
	%aux1360 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str29, i32 0, i32 0))
	br label %etiq687
	
	etiq687:
	ret i32 0
}

