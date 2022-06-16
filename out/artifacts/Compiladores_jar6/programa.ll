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
@IdPos41 = global i32 0
@IdPos42 = global i32 0
@IdPos43 = global i32 0
@IdPos44 = global i32 0
@IdPos45 = global i32 0
@IdPos46 = global i32 0
@IdPos47 = global i32 0
@IdPos48 = global i32 0
@IdPos49 = global i32 0
@IdPos50 = global i32 0
@Pivot41 = global i32 0
@Pivot42 = global i32 0
@Pivot43 = global i32 0
@Pivot44 = global i32 0
@Pivot45 = global i32 0
@Pivot46 = global i32 0
@Pivot47 = global i32 0
@Pivot48 = global i32 0
@Pivot49 = global i32 0
@Pivot50 = global i32 0
@_Acum100 = global i32 0
@_Acum81 = global i32 0
@_Acum82 = global i32 0
@_Acum83 = global i32 0
@_Acum84 = global i32 0
@_Acum85 = global i32 0
@_Acum86 = global i32 0
@_Acum87 = global i32 0
@_Acum88 = global i32 0
@_Acum89 = global i32 0
@_Acum90 = global i32 0
@_Acum91 = global i32 0
@_Acum92 = global i32 0
@_Acum93 = global i32 0
@_Acum94 = global i32 0
@_Acum95 = global i32 0
@_Acum96 = global i32 0
@_Acum97 = global i32 0
@_Acum98 = global i32 0
@_Acum99 = global i32 0
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
	
	etiq1807:
	;___Asignacion___
	%aux3786 = add i1 0, 1
	store i1 %aux3786, i1* @na
	br label %etiq1808
	
	etiq1808:
	;___Asignacion___
	%aux3788 = add i1 0, 1
	store i1 %aux3788, i1* @aux
	br label %etiq1809
	
	etiq1809:
	;___While___
	%aux3790 = load i1, i1* @aux
	br i1 %aux3790, label %etiq1810, label %etiq3612
	
	etiq1810:
	;___DisplayCadenaCaracteres___
	%aux3791 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str11, i32 0, i32 0))
	br label %etiq1812
	
	etiq1812:
	;___Asignacion___
	%aux3793 = alloca i32
	%aux3794 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux3793)
	%aux3795 = load i32, i32* %aux3793
	store i32 %aux3795, i32* @edad
	br label %etiq1813
	
	etiq1813:
	;___IfElse___
	%aux3797 = load i32, i32* @edad
	%aux3798 = add i32 0, 12
	%aux3799 = icmp sle i32 %aux3797, %aux3798
	br i1 %aux3799, label %etiq1815, label %etiq1816
	
	etiq1815:
	;___DisplayCadenaCaracteres___
	%aux3800 = call i32 @puts(i8* getelementptr ([19 x i8], [19 x i8] * @str12, i32 0, i32 0))
	br label %etiq1826
	
	etiq1816:
	;___IfElse___
	%aux3802 = load i32, i32* @edad
	%aux3803 = add i32 0, 25
	%aux3804 = icmp sle i32 %aux3802, %aux3803
	br i1 %aux3804, label %etiq1819, label %etiq1820
	
	etiq1819:
	;___DisplayCadenaCaracteres___
	%aux3805 = call i32 @puts(i8* getelementptr ([25 x i8], [25 x i8] * @str13, i32 0, i32 0))
	br label %etiq1826
	
	etiq1820:
	;___IfElse___
	%aux3807 = load i32, i32* @edad
	%aux3808 = add i32 0, 65
	%aux3809 = icmp sle i32 %aux3807, %aux3808
	br i1 %aux3809, label %etiq1823, label %etiq1824
	
	etiq1823:
	;___DisplayCadenaCaracteres___
	%aux3810 = call i32 @puts(i8* getelementptr ([21 x i8], [21 x i8] * @str14, i32 0, i32 0))
	br label %etiq1826
	
	etiq1824:
	;___DisplayCadenaCaracteres___
	%aux3811 = call i32 @puts(i8* getelementptr ([26 x i8], [26 x i8] * @str15, i32 0, i32 0))
	br label %etiq1826
	
	etiq1826:
	;___Asignacion___
	%aux3813 = load i32, i32* @edad
	store i32 %aux3813, i32* @edad1
	br label %etiq1827
	
	etiq1827:
	;___Asignacion___
	%aux3815 = add i1 0, 1
	store i1 %aux3815, i1* @aux2
	br label %etiq1828
	
	etiq1828:
	;___While___
	%aux3817 = load i32, i32* @edad1
	%aux3818 = add i32 0, 0
	%aux3819 = icmp ne i32 %aux3817, %aux3818
	br i1 %aux3819, label %etiq1830, label %etiq1835
	
	etiq1830:
	;___Asignacion___
	%aux3821 = load i32, i32* @edad1
	%aux3822 = add i32 0, 1
	%aux3823 = sub i32 %aux3821, %aux3822
	store i32 %aux3823, i32* @edad1
	br label %etiq1833
	
	etiq1833:
	;___Asignacion___
	%aux3825 = load i1, i1* @aux2
	%aux3826 = xor i1 %aux3825, 1
	store i1 %aux3826, i1* @aux2
	br label %etiq1828
	
	etiq1835:
	;___IfElse___
	%aux3828 = load i1, i1* @aux2
	br i1 %aux3828, label %etiq1836, label %etiq1837
	
	etiq1836:
	;___DisplayCadenaCaracteres___
	%aux3829 = call i32 @puts(i8* getelementptr ([17 x i8], [17 x i8] * @str16, i32 0, i32 0))
	br label %etiq1839
	
	etiq1837:
	;___DisplayCadenaCaracteres___
	%aux3830 = call i32 @puts(i8* getelementptr ([19 x i8], [19 x i8] * @str17, i32 0, i32 0))
	br label %etiq1839
	
	etiq1839:
	;___IfSimple___
	%aux3832 = load i32, i32* @edad
	%aux3833 = add i32 0, 100
	%aux3834 = icmp sge i32 %aux3832, %aux3833
	%aux3835 = xor i1 %aux3834, 1
	br i1 %aux3835, label %etiq1841, label %etiq3570
	
	etiq1841:
	;___Asignacion___
	%aux3837 = add i32 0, 100
	%aux3838 = load i32, i32* @edad
	%aux3839 = sub i32 %aux3837, %aux3838
	store i32 %aux3839, i32* @pivot
	br label %etiq1843
	
	etiq1843:
	;___Asignacion___
	%aux3841 = add i32 0, 0
	store i32 %aux3841, i32* @_Acum97
	br label %etiq1844
	
	etiq1844:
	;___Asignacion___
	%aux3843 = add i32 0, 0
	store i32 %aux3843, i32* @_Acum98
	br label %etiq1845
	
	etiq1845:
	;___Asignacion___
	%aux3845 = add i32 0, 1
	store i32 %aux3845, i32* @Pivot49
	br label %etiq1846
	
	etiq1846:
	;___IfElse___
	%aux3847 = load i32, i32* @Pivot49
	%aux3848 = add i32 0, 1
	%aux3849 = icmp sge i32 %aux3847, %aux3848
	br i1 %aux3849, label %etiq1848, label %etiq1849
	
	etiq1848:
	;___IfElse___
	%aux3851 = add i32 0, 2
	%aux3852 = load i32, i32* @Pivot49
	%aux3853 = icmp sge i32 %aux3851, %aux3852
	br i1 %aux3853, label %etiq1851, label %etiq1852
	
	etiq1851:
	;___IfElse___
	%aux3855 = add i32 0, 2
	%aux3856 = add i32 0, 0
	%aux3857 = icmp sgt i32 %aux3855, %aux3856
	br i1 %aux3857, label %etiq1855, label %etiq1856
	
	etiq1855:
	;___IfElse___
	%aux3859 = add i32 0, 2
	%aux3860 = load i32, i32* @Pivot49
	%aux3861 = sub i32 %aux3859, %aux3860
	%aux3862 = load i32, i32* @IdPos49
	%aux3863 = icmp eq i32 %aux3861, %aux3862
	br i1 %aux3863, label %etiq1858, label %etiq1859
	
	etiq1858:
	;___Asignacion___
	%aux3865 = load i32, i32* @_Acum97
	%aux3866 = add i32 0, 2
	%aux3867 = add i32 %aux3865, %aux3866
	store i32 %aux3867, i32* @_Acum97
	br label %etiq1862
	
	etiq1862:
	;___Asignacion___
	%aux3869 = load i32, i32* @IdPos49
	%aux3870 = add i32 0, 1
	%aux3871 = add i32 %aux3869, %aux3870
	store i32 %aux3871, i32* @IdPos49
	br label %etiq1864
	
	etiq1864:
	;___Asignacion___
	%aux3873 = load i32, i32* @Pivot49
	%aux3874 = add i32 0, 1
	%aux3875 = sub i32 %aux3873, %aux3874
	store i32 %aux3875, i32* @Pivot49
	br label %etiq1867
	
	etiq1859:
	;___Asignacion___
	%aux3877 = load i32, i32* @IdPos49
	%aux3878 = add i32 0, 1
	%aux3879 = add i32 %aux3877, %aux3878
	store i32 %aux3879, i32* @IdPos49
	br label %etiq1867
	
	etiq1867:
	;___IfElse___
	%aux3881 = add i32 0, 2
	%aux3882 = load i32, i32* @Pivot49
	%aux3883 = sub i32 %aux3881, %aux3882
	%aux3884 = load i32, i32* @IdPos49
	%aux3885 = icmp eq i32 %aux3883, %aux3884
	br i1 %aux3885, label %etiq1868, label %etiq1869
	
	etiq1868:
	;___Asignacion___
	%aux3887 = load i32, i32* @_Acum97
	%aux3888 = add i32 0, 1
	%aux3889 = add i32 %aux3887, %aux3888
	store i32 %aux3889, i32* @_Acum97
	br label %etiq1872
	
	etiq1872:
	;___Asignacion___
	%aux3891 = load i32, i32* @IdPos49
	%aux3892 = add i32 0, 1
	%aux3893 = add i32 %aux3891, %aux3892
	store i32 %aux3893, i32* @IdPos49
	br label %etiq1874
	
	etiq1874:
	;___Asignacion___
	%aux3895 = load i32, i32* @Pivot49
	%aux3896 = add i32 0, 1
	%aux3897 = sub i32 %aux3895, %aux3896
	store i32 %aux3897, i32* @Pivot49
	br label %etiq1877
	
	etiq1869:
	;___Asignacion___
	%aux3899 = load i32, i32* @IdPos49
	%aux3900 = add i32 0, 1
	%aux3901 = add i32 %aux3899, %aux3900
	store i32 %aux3901, i32* @IdPos49
	br label %etiq1877
	
	etiq1856:
	;___DisplayCadenaCaracteres___
	%aux3902 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1877
	
	etiq1852:
	;___DisplayCadenaCaracteres___
	%aux3903 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1877
	
	etiq1849:
	;___DisplayCadenaCaracteres___
	%aux3904 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1877
	
	etiq1877:
	;___Asignacion___
	%aux3906 = load i32, i32* @_Acum97
	store i32 %aux3906, i32* @_Acum98
	br label %etiq1878
	
	etiq1878:
	;___Asignacion___
	%aux3908 = add i32 0, 1
	store i32 %aux3908, i32* @Pivot49
	br label %etiq1879
	
	etiq1879:
	;___Asignacion___
	%aux3910 = add i32 0, 0
	store i32 %aux3910, i32* @IdPos49
	br label %etiq1880
	
	etiq1880:
	;___Asignacion___
	%aux3912 = add i32 0, 0
	store i32 %aux3912, i32* @_Acum93
	br label %etiq1881
	
	etiq1881:
	;___Asignacion___
	%aux3914 = add i32 0, 0
	store i32 %aux3914, i32* @_Acum94
	br label %etiq1882
	
	etiq1882:
	;___Asignacion___
	%aux3916 = add i32 0, 2
	store i32 %aux3916, i32* @Pivot47
	br label %etiq1883
	
	etiq1883:
	;___IfElse___
	%aux3918 = load i32, i32* @Pivot47
	%aux3919 = add i32 0, 1
	%aux3920 = icmp sge i32 %aux3918, %aux3919
	br i1 %aux3920, label %etiq1885, label %etiq1886
	
	etiq1885:
	;___IfElse___
	%aux3922 = add i32 0, 2
	%aux3923 = load i32, i32* @Pivot47
	%aux3924 = icmp sge i32 %aux3922, %aux3923
	br i1 %aux3924, label %etiq1888, label %etiq1889
	
	etiq1888:
	;___IfElse___
	%aux3926 = add i32 0, 2
	%aux3927 = add i32 0, 0
	%aux3928 = icmp sgt i32 %aux3926, %aux3927
	br i1 %aux3928, label %etiq1892, label %etiq1893
	
	etiq1892:
	;___IfElse___
	%aux3930 = add i32 0, 2
	%aux3931 = load i32, i32* @Pivot47
	%aux3932 = sub i32 %aux3930, %aux3931
	%aux3933 = load i32, i32* @IdPos47
	%aux3934 = icmp eq i32 %aux3932, %aux3933
	br i1 %aux3934, label %etiq1895, label %etiq1896
	
	etiq1895:
	;___Asignacion___
	%aux3936 = load i32, i32* @_Acum93
	%aux3937 = load i32, i32* @edad
	%aux3938 = add i32 0, 0
	%aux3939 = mul i32 %aux3937, %aux3938
	%aux3940 = add i32 %aux3936, %aux3939
	store i32 %aux3940, i32* @_Acum93
	br label %etiq1900
	
	etiq1900:
	;___Asignacion___
	%aux3942 = load i32, i32* @IdPos47
	%aux3943 = add i32 0, 1
	%aux3944 = add i32 %aux3942, %aux3943
	store i32 %aux3944, i32* @IdPos47
	br label %etiq1902
	
	etiq1902:
	;___Asignacion___
	%aux3946 = load i32, i32* @Pivot47
	%aux3947 = add i32 0, 1
	%aux3948 = sub i32 %aux3946, %aux3947
	store i32 %aux3948, i32* @Pivot47
	br label %etiq1905
	
	etiq1896:
	;___Asignacion___
	%aux3950 = load i32, i32* @IdPos47
	%aux3951 = add i32 0, 1
	%aux3952 = add i32 %aux3950, %aux3951
	store i32 %aux3952, i32* @IdPos47
	br label %etiq1905
	
	etiq1905:
	;___IfElse___
	%aux3954 = add i32 0, 2
	%aux3955 = load i32, i32* @Pivot47
	%aux3956 = sub i32 %aux3954, %aux3955
	%aux3957 = load i32, i32* @IdPos47
	%aux3958 = icmp eq i32 %aux3956, %aux3957
	br i1 %aux3958, label %etiq1906, label %etiq1907
	
	etiq1906:
	;___Asignacion___
	%aux3960 = load i32, i32* @_Acum93
	%aux3961 = add i32 0, 2
	%aux3962 = add i32 %aux3960, %aux3961
	store i32 %aux3962, i32* @_Acum93
	br label %etiq1910
	
	etiq1910:
	;___Asignacion___
	%aux3964 = load i32, i32* @IdPos47
	%aux3965 = add i32 0, 1
	%aux3966 = add i32 %aux3964, %aux3965
	store i32 %aux3966, i32* @IdPos47
	br label %etiq1912
	
	etiq1912:
	;___Asignacion___
	%aux3968 = load i32, i32* @Pivot47
	%aux3969 = add i32 0, 1
	%aux3970 = sub i32 %aux3968, %aux3969
	store i32 %aux3970, i32* @Pivot47
	br label %etiq1915
	
	etiq1907:
	;___Asignacion___
	%aux3972 = load i32, i32* @IdPos47
	%aux3973 = add i32 0, 1
	%aux3974 = add i32 %aux3972, %aux3973
	store i32 %aux3974, i32* @IdPos47
	br label %etiq1915
	
	etiq1893:
	;___DisplayCadenaCaracteres___
	%aux3975 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1915
	
	etiq1889:
	;___DisplayCadenaCaracteres___
	%aux3976 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1915
	
	etiq1886:
	;___DisplayCadenaCaracteres___
	%aux3977 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1915
	
	etiq1915:
	;___Asignacion___
	%aux3979 = load i32, i32* @_Acum93
	store i32 %aux3979, i32* @_Acum94
	br label %etiq1916
	
	etiq1916:
	;___Asignacion___
	%aux3981 = add i32 0, 2
	store i32 %aux3981, i32* @Pivot47
	br label %etiq1917
	
	etiq1917:
	;___Asignacion___
	%aux3983 = add i32 0, 0
	store i32 %aux3983, i32* @IdPos47
	br label %etiq1918
	
	etiq1918:
	;___Asignacion___
	%aux3985 = add i32 0, 0
	store i32 %aux3985, i32* @_Acum89
	br label %etiq1919
	
	etiq1919:
	;___Asignacion___
	%aux3987 = add i32 0, 0
	store i32 %aux3987, i32* @_Acum90
	br label %etiq1920
	
	etiq1920:
	;___Asignacion___
	%aux3989 = add i32 0, 4
	store i32 %aux3989, i32* @Pivot45
	br label %etiq1921
	
	etiq1921:
	;___IfElse___
	%aux3991 = load i32, i32* @Pivot45
	%aux3992 = add i32 0, 1
	%aux3993 = icmp sge i32 %aux3991, %aux3992
	br i1 %aux3993, label %etiq1923, label %etiq1924
	
	etiq1923:
	;___IfElse___
	%aux3995 = add i32 0, 4
	%aux3996 = load i32, i32* @Pivot45
	%aux3997 = icmp sge i32 %aux3995, %aux3996
	br i1 %aux3997, label %etiq1926, label %etiq1927
	
	etiq1926:
	;___IfElse___
	%aux3999 = add i32 0, 4
	%aux4000 = add i32 0, 0
	%aux4001 = icmp sgt i32 %aux3999, %aux4000
	br i1 %aux4001, label %etiq1930, label %etiq1931
	
	etiq1930:
	;___IfElse___
	%aux4003 = add i32 0, 4
	%aux4004 = load i32, i32* @Pivot45
	%aux4005 = sub i32 %aux4003, %aux4004
	%aux4006 = load i32, i32* @IdPos45
	%aux4007 = icmp eq i32 %aux4005, %aux4006
	br i1 %aux4007, label %etiq1933, label %etiq1934
	
	etiq1933:
	;___Asignacion___
	%aux4009 = load i32, i32* @_Acum89
	%aux4010 = add i32 0, 1
	%aux4011 = add i32 %aux4009, %aux4010
	store i32 %aux4011, i32* @_Acum89
	br label %etiq1937
	
	etiq1937:
	;___Asignacion___
	%aux4013 = load i32, i32* @IdPos45
	%aux4014 = add i32 0, 1
	%aux4015 = add i32 %aux4013, %aux4014
	store i32 %aux4015, i32* @IdPos45
	br label %etiq1939
	
	etiq1939:
	;___Asignacion___
	%aux4017 = load i32, i32* @Pivot45
	%aux4018 = add i32 0, 1
	%aux4019 = sub i32 %aux4017, %aux4018
	store i32 %aux4019, i32* @Pivot45
	br label %etiq1942
	
	etiq1934:
	;___Asignacion___
	%aux4021 = load i32, i32* @IdPos45
	%aux4022 = add i32 0, 1
	%aux4023 = add i32 %aux4021, %aux4022
	store i32 %aux4023, i32* @IdPos45
	br label %etiq1942
	
	etiq1942:
	;___IfElse___
	%aux4025 = add i32 0, 4
	%aux4026 = load i32, i32* @Pivot45
	%aux4027 = sub i32 %aux4025, %aux4026
	%aux4028 = load i32, i32* @IdPos45
	%aux4029 = icmp eq i32 %aux4027, %aux4028
	br i1 %aux4029, label %etiq1943, label %etiq1944
	
	etiq1943:
	;___Asignacion___
	%aux4031 = load i32, i32* @_Acum89
	%aux4032 = add i32 0, 2
	%aux4033 = add i32 %aux4031, %aux4032
	store i32 %aux4033, i32* @_Acum89
	br label %etiq1947
	
	etiq1947:
	;___Asignacion___
	%aux4035 = load i32, i32* @IdPos45
	%aux4036 = add i32 0, 1
	%aux4037 = add i32 %aux4035, %aux4036
	store i32 %aux4037, i32* @IdPos45
	br label %etiq1949
	
	etiq1949:
	;___Asignacion___
	%aux4039 = load i32, i32* @Pivot45
	%aux4040 = add i32 0, 1
	%aux4041 = sub i32 %aux4039, %aux4040
	store i32 %aux4041, i32* @Pivot45
	br label %etiq1952
	
	etiq1944:
	;___Asignacion___
	%aux4043 = load i32, i32* @IdPos45
	%aux4044 = add i32 0, 1
	%aux4045 = add i32 %aux4043, %aux4044
	store i32 %aux4045, i32* @IdPos45
	br label %etiq1952
	
	etiq1952:
	;___IfElse___
	%aux4047 = add i32 0, 4
	%aux4048 = load i32, i32* @Pivot45
	%aux4049 = sub i32 %aux4047, %aux4048
	%aux4050 = load i32, i32* @IdPos45
	%aux4051 = icmp eq i32 %aux4049, %aux4050
	br i1 %aux4051, label %etiq1953, label %etiq1954
	
	etiq1953:
	;___Asignacion___
	%aux4053 = load i32, i32* @_Acum89
	%aux4054 = add i32 0, 3
	%aux4055 = add i32 %aux4053, %aux4054
	store i32 %aux4055, i32* @_Acum89
	br label %etiq1957
	
	etiq1957:
	;___Asignacion___
	%aux4057 = load i32, i32* @IdPos45
	%aux4058 = add i32 0, 1
	%aux4059 = add i32 %aux4057, %aux4058
	store i32 %aux4059, i32* @IdPos45
	br label %etiq1959
	
	etiq1959:
	;___Asignacion___
	%aux4061 = load i32, i32* @Pivot45
	%aux4062 = add i32 0, 1
	%aux4063 = sub i32 %aux4061, %aux4062
	store i32 %aux4063, i32* @Pivot45
	br label %etiq1972
	
	etiq1954:
	;___Asignacion___
	%aux4065 = load i32, i32* @IdPos45
	%aux4066 = add i32 0, 1
	%aux4067 = add i32 %aux4065, %aux4066
	store i32 %aux4067, i32* @IdPos45
	br label %etiq1962
	
	etiq1962:
	;___IfElse___
	%aux4069 = add i32 0, 4
	%aux4070 = load i32, i32* @Pivot45
	%aux4071 = sub i32 %aux4069, %aux4070
	%aux4072 = load i32, i32* @IdPos45
	%aux4073 = icmp eq i32 %aux4071, %aux4072
	br i1 %aux4073, label %etiq1963, label %etiq1964
	
	etiq1963:
	;___Asignacion___
	%aux4075 = load i32, i32* @_Acum89
	%aux4076 = add i32 0, 4
	%aux4077 = add i32 %aux4075, %aux4076
	store i32 %aux4077, i32* @_Acum89
	br label %etiq1967
	
	etiq1967:
	;___Asignacion___
	%aux4079 = load i32, i32* @IdPos45
	%aux4080 = add i32 0, 1
	%aux4081 = add i32 %aux4079, %aux4080
	store i32 %aux4081, i32* @IdPos45
	br label %etiq1969
	
	etiq1969:
	;___Asignacion___
	%aux4083 = load i32, i32* @Pivot45
	%aux4084 = add i32 0, 1
	%aux4085 = sub i32 %aux4083, %aux4084
	store i32 %aux4085, i32* @Pivot45
	br label %etiq1972
	
	etiq1964:
	;___Asignacion___
	%aux4087 = load i32, i32* @IdPos45
	%aux4088 = add i32 0, 1
	%aux4089 = add i32 %aux4087, %aux4088
	store i32 %aux4089, i32* @IdPos45
	br label %etiq1972
	
	etiq1931:
	;___DisplayCadenaCaracteres___
	%aux4090 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq1972
	
	etiq1927:
	;___DisplayCadenaCaracteres___
	%aux4091 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq1972
	
	etiq1924:
	;___DisplayCadenaCaracteres___
	%aux4092 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq1972
	
	etiq1972:
	;___Asignacion___
	%aux4094 = load i32, i32* @_Acum89
	store i32 %aux4094, i32* @_Acum90
	br label %etiq1973
	
	etiq1973:
	;___Asignacion___
	%aux4096 = add i32 0, 4
	store i32 %aux4096, i32* @Pivot45
	br label %etiq1974
	
	etiq1974:
	;___Asignacion___
	%aux4098 = add i32 0, 0
	store i32 %aux4098, i32* @IdPos45
	br label %etiq1975
	
	etiq1975:
	;___Asignacion___
	%aux4100 = add i32 0, 0
	store i32 %aux4100, i32* @_Acum87
	br label %etiq1976
	
	etiq1976:
	;___Asignacion___
	%aux4102 = add i32 0, 0
	store i32 %aux4102, i32* @_Acum88
	br label %etiq1977
	
	etiq1977:
	;___Asignacion___
	%aux4104 = add i32 0, 3
	store i32 %aux4104, i32* @Pivot44
	br label %etiq1978
	
	etiq1978:
	;___IfElse___
	%aux4106 = load i32, i32* @Pivot44
	%aux4107 = add i32 0, 1
	%aux4108 = icmp sge i32 %aux4106, %aux4107
	br i1 %aux4108, label %etiq1980, label %etiq1981
	
	etiq1980:
	;___IfElse___
	%aux4110 = add i32 0, 3
	%aux4111 = load i32, i32* @Pivot44
	%aux4112 = icmp sge i32 %aux4110, %aux4111
	br i1 %aux4112, label %etiq1983, label %etiq1984
	
	etiq1983:
	;___IfElse___
	%aux4114 = add i32 0, 3
	%aux4115 = add i32 0, 0
	%aux4116 = icmp sgt i32 %aux4114, %aux4115
	br i1 %aux4116, label %etiq1987, label %etiq1988
	
	etiq1987:
	;___IfElse___
	%aux4118 = add i32 0, 3
	%aux4119 = load i32, i32* @Pivot44
	%aux4120 = sub i32 %aux4118, %aux4119
	%aux4121 = load i32, i32* @IdPos44
	%aux4122 = icmp eq i32 %aux4120, %aux4121
	br i1 %aux4122, label %etiq1990, label %etiq1991
	
	etiq1990:
	;___Asignacion___
	%aux4124 = load i32, i32* @_Acum87
	%aux4125 = add i32 0, 1
	%aux4126 = add i32 %aux4124, %aux4125
	store i32 %aux4126, i32* @_Acum87
	br label %etiq1994
	
	etiq1994:
	;___Asignacion___
	%aux4128 = load i32, i32* @IdPos44
	%aux4129 = add i32 0, 1
	%aux4130 = add i32 %aux4128, %aux4129
	store i32 %aux4130, i32* @IdPos44
	br label %etiq1996
	
	etiq1996:
	;___Asignacion___
	%aux4132 = load i32, i32* @Pivot44
	%aux4133 = add i32 0, 1
	%aux4134 = sub i32 %aux4132, %aux4133
	store i32 %aux4134, i32* @Pivot44
	br label %etiq1999
	
	etiq1991:
	;___Asignacion___
	%aux4136 = load i32, i32* @IdPos44
	%aux4137 = add i32 0, 1
	%aux4138 = add i32 %aux4136, %aux4137
	store i32 %aux4138, i32* @IdPos44
	br label %etiq1999
	
	etiq1999:
	;___IfElse___
	%aux4140 = add i32 0, 3
	%aux4141 = load i32, i32* @Pivot44
	%aux4142 = sub i32 %aux4140, %aux4141
	%aux4143 = load i32, i32* @IdPos44
	%aux4144 = icmp eq i32 %aux4142, %aux4143
	br i1 %aux4144, label %etiq2000, label %etiq2001
	
	etiq2000:
	;___Asignacion___
	%aux4146 = load i32, i32* @_Acum87
	%aux4147 = add i32 0, 2
	%aux4148 = add i32 %aux4146, %aux4147
	store i32 %aux4148, i32* @_Acum87
	br label %etiq2004
	
	etiq2004:
	;___Asignacion___
	%aux4150 = load i32, i32* @IdPos44
	%aux4151 = add i32 0, 1
	%aux4152 = add i32 %aux4150, %aux4151
	store i32 %aux4152, i32* @IdPos44
	br label %etiq2006
	
	etiq2006:
	;___Asignacion___
	%aux4154 = load i32, i32* @Pivot44
	%aux4155 = add i32 0, 1
	%aux4156 = sub i32 %aux4154, %aux4155
	store i32 %aux4156, i32* @Pivot44
	br label %etiq2009
	
	etiq2001:
	;___Asignacion___
	%aux4158 = load i32, i32* @IdPos44
	%aux4159 = add i32 0, 1
	%aux4160 = add i32 %aux4158, %aux4159
	store i32 %aux4160, i32* @IdPos44
	br label %etiq2009
	
	etiq2009:
	;___IfElse___
	%aux4162 = add i32 0, 3
	%aux4163 = load i32, i32* @Pivot44
	%aux4164 = sub i32 %aux4162, %aux4163
	%aux4165 = load i32, i32* @IdPos44
	%aux4166 = icmp eq i32 %aux4164, %aux4165
	br i1 %aux4166, label %etiq2010, label %etiq2011
	
	etiq2010:
	;___Asignacion___
	%aux4168 = load i32, i32* @_Acum87
	%aux4169 = add i32 0, 3
	%aux4170 = add i32 %aux4168, %aux4169
	store i32 %aux4170, i32* @_Acum87
	br label %etiq2014
	
	etiq2014:
	;___Asignacion___
	%aux4172 = load i32, i32* @IdPos44
	%aux4173 = add i32 0, 1
	%aux4174 = add i32 %aux4172, %aux4173
	store i32 %aux4174, i32* @IdPos44
	br label %etiq2016
	
	etiq2016:
	;___Asignacion___
	%aux4176 = load i32, i32* @Pivot44
	%aux4177 = add i32 0, 1
	%aux4178 = sub i32 %aux4176, %aux4177
	store i32 %aux4178, i32* @Pivot44
	br label %etiq2019
	
	etiq2011:
	;___Asignacion___
	%aux4180 = load i32, i32* @IdPos44
	%aux4181 = add i32 0, 1
	%aux4182 = add i32 %aux4180, %aux4181
	store i32 %aux4182, i32* @IdPos44
	br label %etiq2019
	
	etiq1988:
	;___DisplayCadenaCaracteres___
	%aux4183 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq2019
	
	etiq1984:
	;___DisplayCadenaCaracteres___
	%aux4184 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq2019
	
	etiq1981:
	;___DisplayCadenaCaracteres___
	%aux4185 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq2019
	
	etiq2019:
	;___Asignacion___
	%aux4187 = load i32, i32* @_Acum87
	store i32 %aux4187, i32* @_Acum88
	br label %etiq2020
	
	etiq2020:
	;___Asignacion___
	%aux4189 = add i32 0, 3
	store i32 %aux4189, i32* @Pivot44
	br label %etiq2021
	
	etiq2021:
	;___Asignacion___
	%aux4191 = add i32 0, 0
	store i32 %aux4191, i32* @IdPos44
	br label %etiq2022
	
	etiq2022:
	;___Asignacion___
	%aux4193 = add i32 0, 0
	store i32 %aux4193, i32* @_Acum83
	br label %etiq2023
	
	etiq2023:
	;___Asignacion___
	%aux4195 = add i32 0, 0
	store i32 %aux4195, i32* @_Acum84
	br label %etiq2024
	
	etiq2024:
	;___Asignacion___
	%aux4197 = add i32 0, 2
	store i32 %aux4197, i32* @Pivot42
	br label %etiq2025
	
	etiq2025:
	;___IfElse___
	%aux4199 = load i32, i32* @Pivot42
	%aux4200 = add i32 0, 1
	%aux4201 = icmp sge i32 %aux4199, %aux4200
	br i1 %aux4201, label %etiq2027, label %etiq2028
	
	etiq2027:
	;___IfElse___
	%aux4203 = add i32 0, 2
	%aux4204 = load i32, i32* @Pivot42
	%aux4205 = icmp sge i32 %aux4203, %aux4204
	br i1 %aux4205, label %etiq2030, label %etiq2031
	
	etiq2030:
	;___IfElse___
	%aux4207 = add i32 0, 2
	%aux4208 = add i32 0, 0
	%aux4209 = icmp sgt i32 %aux4207, %aux4208
	br i1 %aux4209, label %etiq2034, label %etiq2035
	
	etiq2034:
	;___IfElse___
	%aux4211 = add i32 0, 2
	%aux4212 = load i32, i32* @Pivot42
	%aux4213 = sub i32 %aux4211, %aux4212
	%aux4214 = load i32, i32* @IdPos42
	%aux4215 = icmp eq i32 %aux4213, %aux4214
	br i1 %aux4215, label %etiq2037, label %etiq2038
	
	etiq2037:
	;___Asignacion___
	%aux4217 = load i32, i32* @_Acum83
	%aux4218 = add i32 0, 1
	%aux4219 = add i32 %aux4217, %aux4218
	store i32 %aux4219, i32* @_Acum83
	br label %etiq2041
	
	etiq2041:
	;___Asignacion___
	%aux4221 = load i32, i32* @IdPos42
	%aux4222 = add i32 0, 1
	%aux4223 = add i32 %aux4221, %aux4222
	store i32 %aux4223, i32* @IdPos42
	br label %etiq2043
	
	etiq2043:
	;___Asignacion___
	%aux4225 = load i32, i32* @Pivot42
	%aux4226 = add i32 0, 1
	%aux4227 = sub i32 %aux4225, %aux4226
	store i32 %aux4227, i32* @Pivot42
	br label %etiq2046
	
	etiq2038:
	;___Asignacion___
	%aux4229 = load i32, i32* @IdPos42
	%aux4230 = add i32 0, 1
	%aux4231 = add i32 %aux4229, %aux4230
	store i32 %aux4231, i32* @IdPos42
	br label %etiq2046
	
	etiq2046:
	;___IfElse___
	%aux4233 = add i32 0, 2
	%aux4234 = load i32, i32* @Pivot42
	%aux4235 = sub i32 %aux4233, %aux4234
	%aux4236 = load i32, i32* @IdPos42
	%aux4237 = icmp eq i32 %aux4235, %aux4236
	br i1 %aux4237, label %etiq2047, label %etiq2048
	
	etiq2047:
	;___Asignacion___
	%aux4239 = load i32, i32* @_Acum83
	%aux4240 = add i32 0, 2
	%aux4241 = add i32 %aux4239, %aux4240
	store i32 %aux4241, i32* @_Acum83
	br label %etiq2051
	
	etiq2051:
	;___Asignacion___
	%aux4243 = load i32, i32* @IdPos42
	%aux4244 = add i32 0, 1
	%aux4245 = add i32 %aux4243, %aux4244
	store i32 %aux4245, i32* @IdPos42
	br label %etiq2053
	
	etiq2053:
	;___Asignacion___
	%aux4247 = load i32, i32* @Pivot42
	%aux4248 = add i32 0, 1
	%aux4249 = sub i32 %aux4247, %aux4248
	store i32 %aux4249, i32* @Pivot42
	br label %etiq2056
	
	etiq2048:
	;___Asignacion___
	%aux4251 = load i32, i32* @IdPos42
	%aux4252 = add i32 0, 1
	%aux4253 = add i32 %aux4251, %aux4252
	store i32 %aux4253, i32* @IdPos42
	br label %etiq2056
	
	etiq2035:
	;___DisplayCadenaCaracteres___
	%aux4254 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq2056
	
	etiq2031:
	;___DisplayCadenaCaracteres___
	%aux4255 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq2056
	
	etiq2028:
	;___DisplayCadenaCaracteres___
	%aux4256 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq2056
	
	etiq2056:
	;___Asignacion___
	%aux4258 = load i32, i32* @_Acum83
	store i32 %aux4258, i32* @_Acum84
	br label %etiq2057
	
	etiq2057:
	;___Asignacion___
	%aux4260 = add i32 0, 2
	store i32 %aux4260, i32* @Pivot42
	br label %etiq2058
	
	etiq2058:
	;___Asignacion___
	%aux4262 = add i32 0, 0
	store i32 %aux4262, i32* @IdPos42
	br label %etiq2059
	
	etiq2059:
	;___Asignacion___
	%aux4264 = add i32 0, 0
	store i32 %aux4264, i32* @_Acum81
	br label %etiq2060
	
	etiq2060:
	;___Asignacion___
	%aux4266 = add i32 0, 0
	store i32 %aux4266, i32* @_Acum82
	br label %etiq2061
	
	etiq2061:
	;___Asignacion___
	%aux4268 = add i32 0, 1
	store i32 %aux4268, i32* @Pivot41
	br label %etiq2062
	
	etiq2062:
	;___IfElse___
	%aux4270 = load i32, i32* @Pivot41
	%aux4271 = add i32 0, 1
	%aux4272 = icmp sge i32 %aux4270, %aux4271
	br i1 %aux4272, label %etiq2064, label %etiq2065
	
	etiq2064:
	;___IfElse___
	%aux4274 = add i32 0, 1
	%aux4275 = load i32, i32* @Pivot41
	%aux4276 = icmp sge i32 %aux4274, %aux4275
	br i1 %aux4276, label %etiq2067, label %etiq2068
	
	etiq2067:
	;___IfElse___
	%aux4278 = add i32 0, 1
	%aux4279 = add i32 0, 0
	%aux4280 = icmp sgt i32 %aux4278, %aux4279
	br i1 %aux4280, label %etiq2071, label %etiq2072
	
	etiq2071:
	;___IfElse___
	%aux4282 = add i32 0, 1
	%aux4283 = load i32, i32* @Pivot41
	%aux4284 = sub i32 %aux4282, %aux4283
	%aux4285 = load i32, i32* @IdPos41
	%aux4286 = icmp eq i32 %aux4284, %aux4285
	br i1 %aux4286, label %etiq2074, label %etiq2075
	
	etiq2074:
	;___Asignacion___
	%aux4288 = load i32, i32* @_Acum81
	%aux4289 = add i32 0, 1
	%aux4290 = add i32 %aux4288, %aux4289
	store i32 %aux4290, i32* @_Acum81
	br label %etiq2078
	
	etiq2078:
	;___Asignacion___
	%aux4292 = load i32, i32* @IdPos41
	%aux4293 = add i32 0, 1
	%aux4294 = add i32 %aux4292, %aux4293
	store i32 %aux4294, i32* @IdPos41
	br label %etiq2080
	
	etiq2080:
	;___Asignacion___
	%aux4296 = load i32, i32* @Pivot41
	%aux4297 = add i32 0, 1
	%aux4298 = sub i32 %aux4296, %aux4297
	store i32 %aux4298, i32* @Pivot41
	br label %etiq2083
	
	etiq2075:
	;___Asignacion___
	%aux4300 = load i32, i32* @IdPos41
	%aux4301 = add i32 0, 1
	%aux4302 = add i32 %aux4300, %aux4301
	store i32 %aux4302, i32* @IdPos41
	br label %etiq2083
	
	etiq2072:
	;___DisplayCadenaCaracteres___
	%aux4303 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq2083
	
	etiq2068:
	;___DisplayCadenaCaracteres___
	%aux4304 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq2083
	
	etiq2065:
	;___DisplayCadenaCaracteres___
	%aux4305 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq2083
	
	etiq2083:
	;___Asignacion___
	%aux4307 = load i32, i32* @_Acum81
	store i32 %aux4307, i32* @_Acum82
	br label %etiq2084
	
	etiq2084:
	;___Asignacion___
	%aux4309 = add i32 0, 1
	store i32 %aux4309, i32* @Pivot41
	br label %etiq2085
	
	etiq2085:
	;___Asignacion___
	%aux4311 = add i32 0, 0
	store i32 %aux4311, i32* @IdPos41
	br label %etiq2086
	
	etiq2086:
	;___Asignacion___
	%aux4313 = add i32 0, 0
	store i32 %aux4313, i32* @_Acum85
	br label %etiq2087
	
	etiq2087:
	;___Asignacion___
	%aux4315 = add i32 0, 0
	store i32 %aux4315, i32* @_Acum86
	br label %etiq2088
	
	etiq2088:
	;___Asignacion___
	%aux4317 = add i32 0, 2
	store i32 %aux4317, i32* @Pivot43
	br label %etiq2089
	
	etiq2089:
	;___IfElse___
	%aux4319 = load i32, i32* @Pivot43
	%aux4320 = add i32 0, 1
	%aux4321 = icmp sge i32 %aux4319, %aux4320
	br i1 %aux4321, label %etiq2091, label %etiq2092
	
	etiq2091:
	;___IfElse___
	%aux4323 = add i32 0, 2
	%aux4324 = load i32, i32* @Pivot43
	%aux4325 = icmp sge i32 %aux4323, %aux4324
	br i1 %aux4325, label %etiq2094, label %etiq2095
	
	etiq2094:
	;___IfElse___
	%aux4327 = add i32 0, 2
	%aux4328 = add i32 0, 0
	%aux4329 = icmp sgt i32 %aux4327, %aux4328
	br i1 %aux4329, label %etiq2098, label %etiq2099
	
	etiq2098:
	;___IfElse___
	%aux4331 = add i32 0, 2
	%aux4332 = load i32, i32* @Pivot43
	%aux4333 = sub i32 %aux4331, %aux4332
	%aux4334 = load i32, i32* @IdPos43
	%aux4335 = icmp eq i32 %aux4333, %aux4334
	br i1 %aux4335, label %etiq2101, label %etiq2102
	
	etiq2101:
	;___Asignacion___
	%aux4337 = load i32, i32* @_Acum85
	%aux4338 = load i32, i32* @_Acum82
	%aux4339 = add i32 %aux4337, %aux4338
	store i32 %aux4339, i32* @_Acum85
	br label %etiq2104
	
	etiq2104:
	;___Asignacion___
	%aux4341 = load i32, i32* @IdPos43
	%aux4342 = add i32 0, 1
	%aux4343 = add i32 %aux4341, %aux4342
	store i32 %aux4343, i32* @IdPos43
	br label %etiq2106
	
	etiq2106:
	;___Asignacion___
	%aux4345 = load i32, i32* @Pivot43
	%aux4346 = add i32 0, 1
	%aux4347 = sub i32 %aux4345, %aux4346
	store i32 %aux4347, i32* @Pivot43
	br label %etiq2109
	
	etiq2102:
	;___Asignacion___
	%aux4349 = load i32, i32* @IdPos43
	%aux4350 = add i32 0, 1
	%aux4351 = add i32 %aux4349, %aux4350
	store i32 %aux4351, i32* @IdPos43
	br label %etiq2109
	
	etiq2109:
	;___IfElse___
	%aux4353 = add i32 0, 2
	%aux4354 = load i32, i32* @Pivot43
	%aux4355 = sub i32 %aux4353, %aux4354
	%aux4356 = load i32, i32* @IdPos43
	%aux4357 = icmp eq i32 %aux4355, %aux4356
	br i1 %aux4357, label %etiq2110, label %etiq2111
	
	etiq2110:
	;___Asignacion___
	%aux4359 = load i32, i32* @_Acum85
	%aux4360 = load i32, i32* @_Acum84
	%aux4361 = add i32 %aux4359, %aux4360
	store i32 %aux4361, i32* @_Acum85
	br label %etiq2113
	
	etiq2113:
	;___Asignacion___
	%aux4363 = load i32, i32* @IdPos43
	%aux4364 = add i32 0, 1
	%aux4365 = add i32 %aux4363, %aux4364
	store i32 %aux4365, i32* @IdPos43
	br label %etiq2115
	
	etiq2115:
	;___Asignacion___
	%aux4367 = load i32, i32* @Pivot43
	%aux4368 = add i32 0, 1
	%aux4369 = sub i32 %aux4367, %aux4368
	store i32 %aux4369, i32* @Pivot43
	br label %etiq2118
	
	etiq2111:
	;___Asignacion___
	%aux4371 = load i32, i32* @IdPos43
	%aux4372 = add i32 0, 1
	%aux4373 = add i32 %aux4371, %aux4372
	store i32 %aux4373, i32* @IdPos43
	br label %etiq2118
	
	etiq2099:
	;___DisplayCadenaCaracteres___
	%aux4374 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq2118
	
	etiq2095:
	;___DisplayCadenaCaracteres___
	%aux4375 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq2118
	
	etiq2092:
	;___DisplayCadenaCaracteres___
	%aux4376 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq2118
	
	etiq2118:
	;___Asignacion___
	%aux4378 = load i32, i32* @_Acum85
	store i32 %aux4378, i32* @_Acum86
	br label %etiq2119
	
	etiq2119:
	;___Asignacion___
	%aux4380 = add i32 0, 2
	store i32 %aux4380, i32* @Pivot43
	br label %etiq2120
	
	etiq2120:
	;___Asignacion___
	%aux4382 = add i32 0, 0
	store i32 %aux4382, i32* @IdPos43
	br label %etiq2121
	
	etiq2121:
	;___Asignacion___
	%aux4384 = add i32 0, 0
	store i32 %aux4384, i32* @_Acum91
	br label %etiq2122
	
	etiq2122:
	;___Asignacion___
	%aux4386 = add i32 0, 0
	store i32 %aux4386, i32* @_Acum92
	br label %etiq2123
	
	etiq2123:
	;___Asignacion___
	%aux4388 = add i32 0, 3
	store i32 %aux4388, i32* @Pivot46
	br label %etiq2124
	
	etiq2124:
	;___IfElse___
	%aux4390 = load i32, i32* @Pivot46
	%aux4391 = add i32 0, 1
	%aux4392 = icmp sge i32 %aux4390, %aux4391
	br i1 %aux4392, label %etiq2126, label %etiq2127
	
	etiq2126:
	;___IfElse___
	%aux4394 = add i32 0, 3
	%aux4395 = load i32, i32* @Pivot46
	%aux4396 = icmp sge i32 %aux4394, %aux4395
	br i1 %aux4396, label %etiq2129, label %etiq2130
	
	etiq2129:
	;___IfElse___
	%aux4398 = add i32 0, 3
	%aux4399 = add i32 0, 0
	%aux4400 = icmp sgt i32 %aux4398, %aux4399
	br i1 %aux4400, label %etiq2133, label %etiq2134
	
	etiq2133:
	;___IfElse___
	%aux4402 = add i32 0, 3
	%aux4403 = load i32, i32* @Pivot46
	%aux4404 = sub i32 %aux4402, %aux4403
	%aux4405 = load i32, i32* @IdPos46
	%aux4406 = icmp eq i32 %aux4404, %aux4405
	br i1 %aux4406, label %etiq2136, label %etiq2137
	
	etiq2136:
	;___Asignacion___
	%aux4408 = load i32, i32* @_Acum91
	%aux4409 = load i32, i32* @_Acum86
	%aux4410 = add i32 %aux4408, %aux4409
	store i32 %aux4410, i32* @_Acum91
	br label %etiq2139
	
	etiq2139:
	;___Asignacion___
	%aux4412 = load i32, i32* @IdPos46
	%aux4413 = add i32 0, 1
	%aux4414 = add i32 %aux4412, %aux4413
	store i32 %aux4414, i32* @IdPos46
	br label %etiq2141
	
	etiq2141:
	;___Asignacion___
	%aux4416 = load i32, i32* @Pivot46
	%aux4417 = add i32 0, 1
	%aux4418 = sub i32 %aux4416, %aux4417
	store i32 %aux4418, i32* @Pivot46
	br label %etiq2144
	
	etiq2137:
	;___Asignacion___
	%aux4420 = load i32, i32* @IdPos46
	%aux4421 = add i32 0, 1
	%aux4422 = add i32 %aux4420, %aux4421
	store i32 %aux4422, i32* @IdPos46
	br label %etiq2144
	
	etiq2144:
	;___IfElse___
	%aux4424 = add i32 0, 3
	%aux4425 = load i32, i32* @Pivot46
	%aux4426 = sub i32 %aux4424, %aux4425
	%aux4427 = load i32, i32* @IdPos46
	%aux4428 = icmp eq i32 %aux4426, %aux4427
	br i1 %aux4428, label %etiq2145, label %etiq2146
	
	etiq2145:
	;___Asignacion___
	%aux4430 = load i32, i32* @_Acum91
	%aux4431 = load i32, i32* @_Acum88
	%aux4432 = add i32 %aux4430, %aux4431
	store i32 %aux4432, i32* @_Acum91
	br label %etiq2148
	
	etiq2148:
	;___Asignacion___
	%aux4434 = load i32, i32* @IdPos46
	%aux4435 = add i32 0, 1
	%aux4436 = add i32 %aux4434, %aux4435
	store i32 %aux4436, i32* @IdPos46
	br label %etiq2150
	
	etiq2150:
	;___Asignacion___
	%aux4438 = load i32, i32* @Pivot46
	%aux4439 = add i32 0, 1
	%aux4440 = sub i32 %aux4438, %aux4439
	store i32 %aux4440, i32* @Pivot46
	br label %etiq2153
	
	etiq2146:
	;___Asignacion___
	%aux4442 = load i32, i32* @IdPos46
	%aux4443 = add i32 0, 1
	%aux4444 = add i32 %aux4442, %aux4443
	store i32 %aux4444, i32* @IdPos46
	br label %etiq2153
	
	etiq2153:
	;___IfElse___
	%aux4446 = add i32 0, 3
	%aux4447 = load i32, i32* @Pivot46
	%aux4448 = sub i32 %aux4446, %aux4447
	%aux4449 = load i32, i32* @IdPos46
	%aux4450 = icmp eq i32 %aux4448, %aux4449
	br i1 %aux4450, label %etiq2154, label %etiq2155
	
	etiq2154:
	;___Asignacion___
	%aux4452 = load i32, i32* @_Acum91
	%aux4453 = load i32, i32* @_Acum90
	%aux4454 = add i32 %aux4452, %aux4453
	store i32 %aux4454, i32* @_Acum91
	br label %etiq2157
	
	etiq2157:
	;___Asignacion___
	%aux4456 = load i32, i32* @IdPos46
	%aux4457 = add i32 0, 1
	%aux4458 = add i32 %aux4456, %aux4457
	store i32 %aux4458, i32* @IdPos46
	br label %etiq2159
	
	etiq2159:
	;___Asignacion___
	%aux4460 = load i32, i32* @Pivot46
	%aux4461 = add i32 0, 1
	%aux4462 = sub i32 %aux4460, %aux4461
	store i32 %aux4462, i32* @Pivot46
	br label %etiq2162
	
	etiq2155:
	;___Asignacion___
	%aux4464 = load i32, i32* @IdPos46
	%aux4465 = add i32 0, 1
	%aux4466 = add i32 %aux4464, %aux4465
	store i32 %aux4466, i32* @IdPos46
	br label %etiq2162
	
	etiq2134:
	;___DisplayCadenaCaracteres___
	%aux4467 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq2162
	
	etiq2130:
	;___DisplayCadenaCaracteres___
	%aux4468 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq2162
	
	etiq2127:
	;___DisplayCadenaCaracteres___
	%aux4469 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq2162
	
	etiq2162:
	;___Asignacion___
	%aux4471 = load i32, i32* @_Acum91
	store i32 %aux4471, i32* @_Acum92
	br label %etiq2163
	
	etiq2163:
	;___Asignacion___
	%aux4473 = add i32 0, 3
	store i32 %aux4473, i32* @Pivot46
	br label %etiq2164
	
	etiq2164:
	;___Asignacion___
	%aux4475 = add i32 0, 0
	store i32 %aux4475, i32* @IdPos46
	br label %etiq2165
	
	etiq2165:
	;___Asignacion___
	%aux4477 = add i32 0, 0
	store i32 %aux4477, i32* @_Acum99
	br label %etiq2166
	
	etiq2166:
	;___Asignacion___
	%aux4479 = add i32 0, 0
	store i32 %aux4479, i32* @_Acum100
	br label %etiq2167
	
	etiq2167:
	;___Asignacion___
	%aux4481 = load i32, i32* @pivot
	store i32 %aux4481, i32* @Pivot50
	br label %etiq2168
	
	etiq2168:
	;___IfElse___
	%aux4483 = load i32, i32* @Pivot50
	%aux4484 = add i32 0, 1
	%aux4485 = icmp sge i32 %aux4483, %aux4484
	br i1 %aux4485, label %etiq2170, label %etiq2171
	
	etiq2170:
	;___IfElse___
	%aux4487 = add i32 0, 103
	%aux4488 = load i32, i32* @Pivot50
	%aux4489 = icmp sge i32 %aux4487, %aux4488
	br i1 %aux4489, label %etiq2173, label %etiq2174
	
	etiq2173:
	;___IfElse___
	%aux4491 = add i32 0, 103
	%aux4492 = add i32 0, 0
	%aux4493 = icmp sgt i32 %aux4491, %aux4492
	br i1 %aux4493, label %etiq2177, label %etiq2178
	
	etiq2177:
	;___IfElse___
	%aux4495 = add i32 0, 103
	%aux4496 = load i32, i32* @Pivot50
	%aux4497 = sub i32 %aux4495, %aux4496
	%aux4498 = load i32, i32* @IdPos50
	%aux4499 = icmp eq i32 %aux4497, %aux4498
	br i1 %aux4499, label %etiq2180, label %etiq2181
	
	etiq2180:
	;___Asignacion___
	%aux4501 = load i32, i32* @_Acum99
	%aux4502 = add i32 0, 1
	%aux4503 = add i32 %aux4501, %aux4502
	store i32 %aux4503, i32* @_Acum99
	br label %etiq2184
	
	etiq2184:
	;___Asignacion___
	%aux4505 = load i32, i32* @IdPos50
	%aux4506 = add i32 0, 1
	%aux4507 = add i32 %aux4505, %aux4506
	store i32 %aux4507, i32* @IdPos50
	br label %etiq2186
	
	etiq2186:
	;___Asignacion___
	%aux4509 = load i32, i32* @Pivot50
	%aux4510 = add i32 0, 1
	%aux4511 = sub i32 %aux4509, %aux4510
	store i32 %aux4511, i32* @Pivot50
	br label %etiq2189
	
	etiq2181:
	;___Asignacion___
	%aux4513 = load i32, i32* @IdPos50
	%aux4514 = add i32 0, 1
	%aux4515 = add i32 %aux4513, %aux4514
	store i32 %aux4515, i32* @IdPos50
	br label %etiq2189
	
	etiq2189:
	;___IfElse___
	%aux4517 = add i32 0, 103
	%aux4518 = load i32, i32* @Pivot50
	%aux4519 = sub i32 %aux4517, %aux4518
	%aux4520 = load i32, i32* @IdPos50
	%aux4521 = icmp eq i32 %aux4519, %aux4520
	br i1 %aux4521, label %etiq2190, label %etiq2191
	
	etiq2190:
	;___Asignacion___
	%aux4523 = load i32, i32* @_Acum99
	%aux4524 = add i32 0, 1
	%aux4525 = add i32 %aux4523, %aux4524
	store i32 %aux4525, i32* @_Acum99
	br label %etiq2194
	
	etiq2194:
	;___Asignacion___
	%aux4527 = load i32, i32* @IdPos50
	%aux4528 = add i32 0, 1
	%aux4529 = add i32 %aux4527, %aux4528
	store i32 %aux4529, i32* @IdPos50
	br label %etiq2196
	
	etiq2196:
	;___Asignacion___
	%aux4531 = load i32, i32* @Pivot50
	%aux4532 = add i32 0, 1
	%aux4533 = sub i32 %aux4531, %aux4532
	store i32 %aux4533, i32* @Pivot50
	br label %etiq2199
	
	etiq2191:
	;___Asignacion___
	%aux4535 = load i32, i32* @IdPos50
	%aux4536 = add i32 0, 1
	%aux4537 = add i32 %aux4535, %aux4536
	store i32 %aux4537, i32* @IdPos50
	br label %etiq2199
	
	etiq2199:
	;___IfElse___
	%aux4539 = add i32 0, 103
	%aux4540 = load i32, i32* @Pivot50
	%aux4541 = sub i32 %aux4539, %aux4540
	%aux4542 = load i32, i32* @IdPos50
	%aux4543 = icmp eq i32 %aux4541, %aux4542
	br i1 %aux4543, label %etiq2200, label %etiq2201
	
	etiq2200:
	;___Asignacion___
	%aux4545 = load i32, i32* @_Acum99
	%aux4546 = add i32 0, 1
	%aux4547 = add i32 %aux4545, %aux4546
	store i32 %aux4547, i32* @_Acum99
	br label %etiq2204
	
	etiq2204:
	;___Asignacion___
	%aux4549 = load i32, i32* @IdPos50
	%aux4550 = add i32 0, 1
	%aux4551 = add i32 %aux4549, %aux4550
	store i32 %aux4551, i32* @IdPos50
	br label %etiq2206
	
	etiq2206:
	;___Asignacion___
	%aux4553 = load i32, i32* @Pivot50
	%aux4554 = add i32 0, 1
	%aux4555 = sub i32 %aux4553, %aux4554
	store i32 %aux4555, i32* @Pivot50
	br label %etiq3564
	
	etiq2201:
	;___Asignacion___
	%aux4557 = load i32, i32* @IdPos50
	%aux4558 = add i32 0, 1
	%aux4559 = add i32 %aux4557, %aux4558
	store i32 %aux4559, i32* @IdPos50
	br label %etiq2209
	
	etiq2209:
	;___IfElse___
	%aux4561 = add i32 0, 103
	%aux4562 = load i32, i32* @Pivot50
	%aux4563 = sub i32 %aux4561, %aux4562
	%aux4564 = load i32, i32* @IdPos50
	%aux4565 = icmp eq i32 %aux4563, %aux4564
	br i1 %aux4565, label %etiq2210, label %etiq2211
	
	etiq2210:
	;___Asignacion___
	%aux4567 = load i32, i32* @_Acum99
	%aux4568 = add i32 0, 1
	%aux4569 = add i32 %aux4567, %aux4568
	store i32 %aux4569, i32* @_Acum99
	br label %etiq2214
	
	etiq2214:
	;___Asignacion___
	%aux4571 = load i32, i32* @IdPos50
	%aux4572 = add i32 0, 1
	%aux4573 = add i32 %aux4571, %aux4572
	store i32 %aux4573, i32* @IdPos50
	br label %etiq2216
	
	etiq2216:
	;___Asignacion___
	%aux4575 = load i32, i32* @Pivot50
	%aux4576 = add i32 0, 1
	%aux4577 = sub i32 %aux4575, %aux4576
	store i32 %aux4577, i32* @Pivot50
	br label %etiq2219
	
	etiq2211:
	;___Asignacion___
	%aux4579 = load i32, i32* @IdPos50
	%aux4580 = add i32 0, 1
	%aux4581 = add i32 %aux4579, %aux4580
	store i32 %aux4581, i32* @IdPos50
	br label %etiq2219
	
	etiq2219:
	;___IfElse___
	%aux4583 = add i32 0, 103
	%aux4584 = load i32, i32* @Pivot50
	%aux4585 = sub i32 %aux4583, %aux4584
	%aux4586 = load i32, i32* @IdPos50
	%aux4587 = icmp eq i32 %aux4585, %aux4586
	br i1 %aux4587, label %etiq2220, label %etiq2221
	
	etiq2220:
	;___Asignacion___
	%aux4589 = load i32, i32* @_Acum99
	%aux4590 = add i32 0, 1
	%aux4591 = add i32 %aux4589, %aux4590
	store i32 %aux4591, i32* @_Acum99
	br label %etiq2224
	
	etiq2224:
	;___Asignacion___
	%aux4593 = load i32, i32* @IdPos50
	%aux4594 = add i32 0, 1
	%aux4595 = add i32 %aux4593, %aux4594
	store i32 %aux4595, i32* @IdPos50
	br label %etiq2226
	
	etiq2226:
	;___Asignacion___
	%aux4597 = load i32, i32* @Pivot50
	%aux4598 = add i32 0, 1
	%aux4599 = sub i32 %aux4597, %aux4598
	store i32 %aux4599, i32* @Pivot50
	br label %etiq2229
	
	etiq2221:
	;___Asignacion___
	%aux4601 = load i32, i32* @IdPos50
	%aux4602 = add i32 0, 1
	%aux4603 = add i32 %aux4601, %aux4602
	store i32 %aux4603, i32* @IdPos50
	br label %etiq2229
	
	etiq2229:
	;___IfElse___
	%aux4605 = add i32 0, 103
	%aux4606 = load i32, i32* @Pivot50
	%aux4607 = sub i32 %aux4605, %aux4606
	%aux4608 = load i32, i32* @IdPos50
	%aux4609 = icmp eq i32 %aux4607, %aux4608
	br i1 %aux4609, label %etiq2230, label %etiq2231
	
	etiq2230:
	;___Asignacion___
	%aux4611 = load i32, i32* @_Acum99
	%aux4612 = add i32 0, 1
	%aux4613 = add i32 %aux4611, %aux4612
	store i32 %aux4613, i32* @_Acum99
	br label %etiq2234
	
	etiq2234:
	;___Asignacion___
	%aux4615 = load i32, i32* @IdPos50
	%aux4616 = add i32 0, 1
	%aux4617 = add i32 %aux4615, %aux4616
	store i32 %aux4617, i32* @IdPos50
	br label %etiq2236
	
	etiq2236:
	;___Asignacion___
	%aux4619 = load i32, i32* @Pivot50
	%aux4620 = add i32 0, 1
	%aux4621 = sub i32 %aux4619, %aux4620
	store i32 %aux4621, i32* @Pivot50
	br label %etiq2239
	
	etiq2231:
	;___Asignacion___
	%aux4623 = load i32, i32* @IdPos50
	%aux4624 = add i32 0, 1
	%aux4625 = add i32 %aux4623, %aux4624
	store i32 %aux4625, i32* @IdPos50
	br label %etiq2239
	
	etiq2239:
	;___IfElse___
	%aux4627 = add i32 0, 103
	%aux4628 = load i32, i32* @Pivot50
	%aux4629 = sub i32 %aux4627, %aux4628
	%aux4630 = load i32, i32* @IdPos50
	%aux4631 = icmp eq i32 %aux4629, %aux4630
	br i1 %aux4631, label %etiq2240, label %etiq2241
	
	etiq2240:
	;___Asignacion___
	%aux4633 = load i32, i32* @_Acum99
	%aux4634 = add i32 0, 1
	%aux4635 = add i32 %aux4633, %aux4634
	store i32 %aux4635, i32* @_Acum99
	br label %etiq2244
	
	etiq2244:
	;___Asignacion___
	%aux4637 = load i32, i32* @IdPos50
	%aux4638 = add i32 0, 1
	%aux4639 = add i32 %aux4637, %aux4638
	store i32 %aux4639, i32* @IdPos50
	br label %etiq2246
	
	etiq2246:
	;___Asignacion___
	%aux4641 = load i32, i32* @Pivot50
	%aux4642 = add i32 0, 1
	%aux4643 = sub i32 %aux4641, %aux4642
	store i32 %aux4643, i32* @Pivot50
	br label %etiq2249
	
	etiq2241:
	;___Asignacion___
	%aux4645 = load i32, i32* @IdPos50
	%aux4646 = add i32 0, 1
	%aux4647 = add i32 %aux4645, %aux4646
	store i32 %aux4647, i32* @IdPos50
	br label %etiq2249
	
	etiq2249:
	;___IfElse___
	%aux4649 = add i32 0, 103
	%aux4650 = load i32, i32* @Pivot50
	%aux4651 = sub i32 %aux4649, %aux4650
	%aux4652 = load i32, i32* @IdPos50
	%aux4653 = icmp eq i32 %aux4651, %aux4652
	br i1 %aux4653, label %etiq2250, label %etiq2251
	
	etiq2250:
	;___Asignacion___
	%aux4655 = load i32, i32* @_Acum99
	%aux4656 = add i32 0, 1
	%aux4657 = add i32 %aux4655, %aux4656
	store i32 %aux4657, i32* @_Acum99
	br label %etiq2254
	
	etiq2254:
	;___Asignacion___
	%aux4659 = load i32, i32* @IdPos50
	%aux4660 = add i32 0, 1
	%aux4661 = add i32 %aux4659, %aux4660
	store i32 %aux4661, i32* @IdPos50
	br label %etiq2256
	
	etiq2256:
	;___Asignacion___
	%aux4663 = load i32, i32* @Pivot50
	%aux4664 = add i32 0, 1
	%aux4665 = sub i32 %aux4663, %aux4664
	store i32 %aux4665, i32* @Pivot50
	br label %etiq2259
	
	etiq2251:
	;___Asignacion___
	%aux4667 = load i32, i32* @IdPos50
	%aux4668 = add i32 0, 1
	%aux4669 = add i32 %aux4667, %aux4668
	store i32 %aux4669, i32* @IdPos50
	br label %etiq2259
	
	etiq2259:
	;___IfElse___
	%aux4671 = add i32 0, 103
	%aux4672 = load i32, i32* @Pivot50
	%aux4673 = sub i32 %aux4671, %aux4672
	%aux4674 = load i32, i32* @IdPos50
	%aux4675 = icmp eq i32 %aux4673, %aux4674
	br i1 %aux4675, label %etiq2260, label %etiq2261
	
	etiq2260:
	;___Asignacion___
	%aux4677 = load i32, i32* @_Acum99
	%aux4678 = add i32 0, 1
	%aux4679 = add i32 %aux4677, %aux4678
	store i32 %aux4679, i32* @_Acum99
	br label %etiq2264
	
	etiq2264:
	;___Asignacion___
	%aux4681 = load i32, i32* @IdPos50
	%aux4682 = add i32 0, 1
	%aux4683 = add i32 %aux4681, %aux4682
	store i32 %aux4683, i32* @IdPos50
	br label %etiq2266
	
	etiq2266:
	;___Asignacion___
	%aux4685 = load i32, i32* @Pivot50
	%aux4686 = add i32 0, 1
	%aux4687 = sub i32 %aux4685, %aux4686
	store i32 %aux4687, i32* @Pivot50
	br label %etiq2269
	
	etiq2261:
	;___Asignacion___
	%aux4689 = load i32, i32* @IdPos50
	%aux4690 = add i32 0, 1
	%aux4691 = add i32 %aux4689, %aux4690
	store i32 %aux4691, i32* @IdPos50
	br label %etiq2269
	
	etiq2269:
	;___IfElse___
	%aux4693 = add i32 0, 103
	%aux4694 = load i32, i32* @Pivot50
	%aux4695 = sub i32 %aux4693, %aux4694
	%aux4696 = load i32, i32* @IdPos50
	%aux4697 = icmp eq i32 %aux4695, %aux4696
	br i1 %aux4697, label %etiq2270, label %etiq2271
	
	etiq2270:
	;___Asignacion___
	%aux4699 = load i32, i32* @_Acum99
	%aux4700 = add i32 0, 1
	%aux4701 = add i32 %aux4699, %aux4700
	store i32 %aux4701, i32* @_Acum99
	br label %etiq2274
	
	etiq2274:
	;___Asignacion___
	%aux4703 = load i32, i32* @IdPos50
	%aux4704 = add i32 0, 1
	%aux4705 = add i32 %aux4703, %aux4704
	store i32 %aux4705, i32* @IdPos50
	br label %etiq2276
	
	etiq2276:
	;___Asignacion___
	%aux4707 = load i32, i32* @Pivot50
	%aux4708 = add i32 0, 1
	%aux4709 = sub i32 %aux4707, %aux4708
	store i32 %aux4709, i32* @Pivot50
	br label %etiq2279
	
	etiq2271:
	;___Asignacion___
	%aux4711 = load i32, i32* @IdPos50
	%aux4712 = add i32 0, 1
	%aux4713 = add i32 %aux4711, %aux4712
	store i32 %aux4713, i32* @IdPos50
	br label %etiq2279
	
	etiq2279:
	;___IfElse___
	%aux4715 = add i32 0, 103
	%aux4716 = load i32, i32* @Pivot50
	%aux4717 = sub i32 %aux4715, %aux4716
	%aux4718 = load i32, i32* @IdPos50
	%aux4719 = icmp eq i32 %aux4717, %aux4718
	br i1 %aux4719, label %etiq2280, label %etiq2281
	
	etiq2280:
	;___Asignacion___
	%aux4721 = load i32, i32* @_Acum99
	%aux4722 = add i32 0, 1
	%aux4723 = add i32 %aux4721, %aux4722
	store i32 %aux4723, i32* @_Acum99
	br label %etiq2284
	
	etiq2284:
	;___Asignacion___
	%aux4725 = load i32, i32* @IdPos50
	%aux4726 = add i32 0, 1
	%aux4727 = add i32 %aux4725, %aux4726
	store i32 %aux4727, i32* @IdPos50
	br label %etiq2286
	
	etiq2286:
	;___Asignacion___
	%aux4729 = load i32, i32* @Pivot50
	%aux4730 = add i32 0, 1
	%aux4731 = sub i32 %aux4729, %aux4730
	store i32 %aux4731, i32* @Pivot50
	br label %etiq2289
	
	etiq2281:
	;___Asignacion___
	%aux4733 = load i32, i32* @IdPos50
	%aux4734 = add i32 0, 1
	%aux4735 = add i32 %aux4733, %aux4734
	store i32 %aux4735, i32* @IdPos50
	br label %etiq2289
	
	etiq2289:
	;___IfElse___
	%aux4737 = add i32 0, 103
	%aux4738 = load i32, i32* @Pivot50
	%aux4739 = sub i32 %aux4737, %aux4738
	%aux4740 = load i32, i32* @IdPos50
	%aux4741 = icmp eq i32 %aux4739, %aux4740
	br i1 %aux4741, label %etiq2290, label %etiq2291
	
	etiq2290:
	;___Asignacion___
	%aux4743 = load i32, i32* @_Acum99
	%aux4744 = add i32 0, 1
	%aux4745 = add i32 %aux4743, %aux4744
	store i32 %aux4745, i32* @_Acum99
	br label %etiq2294
	
	etiq2294:
	;___Asignacion___
	%aux4747 = load i32, i32* @IdPos50
	%aux4748 = add i32 0, 1
	%aux4749 = add i32 %aux4747, %aux4748
	store i32 %aux4749, i32* @IdPos50
	br label %etiq2296
	
	etiq2296:
	;___Asignacion___
	%aux4751 = load i32, i32* @Pivot50
	%aux4752 = add i32 0, 1
	%aux4753 = sub i32 %aux4751, %aux4752
	store i32 %aux4753, i32* @Pivot50
	br label %etiq2299
	
	etiq2291:
	;___Asignacion___
	%aux4755 = load i32, i32* @IdPos50
	%aux4756 = add i32 0, 1
	%aux4757 = add i32 %aux4755, %aux4756
	store i32 %aux4757, i32* @IdPos50
	br label %etiq2299
	
	etiq2299:
	;___IfElse___
	%aux4759 = add i32 0, 103
	%aux4760 = load i32, i32* @Pivot50
	%aux4761 = sub i32 %aux4759, %aux4760
	%aux4762 = load i32, i32* @IdPos50
	%aux4763 = icmp eq i32 %aux4761, %aux4762
	br i1 %aux4763, label %etiq2300, label %etiq2301
	
	etiq2300:
	;___Asignacion___
	%aux4765 = load i32, i32* @_Acum99
	%aux4766 = add i32 0, 1
	%aux4767 = add i32 %aux4765, %aux4766
	store i32 %aux4767, i32* @_Acum99
	br label %etiq2304
	
	etiq2304:
	;___Asignacion___
	%aux4769 = load i32, i32* @IdPos50
	%aux4770 = add i32 0, 1
	%aux4771 = add i32 %aux4769, %aux4770
	store i32 %aux4771, i32* @IdPos50
	br label %etiq2306
	
	etiq2306:
	;___Asignacion___
	%aux4773 = load i32, i32* @Pivot50
	%aux4774 = add i32 0, 1
	%aux4775 = sub i32 %aux4773, %aux4774
	store i32 %aux4775, i32* @Pivot50
	br label %etiq2309
	
	etiq2301:
	;___Asignacion___
	%aux4777 = load i32, i32* @IdPos50
	%aux4778 = add i32 0, 1
	%aux4779 = add i32 %aux4777, %aux4778
	store i32 %aux4779, i32* @IdPos50
	br label %etiq2309
	
	etiq2309:
	;___IfElse___
	%aux4781 = add i32 0, 103
	%aux4782 = load i32, i32* @Pivot50
	%aux4783 = sub i32 %aux4781, %aux4782
	%aux4784 = load i32, i32* @IdPos50
	%aux4785 = icmp eq i32 %aux4783, %aux4784
	br i1 %aux4785, label %etiq2310, label %etiq2311
	
	etiq2310:
	;___Asignacion___
	%aux4787 = load i32, i32* @_Acum99
	%aux4788 = add i32 0, 1
	%aux4789 = add i32 %aux4787, %aux4788
	store i32 %aux4789, i32* @_Acum99
	br label %etiq2314
	
	etiq2314:
	;___Asignacion___
	%aux4791 = load i32, i32* @IdPos50
	%aux4792 = add i32 0, 1
	%aux4793 = add i32 %aux4791, %aux4792
	store i32 %aux4793, i32* @IdPos50
	br label %etiq2316
	
	etiq2316:
	;___Asignacion___
	%aux4795 = load i32, i32* @Pivot50
	%aux4796 = add i32 0, 1
	%aux4797 = sub i32 %aux4795, %aux4796
	store i32 %aux4797, i32* @Pivot50
	br label %etiq2319
	
	etiq2311:
	;___Asignacion___
	%aux4799 = load i32, i32* @IdPos50
	%aux4800 = add i32 0, 1
	%aux4801 = add i32 %aux4799, %aux4800
	store i32 %aux4801, i32* @IdPos50
	br label %etiq2319
	
	etiq2319:
	;___IfElse___
	%aux4803 = add i32 0, 103
	%aux4804 = load i32, i32* @Pivot50
	%aux4805 = sub i32 %aux4803, %aux4804
	%aux4806 = load i32, i32* @IdPos50
	%aux4807 = icmp eq i32 %aux4805, %aux4806
	br i1 %aux4807, label %etiq2320, label %etiq2321
	
	etiq2320:
	;___Asignacion___
	%aux4809 = load i32, i32* @_Acum99
	%aux4810 = add i32 0, 1
	%aux4811 = add i32 %aux4809, %aux4810
	store i32 %aux4811, i32* @_Acum99
	br label %etiq2324
	
	etiq2324:
	;___Asignacion___
	%aux4813 = load i32, i32* @IdPos50
	%aux4814 = add i32 0, 1
	%aux4815 = add i32 %aux4813, %aux4814
	store i32 %aux4815, i32* @IdPos50
	br label %etiq2326
	
	etiq2326:
	;___Asignacion___
	%aux4817 = load i32, i32* @Pivot50
	%aux4818 = add i32 0, 1
	%aux4819 = sub i32 %aux4817, %aux4818
	store i32 %aux4819, i32* @Pivot50
	br label %etiq2329
	
	etiq2321:
	;___Asignacion___
	%aux4821 = load i32, i32* @IdPos50
	%aux4822 = add i32 0, 1
	%aux4823 = add i32 %aux4821, %aux4822
	store i32 %aux4823, i32* @IdPos50
	br label %etiq2329
	
	etiq2329:
	;___IfElse___
	%aux4825 = add i32 0, 103
	%aux4826 = load i32, i32* @Pivot50
	%aux4827 = sub i32 %aux4825, %aux4826
	%aux4828 = load i32, i32* @IdPos50
	%aux4829 = icmp eq i32 %aux4827, %aux4828
	br i1 %aux4829, label %etiq2330, label %etiq2331
	
	etiq2330:
	;___Asignacion___
	%aux4831 = load i32, i32* @_Acum99
	%aux4832 = add i32 0, 1
	%aux4833 = add i32 %aux4831, %aux4832
	store i32 %aux4833, i32* @_Acum99
	br label %etiq2334
	
	etiq2334:
	;___Asignacion___
	%aux4835 = load i32, i32* @IdPos50
	%aux4836 = add i32 0, 1
	%aux4837 = add i32 %aux4835, %aux4836
	store i32 %aux4837, i32* @IdPos50
	br label %etiq2336
	
	etiq2336:
	;___Asignacion___
	%aux4839 = load i32, i32* @Pivot50
	%aux4840 = add i32 0, 1
	%aux4841 = sub i32 %aux4839, %aux4840
	store i32 %aux4841, i32* @Pivot50
	br label %etiq2339
	
	etiq2331:
	;___Asignacion___
	%aux4843 = load i32, i32* @IdPos50
	%aux4844 = add i32 0, 1
	%aux4845 = add i32 %aux4843, %aux4844
	store i32 %aux4845, i32* @IdPos50
	br label %etiq2339
	
	etiq2339:
	;___IfElse___
	%aux4847 = add i32 0, 103
	%aux4848 = load i32, i32* @Pivot50
	%aux4849 = sub i32 %aux4847, %aux4848
	%aux4850 = load i32, i32* @IdPos50
	%aux4851 = icmp eq i32 %aux4849, %aux4850
	br i1 %aux4851, label %etiq2340, label %etiq2341
	
	etiq2340:
	;___Asignacion___
	%aux4853 = load i32, i32* @_Acum99
	%aux4854 = add i32 0, 1
	%aux4855 = add i32 %aux4853, %aux4854
	store i32 %aux4855, i32* @_Acum99
	br label %etiq2344
	
	etiq2344:
	;___Asignacion___
	%aux4857 = load i32, i32* @IdPos50
	%aux4858 = add i32 0, 1
	%aux4859 = add i32 %aux4857, %aux4858
	store i32 %aux4859, i32* @IdPos50
	br label %etiq2346
	
	etiq2346:
	;___Asignacion___
	%aux4861 = load i32, i32* @Pivot50
	%aux4862 = add i32 0, 1
	%aux4863 = sub i32 %aux4861, %aux4862
	store i32 %aux4863, i32* @Pivot50
	br label %etiq2349
	
	etiq2341:
	;___Asignacion___
	%aux4865 = load i32, i32* @IdPos50
	%aux4866 = add i32 0, 1
	%aux4867 = add i32 %aux4865, %aux4866
	store i32 %aux4867, i32* @IdPos50
	br label %etiq2349
	
	etiq2349:
	;___IfElse___
	%aux4869 = add i32 0, 103
	%aux4870 = load i32, i32* @Pivot50
	%aux4871 = sub i32 %aux4869, %aux4870
	%aux4872 = load i32, i32* @IdPos50
	%aux4873 = icmp eq i32 %aux4871, %aux4872
	br i1 %aux4873, label %etiq2350, label %etiq2351
	
	etiq2350:
	;___Asignacion___
	%aux4875 = load i32, i32* @_Acum99
	%aux4876 = add i32 0, 1
	%aux4877 = add i32 %aux4875, %aux4876
	store i32 %aux4877, i32* @_Acum99
	br label %etiq2354
	
	etiq2354:
	;___Asignacion___
	%aux4879 = load i32, i32* @IdPos50
	%aux4880 = add i32 0, 1
	%aux4881 = add i32 %aux4879, %aux4880
	store i32 %aux4881, i32* @IdPos50
	br label %etiq2356
	
	etiq2356:
	;___Asignacion___
	%aux4883 = load i32, i32* @Pivot50
	%aux4884 = add i32 0, 1
	%aux4885 = sub i32 %aux4883, %aux4884
	store i32 %aux4885, i32* @Pivot50
	br label %etiq2359
	
	etiq2351:
	;___Asignacion___
	%aux4887 = load i32, i32* @IdPos50
	%aux4888 = add i32 0, 1
	%aux4889 = add i32 %aux4887, %aux4888
	store i32 %aux4889, i32* @IdPos50
	br label %etiq2359
	
	etiq2359:
	;___IfElse___
	%aux4891 = add i32 0, 103
	%aux4892 = load i32, i32* @Pivot50
	%aux4893 = sub i32 %aux4891, %aux4892
	%aux4894 = load i32, i32* @IdPos50
	%aux4895 = icmp eq i32 %aux4893, %aux4894
	br i1 %aux4895, label %etiq2360, label %etiq2361
	
	etiq2360:
	;___Asignacion___
	%aux4897 = load i32, i32* @_Acum99
	%aux4898 = add i32 0, 1
	%aux4899 = add i32 %aux4897, %aux4898
	store i32 %aux4899, i32* @_Acum99
	br label %etiq2364
	
	etiq2364:
	;___Asignacion___
	%aux4901 = load i32, i32* @IdPos50
	%aux4902 = add i32 0, 1
	%aux4903 = add i32 %aux4901, %aux4902
	store i32 %aux4903, i32* @IdPos50
	br label %etiq2366
	
	etiq2366:
	;___Asignacion___
	%aux4905 = load i32, i32* @Pivot50
	%aux4906 = add i32 0, 1
	%aux4907 = sub i32 %aux4905, %aux4906
	store i32 %aux4907, i32* @Pivot50
	br label %etiq2369
	
	etiq2361:
	;___Asignacion___
	%aux4909 = load i32, i32* @IdPos50
	%aux4910 = add i32 0, 1
	%aux4911 = add i32 %aux4909, %aux4910
	store i32 %aux4911, i32* @IdPos50
	br label %etiq2369
	
	etiq2369:
	;___IfElse___
	%aux4913 = add i32 0, 103
	%aux4914 = load i32, i32* @Pivot50
	%aux4915 = sub i32 %aux4913, %aux4914
	%aux4916 = load i32, i32* @IdPos50
	%aux4917 = icmp eq i32 %aux4915, %aux4916
	br i1 %aux4917, label %etiq2370, label %etiq2371
	
	etiq2370:
	;___Asignacion___
	%aux4919 = load i32, i32* @_Acum99
	%aux4920 = add i32 0, 1
	%aux4921 = add i32 %aux4919, %aux4920
	store i32 %aux4921, i32* @_Acum99
	br label %etiq2374
	
	etiq2374:
	;___Asignacion___
	%aux4923 = load i32, i32* @IdPos50
	%aux4924 = add i32 0, 1
	%aux4925 = add i32 %aux4923, %aux4924
	store i32 %aux4925, i32* @IdPos50
	br label %etiq2376
	
	etiq2376:
	;___Asignacion___
	%aux4927 = load i32, i32* @Pivot50
	%aux4928 = add i32 0, 1
	%aux4929 = sub i32 %aux4927, %aux4928
	store i32 %aux4929, i32* @Pivot50
	br label %etiq2379
	
	etiq2371:
	;___Asignacion___
	%aux4931 = load i32, i32* @IdPos50
	%aux4932 = add i32 0, 1
	%aux4933 = add i32 %aux4931, %aux4932
	store i32 %aux4933, i32* @IdPos50
	br label %etiq2379
	
	etiq2379:
	;___IfElse___
	%aux4935 = add i32 0, 103
	%aux4936 = load i32, i32* @Pivot50
	%aux4937 = sub i32 %aux4935, %aux4936
	%aux4938 = load i32, i32* @IdPos50
	%aux4939 = icmp eq i32 %aux4937, %aux4938
	br i1 %aux4939, label %etiq2380, label %etiq2381
	
	etiq2380:
	;___Asignacion___
	%aux4941 = load i32, i32* @_Acum99
	%aux4942 = add i32 0, 1
	%aux4943 = add i32 %aux4941, %aux4942
	store i32 %aux4943, i32* @_Acum99
	br label %etiq2384
	
	etiq2384:
	;___Asignacion___
	%aux4945 = load i32, i32* @IdPos50
	%aux4946 = add i32 0, 1
	%aux4947 = add i32 %aux4945, %aux4946
	store i32 %aux4947, i32* @IdPos50
	br label %etiq2386
	
	etiq2386:
	;___Asignacion___
	%aux4949 = load i32, i32* @Pivot50
	%aux4950 = add i32 0, 1
	%aux4951 = sub i32 %aux4949, %aux4950
	store i32 %aux4951, i32* @Pivot50
	br label %etiq2389
	
	etiq2381:
	;___Asignacion___
	%aux4953 = load i32, i32* @IdPos50
	%aux4954 = add i32 0, 1
	%aux4955 = add i32 %aux4953, %aux4954
	store i32 %aux4955, i32* @IdPos50
	br label %etiq2389
	
	etiq2389:
	;___IfElse___
	%aux4957 = add i32 0, 103
	%aux4958 = load i32, i32* @Pivot50
	%aux4959 = sub i32 %aux4957, %aux4958
	%aux4960 = load i32, i32* @IdPos50
	%aux4961 = icmp eq i32 %aux4959, %aux4960
	br i1 %aux4961, label %etiq2390, label %etiq2391
	
	etiq2390:
	;___Asignacion___
	%aux4963 = load i32, i32* @_Acum99
	%aux4964 = add i32 0, 1
	%aux4965 = add i32 %aux4963, %aux4964
	store i32 %aux4965, i32* @_Acum99
	br label %etiq2394
	
	etiq2394:
	;___Asignacion___
	%aux4967 = load i32, i32* @IdPos50
	%aux4968 = add i32 0, 1
	%aux4969 = add i32 %aux4967, %aux4968
	store i32 %aux4969, i32* @IdPos50
	br label %etiq2396
	
	etiq2396:
	;___Asignacion___
	%aux4971 = load i32, i32* @Pivot50
	%aux4972 = add i32 0, 1
	%aux4973 = sub i32 %aux4971, %aux4972
	store i32 %aux4973, i32* @Pivot50
	br label %etiq2399
	
	etiq2391:
	;___Asignacion___
	%aux4975 = load i32, i32* @IdPos50
	%aux4976 = add i32 0, 1
	%aux4977 = add i32 %aux4975, %aux4976
	store i32 %aux4977, i32* @IdPos50
	br label %etiq2399
	
	etiq2399:
	;___IfElse___
	%aux4979 = add i32 0, 103
	%aux4980 = load i32, i32* @Pivot50
	%aux4981 = sub i32 %aux4979, %aux4980
	%aux4982 = load i32, i32* @IdPos50
	%aux4983 = icmp eq i32 %aux4981, %aux4982
	br i1 %aux4983, label %etiq2400, label %etiq2401
	
	etiq2400:
	;___Asignacion___
	%aux4985 = load i32, i32* @_Acum99
	%aux4986 = add i32 0, 1
	%aux4987 = add i32 %aux4985, %aux4986
	store i32 %aux4987, i32* @_Acum99
	br label %etiq2404
	
	etiq2404:
	;___Asignacion___
	%aux4989 = load i32, i32* @IdPos50
	%aux4990 = add i32 0, 1
	%aux4991 = add i32 %aux4989, %aux4990
	store i32 %aux4991, i32* @IdPos50
	br label %etiq2406
	
	etiq2406:
	;___Asignacion___
	%aux4993 = load i32, i32* @Pivot50
	%aux4994 = add i32 0, 1
	%aux4995 = sub i32 %aux4993, %aux4994
	store i32 %aux4995, i32* @Pivot50
	br label %etiq2409
	
	etiq2401:
	;___Asignacion___
	%aux4997 = load i32, i32* @IdPos50
	%aux4998 = add i32 0, 1
	%aux4999 = add i32 %aux4997, %aux4998
	store i32 %aux4999, i32* @IdPos50
	br label %etiq2409
	
	etiq2409:
	;___IfElse___
	%aux5001 = add i32 0, 103
	%aux5002 = load i32, i32* @Pivot50
	%aux5003 = sub i32 %aux5001, %aux5002
	%aux5004 = load i32, i32* @IdPos50
	%aux5005 = icmp eq i32 %aux5003, %aux5004
	br i1 %aux5005, label %etiq2410, label %etiq2411
	
	etiq2410:
	;___Asignacion___
	%aux5007 = load i32, i32* @_Acum99
	%aux5008 = add i32 0, 1
	%aux5009 = add i32 %aux5007, %aux5008
	store i32 %aux5009, i32* @_Acum99
	br label %etiq2414
	
	etiq2414:
	;___Asignacion___
	%aux5011 = load i32, i32* @IdPos50
	%aux5012 = add i32 0, 1
	%aux5013 = add i32 %aux5011, %aux5012
	store i32 %aux5013, i32* @IdPos50
	br label %etiq2416
	
	etiq2416:
	;___Asignacion___
	%aux5015 = load i32, i32* @Pivot50
	%aux5016 = add i32 0, 1
	%aux5017 = sub i32 %aux5015, %aux5016
	store i32 %aux5017, i32* @Pivot50
	br label %etiq2419
	
	etiq2411:
	;___Asignacion___
	%aux5019 = load i32, i32* @IdPos50
	%aux5020 = add i32 0, 1
	%aux5021 = add i32 %aux5019, %aux5020
	store i32 %aux5021, i32* @IdPos50
	br label %etiq2419
	
	etiq2419:
	;___IfElse___
	%aux5023 = add i32 0, 103
	%aux5024 = load i32, i32* @Pivot50
	%aux5025 = sub i32 %aux5023, %aux5024
	%aux5026 = load i32, i32* @IdPos50
	%aux5027 = icmp eq i32 %aux5025, %aux5026
	br i1 %aux5027, label %etiq2420, label %etiq2421
	
	etiq2420:
	;___Asignacion___
	%aux5029 = load i32, i32* @_Acum99
	%aux5030 = add i32 0, 1
	%aux5031 = add i32 %aux5029, %aux5030
	store i32 %aux5031, i32* @_Acum99
	br label %etiq2424
	
	etiq2424:
	;___Asignacion___
	%aux5033 = load i32, i32* @IdPos50
	%aux5034 = add i32 0, 1
	%aux5035 = add i32 %aux5033, %aux5034
	store i32 %aux5035, i32* @IdPos50
	br label %etiq2426
	
	etiq2426:
	;___Asignacion___
	%aux5037 = load i32, i32* @Pivot50
	%aux5038 = add i32 0, 1
	%aux5039 = sub i32 %aux5037, %aux5038
	store i32 %aux5039, i32* @Pivot50
	br label %etiq2429
	
	etiq2421:
	;___Asignacion___
	%aux5041 = load i32, i32* @IdPos50
	%aux5042 = add i32 0, 1
	%aux5043 = add i32 %aux5041, %aux5042
	store i32 %aux5043, i32* @IdPos50
	br label %etiq2429
	
	etiq2429:
	;___IfElse___
	%aux5045 = add i32 0, 103
	%aux5046 = load i32, i32* @Pivot50
	%aux5047 = sub i32 %aux5045, %aux5046
	%aux5048 = load i32, i32* @IdPos50
	%aux5049 = icmp eq i32 %aux5047, %aux5048
	br i1 %aux5049, label %etiq2430, label %etiq2431
	
	etiq2430:
	;___Asignacion___
	%aux5051 = load i32, i32* @_Acum99
	%aux5052 = add i32 0, 1
	%aux5053 = add i32 %aux5051, %aux5052
	store i32 %aux5053, i32* @_Acum99
	br label %etiq2434
	
	etiq2434:
	;___Asignacion___
	%aux5055 = load i32, i32* @IdPos50
	%aux5056 = add i32 0, 1
	%aux5057 = add i32 %aux5055, %aux5056
	store i32 %aux5057, i32* @IdPos50
	br label %etiq2436
	
	etiq2436:
	;___Asignacion___
	%aux5059 = load i32, i32* @Pivot50
	%aux5060 = add i32 0, 1
	%aux5061 = sub i32 %aux5059, %aux5060
	store i32 %aux5061, i32* @Pivot50
	br label %etiq2439
	
	etiq2431:
	;___Asignacion___
	%aux5063 = load i32, i32* @IdPos50
	%aux5064 = add i32 0, 1
	%aux5065 = add i32 %aux5063, %aux5064
	store i32 %aux5065, i32* @IdPos50
	br label %etiq2439
	
	etiq2439:
	;___IfElse___
	%aux5067 = add i32 0, 103
	%aux5068 = load i32, i32* @Pivot50
	%aux5069 = sub i32 %aux5067, %aux5068
	%aux5070 = load i32, i32* @IdPos50
	%aux5071 = icmp eq i32 %aux5069, %aux5070
	br i1 %aux5071, label %etiq2440, label %etiq2441
	
	etiq2440:
	;___Asignacion___
	%aux5073 = load i32, i32* @_Acum99
	%aux5074 = add i32 0, 1
	%aux5075 = add i32 %aux5073, %aux5074
	store i32 %aux5075, i32* @_Acum99
	br label %etiq2444
	
	etiq2444:
	;___Asignacion___
	%aux5077 = load i32, i32* @IdPos50
	%aux5078 = add i32 0, 1
	%aux5079 = add i32 %aux5077, %aux5078
	store i32 %aux5079, i32* @IdPos50
	br label %etiq2446
	
	etiq2446:
	;___Asignacion___
	%aux5081 = load i32, i32* @Pivot50
	%aux5082 = add i32 0, 1
	%aux5083 = sub i32 %aux5081, %aux5082
	store i32 %aux5083, i32* @Pivot50
	br label %etiq2449
	
	etiq2441:
	;___Asignacion___
	%aux5085 = load i32, i32* @IdPos50
	%aux5086 = add i32 0, 1
	%aux5087 = add i32 %aux5085, %aux5086
	store i32 %aux5087, i32* @IdPos50
	br label %etiq2449
	
	etiq2449:
	;___IfElse___
	%aux5089 = add i32 0, 103
	%aux5090 = load i32, i32* @Pivot50
	%aux5091 = sub i32 %aux5089, %aux5090
	%aux5092 = load i32, i32* @IdPos50
	%aux5093 = icmp eq i32 %aux5091, %aux5092
	br i1 %aux5093, label %etiq2450, label %etiq2451
	
	etiq2450:
	;___Asignacion___
	%aux5095 = load i32, i32* @_Acum99
	%aux5096 = add i32 0, 1
	%aux5097 = add i32 %aux5095, %aux5096
	store i32 %aux5097, i32* @_Acum99
	br label %etiq2454
	
	etiq2454:
	;___Asignacion___
	%aux5099 = load i32, i32* @IdPos50
	%aux5100 = add i32 0, 1
	%aux5101 = add i32 %aux5099, %aux5100
	store i32 %aux5101, i32* @IdPos50
	br label %etiq2456
	
	etiq2456:
	;___Asignacion___
	%aux5103 = load i32, i32* @Pivot50
	%aux5104 = add i32 0, 1
	%aux5105 = sub i32 %aux5103, %aux5104
	store i32 %aux5105, i32* @Pivot50
	br label %etiq2459
	
	etiq2451:
	;___Asignacion___
	%aux5107 = load i32, i32* @IdPos50
	%aux5108 = add i32 0, 1
	%aux5109 = add i32 %aux5107, %aux5108
	store i32 %aux5109, i32* @IdPos50
	br label %etiq2459
	
	etiq2459:
	;___IfElse___
	%aux5111 = add i32 0, 103
	%aux5112 = load i32, i32* @Pivot50
	%aux5113 = sub i32 %aux5111, %aux5112
	%aux5114 = load i32, i32* @IdPos50
	%aux5115 = icmp eq i32 %aux5113, %aux5114
	br i1 %aux5115, label %etiq2460, label %etiq2461
	
	etiq2460:
	;___Asignacion___
	%aux5117 = load i32, i32* @_Acum99
	%aux5118 = add i32 0, 1
	%aux5119 = add i32 %aux5117, %aux5118
	store i32 %aux5119, i32* @_Acum99
	br label %etiq2464
	
	etiq2464:
	;___Asignacion___
	%aux5121 = load i32, i32* @IdPos50
	%aux5122 = add i32 0, 1
	%aux5123 = add i32 %aux5121, %aux5122
	store i32 %aux5123, i32* @IdPos50
	br label %etiq2466
	
	etiq2466:
	;___Asignacion___
	%aux5125 = load i32, i32* @Pivot50
	%aux5126 = add i32 0, 1
	%aux5127 = sub i32 %aux5125, %aux5126
	store i32 %aux5127, i32* @Pivot50
	br label %etiq2469
	
	etiq2461:
	;___Asignacion___
	%aux5129 = load i32, i32* @IdPos50
	%aux5130 = add i32 0, 1
	%aux5131 = add i32 %aux5129, %aux5130
	store i32 %aux5131, i32* @IdPos50
	br label %etiq2469
	
	etiq2469:
	;___IfElse___
	%aux5133 = add i32 0, 103
	%aux5134 = load i32, i32* @Pivot50
	%aux5135 = sub i32 %aux5133, %aux5134
	%aux5136 = load i32, i32* @IdPos50
	%aux5137 = icmp eq i32 %aux5135, %aux5136
	br i1 %aux5137, label %etiq2470, label %etiq2471
	
	etiq2470:
	;___Asignacion___
	%aux5139 = load i32, i32* @_Acum99
	%aux5140 = add i32 0, 1
	%aux5141 = add i32 %aux5139, %aux5140
	store i32 %aux5141, i32* @_Acum99
	br label %etiq2474
	
	etiq2474:
	;___Asignacion___
	%aux5143 = load i32, i32* @IdPos50
	%aux5144 = add i32 0, 1
	%aux5145 = add i32 %aux5143, %aux5144
	store i32 %aux5145, i32* @IdPos50
	br label %etiq2476
	
	etiq2476:
	;___Asignacion___
	%aux5147 = load i32, i32* @Pivot50
	%aux5148 = add i32 0, 1
	%aux5149 = sub i32 %aux5147, %aux5148
	store i32 %aux5149, i32* @Pivot50
	br label %etiq2479
	
	etiq2471:
	;___Asignacion___
	%aux5151 = load i32, i32* @IdPos50
	%aux5152 = add i32 0, 1
	%aux5153 = add i32 %aux5151, %aux5152
	store i32 %aux5153, i32* @IdPos50
	br label %etiq2479
	
	etiq2479:
	;___IfElse___
	%aux5155 = add i32 0, 103
	%aux5156 = load i32, i32* @Pivot50
	%aux5157 = sub i32 %aux5155, %aux5156
	%aux5158 = load i32, i32* @IdPos50
	%aux5159 = icmp eq i32 %aux5157, %aux5158
	br i1 %aux5159, label %etiq2480, label %etiq2481
	
	etiq2480:
	;___Asignacion___
	%aux5161 = load i32, i32* @_Acum99
	%aux5162 = add i32 0, 1
	%aux5163 = add i32 %aux5161, %aux5162
	store i32 %aux5163, i32* @_Acum99
	br label %etiq2484
	
	etiq2484:
	;___Asignacion___
	%aux5165 = load i32, i32* @IdPos50
	%aux5166 = add i32 0, 1
	%aux5167 = add i32 %aux5165, %aux5166
	store i32 %aux5167, i32* @IdPos50
	br label %etiq2486
	
	etiq2486:
	;___Asignacion___
	%aux5169 = load i32, i32* @Pivot50
	%aux5170 = add i32 0, 1
	%aux5171 = sub i32 %aux5169, %aux5170
	store i32 %aux5171, i32* @Pivot50
	br label %etiq2489
	
	etiq2481:
	;___Asignacion___
	%aux5173 = load i32, i32* @IdPos50
	%aux5174 = add i32 0, 1
	%aux5175 = add i32 %aux5173, %aux5174
	store i32 %aux5175, i32* @IdPos50
	br label %etiq2489
	
	etiq2489:
	;___IfElse___
	%aux5177 = add i32 0, 103
	%aux5178 = load i32, i32* @Pivot50
	%aux5179 = sub i32 %aux5177, %aux5178
	%aux5180 = load i32, i32* @IdPos50
	%aux5181 = icmp eq i32 %aux5179, %aux5180
	br i1 %aux5181, label %etiq2490, label %etiq2491
	
	etiq2490:
	;___Asignacion___
	%aux5183 = load i32, i32* @_Acum99
	%aux5184 = add i32 0, 1
	%aux5185 = add i32 %aux5183, %aux5184
	store i32 %aux5185, i32* @_Acum99
	br label %etiq2494
	
	etiq2494:
	;___Asignacion___
	%aux5187 = load i32, i32* @IdPos50
	%aux5188 = add i32 0, 1
	%aux5189 = add i32 %aux5187, %aux5188
	store i32 %aux5189, i32* @IdPos50
	br label %etiq2496
	
	etiq2496:
	;___Asignacion___
	%aux5191 = load i32, i32* @Pivot50
	%aux5192 = add i32 0, 1
	%aux5193 = sub i32 %aux5191, %aux5192
	store i32 %aux5193, i32* @Pivot50
	br label %etiq2499
	
	etiq2491:
	;___Asignacion___
	%aux5195 = load i32, i32* @IdPos50
	%aux5196 = add i32 0, 1
	%aux5197 = add i32 %aux5195, %aux5196
	store i32 %aux5197, i32* @IdPos50
	br label %etiq2499
	
	etiq2499:
	;___IfElse___
	%aux5199 = add i32 0, 103
	%aux5200 = load i32, i32* @Pivot50
	%aux5201 = sub i32 %aux5199, %aux5200
	%aux5202 = load i32, i32* @IdPos50
	%aux5203 = icmp eq i32 %aux5201, %aux5202
	br i1 %aux5203, label %etiq2500, label %etiq2501
	
	etiq2500:
	;___Asignacion___
	%aux5205 = load i32, i32* @_Acum99
	%aux5206 = add i32 0, 1
	%aux5207 = add i32 %aux5205, %aux5206
	store i32 %aux5207, i32* @_Acum99
	br label %etiq2504
	
	etiq2504:
	;___Asignacion___
	%aux5209 = load i32, i32* @IdPos50
	%aux5210 = add i32 0, 1
	%aux5211 = add i32 %aux5209, %aux5210
	store i32 %aux5211, i32* @IdPos50
	br label %etiq2506
	
	etiq2506:
	;___Asignacion___
	%aux5213 = load i32, i32* @Pivot50
	%aux5214 = add i32 0, 1
	%aux5215 = sub i32 %aux5213, %aux5214
	store i32 %aux5215, i32* @Pivot50
	br label %etiq2509
	
	etiq2501:
	;___Asignacion___
	%aux5217 = load i32, i32* @IdPos50
	%aux5218 = add i32 0, 1
	%aux5219 = add i32 %aux5217, %aux5218
	store i32 %aux5219, i32* @IdPos50
	br label %etiq2509
	
	etiq2509:
	;___IfElse___
	%aux5221 = add i32 0, 103
	%aux5222 = load i32, i32* @Pivot50
	%aux5223 = sub i32 %aux5221, %aux5222
	%aux5224 = load i32, i32* @IdPos50
	%aux5225 = icmp eq i32 %aux5223, %aux5224
	br i1 %aux5225, label %etiq2510, label %etiq2511
	
	etiq2510:
	;___Asignacion___
	%aux5227 = load i32, i32* @_Acum99
	%aux5228 = add i32 0, 1
	%aux5229 = add i32 %aux5227, %aux5228
	store i32 %aux5229, i32* @_Acum99
	br label %etiq2514
	
	etiq2514:
	;___Asignacion___
	%aux5231 = load i32, i32* @IdPos50
	%aux5232 = add i32 0, 1
	%aux5233 = add i32 %aux5231, %aux5232
	store i32 %aux5233, i32* @IdPos50
	br label %etiq2516
	
	etiq2516:
	;___Asignacion___
	%aux5235 = load i32, i32* @Pivot50
	%aux5236 = add i32 0, 1
	%aux5237 = sub i32 %aux5235, %aux5236
	store i32 %aux5237, i32* @Pivot50
	br label %etiq2519
	
	etiq2511:
	;___Asignacion___
	%aux5239 = load i32, i32* @IdPos50
	%aux5240 = add i32 0, 1
	%aux5241 = add i32 %aux5239, %aux5240
	store i32 %aux5241, i32* @IdPos50
	br label %etiq2519
	
	etiq2519:
	;___IfElse___
	%aux5243 = add i32 0, 103
	%aux5244 = load i32, i32* @Pivot50
	%aux5245 = sub i32 %aux5243, %aux5244
	%aux5246 = load i32, i32* @IdPos50
	%aux5247 = icmp eq i32 %aux5245, %aux5246
	br i1 %aux5247, label %etiq2520, label %etiq2521
	
	etiq2520:
	;___Asignacion___
	%aux5249 = load i32, i32* @_Acum99
	%aux5250 = add i32 0, 1
	%aux5251 = add i32 %aux5249, %aux5250
	store i32 %aux5251, i32* @_Acum99
	br label %etiq2524
	
	etiq2524:
	;___Asignacion___
	%aux5253 = load i32, i32* @IdPos50
	%aux5254 = add i32 0, 1
	%aux5255 = add i32 %aux5253, %aux5254
	store i32 %aux5255, i32* @IdPos50
	br label %etiq2526
	
	etiq2526:
	;___Asignacion___
	%aux5257 = load i32, i32* @Pivot50
	%aux5258 = add i32 0, 1
	%aux5259 = sub i32 %aux5257, %aux5258
	store i32 %aux5259, i32* @Pivot50
	br label %etiq2529
	
	etiq2521:
	;___Asignacion___
	%aux5261 = load i32, i32* @IdPos50
	%aux5262 = add i32 0, 1
	%aux5263 = add i32 %aux5261, %aux5262
	store i32 %aux5263, i32* @IdPos50
	br label %etiq2529
	
	etiq2529:
	;___IfElse___
	%aux5265 = add i32 0, 103
	%aux5266 = load i32, i32* @Pivot50
	%aux5267 = sub i32 %aux5265, %aux5266
	%aux5268 = load i32, i32* @IdPos50
	%aux5269 = icmp eq i32 %aux5267, %aux5268
	br i1 %aux5269, label %etiq2530, label %etiq2531
	
	etiq2530:
	;___Asignacion___
	%aux5271 = load i32, i32* @_Acum99
	%aux5272 = add i32 0, 1
	%aux5273 = add i32 %aux5271, %aux5272
	store i32 %aux5273, i32* @_Acum99
	br label %etiq2534
	
	etiq2534:
	;___Asignacion___
	%aux5275 = load i32, i32* @IdPos50
	%aux5276 = add i32 0, 1
	%aux5277 = add i32 %aux5275, %aux5276
	store i32 %aux5277, i32* @IdPos50
	br label %etiq2536
	
	etiq2536:
	;___Asignacion___
	%aux5279 = load i32, i32* @Pivot50
	%aux5280 = add i32 0, 1
	%aux5281 = sub i32 %aux5279, %aux5280
	store i32 %aux5281, i32* @Pivot50
	br label %etiq2539
	
	etiq2531:
	;___Asignacion___
	%aux5283 = load i32, i32* @IdPos50
	%aux5284 = add i32 0, 1
	%aux5285 = add i32 %aux5283, %aux5284
	store i32 %aux5285, i32* @IdPos50
	br label %etiq2539
	
	etiq2539:
	;___IfElse___
	%aux5287 = add i32 0, 103
	%aux5288 = load i32, i32* @Pivot50
	%aux5289 = sub i32 %aux5287, %aux5288
	%aux5290 = load i32, i32* @IdPos50
	%aux5291 = icmp eq i32 %aux5289, %aux5290
	br i1 %aux5291, label %etiq2540, label %etiq2541
	
	etiq2540:
	;___Asignacion___
	%aux5293 = load i32, i32* @_Acum99
	%aux5294 = add i32 0, 1
	%aux5295 = add i32 %aux5293, %aux5294
	store i32 %aux5295, i32* @_Acum99
	br label %etiq2544
	
	etiq2544:
	;___Asignacion___
	%aux5297 = load i32, i32* @IdPos50
	%aux5298 = add i32 0, 1
	%aux5299 = add i32 %aux5297, %aux5298
	store i32 %aux5299, i32* @IdPos50
	br label %etiq2546
	
	etiq2546:
	;___Asignacion___
	%aux5301 = load i32, i32* @Pivot50
	%aux5302 = add i32 0, 1
	%aux5303 = sub i32 %aux5301, %aux5302
	store i32 %aux5303, i32* @Pivot50
	br label %etiq2549
	
	etiq2541:
	;___Asignacion___
	%aux5305 = load i32, i32* @IdPos50
	%aux5306 = add i32 0, 1
	%aux5307 = add i32 %aux5305, %aux5306
	store i32 %aux5307, i32* @IdPos50
	br label %etiq2549
	
	etiq2549:
	;___IfElse___
	%aux5309 = add i32 0, 103
	%aux5310 = load i32, i32* @Pivot50
	%aux5311 = sub i32 %aux5309, %aux5310
	%aux5312 = load i32, i32* @IdPos50
	%aux5313 = icmp eq i32 %aux5311, %aux5312
	br i1 %aux5313, label %etiq2550, label %etiq2551
	
	etiq2550:
	;___Asignacion___
	%aux5315 = load i32, i32* @_Acum99
	%aux5316 = add i32 0, 1
	%aux5317 = add i32 %aux5315, %aux5316
	store i32 %aux5317, i32* @_Acum99
	br label %etiq2554
	
	etiq2554:
	;___Asignacion___
	%aux5319 = load i32, i32* @IdPos50
	%aux5320 = add i32 0, 1
	%aux5321 = add i32 %aux5319, %aux5320
	store i32 %aux5321, i32* @IdPos50
	br label %etiq2556
	
	etiq2556:
	;___Asignacion___
	%aux5323 = load i32, i32* @Pivot50
	%aux5324 = add i32 0, 1
	%aux5325 = sub i32 %aux5323, %aux5324
	store i32 %aux5325, i32* @Pivot50
	br label %etiq2559
	
	etiq2551:
	;___Asignacion___
	%aux5327 = load i32, i32* @IdPos50
	%aux5328 = add i32 0, 1
	%aux5329 = add i32 %aux5327, %aux5328
	store i32 %aux5329, i32* @IdPos50
	br label %etiq2559
	
	etiq2559:
	;___IfElse___
	%aux5331 = add i32 0, 103
	%aux5332 = load i32, i32* @Pivot50
	%aux5333 = sub i32 %aux5331, %aux5332
	%aux5334 = load i32, i32* @IdPos50
	%aux5335 = icmp eq i32 %aux5333, %aux5334
	br i1 %aux5335, label %etiq2560, label %etiq2561
	
	etiq2560:
	;___Asignacion___
	%aux5337 = load i32, i32* @_Acum99
	%aux5338 = add i32 0, 1
	%aux5339 = add i32 %aux5337, %aux5338
	store i32 %aux5339, i32* @_Acum99
	br label %etiq2564
	
	etiq2564:
	;___Asignacion___
	%aux5341 = load i32, i32* @IdPos50
	%aux5342 = add i32 0, 1
	%aux5343 = add i32 %aux5341, %aux5342
	store i32 %aux5343, i32* @IdPos50
	br label %etiq2566
	
	etiq2566:
	;___Asignacion___
	%aux5345 = load i32, i32* @Pivot50
	%aux5346 = add i32 0, 1
	%aux5347 = sub i32 %aux5345, %aux5346
	store i32 %aux5347, i32* @Pivot50
	br label %etiq2569
	
	etiq2561:
	;___Asignacion___
	%aux5349 = load i32, i32* @IdPos50
	%aux5350 = add i32 0, 1
	%aux5351 = add i32 %aux5349, %aux5350
	store i32 %aux5351, i32* @IdPos50
	br label %etiq2569
	
	etiq2569:
	;___IfElse___
	%aux5353 = add i32 0, 103
	%aux5354 = load i32, i32* @Pivot50
	%aux5355 = sub i32 %aux5353, %aux5354
	%aux5356 = load i32, i32* @IdPos50
	%aux5357 = icmp eq i32 %aux5355, %aux5356
	br i1 %aux5357, label %etiq2570, label %etiq2571
	
	etiq2570:
	;___Asignacion___
	%aux5359 = load i32, i32* @_Acum99
	%aux5360 = add i32 0, 1
	%aux5361 = add i32 %aux5359, %aux5360
	store i32 %aux5361, i32* @_Acum99
	br label %etiq2574
	
	etiq2574:
	;___Asignacion___
	%aux5363 = load i32, i32* @IdPos50
	%aux5364 = add i32 0, 1
	%aux5365 = add i32 %aux5363, %aux5364
	store i32 %aux5365, i32* @IdPos50
	br label %etiq2576
	
	etiq2576:
	;___Asignacion___
	%aux5367 = load i32, i32* @Pivot50
	%aux5368 = add i32 0, 1
	%aux5369 = sub i32 %aux5367, %aux5368
	store i32 %aux5369, i32* @Pivot50
	br label %etiq2579
	
	etiq2571:
	;___Asignacion___
	%aux5371 = load i32, i32* @IdPos50
	%aux5372 = add i32 0, 1
	%aux5373 = add i32 %aux5371, %aux5372
	store i32 %aux5373, i32* @IdPos50
	br label %etiq2579
	
	etiq2579:
	;___IfElse___
	%aux5375 = add i32 0, 103
	%aux5376 = load i32, i32* @Pivot50
	%aux5377 = sub i32 %aux5375, %aux5376
	%aux5378 = load i32, i32* @IdPos50
	%aux5379 = icmp eq i32 %aux5377, %aux5378
	br i1 %aux5379, label %etiq2580, label %etiq2581
	
	etiq2580:
	;___Asignacion___
	%aux5381 = load i32, i32* @_Acum99
	%aux5382 = add i32 0, 1
	%aux5383 = add i32 %aux5381, %aux5382
	store i32 %aux5383, i32* @_Acum99
	br label %etiq2584
	
	etiq2584:
	;___Asignacion___
	%aux5385 = load i32, i32* @IdPos50
	%aux5386 = add i32 0, 1
	%aux5387 = add i32 %aux5385, %aux5386
	store i32 %aux5387, i32* @IdPos50
	br label %etiq2586
	
	etiq2586:
	;___Asignacion___
	%aux5389 = load i32, i32* @Pivot50
	%aux5390 = add i32 0, 1
	%aux5391 = sub i32 %aux5389, %aux5390
	store i32 %aux5391, i32* @Pivot50
	br label %etiq2589
	
	etiq2581:
	;___Asignacion___
	%aux5393 = load i32, i32* @IdPos50
	%aux5394 = add i32 0, 1
	%aux5395 = add i32 %aux5393, %aux5394
	store i32 %aux5395, i32* @IdPos50
	br label %etiq2589
	
	etiq2589:
	;___IfElse___
	%aux5397 = add i32 0, 103
	%aux5398 = load i32, i32* @Pivot50
	%aux5399 = sub i32 %aux5397, %aux5398
	%aux5400 = load i32, i32* @IdPos50
	%aux5401 = icmp eq i32 %aux5399, %aux5400
	br i1 %aux5401, label %etiq2590, label %etiq2591
	
	etiq2590:
	;___Asignacion___
	%aux5403 = load i32, i32* @_Acum99
	%aux5404 = add i32 0, 1
	%aux5405 = add i32 %aux5403, %aux5404
	store i32 %aux5405, i32* @_Acum99
	br label %etiq2594
	
	etiq2594:
	;___Asignacion___
	%aux5407 = load i32, i32* @IdPos50
	%aux5408 = add i32 0, 1
	%aux5409 = add i32 %aux5407, %aux5408
	store i32 %aux5409, i32* @IdPos50
	br label %etiq2596
	
	etiq2596:
	;___Asignacion___
	%aux5411 = load i32, i32* @Pivot50
	%aux5412 = add i32 0, 1
	%aux5413 = sub i32 %aux5411, %aux5412
	store i32 %aux5413, i32* @Pivot50
	br label %etiq2599
	
	etiq2591:
	;___Asignacion___
	%aux5415 = load i32, i32* @IdPos50
	%aux5416 = add i32 0, 1
	%aux5417 = add i32 %aux5415, %aux5416
	store i32 %aux5417, i32* @IdPos50
	br label %etiq2599
	
	etiq2599:
	;___IfElse___
	%aux5419 = add i32 0, 103
	%aux5420 = load i32, i32* @Pivot50
	%aux5421 = sub i32 %aux5419, %aux5420
	%aux5422 = load i32, i32* @IdPos50
	%aux5423 = icmp eq i32 %aux5421, %aux5422
	br i1 %aux5423, label %etiq2600, label %etiq2601
	
	etiq2600:
	;___Asignacion___
	%aux5425 = load i32, i32* @_Acum99
	%aux5426 = add i32 0, 1
	%aux5427 = add i32 %aux5425, %aux5426
	store i32 %aux5427, i32* @_Acum99
	br label %etiq2604
	
	etiq2604:
	;___Asignacion___
	%aux5429 = load i32, i32* @IdPos50
	%aux5430 = add i32 0, 1
	%aux5431 = add i32 %aux5429, %aux5430
	store i32 %aux5431, i32* @IdPos50
	br label %etiq2606
	
	etiq2606:
	;___Asignacion___
	%aux5433 = load i32, i32* @Pivot50
	%aux5434 = add i32 0, 1
	%aux5435 = sub i32 %aux5433, %aux5434
	store i32 %aux5435, i32* @Pivot50
	br label %etiq2609
	
	etiq2601:
	;___Asignacion___
	%aux5437 = load i32, i32* @IdPos50
	%aux5438 = add i32 0, 1
	%aux5439 = add i32 %aux5437, %aux5438
	store i32 %aux5439, i32* @IdPos50
	br label %etiq2609
	
	etiq2609:
	;___IfElse___
	%aux5441 = add i32 0, 103
	%aux5442 = load i32, i32* @Pivot50
	%aux5443 = sub i32 %aux5441, %aux5442
	%aux5444 = load i32, i32* @IdPos50
	%aux5445 = icmp eq i32 %aux5443, %aux5444
	br i1 %aux5445, label %etiq2610, label %etiq2611
	
	etiq2610:
	;___Asignacion___
	%aux5447 = load i32, i32* @_Acum99
	%aux5448 = add i32 0, 1
	%aux5449 = add i32 %aux5447, %aux5448
	store i32 %aux5449, i32* @_Acum99
	br label %etiq2614
	
	etiq2614:
	;___Asignacion___
	%aux5451 = load i32, i32* @IdPos50
	%aux5452 = add i32 0, 1
	%aux5453 = add i32 %aux5451, %aux5452
	store i32 %aux5453, i32* @IdPos50
	br label %etiq2616
	
	etiq2616:
	;___Asignacion___
	%aux5455 = load i32, i32* @Pivot50
	%aux5456 = add i32 0, 1
	%aux5457 = sub i32 %aux5455, %aux5456
	store i32 %aux5457, i32* @Pivot50
	br label %etiq2619
	
	etiq2611:
	;___Asignacion___
	%aux5459 = load i32, i32* @IdPos50
	%aux5460 = add i32 0, 1
	%aux5461 = add i32 %aux5459, %aux5460
	store i32 %aux5461, i32* @IdPos50
	br label %etiq2619
	
	etiq2619:
	;___IfElse___
	%aux5463 = add i32 0, 103
	%aux5464 = load i32, i32* @Pivot50
	%aux5465 = sub i32 %aux5463, %aux5464
	%aux5466 = load i32, i32* @IdPos50
	%aux5467 = icmp eq i32 %aux5465, %aux5466
	br i1 %aux5467, label %etiq2620, label %etiq2621
	
	etiq2620:
	;___Asignacion___
	%aux5469 = load i32, i32* @_Acum99
	%aux5470 = add i32 0, 1
	%aux5471 = add i32 %aux5469, %aux5470
	store i32 %aux5471, i32* @_Acum99
	br label %etiq2624
	
	etiq2624:
	;___Asignacion___
	%aux5473 = load i32, i32* @IdPos50
	%aux5474 = add i32 0, 1
	%aux5475 = add i32 %aux5473, %aux5474
	store i32 %aux5475, i32* @IdPos50
	br label %etiq2626
	
	etiq2626:
	;___Asignacion___
	%aux5477 = load i32, i32* @Pivot50
	%aux5478 = add i32 0, 1
	%aux5479 = sub i32 %aux5477, %aux5478
	store i32 %aux5479, i32* @Pivot50
	br label %etiq2629
	
	etiq2621:
	;___Asignacion___
	%aux5481 = load i32, i32* @IdPos50
	%aux5482 = add i32 0, 1
	%aux5483 = add i32 %aux5481, %aux5482
	store i32 %aux5483, i32* @IdPos50
	br label %etiq2629
	
	etiq2629:
	;___IfElse___
	%aux5485 = add i32 0, 103
	%aux5486 = load i32, i32* @Pivot50
	%aux5487 = sub i32 %aux5485, %aux5486
	%aux5488 = load i32, i32* @IdPos50
	%aux5489 = icmp eq i32 %aux5487, %aux5488
	br i1 %aux5489, label %etiq2630, label %etiq2631
	
	etiq2630:
	;___Asignacion___
	%aux5491 = load i32, i32* @_Acum99
	%aux5492 = add i32 0, 1
	%aux5493 = add i32 %aux5491, %aux5492
	store i32 %aux5493, i32* @_Acum99
	br label %etiq2634
	
	etiq2634:
	;___Asignacion___
	%aux5495 = load i32, i32* @IdPos50
	%aux5496 = add i32 0, 1
	%aux5497 = add i32 %aux5495, %aux5496
	store i32 %aux5497, i32* @IdPos50
	br label %etiq2636
	
	etiq2636:
	;___Asignacion___
	%aux5499 = load i32, i32* @Pivot50
	%aux5500 = add i32 0, 1
	%aux5501 = sub i32 %aux5499, %aux5500
	store i32 %aux5501, i32* @Pivot50
	br label %etiq2639
	
	etiq2631:
	;___Asignacion___
	%aux5503 = load i32, i32* @IdPos50
	%aux5504 = add i32 0, 1
	%aux5505 = add i32 %aux5503, %aux5504
	store i32 %aux5505, i32* @IdPos50
	br label %etiq2639
	
	etiq2639:
	;___IfElse___
	%aux5507 = add i32 0, 103
	%aux5508 = load i32, i32* @Pivot50
	%aux5509 = sub i32 %aux5507, %aux5508
	%aux5510 = load i32, i32* @IdPos50
	%aux5511 = icmp eq i32 %aux5509, %aux5510
	br i1 %aux5511, label %etiq2640, label %etiq2641
	
	etiq2640:
	;___Asignacion___
	%aux5513 = load i32, i32* @_Acum99
	%aux5514 = add i32 0, 1
	%aux5515 = add i32 %aux5513, %aux5514
	store i32 %aux5515, i32* @_Acum99
	br label %etiq2644
	
	etiq2644:
	;___Asignacion___
	%aux5517 = load i32, i32* @IdPos50
	%aux5518 = add i32 0, 1
	%aux5519 = add i32 %aux5517, %aux5518
	store i32 %aux5519, i32* @IdPos50
	br label %etiq2646
	
	etiq2646:
	;___Asignacion___
	%aux5521 = load i32, i32* @Pivot50
	%aux5522 = add i32 0, 1
	%aux5523 = sub i32 %aux5521, %aux5522
	store i32 %aux5523, i32* @Pivot50
	br label %etiq2649
	
	etiq2641:
	;___Asignacion___
	%aux5525 = load i32, i32* @IdPos50
	%aux5526 = add i32 0, 1
	%aux5527 = add i32 %aux5525, %aux5526
	store i32 %aux5527, i32* @IdPos50
	br label %etiq2649
	
	etiq2649:
	;___IfElse___
	%aux5529 = add i32 0, 103
	%aux5530 = load i32, i32* @Pivot50
	%aux5531 = sub i32 %aux5529, %aux5530
	%aux5532 = load i32, i32* @IdPos50
	%aux5533 = icmp eq i32 %aux5531, %aux5532
	br i1 %aux5533, label %etiq2650, label %etiq2651
	
	etiq2650:
	;___Asignacion___
	%aux5535 = load i32, i32* @_Acum99
	%aux5536 = add i32 0, 1
	%aux5537 = add i32 %aux5535, %aux5536
	store i32 %aux5537, i32* @_Acum99
	br label %etiq2654
	
	etiq2654:
	;___Asignacion___
	%aux5539 = load i32, i32* @IdPos50
	%aux5540 = add i32 0, 1
	%aux5541 = add i32 %aux5539, %aux5540
	store i32 %aux5541, i32* @IdPos50
	br label %etiq2656
	
	etiq2656:
	;___Asignacion___
	%aux5543 = load i32, i32* @Pivot50
	%aux5544 = add i32 0, 1
	%aux5545 = sub i32 %aux5543, %aux5544
	store i32 %aux5545, i32* @Pivot50
	br label %etiq2659
	
	etiq2651:
	;___Asignacion___
	%aux5547 = load i32, i32* @IdPos50
	%aux5548 = add i32 0, 1
	%aux5549 = add i32 %aux5547, %aux5548
	store i32 %aux5549, i32* @IdPos50
	br label %etiq2659
	
	etiq2659:
	;___IfElse___
	%aux5551 = add i32 0, 103
	%aux5552 = load i32, i32* @Pivot50
	%aux5553 = sub i32 %aux5551, %aux5552
	%aux5554 = load i32, i32* @IdPos50
	%aux5555 = icmp eq i32 %aux5553, %aux5554
	br i1 %aux5555, label %etiq2660, label %etiq2661
	
	etiq2660:
	;___Asignacion___
	%aux5557 = load i32, i32* @_Acum99
	%aux5558 = add i32 0, 1
	%aux5559 = add i32 %aux5557, %aux5558
	store i32 %aux5559, i32* @_Acum99
	br label %etiq2664
	
	etiq2664:
	;___Asignacion___
	%aux5561 = load i32, i32* @IdPos50
	%aux5562 = add i32 0, 1
	%aux5563 = add i32 %aux5561, %aux5562
	store i32 %aux5563, i32* @IdPos50
	br label %etiq2666
	
	etiq2666:
	;___Asignacion___
	%aux5565 = load i32, i32* @Pivot50
	%aux5566 = add i32 0, 1
	%aux5567 = sub i32 %aux5565, %aux5566
	store i32 %aux5567, i32* @Pivot50
	br label %etiq2669
	
	etiq2661:
	;___Asignacion___
	%aux5569 = load i32, i32* @IdPos50
	%aux5570 = add i32 0, 1
	%aux5571 = add i32 %aux5569, %aux5570
	store i32 %aux5571, i32* @IdPos50
	br label %etiq2669
	
	etiq2669:
	;___IfElse___
	%aux5573 = add i32 0, 103
	%aux5574 = load i32, i32* @Pivot50
	%aux5575 = sub i32 %aux5573, %aux5574
	%aux5576 = load i32, i32* @IdPos50
	%aux5577 = icmp eq i32 %aux5575, %aux5576
	br i1 %aux5577, label %etiq2670, label %etiq2671
	
	etiq2670:
	;___Asignacion___
	%aux5579 = load i32, i32* @_Acum99
	%aux5580 = add i32 0, 1
	%aux5581 = add i32 %aux5579, %aux5580
	store i32 %aux5581, i32* @_Acum99
	br label %etiq2674
	
	etiq2674:
	;___Asignacion___
	%aux5583 = load i32, i32* @IdPos50
	%aux5584 = add i32 0, 1
	%aux5585 = add i32 %aux5583, %aux5584
	store i32 %aux5585, i32* @IdPos50
	br label %etiq2676
	
	etiq2676:
	;___Asignacion___
	%aux5587 = load i32, i32* @Pivot50
	%aux5588 = add i32 0, 1
	%aux5589 = sub i32 %aux5587, %aux5588
	store i32 %aux5589, i32* @Pivot50
	br label %etiq2679
	
	etiq2671:
	;___Asignacion___
	%aux5591 = load i32, i32* @IdPos50
	%aux5592 = add i32 0, 1
	%aux5593 = add i32 %aux5591, %aux5592
	store i32 %aux5593, i32* @IdPos50
	br label %etiq2679
	
	etiq2679:
	;___IfElse___
	%aux5595 = add i32 0, 103
	%aux5596 = load i32, i32* @Pivot50
	%aux5597 = sub i32 %aux5595, %aux5596
	%aux5598 = load i32, i32* @IdPos50
	%aux5599 = icmp eq i32 %aux5597, %aux5598
	br i1 %aux5599, label %etiq2680, label %etiq2681
	
	etiq2680:
	;___Asignacion___
	%aux5601 = load i32, i32* @_Acum99
	%aux5602 = add i32 0, 1
	%aux5603 = add i32 %aux5601, %aux5602
	store i32 %aux5603, i32* @_Acum99
	br label %etiq2684
	
	etiq2684:
	;___Asignacion___
	%aux5605 = load i32, i32* @IdPos50
	%aux5606 = add i32 0, 1
	%aux5607 = add i32 %aux5605, %aux5606
	store i32 %aux5607, i32* @IdPos50
	br label %etiq2686
	
	etiq2686:
	;___Asignacion___
	%aux5609 = load i32, i32* @Pivot50
	%aux5610 = add i32 0, 1
	%aux5611 = sub i32 %aux5609, %aux5610
	store i32 %aux5611, i32* @Pivot50
	br label %etiq2689
	
	etiq2681:
	;___Asignacion___
	%aux5613 = load i32, i32* @IdPos50
	%aux5614 = add i32 0, 1
	%aux5615 = add i32 %aux5613, %aux5614
	store i32 %aux5615, i32* @IdPos50
	br label %etiq2689
	
	etiq2689:
	;___IfElse___
	%aux5617 = add i32 0, 103
	%aux5618 = load i32, i32* @Pivot50
	%aux5619 = sub i32 %aux5617, %aux5618
	%aux5620 = load i32, i32* @IdPos50
	%aux5621 = icmp eq i32 %aux5619, %aux5620
	br i1 %aux5621, label %etiq2690, label %etiq2691
	
	etiq2690:
	;___Asignacion___
	%aux5623 = load i32, i32* @_Acum99
	%aux5624 = add i32 0, 1
	%aux5625 = add i32 %aux5623, %aux5624
	store i32 %aux5625, i32* @_Acum99
	br label %etiq2694
	
	etiq2694:
	;___Asignacion___
	%aux5627 = load i32, i32* @IdPos50
	%aux5628 = add i32 0, 1
	%aux5629 = add i32 %aux5627, %aux5628
	store i32 %aux5629, i32* @IdPos50
	br label %etiq2696
	
	etiq2696:
	;___Asignacion___
	%aux5631 = load i32, i32* @Pivot50
	%aux5632 = add i32 0, 1
	%aux5633 = sub i32 %aux5631, %aux5632
	store i32 %aux5633, i32* @Pivot50
	br label %etiq2699
	
	etiq2691:
	;___Asignacion___
	%aux5635 = load i32, i32* @IdPos50
	%aux5636 = add i32 0, 1
	%aux5637 = add i32 %aux5635, %aux5636
	store i32 %aux5637, i32* @IdPos50
	br label %etiq2699
	
	etiq2699:
	;___IfElse___
	%aux5639 = add i32 0, 103
	%aux5640 = load i32, i32* @Pivot50
	%aux5641 = sub i32 %aux5639, %aux5640
	%aux5642 = load i32, i32* @IdPos50
	%aux5643 = icmp eq i32 %aux5641, %aux5642
	br i1 %aux5643, label %etiq2700, label %etiq2701
	
	etiq2700:
	;___Asignacion___
	%aux5645 = load i32, i32* @_Acum99
	%aux5646 = add i32 0, 1
	%aux5647 = add i32 %aux5645, %aux5646
	store i32 %aux5647, i32* @_Acum99
	br label %etiq2704
	
	etiq2704:
	;___Asignacion___
	%aux5649 = load i32, i32* @IdPos50
	%aux5650 = add i32 0, 1
	%aux5651 = add i32 %aux5649, %aux5650
	store i32 %aux5651, i32* @IdPos50
	br label %etiq2706
	
	etiq2706:
	;___Asignacion___
	%aux5653 = load i32, i32* @Pivot50
	%aux5654 = add i32 0, 1
	%aux5655 = sub i32 %aux5653, %aux5654
	store i32 %aux5655, i32* @Pivot50
	br label %etiq2709
	
	etiq2701:
	;___Asignacion___
	%aux5657 = load i32, i32* @IdPos50
	%aux5658 = add i32 0, 1
	%aux5659 = add i32 %aux5657, %aux5658
	store i32 %aux5659, i32* @IdPos50
	br label %etiq2709
	
	etiq2709:
	;___IfElse___
	%aux5661 = add i32 0, 103
	%aux5662 = load i32, i32* @Pivot50
	%aux5663 = sub i32 %aux5661, %aux5662
	%aux5664 = load i32, i32* @IdPos50
	%aux5665 = icmp eq i32 %aux5663, %aux5664
	br i1 %aux5665, label %etiq2710, label %etiq2711
	
	etiq2710:
	;___Asignacion___
	%aux5667 = load i32, i32* @_Acum99
	%aux5668 = add i32 0, 1
	%aux5669 = add i32 %aux5667, %aux5668
	store i32 %aux5669, i32* @_Acum99
	br label %etiq2714
	
	etiq2714:
	;___Asignacion___
	%aux5671 = load i32, i32* @IdPos50
	%aux5672 = add i32 0, 1
	%aux5673 = add i32 %aux5671, %aux5672
	store i32 %aux5673, i32* @IdPos50
	br label %etiq2716
	
	etiq2716:
	;___Asignacion___
	%aux5675 = load i32, i32* @Pivot50
	%aux5676 = add i32 0, 1
	%aux5677 = sub i32 %aux5675, %aux5676
	store i32 %aux5677, i32* @Pivot50
	br label %etiq2719
	
	etiq2711:
	;___Asignacion___
	%aux5679 = load i32, i32* @IdPos50
	%aux5680 = add i32 0, 1
	%aux5681 = add i32 %aux5679, %aux5680
	store i32 %aux5681, i32* @IdPos50
	br label %etiq2719
	
	etiq2719:
	;___IfElse___
	%aux5683 = add i32 0, 103
	%aux5684 = load i32, i32* @Pivot50
	%aux5685 = sub i32 %aux5683, %aux5684
	%aux5686 = load i32, i32* @IdPos50
	%aux5687 = icmp eq i32 %aux5685, %aux5686
	br i1 %aux5687, label %etiq2720, label %etiq2721
	
	etiq2720:
	;___Asignacion___
	%aux5689 = load i32, i32* @_Acum99
	%aux5690 = add i32 0, 1
	%aux5691 = add i32 %aux5689, %aux5690
	store i32 %aux5691, i32* @_Acum99
	br label %etiq2724
	
	etiq2724:
	;___Asignacion___
	%aux5693 = load i32, i32* @IdPos50
	%aux5694 = add i32 0, 1
	%aux5695 = add i32 %aux5693, %aux5694
	store i32 %aux5695, i32* @IdPos50
	br label %etiq2726
	
	etiq2726:
	;___Asignacion___
	%aux5697 = load i32, i32* @Pivot50
	%aux5698 = add i32 0, 1
	%aux5699 = sub i32 %aux5697, %aux5698
	store i32 %aux5699, i32* @Pivot50
	br label %etiq2729
	
	etiq2721:
	;___Asignacion___
	%aux5701 = load i32, i32* @IdPos50
	%aux5702 = add i32 0, 1
	%aux5703 = add i32 %aux5701, %aux5702
	store i32 %aux5703, i32* @IdPos50
	br label %etiq2729
	
	etiq2729:
	;___IfElse___
	%aux5705 = add i32 0, 103
	%aux5706 = load i32, i32* @Pivot50
	%aux5707 = sub i32 %aux5705, %aux5706
	%aux5708 = load i32, i32* @IdPos50
	%aux5709 = icmp eq i32 %aux5707, %aux5708
	br i1 %aux5709, label %etiq2730, label %etiq2731
	
	etiq2730:
	;___Asignacion___
	%aux5711 = load i32, i32* @_Acum99
	%aux5712 = add i32 0, 1
	%aux5713 = add i32 %aux5711, %aux5712
	store i32 %aux5713, i32* @_Acum99
	br label %etiq2734
	
	etiq2734:
	;___Asignacion___
	%aux5715 = load i32, i32* @IdPos50
	%aux5716 = add i32 0, 1
	%aux5717 = add i32 %aux5715, %aux5716
	store i32 %aux5717, i32* @IdPos50
	br label %etiq2736
	
	etiq2736:
	;___Asignacion___
	%aux5719 = load i32, i32* @Pivot50
	%aux5720 = add i32 0, 1
	%aux5721 = sub i32 %aux5719, %aux5720
	store i32 %aux5721, i32* @Pivot50
	br label %etiq2739
	
	etiq2731:
	;___Asignacion___
	%aux5723 = load i32, i32* @IdPos50
	%aux5724 = add i32 0, 1
	%aux5725 = add i32 %aux5723, %aux5724
	store i32 %aux5725, i32* @IdPos50
	br label %etiq2739
	
	etiq2739:
	;___IfElse___
	%aux5727 = add i32 0, 103
	%aux5728 = load i32, i32* @Pivot50
	%aux5729 = sub i32 %aux5727, %aux5728
	%aux5730 = load i32, i32* @IdPos50
	%aux5731 = icmp eq i32 %aux5729, %aux5730
	br i1 %aux5731, label %etiq2740, label %etiq2741
	
	etiq2740:
	;___Asignacion___
	%aux5733 = load i32, i32* @_Acum99
	%aux5734 = add i32 0, 1
	%aux5735 = add i32 %aux5733, %aux5734
	store i32 %aux5735, i32* @_Acum99
	br label %etiq2744
	
	etiq2744:
	;___Asignacion___
	%aux5737 = load i32, i32* @IdPos50
	%aux5738 = add i32 0, 1
	%aux5739 = add i32 %aux5737, %aux5738
	store i32 %aux5739, i32* @IdPos50
	br label %etiq2746
	
	etiq2746:
	;___Asignacion___
	%aux5741 = load i32, i32* @Pivot50
	%aux5742 = add i32 0, 1
	%aux5743 = sub i32 %aux5741, %aux5742
	store i32 %aux5743, i32* @Pivot50
	br label %etiq2749
	
	etiq2741:
	;___Asignacion___
	%aux5745 = load i32, i32* @IdPos50
	%aux5746 = add i32 0, 1
	%aux5747 = add i32 %aux5745, %aux5746
	store i32 %aux5747, i32* @IdPos50
	br label %etiq2749
	
	etiq2749:
	;___IfElse___
	%aux5749 = add i32 0, 103
	%aux5750 = load i32, i32* @Pivot50
	%aux5751 = sub i32 %aux5749, %aux5750
	%aux5752 = load i32, i32* @IdPos50
	%aux5753 = icmp eq i32 %aux5751, %aux5752
	br i1 %aux5753, label %etiq2750, label %etiq2751
	
	etiq2750:
	;___Asignacion___
	%aux5755 = load i32, i32* @_Acum99
	%aux5756 = add i32 0, 1
	%aux5757 = add i32 %aux5755, %aux5756
	store i32 %aux5757, i32* @_Acum99
	br label %etiq2754
	
	etiq2754:
	;___Asignacion___
	%aux5759 = load i32, i32* @IdPos50
	%aux5760 = add i32 0, 1
	%aux5761 = add i32 %aux5759, %aux5760
	store i32 %aux5761, i32* @IdPos50
	br label %etiq2756
	
	etiq2756:
	;___Asignacion___
	%aux5763 = load i32, i32* @Pivot50
	%aux5764 = add i32 0, 1
	%aux5765 = sub i32 %aux5763, %aux5764
	store i32 %aux5765, i32* @Pivot50
	br label %etiq2759
	
	etiq2751:
	;___Asignacion___
	%aux5767 = load i32, i32* @IdPos50
	%aux5768 = add i32 0, 1
	%aux5769 = add i32 %aux5767, %aux5768
	store i32 %aux5769, i32* @IdPos50
	br label %etiq2759
	
	etiq2759:
	;___IfElse___
	%aux5771 = add i32 0, 103
	%aux5772 = load i32, i32* @Pivot50
	%aux5773 = sub i32 %aux5771, %aux5772
	%aux5774 = load i32, i32* @IdPos50
	%aux5775 = icmp eq i32 %aux5773, %aux5774
	br i1 %aux5775, label %etiq2760, label %etiq2761
	
	etiq2760:
	;___Asignacion___
	%aux5777 = load i32, i32* @_Acum99
	%aux5778 = add i32 0, 1
	%aux5779 = add i32 %aux5777, %aux5778
	store i32 %aux5779, i32* @_Acum99
	br label %etiq2764
	
	etiq2764:
	;___Asignacion___
	%aux5781 = load i32, i32* @IdPos50
	%aux5782 = add i32 0, 1
	%aux5783 = add i32 %aux5781, %aux5782
	store i32 %aux5783, i32* @IdPos50
	br label %etiq2766
	
	etiq2766:
	;___Asignacion___
	%aux5785 = load i32, i32* @Pivot50
	%aux5786 = add i32 0, 1
	%aux5787 = sub i32 %aux5785, %aux5786
	store i32 %aux5787, i32* @Pivot50
	br label %etiq2769
	
	etiq2761:
	;___Asignacion___
	%aux5789 = load i32, i32* @IdPos50
	%aux5790 = add i32 0, 1
	%aux5791 = add i32 %aux5789, %aux5790
	store i32 %aux5791, i32* @IdPos50
	br label %etiq2769
	
	etiq2769:
	;___IfElse___
	%aux5793 = add i32 0, 103
	%aux5794 = load i32, i32* @Pivot50
	%aux5795 = sub i32 %aux5793, %aux5794
	%aux5796 = load i32, i32* @IdPos50
	%aux5797 = icmp eq i32 %aux5795, %aux5796
	br i1 %aux5797, label %etiq2770, label %etiq2771
	
	etiq2770:
	;___Asignacion___
	%aux5799 = load i32, i32* @_Acum99
	%aux5800 = add i32 0, 1
	%aux5801 = add i32 %aux5799, %aux5800
	store i32 %aux5801, i32* @_Acum99
	br label %etiq2774
	
	etiq2774:
	;___Asignacion___
	%aux5803 = load i32, i32* @IdPos50
	%aux5804 = add i32 0, 1
	%aux5805 = add i32 %aux5803, %aux5804
	store i32 %aux5805, i32* @IdPos50
	br label %etiq2776
	
	etiq2776:
	;___Asignacion___
	%aux5807 = load i32, i32* @Pivot50
	%aux5808 = add i32 0, 1
	%aux5809 = sub i32 %aux5807, %aux5808
	store i32 %aux5809, i32* @Pivot50
	br label %etiq2779
	
	etiq2771:
	;___Asignacion___
	%aux5811 = load i32, i32* @IdPos50
	%aux5812 = add i32 0, 1
	%aux5813 = add i32 %aux5811, %aux5812
	store i32 %aux5813, i32* @IdPos50
	br label %etiq2779
	
	etiq2779:
	;___IfElse___
	%aux5815 = add i32 0, 103
	%aux5816 = load i32, i32* @Pivot50
	%aux5817 = sub i32 %aux5815, %aux5816
	%aux5818 = load i32, i32* @IdPos50
	%aux5819 = icmp eq i32 %aux5817, %aux5818
	br i1 %aux5819, label %etiq2780, label %etiq2781
	
	etiq2780:
	;___Asignacion___
	%aux5821 = load i32, i32* @_Acum99
	%aux5822 = add i32 0, 1
	%aux5823 = add i32 %aux5821, %aux5822
	store i32 %aux5823, i32* @_Acum99
	br label %etiq2784
	
	etiq2784:
	;___Asignacion___
	%aux5825 = load i32, i32* @IdPos50
	%aux5826 = add i32 0, 1
	%aux5827 = add i32 %aux5825, %aux5826
	store i32 %aux5827, i32* @IdPos50
	br label %etiq2786
	
	etiq2786:
	;___Asignacion___
	%aux5829 = load i32, i32* @Pivot50
	%aux5830 = add i32 0, 1
	%aux5831 = sub i32 %aux5829, %aux5830
	store i32 %aux5831, i32* @Pivot50
	br label %etiq2789
	
	etiq2781:
	;___Asignacion___
	%aux5833 = load i32, i32* @IdPos50
	%aux5834 = add i32 0, 1
	%aux5835 = add i32 %aux5833, %aux5834
	store i32 %aux5835, i32* @IdPos50
	br label %etiq2789
	
	etiq2789:
	;___IfElse___
	%aux5837 = add i32 0, 103
	%aux5838 = load i32, i32* @Pivot50
	%aux5839 = sub i32 %aux5837, %aux5838
	%aux5840 = load i32, i32* @IdPos50
	%aux5841 = icmp eq i32 %aux5839, %aux5840
	br i1 %aux5841, label %etiq2790, label %etiq2791
	
	etiq2790:
	;___Asignacion___
	%aux5843 = load i32, i32* @_Acum99
	%aux5844 = add i32 0, 1
	%aux5845 = add i32 %aux5843, %aux5844
	store i32 %aux5845, i32* @_Acum99
	br label %etiq2794
	
	etiq2794:
	;___Asignacion___
	%aux5847 = load i32, i32* @IdPos50
	%aux5848 = add i32 0, 1
	%aux5849 = add i32 %aux5847, %aux5848
	store i32 %aux5849, i32* @IdPos50
	br label %etiq2796
	
	etiq2796:
	;___Asignacion___
	%aux5851 = load i32, i32* @Pivot50
	%aux5852 = add i32 0, 1
	%aux5853 = sub i32 %aux5851, %aux5852
	store i32 %aux5853, i32* @Pivot50
	br label %etiq2799
	
	etiq2791:
	;___Asignacion___
	%aux5855 = load i32, i32* @IdPos50
	%aux5856 = add i32 0, 1
	%aux5857 = add i32 %aux5855, %aux5856
	store i32 %aux5857, i32* @IdPos50
	br label %etiq2799
	
	etiq2799:
	;___IfElse___
	%aux5859 = add i32 0, 103
	%aux5860 = load i32, i32* @Pivot50
	%aux5861 = sub i32 %aux5859, %aux5860
	%aux5862 = load i32, i32* @IdPos50
	%aux5863 = icmp eq i32 %aux5861, %aux5862
	br i1 %aux5863, label %etiq2800, label %etiq2801
	
	etiq2800:
	;___Asignacion___
	%aux5865 = load i32, i32* @_Acum99
	%aux5866 = add i32 0, 1
	%aux5867 = add i32 %aux5865, %aux5866
	store i32 %aux5867, i32* @_Acum99
	br label %etiq2804
	
	etiq2804:
	;___Asignacion___
	%aux5869 = load i32, i32* @IdPos50
	%aux5870 = add i32 0, 1
	%aux5871 = add i32 %aux5869, %aux5870
	store i32 %aux5871, i32* @IdPos50
	br label %etiq2806
	
	etiq2806:
	;___Asignacion___
	%aux5873 = load i32, i32* @Pivot50
	%aux5874 = add i32 0, 1
	%aux5875 = sub i32 %aux5873, %aux5874
	store i32 %aux5875, i32* @Pivot50
	br label %etiq2809
	
	etiq2801:
	;___Asignacion___
	%aux5877 = load i32, i32* @IdPos50
	%aux5878 = add i32 0, 1
	%aux5879 = add i32 %aux5877, %aux5878
	store i32 %aux5879, i32* @IdPos50
	br label %etiq2809
	
	etiq2809:
	;___IfElse___
	%aux5881 = add i32 0, 103
	%aux5882 = load i32, i32* @Pivot50
	%aux5883 = sub i32 %aux5881, %aux5882
	%aux5884 = load i32, i32* @IdPos50
	%aux5885 = icmp eq i32 %aux5883, %aux5884
	br i1 %aux5885, label %etiq2810, label %etiq2811
	
	etiq2810:
	;___Asignacion___
	%aux5887 = load i32, i32* @_Acum99
	%aux5888 = add i32 0, 1
	%aux5889 = add i32 %aux5887, %aux5888
	store i32 %aux5889, i32* @_Acum99
	br label %etiq2814
	
	etiq2814:
	;___Asignacion___
	%aux5891 = load i32, i32* @IdPos50
	%aux5892 = add i32 0, 1
	%aux5893 = add i32 %aux5891, %aux5892
	store i32 %aux5893, i32* @IdPos50
	br label %etiq2816
	
	etiq2816:
	;___Asignacion___
	%aux5895 = load i32, i32* @Pivot50
	%aux5896 = add i32 0, 1
	%aux5897 = sub i32 %aux5895, %aux5896
	store i32 %aux5897, i32* @Pivot50
	br label %etiq2819
	
	etiq2811:
	;___Asignacion___
	%aux5899 = load i32, i32* @IdPos50
	%aux5900 = add i32 0, 1
	%aux5901 = add i32 %aux5899, %aux5900
	store i32 %aux5901, i32* @IdPos50
	br label %etiq2819
	
	etiq2819:
	;___IfElse___
	%aux5903 = add i32 0, 103
	%aux5904 = load i32, i32* @Pivot50
	%aux5905 = sub i32 %aux5903, %aux5904
	%aux5906 = load i32, i32* @IdPos50
	%aux5907 = icmp eq i32 %aux5905, %aux5906
	br i1 %aux5907, label %etiq2820, label %etiq2821
	
	etiq2820:
	;___Asignacion___
	%aux5909 = load i32, i32* @_Acum99
	%aux5910 = add i32 0, 1
	%aux5911 = add i32 %aux5909, %aux5910
	store i32 %aux5911, i32* @_Acum99
	br label %etiq2824
	
	etiq2824:
	;___Asignacion___
	%aux5913 = load i32, i32* @IdPos50
	%aux5914 = add i32 0, 1
	%aux5915 = add i32 %aux5913, %aux5914
	store i32 %aux5915, i32* @IdPos50
	br label %etiq2826
	
	etiq2826:
	;___Asignacion___
	%aux5917 = load i32, i32* @Pivot50
	%aux5918 = add i32 0, 1
	%aux5919 = sub i32 %aux5917, %aux5918
	store i32 %aux5919, i32* @Pivot50
	br label %etiq2829
	
	etiq2821:
	;___Asignacion___
	%aux5921 = load i32, i32* @IdPos50
	%aux5922 = add i32 0, 1
	%aux5923 = add i32 %aux5921, %aux5922
	store i32 %aux5923, i32* @IdPos50
	br label %etiq2829
	
	etiq2829:
	;___IfElse___
	%aux5925 = add i32 0, 103
	%aux5926 = load i32, i32* @Pivot50
	%aux5927 = sub i32 %aux5925, %aux5926
	%aux5928 = load i32, i32* @IdPos50
	%aux5929 = icmp eq i32 %aux5927, %aux5928
	br i1 %aux5929, label %etiq2830, label %etiq2831
	
	etiq2830:
	;___Asignacion___
	%aux5931 = load i32, i32* @_Acum99
	%aux5932 = add i32 0, 1
	%aux5933 = add i32 %aux5931, %aux5932
	store i32 %aux5933, i32* @_Acum99
	br label %etiq2834
	
	etiq2834:
	;___Asignacion___
	%aux5935 = load i32, i32* @IdPos50
	%aux5936 = add i32 0, 1
	%aux5937 = add i32 %aux5935, %aux5936
	store i32 %aux5937, i32* @IdPos50
	br label %etiq2836
	
	etiq2836:
	;___Asignacion___
	%aux5939 = load i32, i32* @Pivot50
	%aux5940 = add i32 0, 1
	%aux5941 = sub i32 %aux5939, %aux5940
	store i32 %aux5941, i32* @Pivot50
	br label %etiq2839
	
	etiq2831:
	;___Asignacion___
	%aux5943 = load i32, i32* @IdPos50
	%aux5944 = add i32 0, 1
	%aux5945 = add i32 %aux5943, %aux5944
	store i32 %aux5945, i32* @IdPos50
	br label %etiq2839
	
	etiq2839:
	;___IfElse___
	%aux5947 = add i32 0, 103
	%aux5948 = load i32, i32* @Pivot50
	%aux5949 = sub i32 %aux5947, %aux5948
	%aux5950 = load i32, i32* @IdPos50
	%aux5951 = icmp eq i32 %aux5949, %aux5950
	br i1 %aux5951, label %etiq2840, label %etiq2841
	
	etiq2840:
	;___Asignacion___
	%aux5953 = load i32, i32* @_Acum99
	%aux5954 = add i32 0, 1
	%aux5955 = add i32 %aux5953, %aux5954
	store i32 %aux5955, i32* @_Acum99
	br label %etiq2844
	
	etiq2844:
	;___Asignacion___
	%aux5957 = load i32, i32* @IdPos50
	%aux5958 = add i32 0, 1
	%aux5959 = add i32 %aux5957, %aux5958
	store i32 %aux5959, i32* @IdPos50
	br label %etiq2846
	
	etiq2846:
	;___Asignacion___
	%aux5961 = load i32, i32* @Pivot50
	%aux5962 = add i32 0, 1
	%aux5963 = sub i32 %aux5961, %aux5962
	store i32 %aux5963, i32* @Pivot50
	br label %etiq2849
	
	etiq2841:
	;___Asignacion___
	%aux5965 = load i32, i32* @IdPos50
	%aux5966 = add i32 0, 1
	%aux5967 = add i32 %aux5965, %aux5966
	store i32 %aux5967, i32* @IdPos50
	br label %etiq2849
	
	etiq2849:
	;___IfElse___
	%aux5969 = add i32 0, 103
	%aux5970 = load i32, i32* @Pivot50
	%aux5971 = sub i32 %aux5969, %aux5970
	%aux5972 = load i32, i32* @IdPos50
	%aux5973 = icmp eq i32 %aux5971, %aux5972
	br i1 %aux5973, label %etiq2850, label %etiq2851
	
	etiq2850:
	;___Asignacion___
	%aux5975 = load i32, i32* @_Acum99
	%aux5976 = add i32 0, 1
	%aux5977 = add i32 %aux5975, %aux5976
	store i32 %aux5977, i32* @_Acum99
	br label %etiq2854
	
	etiq2854:
	;___Asignacion___
	%aux5979 = load i32, i32* @IdPos50
	%aux5980 = add i32 0, 1
	%aux5981 = add i32 %aux5979, %aux5980
	store i32 %aux5981, i32* @IdPos50
	br label %etiq2856
	
	etiq2856:
	;___Asignacion___
	%aux5983 = load i32, i32* @Pivot50
	%aux5984 = add i32 0, 1
	%aux5985 = sub i32 %aux5983, %aux5984
	store i32 %aux5985, i32* @Pivot50
	br label %etiq2859
	
	etiq2851:
	;___Asignacion___
	%aux5987 = load i32, i32* @IdPos50
	%aux5988 = add i32 0, 1
	%aux5989 = add i32 %aux5987, %aux5988
	store i32 %aux5989, i32* @IdPos50
	br label %etiq2859
	
	etiq2859:
	;___IfElse___
	%aux5991 = add i32 0, 103
	%aux5992 = load i32, i32* @Pivot50
	%aux5993 = sub i32 %aux5991, %aux5992
	%aux5994 = load i32, i32* @IdPos50
	%aux5995 = icmp eq i32 %aux5993, %aux5994
	br i1 %aux5995, label %etiq2860, label %etiq2861
	
	etiq2860:
	;___Asignacion___
	%aux5997 = load i32, i32* @_Acum99
	%aux5998 = add i32 0, 1
	%aux5999 = add i32 %aux5997, %aux5998
	store i32 %aux5999, i32* @_Acum99
	br label %etiq2864
	
	etiq2864:
	;___Asignacion___
	%aux6001 = load i32, i32* @IdPos50
	%aux6002 = add i32 0, 1
	%aux6003 = add i32 %aux6001, %aux6002
	store i32 %aux6003, i32* @IdPos50
	br label %etiq2866
	
	etiq2866:
	;___Asignacion___
	%aux6005 = load i32, i32* @Pivot50
	%aux6006 = add i32 0, 1
	%aux6007 = sub i32 %aux6005, %aux6006
	store i32 %aux6007, i32* @Pivot50
	br label %etiq2869
	
	etiq2861:
	;___Asignacion___
	%aux6009 = load i32, i32* @IdPos50
	%aux6010 = add i32 0, 1
	%aux6011 = add i32 %aux6009, %aux6010
	store i32 %aux6011, i32* @IdPos50
	br label %etiq2869
	
	etiq2869:
	;___IfElse___
	%aux6013 = add i32 0, 103
	%aux6014 = load i32, i32* @Pivot50
	%aux6015 = sub i32 %aux6013, %aux6014
	%aux6016 = load i32, i32* @IdPos50
	%aux6017 = icmp eq i32 %aux6015, %aux6016
	br i1 %aux6017, label %etiq2870, label %etiq2871
	
	etiq2870:
	;___Asignacion___
	%aux6019 = load i32, i32* @_Acum99
	%aux6020 = add i32 0, 1
	%aux6021 = add i32 %aux6019, %aux6020
	store i32 %aux6021, i32* @_Acum99
	br label %etiq2874
	
	etiq2874:
	;___Asignacion___
	%aux6023 = load i32, i32* @IdPos50
	%aux6024 = add i32 0, 1
	%aux6025 = add i32 %aux6023, %aux6024
	store i32 %aux6025, i32* @IdPos50
	br label %etiq2876
	
	etiq2876:
	;___Asignacion___
	%aux6027 = load i32, i32* @Pivot50
	%aux6028 = add i32 0, 1
	%aux6029 = sub i32 %aux6027, %aux6028
	store i32 %aux6029, i32* @Pivot50
	br label %etiq2879
	
	etiq2871:
	;___Asignacion___
	%aux6031 = load i32, i32* @IdPos50
	%aux6032 = add i32 0, 1
	%aux6033 = add i32 %aux6031, %aux6032
	store i32 %aux6033, i32* @IdPos50
	br label %etiq2879
	
	etiq2879:
	;___IfElse___
	%aux6035 = add i32 0, 103
	%aux6036 = load i32, i32* @Pivot50
	%aux6037 = sub i32 %aux6035, %aux6036
	%aux6038 = load i32, i32* @IdPos50
	%aux6039 = icmp eq i32 %aux6037, %aux6038
	br i1 %aux6039, label %etiq2880, label %etiq2881
	
	etiq2880:
	;___Asignacion___
	%aux6041 = load i32, i32* @_Acum99
	%aux6042 = add i32 0, 1
	%aux6043 = add i32 %aux6041, %aux6042
	store i32 %aux6043, i32* @_Acum99
	br label %etiq2884
	
	etiq2884:
	;___Asignacion___
	%aux6045 = load i32, i32* @IdPos50
	%aux6046 = add i32 0, 1
	%aux6047 = add i32 %aux6045, %aux6046
	store i32 %aux6047, i32* @IdPos50
	br label %etiq2886
	
	etiq2886:
	;___Asignacion___
	%aux6049 = load i32, i32* @Pivot50
	%aux6050 = add i32 0, 1
	%aux6051 = sub i32 %aux6049, %aux6050
	store i32 %aux6051, i32* @Pivot50
	br label %etiq2889
	
	etiq2881:
	;___Asignacion___
	%aux6053 = load i32, i32* @IdPos50
	%aux6054 = add i32 0, 1
	%aux6055 = add i32 %aux6053, %aux6054
	store i32 %aux6055, i32* @IdPos50
	br label %etiq2889
	
	etiq2889:
	;___IfElse___
	%aux6057 = add i32 0, 103
	%aux6058 = load i32, i32* @Pivot50
	%aux6059 = sub i32 %aux6057, %aux6058
	%aux6060 = load i32, i32* @IdPos50
	%aux6061 = icmp eq i32 %aux6059, %aux6060
	br i1 %aux6061, label %etiq2890, label %etiq2891
	
	etiq2890:
	;___Asignacion___
	%aux6063 = load i32, i32* @_Acum99
	%aux6064 = add i32 0, 1
	%aux6065 = add i32 %aux6063, %aux6064
	store i32 %aux6065, i32* @_Acum99
	br label %etiq2894
	
	etiq2894:
	;___Asignacion___
	%aux6067 = load i32, i32* @IdPos50
	%aux6068 = add i32 0, 1
	%aux6069 = add i32 %aux6067, %aux6068
	store i32 %aux6069, i32* @IdPos50
	br label %etiq2896
	
	etiq2896:
	;___Asignacion___
	%aux6071 = load i32, i32* @Pivot50
	%aux6072 = add i32 0, 1
	%aux6073 = sub i32 %aux6071, %aux6072
	store i32 %aux6073, i32* @Pivot50
	br label %etiq2899
	
	etiq2891:
	;___Asignacion___
	%aux6075 = load i32, i32* @IdPos50
	%aux6076 = add i32 0, 1
	%aux6077 = add i32 %aux6075, %aux6076
	store i32 %aux6077, i32* @IdPos50
	br label %etiq2899
	
	etiq2899:
	;___IfElse___
	%aux6079 = add i32 0, 103
	%aux6080 = load i32, i32* @Pivot50
	%aux6081 = sub i32 %aux6079, %aux6080
	%aux6082 = load i32, i32* @IdPos50
	%aux6083 = icmp eq i32 %aux6081, %aux6082
	br i1 %aux6083, label %etiq2900, label %etiq2901
	
	etiq2900:
	;___Asignacion___
	%aux6085 = load i32, i32* @_Acum99
	%aux6086 = add i32 0, 1
	%aux6087 = add i32 %aux6085, %aux6086
	store i32 %aux6087, i32* @_Acum99
	br label %etiq2904
	
	etiq2904:
	;___Asignacion___
	%aux6089 = load i32, i32* @IdPos50
	%aux6090 = add i32 0, 1
	%aux6091 = add i32 %aux6089, %aux6090
	store i32 %aux6091, i32* @IdPos50
	br label %etiq2906
	
	etiq2906:
	;___Asignacion___
	%aux6093 = load i32, i32* @Pivot50
	%aux6094 = add i32 0, 1
	%aux6095 = sub i32 %aux6093, %aux6094
	store i32 %aux6095, i32* @Pivot50
	br label %etiq2909
	
	etiq2901:
	;___Asignacion___
	%aux6097 = load i32, i32* @IdPos50
	%aux6098 = add i32 0, 1
	%aux6099 = add i32 %aux6097, %aux6098
	store i32 %aux6099, i32* @IdPos50
	br label %etiq2909
	
	etiq2909:
	;___IfElse___
	%aux6101 = add i32 0, 103
	%aux6102 = load i32, i32* @Pivot50
	%aux6103 = sub i32 %aux6101, %aux6102
	%aux6104 = load i32, i32* @IdPos50
	%aux6105 = icmp eq i32 %aux6103, %aux6104
	br i1 %aux6105, label %etiq2910, label %etiq2911
	
	etiq2910:
	;___Asignacion___
	%aux6107 = load i32, i32* @_Acum99
	%aux6108 = add i32 0, 1
	%aux6109 = add i32 %aux6107, %aux6108
	store i32 %aux6109, i32* @_Acum99
	br label %etiq2914
	
	etiq2914:
	;___Asignacion___
	%aux6111 = load i32, i32* @IdPos50
	%aux6112 = add i32 0, 1
	%aux6113 = add i32 %aux6111, %aux6112
	store i32 %aux6113, i32* @IdPos50
	br label %etiq2916
	
	etiq2916:
	;___Asignacion___
	%aux6115 = load i32, i32* @Pivot50
	%aux6116 = add i32 0, 1
	%aux6117 = sub i32 %aux6115, %aux6116
	store i32 %aux6117, i32* @Pivot50
	br label %etiq2919
	
	etiq2911:
	;___Asignacion___
	%aux6119 = load i32, i32* @IdPos50
	%aux6120 = add i32 0, 1
	%aux6121 = add i32 %aux6119, %aux6120
	store i32 %aux6121, i32* @IdPos50
	br label %etiq2919
	
	etiq2919:
	;___IfElse___
	%aux6123 = add i32 0, 103
	%aux6124 = load i32, i32* @Pivot50
	%aux6125 = sub i32 %aux6123, %aux6124
	%aux6126 = load i32, i32* @IdPos50
	%aux6127 = icmp eq i32 %aux6125, %aux6126
	br i1 %aux6127, label %etiq2920, label %etiq2921
	
	etiq2920:
	;___Asignacion___
	%aux6129 = load i32, i32* @_Acum99
	%aux6130 = add i32 0, 1
	%aux6131 = add i32 %aux6129, %aux6130
	store i32 %aux6131, i32* @_Acum99
	br label %etiq2924
	
	etiq2924:
	;___Asignacion___
	%aux6133 = load i32, i32* @IdPos50
	%aux6134 = add i32 0, 1
	%aux6135 = add i32 %aux6133, %aux6134
	store i32 %aux6135, i32* @IdPos50
	br label %etiq2926
	
	etiq2926:
	;___Asignacion___
	%aux6137 = load i32, i32* @Pivot50
	%aux6138 = add i32 0, 1
	%aux6139 = sub i32 %aux6137, %aux6138
	store i32 %aux6139, i32* @Pivot50
	br label %etiq2929
	
	etiq2921:
	;___Asignacion___
	%aux6141 = load i32, i32* @IdPos50
	%aux6142 = add i32 0, 1
	%aux6143 = add i32 %aux6141, %aux6142
	store i32 %aux6143, i32* @IdPos50
	br label %etiq2929
	
	etiq2929:
	;___IfElse___
	%aux6145 = add i32 0, 103
	%aux6146 = load i32, i32* @Pivot50
	%aux6147 = sub i32 %aux6145, %aux6146
	%aux6148 = load i32, i32* @IdPos50
	%aux6149 = icmp eq i32 %aux6147, %aux6148
	br i1 %aux6149, label %etiq2930, label %etiq2931
	
	etiq2930:
	;___Asignacion___
	%aux6151 = load i32, i32* @_Acum99
	%aux6152 = add i32 0, 1
	%aux6153 = add i32 %aux6151, %aux6152
	store i32 %aux6153, i32* @_Acum99
	br label %etiq2934
	
	etiq2934:
	;___Asignacion___
	%aux6155 = load i32, i32* @IdPos50
	%aux6156 = add i32 0, 1
	%aux6157 = add i32 %aux6155, %aux6156
	store i32 %aux6157, i32* @IdPos50
	br label %etiq2936
	
	etiq2936:
	;___Asignacion___
	%aux6159 = load i32, i32* @Pivot50
	%aux6160 = add i32 0, 1
	%aux6161 = sub i32 %aux6159, %aux6160
	store i32 %aux6161, i32* @Pivot50
	br label %etiq2939
	
	etiq2931:
	;___Asignacion___
	%aux6163 = load i32, i32* @IdPos50
	%aux6164 = add i32 0, 1
	%aux6165 = add i32 %aux6163, %aux6164
	store i32 %aux6165, i32* @IdPos50
	br label %etiq2939
	
	etiq2939:
	;___IfElse___
	%aux6167 = add i32 0, 103
	%aux6168 = load i32, i32* @Pivot50
	%aux6169 = sub i32 %aux6167, %aux6168
	%aux6170 = load i32, i32* @IdPos50
	%aux6171 = icmp eq i32 %aux6169, %aux6170
	br i1 %aux6171, label %etiq2940, label %etiq2941
	
	etiq2940:
	;___Asignacion___
	%aux6173 = load i32, i32* @_Acum99
	%aux6174 = add i32 0, 1
	%aux6175 = add i32 %aux6173, %aux6174
	store i32 %aux6175, i32* @_Acum99
	br label %etiq2944
	
	etiq2944:
	;___Asignacion___
	%aux6177 = load i32, i32* @IdPos50
	%aux6178 = add i32 0, 1
	%aux6179 = add i32 %aux6177, %aux6178
	store i32 %aux6179, i32* @IdPos50
	br label %etiq2946
	
	etiq2946:
	;___Asignacion___
	%aux6181 = load i32, i32* @Pivot50
	%aux6182 = add i32 0, 1
	%aux6183 = sub i32 %aux6181, %aux6182
	store i32 %aux6183, i32* @Pivot50
	br label %etiq2949
	
	etiq2941:
	;___Asignacion___
	%aux6185 = load i32, i32* @IdPos50
	%aux6186 = add i32 0, 1
	%aux6187 = add i32 %aux6185, %aux6186
	store i32 %aux6187, i32* @IdPos50
	br label %etiq2949
	
	etiq2949:
	;___IfElse___
	%aux6189 = add i32 0, 103
	%aux6190 = load i32, i32* @Pivot50
	%aux6191 = sub i32 %aux6189, %aux6190
	%aux6192 = load i32, i32* @IdPos50
	%aux6193 = icmp eq i32 %aux6191, %aux6192
	br i1 %aux6193, label %etiq2950, label %etiq2951
	
	etiq2950:
	;___Asignacion___
	%aux6195 = load i32, i32* @_Acum99
	%aux6196 = add i32 0, 1
	%aux6197 = add i32 %aux6195, %aux6196
	store i32 %aux6197, i32* @_Acum99
	br label %etiq2954
	
	etiq2954:
	;___Asignacion___
	%aux6199 = load i32, i32* @IdPos50
	%aux6200 = add i32 0, 1
	%aux6201 = add i32 %aux6199, %aux6200
	store i32 %aux6201, i32* @IdPos50
	br label %etiq2956
	
	etiq2956:
	;___Asignacion___
	%aux6203 = load i32, i32* @Pivot50
	%aux6204 = add i32 0, 1
	%aux6205 = sub i32 %aux6203, %aux6204
	store i32 %aux6205, i32* @Pivot50
	br label %etiq2959
	
	etiq2951:
	;___Asignacion___
	%aux6207 = load i32, i32* @IdPos50
	%aux6208 = add i32 0, 1
	%aux6209 = add i32 %aux6207, %aux6208
	store i32 %aux6209, i32* @IdPos50
	br label %etiq2959
	
	etiq2959:
	;___IfElse___
	%aux6211 = add i32 0, 103
	%aux6212 = load i32, i32* @Pivot50
	%aux6213 = sub i32 %aux6211, %aux6212
	%aux6214 = load i32, i32* @IdPos50
	%aux6215 = icmp eq i32 %aux6213, %aux6214
	br i1 %aux6215, label %etiq2960, label %etiq2961
	
	etiq2960:
	;___Asignacion___
	%aux6217 = load i32, i32* @_Acum99
	%aux6218 = add i32 0, 1
	%aux6219 = add i32 %aux6217, %aux6218
	store i32 %aux6219, i32* @_Acum99
	br label %etiq2964
	
	etiq2964:
	;___Asignacion___
	%aux6221 = load i32, i32* @IdPos50
	%aux6222 = add i32 0, 1
	%aux6223 = add i32 %aux6221, %aux6222
	store i32 %aux6223, i32* @IdPos50
	br label %etiq2966
	
	etiq2966:
	;___Asignacion___
	%aux6225 = load i32, i32* @Pivot50
	%aux6226 = add i32 0, 1
	%aux6227 = sub i32 %aux6225, %aux6226
	store i32 %aux6227, i32* @Pivot50
	br label %etiq2969
	
	etiq2961:
	;___Asignacion___
	%aux6229 = load i32, i32* @IdPos50
	%aux6230 = add i32 0, 1
	%aux6231 = add i32 %aux6229, %aux6230
	store i32 %aux6231, i32* @IdPos50
	br label %etiq2969
	
	etiq2969:
	;___IfElse___
	%aux6233 = add i32 0, 103
	%aux6234 = load i32, i32* @Pivot50
	%aux6235 = sub i32 %aux6233, %aux6234
	%aux6236 = load i32, i32* @IdPos50
	%aux6237 = icmp eq i32 %aux6235, %aux6236
	br i1 %aux6237, label %etiq2970, label %etiq2971
	
	etiq2970:
	;___Asignacion___
	%aux6239 = load i32, i32* @_Acum99
	%aux6240 = add i32 0, 1
	%aux6241 = add i32 %aux6239, %aux6240
	store i32 %aux6241, i32* @_Acum99
	br label %etiq2974
	
	etiq2974:
	;___Asignacion___
	%aux6243 = load i32, i32* @IdPos50
	%aux6244 = add i32 0, 1
	%aux6245 = add i32 %aux6243, %aux6244
	store i32 %aux6245, i32* @IdPos50
	br label %etiq2976
	
	etiq2976:
	;___Asignacion___
	%aux6247 = load i32, i32* @Pivot50
	%aux6248 = add i32 0, 1
	%aux6249 = sub i32 %aux6247, %aux6248
	store i32 %aux6249, i32* @Pivot50
	br label %etiq2979
	
	etiq2971:
	;___Asignacion___
	%aux6251 = load i32, i32* @IdPos50
	%aux6252 = add i32 0, 1
	%aux6253 = add i32 %aux6251, %aux6252
	store i32 %aux6253, i32* @IdPos50
	br label %etiq2979
	
	etiq2979:
	;___IfElse___
	%aux6255 = add i32 0, 103
	%aux6256 = load i32, i32* @Pivot50
	%aux6257 = sub i32 %aux6255, %aux6256
	%aux6258 = load i32, i32* @IdPos50
	%aux6259 = icmp eq i32 %aux6257, %aux6258
	br i1 %aux6259, label %etiq2980, label %etiq2981
	
	etiq2980:
	;___Asignacion___
	%aux6261 = load i32, i32* @_Acum99
	%aux6262 = add i32 0, 1
	%aux6263 = add i32 %aux6261, %aux6262
	store i32 %aux6263, i32* @_Acum99
	br label %etiq2984
	
	etiq2984:
	;___Asignacion___
	%aux6265 = load i32, i32* @IdPos50
	%aux6266 = add i32 0, 1
	%aux6267 = add i32 %aux6265, %aux6266
	store i32 %aux6267, i32* @IdPos50
	br label %etiq2986
	
	etiq2986:
	;___Asignacion___
	%aux6269 = load i32, i32* @Pivot50
	%aux6270 = add i32 0, 1
	%aux6271 = sub i32 %aux6269, %aux6270
	store i32 %aux6271, i32* @Pivot50
	br label %etiq2989
	
	etiq2981:
	;___Asignacion___
	%aux6273 = load i32, i32* @IdPos50
	%aux6274 = add i32 0, 1
	%aux6275 = add i32 %aux6273, %aux6274
	store i32 %aux6275, i32* @IdPos50
	br label %etiq2989
	
	etiq2989:
	;___IfElse___
	%aux6277 = add i32 0, 103
	%aux6278 = load i32, i32* @Pivot50
	%aux6279 = sub i32 %aux6277, %aux6278
	%aux6280 = load i32, i32* @IdPos50
	%aux6281 = icmp eq i32 %aux6279, %aux6280
	br i1 %aux6281, label %etiq2990, label %etiq2991
	
	etiq2990:
	;___Asignacion___
	%aux6283 = load i32, i32* @_Acum99
	%aux6284 = add i32 0, 1
	%aux6285 = add i32 %aux6283, %aux6284
	store i32 %aux6285, i32* @_Acum99
	br label %etiq2994
	
	etiq2994:
	;___Asignacion___
	%aux6287 = load i32, i32* @IdPos50
	%aux6288 = add i32 0, 1
	%aux6289 = add i32 %aux6287, %aux6288
	store i32 %aux6289, i32* @IdPos50
	br label %etiq2996
	
	etiq2996:
	;___Asignacion___
	%aux6291 = load i32, i32* @Pivot50
	%aux6292 = add i32 0, 1
	%aux6293 = sub i32 %aux6291, %aux6292
	store i32 %aux6293, i32* @Pivot50
	br label %etiq2999
	
	etiq2991:
	;___Asignacion___
	%aux6295 = load i32, i32* @IdPos50
	%aux6296 = add i32 0, 1
	%aux6297 = add i32 %aux6295, %aux6296
	store i32 %aux6297, i32* @IdPos50
	br label %etiq2999
	
	etiq2999:
	;___IfElse___
	%aux6299 = add i32 0, 103
	%aux6300 = load i32, i32* @Pivot50
	%aux6301 = sub i32 %aux6299, %aux6300
	%aux6302 = load i32, i32* @IdPos50
	%aux6303 = icmp eq i32 %aux6301, %aux6302
	br i1 %aux6303, label %etiq3000, label %etiq3001
	
	etiq3000:
	;___Asignacion___
	%aux6305 = load i32, i32* @_Acum99
	%aux6306 = add i32 0, 1
	%aux6307 = add i32 %aux6305, %aux6306
	store i32 %aux6307, i32* @_Acum99
	br label %etiq3004
	
	etiq3004:
	;___Asignacion___
	%aux6309 = load i32, i32* @IdPos50
	%aux6310 = add i32 0, 1
	%aux6311 = add i32 %aux6309, %aux6310
	store i32 %aux6311, i32* @IdPos50
	br label %etiq3006
	
	etiq3006:
	;___Asignacion___
	%aux6313 = load i32, i32* @Pivot50
	%aux6314 = add i32 0, 1
	%aux6315 = sub i32 %aux6313, %aux6314
	store i32 %aux6315, i32* @Pivot50
	br label %etiq3009
	
	etiq3001:
	;___Asignacion___
	%aux6317 = load i32, i32* @IdPos50
	%aux6318 = add i32 0, 1
	%aux6319 = add i32 %aux6317, %aux6318
	store i32 %aux6319, i32* @IdPos50
	br label %etiq3009
	
	etiq3009:
	;___IfElse___
	%aux6321 = add i32 0, 103
	%aux6322 = load i32, i32* @Pivot50
	%aux6323 = sub i32 %aux6321, %aux6322
	%aux6324 = load i32, i32* @IdPos50
	%aux6325 = icmp eq i32 %aux6323, %aux6324
	br i1 %aux6325, label %etiq3010, label %etiq3011
	
	etiq3010:
	;___Asignacion___
	%aux6327 = load i32, i32* @_Acum99
	%aux6328 = add i32 0, 1
	%aux6329 = add i32 %aux6327, %aux6328
	store i32 %aux6329, i32* @_Acum99
	br label %etiq3014
	
	etiq3014:
	;___Asignacion___
	%aux6331 = load i32, i32* @IdPos50
	%aux6332 = add i32 0, 1
	%aux6333 = add i32 %aux6331, %aux6332
	store i32 %aux6333, i32* @IdPos50
	br label %etiq3016
	
	etiq3016:
	;___Asignacion___
	%aux6335 = load i32, i32* @Pivot50
	%aux6336 = add i32 0, 1
	%aux6337 = sub i32 %aux6335, %aux6336
	store i32 %aux6337, i32* @Pivot50
	br label %etiq3019
	
	etiq3011:
	;___Asignacion___
	%aux6339 = load i32, i32* @IdPos50
	%aux6340 = add i32 0, 1
	%aux6341 = add i32 %aux6339, %aux6340
	store i32 %aux6341, i32* @IdPos50
	br label %etiq3019
	
	etiq3019:
	;___IfElse___
	%aux6343 = add i32 0, 103
	%aux6344 = load i32, i32* @Pivot50
	%aux6345 = sub i32 %aux6343, %aux6344
	%aux6346 = load i32, i32* @IdPos50
	%aux6347 = icmp eq i32 %aux6345, %aux6346
	br i1 %aux6347, label %etiq3020, label %etiq3021
	
	etiq3020:
	;___Asignacion___
	%aux6349 = load i32, i32* @_Acum99
	%aux6350 = add i32 0, 1
	%aux6351 = add i32 %aux6349, %aux6350
	store i32 %aux6351, i32* @_Acum99
	br label %etiq3024
	
	etiq3024:
	;___Asignacion___
	%aux6353 = load i32, i32* @IdPos50
	%aux6354 = add i32 0, 1
	%aux6355 = add i32 %aux6353, %aux6354
	store i32 %aux6355, i32* @IdPos50
	br label %etiq3026
	
	etiq3026:
	;___Asignacion___
	%aux6357 = load i32, i32* @Pivot50
	%aux6358 = add i32 0, 1
	%aux6359 = sub i32 %aux6357, %aux6358
	store i32 %aux6359, i32* @Pivot50
	br label %etiq3029
	
	etiq3021:
	;___Asignacion___
	%aux6361 = load i32, i32* @IdPos50
	%aux6362 = add i32 0, 1
	%aux6363 = add i32 %aux6361, %aux6362
	store i32 %aux6363, i32* @IdPos50
	br label %etiq3029
	
	etiq3029:
	;___IfElse___
	%aux6365 = add i32 0, 103
	%aux6366 = load i32, i32* @Pivot50
	%aux6367 = sub i32 %aux6365, %aux6366
	%aux6368 = load i32, i32* @IdPos50
	%aux6369 = icmp eq i32 %aux6367, %aux6368
	br i1 %aux6369, label %etiq3030, label %etiq3031
	
	etiq3030:
	;___Asignacion___
	%aux6371 = load i32, i32* @_Acum99
	%aux6372 = add i32 0, 1
	%aux6373 = add i32 %aux6371, %aux6372
	store i32 %aux6373, i32* @_Acum99
	br label %etiq3034
	
	etiq3034:
	;___Asignacion___
	%aux6375 = load i32, i32* @IdPos50
	%aux6376 = add i32 0, 1
	%aux6377 = add i32 %aux6375, %aux6376
	store i32 %aux6377, i32* @IdPos50
	br label %etiq3036
	
	etiq3036:
	;___Asignacion___
	%aux6379 = load i32, i32* @Pivot50
	%aux6380 = add i32 0, 1
	%aux6381 = sub i32 %aux6379, %aux6380
	store i32 %aux6381, i32* @Pivot50
	br label %etiq3039
	
	etiq3031:
	;___Asignacion___
	%aux6383 = load i32, i32* @IdPos50
	%aux6384 = add i32 0, 1
	%aux6385 = add i32 %aux6383, %aux6384
	store i32 %aux6385, i32* @IdPos50
	br label %etiq3039
	
	etiq3039:
	;___IfElse___
	%aux6387 = add i32 0, 103
	%aux6388 = load i32, i32* @Pivot50
	%aux6389 = sub i32 %aux6387, %aux6388
	%aux6390 = load i32, i32* @IdPos50
	%aux6391 = icmp eq i32 %aux6389, %aux6390
	br i1 %aux6391, label %etiq3040, label %etiq3041
	
	etiq3040:
	;___Asignacion___
	%aux6393 = load i32, i32* @_Acum99
	%aux6394 = add i32 0, 1
	%aux6395 = add i32 %aux6393, %aux6394
	store i32 %aux6395, i32* @_Acum99
	br label %etiq3044
	
	etiq3044:
	;___Asignacion___
	%aux6397 = load i32, i32* @IdPos50
	%aux6398 = add i32 0, 1
	%aux6399 = add i32 %aux6397, %aux6398
	store i32 %aux6399, i32* @IdPos50
	br label %etiq3046
	
	etiq3046:
	;___Asignacion___
	%aux6401 = load i32, i32* @Pivot50
	%aux6402 = add i32 0, 1
	%aux6403 = sub i32 %aux6401, %aux6402
	store i32 %aux6403, i32* @Pivot50
	br label %etiq3049
	
	etiq3041:
	;___Asignacion___
	%aux6405 = load i32, i32* @IdPos50
	%aux6406 = add i32 0, 1
	%aux6407 = add i32 %aux6405, %aux6406
	store i32 %aux6407, i32* @IdPos50
	br label %etiq3049
	
	etiq3049:
	;___IfElse___
	%aux6409 = add i32 0, 103
	%aux6410 = load i32, i32* @Pivot50
	%aux6411 = sub i32 %aux6409, %aux6410
	%aux6412 = load i32, i32* @IdPos50
	%aux6413 = icmp eq i32 %aux6411, %aux6412
	br i1 %aux6413, label %etiq3050, label %etiq3051
	
	etiq3050:
	;___Asignacion___
	%aux6415 = load i32, i32* @_Acum99
	%aux6416 = add i32 0, 1
	%aux6417 = add i32 %aux6415, %aux6416
	store i32 %aux6417, i32* @_Acum99
	br label %etiq3054
	
	etiq3054:
	;___Asignacion___
	%aux6419 = load i32, i32* @IdPos50
	%aux6420 = add i32 0, 1
	%aux6421 = add i32 %aux6419, %aux6420
	store i32 %aux6421, i32* @IdPos50
	br label %etiq3056
	
	etiq3056:
	;___Asignacion___
	%aux6423 = load i32, i32* @Pivot50
	%aux6424 = add i32 0, 1
	%aux6425 = sub i32 %aux6423, %aux6424
	store i32 %aux6425, i32* @Pivot50
	br label %etiq3059
	
	etiq3051:
	;___Asignacion___
	%aux6427 = load i32, i32* @IdPos50
	%aux6428 = add i32 0, 1
	%aux6429 = add i32 %aux6427, %aux6428
	store i32 %aux6429, i32* @IdPos50
	br label %etiq3059
	
	etiq3059:
	;___IfElse___
	%aux6431 = add i32 0, 103
	%aux6432 = load i32, i32* @Pivot50
	%aux6433 = sub i32 %aux6431, %aux6432
	%aux6434 = load i32, i32* @IdPos50
	%aux6435 = icmp eq i32 %aux6433, %aux6434
	br i1 %aux6435, label %etiq3060, label %etiq3061
	
	etiq3060:
	;___Asignacion___
	%aux6437 = load i32, i32* @_Acum99
	%aux6438 = add i32 0, 1
	%aux6439 = add i32 %aux6437, %aux6438
	store i32 %aux6439, i32* @_Acum99
	br label %etiq3064
	
	etiq3064:
	;___Asignacion___
	%aux6441 = load i32, i32* @IdPos50
	%aux6442 = add i32 0, 1
	%aux6443 = add i32 %aux6441, %aux6442
	store i32 %aux6443, i32* @IdPos50
	br label %etiq3066
	
	etiq3066:
	;___Asignacion___
	%aux6445 = load i32, i32* @Pivot50
	%aux6446 = add i32 0, 1
	%aux6447 = sub i32 %aux6445, %aux6446
	store i32 %aux6447, i32* @Pivot50
	br label %etiq3069
	
	etiq3061:
	;___Asignacion___
	%aux6449 = load i32, i32* @IdPos50
	%aux6450 = add i32 0, 1
	%aux6451 = add i32 %aux6449, %aux6450
	store i32 %aux6451, i32* @IdPos50
	br label %etiq3069
	
	etiq3069:
	;___IfElse___
	%aux6453 = add i32 0, 103
	%aux6454 = load i32, i32* @Pivot50
	%aux6455 = sub i32 %aux6453, %aux6454
	%aux6456 = load i32, i32* @IdPos50
	%aux6457 = icmp eq i32 %aux6455, %aux6456
	br i1 %aux6457, label %etiq3070, label %etiq3071
	
	etiq3070:
	;___Asignacion___
	%aux6459 = load i32, i32* @_Acum99
	%aux6460 = add i32 0, 1
	%aux6461 = add i32 %aux6459, %aux6460
	store i32 %aux6461, i32* @_Acum99
	br label %etiq3074
	
	etiq3074:
	;___Asignacion___
	%aux6463 = load i32, i32* @IdPos50
	%aux6464 = add i32 0, 1
	%aux6465 = add i32 %aux6463, %aux6464
	store i32 %aux6465, i32* @IdPos50
	br label %etiq3076
	
	etiq3076:
	;___Asignacion___
	%aux6467 = load i32, i32* @Pivot50
	%aux6468 = add i32 0, 1
	%aux6469 = sub i32 %aux6467, %aux6468
	store i32 %aux6469, i32* @Pivot50
	br label %etiq3079
	
	etiq3071:
	;___Asignacion___
	%aux6471 = load i32, i32* @IdPos50
	%aux6472 = add i32 0, 1
	%aux6473 = add i32 %aux6471, %aux6472
	store i32 %aux6473, i32* @IdPos50
	br label %etiq3079
	
	etiq3079:
	;___IfElse___
	%aux6475 = add i32 0, 103
	%aux6476 = load i32, i32* @Pivot50
	%aux6477 = sub i32 %aux6475, %aux6476
	%aux6478 = load i32, i32* @IdPos50
	%aux6479 = icmp eq i32 %aux6477, %aux6478
	br i1 %aux6479, label %etiq3080, label %etiq3081
	
	etiq3080:
	;___Asignacion___
	%aux6481 = load i32, i32* @_Acum99
	br label %etiq3083
	
	etiq3083:
	;___Asignacion___
	%aux6483 = add i32 0, 0
	store i32 %aux6483, i32* @_Acum89
	br label %etiq3084
	
	etiq3084:
	;___Asignacion___
	%aux6485 = add i32 0, 0
	store i32 %aux6485, i32* @_Acum90
	br label %etiq3085
	
	etiq3085:
	;___Asignacion___
	%aux6487 = add i32 0, 4
	store i32 %aux6487, i32* @Pivot45
	br label %etiq3086
	
	etiq3086:
	;___IfElse___
	%aux6489 = load i32, i32* @Pivot45
	%aux6490 = add i32 0, 1
	%aux6491 = icmp sge i32 %aux6489, %aux6490
	br i1 %aux6491, label %etiq3088, label %etiq3089
	
	etiq3088:
	;___IfElse___
	%aux6493 = add i32 0, 4
	%aux6494 = load i32, i32* @Pivot45
	%aux6495 = icmp sge i32 %aux6493, %aux6494
	br i1 %aux6495, label %etiq3091, label %etiq3092
	
	etiq3091:
	;___IfElse___
	%aux6497 = add i32 0, 4
	%aux6498 = add i32 0, 0
	%aux6499 = icmp sgt i32 %aux6497, %aux6498
	br i1 %aux6499, label %etiq3095, label %etiq3096
	
	etiq3095:
	;___IfElse___
	%aux6501 = add i32 0, 4
	%aux6502 = load i32, i32* @Pivot45
	%aux6503 = sub i32 %aux6501, %aux6502
	%aux6504 = load i32, i32* @IdPos45
	%aux6505 = icmp eq i32 %aux6503, %aux6504
	br i1 %aux6505, label %etiq3098, label %etiq3099
	
	etiq3098:
	;___Asignacion___
	%aux6507 = load i32, i32* @_Acum89
	%aux6508 = add i32 0, 1
	%aux6509 = add i32 %aux6507, %aux6508
	store i32 %aux6509, i32* @_Acum89
	br label %etiq3102
	
	etiq3102:
	;___Asignacion___
	%aux6511 = load i32, i32* @IdPos45
	%aux6512 = add i32 0, 1
	%aux6513 = add i32 %aux6511, %aux6512
	store i32 %aux6513, i32* @IdPos45
	br label %etiq3104
	
	etiq3104:
	;___Asignacion___
	%aux6515 = load i32, i32* @Pivot45
	%aux6516 = add i32 0, 1
	%aux6517 = sub i32 %aux6515, %aux6516
	store i32 %aux6517, i32* @Pivot45
	br label %etiq3107
	
	etiq3099:
	;___Asignacion___
	%aux6519 = load i32, i32* @IdPos45
	%aux6520 = add i32 0, 1
	%aux6521 = add i32 %aux6519, %aux6520
	store i32 %aux6521, i32* @IdPos45
	br label %etiq3107
	
	etiq3107:
	;___IfElse___
	%aux6523 = add i32 0, 4
	%aux6524 = load i32, i32* @Pivot45
	%aux6525 = sub i32 %aux6523, %aux6524
	%aux6526 = load i32, i32* @IdPos45
	%aux6527 = icmp eq i32 %aux6525, %aux6526
	br i1 %aux6527, label %etiq3108, label %etiq3109
	
	etiq3108:
	;___Asignacion___
	%aux6529 = load i32, i32* @_Acum89
	%aux6530 = add i32 0, 2
	%aux6531 = add i32 %aux6529, %aux6530
	store i32 %aux6531, i32* @_Acum89
	br label %etiq3112
	
	etiq3112:
	;___Asignacion___
	%aux6533 = load i32, i32* @IdPos45
	%aux6534 = add i32 0, 1
	%aux6535 = add i32 %aux6533, %aux6534
	store i32 %aux6535, i32* @IdPos45
	br label %etiq3114
	
	etiq3114:
	;___Asignacion___
	%aux6537 = load i32, i32* @Pivot45
	%aux6538 = add i32 0, 1
	%aux6539 = sub i32 %aux6537, %aux6538
	store i32 %aux6539, i32* @Pivot45
	br label %etiq3117
	
	etiq3109:
	;___Asignacion___
	%aux6541 = load i32, i32* @IdPos45
	%aux6542 = add i32 0, 1
	%aux6543 = add i32 %aux6541, %aux6542
	store i32 %aux6543, i32* @IdPos45
	br label %etiq3117
	
	etiq3117:
	;___IfElse___
	%aux6545 = add i32 0, 4
	%aux6546 = load i32, i32* @Pivot45
	%aux6547 = sub i32 %aux6545, %aux6546
	%aux6548 = load i32, i32* @IdPos45
	%aux6549 = icmp eq i32 %aux6547, %aux6548
	br i1 %aux6549, label %etiq3118, label %etiq3119
	
	etiq3118:
	;___Asignacion___
	%aux6551 = load i32, i32* @_Acum89
	%aux6552 = add i32 0, 3
	%aux6553 = add i32 %aux6551, %aux6552
	store i32 %aux6553, i32* @_Acum89
	br label %etiq3122
	
	etiq3122:
	;___Asignacion___
	%aux6555 = load i32, i32* @IdPos45
	%aux6556 = add i32 0, 1
	%aux6557 = add i32 %aux6555, %aux6556
	store i32 %aux6557, i32* @IdPos45
	br label %etiq3124
	
	etiq3124:
	;___Asignacion___
	%aux6559 = load i32, i32* @Pivot45
	%aux6560 = add i32 0, 1
	%aux6561 = sub i32 %aux6559, %aux6560
	store i32 %aux6561, i32* @Pivot45
	br label %etiq3137
	
	etiq3119:
	;___Asignacion___
	%aux6563 = load i32, i32* @IdPos45
	%aux6564 = add i32 0, 1
	%aux6565 = add i32 %aux6563, %aux6564
	store i32 %aux6565, i32* @IdPos45
	br label %etiq3127
	
	etiq3127:
	;___IfElse___
	%aux6567 = add i32 0, 4
	%aux6568 = load i32, i32* @Pivot45
	%aux6569 = sub i32 %aux6567, %aux6568
	%aux6570 = load i32, i32* @IdPos45
	%aux6571 = icmp eq i32 %aux6569, %aux6570
	br i1 %aux6571, label %etiq3128, label %etiq3129
	
	etiq3128:
	;___Asignacion___
	%aux6573 = load i32, i32* @_Acum89
	%aux6574 = add i32 0, 4
	%aux6575 = add i32 %aux6573, %aux6574
	store i32 %aux6575, i32* @_Acum89
	br label %etiq3132
	
	etiq3132:
	;___Asignacion___
	%aux6577 = load i32, i32* @IdPos45
	%aux6578 = add i32 0, 1
	%aux6579 = add i32 %aux6577, %aux6578
	store i32 %aux6579, i32* @IdPos45
	br label %etiq3134
	
	etiq3134:
	;___Asignacion___
	%aux6581 = load i32, i32* @Pivot45
	%aux6582 = add i32 0, 1
	%aux6583 = sub i32 %aux6581, %aux6582
	store i32 %aux6583, i32* @Pivot45
	br label %etiq3137
	
	etiq3129:
	;___Asignacion___
	%aux6585 = load i32, i32* @IdPos45
	%aux6586 = add i32 0, 1
	%aux6587 = add i32 %aux6585, %aux6586
	store i32 %aux6587, i32* @IdPos45
	br label %etiq3137
	
	etiq3096:
	;___DisplayCadenaCaracteres___
	%aux6588 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq3137
	
	etiq3092:
	;___DisplayCadenaCaracteres___
	%aux6589 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq3137
	
	etiq3089:
	;___DisplayCadenaCaracteres___
	%aux6590 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq3137
	
	etiq3137:
	;___Asignacion___
	%aux6592 = load i32, i32* @_Acum89
	store i32 %aux6592, i32* @_Acum90
	br label %etiq3138
	
	etiq3138:
	;___Asignacion___
	%aux6594 = add i32 0, 4
	store i32 %aux6594, i32* @Pivot45
	br label %etiq3139
	
	etiq3139:
	;___Asignacion___
	%aux6596 = add i32 0, 0
	store i32 %aux6596, i32* @IdPos45
	br label %etiq3140
	
	etiq3140:
	;___Asignacion___
	%aux6598 = add i32 0, 0
	store i32 %aux6598, i32* @_Acum87
	br label %etiq3141
	
	etiq3141:
	;___Asignacion___
	%aux6600 = add i32 0, 0
	store i32 %aux6600, i32* @_Acum88
	br label %etiq3142
	
	etiq3142:
	;___Asignacion___
	%aux6602 = add i32 0, 3
	store i32 %aux6602, i32* @Pivot44
	br label %etiq3143
	
	etiq3143:
	;___IfElse___
	%aux6604 = load i32, i32* @Pivot44
	%aux6605 = add i32 0, 1
	%aux6606 = icmp sge i32 %aux6604, %aux6605
	br i1 %aux6606, label %etiq3145, label %etiq3146
	
	etiq3145:
	;___IfElse___
	%aux6608 = add i32 0, 3
	%aux6609 = load i32, i32* @Pivot44
	%aux6610 = icmp sge i32 %aux6608, %aux6609
	br i1 %aux6610, label %etiq3148, label %etiq3149
	
	etiq3148:
	;___IfElse___
	%aux6612 = add i32 0, 3
	%aux6613 = add i32 0, 0
	%aux6614 = icmp sgt i32 %aux6612, %aux6613
	br i1 %aux6614, label %etiq3152, label %etiq3153
	
	etiq3152:
	;___IfElse___
	%aux6616 = add i32 0, 3
	%aux6617 = load i32, i32* @Pivot44
	%aux6618 = sub i32 %aux6616, %aux6617
	%aux6619 = load i32, i32* @IdPos44
	%aux6620 = icmp eq i32 %aux6618, %aux6619
	br i1 %aux6620, label %etiq3155, label %etiq3156
	
	etiq3155:
	;___Asignacion___
	%aux6622 = load i32, i32* @_Acum87
	%aux6623 = add i32 0, 1
	%aux6624 = add i32 %aux6622, %aux6623
	store i32 %aux6624, i32* @_Acum87
	br label %etiq3159
	
	etiq3159:
	;___Asignacion___
	%aux6626 = load i32, i32* @IdPos44
	%aux6627 = add i32 0, 1
	%aux6628 = add i32 %aux6626, %aux6627
	store i32 %aux6628, i32* @IdPos44
	br label %etiq3161
	
	etiq3161:
	;___Asignacion___
	%aux6630 = load i32, i32* @Pivot44
	%aux6631 = add i32 0, 1
	%aux6632 = sub i32 %aux6630, %aux6631
	store i32 %aux6632, i32* @Pivot44
	br label %etiq3164
	
	etiq3156:
	;___Asignacion___
	%aux6634 = load i32, i32* @IdPos44
	%aux6635 = add i32 0, 1
	%aux6636 = add i32 %aux6634, %aux6635
	store i32 %aux6636, i32* @IdPos44
	br label %etiq3164
	
	etiq3164:
	;___IfElse___
	%aux6638 = add i32 0, 3
	%aux6639 = load i32, i32* @Pivot44
	%aux6640 = sub i32 %aux6638, %aux6639
	%aux6641 = load i32, i32* @IdPos44
	%aux6642 = icmp eq i32 %aux6640, %aux6641
	br i1 %aux6642, label %etiq3165, label %etiq3166
	
	etiq3165:
	;___Asignacion___
	%aux6644 = load i32, i32* @_Acum87
	%aux6645 = add i32 0, 2
	%aux6646 = add i32 %aux6644, %aux6645
	store i32 %aux6646, i32* @_Acum87
	br label %etiq3169
	
	etiq3169:
	;___Asignacion___
	%aux6648 = load i32, i32* @IdPos44
	%aux6649 = add i32 0, 1
	%aux6650 = add i32 %aux6648, %aux6649
	store i32 %aux6650, i32* @IdPos44
	br label %etiq3171
	
	etiq3171:
	;___Asignacion___
	%aux6652 = load i32, i32* @Pivot44
	%aux6653 = add i32 0, 1
	%aux6654 = sub i32 %aux6652, %aux6653
	store i32 %aux6654, i32* @Pivot44
	br label %etiq3174
	
	etiq3166:
	;___Asignacion___
	%aux6656 = load i32, i32* @IdPos44
	%aux6657 = add i32 0, 1
	%aux6658 = add i32 %aux6656, %aux6657
	store i32 %aux6658, i32* @IdPos44
	br label %etiq3174
	
	etiq3174:
	;___IfElse___
	%aux6660 = add i32 0, 3
	%aux6661 = load i32, i32* @Pivot44
	%aux6662 = sub i32 %aux6660, %aux6661
	%aux6663 = load i32, i32* @IdPos44
	%aux6664 = icmp eq i32 %aux6662, %aux6663
	br i1 %aux6664, label %etiq3175, label %etiq3176
	
	etiq3175:
	;___Asignacion___
	%aux6666 = load i32, i32* @_Acum87
	%aux6667 = add i32 0, 3
	%aux6668 = add i32 %aux6666, %aux6667
	store i32 %aux6668, i32* @_Acum87
	br label %etiq3179
	
	etiq3179:
	;___Asignacion___
	%aux6670 = load i32, i32* @IdPos44
	%aux6671 = add i32 0, 1
	%aux6672 = add i32 %aux6670, %aux6671
	store i32 %aux6672, i32* @IdPos44
	br label %etiq3181
	
	etiq3181:
	;___Asignacion___
	%aux6674 = load i32, i32* @Pivot44
	%aux6675 = add i32 0, 1
	%aux6676 = sub i32 %aux6674, %aux6675
	store i32 %aux6676, i32* @Pivot44
	br label %etiq3184
	
	etiq3176:
	;___Asignacion___
	%aux6678 = load i32, i32* @IdPos44
	%aux6679 = add i32 0, 1
	%aux6680 = add i32 %aux6678, %aux6679
	store i32 %aux6680, i32* @IdPos44
	br label %etiq3184
	
	etiq3153:
	;___DisplayCadenaCaracteres___
	%aux6681 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq3184
	
	etiq3149:
	;___DisplayCadenaCaracteres___
	%aux6682 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq3184
	
	etiq3146:
	;___DisplayCadenaCaracteres___
	%aux6683 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq3184
	
	etiq3184:
	;___Asignacion___
	%aux6685 = load i32, i32* @_Acum87
	store i32 %aux6685, i32* @_Acum88
	br label %etiq3185
	
	etiq3185:
	;___Asignacion___
	%aux6687 = add i32 0, 3
	store i32 %aux6687, i32* @Pivot44
	br label %etiq3186
	
	etiq3186:
	;___Asignacion___
	%aux6689 = add i32 0, 0
	store i32 %aux6689, i32* @IdPos44
	br label %etiq3187
	
	etiq3187:
	;___Asignacion___
	%aux6691 = add i32 0, 0
	store i32 %aux6691, i32* @_Acum83
	br label %etiq3188
	
	etiq3188:
	;___Asignacion___
	%aux6693 = add i32 0, 0
	store i32 %aux6693, i32* @_Acum84
	br label %etiq3189
	
	etiq3189:
	;___Asignacion___
	%aux6695 = add i32 0, 2
	store i32 %aux6695, i32* @Pivot42
	br label %etiq3190
	
	etiq3190:
	;___IfElse___
	%aux6697 = load i32, i32* @Pivot42
	%aux6698 = add i32 0, 1
	%aux6699 = icmp sge i32 %aux6697, %aux6698
	br i1 %aux6699, label %etiq3192, label %etiq3193
	
	etiq3192:
	;___IfElse___
	%aux6701 = add i32 0, 2
	%aux6702 = load i32, i32* @Pivot42
	%aux6703 = icmp sge i32 %aux6701, %aux6702
	br i1 %aux6703, label %etiq3195, label %etiq3196
	
	etiq3195:
	;___IfElse___
	%aux6705 = add i32 0, 2
	%aux6706 = add i32 0, 0
	%aux6707 = icmp sgt i32 %aux6705, %aux6706
	br i1 %aux6707, label %etiq3199, label %etiq3200
	
	etiq3199:
	;___IfElse___
	%aux6709 = add i32 0, 2
	%aux6710 = load i32, i32* @Pivot42
	%aux6711 = sub i32 %aux6709, %aux6710
	%aux6712 = load i32, i32* @IdPos42
	%aux6713 = icmp eq i32 %aux6711, %aux6712
	br i1 %aux6713, label %etiq3202, label %etiq3203
	
	etiq3202:
	;___Asignacion___
	%aux6715 = load i32, i32* @_Acum83
	%aux6716 = add i32 0, 1
	%aux6717 = add i32 %aux6715, %aux6716
	store i32 %aux6717, i32* @_Acum83
	br label %etiq3206
	
	etiq3206:
	;___Asignacion___
	%aux6719 = load i32, i32* @IdPos42
	%aux6720 = add i32 0, 1
	%aux6721 = add i32 %aux6719, %aux6720
	store i32 %aux6721, i32* @IdPos42
	br label %etiq3208
	
	etiq3208:
	;___Asignacion___
	%aux6723 = load i32, i32* @Pivot42
	%aux6724 = add i32 0, 1
	%aux6725 = sub i32 %aux6723, %aux6724
	store i32 %aux6725, i32* @Pivot42
	br label %etiq3211
	
	etiq3203:
	;___Asignacion___
	%aux6727 = load i32, i32* @IdPos42
	%aux6728 = add i32 0, 1
	%aux6729 = add i32 %aux6727, %aux6728
	store i32 %aux6729, i32* @IdPos42
	br label %etiq3211
	
	etiq3211:
	;___IfElse___
	%aux6731 = add i32 0, 2
	%aux6732 = load i32, i32* @Pivot42
	%aux6733 = sub i32 %aux6731, %aux6732
	%aux6734 = load i32, i32* @IdPos42
	%aux6735 = icmp eq i32 %aux6733, %aux6734
	br i1 %aux6735, label %etiq3212, label %etiq3213
	
	etiq3212:
	;___Asignacion___
	%aux6737 = load i32, i32* @_Acum83
	%aux6738 = add i32 0, 2
	%aux6739 = add i32 %aux6737, %aux6738
	store i32 %aux6739, i32* @_Acum83
	br label %etiq3216
	
	etiq3216:
	;___Asignacion___
	%aux6741 = load i32, i32* @IdPos42
	%aux6742 = add i32 0, 1
	%aux6743 = add i32 %aux6741, %aux6742
	store i32 %aux6743, i32* @IdPos42
	br label %etiq3218
	
	etiq3218:
	;___Asignacion___
	%aux6745 = load i32, i32* @Pivot42
	%aux6746 = add i32 0, 1
	%aux6747 = sub i32 %aux6745, %aux6746
	store i32 %aux6747, i32* @Pivot42
	br label %etiq3221
	
	etiq3213:
	;___Asignacion___
	%aux6749 = load i32, i32* @IdPos42
	%aux6750 = add i32 0, 1
	%aux6751 = add i32 %aux6749, %aux6750
	store i32 %aux6751, i32* @IdPos42
	br label %etiq3221
	
	etiq3200:
	;___DisplayCadenaCaracteres___
	%aux6752 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq3221
	
	etiq3196:
	;___DisplayCadenaCaracteres___
	%aux6753 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq3221
	
	etiq3193:
	;___DisplayCadenaCaracteres___
	%aux6754 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq3221
	
	etiq3221:
	;___Asignacion___
	%aux6756 = load i32, i32* @_Acum83
	store i32 %aux6756, i32* @_Acum84
	br label %etiq3222
	
	etiq3222:
	;___Asignacion___
	%aux6758 = add i32 0, 2
	store i32 %aux6758, i32* @Pivot42
	br label %etiq3223
	
	etiq3223:
	;___Asignacion___
	%aux6760 = add i32 0, 0
	store i32 %aux6760, i32* @IdPos42
	br label %etiq3224
	
	etiq3224:
	;___Asignacion___
	%aux6762 = add i32 0, 0
	store i32 %aux6762, i32* @_Acum81
	br label %etiq3225
	
	etiq3225:
	;___Asignacion___
	%aux6764 = add i32 0, 0
	store i32 %aux6764, i32* @_Acum82
	br label %etiq3226
	
	etiq3226:
	;___Asignacion___
	%aux6766 = add i32 0, 1
	store i32 %aux6766, i32* @Pivot41
	br label %etiq3227
	
	etiq3227:
	;___IfElse___
	%aux6768 = load i32, i32* @Pivot41
	%aux6769 = add i32 0, 1
	%aux6770 = icmp sge i32 %aux6768, %aux6769
	br i1 %aux6770, label %etiq3229, label %etiq3230
	
	etiq3229:
	;___IfElse___
	%aux6772 = add i32 0, 1
	%aux6773 = load i32, i32* @Pivot41
	%aux6774 = icmp sge i32 %aux6772, %aux6773
	br i1 %aux6774, label %etiq3232, label %etiq3233
	
	etiq3232:
	;___IfElse___
	%aux6776 = add i32 0, 1
	%aux6777 = add i32 0, 0
	%aux6778 = icmp sgt i32 %aux6776, %aux6777
	br i1 %aux6778, label %etiq3236, label %etiq3237
	
	etiq3236:
	;___IfElse___
	%aux6780 = add i32 0, 1
	%aux6781 = load i32, i32* @Pivot41
	%aux6782 = sub i32 %aux6780, %aux6781
	%aux6783 = load i32, i32* @IdPos41
	%aux6784 = icmp eq i32 %aux6782, %aux6783
	br i1 %aux6784, label %etiq3239, label %etiq3240
	
	etiq3239:
	;___Asignacion___
	%aux6786 = load i32, i32* @_Acum81
	%aux6787 = add i32 0, 1
	%aux6788 = add i32 %aux6786, %aux6787
	store i32 %aux6788, i32* @_Acum81
	br label %etiq3243
	
	etiq3243:
	;___Asignacion___
	%aux6790 = load i32, i32* @IdPos41
	%aux6791 = add i32 0, 1
	%aux6792 = add i32 %aux6790, %aux6791
	store i32 %aux6792, i32* @IdPos41
	br label %etiq3245
	
	etiq3245:
	;___Asignacion___
	%aux6794 = load i32, i32* @Pivot41
	%aux6795 = add i32 0, 1
	%aux6796 = sub i32 %aux6794, %aux6795
	store i32 %aux6796, i32* @Pivot41
	br label %etiq3248
	
	etiq3240:
	;___Asignacion___
	%aux6798 = load i32, i32* @IdPos41
	%aux6799 = add i32 0, 1
	%aux6800 = add i32 %aux6798, %aux6799
	store i32 %aux6800, i32* @IdPos41
	br label %etiq3248
	
	etiq3237:
	;___DisplayCadenaCaracteres___
	%aux6801 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq3248
	
	etiq3233:
	;___DisplayCadenaCaracteres___
	%aux6802 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq3248
	
	etiq3230:
	;___DisplayCadenaCaracteres___
	%aux6803 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq3248
	
	etiq3248:
	;___Asignacion___
	%aux6805 = load i32, i32* @_Acum81
	store i32 %aux6805, i32* @_Acum82
	br label %etiq3249
	
	etiq3249:
	;___Asignacion___
	%aux6807 = add i32 0, 1
	store i32 %aux6807, i32* @Pivot41
	br label %etiq3250
	
	etiq3250:
	;___Asignacion___
	%aux6809 = add i32 0, 0
	store i32 %aux6809, i32* @IdPos41
	br label %etiq3251
	
	etiq3251:
	;___Asignacion___
	%aux6811 = add i32 0, 0
	store i32 %aux6811, i32* @_Acum85
	br label %etiq3252
	
	etiq3252:
	;___Asignacion___
	%aux6813 = add i32 0, 0
	store i32 %aux6813, i32* @_Acum86
	br label %etiq3253
	
	etiq3253:
	;___Asignacion___
	%aux6815 = add i32 0, 2
	store i32 %aux6815, i32* @Pivot43
	br label %etiq3254
	
	etiq3254:
	;___IfElse___
	%aux6817 = load i32, i32* @Pivot43
	%aux6818 = add i32 0, 1
	%aux6819 = icmp sge i32 %aux6817, %aux6818
	br i1 %aux6819, label %etiq3256, label %etiq3257
	
	etiq3256:
	;___IfElse___
	%aux6821 = add i32 0, 2
	%aux6822 = load i32, i32* @Pivot43
	%aux6823 = icmp sge i32 %aux6821, %aux6822
	br i1 %aux6823, label %etiq3259, label %etiq3260
	
	etiq3259:
	;___IfElse___
	%aux6825 = add i32 0, 2
	%aux6826 = add i32 0, 0
	%aux6827 = icmp sgt i32 %aux6825, %aux6826
	br i1 %aux6827, label %etiq3263, label %etiq3264
	
	etiq3263:
	;___IfElse___
	%aux6829 = add i32 0, 2
	%aux6830 = load i32, i32* @Pivot43
	%aux6831 = sub i32 %aux6829, %aux6830
	%aux6832 = load i32, i32* @IdPos43
	%aux6833 = icmp eq i32 %aux6831, %aux6832
	br i1 %aux6833, label %etiq3266, label %etiq3267
	
	etiq3266:
	;___Asignacion___
	%aux6835 = load i32, i32* @_Acum85
	%aux6836 = load i32, i32* @_Acum82
	%aux6837 = add i32 %aux6835, %aux6836
	store i32 %aux6837, i32* @_Acum85
	br label %etiq3269
	
	etiq3269:
	;___Asignacion___
	%aux6839 = load i32, i32* @IdPos43
	%aux6840 = add i32 0, 1
	%aux6841 = add i32 %aux6839, %aux6840
	store i32 %aux6841, i32* @IdPos43
	br label %etiq3271
	
	etiq3271:
	;___Asignacion___
	%aux6843 = load i32, i32* @Pivot43
	%aux6844 = add i32 0, 1
	%aux6845 = sub i32 %aux6843, %aux6844
	store i32 %aux6845, i32* @Pivot43
	br label %etiq3274
	
	etiq3267:
	;___Asignacion___
	%aux6847 = load i32, i32* @IdPos43
	%aux6848 = add i32 0, 1
	%aux6849 = add i32 %aux6847, %aux6848
	store i32 %aux6849, i32* @IdPos43
	br label %etiq3274
	
	etiq3274:
	;___IfElse___
	%aux6851 = add i32 0, 2
	%aux6852 = load i32, i32* @Pivot43
	%aux6853 = sub i32 %aux6851, %aux6852
	%aux6854 = load i32, i32* @IdPos43
	%aux6855 = icmp eq i32 %aux6853, %aux6854
	br i1 %aux6855, label %etiq3275, label %etiq3276
	
	etiq3275:
	;___Asignacion___
	%aux6857 = load i32, i32* @_Acum85
	%aux6858 = load i32, i32* @_Acum84
	%aux6859 = add i32 %aux6857, %aux6858
	store i32 %aux6859, i32* @_Acum85
	br label %etiq3278
	
	etiq3278:
	;___Asignacion___
	%aux6861 = load i32, i32* @IdPos43
	%aux6862 = add i32 0, 1
	%aux6863 = add i32 %aux6861, %aux6862
	store i32 %aux6863, i32* @IdPos43
	br label %etiq3280
	
	etiq3280:
	;___Asignacion___
	%aux6865 = load i32, i32* @Pivot43
	%aux6866 = add i32 0, 1
	%aux6867 = sub i32 %aux6865, %aux6866
	store i32 %aux6867, i32* @Pivot43
	br label %etiq3283
	
	etiq3276:
	;___Asignacion___
	%aux6869 = load i32, i32* @IdPos43
	%aux6870 = add i32 0, 1
	%aux6871 = add i32 %aux6869, %aux6870
	store i32 %aux6871, i32* @IdPos43
	br label %etiq3283
	
	etiq3264:
	;___DisplayCadenaCaracteres___
	%aux6872 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq3283
	
	etiq3260:
	;___DisplayCadenaCaracteres___
	%aux6873 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq3283
	
	etiq3257:
	;___DisplayCadenaCaracteres___
	%aux6874 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq3283
	
	etiq3283:
	;___Asignacion___
	%aux6876 = load i32, i32* @_Acum85
	store i32 %aux6876, i32* @_Acum86
	br label %etiq3284
	
	etiq3284:
	;___Asignacion___
	%aux6878 = add i32 0, 2
	store i32 %aux6878, i32* @Pivot43
	br label %etiq3285
	
	etiq3285:
	;___Asignacion___
	%aux6880 = add i32 0, 0
	store i32 %aux6880, i32* @IdPos43
	br label %etiq3286
	
	etiq3286:
	;___Asignacion___
	%aux6882 = add i32 0, 0
	store i32 %aux6882, i32* @_Acum91
	br label %etiq3287
	
	etiq3287:
	;___Asignacion___
	%aux6884 = add i32 0, 0
	store i32 %aux6884, i32* @_Acum92
	br label %etiq3288
	
	etiq3288:
	;___Asignacion___
	%aux6886 = add i32 0, 3
	store i32 %aux6886, i32* @Pivot46
	br label %etiq3289
	
	etiq3289:
	;___IfElse___
	%aux6888 = load i32, i32* @Pivot46
	%aux6889 = add i32 0, 1
	%aux6890 = icmp sge i32 %aux6888, %aux6889
	br i1 %aux6890, label %etiq3291, label %etiq3292
	
	etiq3291:
	;___IfElse___
	%aux6892 = add i32 0, 3
	%aux6893 = load i32, i32* @Pivot46
	%aux6894 = icmp sge i32 %aux6892, %aux6893
	br i1 %aux6894, label %etiq3294, label %etiq3295
	
	etiq3294:
	;___IfElse___
	%aux6896 = add i32 0, 3
	%aux6897 = add i32 0, 0
	%aux6898 = icmp sgt i32 %aux6896, %aux6897
	br i1 %aux6898, label %etiq3298, label %etiq3299
	
	etiq3298:
	;___IfElse___
	%aux6900 = add i32 0, 3
	%aux6901 = load i32, i32* @Pivot46
	%aux6902 = sub i32 %aux6900, %aux6901
	%aux6903 = load i32, i32* @IdPos46
	%aux6904 = icmp eq i32 %aux6902, %aux6903
	br i1 %aux6904, label %etiq3301, label %etiq3302
	
	etiq3301:
	;___Asignacion___
	%aux6906 = load i32, i32* @_Acum91
	%aux6907 = load i32, i32* @_Acum86
	%aux6908 = add i32 %aux6906, %aux6907
	store i32 %aux6908, i32* @_Acum91
	br label %etiq3304
	
	etiq3304:
	;___Asignacion___
	%aux6910 = load i32, i32* @IdPos46
	%aux6911 = add i32 0, 1
	%aux6912 = add i32 %aux6910, %aux6911
	store i32 %aux6912, i32* @IdPos46
	br label %etiq3306
	
	etiq3306:
	;___Asignacion___
	%aux6914 = load i32, i32* @Pivot46
	%aux6915 = add i32 0, 1
	%aux6916 = sub i32 %aux6914, %aux6915
	store i32 %aux6916, i32* @Pivot46
	br label %etiq3309
	
	etiq3302:
	;___Asignacion___
	%aux6918 = load i32, i32* @IdPos46
	%aux6919 = add i32 0, 1
	%aux6920 = add i32 %aux6918, %aux6919
	store i32 %aux6920, i32* @IdPos46
	br label %etiq3309
	
	etiq3309:
	;___IfElse___
	%aux6922 = add i32 0, 3
	%aux6923 = load i32, i32* @Pivot46
	%aux6924 = sub i32 %aux6922, %aux6923
	%aux6925 = load i32, i32* @IdPos46
	%aux6926 = icmp eq i32 %aux6924, %aux6925
	br i1 %aux6926, label %etiq3310, label %etiq3311
	
	etiq3310:
	;___Asignacion___
	%aux6928 = load i32, i32* @_Acum91
	%aux6929 = load i32, i32* @_Acum88
	%aux6930 = add i32 %aux6928, %aux6929
	store i32 %aux6930, i32* @_Acum91
	br label %etiq3313
	
	etiq3313:
	;___Asignacion___
	%aux6932 = load i32, i32* @IdPos46
	%aux6933 = add i32 0, 1
	%aux6934 = add i32 %aux6932, %aux6933
	store i32 %aux6934, i32* @IdPos46
	br label %etiq3315
	
	etiq3315:
	;___Asignacion___
	%aux6936 = load i32, i32* @Pivot46
	%aux6937 = add i32 0, 1
	%aux6938 = sub i32 %aux6936, %aux6937
	store i32 %aux6938, i32* @Pivot46
	br label %etiq3318
	
	etiq3311:
	;___Asignacion___
	%aux6940 = load i32, i32* @IdPos46
	%aux6941 = add i32 0, 1
	%aux6942 = add i32 %aux6940, %aux6941
	store i32 %aux6942, i32* @IdPos46
	br label %etiq3318
	
	etiq3318:
	;___IfElse___
	%aux6944 = add i32 0, 3
	%aux6945 = load i32, i32* @Pivot46
	%aux6946 = sub i32 %aux6944, %aux6945
	%aux6947 = load i32, i32* @IdPos46
	%aux6948 = icmp eq i32 %aux6946, %aux6947
	br i1 %aux6948, label %etiq3319, label %etiq3320
	
	etiq3319:
	;___Asignacion___
	%aux6950 = load i32, i32* @_Acum91
	%aux6951 = load i32, i32* @_Acum90
	%aux6952 = add i32 %aux6950, %aux6951
	store i32 %aux6952, i32* @_Acum91
	br label %etiq3322
	
	etiq3322:
	;___Asignacion___
	%aux6954 = load i32, i32* @IdPos46
	%aux6955 = add i32 0, 1
	%aux6956 = add i32 %aux6954, %aux6955
	store i32 %aux6956, i32* @IdPos46
	br label %etiq3324
	
	etiq3324:
	;___Asignacion___
	%aux6958 = load i32, i32* @Pivot46
	%aux6959 = add i32 0, 1
	%aux6960 = sub i32 %aux6958, %aux6959
	store i32 %aux6960, i32* @Pivot46
	br label %etiq3327
	
	etiq3320:
	;___Asignacion___
	%aux6962 = load i32, i32* @IdPos46
	%aux6963 = add i32 0, 1
	%aux6964 = add i32 %aux6962, %aux6963
	store i32 %aux6964, i32* @IdPos46
	br label %etiq3327
	
	etiq3299:
	;___DisplayCadenaCaracteres___
	%aux6965 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq3327
	
	etiq3295:
	;___DisplayCadenaCaracteres___
	%aux6966 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq3327
	
	etiq3292:
	;___DisplayCadenaCaracteres___
	%aux6967 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq3327
	
	etiq3327:
	;___Asignacion___
	%aux6969 = load i32, i32* @_Acum91
	store i32 %aux6969, i32* @_Acum92
	br label %etiq3328
	
	etiq3328:
	;___Asignacion___
	%aux6971 = add i32 0, 3
	store i32 %aux6971, i32* @Pivot46
	br label %etiq3329
	
	etiq3329:
	;___Asignacion___
	%aux6973 = add i32 0, 0
	store i32 %aux6973, i32* @IdPos46
	br label %etiq3330
	
	etiq3330:
	%aux6974 = load i32, i32* @_Acum92
	%aux6975 = add i32 0, 15
	%aux6976 = sub i32 %aux6974, %aux6975
	%aux6977 = add i32 %aux6481, %aux6976
	store i32 %aux6977, i32* @_Acum99
	br label %etiq3332
	
	etiq3332:
	;___Asignacion___
	%aux6979 = load i32, i32* @IdPos50
	%aux6980 = add i32 0, 1
	%aux6981 = add i32 %aux6979, %aux6980
	store i32 %aux6981, i32* @IdPos50
	br label %etiq3334
	
	etiq3334:
	;___Asignacion___
	%aux6983 = load i32, i32* @Pivot50
	%aux6984 = add i32 0, 1
	%aux6985 = sub i32 %aux6983, %aux6984
	store i32 %aux6985, i32* @Pivot50
	br label %etiq3337
	
	etiq3081:
	;___Asignacion___
	%aux6987 = load i32, i32* @IdPos50
	%aux6988 = add i32 0, 1
	%aux6989 = add i32 %aux6987, %aux6988
	store i32 %aux6989, i32* @IdPos50
	br label %etiq3337
	
	etiq3337:
	;___IfElse___
	%aux6991 = add i32 0, 103
	%aux6992 = load i32, i32* @Pivot50
	%aux6993 = sub i32 %aux6991, %aux6992
	%aux6994 = load i32, i32* @IdPos50
	%aux6995 = icmp eq i32 %aux6993, %aux6994
	br i1 %aux6995, label %etiq3338, label %etiq3339
	
	etiq3338:
	;___Asignacion___
	%aux6997 = load i32, i32* @_Acum99
	%aux6998 = add i32 0, 1
	%aux6999 = add i32 0, 2
	%aux7000 = sub i32 %aux6998, %aux6999
	%aux7001 = add i32 0, 3
	%aux7002 = add i32 %aux7000, %aux7001
	%aux7003 = add i32 0, 1
	%aux7004 = sub i32 %aux7002, %aux7003
	%aux7005 = add i32 %aux6997, %aux7004
	store i32 %aux7005, i32* @_Acum99
	br label %etiq3345
	
	etiq3345:
	;___Asignacion___
	%aux7007 = load i32, i32* @IdPos50
	%aux7008 = add i32 0, 1
	%aux7009 = add i32 %aux7007, %aux7008
	store i32 %aux7009, i32* @IdPos50
	br label %etiq3347
	
	etiq3347:
	;___Asignacion___
	%aux7011 = load i32, i32* @Pivot50
	%aux7012 = add i32 0, 1
	%aux7013 = sub i32 %aux7011, %aux7012
	store i32 %aux7013, i32* @Pivot50
	br label %etiq3350
	
	etiq3339:
	;___Asignacion___
	%aux7015 = load i32, i32* @IdPos50
	%aux7016 = add i32 0, 1
	%aux7017 = add i32 %aux7015, %aux7016
	store i32 %aux7017, i32* @IdPos50
	br label %etiq3350
	
	etiq3350:
	;___IfElse___
	%aux7019 = add i32 0, 103
	%aux7020 = load i32, i32* @Pivot50
	%aux7021 = sub i32 %aux7019, %aux7020
	%aux7022 = load i32, i32* @IdPos50
	%aux7023 = icmp eq i32 %aux7021, %aux7022
	br i1 %aux7023, label %etiq3351, label %etiq3352
	
	etiq3351:
	;___Asignacion___
	%aux7025 = load i32, i32* @_Acum99
	%aux7026 = add i32 0, 1
	%aux7027 = sub i32 0, %aux7026
	br label %etiq3355
	
	etiq3355:
	;___Asignacion___
	%aux7029 = add i32 0, 0
	store i32 %aux7029, i32* @_Acum93
	br label %etiq3356
	
	etiq3356:
	;___Asignacion___
	%aux7031 = add i32 0, 0
	store i32 %aux7031, i32* @_Acum94
	br label %etiq3357
	
	etiq3357:
	;___Asignacion___
	%aux7033 = add i32 0, 2
	store i32 %aux7033, i32* @Pivot47
	br label %etiq3358
	
	etiq3358:
	;___IfElse___
	%aux7035 = load i32, i32* @Pivot47
	%aux7036 = add i32 0, 1
	%aux7037 = icmp sge i32 %aux7035, %aux7036
	br i1 %aux7037, label %etiq3360, label %etiq3361
	
	etiq3360:
	;___IfElse___
	%aux7039 = add i32 0, 2
	%aux7040 = load i32, i32* @Pivot47
	%aux7041 = icmp sge i32 %aux7039, %aux7040
	br i1 %aux7041, label %etiq3363, label %etiq3364
	
	etiq3363:
	;___IfElse___
	%aux7043 = add i32 0, 2
	%aux7044 = add i32 0, 0
	%aux7045 = icmp sgt i32 %aux7043, %aux7044
	br i1 %aux7045, label %etiq3367, label %etiq3368
	
	etiq3367:
	;___IfElse___
	%aux7047 = add i32 0, 2
	%aux7048 = load i32, i32* @Pivot47
	%aux7049 = sub i32 %aux7047, %aux7048
	%aux7050 = load i32, i32* @IdPos47
	%aux7051 = icmp eq i32 %aux7049, %aux7050
	br i1 %aux7051, label %etiq3370, label %etiq3371
	
	etiq3370:
	;___Asignacion___
	%aux7053 = load i32, i32* @_Acum93
	%aux7054 = load i32, i32* @edad
	%aux7055 = add i32 0, 0
	%aux7056 = mul i32 %aux7054, %aux7055
	%aux7057 = add i32 %aux7053, %aux7056
	store i32 %aux7057, i32* @_Acum93
	br label %etiq3375
	
	etiq3375:
	;___Asignacion___
	%aux7059 = load i32, i32* @IdPos47
	%aux7060 = add i32 0, 1
	%aux7061 = add i32 %aux7059, %aux7060
	store i32 %aux7061, i32* @IdPos47
	br label %etiq3377
	
	etiq3377:
	;___Asignacion___
	%aux7063 = load i32, i32* @Pivot47
	%aux7064 = add i32 0, 1
	%aux7065 = sub i32 %aux7063, %aux7064
	store i32 %aux7065, i32* @Pivot47
	br label %etiq3380
	
	etiq3371:
	;___Asignacion___
	%aux7067 = load i32, i32* @IdPos47
	%aux7068 = add i32 0, 1
	%aux7069 = add i32 %aux7067, %aux7068
	store i32 %aux7069, i32* @IdPos47
	br label %etiq3380
	
	etiq3380:
	;___IfElse___
	%aux7071 = add i32 0, 2
	%aux7072 = load i32, i32* @Pivot47
	%aux7073 = sub i32 %aux7071, %aux7072
	%aux7074 = load i32, i32* @IdPos47
	%aux7075 = icmp eq i32 %aux7073, %aux7074
	br i1 %aux7075, label %etiq3381, label %etiq3382
	
	etiq3381:
	;___Asignacion___
	%aux7077 = load i32, i32* @_Acum93
	%aux7078 = add i32 0, 2
	%aux7079 = add i32 %aux7077, %aux7078
	store i32 %aux7079, i32* @_Acum93
	br label %etiq3385
	
	etiq3385:
	;___Asignacion___
	%aux7081 = load i32, i32* @IdPos47
	%aux7082 = add i32 0, 1
	%aux7083 = add i32 %aux7081, %aux7082
	store i32 %aux7083, i32* @IdPos47
	br label %etiq3387
	
	etiq3387:
	;___Asignacion___
	%aux7085 = load i32, i32* @Pivot47
	%aux7086 = add i32 0, 1
	%aux7087 = sub i32 %aux7085, %aux7086
	store i32 %aux7087, i32* @Pivot47
	br label %etiq3390
	
	etiq3382:
	;___Asignacion___
	%aux7089 = load i32, i32* @IdPos47
	%aux7090 = add i32 0, 1
	%aux7091 = add i32 %aux7089, %aux7090
	store i32 %aux7091, i32* @IdPos47
	br label %etiq3390
	
	etiq3368:
	;___DisplayCadenaCaracteres___
	%aux7092 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq3390
	
	etiq3364:
	;___DisplayCadenaCaracteres___
	%aux7093 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq3390
	
	etiq3361:
	;___DisplayCadenaCaracteres___
	%aux7094 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq3390
	
	etiq3390:
	;___Asignacion___
	%aux7096 = load i32, i32* @_Acum93
	store i32 %aux7096, i32* @_Acum94
	br label %etiq3391
	
	etiq3391:
	;___Asignacion___
	%aux7098 = add i32 0, 2
	store i32 %aux7098, i32* @Pivot47
	br label %etiq3392
	
	etiq3392:
	;___Asignacion___
	%aux7100 = add i32 0, 0
	store i32 %aux7100, i32* @IdPos47
	br label %etiq3393
	
	etiq3393:
	%aux7101 = load i32, i32* @_Acum94
	%aux7102 = add i32 %aux7027, %aux7101
	%aux7103 = add i32 %aux7025, %aux7102
	store i32 %aux7103, i32* @_Acum99
	br label %etiq3394
	
	etiq3394:
	;___Asignacion___
	%aux7105 = load i32, i32* @IdPos50
	%aux7106 = add i32 0, 1
	%aux7107 = add i32 %aux7105, %aux7106
	store i32 %aux7107, i32* @IdPos50
	br label %etiq3396
	
	etiq3396:
	;___Asignacion___
	%aux7109 = load i32, i32* @Pivot50
	%aux7110 = add i32 0, 1
	%aux7111 = sub i32 %aux7109, %aux7110
	store i32 %aux7111, i32* @Pivot50
	br label %etiq3399
	
	etiq3352:
	;___Asignacion___
	%aux7113 = load i32, i32* @IdPos50
	%aux7114 = add i32 0, 1
	%aux7115 = add i32 %aux7113, %aux7114
	store i32 %aux7115, i32* @IdPos50
	br label %etiq3399
	
	etiq3399:
	;___IfElse___
	%aux7117 = add i32 0, 103
	%aux7118 = load i32, i32* @Pivot50
	%aux7119 = sub i32 %aux7117, %aux7118
	%aux7120 = load i32, i32* @IdPos50
	%aux7121 = icmp eq i32 %aux7119, %aux7120
	br i1 %aux7121, label %etiq3400, label %etiq3401
	
	etiq3400:
	;___Asignacion___
	%aux7123 = load i32, i32* @_Acum99
	%aux7124 = add i32 0, 1
	%aux7125 = add i32 0, 2
	%aux7126 = add i32 0, 2
	%aux7127 = add i32 0, 1
	%aux7128 = sdiv i32 %aux7126, %aux7127
	%aux7129 = mul i32 %aux7125, %aux7128
	%aux7130 = sub i32 %aux7124, %aux7129
	%aux7131 = add i32 0, 4
	%aux7132 = add i32 %aux7130, %aux7131
	%aux7133 = add i32 0, 1
	%aux7134 = mul i32 %aux7132, %aux7133
	%aux7135 = add i32 %aux7123, %aux7134
	store i32 %aux7135, i32* @_Acum99
	br label %etiq3409
	
	etiq3409:
	;___Asignacion___
	%aux7137 = load i32, i32* @IdPos50
	%aux7138 = add i32 0, 1
	%aux7139 = add i32 %aux7137, %aux7138
	store i32 %aux7139, i32* @IdPos50
	br label %etiq3411
	
	etiq3411:
	;___Asignacion___
	%aux7141 = load i32, i32* @Pivot50
	%aux7142 = add i32 0, 1
	%aux7143 = sub i32 %aux7141, %aux7142
	store i32 %aux7143, i32* @Pivot50
	br label %etiq3414
	
	etiq3401:
	;___Asignacion___
	%aux7145 = load i32, i32* @IdPos50
	%aux7146 = add i32 0, 1
	%aux7147 = add i32 %aux7145, %aux7146
	store i32 %aux7147, i32* @IdPos50
	br label %etiq3414
	
	etiq3414:
	;___IfElse___
	%aux7149 = add i32 0, 103
	%aux7150 = load i32, i32* @Pivot50
	%aux7151 = sub i32 %aux7149, %aux7150
	%aux7152 = load i32, i32* @IdPos50
	%aux7153 = icmp eq i32 %aux7151, %aux7152
	br i1 %aux7153, label %etiq3415, label %etiq3416
	
	etiq3415:
	;___Asignacion___
	%aux7155 = load i32, i32* @_Acum99
	%aux7156 = add i32 0, 10
	%aux7157 = add i32 0, 10
	%aux7158 = add i32 0, 10
	%aux7159 = mul i32 %aux7157, %aux7158
	%aux7160 = add i32 %aux7156, %aux7159
	%aux7161 = add i32 0, 10
	%aux7162 = sub i32 %aux7160, %aux7161
	%aux7163 = add i32 0, 100
	%aux7164 = sdiv i32 %aux7162, %aux7163
	%aux7165 = add i32 %aux7155, %aux7164
	store i32 %aux7165, i32* @_Acum99
	br label %etiq3423
	
	etiq3423:
	;___Asignacion___
	%aux7167 = load i32, i32* @IdPos50
	%aux7168 = add i32 0, 1
	%aux7169 = add i32 %aux7167, %aux7168
	store i32 %aux7169, i32* @IdPos50
	br label %etiq3425
	
	etiq3425:
	;___Asignacion___
	%aux7171 = load i32, i32* @Pivot50
	%aux7172 = add i32 0, 1
	%aux7173 = sub i32 %aux7171, %aux7172
	store i32 %aux7173, i32* @Pivot50
	br label %etiq3428
	
	etiq3416:
	;___Asignacion___
	%aux7175 = load i32, i32* @IdPos50
	%aux7176 = add i32 0, 1
	%aux7177 = add i32 %aux7175, %aux7176
	store i32 %aux7177, i32* @IdPos50
	br label %etiq3428
	
	etiq3428:
	;___IfElse___
	%aux7179 = add i32 0, 103
	%aux7180 = load i32, i32* @Pivot50
	%aux7181 = sub i32 %aux7179, %aux7180
	%aux7182 = load i32, i32* @IdPos50
	%aux7183 = icmp eq i32 %aux7181, %aux7182
	br i1 %aux7183, label %etiq3429, label %etiq3430
	
	etiq3429:
	;___Asignacion___
	%aux7185 = load i32, i32* @_Acum99
	br label %etiq3432
	
	etiq3432:
	;___Asignacion___
	%aux7187 = add i32 0, 0
	store i32 %aux7187, i32* @_Acum95
	br label %etiq3433
	
	etiq3433:
	;___Asignacion___
	%aux7189 = add i32 0, 0
	store i32 %aux7189, i32* @_Acum96
	br label %etiq3434
	
	etiq3434:
	;___Asignacion___
	%aux7191 = add i32 0, 2
	store i32 %aux7191, i32* @Pivot48
	br label %etiq3435
	
	etiq3435:
	;___IfElse___
	%aux7193 = load i32, i32* @Pivot48
	%aux7194 = add i32 0, 1
	%aux7195 = icmp sge i32 %aux7193, %aux7194
	br i1 %aux7195, label %etiq3437, label %etiq3438
	
	etiq3437:
	;___IfElse___
	%aux7197 = add i32 0, 3
	%aux7198 = load i32, i32* @Pivot48
	%aux7199 = icmp sge i32 %aux7197, %aux7198
	br i1 %aux7199, label %etiq3440, label %etiq3441
	
	etiq3440:
	;___IfElse___
	%aux7201 = add i32 0, 3
	%aux7202 = add i32 0, 0
	%aux7203 = icmp sgt i32 %aux7201, %aux7202
	br i1 %aux7203, label %etiq3444, label %etiq3445
	
	etiq3444:
	;___IfElse___
	%aux7205 = add i32 0, 3
	%aux7206 = load i32, i32* @Pivot48
	%aux7207 = sub i32 %aux7205, %aux7206
	%aux7208 = load i32, i32* @IdPos48
	%aux7209 = icmp eq i32 %aux7207, %aux7208
	br i1 %aux7209, label %etiq3447, label %etiq3448
	
	etiq3447:
	;___Asignacion___
	%aux7211 = load i32, i32* @_Acum95
	%aux7212 = add i32 0, 5
	%aux7213 = add i32 %aux7211, %aux7212
	store i32 %aux7213, i32* @_Acum95
	br label %etiq3451
	
	etiq3451:
	;___Asignacion___
	%aux7215 = load i32, i32* @IdPos48
	%aux7216 = add i32 0, 1
	%aux7217 = add i32 %aux7215, %aux7216
	store i32 %aux7217, i32* @IdPos48
	br label %etiq3453
	
	etiq3453:
	;___Asignacion___
	%aux7219 = load i32, i32* @Pivot48
	%aux7220 = add i32 0, 1
	%aux7221 = sub i32 %aux7219, %aux7220
	store i32 %aux7221, i32* @Pivot48
	br label %etiq3456
	
	etiq3448:
	;___Asignacion___
	%aux7223 = load i32, i32* @IdPos48
	%aux7224 = add i32 0, 1
	%aux7225 = add i32 %aux7223, %aux7224
	store i32 %aux7225, i32* @IdPos48
	br label %etiq3456
	
	etiq3456:
	;___IfElse___
	%aux7227 = add i32 0, 3
	%aux7228 = load i32, i32* @Pivot48
	%aux7229 = sub i32 %aux7227, %aux7228
	%aux7230 = load i32, i32* @IdPos48
	%aux7231 = icmp eq i32 %aux7229, %aux7230
	br i1 %aux7231, label %etiq3457, label %etiq3458
	
	etiq3457:
	;___Asignacion___
	%aux7233 = load i32, i32* @_Acum95
	%aux7234 = add i32 0, 1
	%aux7235 = sub i32 0, %aux7234
	%aux7236 = add i32 %aux7233, %aux7235
	store i32 %aux7236, i32* @_Acum95
	br label %etiq3461
	
	etiq3461:
	;___Asignacion___
	%aux7238 = load i32, i32* @IdPos48
	%aux7239 = add i32 0, 1
	%aux7240 = add i32 %aux7238, %aux7239
	store i32 %aux7240, i32* @IdPos48
	br label %etiq3463
	
	etiq3463:
	;___Asignacion___
	%aux7242 = load i32, i32* @Pivot48
	%aux7243 = add i32 0, 1
	%aux7244 = sub i32 %aux7242, %aux7243
	store i32 %aux7244, i32* @Pivot48
	br label %etiq3466
	
	etiq3458:
	;___Asignacion___
	%aux7246 = load i32, i32* @IdPos48
	%aux7247 = add i32 0, 1
	%aux7248 = add i32 %aux7246, %aux7247
	store i32 %aux7248, i32* @IdPos48
	br label %etiq3466
	
	etiq3466:
	;___IfElse___
	%aux7250 = add i32 0, 3
	%aux7251 = load i32, i32* @Pivot48
	%aux7252 = sub i32 %aux7250, %aux7251
	%aux7253 = load i32, i32* @IdPos48
	%aux7254 = icmp eq i32 %aux7252, %aux7253
	br i1 %aux7254, label %etiq3467, label %etiq3468
	
	etiq3467:
	;___Asignacion___
	%aux7256 = load i32, i32* @_Acum95
	%aux7257 = add i32 0, 2
	%aux7258 = add i32 %aux7256, %aux7257
	store i32 %aux7258, i32* @_Acum95
	br label %etiq3471
	
	etiq3471:
	;___Asignacion___
	%aux7260 = load i32, i32* @IdPos48
	%aux7261 = add i32 0, 1
	%aux7262 = add i32 %aux7260, %aux7261
	store i32 %aux7262, i32* @IdPos48
	br label %etiq3473
	
	etiq3473:
	;___Asignacion___
	%aux7264 = load i32, i32* @Pivot48
	%aux7265 = add i32 0, 1
	%aux7266 = sub i32 %aux7264, %aux7265
	store i32 %aux7266, i32* @Pivot48
	br label %etiq3476
	
	etiq3468:
	;___Asignacion___
	%aux7268 = load i32, i32* @IdPos48
	%aux7269 = add i32 0, 1
	%aux7270 = add i32 %aux7268, %aux7269
	store i32 %aux7270, i32* @IdPos48
	br label %etiq3476
	
	etiq3445:
	;___DisplayCadenaCaracteres___
	%aux7271 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq3476
	
	etiq3441:
	;___DisplayCadenaCaracteres___
	%aux7272 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq3476
	
	etiq3438:
	;___DisplayCadenaCaracteres___
	%aux7273 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq3476
	
	etiq3476:
	;___Asignacion___
	%aux7275 = load i32, i32* @_Acum95
	store i32 %aux7275, i32* @_Acum96
	br label %etiq3477
	
	etiq3477:
	;___Asignacion___
	%aux7277 = add i32 0, 2
	store i32 %aux7277, i32* @Pivot48
	br label %etiq3478
	
	etiq3478:
	;___Asignacion___
	%aux7279 = add i32 0, 0
	store i32 %aux7279, i32* @IdPos48
	br label %etiq3479
	
	etiq3479:
	%aux7280 = load i32, i32* @_Acum96
	%aux7281 = sub i32 0, %aux7280
	%aux7282 = add i32 0, 1
	%aux7283 = sub i32 0, %aux7282
	%aux7284 = mul i32 %aux7281, %aux7283
	%aux7285 = add i32 %aux7185, %aux7284
	store i32 %aux7285, i32* @_Acum99
	br label %etiq3481
	
	etiq3481:
	;___Asignacion___
	%aux7287 = load i32, i32* @IdPos50
	%aux7288 = add i32 0, 1
	%aux7289 = add i32 %aux7287, %aux7288
	store i32 %aux7289, i32* @IdPos50
	br label %etiq3483
	
	etiq3483:
	;___Asignacion___
	%aux7291 = load i32, i32* @Pivot50
	%aux7292 = add i32 0, 1
	%aux7293 = sub i32 %aux7291, %aux7292
	store i32 %aux7293, i32* @Pivot50
	br label %etiq3486
	
	etiq3430:
	;___Asignacion___
	%aux7295 = load i32, i32* @IdPos50
	%aux7296 = add i32 0, 1
	%aux7297 = add i32 %aux7295, %aux7296
	store i32 %aux7297, i32* @IdPos50
	br label %etiq3486
	
	etiq3486:
	;___IfElse___
	%aux7299 = add i32 0, 103
	%aux7300 = load i32, i32* @Pivot50
	%aux7301 = sub i32 %aux7299, %aux7300
	%aux7302 = load i32, i32* @IdPos50
	%aux7303 = icmp eq i32 %aux7301, %aux7302
	br i1 %aux7303, label %etiq3487, label %etiq3488
	
	etiq3487:
	;___Asignacion___
	%aux7305 = load i32, i32* @_Acum99
	%aux7306 = add i32 0, 1
	%aux7307 = add i32 0, 2
	%aux7308 = add i32 %aux7306, %aux7307
	%aux7309 = add i32 0, 3
	%aux7310 = add i32 %aux7308, %aux7309
	%aux7311 = add i32 0, 4
	%aux7312 = add i32 %aux7310, %aux7311
	%aux7313 = add i32 0, 10
	%aux7314 = sdiv i32 %aux7312, %aux7313
	%aux7315 = add i32 %aux7305, %aux7314
	store i32 %aux7315, i32* @_Acum99
	br label %etiq3495
	
	etiq3495:
	;___Asignacion___
	%aux7317 = load i32, i32* @IdPos50
	%aux7318 = add i32 0, 1
	%aux7319 = add i32 %aux7317, %aux7318
	store i32 %aux7319, i32* @IdPos50
	br label %etiq3497
	
	etiq3497:
	;___Asignacion___
	%aux7321 = load i32, i32* @Pivot50
	%aux7322 = add i32 0, 1
	%aux7323 = sub i32 %aux7321, %aux7322
	store i32 %aux7323, i32* @Pivot50
	br label %etiq3500
	
	etiq3488:
	;___Asignacion___
	%aux7325 = load i32, i32* @IdPos50
	%aux7326 = add i32 0, 1
	%aux7327 = add i32 %aux7325, %aux7326
	store i32 %aux7327, i32* @IdPos50
	br label %etiq3500
	
	etiq3500:
	;___IfElse___
	%aux7329 = add i32 0, 103
	%aux7330 = load i32, i32* @Pivot50
	%aux7331 = sub i32 %aux7329, %aux7330
	%aux7332 = load i32, i32* @IdPos50
	%aux7333 = icmp eq i32 %aux7331, %aux7332
	br i1 %aux7333, label %etiq3501, label %etiq3502
	
	etiq3501:
	;___Asignacion___
	%aux7335 = load i32, i32* @_Acum99
	%aux7336 = add i32 0, 50
	%aux7337 = add i32 0, 50
	%aux7338 = sdiv i32 %aux7336, %aux7337
	%aux7339 = add i32 %aux7335, %aux7338
	store i32 %aux7339, i32* @_Acum99
	br label %etiq3506
	
	etiq3506:
	;___Asignacion___
	%aux7341 = load i32, i32* @IdPos50
	%aux7342 = add i32 0, 1
	%aux7343 = add i32 %aux7341, %aux7342
	store i32 %aux7343, i32* @IdPos50
	br label %etiq3508
	
	etiq3508:
	;___Asignacion___
	%aux7345 = load i32, i32* @Pivot50
	%aux7346 = add i32 0, 1
	%aux7347 = sub i32 %aux7345, %aux7346
	store i32 %aux7347, i32* @Pivot50
	br label %etiq3511
	
	etiq3502:
	;___Asignacion___
	%aux7349 = load i32, i32* @IdPos50
	%aux7350 = add i32 0, 1
	%aux7351 = add i32 %aux7349, %aux7350
	store i32 %aux7351, i32* @IdPos50
	br label %etiq3511
	
	etiq3511:
	;___IfElse___
	%aux7353 = add i32 0, 103
	%aux7354 = load i32, i32* @Pivot50
	%aux7355 = sub i32 %aux7353, %aux7354
	%aux7356 = load i32, i32* @IdPos50
	%aux7357 = icmp eq i32 %aux7355, %aux7356
	br i1 %aux7357, label %etiq3512, label %etiq3513
	
	etiq3512:
	;___Asignacion___
	%aux7359 = load i32, i32* @_Acum99
	%aux7360 = add i32 0, 50000
	%aux7361 = add i32 0, 49999
	%aux7362 = sub i32 %aux7360, %aux7361
	%aux7363 = add i32 %aux7359, %aux7362
	store i32 %aux7363, i32* @_Acum99
	br label %etiq3517
	
	etiq3517:
	;___Asignacion___
	%aux7365 = load i32, i32* @IdPos50
	%aux7366 = add i32 0, 1
	%aux7367 = add i32 %aux7365, %aux7366
	store i32 %aux7367, i32* @IdPos50
	br label %etiq3519
	
	etiq3519:
	;___Asignacion___
	%aux7369 = load i32, i32* @Pivot50
	%aux7370 = add i32 0, 1
	%aux7371 = sub i32 %aux7369, %aux7370
	store i32 %aux7371, i32* @Pivot50
	br label %etiq3522
	
	etiq3513:
	;___Asignacion___
	%aux7373 = load i32, i32* @IdPos50
	%aux7374 = add i32 0, 1
	%aux7375 = add i32 %aux7373, %aux7374
	store i32 %aux7375, i32* @IdPos50
	br label %etiq3522
	
	etiq3522:
	;___IfElse___
	%aux7377 = add i32 0, 103
	%aux7378 = load i32, i32* @Pivot50
	%aux7379 = sub i32 %aux7377, %aux7378
	%aux7380 = load i32, i32* @IdPos50
	%aux7381 = icmp eq i32 %aux7379, %aux7380
	br i1 %aux7381, label %etiq3523, label %etiq3524
	
	etiq3523:
	;___Asignacion___
	%aux7383 = load i32, i32* @_Acum99
	%aux7384 = add i32 0, 2
	%aux7385 = add i32 0, 1
	%aux7386 = sub i32 %aux7384, %aux7385
	%aux7387 = add i32 %aux7383, %aux7386
	store i32 %aux7387, i32* @_Acum99
	br label %etiq3528
	
	etiq3528:
	;___Asignacion___
	%aux7389 = load i32, i32* @IdPos50
	%aux7390 = add i32 0, 1
	%aux7391 = add i32 %aux7389, %aux7390
	store i32 %aux7391, i32* @IdPos50
	br label %etiq3530
	
	etiq3530:
	;___Asignacion___
	%aux7393 = load i32, i32* @Pivot50
	%aux7394 = add i32 0, 1
	%aux7395 = sub i32 %aux7393, %aux7394
	store i32 %aux7395, i32* @Pivot50
	br label %etiq3533
	
	etiq3524:
	;___Asignacion___
	%aux7397 = load i32, i32* @IdPos50
	%aux7398 = add i32 0, 1
	%aux7399 = add i32 %aux7397, %aux7398
	store i32 %aux7399, i32* @IdPos50
	br label %etiq3533
	
	etiq3533:
	;___IfElse___
	%aux7401 = add i32 0, 103
	%aux7402 = load i32, i32* @Pivot50
	%aux7403 = sub i32 %aux7401, %aux7402
	%aux7404 = load i32, i32* @IdPos50
	%aux7405 = icmp eq i32 %aux7403, %aux7404
	br i1 %aux7405, label %etiq3534, label %etiq3535
	
	etiq3534:
	;___Asignacion___
	%aux7407 = load i32, i32* @_Acum99
	%aux7408 = add i32 0, 1
	%aux7409 = add i32 0, 1
	%aux7410 = mul i32 %aux7408, %aux7409
	%aux7411 = add i32 %aux7407, %aux7410
	store i32 %aux7411, i32* @_Acum99
	br label %etiq3539
	
	etiq3539:
	;___Asignacion___
	%aux7413 = load i32, i32* @IdPos50
	%aux7414 = add i32 0, 1
	%aux7415 = add i32 %aux7413, %aux7414
	store i32 %aux7415, i32* @IdPos50
	br label %etiq3541
	
	etiq3541:
	;___Asignacion___
	%aux7417 = load i32, i32* @Pivot50
	%aux7418 = add i32 0, 1
	%aux7419 = sub i32 %aux7417, %aux7418
	store i32 %aux7419, i32* @Pivot50
	br label %etiq3544
	
	etiq3535:
	;___Asignacion___
	%aux7421 = load i32, i32* @IdPos50
	%aux7422 = add i32 0, 1
	%aux7423 = add i32 %aux7421, %aux7422
	store i32 %aux7423, i32* @IdPos50
	br label %etiq3544
	
	etiq3544:
	;___IfElse___
	%aux7425 = add i32 0, 103
	%aux7426 = load i32, i32* @Pivot50
	%aux7427 = sub i32 %aux7425, %aux7426
	%aux7428 = load i32, i32* @IdPos50
	%aux7429 = icmp eq i32 %aux7427, %aux7428
	br i1 %aux7429, label %etiq3545, label %etiq3546
	
	etiq3545:
	;___Asignacion___
	%aux7431 = load i32, i32* @_Acum99
	%aux7432 = add i32 0, 1
	%aux7433 = add i32 0, 0
	%aux7434 = add i32 %aux7432, %aux7433
	%aux7435 = add i32 %aux7431, %aux7434
	store i32 %aux7435, i32* @_Acum99
	br label %etiq3550
	
	etiq3550:
	;___Asignacion___
	%aux7437 = load i32, i32* @IdPos50
	%aux7438 = add i32 0, 1
	%aux7439 = add i32 %aux7437, %aux7438
	store i32 %aux7439, i32* @IdPos50
	br label %etiq3552
	
	etiq3552:
	;___Asignacion___
	%aux7441 = load i32, i32* @Pivot50
	%aux7442 = add i32 0, 1
	%aux7443 = sub i32 %aux7441, %aux7442
	store i32 %aux7443, i32* @Pivot50
	br label %etiq3555
	
	etiq3546:
	;___Asignacion___
	%aux7445 = load i32, i32* @IdPos50
	%aux7446 = add i32 0, 1
	%aux7447 = add i32 %aux7445, %aux7446
	store i32 %aux7447, i32* @IdPos50
	br label %etiq3555
	
	etiq3555:
	;___IfElse___
	%aux7449 = add i32 0, 103
	%aux7450 = load i32, i32* @Pivot50
	%aux7451 = sub i32 %aux7449, %aux7450
	%aux7452 = load i32, i32* @IdPos50
	%aux7453 = icmp eq i32 %aux7451, %aux7452
	br i1 %aux7453, label %etiq3556, label %etiq3557
	
	etiq3556:
	;___Asignacion___
	%aux7455 = load i32, i32* @_Acum99
	%aux7456 = load i32, i32* @_Acum98
	%aux7457 = add i32 %aux7455, %aux7456
	store i32 %aux7457, i32* @_Acum99
	br label %etiq3559
	
	etiq3559:
	;___Asignacion___
	%aux7459 = load i32, i32* @IdPos50
	%aux7460 = add i32 0, 1
	%aux7461 = add i32 %aux7459, %aux7460
	store i32 %aux7461, i32* @IdPos50
	br label %etiq3561
	
	etiq3561:
	;___Asignacion___
	%aux7463 = load i32, i32* @Pivot50
	%aux7464 = add i32 0, 1
	%aux7465 = sub i32 %aux7463, %aux7464
	store i32 %aux7465, i32* @Pivot50
	br label %etiq3564
	
	etiq3557:
	;___Asignacion___
	%aux7467 = load i32, i32* @IdPos50
	%aux7468 = add i32 0, 1
	%aux7469 = add i32 %aux7467, %aux7468
	store i32 %aux7469, i32* @IdPos50
	br label %etiq3564
	
	etiq2178:
	;___DisplayCadenaCaracteres___
	%aux7470 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq3564
	
	etiq2174:
	;___DisplayCadenaCaracteres___
	%aux7471 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq3564
	
	etiq2171:
	;___DisplayCadenaCaracteres___
	%aux7472 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq3564
	
	etiq3564:
	;___Asignacion___
	%aux7474 = load i32, i32* @_Acum99
	store i32 %aux7474, i32* @res
	br label %etiq3565
	
	etiq3565:
	;___Asignacion___
	%aux7476 = load i32, i32* @pivot
	store i32 %aux7476, i32* @Pivot50
	br label %etiq3566
	
	etiq3566:
	;___Asignacion___
	%aux7478 = add i32 0, 0
	store i32 %aux7478, i32* @IdPos50
	br label %etiq3567
	
	etiq3567:
	;___DisplayCadenaCaracteres___
	%aux7479 = call i32 @puts(i8* getelementptr ([12 x i8], [12 x i8] * @str61, i32 0, i32 0))
	br label %etiq3568
	
	etiq3568:
	;___DisplayExpresion___
	%aux7481 = load i32, i32* @res
	%aux7480 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux7481)
	br label %etiq3569
	
	etiq3569:
	;___DisplayCadenaCaracteres___
	%aux7482 = call i32 @puts(i8* getelementptr ([28 x i8], [28 x i8] * @str62, i32 0, i32 0))
	br label %etiq3570
	
	etiq3570:
	;___DisplayCadenaCaracteres___
	%aux7483 = call i32 @puts(i8* getelementptr ([30 x i8], [30 x i8] * @str63, i32 0, i32 0))
	br label %etiq3571
	
	etiq3571:
	;___Asignacion___
	%aux7485 = alloca double
	%aux7486 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux7485)
	%aux7487 = load double, double* %aux7485
	store double %aux7487, double* @peso
	br label %etiq3572
	
	etiq3572:
	;___DisplayCadenaCaracteres___
	%aux7488 = call i32 @puts(i8* getelementptr ([32 x i8], [32 x i8] * @str64, i32 0, i32 0))
	br label %etiq3573
	
	etiq3573:
	;___Asignacion___
	%aux7490 = alloca double
	%aux7491 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux7490)
	%aux7492 = load double, double* %aux7490
	store double %aux7492, double* @altura
	br label %etiq3574
	
	etiq3574:
	;___Asignacion___
	%aux7494 = add i1 0, 1
	store i1 %aux7494, i1* @aux2
	br label %etiq3575
	
	etiq3575:
	;___While___
	%aux7496 = load i1, i1* @aux2
	br i1 %aux7496, label %etiq3576, label %etiq3609
	
	etiq3576:
	;___DisplayCadenaCaracteres___
	%aux7497 = call i32 @puts(i8* getelementptr ([90 x i8], [90 x i8] * @str65, i32 0, i32 0))
	br label %etiq3578
	
	etiq3578:
	;___Asignacion___
	%aux7499 = alloca i32
	%aux7500 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux7499)
	%aux7501 = load i32, i32* %aux7499
	store i32 %aux7501, i32* @res
	br label %etiq3579
	
	etiq3579:
	;___IfElse___
	%aux7503 = load i32, i32* @res
	%aux7504 = add i32 0, 1
	%aux7505 = icmp eq i32 %aux7503, %aux7504
	br i1 %aux7505, label %etiq3581, label %etiq3582
	
	etiq3581:
	;___DisplayCadenaCaracteres___
	%aux7506 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str66, i32 0, i32 0))
	br label %etiq3584
	
	etiq3584:
	;___DisplayExpresion___
	%aux7508 = load double, double* @peso
	%aux7509 = load double, double* @altura
	%aux7510 = fmul double %aux7508, %aux7509
	%aux7511 = load i32, i32* @edad
	%aux7512 = sitofp i32 %aux7511 to double
	%aux7513 = fmul double %aux7510, %aux7512
	%aux7507 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux7513)
	br label %etiq3586
	
	etiq3586:
	;___Asignacion___
	%aux7515 = load i1, i1* @aux2
	%aux7516 = xor i1 %aux7515, 1
	store i1 %aux7516, i1* @aux2
	br label %etiq3575
	
	etiq3582:
	;___IfElse___
	%aux7518 = load i32, i32* @res
	%aux7519 = add i32 0, 2
	%aux7520 = icmp eq i32 %aux7518, %aux7519
	br i1 %aux7520, label %etiq3588, label %etiq3589
	
	etiq3588:
	;___DisplayCadenaCaracteres___
	%aux7521 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str67, i32 0, i32 0))
	br label %etiq3591
	
	etiq3591:
	;___DisplayExpresion___
	%aux7523 = load double, double* @peso
	%aux7524 = load double, double* @altura
	%aux7525 = fdiv double %aux7523, %aux7524
	%aux7526 = load i32, i32* @edad
	%aux7527 = sitofp i32 %aux7526 to double
	%aux7528 = fdiv double %aux7525, %aux7527
	%aux7522 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux7528)
	br label %etiq3593
	
	etiq3593:
	;___Asignacion___
	%aux7530 = load i1, i1* @aux2
	%aux7531 = xor i1 %aux7530, 1
	store i1 %aux7531, i1* @aux2
	br label %etiq3575
	
	etiq3589:
	;___IfElse___
	%aux7533 = load i32, i32* @res
	%aux7534 = add i32 0, 3
	%aux7535 = icmp eq i32 %aux7533, %aux7534
	br i1 %aux7535, label %etiq3595, label %etiq3596
	
	etiq3595:
	;___DisplayCadenaCaracteres___
	%aux7536 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str68, i32 0, i32 0))
	br label %etiq3598
	
	etiq3598:
	;___DisplayExpresion___
	%aux7538 = load double, double* @peso
	%aux7539 = load double, double* @altura
	%aux7540 = fadd double %aux7538, %aux7539
	%aux7541 = load i32, i32* @edad
	%aux7542 = sitofp i32 %aux7541 to double
	%aux7543 = fadd double %aux7540, %aux7542
	%aux7537 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux7543)
	br label %etiq3600
	
	etiq3600:
	;___Asignacion___
	%aux7545 = load i1, i1* @aux2
	%aux7546 = xor i1 %aux7545, 1
	store i1 %aux7546, i1* @aux2
	br label %etiq3575
	
	etiq3596:
	;___IfElse___
	%aux7548 = load i32, i32* @res
	%aux7549 = add i32 0, 4
	%aux7550 = icmp eq i32 %aux7548, %aux7549
	br i1 %aux7550, label %etiq3602, label %etiq3603
	
	etiq3602:
	;___DisplayCadenaCaracteres___
	%aux7551 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str69, i32 0, i32 0))
	br label %etiq3605
	
	etiq3605:
	;___DisplayExpresion___
	%aux7553 = load double, double* @peso
	%aux7554 = load double, double* @altura
	%aux7555 = fsub double %aux7553, %aux7554
	%aux7556 = load i32, i32* @edad
	%aux7557 = sitofp i32 %aux7556 to double
	%aux7558 = fsub double %aux7555, %aux7557
	%aux7552 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux7558)
	br label %etiq3607
	
	etiq3607:
	;___Asignacion___
	%aux7560 = load i1, i1* @aux2
	%aux7561 = xor i1 %aux7560, 1
	store i1 %aux7561, i1* @aux2
	br label %etiq3575
	
	etiq3603:
	;___DisplayCadenaCaracteres___
	%aux7562 = call i32 @puts(i8* getelementptr ([60 x i8], [60 x i8] * @str70, i32 0, i32 0))
	br label %etiq3575
	
	etiq3609:
	;___DisplayCadenaCaracteres___
	%aux7563 = call i32 @puts(i8* getelementptr ([46 x i8], [46 x i8] * @str71, i32 0, i32 0))
	br label %etiq3610
	
	etiq3610:
	;___Asignacion___
	%aux7565 = alloca i32
	%aux7566 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux7565)
	%aux7567 = load i32, i32* %aux7565
	%aux7568 = trunc i32 %aux7567 to i1
	store i1 %aux7568, i1* @aux
	br label %etiq1809
	
	etiq3612:
	ret i32 0
}

