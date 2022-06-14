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
@IdPos70 = global i32 0
@IdPos71 = global i32 0
@IdPos72 = global i32 0
@IdPos73 = global i32 0
@IdPos74 = global i32 0
@IdPos75 = global i32 0
@IdPos76 = global i32 0
@IdPos77 = global i32 0
@IdPos78 = global i32 0
@IdPos79 = global i32 0
@Pivot70 = global i32 0
@Pivot71 = global i32 0
@Pivot72 = global i32 0
@Pivot73 = global i32 0
@Pivot74 = global i32 0
@Pivot75 = global i32 0
@Pivot76 = global i32 0
@Pivot77 = global i32 0
@Pivot78 = global i32 0
@Pivot79 = global i32 0
@_Acum139 = global i32 0
@_Acum140 = global i32 0
@_Acum141 = global i32 0
@_Acum142 = global i32 0
@_Acum143 = global i32 0
@_Acum144 = global i32 0
@_Acum145 = global i32 0
@_Acum146 = global i32 0
@_Acum147 = global i32 0
@_Acum148 = global i32 0
@_Acum149 = global i32 0
@_Acum150 = global i32 0
@_Acum151 = global i32 0
@_Acum152 = global i32 0
@_Acum153 = global i32 0
@_Acum154 = global i32 0
@_Acum155 = global i32 0
@_Acum156 = global i32 0
@_Acum157 = global i32 0
@_Acum158 = global i32 0
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
	
	etiq13231:
	;___Asignación___
	%aux28158 = add i1 0, 1
	store i1 %aux28158, i1* @aux
	br label %etiq13232
	
	etiq13232:
	;___While___
	%aux28160 = load i1, i1* @aux
	br i1 %aux28160, label %etiq13233, label %etiq14937
	
	etiq13233:
	;___DisplayCadenaCaracteres___
	%aux28161 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str10, i32 0, i32 0))
	br label %etiq13235
	
	etiq13235:
	;___Asignación___
	%aux28163 = alloca i32
	%aux28164 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux28163)
	%aux28165 = load i32, i32* %aux28163
	store i32 %aux28165, i32* @edad
	br label %etiq13236
	
	etiq13236:
	;___IfElse___
	%aux28167 = load i32, i32* @edad
	%aux28168 = add i32 0, 12
	%aux28169 = icmp sle i32 %aux28167, %aux28168
	br i1 %aux28169, label %etiq13238, label %etiq13239
	
	etiq13238:
	;___DisplayCadenaCaracteres___
	%aux28170 = call i32 @puts(i8* getelementptr ([20 x i8], [20 x i8] * @str11, i32 0, i32 0))
	br label %etiq13249
	
	etiq13239:
	;___IfElse___
	%aux28172 = load i32, i32* @edad
	%aux28173 = add i32 0, 25
	%aux28174 = icmp sle i32 %aux28172, %aux28173
	br i1 %aux28174, label %etiq13242, label %etiq13243
	
	etiq13242:
	;___DisplayCadenaCaracteres___
	%aux28175 = call i32 @puts(i8* getelementptr ([25 x i8], [25 x i8] * @str12, i32 0, i32 0))
	br label %etiq13249
	
	etiq13243:
	;___IfElse___
	%aux28177 = load i32, i32* @edad
	%aux28178 = add i32 0, 65
	%aux28179 = icmp sle i32 %aux28177, %aux28178
	br i1 %aux28179, label %etiq13246, label %etiq13247
	
	etiq13246:
	;___DisplayCadenaCaracteres___
	%aux28180 = call i32 @puts(i8* getelementptr ([21 x i8], [21 x i8] * @str13, i32 0, i32 0))
	br label %etiq13249
	
	etiq13247:
	;___DisplayCadenaCaracteres___
	%aux28181 = call i32 @puts(i8* getelementptr ([27 x i8], [27 x i8] * @str14, i32 0, i32 0))
	br label %etiq13249
	
	etiq13249:
	;___Asignación___
	%aux28183 = load i32, i32* @edad
	store i32 %aux28183, i32* @edad1
	br label %etiq13250
	
	etiq13250:
	;___Asignación___
	%aux28185 = add i1 0, 1
	store i1 %aux28185, i1* @aux2
	br label %etiq13251
	
	etiq13251:
	;___While___
	%aux28187 = load i32, i32* @edad1
	%aux28188 = add i32 0, 0
	%aux28189 = icmp ne i32 %aux28187, %aux28188
	br i1 %aux28189, label %etiq13253, label %etiq13258
	
	etiq13253:
	;___Asignación___
	%aux28191 = load i32, i32* @edad1
	%aux28192 = add i32 0, 1
	%aux28193 = sub i32 %aux28191, %aux28192
	store i32 %aux28193, i32* @edad1
	br label %etiq13256
	
	etiq13256:
	;___Asignación___
	%aux28195 = load i1, i1* @aux2
	%aux28196 = xor i1 %aux28195, 1
	store i1 %aux28196, i1* @aux2
	br label %etiq13251
	
	etiq13258:
	;___IfElse___
	%aux28198 = load i1, i1* @aux2
	br i1 %aux28198, label %etiq13259, label %etiq13260
	
	etiq13259:
	;___DisplayCadenaCaracteres___
	%aux28199 = call i32 @puts(i8* getelementptr ([17 x i8], [17 x i8] * @str15, i32 0, i32 0))
	br label %etiq13262
	
	etiq13260:
	;___DisplayCadenaCaracteres___
	%aux28200 = call i32 @puts(i8* getelementptr ([19 x i8], [19 x i8] * @str16, i32 0, i32 0))
	br label %etiq13262
	
	etiq13262:
	;___IfSimple___
	%aux28202 = load i32, i32* @edad
	%aux28203 = add i32 0, 100
	%aux28204 = icmp sge i32 %aux28202, %aux28203
	%aux28205 = xor i1 %aux28204, 1
	br i1 %aux28205, label %etiq13264, label %etiq14895
	
	etiq13264:
	;___Asignación___
	%aux28207 = add i32 0, 100
	%aux28208 = load i32, i32* @edad
	%aux28209 = sub i32 %aux28207, %aux28208
	store i32 %aux28209, i32* @pivot
	br label %etiq13266
	
	etiq13266:
	;___Asignación___
	%aux28211 = add i32 0, 1
	store i32 %aux28211, i32* @Pivot78
	br label %etiq13267
	
	etiq13267:
	;___IfElse___
	%aux28213 = load i32, i32* @Pivot78
	%aux28214 = add i32 0, 1
	%aux28215 = icmp sge i32 %aux28213, %aux28214
	br i1 %aux28215, label %etiq13269, label %etiq13270
	
	etiq13269:
	;___IfElse___
	%aux28217 = add i32 0, 2
	%aux28218 = load i32, i32* @Pivot78
	%aux28219 = icmp sge i32 %aux28217, %aux28218
	br i1 %aux28219, label %etiq13272, label %etiq13273
	
	etiq13272:
	;___IfElse___
	%aux28221 = add i32 0, 2
	%aux28222 = add i32 0, 0
	%aux28223 = icmp sgt i32 %aux28221, %aux28222
	br i1 %aux28223, label %etiq13276, label %etiq13277
	
	etiq13276:
	;___IfElse___
	%aux28225 = add i32 0, 2
	%aux28226 = load i32, i32* @Pivot78
	%aux28227 = sub i32 %aux28225, %aux28226
	%aux28228 = load i32, i32* @IdPos78
	%aux28229 = icmp eq i32 %aux28227, %aux28228
	br i1 %aux28229, label %etiq13279, label %etiq13280
	
	etiq13279:
	;___Asignación___
	%aux28231 = load i32, i32* @_Acum155
	%aux28232 = add i32 0, 2
	%aux28233 = add i32 %aux28231, %aux28232
	store i32 %aux28233, i32* @_Acum155
	br label %etiq13283
	
	etiq13283:
	;___Asignación___
	%aux28235 = load i32, i32* @IdPos78
	%aux28236 = add i32 0, 1
	%aux28237 = add i32 %aux28235, %aux28236
	store i32 %aux28237, i32* @IdPos78
	br label %etiq13285
	
	etiq13285:
	;___Asignación___
	%aux28239 = load i32, i32* @Pivot78
	%aux28240 = add i32 0, 1
	%aux28241 = sub i32 %aux28239, %aux28240
	store i32 %aux28241, i32* @Pivot78
	br label %etiq13288
	
	etiq13280:
	;___Asignación___
	%aux28243 = load i32, i32* @IdPos78
	%aux28244 = add i32 0, 1
	%aux28245 = add i32 %aux28243, %aux28244
	store i32 %aux28245, i32* @IdPos78
	br label %etiq13288
	
	etiq13288:
	;___IfElse___
	%aux28247 = add i32 0, 2
	%aux28248 = load i32, i32* @Pivot78
	%aux28249 = sub i32 %aux28247, %aux28248
	%aux28250 = load i32, i32* @IdPos78
	%aux28251 = icmp eq i32 %aux28249, %aux28250
	br i1 %aux28251, label %etiq13289, label %etiq13290
	
	etiq13289:
	;___Asignación___
	%aux28253 = load i32, i32* @_Acum155
	%aux28254 = add i32 0, 1
	%aux28255 = add i32 %aux28253, %aux28254
	store i32 %aux28255, i32* @_Acum155
	br label %etiq13293
	
	etiq13293:
	;___Asignación___
	%aux28257 = load i32, i32* @IdPos78
	%aux28258 = add i32 0, 1
	%aux28259 = add i32 %aux28257, %aux28258
	store i32 %aux28259, i32* @IdPos78
	br label %etiq13295
	
	etiq13295:
	;___Asignación___
	%aux28261 = load i32, i32* @Pivot78
	%aux28262 = add i32 0, 1
	%aux28263 = sub i32 %aux28261, %aux28262
	store i32 %aux28263, i32* @Pivot78
	br label %etiq13298
	
	etiq13290:
	;___Asignación___
	%aux28265 = load i32, i32* @IdPos78
	%aux28266 = add i32 0, 1
	%aux28267 = add i32 %aux28265, %aux28266
	store i32 %aux28267, i32* @IdPos78
	br label %etiq13298
	
	etiq13277:
	;___DisplayCadenaCaracteres___
	%aux28268 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq13298
	
	etiq13273:
	;___DisplayCadenaCaracteres___
	%aux28269 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq13298
	
	etiq13270:
	;___DisplayCadenaCaracteres___
	%aux28270 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq13298
	
	etiq13298:
	;___Asignación___
	%aux28272 = load i32, i32* @_Acum155
	store i32 %aux28272, i32* @_Acum156
	br label %etiq13299
	
	etiq13299:
	;___Asignación___
	%aux28274 = add i32 0, 2
	store i32 %aux28274, i32* @Pivot76
	br label %etiq13300
	
	etiq13300:
	;___IfElse___
	%aux28276 = load i32, i32* @Pivot76
	%aux28277 = add i32 0, 1
	%aux28278 = icmp sge i32 %aux28276, %aux28277
	br i1 %aux28278, label %etiq13302, label %etiq13303
	
	etiq13302:
	;___IfElse___
	%aux28280 = add i32 0, 2
	%aux28281 = load i32, i32* @Pivot76
	%aux28282 = icmp sge i32 %aux28280, %aux28281
	br i1 %aux28282, label %etiq13305, label %etiq13306
	
	etiq13305:
	;___IfElse___
	%aux28284 = add i32 0, 2
	%aux28285 = add i32 0, 0
	%aux28286 = icmp sgt i32 %aux28284, %aux28285
	br i1 %aux28286, label %etiq13309, label %etiq13310
	
	etiq13309:
	;___IfElse___
	%aux28288 = add i32 0, 2
	%aux28289 = load i32, i32* @Pivot76
	%aux28290 = sub i32 %aux28288, %aux28289
	%aux28291 = load i32, i32* @IdPos76
	%aux28292 = icmp eq i32 %aux28290, %aux28291
	br i1 %aux28292, label %etiq13312, label %etiq13313
	
	etiq13312:
	;___Asignación___
	%aux28294 = load i32, i32* @_Acum151
	%aux28295 = load i32, i32* @edad
	%aux28296 = add i32 0, 0
	%aux28297 = mul i32 %aux28295, %aux28296
	%aux28298 = add i32 %aux28294, %aux28297
	store i32 %aux28298, i32* @_Acum151
	br label %etiq13317
	
	etiq13317:
	;___Asignación___
	%aux28300 = load i32, i32* @IdPos76
	%aux28301 = add i32 0, 1
	%aux28302 = add i32 %aux28300, %aux28301
	store i32 %aux28302, i32* @IdPos76
	br label %etiq13319
	
	etiq13319:
	;___Asignación___
	%aux28304 = load i32, i32* @Pivot76
	%aux28305 = add i32 0, 1
	%aux28306 = sub i32 %aux28304, %aux28305
	store i32 %aux28306, i32* @Pivot76
	br label %etiq13322
	
	etiq13313:
	;___Asignación___
	%aux28308 = load i32, i32* @IdPos76
	%aux28309 = add i32 0, 1
	%aux28310 = add i32 %aux28308, %aux28309
	store i32 %aux28310, i32* @IdPos76
	br label %etiq13322
	
	etiq13322:
	;___IfElse___
	%aux28312 = add i32 0, 2
	%aux28313 = load i32, i32* @Pivot76
	%aux28314 = sub i32 %aux28312, %aux28313
	%aux28315 = load i32, i32* @IdPos76
	%aux28316 = icmp eq i32 %aux28314, %aux28315
	br i1 %aux28316, label %etiq13323, label %etiq13324
	
	etiq13323:
	;___Asignación___
	%aux28318 = load i32, i32* @_Acum151
	%aux28319 = add i32 0, 2
	%aux28320 = add i32 %aux28318, %aux28319
	store i32 %aux28320, i32* @_Acum151
	br label %etiq13327
	
	etiq13327:
	;___Asignación___
	%aux28322 = load i32, i32* @IdPos76
	%aux28323 = add i32 0, 1
	%aux28324 = add i32 %aux28322, %aux28323
	store i32 %aux28324, i32* @IdPos76
	br label %etiq13329
	
	etiq13329:
	;___Asignación___
	%aux28326 = load i32, i32* @Pivot76
	%aux28327 = add i32 0, 1
	%aux28328 = sub i32 %aux28326, %aux28327
	store i32 %aux28328, i32* @Pivot76
	br label %etiq13332
	
	etiq13324:
	;___Asignación___
	%aux28330 = load i32, i32* @IdPos76
	%aux28331 = add i32 0, 1
	%aux28332 = add i32 %aux28330, %aux28331
	store i32 %aux28332, i32* @IdPos76
	br label %etiq13332
	
	etiq13310:
	;___DisplayCadenaCaracteres___
	%aux28333 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq13332
	
	etiq13306:
	;___DisplayCadenaCaracteres___
	%aux28334 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq13332
	
	etiq13303:
	;___DisplayCadenaCaracteres___
	%aux28335 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq13332
	
	etiq13332:
	;___Asignación___
	%aux28337 = load i32, i32* @_Acum151
	store i32 %aux28337, i32* @_Acum152
	br label %etiq13333
	
	etiq13333:
	;___Asignación___
	%aux28339 = add i32 0, 4
	store i32 %aux28339, i32* @Pivot74
	br label %etiq13334
	
	etiq13334:
	;___IfElse___
	%aux28341 = load i32, i32* @Pivot74
	%aux28342 = add i32 0, 1
	%aux28343 = icmp sge i32 %aux28341, %aux28342
	br i1 %aux28343, label %etiq13336, label %etiq13337
	
	etiq13336:
	;___IfElse___
	%aux28345 = add i32 0, 4
	%aux28346 = load i32, i32* @Pivot74
	%aux28347 = icmp sge i32 %aux28345, %aux28346
	br i1 %aux28347, label %etiq13339, label %etiq13340
	
	etiq13339:
	;___IfElse___
	%aux28349 = add i32 0, 4
	%aux28350 = add i32 0, 0
	%aux28351 = icmp sgt i32 %aux28349, %aux28350
	br i1 %aux28351, label %etiq13343, label %etiq13344
	
	etiq13343:
	;___IfElse___
	%aux28353 = add i32 0, 4
	%aux28354 = load i32, i32* @Pivot74
	%aux28355 = sub i32 %aux28353, %aux28354
	%aux28356 = load i32, i32* @IdPos74
	%aux28357 = icmp eq i32 %aux28355, %aux28356
	br i1 %aux28357, label %etiq13346, label %etiq13347
	
	etiq13346:
	;___Asignación___
	%aux28359 = load i32, i32* @_Acum147
	%aux28360 = add i32 0, 1
	%aux28361 = add i32 %aux28359, %aux28360
	store i32 %aux28361, i32* @_Acum147
	br label %etiq13350
	
	etiq13350:
	;___Asignación___
	%aux28363 = load i32, i32* @IdPos74
	%aux28364 = add i32 0, 1
	%aux28365 = add i32 %aux28363, %aux28364
	store i32 %aux28365, i32* @IdPos74
	br label %etiq13352
	
	etiq13352:
	;___Asignación___
	%aux28367 = load i32, i32* @Pivot74
	%aux28368 = add i32 0, 1
	%aux28369 = sub i32 %aux28367, %aux28368
	store i32 %aux28369, i32* @Pivot74
	br label %etiq13355
	
	etiq13347:
	;___Asignación___
	%aux28371 = load i32, i32* @IdPos74
	%aux28372 = add i32 0, 1
	%aux28373 = add i32 %aux28371, %aux28372
	store i32 %aux28373, i32* @IdPos74
	br label %etiq13355
	
	etiq13355:
	;___IfElse___
	%aux28375 = add i32 0, 4
	%aux28376 = load i32, i32* @Pivot74
	%aux28377 = sub i32 %aux28375, %aux28376
	%aux28378 = load i32, i32* @IdPos74
	%aux28379 = icmp eq i32 %aux28377, %aux28378
	br i1 %aux28379, label %etiq13356, label %etiq13357
	
	etiq13356:
	;___Asignación___
	%aux28381 = load i32, i32* @_Acum147
	%aux28382 = add i32 0, 2
	%aux28383 = add i32 %aux28381, %aux28382
	store i32 %aux28383, i32* @_Acum147
	br label %etiq13360
	
	etiq13360:
	;___Asignación___
	%aux28385 = load i32, i32* @IdPos74
	%aux28386 = add i32 0, 1
	%aux28387 = add i32 %aux28385, %aux28386
	store i32 %aux28387, i32* @IdPos74
	br label %etiq13362
	
	etiq13362:
	;___Asignación___
	%aux28389 = load i32, i32* @Pivot74
	%aux28390 = add i32 0, 1
	%aux28391 = sub i32 %aux28389, %aux28390
	store i32 %aux28391, i32* @Pivot74
	br label %etiq13365
	
	etiq13357:
	;___Asignación___
	%aux28393 = load i32, i32* @IdPos74
	%aux28394 = add i32 0, 1
	%aux28395 = add i32 %aux28393, %aux28394
	store i32 %aux28395, i32* @IdPos74
	br label %etiq13365
	
	etiq13365:
	;___IfElse___
	%aux28397 = add i32 0, 4
	%aux28398 = load i32, i32* @Pivot74
	%aux28399 = sub i32 %aux28397, %aux28398
	%aux28400 = load i32, i32* @IdPos74
	%aux28401 = icmp eq i32 %aux28399, %aux28400
	br i1 %aux28401, label %etiq13366, label %etiq13367
	
	etiq13366:
	;___Asignación___
	%aux28403 = load i32, i32* @_Acum147
	%aux28404 = add i32 0, 3
	%aux28405 = add i32 %aux28403, %aux28404
	store i32 %aux28405, i32* @_Acum147
	br label %etiq13370
	
	etiq13370:
	;___Asignación___
	%aux28407 = load i32, i32* @IdPos74
	%aux28408 = add i32 0, 1
	%aux28409 = add i32 %aux28407, %aux28408
	store i32 %aux28409, i32* @IdPos74
	br label %etiq13372
	
	etiq13372:
	;___Asignación___
	%aux28411 = load i32, i32* @Pivot74
	%aux28412 = add i32 0, 1
	%aux28413 = sub i32 %aux28411, %aux28412
	store i32 %aux28413, i32* @Pivot74
	br label %etiq13385
	
	etiq13367:
	;___Asignación___
	%aux28415 = load i32, i32* @IdPos74
	%aux28416 = add i32 0, 1
	%aux28417 = add i32 %aux28415, %aux28416
	store i32 %aux28417, i32* @IdPos74
	br label %etiq13375
	
	etiq13375:
	;___IfElse___
	%aux28419 = add i32 0, 4
	%aux28420 = load i32, i32* @Pivot74
	%aux28421 = sub i32 %aux28419, %aux28420
	%aux28422 = load i32, i32* @IdPos74
	%aux28423 = icmp eq i32 %aux28421, %aux28422
	br i1 %aux28423, label %etiq13376, label %etiq13377
	
	etiq13376:
	;___Asignación___
	%aux28425 = load i32, i32* @_Acum147
	%aux28426 = add i32 0, 4
	%aux28427 = add i32 %aux28425, %aux28426
	store i32 %aux28427, i32* @_Acum147
	br label %etiq13380
	
	etiq13380:
	;___Asignación___
	%aux28429 = load i32, i32* @IdPos74
	%aux28430 = add i32 0, 1
	%aux28431 = add i32 %aux28429, %aux28430
	store i32 %aux28431, i32* @IdPos74
	br label %etiq13382
	
	etiq13382:
	;___Asignación___
	%aux28433 = load i32, i32* @Pivot74
	%aux28434 = add i32 0, 1
	%aux28435 = sub i32 %aux28433, %aux28434
	store i32 %aux28435, i32* @Pivot74
	br label %etiq13385
	
	etiq13377:
	;___Asignación___
	%aux28437 = load i32, i32* @IdPos74
	%aux28438 = add i32 0, 1
	%aux28439 = add i32 %aux28437, %aux28438
	store i32 %aux28439, i32* @IdPos74
	br label %etiq13385
	
	etiq13344:
	;___DisplayCadenaCaracteres___
	%aux28440 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq13385
	
	etiq13340:
	;___DisplayCadenaCaracteres___
	%aux28441 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq13385
	
	etiq13337:
	;___DisplayCadenaCaracteres___
	%aux28442 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq13385
	
	etiq13385:
	;___Asignación___
	%aux28444 = load i32, i32* @_Acum147
	store i32 %aux28444, i32* @_Acum148
	br label %etiq13386
	
	etiq13386:
	;___Asignación___
	%aux28446 = add i32 0, 3
	store i32 %aux28446, i32* @Pivot73
	br label %etiq13387
	
	etiq13387:
	;___IfElse___
	%aux28448 = load i32, i32* @Pivot73
	%aux28449 = add i32 0, 1
	%aux28450 = icmp sge i32 %aux28448, %aux28449
	br i1 %aux28450, label %etiq13389, label %etiq13390
	
	etiq13389:
	;___IfElse___
	%aux28452 = add i32 0, 3
	%aux28453 = load i32, i32* @Pivot73
	%aux28454 = icmp sge i32 %aux28452, %aux28453
	br i1 %aux28454, label %etiq13392, label %etiq13393
	
	etiq13392:
	;___IfElse___
	%aux28456 = add i32 0, 3
	%aux28457 = add i32 0, 0
	%aux28458 = icmp sgt i32 %aux28456, %aux28457
	br i1 %aux28458, label %etiq13396, label %etiq13397
	
	etiq13396:
	;___IfElse___
	%aux28460 = add i32 0, 3
	%aux28461 = load i32, i32* @Pivot73
	%aux28462 = sub i32 %aux28460, %aux28461
	%aux28463 = load i32, i32* @IdPos73
	%aux28464 = icmp eq i32 %aux28462, %aux28463
	br i1 %aux28464, label %etiq13399, label %etiq13400
	
	etiq13399:
	;___Asignación___
	%aux28466 = load i32, i32* @_Acum145
	%aux28467 = add i32 0, 1
	%aux28468 = add i32 %aux28466, %aux28467
	store i32 %aux28468, i32* @_Acum145
	br label %etiq13403
	
	etiq13403:
	;___Asignación___
	%aux28470 = load i32, i32* @IdPos73
	%aux28471 = add i32 0, 1
	%aux28472 = add i32 %aux28470, %aux28471
	store i32 %aux28472, i32* @IdPos73
	br label %etiq13405
	
	etiq13405:
	;___Asignación___
	%aux28474 = load i32, i32* @Pivot73
	%aux28475 = add i32 0, 1
	%aux28476 = sub i32 %aux28474, %aux28475
	store i32 %aux28476, i32* @Pivot73
	br label %etiq13408
	
	etiq13400:
	;___Asignación___
	%aux28478 = load i32, i32* @IdPos73
	%aux28479 = add i32 0, 1
	%aux28480 = add i32 %aux28478, %aux28479
	store i32 %aux28480, i32* @IdPos73
	br label %etiq13408
	
	etiq13408:
	;___IfElse___
	%aux28482 = add i32 0, 3
	%aux28483 = load i32, i32* @Pivot73
	%aux28484 = sub i32 %aux28482, %aux28483
	%aux28485 = load i32, i32* @IdPos73
	%aux28486 = icmp eq i32 %aux28484, %aux28485
	br i1 %aux28486, label %etiq13409, label %etiq13410
	
	etiq13409:
	;___Asignación___
	%aux28488 = load i32, i32* @_Acum145
	%aux28489 = add i32 0, 2
	%aux28490 = add i32 %aux28488, %aux28489
	store i32 %aux28490, i32* @_Acum145
	br label %etiq13413
	
	etiq13413:
	;___Asignación___
	%aux28492 = load i32, i32* @IdPos73
	%aux28493 = add i32 0, 1
	%aux28494 = add i32 %aux28492, %aux28493
	store i32 %aux28494, i32* @IdPos73
	br label %etiq13415
	
	etiq13415:
	;___Asignación___
	%aux28496 = load i32, i32* @Pivot73
	%aux28497 = add i32 0, 1
	%aux28498 = sub i32 %aux28496, %aux28497
	store i32 %aux28498, i32* @Pivot73
	br label %etiq13418
	
	etiq13410:
	;___Asignación___
	%aux28500 = load i32, i32* @IdPos73
	%aux28501 = add i32 0, 1
	%aux28502 = add i32 %aux28500, %aux28501
	store i32 %aux28502, i32* @IdPos73
	br label %etiq13418
	
	etiq13418:
	;___IfElse___
	%aux28504 = add i32 0, 3
	%aux28505 = load i32, i32* @Pivot73
	%aux28506 = sub i32 %aux28504, %aux28505
	%aux28507 = load i32, i32* @IdPos73
	%aux28508 = icmp eq i32 %aux28506, %aux28507
	br i1 %aux28508, label %etiq13419, label %etiq13420
	
	etiq13419:
	;___Asignación___
	%aux28510 = load i32, i32* @_Acum145
	%aux28511 = add i32 0, 3
	%aux28512 = add i32 %aux28510, %aux28511
	store i32 %aux28512, i32* @_Acum145
	br label %etiq13423
	
	etiq13423:
	;___Asignación___
	%aux28514 = load i32, i32* @IdPos73
	%aux28515 = add i32 0, 1
	%aux28516 = add i32 %aux28514, %aux28515
	store i32 %aux28516, i32* @IdPos73
	br label %etiq13425
	
	etiq13425:
	;___Asignación___
	%aux28518 = load i32, i32* @Pivot73
	%aux28519 = add i32 0, 1
	%aux28520 = sub i32 %aux28518, %aux28519
	store i32 %aux28520, i32* @Pivot73
	br label %etiq13428
	
	etiq13420:
	;___Asignación___
	%aux28522 = load i32, i32* @IdPos73
	%aux28523 = add i32 0, 1
	%aux28524 = add i32 %aux28522, %aux28523
	store i32 %aux28524, i32* @IdPos73
	br label %etiq13428
	
	etiq13397:
	;___DisplayCadenaCaracteres___
	%aux28525 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq13428
	
	etiq13393:
	;___DisplayCadenaCaracteres___
	%aux28526 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq13428
	
	etiq13390:
	;___DisplayCadenaCaracteres___
	%aux28527 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq13428
	
	etiq13428:
	;___Asignación___
	%aux28529 = load i32, i32* @_Acum145
	store i32 %aux28529, i32* @_Acum146
	br label %etiq13429
	
	etiq13429:
	;___Asignación___
	%aux28531 = add i32 0, 2
	store i32 %aux28531, i32* @Pivot71
	br label %etiq13430
	
	etiq13430:
	;___IfElse___
	%aux28533 = load i32, i32* @Pivot71
	%aux28534 = add i32 0, 1
	%aux28535 = icmp sge i32 %aux28533, %aux28534
	br i1 %aux28535, label %etiq13432, label %etiq13433
	
	etiq13432:
	;___IfElse___
	%aux28537 = add i32 0, 2
	%aux28538 = load i32, i32* @Pivot71
	%aux28539 = icmp sge i32 %aux28537, %aux28538
	br i1 %aux28539, label %etiq13435, label %etiq13436
	
	etiq13435:
	;___IfElse___
	%aux28541 = add i32 0, 2
	%aux28542 = add i32 0, 0
	%aux28543 = icmp sgt i32 %aux28541, %aux28542
	br i1 %aux28543, label %etiq13439, label %etiq13440
	
	etiq13439:
	;___IfElse___
	%aux28545 = add i32 0, 2
	%aux28546 = load i32, i32* @Pivot71
	%aux28547 = sub i32 %aux28545, %aux28546
	%aux28548 = load i32, i32* @IdPos71
	%aux28549 = icmp eq i32 %aux28547, %aux28548
	br i1 %aux28549, label %etiq13442, label %etiq13443
	
	etiq13442:
	;___Asignación___
	%aux28551 = load i32, i32* @_Acum141
	%aux28552 = add i32 0, 1
	%aux28553 = add i32 %aux28551, %aux28552
	store i32 %aux28553, i32* @_Acum141
	br label %etiq13446
	
	etiq13446:
	;___Asignación___
	%aux28555 = load i32, i32* @IdPos71
	%aux28556 = add i32 0, 1
	%aux28557 = add i32 %aux28555, %aux28556
	store i32 %aux28557, i32* @IdPos71
	br label %etiq13448
	
	etiq13448:
	;___Asignación___
	%aux28559 = load i32, i32* @Pivot71
	%aux28560 = add i32 0, 1
	%aux28561 = sub i32 %aux28559, %aux28560
	store i32 %aux28561, i32* @Pivot71
	br label %etiq13451
	
	etiq13443:
	;___Asignación___
	%aux28563 = load i32, i32* @IdPos71
	%aux28564 = add i32 0, 1
	%aux28565 = add i32 %aux28563, %aux28564
	store i32 %aux28565, i32* @IdPos71
	br label %etiq13451
	
	etiq13451:
	;___IfElse___
	%aux28567 = add i32 0, 2
	%aux28568 = load i32, i32* @Pivot71
	%aux28569 = sub i32 %aux28567, %aux28568
	%aux28570 = load i32, i32* @IdPos71
	%aux28571 = icmp eq i32 %aux28569, %aux28570
	br i1 %aux28571, label %etiq13452, label %etiq13453
	
	etiq13452:
	;___Asignación___
	%aux28573 = load i32, i32* @_Acum141
	%aux28574 = add i32 0, 2
	%aux28575 = add i32 %aux28573, %aux28574
	store i32 %aux28575, i32* @_Acum141
	br label %etiq13456
	
	etiq13456:
	;___Asignación___
	%aux28577 = load i32, i32* @IdPos71
	%aux28578 = add i32 0, 1
	%aux28579 = add i32 %aux28577, %aux28578
	store i32 %aux28579, i32* @IdPos71
	br label %etiq13458
	
	etiq13458:
	;___Asignación___
	%aux28581 = load i32, i32* @Pivot71
	%aux28582 = add i32 0, 1
	%aux28583 = sub i32 %aux28581, %aux28582
	store i32 %aux28583, i32* @Pivot71
	br label %etiq13461
	
	etiq13453:
	;___Asignación___
	%aux28585 = load i32, i32* @IdPos71
	%aux28586 = add i32 0, 1
	%aux28587 = add i32 %aux28585, %aux28586
	store i32 %aux28587, i32* @IdPos71
	br label %etiq13461
	
	etiq13440:
	;___DisplayCadenaCaracteres___
	%aux28588 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq13461
	
	etiq13436:
	;___DisplayCadenaCaracteres___
	%aux28589 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq13461
	
	etiq13433:
	;___DisplayCadenaCaracteres___
	%aux28590 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq13461
	
	etiq13461:
	;___Asignación___
	%aux28592 = load i32, i32* @_Acum141
	store i32 %aux28592, i32* @_Acum142
	br label %etiq13462
	
	etiq13462:
	;___Asignación___
	%aux28594 = add i32 0, 1
	store i32 %aux28594, i32* @Pivot70
	br label %etiq13463
	
	etiq13463:
	;___IfElse___
	%aux28596 = load i32, i32* @Pivot70
	%aux28597 = add i32 0, 1
	%aux28598 = icmp sge i32 %aux28596, %aux28597
	br i1 %aux28598, label %etiq13465, label %etiq13466
	
	etiq13465:
	;___IfElse___
	%aux28600 = add i32 0, 1
	%aux28601 = load i32, i32* @Pivot70
	%aux28602 = icmp sge i32 %aux28600, %aux28601
	br i1 %aux28602, label %etiq13468, label %etiq13469
	
	etiq13468:
	;___IfElse___
	%aux28604 = add i32 0, 1
	%aux28605 = add i32 0, 0
	%aux28606 = icmp sgt i32 %aux28604, %aux28605
	br i1 %aux28606, label %etiq13472, label %etiq13473
	
	etiq13472:
	;___IfElse___
	%aux28608 = add i32 0, 1
	%aux28609 = load i32, i32* @Pivot70
	%aux28610 = sub i32 %aux28608, %aux28609
	%aux28611 = load i32, i32* @IdPos70
	%aux28612 = icmp eq i32 %aux28610, %aux28611
	br i1 %aux28612, label %etiq13475, label %etiq13476
	
	etiq13475:
	;___Asignación___
	%aux28614 = load i32, i32* @_Acum139
	%aux28615 = add i32 0, 1
	%aux28616 = add i32 %aux28614, %aux28615
	store i32 %aux28616, i32* @_Acum139
	br label %etiq13479
	
	etiq13479:
	;___Asignación___
	%aux28618 = load i32, i32* @IdPos70
	%aux28619 = add i32 0, 1
	%aux28620 = add i32 %aux28618, %aux28619
	store i32 %aux28620, i32* @IdPos70
	br label %etiq13481
	
	etiq13481:
	;___Asignación___
	%aux28622 = load i32, i32* @Pivot70
	%aux28623 = add i32 0, 1
	%aux28624 = sub i32 %aux28622, %aux28623
	store i32 %aux28624, i32* @Pivot70
	br label %etiq13484
	
	etiq13476:
	;___Asignación___
	%aux28626 = load i32, i32* @IdPos70
	%aux28627 = add i32 0, 1
	%aux28628 = add i32 %aux28626, %aux28627
	store i32 %aux28628, i32* @IdPos70
	br label %etiq13484
	
	etiq13473:
	;___DisplayCadenaCaracteres___
	%aux28629 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq13484
	
	etiq13469:
	;___DisplayCadenaCaracteres___
	%aux28630 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq13484
	
	etiq13466:
	;___DisplayCadenaCaracteres___
	%aux28631 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq13484
	
	etiq13484:
	;___Asignación___
	%aux28633 = load i32, i32* @_Acum139
	store i32 %aux28633, i32* @_Acum140
	br label %etiq13485
	
	etiq13485:
	;___Asignación___
	%aux28635 = add i32 0, 2
	store i32 %aux28635, i32* @Pivot72
	br label %etiq13486
	
	etiq13486:
	;___IfElse___
	%aux28637 = load i32, i32* @Pivot72
	%aux28638 = add i32 0, 1
	%aux28639 = icmp sge i32 %aux28637, %aux28638
	br i1 %aux28639, label %etiq13488, label %etiq13489
	
	etiq13488:
	;___IfElse___
	%aux28641 = add i32 0, 2
	%aux28642 = load i32, i32* @Pivot72
	%aux28643 = icmp sge i32 %aux28641, %aux28642
	br i1 %aux28643, label %etiq13491, label %etiq13492
	
	etiq13491:
	;___IfElse___
	%aux28645 = add i32 0, 2
	%aux28646 = add i32 0, 0
	%aux28647 = icmp sgt i32 %aux28645, %aux28646
	br i1 %aux28647, label %etiq13495, label %etiq13496
	
	etiq13495:
	;___IfElse___
	%aux28649 = add i32 0, 2
	%aux28650 = load i32, i32* @Pivot72
	%aux28651 = sub i32 %aux28649, %aux28650
	%aux28652 = load i32, i32* @IdPos72
	%aux28653 = icmp eq i32 %aux28651, %aux28652
	br i1 %aux28653, label %etiq13498, label %etiq13499
	
	etiq13498:
	;___Asignación___
	%aux28655 = load i32, i32* @_Acum143
	%aux28656 = load i32, i32* @_Acum140
	%aux28657 = add i32 %aux28655, %aux28656
	store i32 %aux28657, i32* @_Acum143
	br label %etiq13501
	
	etiq13501:
	;___Asignación___
	%aux28659 = load i32, i32* @IdPos72
	%aux28660 = add i32 0, 1
	%aux28661 = add i32 %aux28659, %aux28660
	store i32 %aux28661, i32* @IdPos72
	br label %etiq13503
	
	etiq13503:
	;___Asignación___
	%aux28663 = load i32, i32* @Pivot72
	%aux28664 = add i32 0, 1
	%aux28665 = sub i32 %aux28663, %aux28664
	store i32 %aux28665, i32* @Pivot72
	br label %etiq13506
	
	etiq13499:
	;___Asignación___
	%aux28667 = load i32, i32* @IdPos72
	%aux28668 = add i32 0, 1
	%aux28669 = add i32 %aux28667, %aux28668
	store i32 %aux28669, i32* @IdPos72
	br label %etiq13506
	
	etiq13506:
	;___IfElse___
	%aux28671 = add i32 0, 2
	%aux28672 = load i32, i32* @Pivot72
	%aux28673 = sub i32 %aux28671, %aux28672
	%aux28674 = load i32, i32* @IdPos72
	%aux28675 = icmp eq i32 %aux28673, %aux28674
	br i1 %aux28675, label %etiq13507, label %etiq13508
	
	etiq13507:
	;___Asignación___
	%aux28677 = load i32, i32* @_Acum143
	%aux28678 = load i32, i32* @_Acum142
	%aux28679 = add i32 %aux28677, %aux28678
	store i32 %aux28679, i32* @_Acum143
	br label %etiq13510
	
	etiq13510:
	;___Asignación___
	%aux28681 = load i32, i32* @IdPos72
	%aux28682 = add i32 0, 1
	%aux28683 = add i32 %aux28681, %aux28682
	store i32 %aux28683, i32* @IdPos72
	br label %etiq13512
	
	etiq13512:
	;___Asignación___
	%aux28685 = load i32, i32* @Pivot72
	%aux28686 = add i32 0, 1
	%aux28687 = sub i32 %aux28685, %aux28686
	store i32 %aux28687, i32* @Pivot72
	br label %etiq13515
	
	etiq13508:
	;___Asignación___
	%aux28689 = load i32, i32* @IdPos72
	%aux28690 = add i32 0, 1
	%aux28691 = add i32 %aux28689, %aux28690
	store i32 %aux28691, i32* @IdPos72
	br label %etiq13515
	
	etiq13496:
	;___DisplayCadenaCaracteres___
	%aux28692 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq13515
	
	etiq13492:
	;___DisplayCadenaCaracteres___
	%aux28693 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq13515
	
	etiq13489:
	;___DisplayCadenaCaracteres___
	%aux28694 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq13515
	
	etiq13515:
	;___Asignación___
	%aux28696 = load i32, i32* @_Acum143
	store i32 %aux28696, i32* @_Acum144
	br label %etiq13516
	
	etiq13516:
	;___Asignación___
	%aux28698 = add i32 0, 3
	store i32 %aux28698, i32* @Pivot75
	br label %etiq13517
	
	etiq13517:
	;___IfElse___
	%aux28700 = load i32, i32* @Pivot75
	%aux28701 = add i32 0, 1
	%aux28702 = icmp sge i32 %aux28700, %aux28701
	br i1 %aux28702, label %etiq13519, label %etiq13520
	
	etiq13519:
	;___IfElse___
	%aux28704 = add i32 0, 3
	%aux28705 = load i32, i32* @Pivot75
	%aux28706 = icmp sge i32 %aux28704, %aux28705
	br i1 %aux28706, label %etiq13522, label %etiq13523
	
	etiq13522:
	;___IfElse___
	%aux28708 = add i32 0, 3
	%aux28709 = add i32 0, 0
	%aux28710 = icmp sgt i32 %aux28708, %aux28709
	br i1 %aux28710, label %etiq13526, label %etiq13527
	
	etiq13526:
	;___IfElse___
	%aux28712 = add i32 0, 3
	%aux28713 = load i32, i32* @Pivot75
	%aux28714 = sub i32 %aux28712, %aux28713
	%aux28715 = load i32, i32* @IdPos75
	%aux28716 = icmp eq i32 %aux28714, %aux28715
	br i1 %aux28716, label %etiq13529, label %etiq13530
	
	etiq13529:
	;___Asignación___
	%aux28718 = load i32, i32* @_Acum149
	%aux28719 = load i32, i32* @_Acum144
	%aux28720 = add i32 %aux28718, %aux28719
	store i32 %aux28720, i32* @_Acum149
	br label %etiq13532
	
	etiq13532:
	;___Asignación___
	%aux28722 = load i32, i32* @IdPos75
	%aux28723 = add i32 0, 1
	%aux28724 = add i32 %aux28722, %aux28723
	store i32 %aux28724, i32* @IdPos75
	br label %etiq13534
	
	etiq13534:
	;___Asignación___
	%aux28726 = load i32, i32* @Pivot75
	%aux28727 = add i32 0, 1
	%aux28728 = sub i32 %aux28726, %aux28727
	store i32 %aux28728, i32* @Pivot75
	br label %etiq13537
	
	etiq13530:
	;___Asignación___
	%aux28730 = load i32, i32* @IdPos75
	%aux28731 = add i32 0, 1
	%aux28732 = add i32 %aux28730, %aux28731
	store i32 %aux28732, i32* @IdPos75
	br label %etiq13537
	
	etiq13537:
	;___IfElse___
	%aux28734 = add i32 0, 3
	%aux28735 = load i32, i32* @Pivot75
	%aux28736 = sub i32 %aux28734, %aux28735
	%aux28737 = load i32, i32* @IdPos75
	%aux28738 = icmp eq i32 %aux28736, %aux28737
	br i1 %aux28738, label %etiq13538, label %etiq13539
	
	etiq13538:
	;___Asignación___
	%aux28740 = load i32, i32* @_Acum149
	%aux28741 = load i32, i32* @_Acum146
	%aux28742 = add i32 %aux28740, %aux28741
	store i32 %aux28742, i32* @_Acum149
	br label %etiq13541
	
	etiq13541:
	;___Asignación___
	%aux28744 = load i32, i32* @IdPos75
	%aux28745 = add i32 0, 1
	%aux28746 = add i32 %aux28744, %aux28745
	store i32 %aux28746, i32* @IdPos75
	br label %etiq13543
	
	etiq13543:
	;___Asignación___
	%aux28748 = load i32, i32* @Pivot75
	%aux28749 = add i32 0, 1
	%aux28750 = sub i32 %aux28748, %aux28749
	store i32 %aux28750, i32* @Pivot75
	br label %etiq13546
	
	etiq13539:
	;___Asignación___
	%aux28752 = load i32, i32* @IdPos75
	%aux28753 = add i32 0, 1
	%aux28754 = add i32 %aux28752, %aux28753
	store i32 %aux28754, i32* @IdPos75
	br label %etiq13546
	
	etiq13546:
	;___IfElse___
	%aux28756 = add i32 0, 3
	%aux28757 = load i32, i32* @Pivot75
	%aux28758 = sub i32 %aux28756, %aux28757
	%aux28759 = load i32, i32* @IdPos75
	%aux28760 = icmp eq i32 %aux28758, %aux28759
	br i1 %aux28760, label %etiq13547, label %etiq13548
	
	etiq13547:
	;___Asignación___
	%aux28762 = load i32, i32* @_Acum149
	%aux28763 = load i32, i32* @_Acum148
	%aux28764 = add i32 %aux28762, %aux28763
	store i32 %aux28764, i32* @_Acum149
	br label %etiq13550
	
	etiq13550:
	;___Asignación___
	%aux28766 = load i32, i32* @IdPos75
	%aux28767 = add i32 0, 1
	%aux28768 = add i32 %aux28766, %aux28767
	store i32 %aux28768, i32* @IdPos75
	br label %etiq13552
	
	etiq13552:
	;___Asignación___
	%aux28770 = load i32, i32* @Pivot75
	%aux28771 = add i32 0, 1
	%aux28772 = sub i32 %aux28770, %aux28771
	store i32 %aux28772, i32* @Pivot75
	br label %etiq13555
	
	etiq13548:
	;___Asignación___
	%aux28774 = load i32, i32* @IdPos75
	%aux28775 = add i32 0, 1
	%aux28776 = add i32 %aux28774, %aux28775
	store i32 %aux28776, i32* @IdPos75
	br label %etiq13555
	
	etiq13527:
	;___DisplayCadenaCaracteres___
	%aux28777 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq13555
	
	etiq13523:
	;___DisplayCadenaCaracteres___
	%aux28778 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq13555
	
	etiq13520:
	;___DisplayCadenaCaracteres___
	%aux28779 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq13555
	
	etiq13555:
	;___Asignación___
	%aux28781 = load i32, i32* @_Acum149
	store i32 %aux28781, i32* @_Acum150
	br label %etiq13556
	
	etiq13556:
	;___Asignación___
	%aux28783 = load i32, i32* @pivot
	store i32 %aux28783, i32* @Pivot79
	br label %etiq13557
	
	etiq13557:
	;___IfElse___
	%aux28785 = load i32, i32* @Pivot79
	%aux28786 = add i32 0, 1
	%aux28787 = icmp sge i32 %aux28785, %aux28786
	br i1 %aux28787, label %etiq13559, label %etiq13560
	
	etiq13559:
	;___IfElse___
	%aux28789 = add i32 0, 100
	%aux28790 = load i32, i32* @Pivot79
	%aux28791 = icmp sge i32 %aux28789, %aux28790
	br i1 %aux28791, label %etiq13562, label %etiq13563
	
	etiq13562:
	;___IfElse___
	%aux28793 = add i32 0, 100
	%aux28794 = add i32 0, 0
	%aux28795 = icmp sgt i32 %aux28793, %aux28794
	br i1 %aux28795, label %etiq13566, label %etiq13567
	
	etiq13566:
	;___IfElse___
	%aux28797 = add i32 0, 100
	%aux28798 = load i32, i32* @Pivot79
	%aux28799 = sub i32 %aux28797, %aux28798
	%aux28800 = load i32, i32* @IdPos79
	%aux28801 = icmp eq i32 %aux28799, %aux28800
	br i1 %aux28801, label %etiq13569, label %etiq13570
	
	etiq13569:
	;___Asignación___
	%aux28803 = load i32, i32* @_Acum157
	%aux28804 = add i32 0, 1
	%aux28805 = add i32 %aux28803, %aux28804
	store i32 %aux28805, i32* @_Acum157
	br label %etiq13573
	
	etiq13573:
	;___Asignación___
	%aux28807 = load i32, i32* @IdPos79
	%aux28808 = add i32 0, 1
	%aux28809 = add i32 %aux28807, %aux28808
	store i32 %aux28809, i32* @IdPos79
	br label %etiq13575
	
	etiq13575:
	;___Asignación___
	%aux28811 = load i32, i32* @Pivot79
	%aux28812 = add i32 0, 1
	%aux28813 = sub i32 %aux28811, %aux28812
	store i32 %aux28813, i32* @Pivot79
	br label %etiq13578
	
	etiq13570:
	;___Asignación___
	%aux28815 = load i32, i32* @IdPos79
	%aux28816 = add i32 0, 1
	%aux28817 = add i32 %aux28815, %aux28816
	store i32 %aux28817, i32* @IdPos79
	br label %etiq13578
	
	etiq13578:
	;___IfElse___
	%aux28819 = add i32 0, 100
	%aux28820 = load i32, i32* @Pivot79
	%aux28821 = sub i32 %aux28819, %aux28820
	%aux28822 = load i32, i32* @IdPos79
	%aux28823 = icmp eq i32 %aux28821, %aux28822
	br i1 %aux28823, label %etiq13579, label %etiq13580
	
	etiq13579:
	;___Asignación___
	%aux28825 = load i32, i32* @_Acum157
	%aux28826 = add i32 0, 1
	%aux28827 = add i32 %aux28825, %aux28826
	store i32 %aux28827, i32* @_Acum157
	br label %etiq13583
	
	etiq13583:
	;___Asignación___
	%aux28829 = load i32, i32* @IdPos79
	%aux28830 = add i32 0, 1
	%aux28831 = add i32 %aux28829, %aux28830
	store i32 %aux28831, i32* @IdPos79
	br label %etiq13585
	
	etiq13585:
	;___Asignación___
	%aux28833 = load i32, i32* @Pivot79
	%aux28834 = add i32 0, 1
	%aux28835 = sub i32 %aux28833, %aux28834
	store i32 %aux28835, i32* @Pivot79
	br label %etiq13588
	
	etiq13580:
	;___Asignación___
	%aux28837 = load i32, i32* @IdPos79
	%aux28838 = add i32 0, 1
	%aux28839 = add i32 %aux28837, %aux28838
	store i32 %aux28839, i32* @IdPos79
	br label %etiq13588
	
	etiq13588:
	;___IfElse___
	%aux28841 = add i32 0, 100
	%aux28842 = load i32, i32* @Pivot79
	%aux28843 = sub i32 %aux28841, %aux28842
	%aux28844 = load i32, i32* @IdPos79
	%aux28845 = icmp eq i32 %aux28843, %aux28844
	br i1 %aux28845, label %etiq13589, label %etiq13590
	
	etiq13589:
	;___Asignación___
	%aux28847 = load i32, i32* @_Acum157
	%aux28848 = add i32 0, 1
	%aux28849 = add i32 %aux28847, %aux28848
	store i32 %aux28849, i32* @_Acum157
	br label %etiq13593
	
	etiq13593:
	;___Asignación___
	%aux28851 = load i32, i32* @IdPos79
	%aux28852 = add i32 0, 1
	%aux28853 = add i32 %aux28851, %aux28852
	store i32 %aux28853, i32* @IdPos79
	br label %etiq13595
	
	etiq13595:
	;___Asignación___
	%aux28855 = load i32, i32* @Pivot79
	%aux28856 = add i32 0, 1
	%aux28857 = sub i32 %aux28855, %aux28856
	store i32 %aux28857, i32* @Pivot79
	br label %etiq14891
	
	etiq13590:
	;___Asignación___
	%aux28859 = load i32, i32* @IdPos79
	%aux28860 = add i32 0, 1
	%aux28861 = add i32 %aux28859, %aux28860
	store i32 %aux28861, i32* @IdPos79
	br label %etiq13598
	
	etiq13598:
	;___IfElse___
	%aux28863 = add i32 0, 100
	%aux28864 = load i32, i32* @Pivot79
	%aux28865 = sub i32 %aux28863, %aux28864
	%aux28866 = load i32, i32* @IdPos79
	%aux28867 = icmp eq i32 %aux28865, %aux28866
	br i1 %aux28867, label %etiq13599, label %etiq13600
	
	etiq13599:
	;___Asignación___
	%aux28869 = load i32, i32* @_Acum157
	%aux28870 = add i32 0, 1
	%aux28871 = add i32 %aux28869, %aux28870
	store i32 %aux28871, i32* @_Acum157
	br label %etiq13603
	
	etiq13603:
	;___Asignación___
	%aux28873 = load i32, i32* @IdPos79
	%aux28874 = add i32 0, 1
	%aux28875 = add i32 %aux28873, %aux28874
	store i32 %aux28875, i32* @IdPos79
	br label %etiq13605
	
	etiq13605:
	;___Asignación___
	%aux28877 = load i32, i32* @Pivot79
	%aux28878 = add i32 0, 1
	%aux28879 = sub i32 %aux28877, %aux28878
	store i32 %aux28879, i32* @Pivot79
	br label %etiq13608
	
	etiq13600:
	;___Asignación___
	%aux28881 = load i32, i32* @IdPos79
	%aux28882 = add i32 0, 1
	%aux28883 = add i32 %aux28881, %aux28882
	store i32 %aux28883, i32* @IdPos79
	br label %etiq13608
	
	etiq13608:
	;___IfElse___
	%aux28885 = add i32 0, 100
	%aux28886 = load i32, i32* @Pivot79
	%aux28887 = sub i32 %aux28885, %aux28886
	%aux28888 = load i32, i32* @IdPos79
	%aux28889 = icmp eq i32 %aux28887, %aux28888
	br i1 %aux28889, label %etiq13609, label %etiq13610
	
	etiq13609:
	;___Asignación___
	%aux28891 = load i32, i32* @_Acum157
	%aux28892 = add i32 0, 1
	%aux28893 = add i32 %aux28891, %aux28892
	store i32 %aux28893, i32* @_Acum157
	br label %etiq13613
	
	etiq13613:
	;___Asignación___
	%aux28895 = load i32, i32* @IdPos79
	%aux28896 = add i32 0, 1
	%aux28897 = add i32 %aux28895, %aux28896
	store i32 %aux28897, i32* @IdPos79
	br label %etiq13615
	
	etiq13615:
	;___Asignación___
	%aux28899 = load i32, i32* @Pivot79
	%aux28900 = add i32 0, 1
	%aux28901 = sub i32 %aux28899, %aux28900
	store i32 %aux28901, i32* @Pivot79
	br label %etiq13618
	
	etiq13610:
	;___Asignación___
	%aux28903 = load i32, i32* @IdPos79
	%aux28904 = add i32 0, 1
	%aux28905 = add i32 %aux28903, %aux28904
	store i32 %aux28905, i32* @IdPos79
	br label %etiq13618
	
	etiq13618:
	;___IfElse___
	%aux28907 = add i32 0, 100
	%aux28908 = load i32, i32* @Pivot79
	%aux28909 = sub i32 %aux28907, %aux28908
	%aux28910 = load i32, i32* @IdPos79
	%aux28911 = icmp eq i32 %aux28909, %aux28910
	br i1 %aux28911, label %etiq13619, label %etiq13620
	
	etiq13619:
	;___Asignación___
	%aux28913 = load i32, i32* @_Acum157
	%aux28914 = add i32 0, 1
	%aux28915 = add i32 %aux28913, %aux28914
	store i32 %aux28915, i32* @_Acum157
	br label %etiq13623
	
	etiq13623:
	;___Asignación___
	%aux28917 = load i32, i32* @IdPos79
	%aux28918 = add i32 0, 1
	%aux28919 = add i32 %aux28917, %aux28918
	store i32 %aux28919, i32* @IdPos79
	br label %etiq13625
	
	etiq13625:
	;___Asignación___
	%aux28921 = load i32, i32* @Pivot79
	%aux28922 = add i32 0, 1
	%aux28923 = sub i32 %aux28921, %aux28922
	store i32 %aux28923, i32* @Pivot79
	br label %etiq13628
	
	etiq13620:
	;___Asignación___
	%aux28925 = load i32, i32* @IdPos79
	%aux28926 = add i32 0, 1
	%aux28927 = add i32 %aux28925, %aux28926
	store i32 %aux28927, i32* @IdPos79
	br label %etiq13628
	
	etiq13628:
	;___IfElse___
	%aux28929 = add i32 0, 100
	%aux28930 = load i32, i32* @Pivot79
	%aux28931 = sub i32 %aux28929, %aux28930
	%aux28932 = load i32, i32* @IdPos79
	%aux28933 = icmp eq i32 %aux28931, %aux28932
	br i1 %aux28933, label %etiq13629, label %etiq13630
	
	etiq13629:
	;___Asignación___
	%aux28935 = load i32, i32* @_Acum157
	%aux28936 = add i32 0, 1
	%aux28937 = add i32 %aux28935, %aux28936
	store i32 %aux28937, i32* @_Acum157
	br label %etiq13633
	
	etiq13633:
	;___Asignación___
	%aux28939 = load i32, i32* @IdPos79
	%aux28940 = add i32 0, 1
	%aux28941 = add i32 %aux28939, %aux28940
	store i32 %aux28941, i32* @IdPos79
	br label %etiq13635
	
	etiq13635:
	;___Asignación___
	%aux28943 = load i32, i32* @Pivot79
	%aux28944 = add i32 0, 1
	%aux28945 = sub i32 %aux28943, %aux28944
	store i32 %aux28945, i32* @Pivot79
	br label %etiq13638
	
	etiq13630:
	;___Asignación___
	%aux28947 = load i32, i32* @IdPos79
	%aux28948 = add i32 0, 1
	%aux28949 = add i32 %aux28947, %aux28948
	store i32 %aux28949, i32* @IdPos79
	br label %etiq13638
	
	etiq13638:
	;___IfElse___
	%aux28951 = add i32 0, 100
	%aux28952 = load i32, i32* @Pivot79
	%aux28953 = sub i32 %aux28951, %aux28952
	%aux28954 = load i32, i32* @IdPos79
	%aux28955 = icmp eq i32 %aux28953, %aux28954
	br i1 %aux28955, label %etiq13639, label %etiq13640
	
	etiq13639:
	;___Asignación___
	%aux28957 = load i32, i32* @_Acum157
	%aux28958 = add i32 0, 1
	%aux28959 = add i32 %aux28957, %aux28958
	store i32 %aux28959, i32* @_Acum157
	br label %etiq13643
	
	etiq13643:
	;___Asignación___
	%aux28961 = load i32, i32* @IdPos79
	%aux28962 = add i32 0, 1
	%aux28963 = add i32 %aux28961, %aux28962
	store i32 %aux28963, i32* @IdPos79
	br label %etiq13645
	
	etiq13645:
	;___Asignación___
	%aux28965 = load i32, i32* @Pivot79
	%aux28966 = add i32 0, 1
	%aux28967 = sub i32 %aux28965, %aux28966
	store i32 %aux28967, i32* @Pivot79
	br label %etiq13648
	
	etiq13640:
	;___Asignación___
	%aux28969 = load i32, i32* @IdPos79
	%aux28970 = add i32 0, 1
	%aux28971 = add i32 %aux28969, %aux28970
	store i32 %aux28971, i32* @IdPos79
	br label %etiq13648
	
	etiq13648:
	;___IfElse___
	%aux28973 = add i32 0, 100
	%aux28974 = load i32, i32* @Pivot79
	%aux28975 = sub i32 %aux28973, %aux28974
	%aux28976 = load i32, i32* @IdPos79
	%aux28977 = icmp eq i32 %aux28975, %aux28976
	br i1 %aux28977, label %etiq13649, label %etiq13650
	
	etiq13649:
	;___Asignación___
	%aux28979 = load i32, i32* @_Acum157
	%aux28980 = add i32 0, 1
	%aux28981 = add i32 %aux28979, %aux28980
	store i32 %aux28981, i32* @_Acum157
	br label %etiq13653
	
	etiq13653:
	;___Asignación___
	%aux28983 = load i32, i32* @IdPos79
	%aux28984 = add i32 0, 1
	%aux28985 = add i32 %aux28983, %aux28984
	store i32 %aux28985, i32* @IdPos79
	br label %etiq13655
	
	etiq13655:
	;___Asignación___
	%aux28987 = load i32, i32* @Pivot79
	%aux28988 = add i32 0, 1
	%aux28989 = sub i32 %aux28987, %aux28988
	store i32 %aux28989, i32* @Pivot79
	br label %etiq13658
	
	etiq13650:
	;___Asignación___
	%aux28991 = load i32, i32* @IdPos79
	%aux28992 = add i32 0, 1
	%aux28993 = add i32 %aux28991, %aux28992
	store i32 %aux28993, i32* @IdPos79
	br label %etiq13658
	
	etiq13658:
	;___IfElse___
	%aux28995 = add i32 0, 100
	%aux28996 = load i32, i32* @Pivot79
	%aux28997 = sub i32 %aux28995, %aux28996
	%aux28998 = load i32, i32* @IdPos79
	%aux28999 = icmp eq i32 %aux28997, %aux28998
	br i1 %aux28999, label %etiq13659, label %etiq13660
	
	etiq13659:
	;___Asignación___
	%aux29001 = load i32, i32* @_Acum157
	%aux29002 = add i32 0, 1
	%aux29003 = add i32 %aux29001, %aux29002
	store i32 %aux29003, i32* @_Acum157
	br label %etiq13663
	
	etiq13663:
	;___Asignación___
	%aux29005 = load i32, i32* @IdPos79
	%aux29006 = add i32 0, 1
	%aux29007 = add i32 %aux29005, %aux29006
	store i32 %aux29007, i32* @IdPos79
	br label %etiq13665
	
	etiq13665:
	;___Asignación___
	%aux29009 = load i32, i32* @Pivot79
	%aux29010 = add i32 0, 1
	%aux29011 = sub i32 %aux29009, %aux29010
	store i32 %aux29011, i32* @Pivot79
	br label %etiq13668
	
	etiq13660:
	;___Asignación___
	%aux29013 = load i32, i32* @IdPos79
	%aux29014 = add i32 0, 1
	%aux29015 = add i32 %aux29013, %aux29014
	store i32 %aux29015, i32* @IdPos79
	br label %etiq13668
	
	etiq13668:
	;___IfElse___
	%aux29017 = add i32 0, 100
	%aux29018 = load i32, i32* @Pivot79
	%aux29019 = sub i32 %aux29017, %aux29018
	%aux29020 = load i32, i32* @IdPos79
	%aux29021 = icmp eq i32 %aux29019, %aux29020
	br i1 %aux29021, label %etiq13669, label %etiq13670
	
	etiq13669:
	;___Asignación___
	%aux29023 = load i32, i32* @_Acum157
	%aux29024 = add i32 0, 1
	%aux29025 = add i32 %aux29023, %aux29024
	store i32 %aux29025, i32* @_Acum157
	br label %etiq13673
	
	etiq13673:
	;___Asignación___
	%aux29027 = load i32, i32* @IdPos79
	%aux29028 = add i32 0, 1
	%aux29029 = add i32 %aux29027, %aux29028
	store i32 %aux29029, i32* @IdPos79
	br label %etiq13675
	
	etiq13675:
	;___Asignación___
	%aux29031 = load i32, i32* @Pivot79
	%aux29032 = add i32 0, 1
	%aux29033 = sub i32 %aux29031, %aux29032
	store i32 %aux29033, i32* @Pivot79
	br label %etiq13678
	
	etiq13670:
	;___Asignación___
	%aux29035 = load i32, i32* @IdPos79
	%aux29036 = add i32 0, 1
	%aux29037 = add i32 %aux29035, %aux29036
	store i32 %aux29037, i32* @IdPos79
	br label %etiq13678
	
	etiq13678:
	;___IfElse___
	%aux29039 = add i32 0, 100
	%aux29040 = load i32, i32* @Pivot79
	%aux29041 = sub i32 %aux29039, %aux29040
	%aux29042 = load i32, i32* @IdPos79
	%aux29043 = icmp eq i32 %aux29041, %aux29042
	br i1 %aux29043, label %etiq13679, label %etiq13680
	
	etiq13679:
	;___Asignación___
	%aux29045 = load i32, i32* @_Acum157
	%aux29046 = add i32 0, 1
	%aux29047 = add i32 %aux29045, %aux29046
	store i32 %aux29047, i32* @_Acum157
	br label %etiq13683
	
	etiq13683:
	;___Asignación___
	%aux29049 = load i32, i32* @IdPos79
	%aux29050 = add i32 0, 1
	%aux29051 = add i32 %aux29049, %aux29050
	store i32 %aux29051, i32* @IdPos79
	br label %etiq13685
	
	etiq13685:
	;___Asignación___
	%aux29053 = load i32, i32* @Pivot79
	%aux29054 = add i32 0, 1
	%aux29055 = sub i32 %aux29053, %aux29054
	store i32 %aux29055, i32* @Pivot79
	br label %etiq13688
	
	etiq13680:
	;___Asignación___
	%aux29057 = load i32, i32* @IdPos79
	%aux29058 = add i32 0, 1
	%aux29059 = add i32 %aux29057, %aux29058
	store i32 %aux29059, i32* @IdPos79
	br label %etiq13688
	
	etiq13688:
	;___IfElse___
	%aux29061 = add i32 0, 100
	%aux29062 = load i32, i32* @Pivot79
	%aux29063 = sub i32 %aux29061, %aux29062
	%aux29064 = load i32, i32* @IdPos79
	%aux29065 = icmp eq i32 %aux29063, %aux29064
	br i1 %aux29065, label %etiq13689, label %etiq13690
	
	etiq13689:
	;___Asignación___
	%aux29067 = load i32, i32* @_Acum157
	%aux29068 = add i32 0, 1
	%aux29069 = add i32 %aux29067, %aux29068
	store i32 %aux29069, i32* @_Acum157
	br label %etiq13693
	
	etiq13693:
	;___Asignación___
	%aux29071 = load i32, i32* @IdPos79
	%aux29072 = add i32 0, 1
	%aux29073 = add i32 %aux29071, %aux29072
	store i32 %aux29073, i32* @IdPos79
	br label %etiq13695
	
	etiq13695:
	;___Asignación___
	%aux29075 = load i32, i32* @Pivot79
	%aux29076 = add i32 0, 1
	%aux29077 = sub i32 %aux29075, %aux29076
	store i32 %aux29077, i32* @Pivot79
	br label %etiq13698
	
	etiq13690:
	;___Asignación___
	%aux29079 = load i32, i32* @IdPos79
	%aux29080 = add i32 0, 1
	%aux29081 = add i32 %aux29079, %aux29080
	store i32 %aux29081, i32* @IdPos79
	br label %etiq13698
	
	etiq13698:
	;___IfElse___
	%aux29083 = add i32 0, 100
	%aux29084 = load i32, i32* @Pivot79
	%aux29085 = sub i32 %aux29083, %aux29084
	%aux29086 = load i32, i32* @IdPos79
	%aux29087 = icmp eq i32 %aux29085, %aux29086
	br i1 %aux29087, label %etiq13699, label %etiq13700
	
	etiq13699:
	;___Asignación___
	%aux29089 = load i32, i32* @_Acum157
	%aux29090 = add i32 0, 1
	%aux29091 = add i32 %aux29089, %aux29090
	store i32 %aux29091, i32* @_Acum157
	br label %etiq13703
	
	etiq13703:
	;___Asignación___
	%aux29093 = load i32, i32* @IdPos79
	%aux29094 = add i32 0, 1
	%aux29095 = add i32 %aux29093, %aux29094
	store i32 %aux29095, i32* @IdPos79
	br label %etiq13705
	
	etiq13705:
	;___Asignación___
	%aux29097 = load i32, i32* @Pivot79
	%aux29098 = add i32 0, 1
	%aux29099 = sub i32 %aux29097, %aux29098
	store i32 %aux29099, i32* @Pivot79
	br label %etiq13708
	
	etiq13700:
	;___Asignación___
	%aux29101 = load i32, i32* @IdPos79
	%aux29102 = add i32 0, 1
	%aux29103 = add i32 %aux29101, %aux29102
	store i32 %aux29103, i32* @IdPos79
	br label %etiq13708
	
	etiq13708:
	;___IfElse___
	%aux29105 = add i32 0, 100
	%aux29106 = load i32, i32* @Pivot79
	%aux29107 = sub i32 %aux29105, %aux29106
	%aux29108 = load i32, i32* @IdPos79
	%aux29109 = icmp eq i32 %aux29107, %aux29108
	br i1 %aux29109, label %etiq13709, label %etiq13710
	
	etiq13709:
	;___Asignación___
	%aux29111 = load i32, i32* @_Acum157
	%aux29112 = add i32 0, 1
	%aux29113 = add i32 %aux29111, %aux29112
	store i32 %aux29113, i32* @_Acum157
	br label %etiq13713
	
	etiq13713:
	;___Asignación___
	%aux29115 = load i32, i32* @IdPos79
	%aux29116 = add i32 0, 1
	%aux29117 = add i32 %aux29115, %aux29116
	store i32 %aux29117, i32* @IdPos79
	br label %etiq13715
	
	etiq13715:
	;___Asignación___
	%aux29119 = load i32, i32* @Pivot79
	%aux29120 = add i32 0, 1
	%aux29121 = sub i32 %aux29119, %aux29120
	store i32 %aux29121, i32* @Pivot79
	br label %etiq13718
	
	etiq13710:
	;___Asignación___
	%aux29123 = load i32, i32* @IdPos79
	%aux29124 = add i32 0, 1
	%aux29125 = add i32 %aux29123, %aux29124
	store i32 %aux29125, i32* @IdPos79
	br label %etiq13718
	
	etiq13718:
	;___IfElse___
	%aux29127 = add i32 0, 100
	%aux29128 = load i32, i32* @Pivot79
	%aux29129 = sub i32 %aux29127, %aux29128
	%aux29130 = load i32, i32* @IdPos79
	%aux29131 = icmp eq i32 %aux29129, %aux29130
	br i1 %aux29131, label %etiq13719, label %etiq13720
	
	etiq13719:
	;___Asignación___
	%aux29133 = load i32, i32* @_Acum157
	%aux29134 = add i32 0, 1
	%aux29135 = add i32 %aux29133, %aux29134
	store i32 %aux29135, i32* @_Acum157
	br label %etiq13723
	
	etiq13723:
	;___Asignación___
	%aux29137 = load i32, i32* @IdPos79
	%aux29138 = add i32 0, 1
	%aux29139 = add i32 %aux29137, %aux29138
	store i32 %aux29139, i32* @IdPos79
	br label %etiq13725
	
	etiq13725:
	;___Asignación___
	%aux29141 = load i32, i32* @Pivot79
	%aux29142 = add i32 0, 1
	%aux29143 = sub i32 %aux29141, %aux29142
	store i32 %aux29143, i32* @Pivot79
	br label %etiq13728
	
	etiq13720:
	;___Asignación___
	%aux29145 = load i32, i32* @IdPos79
	%aux29146 = add i32 0, 1
	%aux29147 = add i32 %aux29145, %aux29146
	store i32 %aux29147, i32* @IdPos79
	br label %etiq13728
	
	etiq13728:
	;___IfElse___
	%aux29149 = add i32 0, 100
	%aux29150 = load i32, i32* @Pivot79
	%aux29151 = sub i32 %aux29149, %aux29150
	%aux29152 = load i32, i32* @IdPos79
	%aux29153 = icmp eq i32 %aux29151, %aux29152
	br i1 %aux29153, label %etiq13729, label %etiq13730
	
	etiq13729:
	;___Asignación___
	%aux29155 = load i32, i32* @_Acum157
	%aux29156 = add i32 0, 1
	%aux29157 = add i32 %aux29155, %aux29156
	store i32 %aux29157, i32* @_Acum157
	br label %etiq13733
	
	etiq13733:
	;___Asignación___
	%aux29159 = load i32, i32* @IdPos79
	%aux29160 = add i32 0, 1
	%aux29161 = add i32 %aux29159, %aux29160
	store i32 %aux29161, i32* @IdPos79
	br label %etiq13735
	
	etiq13735:
	;___Asignación___
	%aux29163 = load i32, i32* @Pivot79
	%aux29164 = add i32 0, 1
	%aux29165 = sub i32 %aux29163, %aux29164
	store i32 %aux29165, i32* @Pivot79
	br label %etiq13738
	
	etiq13730:
	;___Asignación___
	%aux29167 = load i32, i32* @IdPos79
	%aux29168 = add i32 0, 1
	%aux29169 = add i32 %aux29167, %aux29168
	store i32 %aux29169, i32* @IdPos79
	br label %etiq13738
	
	etiq13738:
	;___IfElse___
	%aux29171 = add i32 0, 100
	%aux29172 = load i32, i32* @Pivot79
	%aux29173 = sub i32 %aux29171, %aux29172
	%aux29174 = load i32, i32* @IdPos79
	%aux29175 = icmp eq i32 %aux29173, %aux29174
	br i1 %aux29175, label %etiq13739, label %etiq13740
	
	etiq13739:
	;___Asignación___
	%aux29177 = load i32, i32* @_Acum157
	%aux29178 = add i32 0, 1
	%aux29179 = add i32 %aux29177, %aux29178
	store i32 %aux29179, i32* @_Acum157
	br label %etiq13743
	
	etiq13743:
	;___Asignación___
	%aux29181 = load i32, i32* @IdPos79
	%aux29182 = add i32 0, 1
	%aux29183 = add i32 %aux29181, %aux29182
	store i32 %aux29183, i32* @IdPos79
	br label %etiq13745
	
	etiq13745:
	;___Asignación___
	%aux29185 = load i32, i32* @Pivot79
	%aux29186 = add i32 0, 1
	%aux29187 = sub i32 %aux29185, %aux29186
	store i32 %aux29187, i32* @Pivot79
	br label %etiq13748
	
	etiq13740:
	;___Asignación___
	%aux29189 = load i32, i32* @IdPos79
	%aux29190 = add i32 0, 1
	%aux29191 = add i32 %aux29189, %aux29190
	store i32 %aux29191, i32* @IdPos79
	br label %etiq13748
	
	etiq13748:
	;___IfElse___
	%aux29193 = add i32 0, 100
	%aux29194 = load i32, i32* @Pivot79
	%aux29195 = sub i32 %aux29193, %aux29194
	%aux29196 = load i32, i32* @IdPos79
	%aux29197 = icmp eq i32 %aux29195, %aux29196
	br i1 %aux29197, label %etiq13749, label %etiq13750
	
	etiq13749:
	;___Asignación___
	%aux29199 = load i32, i32* @_Acum157
	%aux29200 = add i32 0, 1
	%aux29201 = add i32 %aux29199, %aux29200
	store i32 %aux29201, i32* @_Acum157
	br label %etiq13753
	
	etiq13753:
	;___Asignación___
	%aux29203 = load i32, i32* @IdPos79
	%aux29204 = add i32 0, 1
	%aux29205 = add i32 %aux29203, %aux29204
	store i32 %aux29205, i32* @IdPos79
	br label %etiq13755
	
	etiq13755:
	;___Asignación___
	%aux29207 = load i32, i32* @Pivot79
	%aux29208 = add i32 0, 1
	%aux29209 = sub i32 %aux29207, %aux29208
	store i32 %aux29209, i32* @Pivot79
	br label %etiq13758
	
	etiq13750:
	;___Asignación___
	%aux29211 = load i32, i32* @IdPos79
	%aux29212 = add i32 0, 1
	%aux29213 = add i32 %aux29211, %aux29212
	store i32 %aux29213, i32* @IdPos79
	br label %etiq13758
	
	etiq13758:
	;___IfElse___
	%aux29215 = add i32 0, 100
	%aux29216 = load i32, i32* @Pivot79
	%aux29217 = sub i32 %aux29215, %aux29216
	%aux29218 = load i32, i32* @IdPos79
	%aux29219 = icmp eq i32 %aux29217, %aux29218
	br i1 %aux29219, label %etiq13759, label %etiq13760
	
	etiq13759:
	;___Asignación___
	%aux29221 = load i32, i32* @_Acum157
	%aux29222 = add i32 0, 1
	%aux29223 = add i32 %aux29221, %aux29222
	store i32 %aux29223, i32* @_Acum157
	br label %etiq13763
	
	etiq13763:
	;___Asignación___
	%aux29225 = load i32, i32* @IdPos79
	%aux29226 = add i32 0, 1
	%aux29227 = add i32 %aux29225, %aux29226
	store i32 %aux29227, i32* @IdPos79
	br label %etiq13765
	
	etiq13765:
	;___Asignación___
	%aux29229 = load i32, i32* @Pivot79
	%aux29230 = add i32 0, 1
	%aux29231 = sub i32 %aux29229, %aux29230
	store i32 %aux29231, i32* @Pivot79
	br label %etiq13768
	
	etiq13760:
	;___Asignación___
	%aux29233 = load i32, i32* @IdPos79
	%aux29234 = add i32 0, 1
	%aux29235 = add i32 %aux29233, %aux29234
	store i32 %aux29235, i32* @IdPos79
	br label %etiq13768
	
	etiq13768:
	;___IfElse___
	%aux29237 = add i32 0, 100
	%aux29238 = load i32, i32* @Pivot79
	%aux29239 = sub i32 %aux29237, %aux29238
	%aux29240 = load i32, i32* @IdPos79
	%aux29241 = icmp eq i32 %aux29239, %aux29240
	br i1 %aux29241, label %etiq13769, label %etiq13770
	
	etiq13769:
	;___Asignación___
	%aux29243 = load i32, i32* @_Acum157
	%aux29244 = add i32 0, 1
	%aux29245 = add i32 %aux29243, %aux29244
	store i32 %aux29245, i32* @_Acum157
	br label %etiq13773
	
	etiq13773:
	;___Asignación___
	%aux29247 = load i32, i32* @IdPos79
	%aux29248 = add i32 0, 1
	%aux29249 = add i32 %aux29247, %aux29248
	store i32 %aux29249, i32* @IdPos79
	br label %etiq13775
	
	etiq13775:
	;___Asignación___
	%aux29251 = load i32, i32* @Pivot79
	%aux29252 = add i32 0, 1
	%aux29253 = sub i32 %aux29251, %aux29252
	store i32 %aux29253, i32* @Pivot79
	br label %etiq13778
	
	etiq13770:
	;___Asignación___
	%aux29255 = load i32, i32* @IdPos79
	%aux29256 = add i32 0, 1
	%aux29257 = add i32 %aux29255, %aux29256
	store i32 %aux29257, i32* @IdPos79
	br label %etiq13778
	
	etiq13778:
	;___IfElse___
	%aux29259 = add i32 0, 100
	%aux29260 = load i32, i32* @Pivot79
	%aux29261 = sub i32 %aux29259, %aux29260
	%aux29262 = load i32, i32* @IdPos79
	%aux29263 = icmp eq i32 %aux29261, %aux29262
	br i1 %aux29263, label %etiq13779, label %etiq13780
	
	etiq13779:
	;___Asignación___
	%aux29265 = load i32, i32* @_Acum157
	%aux29266 = add i32 0, 1
	%aux29267 = add i32 %aux29265, %aux29266
	store i32 %aux29267, i32* @_Acum157
	br label %etiq13783
	
	etiq13783:
	;___Asignación___
	%aux29269 = load i32, i32* @IdPos79
	%aux29270 = add i32 0, 1
	%aux29271 = add i32 %aux29269, %aux29270
	store i32 %aux29271, i32* @IdPos79
	br label %etiq13785
	
	etiq13785:
	;___Asignación___
	%aux29273 = load i32, i32* @Pivot79
	%aux29274 = add i32 0, 1
	%aux29275 = sub i32 %aux29273, %aux29274
	store i32 %aux29275, i32* @Pivot79
	br label %etiq13788
	
	etiq13780:
	;___Asignación___
	%aux29277 = load i32, i32* @IdPos79
	%aux29278 = add i32 0, 1
	%aux29279 = add i32 %aux29277, %aux29278
	store i32 %aux29279, i32* @IdPos79
	br label %etiq13788
	
	etiq13788:
	;___IfElse___
	%aux29281 = add i32 0, 100
	%aux29282 = load i32, i32* @Pivot79
	%aux29283 = sub i32 %aux29281, %aux29282
	%aux29284 = load i32, i32* @IdPos79
	%aux29285 = icmp eq i32 %aux29283, %aux29284
	br i1 %aux29285, label %etiq13789, label %etiq13790
	
	etiq13789:
	;___Asignación___
	%aux29287 = load i32, i32* @_Acum157
	%aux29288 = add i32 0, 1
	%aux29289 = add i32 %aux29287, %aux29288
	store i32 %aux29289, i32* @_Acum157
	br label %etiq13793
	
	etiq13793:
	;___Asignación___
	%aux29291 = load i32, i32* @IdPos79
	%aux29292 = add i32 0, 1
	%aux29293 = add i32 %aux29291, %aux29292
	store i32 %aux29293, i32* @IdPos79
	br label %etiq13795
	
	etiq13795:
	;___Asignación___
	%aux29295 = load i32, i32* @Pivot79
	%aux29296 = add i32 0, 1
	%aux29297 = sub i32 %aux29295, %aux29296
	store i32 %aux29297, i32* @Pivot79
	br label %etiq13798
	
	etiq13790:
	;___Asignación___
	%aux29299 = load i32, i32* @IdPos79
	%aux29300 = add i32 0, 1
	%aux29301 = add i32 %aux29299, %aux29300
	store i32 %aux29301, i32* @IdPos79
	br label %etiq13798
	
	etiq13798:
	;___IfElse___
	%aux29303 = add i32 0, 100
	%aux29304 = load i32, i32* @Pivot79
	%aux29305 = sub i32 %aux29303, %aux29304
	%aux29306 = load i32, i32* @IdPos79
	%aux29307 = icmp eq i32 %aux29305, %aux29306
	br i1 %aux29307, label %etiq13799, label %etiq13800
	
	etiq13799:
	;___Asignación___
	%aux29309 = load i32, i32* @_Acum157
	%aux29310 = add i32 0, 1
	%aux29311 = add i32 %aux29309, %aux29310
	store i32 %aux29311, i32* @_Acum157
	br label %etiq13803
	
	etiq13803:
	;___Asignación___
	%aux29313 = load i32, i32* @IdPos79
	%aux29314 = add i32 0, 1
	%aux29315 = add i32 %aux29313, %aux29314
	store i32 %aux29315, i32* @IdPos79
	br label %etiq13805
	
	etiq13805:
	;___Asignación___
	%aux29317 = load i32, i32* @Pivot79
	%aux29318 = add i32 0, 1
	%aux29319 = sub i32 %aux29317, %aux29318
	store i32 %aux29319, i32* @Pivot79
	br label %etiq13808
	
	etiq13800:
	;___Asignación___
	%aux29321 = load i32, i32* @IdPos79
	%aux29322 = add i32 0, 1
	%aux29323 = add i32 %aux29321, %aux29322
	store i32 %aux29323, i32* @IdPos79
	br label %etiq13808
	
	etiq13808:
	;___IfElse___
	%aux29325 = add i32 0, 100
	%aux29326 = load i32, i32* @Pivot79
	%aux29327 = sub i32 %aux29325, %aux29326
	%aux29328 = load i32, i32* @IdPos79
	%aux29329 = icmp eq i32 %aux29327, %aux29328
	br i1 %aux29329, label %etiq13809, label %etiq13810
	
	etiq13809:
	;___Asignación___
	%aux29331 = load i32, i32* @_Acum157
	%aux29332 = add i32 0, 1
	%aux29333 = add i32 %aux29331, %aux29332
	store i32 %aux29333, i32* @_Acum157
	br label %etiq13813
	
	etiq13813:
	;___Asignación___
	%aux29335 = load i32, i32* @IdPos79
	%aux29336 = add i32 0, 1
	%aux29337 = add i32 %aux29335, %aux29336
	store i32 %aux29337, i32* @IdPos79
	br label %etiq13815
	
	etiq13815:
	;___Asignación___
	%aux29339 = load i32, i32* @Pivot79
	%aux29340 = add i32 0, 1
	%aux29341 = sub i32 %aux29339, %aux29340
	store i32 %aux29341, i32* @Pivot79
	br label %etiq13818
	
	etiq13810:
	;___Asignación___
	%aux29343 = load i32, i32* @IdPos79
	%aux29344 = add i32 0, 1
	%aux29345 = add i32 %aux29343, %aux29344
	store i32 %aux29345, i32* @IdPos79
	br label %etiq13818
	
	etiq13818:
	;___IfElse___
	%aux29347 = add i32 0, 100
	%aux29348 = load i32, i32* @Pivot79
	%aux29349 = sub i32 %aux29347, %aux29348
	%aux29350 = load i32, i32* @IdPos79
	%aux29351 = icmp eq i32 %aux29349, %aux29350
	br i1 %aux29351, label %etiq13819, label %etiq13820
	
	etiq13819:
	;___Asignación___
	%aux29353 = load i32, i32* @_Acum157
	%aux29354 = add i32 0, 1
	%aux29355 = add i32 %aux29353, %aux29354
	store i32 %aux29355, i32* @_Acum157
	br label %etiq13823
	
	etiq13823:
	;___Asignación___
	%aux29357 = load i32, i32* @IdPos79
	%aux29358 = add i32 0, 1
	%aux29359 = add i32 %aux29357, %aux29358
	store i32 %aux29359, i32* @IdPos79
	br label %etiq13825
	
	etiq13825:
	;___Asignación___
	%aux29361 = load i32, i32* @Pivot79
	%aux29362 = add i32 0, 1
	%aux29363 = sub i32 %aux29361, %aux29362
	store i32 %aux29363, i32* @Pivot79
	br label %etiq13828
	
	etiq13820:
	;___Asignación___
	%aux29365 = load i32, i32* @IdPos79
	%aux29366 = add i32 0, 1
	%aux29367 = add i32 %aux29365, %aux29366
	store i32 %aux29367, i32* @IdPos79
	br label %etiq13828
	
	etiq13828:
	;___IfElse___
	%aux29369 = add i32 0, 100
	%aux29370 = load i32, i32* @Pivot79
	%aux29371 = sub i32 %aux29369, %aux29370
	%aux29372 = load i32, i32* @IdPos79
	%aux29373 = icmp eq i32 %aux29371, %aux29372
	br i1 %aux29373, label %etiq13829, label %etiq13830
	
	etiq13829:
	;___Asignación___
	%aux29375 = load i32, i32* @_Acum157
	%aux29376 = add i32 0, 1
	%aux29377 = add i32 %aux29375, %aux29376
	store i32 %aux29377, i32* @_Acum157
	br label %etiq13833
	
	etiq13833:
	;___Asignación___
	%aux29379 = load i32, i32* @IdPos79
	%aux29380 = add i32 0, 1
	%aux29381 = add i32 %aux29379, %aux29380
	store i32 %aux29381, i32* @IdPos79
	br label %etiq13835
	
	etiq13835:
	;___Asignación___
	%aux29383 = load i32, i32* @Pivot79
	%aux29384 = add i32 0, 1
	%aux29385 = sub i32 %aux29383, %aux29384
	store i32 %aux29385, i32* @Pivot79
	br label %etiq13838
	
	etiq13830:
	;___Asignación___
	%aux29387 = load i32, i32* @IdPos79
	%aux29388 = add i32 0, 1
	%aux29389 = add i32 %aux29387, %aux29388
	store i32 %aux29389, i32* @IdPos79
	br label %etiq13838
	
	etiq13838:
	;___IfElse___
	%aux29391 = add i32 0, 100
	%aux29392 = load i32, i32* @Pivot79
	%aux29393 = sub i32 %aux29391, %aux29392
	%aux29394 = load i32, i32* @IdPos79
	%aux29395 = icmp eq i32 %aux29393, %aux29394
	br i1 %aux29395, label %etiq13839, label %etiq13840
	
	etiq13839:
	;___Asignación___
	%aux29397 = load i32, i32* @_Acum157
	%aux29398 = add i32 0, 1
	%aux29399 = add i32 %aux29397, %aux29398
	store i32 %aux29399, i32* @_Acum157
	br label %etiq13843
	
	etiq13843:
	;___Asignación___
	%aux29401 = load i32, i32* @IdPos79
	%aux29402 = add i32 0, 1
	%aux29403 = add i32 %aux29401, %aux29402
	store i32 %aux29403, i32* @IdPos79
	br label %etiq13845
	
	etiq13845:
	;___Asignación___
	%aux29405 = load i32, i32* @Pivot79
	%aux29406 = add i32 0, 1
	%aux29407 = sub i32 %aux29405, %aux29406
	store i32 %aux29407, i32* @Pivot79
	br label %etiq13848
	
	etiq13840:
	;___Asignación___
	%aux29409 = load i32, i32* @IdPos79
	%aux29410 = add i32 0, 1
	%aux29411 = add i32 %aux29409, %aux29410
	store i32 %aux29411, i32* @IdPos79
	br label %etiq13848
	
	etiq13848:
	;___IfElse___
	%aux29413 = add i32 0, 100
	%aux29414 = load i32, i32* @Pivot79
	%aux29415 = sub i32 %aux29413, %aux29414
	%aux29416 = load i32, i32* @IdPos79
	%aux29417 = icmp eq i32 %aux29415, %aux29416
	br i1 %aux29417, label %etiq13849, label %etiq13850
	
	etiq13849:
	;___Asignación___
	%aux29419 = load i32, i32* @_Acum157
	%aux29420 = add i32 0, 1
	%aux29421 = add i32 %aux29419, %aux29420
	store i32 %aux29421, i32* @_Acum157
	br label %etiq13853
	
	etiq13853:
	;___Asignación___
	%aux29423 = load i32, i32* @IdPos79
	%aux29424 = add i32 0, 1
	%aux29425 = add i32 %aux29423, %aux29424
	store i32 %aux29425, i32* @IdPos79
	br label %etiq13855
	
	etiq13855:
	;___Asignación___
	%aux29427 = load i32, i32* @Pivot79
	%aux29428 = add i32 0, 1
	%aux29429 = sub i32 %aux29427, %aux29428
	store i32 %aux29429, i32* @Pivot79
	br label %etiq13858
	
	etiq13850:
	;___Asignación___
	%aux29431 = load i32, i32* @IdPos79
	%aux29432 = add i32 0, 1
	%aux29433 = add i32 %aux29431, %aux29432
	store i32 %aux29433, i32* @IdPos79
	br label %etiq13858
	
	etiq13858:
	;___IfElse___
	%aux29435 = add i32 0, 100
	%aux29436 = load i32, i32* @Pivot79
	%aux29437 = sub i32 %aux29435, %aux29436
	%aux29438 = load i32, i32* @IdPos79
	%aux29439 = icmp eq i32 %aux29437, %aux29438
	br i1 %aux29439, label %etiq13859, label %etiq13860
	
	etiq13859:
	;___Asignación___
	%aux29441 = load i32, i32* @_Acum157
	%aux29442 = add i32 0, 1
	%aux29443 = add i32 %aux29441, %aux29442
	store i32 %aux29443, i32* @_Acum157
	br label %etiq13863
	
	etiq13863:
	;___Asignación___
	%aux29445 = load i32, i32* @IdPos79
	%aux29446 = add i32 0, 1
	%aux29447 = add i32 %aux29445, %aux29446
	store i32 %aux29447, i32* @IdPos79
	br label %etiq13865
	
	etiq13865:
	;___Asignación___
	%aux29449 = load i32, i32* @Pivot79
	%aux29450 = add i32 0, 1
	%aux29451 = sub i32 %aux29449, %aux29450
	store i32 %aux29451, i32* @Pivot79
	br label %etiq13868
	
	etiq13860:
	;___Asignación___
	%aux29453 = load i32, i32* @IdPos79
	%aux29454 = add i32 0, 1
	%aux29455 = add i32 %aux29453, %aux29454
	store i32 %aux29455, i32* @IdPos79
	br label %etiq13868
	
	etiq13868:
	;___IfElse___
	%aux29457 = add i32 0, 100
	%aux29458 = load i32, i32* @Pivot79
	%aux29459 = sub i32 %aux29457, %aux29458
	%aux29460 = load i32, i32* @IdPos79
	%aux29461 = icmp eq i32 %aux29459, %aux29460
	br i1 %aux29461, label %etiq13869, label %etiq13870
	
	etiq13869:
	;___Asignación___
	%aux29463 = load i32, i32* @_Acum157
	%aux29464 = add i32 0, 1
	%aux29465 = add i32 %aux29463, %aux29464
	store i32 %aux29465, i32* @_Acum157
	br label %etiq13873
	
	etiq13873:
	;___Asignación___
	%aux29467 = load i32, i32* @IdPos79
	%aux29468 = add i32 0, 1
	%aux29469 = add i32 %aux29467, %aux29468
	store i32 %aux29469, i32* @IdPos79
	br label %etiq13875
	
	etiq13875:
	;___Asignación___
	%aux29471 = load i32, i32* @Pivot79
	%aux29472 = add i32 0, 1
	%aux29473 = sub i32 %aux29471, %aux29472
	store i32 %aux29473, i32* @Pivot79
	br label %etiq13878
	
	etiq13870:
	;___Asignación___
	%aux29475 = load i32, i32* @IdPos79
	%aux29476 = add i32 0, 1
	%aux29477 = add i32 %aux29475, %aux29476
	store i32 %aux29477, i32* @IdPos79
	br label %etiq13878
	
	etiq13878:
	;___IfElse___
	%aux29479 = add i32 0, 100
	%aux29480 = load i32, i32* @Pivot79
	%aux29481 = sub i32 %aux29479, %aux29480
	%aux29482 = load i32, i32* @IdPos79
	%aux29483 = icmp eq i32 %aux29481, %aux29482
	br i1 %aux29483, label %etiq13879, label %etiq13880
	
	etiq13879:
	;___Asignación___
	%aux29485 = load i32, i32* @_Acum157
	%aux29486 = add i32 0, 1
	%aux29487 = add i32 %aux29485, %aux29486
	store i32 %aux29487, i32* @_Acum157
	br label %etiq13883
	
	etiq13883:
	;___Asignación___
	%aux29489 = load i32, i32* @IdPos79
	%aux29490 = add i32 0, 1
	%aux29491 = add i32 %aux29489, %aux29490
	store i32 %aux29491, i32* @IdPos79
	br label %etiq13885
	
	etiq13885:
	;___Asignación___
	%aux29493 = load i32, i32* @Pivot79
	%aux29494 = add i32 0, 1
	%aux29495 = sub i32 %aux29493, %aux29494
	store i32 %aux29495, i32* @Pivot79
	br label %etiq13888
	
	etiq13880:
	;___Asignación___
	%aux29497 = load i32, i32* @IdPos79
	%aux29498 = add i32 0, 1
	%aux29499 = add i32 %aux29497, %aux29498
	store i32 %aux29499, i32* @IdPos79
	br label %etiq13888
	
	etiq13888:
	;___IfElse___
	%aux29501 = add i32 0, 100
	%aux29502 = load i32, i32* @Pivot79
	%aux29503 = sub i32 %aux29501, %aux29502
	%aux29504 = load i32, i32* @IdPos79
	%aux29505 = icmp eq i32 %aux29503, %aux29504
	br i1 %aux29505, label %etiq13889, label %etiq13890
	
	etiq13889:
	;___Asignación___
	%aux29507 = load i32, i32* @_Acum157
	%aux29508 = add i32 0, 1
	%aux29509 = add i32 %aux29507, %aux29508
	store i32 %aux29509, i32* @_Acum157
	br label %etiq13893
	
	etiq13893:
	;___Asignación___
	%aux29511 = load i32, i32* @IdPos79
	%aux29512 = add i32 0, 1
	%aux29513 = add i32 %aux29511, %aux29512
	store i32 %aux29513, i32* @IdPos79
	br label %etiq13895
	
	etiq13895:
	;___Asignación___
	%aux29515 = load i32, i32* @Pivot79
	%aux29516 = add i32 0, 1
	%aux29517 = sub i32 %aux29515, %aux29516
	store i32 %aux29517, i32* @Pivot79
	br label %etiq13898
	
	etiq13890:
	;___Asignación___
	%aux29519 = load i32, i32* @IdPos79
	%aux29520 = add i32 0, 1
	%aux29521 = add i32 %aux29519, %aux29520
	store i32 %aux29521, i32* @IdPos79
	br label %etiq13898
	
	etiq13898:
	;___IfElse___
	%aux29523 = add i32 0, 100
	%aux29524 = load i32, i32* @Pivot79
	%aux29525 = sub i32 %aux29523, %aux29524
	%aux29526 = load i32, i32* @IdPos79
	%aux29527 = icmp eq i32 %aux29525, %aux29526
	br i1 %aux29527, label %etiq13899, label %etiq13900
	
	etiq13899:
	;___Asignación___
	%aux29529 = load i32, i32* @_Acum157
	%aux29530 = add i32 0, 1
	%aux29531 = add i32 %aux29529, %aux29530
	store i32 %aux29531, i32* @_Acum157
	br label %etiq13903
	
	etiq13903:
	;___Asignación___
	%aux29533 = load i32, i32* @IdPos79
	%aux29534 = add i32 0, 1
	%aux29535 = add i32 %aux29533, %aux29534
	store i32 %aux29535, i32* @IdPos79
	br label %etiq13905
	
	etiq13905:
	;___Asignación___
	%aux29537 = load i32, i32* @Pivot79
	%aux29538 = add i32 0, 1
	%aux29539 = sub i32 %aux29537, %aux29538
	store i32 %aux29539, i32* @Pivot79
	br label %etiq13908
	
	etiq13900:
	;___Asignación___
	%aux29541 = load i32, i32* @IdPos79
	%aux29542 = add i32 0, 1
	%aux29543 = add i32 %aux29541, %aux29542
	store i32 %aux29543, i32* @IdPos79
	br label %etiq13908
	
	etiq13908:
	;___IfElse___
	%aux29545 = add i32 0, 100
	%aux29546 = load i32, i32* @Pivot79
	%aux29547 = sub i32 %aux29545, %aux29546
	%aux29548 = load i32, i32* @IdPos79
	%aux29549 = icmp eq i32 %aux29547, %aux29548
	br i1 %aux29549, label %etiq13909, label %etiq13910
	
	etiq13909:
	;___Asignación___
	%aux29551 = load i32, i32* @_Acum157
	%aux29552 = add i32 0, 1
	%aux29553 = add i32 %aux29551, %aux29552
	store i32 %aux29553, i32* @_Acum157
	br label %etiq13913
	
	etiq13913:
	;___Asignación___
	%aux29555 = load i32, i32* @IdPos79
	%aux29556 = add i32 0, 1
	%aux29557 = add i32 %aux29555, %aux29556
	store i32 %aux29557, i32* @IdPos79
	br label %etiq13915
	
	etiq13915:
	;___Asignación___
	%aux29559 = load i32, i32* @Pivot79
	%aux29560 = add i32 0, 1
	%aux29561 = sub i32 %aux29559, %aux29560
	store i32 %aux29561, i32* @Pivot79
	br label %etiq13918
	
	etiq13910:
	;___Asignación___
	%aux29563 = load i32, i32* @IdPos79
	%aux29564 = add i32 0, 1
	%aux29565 = add i32 %aux29563, %aux29564
	store i32 %aux29565, i32* @IdPos79
	br label %etiq13918
	
	etiq13918:
	;___IfElse___
	%aux29567 = add i32 0, 100
	%aux29568 = load i32, i32* @Pivot79
	%aux29569 = sub i32 %aux29567, %aux29568
	%aux29570 = load i32, i32* @IdPos79
	%aux29571 = icmp eq i32 %aux29569, %aux29570
	br i1 %aux29571, label %etiq13919, label %etiq13920
	
	etiq13919:
	;___Asignación___
	%aux29573 = load i32, i32* @_Acum157
	%aux29574 = add i32 0, 1
	%aux29575 = add i32 %aux29573, %aux29574
	store i32 %aux29575, i32* @_Acum157
	br label %etiq13923
	
	etiq13923:
	;___Asignación___
	%aux29577 = load i32, i32* @IdPos79
	%aux29578 = add i32 0, 1
	%aux29579 = add i32 %aux29577, %aux29578
	store i32 %aux29579, i32* @IdPos79
	br label %etiq13925
	
	etiq13925:
	;___Asignación___
	%aux29581 = load i32, i32* @Pivot79
	%aux29582 = add i32 0, 1
	%aux29583 = sub i32 %aux29581, %aux29582
	store i32 %aux29583, i32* @Pivot79
	br label %etiq13928
	
	etiq13920:
	;___Asignación___
	%aux29585 = load i32, i32* @IdPos79
	%aux29586 = add i32 0, 1
	%aux29587 = add i32 %aux29585, %aux29586
	store i32 %aux29587, i32* @IdPos79
	br label %etiq13928
	
	etiq13928:
	;___IfElse___
	%aux29589 = add i32 0, 100
	%aux29590 = load i32, i32* @Pivot79
	%aux29591 = sub i32 %aux29589, %aux29590
	%aux29592 = load i32, i32* @IdPos79
	%aux29593 = icmp eq i32 %aux29591, %aux29592
	br i1 %aux29593, label %etiq13929, label %etiq13930
	
	etiq13929:
	;___Asignación___
	%aux29595 = load i32, i32* @_Acum157
	%aux29596 = add i32 0, 1
	%aux29597 = add i32 %aux29595, %aux29596
	store i32 %aux29597, i32* @_Acum157
	br label %etiq13933
	
	etiq13933:
	;___Asignación___
	%aux29599 = load i32, i32* @IdPos79
	%aux29600 = add i32 0, 1
	%aux29601 = add i32 %aux29599, %aux29600
	store i32 %aux29601, i32* @IdPos79
	br label %etiq13935
	
	etiq13935:
	;___Asignación___
	%aux29603 = load i32, i32* @Pivot79
	%aux29604 = add i32 0, 1
	%aux29605 = sub i32 %aux29603, %aux29604
	store i32 %aux29605, i32* @Pivot79
	br label %etiq13938
	
	etiq13930:
	;___Asignación___
	%aux29607 = load i32, i32* @IdPos79
	%aux29608 = add i32 0, 1
	%aux29609 = add i32 %aux29607, %aux29608
	store i32 %aux29609, i32* @IdPos79
	br label %etiq13938
	
	etiq13938:
	;___IfElse___
	%aux29611 = add i32 0, 100
	%aux29612 = load i32, i32* @Pivot79
	%aux29613 = sub i32 %aux29611, %aux29612
	%aux29614 = load i32, i32* @IdPos79
	%aux29615 = icmp eq i32 %aux29613, %aux29614
	br i1 %aux29615, label %etiq13939, label %etiq13940
	
	etiq13939:
	;___Asignación___
	%aux29617 = load i32, i32* @_Acum157
	%aux29618 = add i32 0, 1
	%aux29619 = add i32 %aux29617, %aux29618
	store i32 %aux29619, i32* @_Acum157
	br label %etiq13943
	
	etiq13943:
	;___Asignación___
	%aux29621 = load i32, i32* @IdPos79
	%aux29622 = add i32 0, 1
	%aux29623 = add i32 %aux29621, %aux29622
	store i32 %aux29623, i32* @IdPos79
	br label %etiq13945
	
	etiq13945:
	;___Asignación___
	%aux29625 = load i32, i32* @Pivot79
	%aux29626 = add i32 0, 1
	%aux29627 = sub i32 %aux29625, %aux29626
	store i32 %aux29627, i32* @Pivot79
	br label %etiq13948
	
	etiq13940:
	;___Asignación___
	%aux29629 = load i32, i32* @IdPos79
	%aux29630 = add i32 0, 1
	%aux29631 = add i32 %aux29629, %aux29630
	store i32 %aux29631, i32* @IdPos79
	br label %etiq13948
	
	etiq13948:
	;___IfElse___
	%aux29633 = add i32 0, 100
	%aux29634 = load i32, i32* @Pivot79
	%aux29635 = sub i32 %aux29633, %aux29634
	%aux29636 = load i32, i32* @IdPos79
	%aux29637 = icmp eq i32 %aux29635, %aux29636
	br i1 %aux29637, label %etiq13949, label %etiq13950
	
	etiq13949:
	;___Asignación___
	%aux29639 = load i32, i32* @_Acum157
	%aux29640 = add i32 0, 1
	%aux29641 = add i32 %aux29639, %aux29640
	store i32 %aux29641, i32* @_Acum157
	br label %etiq13953
	
	etiq13953:
	;___Asignación___
	%aux29643 = load i32, i32* @IdPos79
	%aux29644 = add i32 0, 1
	%aux29645 = add i32 %aux29643, %aux29644
	store i32 %aux29645, i32* @IdPos79
	br label %etiq13955
	
	etiq13955:
	;___Asignación___
	%aux29647 = load i32, i32* @Pivot79
	%aux29648 = add i32 0, 1
	%aux29649 = sub i32 %aux29647, %aux29648
	store i32 %aux29649, i32* @Pivot79
	br label %etiq13958
	
	etiq13950:
	;___Asignación___
	%aux29651 = load i32, i32* @IdPos79
	%aux29652 = add i32 0, 1
	%aux29653 = add i32 %aux29651, %aux29652
	store i32 %aux29653, i32* @IdPos79
	br label %etiq13958
	
	etiq13958:
	;___IfElse___
	%aux29655 = add i32 0, 100
	%aux29656 = load i32, i32* @Pivot79
	%aux29657 = sub i32 %aux29655, %aux29656
	%aux29658 = load i32, i32* @IdPos79
	%aux29659 = icmp eq i32 %aux29657, %aux29658
	br i1 %aux29659, label %etiq13959, label %etiq13960
	
	etiq13959:
	;___Asignación___
	%aux29661 = load i32, i32* @_Acum157
	%aux29662 = add i32 0, 1
	%aux29663 = add i32 %aux29661, %aux29662
	store i32 %aux29663, i32* @_Acum157
	br label %etiq13963
	
	etiq13963:
	;___Asignación___
	%aux29665 = load i32, i32* @IdPos79
	%aux29666 = add i32 0, 1
	%aux29667 = add i32 %aux29665, %aux29666
	store i32 %aux29667, i32* @IdPos79
	br label %etiq13965
	
	etiq13965:
	;___Asignación___
	%aux29669 = load i32, i32* @Pivot79
	%aux29670 = add i32 0, 1
	%aux29671 = sub i32 %aux29669, %aux29670
	store i32 %aux29671, i32* @Pivot79
	br label %etiq13968
	
	etiq13960:
	;___Asignación___
	%aux29673 = load i32, i32* @IdPos79
	%aux29674 = add i32 0, 1
	%aux29675 = add i32 %aux29673, %aux29674
	store i32 %aux29675, i32* @IdPos79
	br label %etiq13968
	
	etiq13968:
	;___IfElse___
	%aux29677 = add i32 0, 100
	%aux29678 = load i32, i32* @Pivot79
	%aux29679 = sub i32 %aux29677, %aux29678
	%aux29680 = load i32, i32* @IdPos79
	%aux29681 = icmp eq i32 %aux29679, %aux29680
	br i1 %aux29681, label %etiq13969, label %etiq13970
	
	etiq13969:
	;___Asignación___
	%aux29683 = load i32, i32* @_Acum157
	%aux29684 = add i32 0, 1
	%aux29685 = add i32 %aux29683, %aux29684
	store i32 %aux29685, i32* @_Acum157
	br label %etiq13973
	
	etiq13973:
	;___Asignación___
	%aux29687 = load i32, i32* @IdPos79
	%aux29688 = add i32 0, 1
	%aux29689 = add i32 %aux29687, %aux29688
	store i32 %aux29689, i32* @IdPos79
	br label %etiq13975
	
	etiq13975:
	;___Asignación___
	%aux29691 = load i32, i32* @Pivot79
	%aux29692 = add i32 0, 1
	%aux29693 = sub i32 %aux29691, %aux29692
	store i32 %aux29693, i32* @Pivot79
	br label %etiq13978
	
	etiq13970:
	;___Asignación___
	%aux29695 = load i32, i32* @IdPos79
	%aux29696 = add i32 0, 1
	%aux29697 = add i32 %aux29695, %aux29696
	store i32 %aux29697, i32* @IdPos79
	br label %etiq13978
	
	etiq13978:
	;___IfElse___
	%aux29699 = add i32 0, 100
	%aux29700 = load i32, i32* @Pivot79
	%aux29701 = sub i32 %aux29699, %aux29700
	%aux29702 = load i32, i32* @IdPos79
	%aux29703 = icmp eq i32 %aux29701, %aux29702
	br i1 %aux29703, label %etiq13979, label %etiq13980
	
	etiq13979:
	;___Asignación___
	%aux29705 = load i32, i32* @_Acum157
	%aux29706 = add i32 0, 1
	%aux29707 = add i32 %aux29705, %aux29706
	store i32 %aux29707, i32* @_Acum157
	br label %etiq13983
	
	etiq13983:
	;___Asignación___
	%aux29709 = load i32, i32* @IdPos79
	%aux29710 = add i32 0, 1
	%aux29711 = add i32 %aux29709, %aux29710
	store i32 %aux29711, i32* @IdPos79
	br label %etiq13985
	
	etiq13985:
	;___Asignación___
	%aux29713 = load i32, i32* @Pivot79
	%aux29714 = add i32 0, 1
	%aux29715 = sub i32 %aux29713, %aux29714
	store i32 %aux29715, i32* @Pivot79
	br label %etiq13988
	
	etiq13980:
	;___Asignación___
	%aux29717 = load i32, i32* @IdPos79
	%aux29718 = add i32 0, 1
	%aux29719 = add i32 %aux29717, %aux29718
	store i32 %aux29719, i32* @IdPos79
	br label %etiq13988
	
	etiq13988:
	;___IfElse___
	%aux29721 = add i32 0, 100
	%aux29722 = load i32, i32* @Pivot79
	%aux29723 = sub i32 %aux29721, %aux29722
	%aux29724 = load i32, i32* @IdPos79
	%aux29725 = icmp eq i32 %aux29723, %aux29724
	br i1 %aux29725, label %etiq13989, label %etiq13990
	
	etiq13989:
	;___Asignación___
	%aux29727 = load i32, i32* @_Acum157
	%aux29728 = add i32 0, 1
	%aux29729 = add i32 %aux29727, %aux29728
	store i32 %aux29729, i32* @_Acum157
	br label %etiq13993
	
	etiq13993:
	;___Asignación___
	%aux29731 = load i32, i32* @IdPos79
	%aux29732 = add i32 0, 1
	%aux29733 = add i32 %aux29731, %aux29732
	store i32 %aux29733, i32* @IdPos79
	br label %etiq13995
	
	etiq13995:
	;___Asignación___
	%aux29735 = load i32, i32* @Pivot79
	%aux29736 = add i32 0, 1
	%aux29737 = sub i32 %aux29735, %aux29736
	store i32 %aux29737, i32* @Pivot79
	br label %etiq13998
	
	etiq13990:
	;___Asignación___
	%aux29739 = load i32, i32* @IdPos79
	%aux29740 = add i32 0, 1
	%aux29741 = add i32 %aux29739, %aux29740
	store i32 %aux29741, i32* @IdPos79
	br label %etiq13998
	
	etiq13998:
	;___IfElse___
	%aux29743 = add i32 0, 100
	%aux29744 = load i32, i32* @Pivot79
	%aux29745 = sub i32 %aux29743, %aux29744
	%aux29746 = load i32, i32* @IdPos79
	%aux29747 = icmp eq i32 %aux29745, %aux29746
	br i1 %aux29747, label %etiq13999, label %etiq14000
	
	etiq13999:
	;___Asignación___
	%aux29749 = load i32, i32* @_Acum157
	%aux29750 = add i32 0, 1
	%aux29751 = add i32 %aux29749, %aux29750
	store i32 %aux29751, i32* @_Acum157
	br label %etiq14003
	
	etiq14003:
	;___Asignación___
	%aux29753 = load i32, i32* @IdPos79
	%aux29754 = add i32 0, 1
	%aux29755 = add i32 %aux29753, %aux29754
	store i32 %aux29755, i32* @IdPos79
	br label %etiq14005
	
	etiq14005:
	;___Asignación___
	%aux29757 = load i32, i32* @Pivot79
	%aux29758 = add i32 0, 1
	%aux29759 = sub i32 %aux29757, %aux29758
	store i32 %aux29759, i32* @Pivot79
	br label %etiq14008
	
	etiq14000:
	;___Asignación___
	%aux29761 = load i32, i32* @IdPos79
	%aux29762 = add i32 0, 1
	%aux29763 = add i32 %aux29761, %aux29762
	store i32 %aux29763, i32* @IdPos79
	br label %etiq14008
	
	etiq14008:
	;___IfElse___
	%aux29765 = add i32 0, 100
	%aux29766 = load i32, i32* @Pivot79
	%aux29767 = sub i32 %aux29765, %aux29766
	%aux29768 = load i32, i32* @IdPos79
	%aux29769 = icmp eq i32 %aux29767, %aux29768
	br i1 %aux29769, label %etiq14009, label %etiq14010
	
	etiq14009:
	;___Asignación___
	%aux29771 = load i32, i32* @_Acum157
	%aux29772 = add i32 0, 1
	%aux29773 = add i32 %aux29771, %aux29772
	store i32 %aux29773, i32* @_Acum157
	br label %etiq14013
	
	etiq14013:
	;___Asignación___
	%aux29775 = load i32, i32* @IdPos79
	%aux29776 = add i32 0, 1
	%aux29777 = add i32 %aux29775, %aux29776
	store i32 %aux29777, i32* @IdPos79
	br label %etiq14015
	
	etiq14015:
	;___Asignación___
	%aux29779 = load i32, i32* @Pivot79
	%aux29780 = add i32 0, 1
	%aux29781 = sub i32 %aux29779, %aux29780
	store i32 %aux29781, i32* @Pivot79
	br label %etiq14018
	
	etiq14010:
	;___Asignación___
	%aux29783 = load i32, i32* @IdPos79
	%aux29784 = add i32 0, 1
	%aux29785 = add i32 %aux29783, %aux29784
	store i32 %aux29785, i32* @IdPos79
	br label %etiq14018
	
	etiq14018:
	;___IfElse___
	%aux29787 = add i32 0, 100
	%aux29788 = load i32, i32* @Pivot79
	%aux29789 = sub i32 %aux29787, %aux29788
	%aux29790 = load i32, i32* @IdPos79
	%aux29791 = icmp eq i32 %aux29789, %aux29790
	br i1 %aux29791, label %etiq14019, label %etiq14020
	
	etiq14019:
	;___Asignación___
	%aux29793 = load i32, i32* @_Acum157
	%aux29794 = add i32 0, 1
	%aux29795 = add i32 %aux29793, %aux29794
	store i32 %aux29795, i32* @_Acum157
	br label %etiq14023
	
	etiq14023:
	;___Asignación___
	%aux29797 = load i32, i32* @IdPos79
	%aux29798 = add i32 0, 1
	%aux29799 = add i32 %aux29797, %aux29798
	store i32 %aux29799, i32* @IdPos79
	br label %etiq14025
	
	etiq14025:
	;___Asignación___
	%aux29801 = load i32, i32* @Pivot79
	%aux29802 = add i32 0, 1
	%aux29803 = sub i32 %aux29801, %aux29802
	store i32 %aux29803, i32* @Pivot79
	br label %etiq14028
	
	etiq14020:
	;___Asignación___
	%aux29805 = load i32, i32* @IdPos79
	%aux29806 = add i32 0, 1
	%aux29807 = add i32 %aux29805, %aux29806
	store i32 %aux29807, i32* @IdPos79
	br label %etiq14028
	
	etiq14028:
	;___IfElse___
	%aux29809 = add i32 0, 100
	%aux29810 = load i32, i32* @Pivot79
	%aux29811 = sub i32 %aux29809, %aux29810
	%aux29812 = load i32, i32* @IdPos79
	%aux29813 = icmp eq i32 %aux29811, %aux29812
	br i1 %aux29813, label %etiq14029, label %etiq14030
	
	etiq14029:
	;___Asignación___
	%aux29815 = load i32, i32* @_Acum157
	%aux29816 = add i32 0, 1
	%aux29817 = add i32 %aux29815, %aux29816
	store i32 %aux29817, i32* @_Acum157
	br label %etiq14033
	
	etiq14033:
	;___Asignación___
	%aux29819 = load i32, i32* @IdPos79
	%aux29820 = add i32 0, 1
	%aux29821 = add i32 %aux29819, %aux29820
	store i32 %aux29821, i32* @IdPos79
	br label %etiq14035
	
	etiq14035:
	;___Asignación___
	%aux29823 = load i32, i32* @Pivot79
	%aux29824 = add i32 0, 1
	%aux29825 = sub i32 %aux29823, %aux29824
	store i32 %aux29825, i32* @Pivot79
	br label %etiq14038
	
	etiq14030:
	;___Asignación___
	%aux29827 = load i32, i32* @IdPos79
	%aux29828 = add i32 0, 1
	%aux29829 = add i32 %aux29827, %aux29828
	store i32 %aux29829, i32* @IdPos79
	br label %etiq14038
	
	etiq14038:
	;___IfElse___
	%aux29831 = add i32 0, 100
	%aux29832 = load i32, i32* @Pivot79
	%aux29833 = sub i32 %aux29831, %aux29832
	%aux29834 = load i32, i32* @IdPos79
	%aux29835 = icmp eq i32 %aux29833, %aux29834
	br i1 %aux29835, label %etiq14039, label %etiq14040
	
	etiq14039:
	;___Asignación___
	%aux29837 = load i32, i32* @_Acum157
	%aux29838 = add i32 0, 1
	%aux29839 = add i32 %aux29837, %aux29838
	store i32 %aux29839, i32* @_Acum157
	br label %etiq14043
	
	etiq14043:
	;___Asignación___
	%aux29841 = load i32, i32* @IdPos79
	%aux29842 = add i32 0, 1
	%aux29843 = add i32 %aux29841, %aux29842
	store i32 %aux29843, i32* @IdPos79
	br label %etiq14045
	
	etiq14045:
	;___Asignación___
	%aux29845 = load i32, i32* @Pivot79
	%aux29846 = add i32 0, 1
	%aux29847 = sub i32 %aux29845, %aux29846
	store i32 %aux29847, i32* @Pivot79
	br label %etiq14048
	
	etiq14040:
	;___Asignación___
	%aux29849 = load i32, i32* @IdPos79
	%aux29850 = add i32 0, 1
	%aux29851 = add i32 %aux29849, %aux29850
	store i32 %aux29851, i32* @IdPos79
	br label %etiq14048
	
	etiq14048:
	;___IfElse___
	%aux29853 = add i32 0, 100
	%aux29854 = load i32, i32* @Pivot79
	%aux29855 = sub i32 %aux29853, %aux29854
	%aux29856 = load i32, i32* @IdPos79
	%aux29857 = icmp eq i32 %aux29855, %aux29856
	br i1 %aux29857, label %etiq14049, label %etiq14050
	
	etiq14049:
	;___Asignación___
	%aux29859 = load i32, i32* @_Acum157
	%aux29860 = add i32 0, 1
	%aux29861 = add i32 %aux29859, %aux29860
	store i32 %aux29861, i32* @_Acum157
	br label %etiq14053
	
	etiq14053:
	;___Asignación___
	%aux29863 = load i32, i32* @IdPos79
	%aux29864 = add i32 0, 1
	%aux29865 = add i32 %aux29863, %aux29864
	store i32 %aux29865, i32* @IdPos79
	br label %etiq14055
	
	etiq14055:
	;___Asignación___
	%aux29867 = load i32, i32* @Pivot79
	%aux29868 = add i32 0, 1
	%aux29869 = sub i32 %aux29867, %aux29868
	store i32 %aux29869, i32* @Pivot79
	br label %etiq14058
	
	etiq14050:
	;___Asignación___
	%aux29871 = load i32, i32* @IdPos79
	%aux29872 = add i32 0, 1
	%aux29873 = add i32 %aux29871, %aux29872
	store i32 %aux29873, i32* @IdPos79
	br label %etiq14058
	
	etiq14058:
	;___IfElse___
	%aux29875 = add i32 0, 100
	%aux29876 = load i32, i32* @Pivot79
	%aux29877 = sub i32 %aux29875, %aux29876
	%aux29878 = load i32, i32* @IdPos79
	%aux29879 = icmp eq i32 %aux29877, %aux29878
	br i1 %aux29879, label %etiq14059, label %etiq14060
	
	etiq14059:
	;___Asignación___
	%aux29881 = load i32, i32* @_Acum157
	%aux29882 = add i32 0, 1
	%aux29883 = add i32 %aux29881, %aux29882
	store i32 %aux29883, i32* @_Acum157
	br label %etiq14063
	
	etiq14063:
	;___Asignación___
	%aux29885 = load i32, i32* @IdPos79
	%aux29886 = add i32 0, 1
	%aux29887 = add i32 %aux29885, %aux29886
	store i32 %aux29887, i32* @IdPos79
	br label %etiq14065
	
	etiq14065:
	;___Asignación___
	%aux29889 = load i32, i32* @Pivot79
	%aux29890 = add i32 0, 1
	%aux29891 = sub i32 %aux29889, %aux29890
	store i32 %aux29891, i32* @Pivot79
	br label %etiq14068
	
	etiq14060:
	;___Asignación___
	%aux29893 = load i32, i32* @IdPos79
	%aux29894 = add i32 0, 1
	%aux29895 = add i32 %aux29893, %aux29894
	store i32 %aux29895, i32* @IdPos79
	br label %etiq14068
	
	etiq14068:
	;___IfElse___
	%aux29897 = add i32 0, 100
	%aux29898 = load i32, i32* @Pivot79
	%aux29899 = sub i32 %aux29897, %aux29898
	%aux29900 = load i32, i32* @IdPos79
	%aux29901 = icmp eq i32 %aux29899, %aux29900
	br i1 %aux29901, label %etiq14069, label %etiq14070
	
	etiq14069:
	;___Asignación___
	%aux29903 = load i32, i32* @_Acum157
	%aux29904 = add i32 0, 1
	%aux29905 = add i32 %aux29903, %aux29904
	store i32 %aux29905, i32* @_Acum157
	br label %etiq14073
	
	etiq14073:
	;___Asignación___
	%aux29907 = load i32, i32* @IdPos79
	%aux29908 = add i32 0, 1
	%aux29909 = add i32 %aux29907, %aux29908
	store i32 %aux29909, i32* @IdPos79
	br label %etiq14075
	
	etiq14075:
	;___Asignación___
	%aux29911 = load i32, i32* @Pivot79
	%aux29912 = add i32 0, 1
	%aux29913 = sub i32 %aux29911, %aux29912
	store i32 %aux29913, i32* @Pivot79
	br label %etiq14078
	
	etiq14070:
	;___Asignación___
	%aux29915 = load i32, i32* @IdPos79
	%aux29916 = add i32 0, 1
	%aux29917 = add i32 %aux29915, %aux29916
	store i32 %aux29917, i32* @IdPos79
	br label %etiq14078
	
	etiq14078:
	;___IfElse___
	%aux29919 = add i32 0, 100
	%aux29920 = load i32, i32* @Pivot79
	%aux29921 = sub i32 %aux29919, %aux29920
	%aux29922 = load i32, i32* @IdPos79
	%aux29923 = icmp eq i32 %aux29921, %aux29922
	br i1 %aux29923, label %etiq14079, label %etiq14080
	
	etiq14079:
	;___Asignación___
	%aux29925 = load i32, i32* @_Acum157
	%aux29926 = add i32 0, 1
	%aux29927 = add i32 %aux29925, %aux29926
	store i32 %aux29927, i32* @_Acum157
	br label %etiq14083
	
	etiq14083:
	;___Asignación___
	%aux29929 = load i32, i32* @IdPos79
	%aux29930 = add i32 0, 1
	%aux29931 = add i32 %aux29929, %aux29930
	store i32 %aux29931, i32* @IdPos79
	br label %etiq14085
	
	etiq14085:
	;___Asignación___
	%aux29933 = load i32, i32* @Pivot79
	%aux29934 = add i32 0, 1
	%aux29935 = sub i32 %aux29933, %aux29934
	store i32 %aux29935, i32* @Pivot79
	br label %etiq14088
	
	etiq14080:
	;___Asignación___
	%aux29937 = load i32, i32* @IdPos79
	%aux29938 = add i32 0, 1
	%aux29939 = add i32 %aux29937, %aux29938
	store i32 %aux29939, i32* @IdPos79
	br label %etiq14088
	
	etiq14088:
	;___IfElse___
	%aux29941 = add i32 0, 100
	%aux29942 = load i32, i32* @Pivot79
	%aux29943 = sub i32 %aux29941, %aux29942
	%aux29944 = load i32, i32* @IdPos79
	%aux29945 = icmp eq i32 %aux29943, %aux29944
	br i1 %aux29945, label %etiq14089, label %etiq14090
	
	etiq14089:
	;___Asignación___
	%aux29947 = load i32, i32* @_Acum157
	%aux29948 = add i32 0, 1
	%aux29949 = add i32 %aux29947, %aux29948
	store i32 %aux29949, i32* @_Acum157
	br label %etiq14093
	
	etiq14093:
	;___Asignación___
	%aux29951 = load i32, i32* @IdPos79
	%aux29952 = add i32 0, 1
	%aux29953 = add i32 %aux29951, %aux29952
	store i32 %aux29953, i32* @IdPos79
	br label %etiq14095
	
	etiq14095:
	;___Asignación___
	%aux29955 = load i32, i32* @Pivot79
	%aux29956 = add i32 0, 1
	%aux29957 = sub i32 %aux29955, %aux29956
	store i32 %aux29957, i32* @Pivot79
	br label %etiq14098
	
	etiq14090:
	;___Asignación___
	%aux29959 = load i32, i32* @IdPos79
	%aux29960 = add i32 0, 1
	%aux29961 = add i32 %aux29959, %aux29960
	store i32 %aux29961, i32* @IdPos79
	br label %etiq14098
	
	etiq14098:
	;___IfElse___
	%aux29963 = add i32 0, 100
	%aux29964 = load i32, i32* @Pivot79
	%aux29965 = sub i32 %aux29963, %aux29964
	%aux29966 = load i32, i32* @IdPos79
	%aux29967 = icmp eq i32 %aux29965, %aux29966
	br i1 %aux29967, label %etiq14099, label %etiq14100
	
	etiq14099:
	;___Asignación___
	%aux29969 = load i32, i32* @_Acum157
	%aux29970 = add i32 0, 1
	%aux29971 = add i32 %aux29969, %aux29970
	store i32 %aux29971, i32* @_Acum157
	br label %etiq14103
	
	etiq14103:
	;___Asignación___
	%aux29973 = load i32, i32* @IdPos79
	%aux29974 = add i32 0, 1
	%aux29975 = add i32 %aux29973, %aux29974
	store i32 %aux29975, i32* @IdPos79
	br label %etiq14105
	
	etiq14105:
	;___Asignación___
	%aux29977 = load i32, i32* @Pivot79
	%aux29978 = add i32 0, 1
	%aux29979 = sub i32 %aux29977, %aux29978
	store i32 %aux29979, i32* @Pivot79
	br label %etiq14108
	
	etiq14100:
	;___Asignación___
	%aux29981 = load i32, i32* @IdPos79
	%aux29982 = add i32 0, 1
	%aux29983 = add i32 %aux29981, %aux29982
	store i32 %aux29983, i32* @IdPos79
	br label %etiq14108
	
	etiq14108:
	;___IfElse___
	%aux29985 = add i32 0, 100
	%aux29986 = load i32, i32* @Pivot79
	%aux29987 = sub i32 %aux29985, %aux29986
	%aux29988 = load i32, i32* @IdPos79
	%aux29989 = icmp eq i32 %aux29987, %aux29988
	br i1 %aux29989, label %etiq14109, label %etiq14110
	
	etiq14109:
	;___Asignación___
	%aux29991 = load i32, i32* @_Acum157
	%aux29992 = add i32 0, 1
	%aux29993 = add i32 %aux29991, %aux29992
	store i32 %aux29993, i32* @_Acum157
	br label %etiq14113
	
	etiq14113:
	;___Asignación___
	%aux29995 = load i32, i32* @IdPos79
	%aux29996 = add i32 0, 1
	%aux29997 = add i32 %aux29995, %aux29996
	store i32 %aux29997, i32* @IdPos79
	br label %etiq14115
	
	etiq14115:
	;___Asignación___
	%aux29999 = load i32, i32* @Pivot79
	%aux30000 = add i32 0, 1
	%aux30001 = sub i32 %aux29999, %aux30000
	store i32 %aux30001, i32* @Pivot79
	br label %etiq14118
	
	etiq14110:
	;___Asignación___
	%aux30003 = load i32, i32* @IdPos79
	%aux30004 = add i32 0, 1
	%aux30005 = add i32 %aux30003, %aux30004
	store i32 %aux30005, i32* @IdPos79
	br label %etiq14118
	
	etiq14118:
	;___IfElse___
	%aux30007 = add i32 0, 100
	%aux30008 = load i32, i32* @Pivot79
	%aux30009 = sub i32 %aux30007, %aux30008
	%aux30010 = load i32, i32* @IdPos79
	%aux30011 = icmp eq i32 %aux30009, %aux30010
	br i1 %aux30011, label %etiq14119, label %etiq14120
	
	etiq14119:
	;___Asignación___
	%aux30013 = load i32, i32* @_Acum157
	%aux30014 = add i32 0, 1
	%aux30015 = add i32 %aux30013, %aux30014
	store i32 %aux30015, i32* @_Acum157
	br label %etiq14123
	
	etiq14123:
	;___Asignación___
	%aux30017 = load i32, i32* @IdPos79
	%aux30018 = add i32 0, 1
	%aux30019 = add i32 %aux30017, %aux30018
	store i32 %aux30019, i32* @IdPos79
	br label %etiq14125
	
	etiq14125:
	;___Asignación___
	%aux30021 = load i32, i32* @Pivot79
	%aux30022 = add i32 0, 1
	%aux30023 = sub i32 %aux30021, %aux30022
	store i32 %aux30023, i32* @Pivot79
	br label %etiq14128
	
	etiq14120:
	;___Asignación___
	%aux30025 = load i32, i32* @IdPos79
	%aux30026 = add i32 0, 1
	%aux30027 = add i32 %aux30025, %aux30026
	store i32 %aux30027, i32* @IdPos79
	br label %etiq14128
	
	etiq14128:
	;___IfElse___
	%aux30029 = add i32 0, 100
	%aux30030 = load i32, i32* @Pivot79
	%aux30031 = sub i32 %aux30029, %aux30030
	%aux30032 = load i32, i32* @IdPos79
	%aux30033 = icmp eq i32 %aux30031, %aux30032
	br i1 %aux30033, label %etiq14129, label %etiq14130
	
	etiq14129:
	;___Asignación___
	%aux30035 = load i32, i32* @_Acum157
	%aux30036 = add i32 0, 1
	%aux30037 = add i32 %aux30035, %aux30036
	store i32 %aux30037, i32* @_Acum157
	br label %etiq14133
	
	etiq14133:
	;___Asignación___
	%aux30039 = load i32, i32* @IdPos79
	%aux30040 = add i32 0, 1
	%aux30041 = add i32 %aux30039, %aux30040
	store i32 %aux30041, i32* @IdPos79
	br label %etiq14135
	
	etiq14135:
	;___Asignación___
	%aux30043 = load i32, i32* @Pivot79
	%aux30044 = add i32 0, 1
	%aux30045 = sub i32 %aux30043, %aux30044
	store i32 %aux30045, i32* @Pivot79
	br label %etiq14138
	
	etiq14130:
	;___Asignación___
	%aux30047 = load i32, i32* @IdPos79
	%aux30048 = add i32 0, 1
	%aux30049 = add i32 %aux30047, %aux30048
	store i32 %aux30049, i32* @IdPos79
	br label %etiq14138
	
	etiq14138:
	;___IfElse___
	%aux30051 = add i32 0, 100
	%aux30052 = load i32, i32* @Pivot79
	%aux30053 = sub i32 %aux30051, %aux30052
	%aux30054 = load i32, i32* @IdPos79
	%aux30055 = icmp eq i32 %aux30053, %aux30054
	br i1 %aux30055, label %etiq14139, label %etiq14140
	
	etiq14139:
	;___Asignación___
	%aux30057 = load i32, i32* @_Acum157
	%aux30058 = add i32 0, 1
	%aux30059 = add i32 %aux30057, %aux30058
	store i32 %aux30059, i32* @_Acum157
	br label %etiq14143
	
	etiq14143:
	;___Asignación___
	%aux30061 = load i32, i32* @IdPos79
	%aux30062 = add i32 0, 1
	%aux30063 = add i32 %aux30061, %aux30062
	store i32 %aux30063, i32* @IdPos79
	br label %etiq14145
	
	etiq14145:
	;___Asignación___
	%aux30065 = load i32, i32* @Pivot79
	%aux30066 = add i32 0, 1
	%aux30067 = sub i32 %aux30065, %aux30066
	store i32 %aux30067, i32* @Pivot79
	br label %etiq14148
	
	etiq14140:
	;___Asignación___
	%aux30069 = load i32, i32* @IdPos79
	%aux30070 = add i32 0, 1
	%aux30071 = add i32 %aux30069, %aux30070
	store i32 %aux30071, i32* @IdPos79
	br label %etiq14148
	
	etiq14148:
	;___IfElse___
	%aux30073 = add i32 0, 100
	%aux30074 = load i32, i32* @Pivot79
	%aux30075 = sub i32 %aux30073, %aux30074
	%aux30076 = load i32, i32* @IdPos79
	%aux30077 = icmp eq i32 %aux30075, %aux30076
	br i1 %aux30077, label %etiq14149, label %etiq14150
	
	etiq14149:
	;___Asignación___
	%aux30079 = load i32, i32* @_Acum157
	%aux30080 = add i32 0, 1
	%aux30081 = add i32 %aux30079, %aux30080
	store i32 %aux30081, i32* @_Acum157
	br label %etiq14153
	
	etiq14153:
	;___Asignación___
	%aux30083 = load i32, i32* @IdPos79
	%aux30084 = add i32 0, 1
	%aux30085 = add i32 %aux30083, %aux30084
	store i32 %aux30085, i32* @IdPos79
	br label %etiq14155
	
	etiq14155:
	;___Asignación___
	%aux30087 = load i32, i32* @Pivot79
	%aux30088 = add i32 0, 1
	%aux30089 = sub i32 %aux30087, %aux30088
	store i32 %aux30089, i32* @Pivot79
	br label %etiq14158
	
	etiq14150:
	;___Asignación___
	%aux30091 = load i32, i32* @IdPos79
	%aux30092 = add i32 0, 1
	%aux30093 = add i32 %aux30091, %aux30092
	store i32 %aux30093, i32* @IdPos79
	br label %etiq14158
	
	etiq14158:
	;___IfElse___
	%aux30095 = add i32 0, 100
	%aux30096 = load i32, i32* @Pivot79
	%aux30097 = sub i32 %aux30095, %aux30096
	%aux30098 = load i32, i32* @IdPos79
	%aux30099 = icmp eq i32 %aux30097, %aux30098
	br i1 %aux30099, label %etiq14159, label %etiq14160
	
	etiq14159:
	;___Asignación___
	%aux30101 = load i32, i32* @_Acum157
	%aux30102 = add i32 0, 1
	%aux30103 = add i32 %aux30101, %aux30102
	store i32 %aux30103, i32* @_Acum157
	br label %etiq14163
	
	etiq14163:
	;___Asignación___
	%aux30105 = load i32, i32* @IdPos79
	%aux30106 = add i32 0, 1
	%aux30107 = add i32 %aux30105, %aux30106
	store i32 %aux30107, i32* @IdPos79
	br label %etiq14165
	
	etiq14165:
	;___Asignación___
	%aux30109 = load i32, i32* @Pivot79
	%aux30110 = add i32 0, 1
	%aux30111 = sub i32 %aux30109, %aux30110
	store i32 %aux30111, i32* @Pivot79
	br label %etiq14168
	
	etiq14160:
	;___Asignación___
	%aux30113 = load i32, i32* @IdPos79
	%aux30114 = add i32 0, 1
	%aux30115 = add i32 %aux30113, %aux30114
	store i32 %aux30115, i32* @IdPos79
	br label %etiq14168
	
	etiq14168:
	;___IfElse___
	%aux30117 = add i32 0, 100
	%aux30118 = load i32, i32* @Pivot79
	%aux30119 = sub i32 %aux30117, %aux30118
	%aux30120 = load i32, i32* @IdPos79
	%aux30121 = icmp eq i32 %aux30119, %aux30120
	br i1 %aux30121, label %etiq14169, label %etiq14170
	
	etiq14169:
	;___Asignación___
	%aux30123 = load i32, i32* @_Acum157
	%aux30124 = add i32 0, 1
	%aux30125 = add i32 %aux30123, %aux30124
	store i32 %aux30125, i32* @_Acum157
	br label %etiq14173
	
	etiq14173:
	;___Asignación___
	%aux30127 = load i32, i32* @IdPos79
	%aux30128 = add i32 0, 1
	%aux30129 = add i32 %aux30127, %aux30128
	store i32 %aux30129, i32* @IdPos79
	br label %etiq14175
	
	etiq14175:
	;___Asignación___
	%aux30131 = load i32, i32* @Pivot79
	%aux30132 = add i32 0, 1
	%aux30133 = sub i32 %aux30131, %aux30132
	store i32 %aux30133, i32* @Pivot79
	br label %etiq14178
	
	etiq14170:
	;___Asignación___
	%aux30135 = load i32, i32* @IdPos79
	%aux30136 = add i32 0, 1
	%aux30137 = add i32 %aux30135, %aux30136
	store i32 %aux30137, i32* @IdPos79
	br label %etiq14178
	
	etiq14178:
	;___IfElse___
	%aux30139 = add i32 0, 100
	%aux30140 = load i32, i32* @Pivot79
	%aux30141 = sub i32 %aux30139, %aux30140
	%aux30142 = load i32, i32* @IdPos79
	%aux30143 = icmp eq i32 %aux30141, %aux30142
	br i1 %aux30143, label %etiq14179, label %etiq14180
	
	etiq14179:
	;___Asignación___
	%aux30145 = load i32, i32* @_Acum157
	%aux30146 = add i32 0, 1
	%aux30147 = add i32 %aux30145, %aux30146
	store i32 %aux30147, i32* @_Acum157
	br label %etiq14183
	
	etiq14183:
	;___Asignación___
	%aux30149 = load i32, i32* @IdPos79
	%aux30150 = add i32 0, 1
	%aux30151 = add i32 %aux30149, %aux30150
	store i32 %aux30151, i32* @IdPos79
	br label %etiq14185
	
	etiq14185:
	;___Asignación___
	%aux30153 = load i32, i32* @Pivot79
	%aux30154 = add i32 0, 1
	%aux30155 = sub i32 %aux30153, %aux30154
	store i32 %aux30155, i32* @Pivot79
	br label %etiq14188
	
	etiq14180:
	;___Asignación___
	%aux30157 = load i32, i32* @IdPos79
	%aux30158 = add i32 0, 1
	%aux30159 = add i32 %aux30157, %aux30158
	store i32 %aux30159, i32* @IdPos79
	br label %etiq14188
	
	etiq14188:
	;___IfElse___
	%aux30161 = add i32 0, 100
	%aux30162 = load i32, i32* @Pivot79
	%aux30163 = sub i32 %aux30161, %aux30162
	%aux30164 = load i32, i32* @IdPos79
	%aux30165 = icmp eq i32 %aux30163, %aux30164
	br i1 %aux30165, label %etiq14189, label %etiq14190
	
	etiq14189:
	;___Asignación___
	%aux30167 = load i32, i32* @_Acum157
	%aux30168 = add i32 0, 1
	%aux30169 = add i32 %aux30167, %aux30168
	store i32 %aux30169, i32* @_Acum157
	br label %etiq14193
	
	etiq14193:
	;___Asignación___
	%aux30171 = load i32, i32* @IdPos79
	%aux30172 = add i32 0, 1
	%aux30173 = add i32 %aux30171, %aux30172
	store i32 %aux30173, i32* @IdPos79
	br label %etiq14195
	
	etiq14195:
	;___Asignación___
	%aux30175 = load i32, i32* @Pivot79
	%aux30176 = add i32 0, 1
	%aux30177 = sub i32 %aux30175, %aux30176
	store i32 %aux30177, i32* @Pivot79
	br label %etiq14198
	
	etiq14190:
	;___Asignación___
	%aux30179 = load i32, i32* @IdPos79
	%aux30180 = add i32 0, 1
	%aux30181 = add i32 %aux30179, %aux30180
	store i32 %aux30181, i32* @IdPos79
	br label %etiq14198
	
	etiq14198:
	;___IfElse___
	%aux30183 = add i32 0, 100
	%aux30184 = load i32, i32* @Pivot79
	%aux30185 = sub i32 %aux30183, %aux30184
	%aux30186 = load i32, i32* @IdPos79
	%aux30187 = icmp eq i32 %aux30185, %aux30186
	br i1 %aux30187, label %etiq14199, label %etiq14200
	
	etiq14199:
	;___Asignación___
	%aux30189 = load i32, i32* @_Acum157
	%aux30190 = add i32 0, 1
	%aux30191 = add i32 %aux30189, %aux30190
	store i32 %aux30191, i32* @_Acum157
	br label %etiq14203
	
	etiq14203:
	;___Asignación___
	%aux30193 = load i32, i32* @IdPos79
	%aux30194 = add i32 0, 1
	%aux30195 = add i32 %aux30193, %aux30194
	store i32 %aux30195, i32* @IdPos79
	br label %etiq14205
	
	etiq14205:
	;___Asignación___
	%aux30197 = load i32, i32* @Pivot79
	%aux30198 = add i32 0, 1
	%aux30199 = sub i32 %aux30197, %aux30198
	store i32 %aux30199, i32* @Pivot79
	br label %etiq14208
	
	etiq14200:
	;___Asignación___
	%aux30201 = load i32, i32* @IdPos79
	%aux30202 = add i32 0, 1
	%aux30203 = add i32 %aux30201, %aux30202
	store i32 %aux30203, i32* @IdPos79
	br label %etiq14208
	
	etiq14208:
	;___IfElse___
	%aux30205 = add i32 0, 100
	%aux30206 = load i32, i32* @Pivot79
	%aux30207 = sub i32 %aux30205, %aux30206
	%aux30208 = load i32, i32* @IdPos79
	%aux30209 = icmp eq i32 %aux30207, %aux30208
	br i1 %aux30209, label %etiq14209, label %etiq14210
	
	etiq14209:
	;___Asignación___
	%aux30211 = load i32, i32* @_Acum157
	%aux30212 = add i32 0, 1
	%aux30213 = add i32 %aux30211, %aux30212
	store i32 %aux30213, i32* @_Acum157
	br label %etiq14213
	
	etiq14213:
	;___Asignación___
	%aux30215 = load i32, i32* @IdPos79
	%aux30216 = add i32 0, 1
	%aux30217 = add i32 %aux30215, %aux30216
	store i32 %aux30217, i32* @IdPos79
	br label %etiq14215
	
	etiq14215:
	;___Asignación___
	%aux30219 = load i32, i32* @Pivot79
	%aux30220 = add i32 0, 1
	%aux30221 = sub i32 %aux30219, %aux30220
	store i32 %aux30221, i32* @Pivot79
	br label %etiq14218
	
	etiq14210:
	;___Asignación___
	%aux30223 = load i32, i32* @IdPos79
	%aux30224 = add i32 0, 1
	%aux30225 = add i32 %aux30223, %aux30224
	store i32 %aux30225, i32* @IdPos79
	br label %etiq14218
	
	etiq14218:
	;___IfElse___
	%aux30227 = add i32 0, 100
	%aux30228 = load i32, i32* @Pivot79
	%aux30229 = sub i32 %aux30227, %aux30228
	%aux30230 = load i32, i32* @IdPos79
	%aux30231 = icmp eq i32 %aux30229, %aux30230
	br i1 %aux30231, label %etiq14219, label %etiq14220
	
	etiq14219:
	;___Asignación___
	%aux30233 = load i32, i32* @_Acum157
	%aux30234 = add i32 0, 1
	%aux30235 = add i32 %aux30233, %aux30234
	store i32 %aux30235, i32* @_Acum157
	br label %etiq14223
	
	etiq14223:
	;___Asignación___
	%aux30237 = load i32, i32* @IdPos79
	%aux30238 = add i32 0, 1
	%aux30239 = add i32 %aux30237, %aux30238
	store i32 %aux30239, i32* @IdPos79
	br label %etiq14225
	
	etiq14225:
	;___Asignación___
	%aux30241 = load i32, i32* @Pivot79
	%aux30242 = add i32 0, 1
	%aux30243 = sub i32 %aux30241, %aux30242
	store i32 %aux30243, i32* @Pivot79
	br label %etiq14228
	
	etiq14220:
	;___Asignación___
	%aux30245 = load i32, i32* @IdPos79
	%aux30246 = add i32 0, 1
	%aux30247 = add i32 %aux30245, %aux30246
	store i32 %aux30247, i32* @IdPos79
	br label %etiq14228
	
	etiq14228:
	;___IfElse___
	%aux30249 = add i32 0, 100
	%aux30250 = load i32, i32* @Pivot79
	%aux30251 = sub i32 %aux30249, %aux30250
	%aux30252 = load i32, i32* @IdPos79
	%aux30253 = icmp eq i32 %aux30251, %aux30252
	br i1 %aux30253, label %etiq14229, label %etiq14230
	
	etiq14229:
	;___Asignación___
	%aux30255 = load i32, i32* @_Acum157
	%aux30256 = add i32 0, 1
	%aux30257 = add i32 %aux30255, %aux30256
	store i32 %aux30257, i32* @_Acum157
	br label %etiq14233
	
	etiq14233:
	;___Asignación___
	%aux30259 = load i32, i32* @IdPos79
	%aux30260 = add i32 0, 1
	%aux30261 = add i32 %aux30259, %aux30260
	store i32 %aux30261, i32* @IdPos79
	br label %etiq14235
	
	etiq14235:
	;___Asignación___
	%aux30263 = load i32, i32* @Pivot79
	%aux30264 = add i32 0, 1
	%aux30265 = sub i32 %aux30263, %aux30264
	store i32 %aux30265, i32* @Pivot79
	br label %etiq14238
	
	etiq14230:
	;___Asignación___
	%aux30267 = load i32, i32* @IdPos79
	%aux30268 = add i32 0, 1
	%aux30269 = add i32 %aux30267, %aux30268
	store i32 %aux30269, i32* @IdPos79
	br label %etiq14238
	
	etiq14238:
	;___IfElse___
	%aux30271 = add i32 0, 100
	%aux30272 = load i32, i32* @Pivot79
	%aux30273 = sub i32 %aux30271, %aux30272
	%aux30274 = load i32, i32* @IdPos79
	%aux30275 = icmp eq i32 %aux30273, %aux30274
	br i1 %aux30275, label %etiq14239, label %etiq14240
	
	etiq14239:
	;___Asignación___
	%aux30277 = load i32, i32* @_Acum157
	%aux30278 = add i32 0, 1
	%aux30279 = add i32 %aux30277, %aux30278
	store i32 %aux30279, i32* @_Acum157
	br label %etiq14243
	
	etiq14243:
	;___Asignación___
	%aux30281 = load i32, i32* @IdPos79
	%aux30282 = add i32 0, 1
	%aux30283 = add i32 %aux30281, %aux30282
	store i32 %aux30283, i32* @IdPos79
	br label %etiq14245
	
	etiq14245:
	;___Asignación___
	%aux30285 = load i32, i32* @Pivot79
	%aux30286 = add i32 0, 1
	%aux30287 = sub i32 %aux30285, %aux30286
	store i32 %aux30287, i32* @Pivot79
	br label %etiq14248
	
	etiq14240:
	;___Asignación___
	%aux30289 = load i32, i32* @IdPos79
	%aux30290 = add i32 0, 1
	%aux30291 = add i32 %aux30289, %aux30290
	store i32 %aux30291, i32* @IdPos79
	br label %etiq14248
	
	etiq14248:
	;___IfElse___
	%aux30293 = add i32 0, 100
	%aux30294 = load i32, i32* @Pivot79
	%aux30295 = sub i32 %aux30293, %aux30294
	%aux30296 = load i32, i32* @IdPos79
	%aux30297 = icmp eq i32 %aux30295, %aux30296
	br i1 %aux30297, label %etiq14249, label %etiq14250
	
	etiq14249:
	;___Asignación___
	%aux30299 = load i32, i32* @_Acum157
	%aux30300 = add i32 0, 1
	%aux30301 = add i32 %aux30299, %aux30300
	store i32 %aux30301, i32* @_Acum157
	br label %etiq14253
	
	etiq14253:
	;___Asignación___
	%aux30303 = load i32, i32* @IdPos79
	%aux30304 = add i32 0, 1
	%aux30305 = add i32 %aux30303, %aux30304
	store i32 %aux30305, i32* @IdPos79
	br label %etiq14255
	
	etiq14255:
	;___Asignación___
	%aux30307 = load i32, i32* @Pivot79
	%aux30308 = add i32 0, 1
	%aux30309 = sub i32 %aux30307, %aux30308
	store i32 %aux30309, i32* @Pivot79
	br label %etiq14258
	
	etiq14250:
	;___Asignación___
	%aux30311 = load i32, i32* @IdPos79
	%aux30312 = add i32 0, 1
	%aux30313 = add i32 %aux30311, %aux30312
	store i32 %aux30313, i32* @IdPos79
	br label %etiq14258
	
	etiq14258:
	;___IfElse___
	%aux30315 = add i32 0, 100
	%aux30316 = load i32, i32* @Pivot79
	%aux30317 = sub i32 %aux30315, %aux30316
	%aux30318 = load i32, i32* @IdPos79
	%aux30319 = icmp eq i32 %aux30317, %aux30318
	br i1 %aux30319, label %etiq14259, label %etiq14260
	
	etiq14259:
	;___Asignación___
	%aux30321 = load i32, i32* @_Acum157
	%aux30322 = add i32 0, 1
	%aux30323 = add i32 %aux30321, %aux30322
	store i32 %aux30323, i32* @_Acum157
	br label %etiq14263
	
	etiq14263:
	;___Asignación___
	%aux30325 = load i32, i32* @IdPos79
	%aux30326 = add i32 0, 1
	%aux30327 = add i32 %aux30325, %aux30326
	store i32 %aux30327, i32* @IdPos79
	br label %etiq14265
	
	etiq14265:
	;___Asignación___
	%aux30329 = load i32, i32* @Pivot79
	%aux30330 = add i32 0, 1
	%aux30331 = sub i32 %aux30329, %aux30330
	store i32 %aux30331, i32* @Pivot79
	br label %etiq14268
	
	etiq14260:
	;___Asignación___
	%aux30333 = load i32, i32* @IdPos79
	%aux30334 = add i32 0, 1
	%aux30335 = add i32 %aux30333, %aux30334
	store i32 %aux30335, i32* @IdPos79
	br label %etiq14268
	
	etiq14268:
	;___IfElse___
	%aux30337 = add i32 0, 100
	%aux30338 = load i32, i32* @Pivot79
	%aux30339 = sub i32 %aux30337, %aux30338
	%aux30340 = load i32, i32* @IdPos79
	%aux30341 = icmp eq i32 %aux30339, %aux30340
	br i1 %aux30341, label %etiq14269, label %etiq14270
	
	etiq14269:
	;___Asignación___
	%aux30343 = load i32, i32* @_Acum157
	%aux30344 = add i32 0, 1
	%aux30345 = add i32 %aux30343, %aux30344
	store i32 %aux30345, i32* @_Acum157
	br label %etiq14273
	
	etiq14273:
	;___Asignación___
	%aux30347 = load i32, i32* @IdPos79
	%aux30348 = add i32 0, 1
	%aux30349 = add i32 %aux30347, %aux30348
	store i32 %aux30349, i32* @IdPos79
	br label %etiq14275
	
	etiq14275:
	;___Asignación___
	%aux30351 = load i32, i32* @Pivot79
	%aux30352 = add i32 0, 1
	%aux30353 = sub i32 %aux30351, %aux30352
	store i32 %aux30353, i32* @Pivot79
	br label %etiq14278
	
	etiq14270:
	;___Asignación___
	%aux30355 = load i32, i32* @IdPos79
	%aux30356 = add i32 0, 1
	%aux30357 = add i32 %aux30355, %aux30356
	store i32 %aux30357, i32* @IdPos79
	br label %etiq14278
	
	etiq14278:
	;___IfElse___
	%aux30359 = add i32 0, 100
	%aux30360 = load i32, i32* @Pivot79
	%aux30361 = sub i32 %aux30359, %aux30360
	%aux30362 = load i32, i32* @IdPos79
	%aux30363 = icmp eq i32 %aux30361, %aux30362
	br i1 %aux30363, label %etiq14279, label %etiq14280
	
	etiq14279:
	;___Asignación___
	%aux30365 = load i32, i32* @_Acum157
	%aux30366 = add i32 0, 1
	%aux30367 = add i32 %aux30365, %aux30366
	store i32 %aux30367, i32* @_Acum157
	br label %etiq14283
	
	etiq14283:
	;___Asignación___
	%aux30369 = load i32, i32* @IdPos79
	%aux30370 = add i32 0, 1
	%aux30371 = add i32 %aux30369, %aux30370
	store i32 %aux30371, i32* @IdPos79
	br label %etiq14285
	
	etiq14285:
	;___Asignación___
	%aux30373 = load i32, i32* @Pivot79
	%aux30374 = add i32 0, 1
	%aux30375 = sub i32 %aux30373, %aux30374
	store i32 %aux30375, i32* @Pivot79
	br label %etiq14288
	
	etiq14280:
	;___Asignación___
	%aux30377 = load i32, i32* @IdPos79
	%aux30378 = add i32 0, 1
	%aux30379 = add i32 %aux30377, %aux30378
	store i32 %aux30379, i32* @IdPos79
	br label %etiq14288
	
	etiq14288:
	;___IfElse___
	%aux30381 = add i32 0, 100
	%aux30382 = load i32, i32* @Pivot79
	%aux30383 = sub i32 %aux30381, %aux30382
	%aux30384 = load i32, i32* @IdPos79
	%aux30385 = icmp eq i32 %aux30383, %aux30384
	br i1 %aux30385, label %etiq14289, label %etiq14290
	
	etiq14289:
	;___Asignación___
	%aux30387 = load i32, i32* @_Acum157
	%aux30388 = add i32 0, 1
	%aux30389 = add i32 %aux30387, %aux30388
	store i32 %aux30389, i32* @_Acum157
	br label %etiq14293
	
	etiq14293:
	;___Asignación___
	%aux30391 = load i32, i32* @IdPos79
	%aux30392 = add i32 0, 1
	%aux30393 = add i32 %aux30391, %aux30392
	store i32 %aux30393, i32* @IdPos79
	br label %etiq14295
	
	etiq14295:
	;___Asignación___
	%aux30395 = load i32, i32* @Pivot79
	%aux30396 = add i32 0, 1
	%aux30397 = sub i32 %aux30395, %aux30396
	store i32 %aux30397, i32* @Pivot79
	br label %etiq14298
	
	etiq14290:
	;___Asignación___
	%aux30399 = load i32, i32* @IdPos79
	%aux30400 = add i32 0, 1
	%aux30401 = add i32 %aux30399, %aux30400
	store i32 %aux30401, i32* @IdPos79
	br label %etiq14298
	
	etiq14298:
	;___IfElse___
	%aux30403 = add i32 0, 100
	%aux30404 = load i32, i32* @Pivot79
	%aux30405 = sub i32 %aux30403, %aux30404
	%aux30406 = load i32, i32* @IdPos79
	%aux30407 = icmp eq i32 %aux30405, %aux30406
	br i1 %aux30407, label %etiq14299, label %etiq14300
	
	etiq14299:
	;___Asignación___
	%aux30409 = load i32, i32* @_Acum157
	%aux30410 = add i32 0, 1
	%aux30411 = add i32 %aux30409, %aux30410
	store i32 %aux30411, i32* @_Acum157
	br label %etiq14303
	
	etiq14303:
	;___Asignación___
	%aux30413 = load i32, i32* @IdPos79
	%aux30414 = add i32 0, 1
	%aux30415 = add i32 %aux30413, %aux30414
	store i32 %aux30415, i32* @IdPos79
	br label %etiq14305
	
	etiq14305:
	;___Asignación___
	%aux30417 = load i32, i32* @Pivot79
	%aux30418 = add i32 0, 1
	%aux30419 = sub i32 %aux30417, %aux30418
	store i32 %aux30419, i32* @Pivot79
	br label %etiq14308
	
	etiq14300:
	;___Asignación___
	%aux30421 = load i32, i32* @IdPos79
	%aux30422 = add i32 0, 1
	%aux30423 = add i32 %aux30421, %aux30422
	store i32 %aux30423, i32* @IdPos79
	br label %etiq14308
	
	etiq14308:
	;___IfElse___
	%aux30425 = add i32 0, 100
	%aux30426 = load i32, i32* @Pivot79
	%aux30427 = sub i32 %aux30425, %aux30426
	%aux30428 = load i32, i32* @IdPos79
	%aux30429 = icmp eq i32 %aux30427, %aux30428
	br i1 %aux30429, label %etiq14309, label %etiq14310
	
	etiq14309:
	;___Asignación___
	%aux30431 = load i32, i32* @_Acum157
	%aux30432 = add i32 0, 1
	%aux30433 = add i32 %aux30431, %aux30432
	store i32 %aux30433, i32* @_Acum157
	br label %etiq14313
	
	etiq14313:
	;___Asignación___
	%aux30435 = load i32, i32* @IdPos79
	%aux30436 = add i32 0, 1
	%aux30437 = add i32 %aux30435, %aux30436
	store i32 %aux30437, i32* @IdPos79
	br label %etiq14315
	
	etiq14315:
	;___Asignación___
	%aux30439 = load i32, i32* @Pivot79
	%aux30440 = add i32 0, 1
	%aux30441 = sub i32 %aux30439, %aux30440
	store i32 %aux30441, i32* @Pivot79
	br label %etiq14318
	
	etiq14310:
	;___Asignación___
	%aux30443 = load i32, i32* @IdPos79
	%aux30444 = add i32 0, 1
	%aux30445 = add i32 %aux30443, %aux30444
	store i32 %aux30445, i32* @IdPos79
	br label %etiq14318
	
	etiq14318:
	;___IfElse___
	%aux30447 = add i32 0, 100
	%aux30448 = load i32, i32* @Pivot79
	%aux30449 = sub i32 %aux30447, %aux30448
	%aux30450 = load i32, i32* @IdPos79
	%aux30451 = icmp eq i32 %aux30449, %aux30450
	br i1 %aux30451, label %etiq14319, label %etiq14320
	
	etiq14319:
	;___Asignación___
	%aux30453 = load i32, i32* @_Acum157
	%aux30454 = add i32 0, 1
	%aux30455 = add i32 %aux30453, %aux30454
	store i32 %aux30455, i32* @_Acum157
	br label %etiq14323
	
	etiq14323:
	;___Asignación___
	%aux30457 = load i32, i32* @IdPos79
	%aux30458 = add i32 0, 1
	%aux30459 = add i32 %aux30457, %aux30458
	store i32 %aux30459, i32* @IdPos79
	br label %etiq14325
	
	etiq14325:
	;___Asignación___
	%aux30461 = load i32, i32* @Pivot79
	%aux30462 = add i32 0, 1
	%aux30463 = sub i32 %aux30461, %aux30462
	store i32 %aux30463, i32* @Pivot79
	br label %etiq14328
	
	etiq14320:
	;___Asignación___
	%aux30465 = load i32, i32* @IdPos79
	%aux30466 = add i32 0, 1
	%aux30467 = add i32 %aux30465, %aux30466
	store i32 %aux30467, i32* @IdPos79
	br label %etiq14328
	
	etiq14328:
	;___IfElse___
	%aux30469 = add i32 0, 100
	%aux30470 = load i32, i32* @Pivot79
	%aux30471 = sub i32 %aux30469, %aux30470
	%aux30472 = load i32, i32* @IdPos79
	%aux30473 = icmp eq i32 %aux30471, %aux30472
	br i1 %aux30473, label %etiq14329, label %etiq14330
	
	etiq14329:
	;___Asignación___
	%aux30475 = load i32, i32* @_Acum157
	%aux30476 = add i32 0, 1
	%aux30477 = add i32 %aux30475, %aux30476
	store i32 %aux30477, i32* @_Acum157
	br label %etiq14333
	
	etiq14333:
	;___Asignación___
	%aux30479 = load i32, i32* @IdPos79
	%aux30480 = add i32 0, 1
	%aux30481 = add i32 %aux30479, %aux30480
	store i32 %aux30481, i32* @IdPos79
	br label %etiq14335
	
	etiq14335:
	;___Asignación___
	%aux30483 = load i32, i32* @Pivot79
	%aux30484 = add i32 0, 1
	%aux30485 = sub i32 %aux30483, %aux30484
	store i32 %aux30485, i32* @Pivot79
	br label %etiq14338
	
	etiq14330:
	;___Asignación___
	%aux30487 = load i32, i32* @IdPos79
	%aux30488 = add i32 0, 1
	%aux30489 = add i32 %aux30487, %aux30488
	store i32 %aux30489, i32* @IdPos79
	br label %etiq14338
	
	etiq14338:
	;___IfElse___
	%aux30491 = add i32 0, 100
	%aux30492 = load i32, i32* @Pivot79
	%aux30493 = sub i32 %aux30491, %aux30492
	%aux30494 = load i32, i32* @IdPos79
	%aux30495 = icmp eq i32 %aux30493, %aux30494
	br i1 %aux30495, label %etiq14339, label %etiq14340
	
	etiq14339:
	;___Asignación___
	%aux30497 = load i32, i32* @_Acum157
	%aux30498 = add i32 0, 1
	%aux30499 = add i32 %aux30497, %aux30498
	store i32 %aux30499, i32* @_Acum157
	br label %etiq14343
	
	etiq14343:
	;___Asignación___
	%aux30501 = load i32, i32* @IdPos79
	%aux30502 = add i32 0, 1
	%aux30503 = add i32 %aux30501, %aux30502
	store i32 %aux30503, i32* @IdPos79
	br label %etiq14345
	
	etiq14345:
	;___Asignación___
	%aux30505 = load i32, i32* @Pivot79
	%aux30506 = add i32 0, 1
	%aux30507 = sub i32 %aux30505, %aux30506
	store i32 %aux30507, i32* @Pivot79
	br label %etiq14348
	
	etiq14340:
	;___Asignación___
	%aux30509 = load i32, i32* @IdPos79
	%aux30510 = add i32 0, 1
	%aux30511 = add i32 %aux30509, %aux30510
	store i32 %aux30511, i32* @IdPos79
	br label %etiq14348
	
	etiq14348:
	;___IfElse___
	%aux30513 = add i32 0, 100
	%aux30514 = load i32, i32* @Pivot79
	%aux30515 = sub i32 %aux30513, %aux30514
	%aux30516 = load i32, i32* @IdPos79
	%aux30517 = icmp eq i32 %aux30515, %aux30516
	br i1 %aux30517, label %etiq14349, label %etiq14350
	
	etiq14349:
	;___Asignación___
	%aux30519 = load i32, i32* @_Acum157
	%aux30520 = add i32 0, 1
	%aux30521 = add i32 %aux30519, %aux30520
	store i32 %aux30521, i32* @_Acum157
	br label %etiq14353
	
	etiq14353:
	;___Asignación___
	%aux30523 = load i32, i32* @IdPos79
	%aux30524 = add i32 0, 1
	%aux30525 = add i32 %aux30523, %aux30524
	store i32 %aux30525, i32* @IdPos79
	br label %etiq14355
	
	etiq14355:
	;___Asignación___
	%aux30527 = load i32, i32* @Pivot79
	%aux30528 = add i32 0, 1
	%aux30529 = sub i32 %aux30527, %aux30528
	store i32 %aux30529, i32* @Pivot79
	br label %etiq14358
	
	etiq14350:
	;___Asignación___
	%aux30531 = load i32, i32* @IdPos79
	%aux30532 = add i32 0, 1
	%aux30533 = add i32 %aux30531, %aux30532
	store i32 %aux30533, i32* @IdPos79
	br label %etiq14358
	
	etiq14358:
	;___IfElse___
	%aux30535 = add i32 0, 100
	%aux30536 = load i32, i32* @Pivot79
	%aux30537 = sub i32 %aux30535, %aux30536
	%aux30538 = load i32, i32* @IdPos79
	%aux30539 = icmp eq i32 %aux30537, %aux30538
	br i1 %aux30539, label %etiq14359, label %etiq14360
	
	etiq14359:
	;___Asignación___
	%aux30541 = load i32, i32* @_Acum157
	%aux30542 = add i32 0, 1
	%aux30543 = add i32 %aux30541, %aux30542
	store i32 %aux30543, i32* @_Acum157
	br label %etiq14363
	
	etiq14363:
	;___Asignación___
	%aux30545 = load i32, i32* @IdPos79
	%aux30546 = add i32 0, 1
	%aux30547 = add i32 %aux30545, %aux30546
	store i32 %aux30547, i32* @IdPos79
	br label %etiq14365
	
	etiq14365:
	;___Asignación___
	%aux30549 = load i32, i32* @Pivot79
	%aux30550 = add i32 0, 1
	%aux30551 = sub i32 %aux30549, %aux30550
	store i32 %aux30551, i32* @Pivot79
	br label %etiq14368
	
	etiq14360:
	;___Asignación___
	%aux30553 = load i32, i32* @IdPos79
	%aux30554 = add i32 0, 1
	%aux30555 = add i32 %aux30553, %aux30554
	store i32 %aux30555, i32* @IdPos79
	br label %etiq14368
	
	etiq14368:
	;___IfElse___
	%aux30557 = add i32 0, 100
	%aux30558 = load i32, i32* @Pivot79
	%aux30559 = sub i32 %aux30557, %aux30558
	%aux30560 = load i32, i32* @IdPos79
	%aux30561 = icmp eq i32 %aux30559, %aux30560
	br i1 %aux30561, label %etiq14369, label %etiq14370
	
	etiq14369:
	;___Asignación___
	%aux30563 = load i32, i32* @_Acum157
	%aux30564 = add i32 0, 1
	%aux30565 = add i32 %aux30563, %aux30564
	store i32 %aux30565, i32* @_Acum157
	br label %etiq14373
	
	etiq14373:
	;___Asignación___
	%aux30567 = load i32, i32* @IdPos79
	%aux30568 = add i32 0, 1
	%aux30569 = add i32 %aux30567, %aux30568
	store i32 %aux30569, i32* @IdPos79
	br label %etiq14375
	
	etiq14375:
	;___Asignación___
	%aux30571 = load i32, i32* @Pivot79
	%aux30572 = add i32 0, 1
	%aux30573 = sub i32 %aux30571, %aux30572
	store i32 %aux30573, i32* @Pivot79
	br label %etiq14378
	
	etiq14370:
	;___Asignación___
	%aux30575 = load i32, i32* @IdPos79
	%aux30576 = add i32 0, 1
	%aux30577 = add i32 %aux30575, %aux30576
	store i32 %aux30577, i32* @IdPos79
	br label %etiq14378
	
	etiq14378:
	;___IfElse___
	%aux30579 = add i32 0, 100
	%aux30580 = load i32, i32* @Pivot79
	%aux30581 = sub i32 %aux30579, %aux30580
	%aux30582 = load i32, i32* @IdPos79
	%aux30583 = icmp eq i32 %aux30581, %aux30582
	br i1 %aux30583, label %etiq14379, label %etiq14380
	
	etiq14379:
	;___Asignación___
	%aux30585 = load i32, i32* @_Acum157
	%aux30586 = add i32 0, 1
	%aux30587 = add i32 %aux30585, %aux30586
	store i32 %aux30587, i32* @_Acum157
	br label %etiq14383
	
	etiq14383:
	;___Asignación___
	%aux30589 = load i32, i32* @IdPos79
	%aux30590 = add i32 0, 1
	%aux30591 = add i32 %aux30589, %aux30590
	store i32 %aux30591, i32* @IdPos79
	br label %etiq14385
	
	etiq14385:
	;___Asignación___
	%aux30593 = load i32, i32* @Pivot79
	%aux30594 = add i32 0, 1
	%aux30595 = sub i32 %aux30593, %aux30594
	store i32 %aux30595, i32* @Pivot79
	br label %etiq14388
	
	etiq14380:
	;___Asignación___
	%aux30597 = load i32, i32* @IdPos79
	%aux30598 = add i32 0, 1
	%aux30599 = add i32 %aux30597, %aux30598
	store i32 %aux30599, i32* @IdPos79
	br label %etiq14388
	
	etiq14388:
	;___IfElse___
	%aux30601 = add i32 0, 100
	%aux30602 = load i32, i32* @Pivot79
	%aux30603 = sub i32 %aux30601, %aux30602
	%aux30604 = load i32, i32* @IdPos79
	%aux30605 = icmp eq i32 %aux30603, %aux30604
	br i1 %aux30605, label %etiq14389, label %etiq14390
	
	etiq14389:
	;___Asignación___
	%aux30607 = load i32, i32* @_Acum157
	%aux30608 = add i32 0, 1
	%aux30609 = add i32 %aux30607, %aux30608
	store i32 %aux30609, i32* @_Acum157
	br label %etiq14393
	
	etiq14393:
	;___Asignación___
	%aux30611 = load i32, i32* @IdPos79
	%aux30612 = add i32 0, 1
	%aux30613 = add i32 %aux30611, %aux30612
	store i32 %aux30613, i32* @IdPos79
	br label %etiq14395
	
	etiq14395:
	;___Asignación___
	%aux30615 = load i32, i32* @Pivot79
	%aux30616 = add i32 0, 1
	%aux30617 = sub i32 %aux30615, %aux30616
	store i32 %aux30617, i32* @Pivot79
	br label %etiq14398
	
	etiq14390:
	;___Asignación___
	%aux30619 = load i32, i32* @IdPos79
	%aux30620 = add i32 0, 1
	%aux30621 = add i32 %aux30619, %aux30620
	store i32 %aux30621, i32* @IdPos79
	br label %etiq14398
	
	etiq14398:
	;___IfElse___
	%aux30623 = add i32 0, 100
	%aux30624 = load i32, i32* @Pivot79
	%aux30625 = sub i32 %aux30623, %aux30624
	%aux30626 = load i32, i32* @IdPos79
	%aux30627 = icmp eq i32 %aux30625, %aux30626
	br i1 %aux30627, label %etiq14399, label %etiq14400
	
	etiq14399:
	;___Asignación___
	%aux30629 = load i32, i32* @_Acum157
	%aux30630 = add i32 0, 1
	%aux30631 = add i32 %aux30629, %aux30630
	store i32 %aux30631, i32* @_Acum157
	br label %etiq14403
	
	etiq14403:
	;___Asignación___
	%aux30633 = load i32, i32* @IdPos79
	%aux30634 = add i32 0, 1
	%aux30635 = add i32 %aux30633, %aux30634
	store i32 %aux30635, i32* @IdPos79
	br label %etiq14405
	
	etiq14405:
	;___Asignación___
	%aux30637 = load i32, i32* @Pivot79
	%aux30638 = add i32 0, 1
	%aux30639 = sub i32 %aux30637, %aux30638
	store i32 %aux30639, i32* @Pivot79
	br label %etiq14408
	
	etiq14400:
	;___Asignación___
	%aux30641 = load i32, i32* @IdPos79
	%aux30642 = add i32 0, 1
	%aux30643 = add i32 %aux30641, %aux30642
	store i32 %aux30643, i32* @IdPos79
	br label %etiq14408
	
	etiq14408:
	;___IfElse___
	%aux30645 = add i32 0, 100
	%aux30646 = load i32, i32* @Pivot79
	%aux30647 = sub i32 %aux30645, %aux30646
	%aux30648 = load i32, i32* @IdPos79
	%aux30649 = icmp eq i32 %aux30647, %aux30648
	br i1 %aux30649, label %etiq14409, label %etiq14410
	
	etiq14409:
	;___Asignación___
	%aux30651 = load i32, i32* @_Acum157
	%aux30652 = add i32 0, 1
	%aux30653 = add i32 %aux30651, %aux30652
	store i32 %aux30653, i32* @_Acum157
	br label %etiq14413
	
	etiq14413:
	;___Asignación___
	%aux30655 = load i32, i32* @IdPos79
	%aux30656 = add i32 0, 1
	%aux30657 = add i32 %aux30655, %aux30656
	store i32 %aux30657, i32* @IdPos79
	br label %etiq14415
	
	etiq14415:
	;___Asignación___
	%aux30659 = load i32, i32* @Pivot79
	%aux30660 = add i32 0, 1
	%aux30661 = sub i32 %aux30659, %aux30660
	store i32 %aux30661, i32* @Pivot79
	br label %etiq14418
	
	etiq14410:
	;___Asignación___
	%aux30663 = load i32, i32* @IdPos79
	%aux30664 = add i32 0, 1
	%aux30665 = add i32 %aux30663, %aux30664
	store i32 %aux30665, i32* @IdPos79
	br label %etiq14418
	
	etiq14418:
	;___IfElse___
	%aux30667 = add i32 0, 100
	%aux30668 = load i32, i32* @Pivot79
	%aux30669 = sub i32 %aux30667, %aux30668
	%aux30670 = load i32, i32* @IdPos79
	%aux30671 = icmp eq i32 %aux30669, %aux30670
	br i1 %aux30671, label %etiq14419, label %etiq14420
	
	etiq14419:
	;___Asignación___
	%aux30673 = load i32, i32* @_Acum157
	%aux30674 = add i32 0, 1
	%aux30675 = add i32 %aux30673, %aux30674
	store i32 %aux30675, i32* @_Acum157
	br label %etiq14423
	
	etiq14423:
	;___Asignación___
	%aux30677 = load i32, i32* @IdPos79
	%aux30678 = add i32 0, 1
	%aux30679 = add i32 %aux30677, %aux30678
	store i32 %aux30679, i32* @IdPos79
	br label %etiq14425
	
	etiq14425:
	;___Asignación___
	%aux30681 = load i32, i32* @Pivot79
	%aux30682 = add i32 0, 1
	%aux30683 = sub i32 %aux30681, %aux30682
	store i32 %aux30683, i32* @Pivot79
	br label %etiq14428
	
	etiq14420:
	;___Asignación___
	%aux30685 = load i32, i32* @IdPos79
	%aux30686 = add i32 0, 1
	%aux30687 = add i32 %aux30685, %aux30686
	store i32 %aux30687, i32* @IdPos79
	br label %etiq14428
	
	etiq14428:
	;___IfElse___
	%aux30689 = add i32 0, 100
	%aux30690 = load i32, i32* @Pivot79
	%aux30691 = sub i32 %aux30689, %aux30690
	%aux30692 = load i32, i32* @IdPos79
	%aux30693 = icmp eq i32 %aux30691, %aux30692
	br i1 %aux30693, label %etiq14429, label %etiq14430
	
	etiq14429:
	;___Asignación___
	%aux30695 = load i32, i32* @_Acum157
	%aux30696 = add i32 0, 1
	%aux30697 = add i32 %aux30695, %aux30696
	store i32 %aux30697, i32* @_Acum157
	br label %etiq14433
	
	etiq14433:
	;___Asignación___
	%aux30699 = load i32, i32* @IdPos79
	%aux30700 = add i32 0, 1
	%aux30701 = add i32 %aux30699, %aux30700
	store i32 %aux30701, i32* @IdPos79
	br label %etiq14435
	
	etiq14435:
	;___Asignación___
	%aux30703 = load i32, i32* @Pivot79
	%aux30704 = add i32 0, 1
	%aux30705 = sub i32 %aux30703, %aux30704
	store i32 %aux30705, i32* @Pivot79
	br label %etiq14438
	
	etiq14430:
	;___Asignación___
	%aux30707 = load i32, i32* @IdPos79
	%aux30708 = add i32 0, 1
	%aux30709 = add i32 %aux30707, %aux30708
	store i32 %aux30709, i32* @IdPos79
	br label %etiq14438
	
	etiq14438:
	;___IfElse___
	%aux30711 = add i32 0, 100
	%aux30712 = load i32, i32* @Pivot79
	%aux30713 = sub i32 %aux30711, %aux30712
	%aux30714 = load i32, i32* @IdPos79
	%aux30715 = icmp eq i32 %aux30713, %aux30714
	br i1 %aux30715, label %etiq14439, label %etiq14440
	
	etiq14439:
	;___Asignación___
	%aux30717 = load i32, i32* @_Acum157
	br label %etiq14442
	
	etiq14442:
	;___Asignación___
	%aux30719 = add i32 0, 4
	store i32 %aux30719, i32* @Pivot74
	br label %etiq14443
	
	etiq14443:
	;___IfElse___
	%aux30721 = load i32, i32* @Pivot74
	%aux30722 = add i32 0, 1
	%aux30723 = icmp sge i32 %aux30721, %aux30722
	br i1 %aux30723, label %etiq14445, label %etiq14446
	
	etiq14445:
	;___IfElse___
	%aux30725 = add i32 0, 4
	%aux30726 = load i32, i32* @Pivot74
	%aux30727 = icmp sge i32 %aux30725, %aux30726
	br i1 %aux30727, label %etiq14448, label %etiq14449
	
	etiq14448:
	;___IfElse___
	%aux30729 = add i32 0, 4
	%aux30730 = add i32 0, 0
	%aux30731 = icmp sgt i32 %aux30729, %aux30730
	br i1 %aux30731, label %etiq14452, label %etiq14453
	
	etiq14452:
	;___IfElse___
	%aux30733 = add i32 0, 4
	%aux30734 = load i32, i32* @Pivot74
	%aux30735 = sub i32 %aux30733, %aux30734
	%aux30736 = load i32, i32* @IdPos74
	%aux30737 = icmp eq i32 %aux30735, %aux30736
	br i1 %aux30737, label %etiq14455, label %etiq14456
	
	etiq14455:
	;___Asignación___
	%aux30739 = load i32, i32* @_Acum147
	%aux30740 = add i32 0, 1
	%aux30741 = add i32 %aux30739, %aux30740
	store i32 %aux30741, i32* @_Acum147
	br label %etiq14459
	
	etiq14459:
	;___Asignación___
	%aux30743 = load i32, i32* @IdPos74
	%aux30744 = add i32 0, 1
	%aux30745 = add i32 %aux30743, %aux30744
	store i32 %aux30745, i32* @IdPos74
	br label %etiq14461
	
	etiq14461:
	;___Asignación___
	%aux30747 = load i32, i32* @Pivot74
	%aux30748 = add i32 0, 1
	%aux30749 = sub i32 %aux30747, %aux30748
	store i32 %aux30749, i32* @Pivot74
	br label %etiq14464
	
	etiq14456:
	;___Asignación___
	%aux30751 = load i32, i32* @IdPos74
	%aux30752 = add i32 0, 1
	%aux30753 = add i32 %aux30751, %aux30752
	store i32 %aux30753, i32* @IdPos74
	br label %etiq14464
	
	etiq14464:
	;___IfElse___
	%aux30755 = add i32 0, 4
	%aux30756 = load i32, i32* @Pivot74
	%aux30757 = sub i32 %aux30755, %aux30756
	%aux30758 = load i32, i32* @IdPos74
	%aux30759 = icmp eq i32 %aux30757, %aux30758
	br i1 %aux30759, label %etiq14465, label %etiq14466
	
	etiq14465:
	;___Asignación___
	%aux30761 = load i32, i32* @_Acum147
	%aux30762 = add i32 0, 2
	%aux30763 = add i32 %aux30761, %aux30762
	store i32 %aux30763, i32* @_Acum147
	br label %etiq14469
	
	etiq14469:
	;___Asignación___
	%aux30765 = load i32, i32* @IdPos74
	%aux30766 = add i32 0, 1
	%aux30767 = add i32 %aux30765, %aux30766
	store i32 %aux30767, i32* @IdPos74
	br label %etiq14471
	
	etiq14471:
	;___Asignación___
	%aux30769 = load i32, i32* @Pivot74
	%aux30770 = add i32 0, 1
	%aux30771 = sub i32 %aux30769, %aux30770
	store i32 %aux30771, i32* @Pivot74
	br label %etiq14474
	
	etiq14466:
	;___Asignación___
	%aux30773 = load i32, i32* @IdPos74
	%aux30774 = add i32 0, 1
	%aux30775 = add i32 %aux30773, %aux30774
	store i32 %aux30775, i32* @IdPos74
	br label %etiq14474
	
	etiq14474:
	;___IfElse___
	%aux30777 = add i32 0, 4
	%aux30778 = load i32, i32* @Pivot74
	%aux30779 = sub i32 %aux30777, %aux30778
	%aux30780 = load i32, i32* @IdPos74
	%aux30781 = icmp eq i32 %aux30779, %aux30780
	br i1 %aux30781, label %etiq14475, label %etiq14476
	
	etiq14475:
	;___Asignación___
	%aux30783 = load i32, i32* @_Acum147
	%aux30784 = add i32 0, 3
	%aux30785 = add i32 %aux30783, %aux30784
	store i32 %aux30785, i32* @_Acum147
	br label %etiq14479
	
	etiq14479:
	;___Asignación___
	%aux30787 = load i32, i32* @IdPos74
	%aux30788 = add i32 0, 1
	%aux30789 = add i32 %aux30787, %aux30788
	store i32 %aux30789, i32* @IdPos74
	br label %etiq14481
	
	etiq14481:
	;___Asignación___
	%aux30791 = load i32, i32* @Pivot74
	%aux30792 = add i32 0, 1
	%aux30793 = sub i32 %aux30791, %aux30792
	store i32 %aux30793, i32* @Pivot74
	br label %etiq14494
	
	etiq14476:
	;___Asignación___
	%aux30795 = load i32, i32* @IdPos74
	%aux30796 = add i32 0, 1
	%aux30797 = add i32 %aux30795, %aux30796
	store i32 %aux30797, i32* @IdPos74
	br label %etiq14484
	
	etiq14484:
	;___IfElse___
	%aux30799 = add i32 0, 4
	%aux30800 = load i32, i32* @Pivot74
	%aux30801 = sub i32 %aux30799, %aux30800
	%aux30802 = load i32, i32* @IdPos74
	%aux30803 = icmp eq i32 %aux30801, %aux30802
	br i1 %aux30803, label %etiq14485, label %etiq14486
	
	etiq14485:
	;___Asignación___
	%aux30805 = load i32, i32* @_Acum147
	%aux30806 = add i32 0, 4
	%aux30807 = add i32 %aux30805, %aux30806
	store i32 %aux30807, i32* @_Acum147
	br label %etiq14489
	
	etiq14489:
	;___Asignación___
	%aux30809 = load i32, i32* @IdPos74
	%aux30810 = add i32 0, 1
	%aux30811 = add i32 %aux30809, %aux30810
	store i32 %aux30811, i32* @IdPos74
	br label %etiq14491
	
	etiq14491:
	;___Asignación___
	%aux30813 = load i32, i32* @Pivot74
	%aux30814 = add i32 0, 1
	%aux30815 = sub i32 %aux30813, %aux30814
	store i32 %aux30815, i32* @Pivot74
	br label %etiq14494
	
	etiq14486:
	;___Asignación___
	%aux30817 = load i32, i32* @IdPos74
	%aux30818 = add i32 0, 1
	%aux30819 = add i32 %aux30817, %aux30818
	store i32 %aux30819, i32* @IdPos74
	br label %etiq14494
	
	etiq14453:
	;___DisplayCadenaCaracteres___
	%aux30820 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq14494
	
	etiq14449:
	;___DisplayCadenaCaracteres___
	%aux30821 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq14494
	
	etiq14446:
	;___DisplayCadenaCaracteres___
	%aux30822 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq14494
	
	etiq14494:
	;___Asignación___
	%aux30824 = load i32, i32* @_Acum147
	store i32 %aux30824, i32* @_Acum148
	br label %etiq14495
	
	etiq14495:
	;___Asignación___
	%aux30826 = add i32 0, 3
	store i32 %aux30826, i32* @Pivot73
	br label %etiq14496
	
	etiq14496:
	;___IfElse___
	%aux30828 = load i32, i32* @Pivot73
	%aux30829 = add i32 0, 1
	%aux30830 = icmp sge i32 %aux30828, %aux30829
	br i1 %aux30830, label %etiq14498, label %etiq14499
	
	etiq14498:
	;___IfElse___
	%aux30832 = add i32 0, 3
	%aux30833 = load i32, i32* @Pivot73
	%aux30834 = icmp sge i32 %aux30832, %aux30833
	br i1 %aux30834, label %etiq14501, label %etiq14502
	
	etiq14501:
	;___IfElse___
	%aux30836 = add i32 0, 3
	%aux30837 = add i32 0, 0
	%aux30838 = icmp sgt i32 %aux30836, %aux30837
	br i1 %aux30838, label %etiq14505, label %etiq14506
	
	etiq14505:
	;___IfElse___
	%aux30840 = add i32 0, 3
	%aux30841 = load i32, i32* @Pivot73
	%aux30842 = sub i32 %aux30840, %aux30841
	%aux30843 = load i32, i32* @IdPos73
	%aux30844 = icmp eq i32 %aux30842, %aux30843
	br i1 %aux30844, label %etiq14508, label %etiq14509
	
	etiq14508:
	;___Asignación___
	%aux30846 = load i32, i32* @_Acum145
	%aux30847 = add i32 0, 1
	%aux30848 = add i32 %aux30846, %aux30847
	store i32 %aux30848, i32* @_Acum145
	br label %etiq14512
	
	etiq14512:
	;___Asignación___
	%aux30850 = load i32, i32* @IdPos73
	%aux30851 = add i32 0, 1
	%aux30852 = add i32 %aux30850, %aux30851
	store i32 %aux30852, i32* @IdPos73
	br label %etiq14514
	
	etiq14514:
	;___Asignación___
	%aux30854 = load i32, i32* @Pivot73
	%aux30855 = add i32 0, 1
	%aux30856 = sub i32 %aux30854, %aux30855
	store i32 %aux30856, i32* @Pivot73
	br label %etiq14517
	
	etiq14509:
	;___Asignación___
	%aux30858 = load i32, i32* @IdPos73
	%aux30859 = add i32 0, 1
	%aux30860 = add i32 %aux30858, %aux30859
	store i32 %aux30860, i32* @IdPos73
	br label %etiq14517
	
	etiq14517:
	;___IfElse___
	%aux30862 = add i32 0, 3
	%aux30863 = load i32, i32* @Pivot73
	%aux30864 = sub i32 %aux30862, %aux30863
	%aux30865 = load i32, i32* @IdPos73
	%aux30866 = icmp eq i32 %aux30864, %aux30865
	br i1 %aux30866, label %etiq14518, label %etiq14519
	
	etiq14518:
	;___Asignación___
	%aux30868 = load i32, i32* @_Acum145
	%aux30869 = add i32 0, 2
	%aux30870 = add i32 %aux30868, %aux30869
	store i32 %aux30870, i32* @_Acum145
	br label %etiq14522
	
	etiq14522:
	;___Asignación___
	%aux30872 = load i32, i32* @IdPos73
	%aux30873 = add i32 0, 1
	%aux30874 = add i32 %aux30872, %aux30873
	store i32 %aux30874, i32* @IdPos73
	br label %etiq14524
	
	etiq14524:
	;___Asignación___
	%aux30876 = load i32, i32* @Pivot73
	%aux30877 = add i32 0, 1
	%aux30878 = sub i32 %aux30876, %aux30877
	store i32 %aux30878, i32* @Pivot73
	br label %etiq14527
	
	etiq14519:
	;___Asignación___
	%aux30880 = load i32, i32* @IdPos73
	%aux30881 = add i32 0, 1
	%aux30882 = add i32 %aux30880, %aux30881
	store i32 %aux30882, i32* @IdPos73
	br label %etiq14527
	
	etiq14527:
	;___IfElse___
	%aux30884 = add i32 0, 3
	%aux30885 = load i32, i32* @Pivot73
	%aux30886 = sub i32 %aux30884, %aux30885
	%aux30887 = load i32, i32* @IdPos73
	%aux30888 = icmp eq i32 %aux30886, %aux30887
	br i1 %aux30888, label %etiq14528, label %etiq14529
	
	etiq14528:
	;___Asignación___
	%aux30890 = load i32, i32* @_Acum145
	%aux30891 = add i32 0, 3
	%aux30892 = add i32 %aux30890, %aux30891
	store i32 %aux30892, i32* @_Acum145
	br label %etiq14532
	
	etiq14532:
	;___Asignación___
	%aux30894 = load i32, i32* @IdPos73
	%aux30895 = add i32 0, 1
	%aux30896 = add i32 %aux30894, %aux30895
	store i32 %aux30896, i32* @IdPos73
	br label %etiq14534
	
	etiq14534:
	;___Asignación___
	%aux30898 = load i32, i32* @Pivot73
	%aux30899 = add i32 0, 1
	%aux30900 = sub i32 %aux30898, %aux30899
	store i32 %aux30900, i32* @Pivot73
	br label %etiq14537
	
	etiq14529:
	;___Asignación___
	%aux30902 = load i32, i32* @IdPos73
	%aux30903 = add i32 0, 1
	%aux30904 = add i32 %aux30902, %aux30903
	store i32 %aux30904, i32* @IdPos73
	br label %etiq14537
	
	etiq14506:
	;___DisplayCadenaCaracteres___
	%aux30905 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq14537
	
	etiq14502:
	;___DisplayCadenaCaracteres___
	%aux30906 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq14537
	
	etiq14499:
	;___DisplayCadenaCaracteres___
	%aux30907 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq14537
	
	etiq14537:
	;___Asignación___
	%aux30909 = load i32, i32* @_Acum145
	store i32 %aux30909, i32* @_Acum146
	br label %etiq14538
	
	etiq14538:
	;___Asignación___
	%aux30911 = add i32 0, 2
	store i32 %aux30911, i32* @Pivot71
	br label %etiq14539
	
	etiq14539:
	;___IfElse___
	%aux30913 = load i32, i32* @Pivot71
	%aux30914 = add i32 0, 1
	%aux30915 = icmp sge i32 %aux30913, %aux30914
	br i1 %aux30915, label %etiq14541, label %etiq14542
	
	etiq14541:
	;___IfElse___
	%aux30917 = add i32 0, 2
	%aux30918 = load i32, i32* @Pivot71
	%aux30919 = icmp sge i32 %aux30917, %aux30918
	br i1 %aux30919, label %etiq14544, label %etiq14545
	
	etiq14544:
	;___IfElse___
	%aux30921 = add i32 0, 2
	%aux30922 = add i32 0, 0
	%aux30923 = icmp sgt i32 %aux30921, %aux30922
	br i1 %aux30923, label %etiq14548, label %etiq14549
	
	etiq14548:
	;___IfElse___
	%aux30925 = add i32 0, 2
	%aux30926 = load i32, i32* @Pivot71
	%aux30927 = sub i32 %aux30925, %aux30926
	%aux30928 = load i32, i32* @IdPos71
	%aux30929 = icmp eq i32 %aux30927, %aux30928
	br i1 %aux30929, label %etiq14551, label %etiq14552
	
	etiq14551:
	;___Asignación___
	%aux30931 = load i32, i32* @_Acum141
	%aux30932 = add i32 0, 1
	%aux30933 = add i32 %aux30931, %aux30932
	store i32 %aux30933, i32* @_Acum141
	br label %etiq14555
	
	etiq14555:
	;___Asignación___
	%aux30935 = load i32, i32* @IdPos71
	%aux30936 = add i32 0, 1
	%aux30937 = add i32 %aux30935, %aux30936
	store i32 %aux30937, i32* @IdPos71
	br label %etiq14557
	
	etiq14557:
	;___Asignación___
	%aux30939 = load i32, i32* @Pivot71
	%aux30940 = add i32 0, 1
	%aux30941 = sub i32 %aux30939, %aux30940
	store i32 %aux30941, i32* @Pivot71
	br label %etiq14560
	
	etiq14552:
	;___Asignación___
	%aux30943 = load i32, i32* @IdPos71
	%aux30944 = add i32 0, 1
	%aux30945 = add i32 %aux30943, %aux30944
	store i32 %aux30945, i32* @IdPos71
	br label %etiq14560
	
	etiq14560:
	;___IfElse___
	%aux30947 = add i32 0, 2
	%aux30948 = load i32, i32* @Pivot71
	%aux30949 = sub i32 %aux30947, %aux30948
	%aux30950 = load i32, i32* @IdPos71
	%aux30951 = icmp eq i32 %aux30949, %aux30950
	br i1 %aux30951, label %etiq14561, label %etiq14562
	
	etiq14561:
	;___Asignación___
	%aux30953 = load i32, i32* @_Acum141
	%aux30954 = add i32 0, 2
	%aux30955 = add i32 %aux30953, %aux30954
	store i32 %aux30955, i32* @_Acum141
	br label %etiq14565
	
	etiq14565:
	;___Asignación___
	%aux30957 = load i32, i32* @IdPos71
	%aux30958 = add i32 0, 1
	%aux30959 = add i32 %aux30957, %aux30958
	store i32 %aux30959, i32* @IdPos71
	br label %etiq14567
	
	etiq14567:
	;___Asignación___
	%aux30961 = load i32, i32* @Pivot71
	%aux30962 = add i32 0, 1
	%aux30963 = sub i32 %aux30961, %aux30962
	store i32 %aux30963, i32* @Pivot71
	br label %etiq14570
	
	etiq14562:
	;___Asignación___
	%aux30965 = load i32, i32* @IdPos71
	%aux30966 = add i32 0, 1
	%aux30967 = add i32 %aux30965, %aux30966
	store i32 %aux30967, i32* @IdPos71
	br label %etiq14570
	
	etiq14549:
	;___DisplayCadenaCaracteres___
	%aux30968 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq14570
	
	etiq14545:
	;___DisplayCadenaCaracteres___
	%aux30969 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq14570
	
	etiq14542:
	;___DisplayCadenaCaracteres___
	%aux30970 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq14570
	
	etiq14570:
	;___Asignación___
	%aux30972 = load i32, i32* @_Acum141
	store i32 %aux30972, i32* @_Acum142
	br label %etiq14571
	
	etiq14571:
	;___Asignación___
	%aux30974 = add i32 0, 1
	store i32 %aux30974, i32* @Pivot70
	br label %etiq14572
	
	etiq14572:
	;___IfElse___
	%aux30976 = load i32, i32* @Pivot70
	%aux30977 = add i32 0, 1
	%aux30978 = icmp sge i32 %aux30976, %aux30977
	br i1 %aux30978, label %etiq14574, label %etiq14575
	
	etiq14574:
	;___IfElse___
	%aux30980 = add i32 0, 1
	%aux30981 = load i32, i32* @Pivot70
	%aux30982 = icmp sge i32 %aux30980, %aux30981
	br i1 %aux30982, label %etiq14577, label %etiq14578
	
	etiq14577:
	;___IfElse___
	%aux30984 = add i32 0, 1
	%aux30985 = add i32 0, 0
	%aux30986 = icmp sgt i32 %aux30984, %aux30985
	br i1 %aux30986, label %etiq14581, label %etiq14582
	
	etiq14581:
	;___IfElse___
	%aux30988 = add i32 0, 1
	%aux30989 = load i32, i32* @Pivot70
	%aux30990 = sub i32 %aux30988, %aux30989
	%aux30991 = load i32, i32* @IdPos70
	%aux30992 = icmp eq i32 %aux30990, %aux30991
	br i1 %aux30992, label %etiq14584, label %etiq14585
	
	etiq14584:
	;___Asignación___
	%aux30994 = load i32, i32* @_Acum139
	%aux30995 = add i32 0, 1
	%aux30996 = add i32 %aux30994, %aux30995
	store i32 %aux30996, i32* @_Acum139
	br label %etiq14588
	
	etiq14588:
	;___Asignación___
	%aux30998 = load i32, i32* @IdPos70
	%aux30999 = add i32 0, 1
	%aux31000 = add i32 %aux30998, %aux30999
	store i32 %aux31000, i32* @IdPos70
	br label %etiq14590
	
	etiq14590:
	;___Asignación___
	%aux31002 = load i32, i32* @Pivot70
	%aux31003 = add i32 0, 1
	%aux31004 = sub i32 %aux31002, %aux31003
	store i32 %aux31004, i32* @Pivot70
	br label %etiq14593
	
	etiq14585:
	;___Asignación___
	%aux31006 = load i32, i32* @IdPos70
	%aux31007 = add i32 0, 1
	%aux31008 = add i32 %aux31006, %aux31007
	store i32 %aux31008, i32* @IdPos70
	br label %etiq14593
	
	etiq14582:
	;___DisplayCadenaCaracteres___
	%aux31009 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq14593
	
	etiq14578:
	;___DisplayCadenaCaracteres___
	%aux31010 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq14593
	
	etiq14575:
	;___DisplayCadenaCaracteres___
	%aux31011 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq14593
	
	etiq14593:
	;___Asignación___
	%aux31013 = load i32, i32* @_Acum139
	store i32 %aux31013, i32* @_Acum140
	br label %etiq14594
	
	etiq14594:
	;___Asignación___
	%aux31015 = add i32 0, 2
	store i32 %aux31015, i32* @Pivot72
	br label %etiq14595
	
	etiq14595:
	;___IfElse___
	%aux31017 = load i32, i32* @Pivot72
	%aux31018 = add i32 0, 1
	%aux31019 = icmp sge i32 %aux31017, %aux31018
	br i1 %aux31019, label %etiq14597, label %etiq14598
	
	etiq14597:
	;___IfElse___
	%aux31021 = add i32 0, 2
	%aux31022 = load i32, i32* @Pivot72
	%aux31023 = icmp sge i32 %aux31021, %aux31022
	br i1 %aux31023, label %etiq14600, label %etiq14601
	
	etiq14600:
	;___IfElse___
	%aux31025 = add i32 0, 2
	%aux31026 = add i32 0, 0
	%aux31027 = icmp sgt i32 %aux31025, %aux31026
	br i1 %aux31027, label %etiq14604, label %etiq14605
	
	etiq14604:
	;___IfElse___
	%aux31029 = add i32 0, 2
	%aux31030 = load i32, i32* @Pivot72
	%aux31031 = sub i32 %aux31029, %aux31030
	%aux31032 = load i32, i32* @IdPos72
	%aux31033 = icmp eq i32 %aux31031, %aux31032
	br i1 %aux31033, label %etiq14607, label %etiq14608
	
	etiq14607:
	;___Asignación___
	%aux31035 = load i32, i32* @_Acum143
	%aux31036 = load i32, i32* @_Acum140
	%aux31037 = add i32 %aux31035, %aux31036
	store i32 %aux31037, i32* @_Acum143
	br label %etiq14610
	
	etiq14610:
	;___Asignación___
	%aux31039 = load i32, i32* @IdPos72
	%aux31040 = add i32 0, 1
	%aux31041 = add i32 %aux31039, %aux31040
	store i32 %aux31041, i32* @IdPos72
	br label %etiq14612
	
	etiq14612:
	;___Asignación___
	%aux31043 = load i32, i32* @Pivot72
	%aux31044 = add i32 0, 1
	%aux31045 = sub i32 %aux31043, %aux31044
	store i32 %aux31045, i32* @Pivot72
	br label %etiq14615
	
	etiq14608:
	;___Asignación___
	%aux31047 = load i32, i32* @IdPos72
	%aux31048 = add i32 0, 1
	%aux31049 = add i32 %aux31047, %aux31048
	store i32 %aux31049, i32* @IdPos72
	br label %etiq14615
	
	etiq14615:
	;___IfElse___
	%aux31051 = add i32 0, 2
	%aux31052 = load i32, i32* @Pivot72
	%aux31053 = sub i32 %aux31051, %aux31052
	%aux31054 = load i32, i32* @IdPos72
	%aux31055 = icmp eq i32 %aux31053, %aux31054
	br i1 %aux31055, label %etiq14616, label %etiq14617
	
	etiq14616:
	;___Asignación___
	%aux31057 = load i32, i32* @_Acum143
	%aux31058 = load i32, i32* @_Acum142
	%aux31059 = add i32 %aux31057, %aux31058
	store i32 %aux31059, i32* @_Acum143
	br label %etiq14619
	
	etiq14619:
	;___Asignación___
	%aux31061 = load i32, i32* @IdPos72
	%aux31062 = add i32 0, 1
	%aux31063 = add i32 %aux31061, %aux31062
	store i32 %aux31063, i32* @IdPos72
	br label %etiq14621
	
	etiq14621:
	;___Asignación___
	%aux31065 = load i32, i32* @Pivot72
	%aux31066 = add i32 0, 1
	%aux31067 = sub i32 %aux31065, %aux31066
	store i32 %aux31067, i32* @Pivot72
	br label %etiq14624
	
	etiq14617:
	;___Asignación___
	%aux31069 = load i32, i32* @IdPos72
	%aux31070 = add i32 0, 1
	%aux31071 = add i32 %aux31069, %aux31070
	store i32 %aux31071, i32* @IdPos72
	br label %etiq14624
	
	etiq14605:
	;___DisplayCadenaCaracteres___
	%aux31072 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq14624
	
	etiq14601:
	;___DisplayCadenaCaracteres___
	%aux31073 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq14624
	
	etiq14598:
	;___DisplayCadenaCaracteres___
	%aux31074 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq14624
	
	etiq14624:
	;___Asignación___
	%aux31076 = load i32, i32* @_Acum143
	store i32 %aux31076, i32* @_Acum144
	br label %etiq14625
	
	etiq14625:
	;___Asignación___
	%aux31078 = add i32 0, 3
	store i32 %aux31078, i32* @Pivot75
	br label %etiq14626
	
	etiq14626:
	;___IfElse___
	%aux31080 = load i32, i32* @Pivot75
	%aux31081 = add i32 0, 1
	%aux31082 = icmp sge i32 %aux31080, %aux31081
	br i1 %aux31082, label %etiq14628, label %etiq14629
	
	etiq14628:
	;___IfElse___
	%aux31084 = add i32 0, 3
	%aux31085 = load i32, i32* @Pivot75
	%aux31086 = icmp sge i32 %aux31084, %aux31085
	br i1 %aux31086, label %etiq14631, label %etiq14632
	
	etiq14631:
	;___IfElse___
	%aux31088 = add i32 0, 3
	%aux31089 = add i32 0, 0
	%aux31090 = icmp sgt i32 %aux31088, %aux31089
	br i1 %aux31090, label %etiq14635, label %etiq14636
	
	etiq14635:
	;___IfElse___
	%aux31092 = add i32 0, 3
	%aux31093 = load i32, i32* @Pivot75
	%aux31094 = sub i32 %aux31092, %aux31093
	%aux31095 = load i32, i32* @IdPos75
	%aux31096 = icmp eq i32 %aux31094, %aux31095
	br i1 %aux31096, label %etiq14638, label %etiq14639
	
	etiq14638:
	;___Asignación___
	%aux31098 = load i32, i32* @_Acum149
	%aux31099 = load i32, i32* @_Acum144
	%aux31100 = add i32 %aux31098, %aux31099
	store i32 %aux31100, i32* @_Acum149
	br label %etiq14641
	
	etiq14641:
	;___Asignación___
	%aux31102 = load i32, i32* @IdPos75
	%aux31103 = add i32 0, 1
	%aux31104 = add i32 %aux31102, %aux31103
	store i32 %aux31104, i32* @IdPos75
	br label %etiq14643
	
	etiq14643:
	;___Asignación___
	%aux31106 = load i32, i32* @Pivot75
	%aux31107 = add i32 0, 1
	%aux31108 = sub i32 %aux31106, %aux31107
	store i32 %aux31108, i32* @Pivot75
	br label %etiq14646
	
	etiq14639:
	;___Asignación___
	%aux31110 = load i32, i32* @IdPos75
	%aux31111 = add i32 0, 1
	%aux31112 = add i32 %aux31110, %aux31111
	store i32 %aux31112, i32* @IdPos75
	br label %etiq14646
	
	etiq14646:
	;___IfElse___
	%aux31114 = add i32 0, 3
	%aux31115 = load i32, i32* @Pivot75
	%aux31116 = sub i32 %aux31114, %aux31115
	%aux31117 = load i32, i32* @IdPos75
	%aux31118 = icmp eq i32 %aux31116, %aux31117
	br i1 %aux31118, label %etiq14647, label %etiq14648
	
	etiq14647:
	;___Asignación___
	%aux31120 = load i32, i32* @_Acum149
	%aux31121 = load i32, i32* @_Acum146
	%aux31122 = add i32 %aux31120, %aux31121
	store i32 %aux31122, i32* @_Acum149
	br label %etiq14650
	
	etiq14650:
	;___Asignación___
	%aux31124 = load i32, i32* @IdPos75
	%aux31125 = add i32 0, 1
	%aux31126 = add i32 %aux31124, %aux31125
	store i32 %aux31126, i32* @IdPos75
	br label %etiq14652
	
	etiq14652:
	;___Asignación___
	%aux31128 = load i32, i32* @Pivot75
	%aux31129 = add i32 0, 1
	%aux31130 = sub i32 %aux31128, %aux31129
	store i32 %aux31130, i32* @Pivot75
	br label %etiq14655
	
	etiq14648:
	;___Asignación___
	%aux31132 = load i32, i32* @IdPos75
	%aux31133 = add i32 0, 1
	%aux31134 = add i32 %aux31132, %aux31133
	store i32 %aux31134, i32* @IdPos75
	br label %etiq14655
	
	etiq14655:
	;___IfElse___
	%aux31136 = add i32 0, 3
	%aux31137 = load i32, i32* @Pivot75
	%aux31138 = sub i32 %aux31136, %aux31137
	%aux31139 = load i32, i32* @IdPos75
	%aux31140 = icmp eq i32 %aux31138, %aux31139
	br i1 %aux31140, label %etiq14656, label %etiq14657
	
	etiq14656:
	;___Asignación___
	%aux31142 = load i32, i32* @_Acum149
	%aux31143 = load i32, i32* @_Acum148
	%aux31144 = add i32 %aux31142, %aux31143
	store i32 %aux31144, i32* @_Acum149
	br label %etiq14659
	
	etiq14659:
	;___Asignación___
	%aux31146 = load i32, i32* @IdPos75
	%aux31147 = add i32 0, 1
	%aux31148 = add i32 %aux31146, %aux31147
	store i32 %aux31148, i32* @IdPos75
	br label %etiq14661
	
	etiq14661:
	;___Asignación___
	%aux31150 = load i32, i32* @Pivot75
	%aux31151 = add i32 0, 1
	%aux31152 = sub i32 %aux31150, %aux31151
	store i32 %aux31152, i32* @Pivot75
	br label %etiq14664
	
	etiq14657:
	;___Asignación___
	%aux31154 = load i32, i32* @IdPos75
	%aux31155 = add i32 0, 1
	%aux31156 = add i32 %aux31154, %aux31155
	store i32 %aux31156, i32* @IdPos75
	br label %etiq14664
	
	etiq14636:
	;___DisplayCadenaCaracteres___
	%aux31157 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq14664
	
	etiq14632:
	;___DisplayCadenaCaracteres___
	%aux31158 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq14664
	
	etiq14629:
	;___DisplayCadenaCaracteres___
	%aux31159 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq14664
	
	etiq14664:
	;___Asignación___
	%aux31161 = load i32, i32* @_Acum149
	store i32 %aux31161, i32* @_Acum150
	br label %etiq14665
	
	etiq14665:
	%aux31162 = load i32, i32* @_Acum150
	%aux31163 = add i32 0, 15
	%aux31164 = sub i32 %aux31162, %aux31163
	%aux31165 = add i32 %aux30717, %aux31164
	store i32 %aux31165, i32* @_Acum157
	br label %etiq14667
	
	etiq14667:
	;___Asignación___
	%aux31167 = load i32, i32* @IdPos79
	%aux31168 = add i32 0, 1
	%aux31169 = add i32 %aux31167, %aux31168
	store i32 %aux31169, i32* @IdPos79
	br label %etiq14669
	
	etiq14669:
	;___Asignación___
	%aux31171 = load i32, i32* @Pivot79
	%aux31172 = add i32 0, 1
	%aux31173 = sub i32 %aux31171, %aux31172
	store i32 %aux31173, i32* @Pivot79
	br label %etiq14672
	
	etiq14440:
	;___Asignación___
	%aux31175 = load i32, i32* @IdPos79
	%aux31176 = add i32 0, 1
	%aux31177 = add i32 %aux31175, %aux31176
	store i32 %aux31177, i32* @IdPos79
	br label %etiq14672
	
	etiq14672:
	;___IfElse___
	%aux31179 = add i32 0, 100
	%aux31180 = load i32, i32* @Pivot79
	%aux31181 = sub i32 %aux31179, %aux31180
	%aux31182 = load i32, i32* @IdPos79
	%aux31183 = icmp eq i32 %aux31181, %aux31182
	br i1 %aux31183, label %etiq14673, label %etiq14674
	
	etiq14673:
	;___Asignación___
	%aux31185 = load i32, i32* @_Acum157
	%aux31186 = add i32 0, 1
	%aux31187 = add i32 0, 2
	%aux31188 = sub i32 %aux31186, %aux31187
	%aux31189 = add i32 0, 3
	%aux31190 = add i32 %aux31188, %aux31189
	%aux31191 = add i32 0, 1
	%aux31192 = sub i32 %aux31190, %aux31191
	%aux31193 = add i32 %aux31185, %aux31192
	store i32 %aux31193, i32* @_Acum157
	br label %etiq14680
	
	etiq14680:
	;___Asignación___
	%aux31195 = load i32, i32* @IdPos79
	%aux31196 = add i32 0, 1
	%aux31197 = add i32 %aux31195, %aux31196
	store i32 %aux31197, i32* @IdPos79
	br label %etiq14682
	
	etiq14682:
	;___Asignación___
	%aux31199 = load i32, i32* @Pivot79
	%aux31200 = add i32 0, 1
	%aux31201 = sub i32 %aux31199, %aux31200
	store i32 %aux31201, i32* @Pivot79
	br label %etiq14685
	
	etiq14674:
	;___Asignación___
	%aux31203 = load i32, i32* @IdPos79
	%aux31204 = add i32 0, 1
	%aux31205 = add i32 %aux31203, %aux31204
	store i32 %aux31205, i32* @IdPos79
	br label %etiq14685
	
	etiq14685:
	;___IfElse___
	%aux31207 = add i32 0, 100
	%aux31208 = load i32, i32* @Pivot79
	%aux31209 = sub i32 %aux31207, %aux31208
	%aux31210 = load i32, i32* @IdPos79
	%aux31211 = icmp eq i32 %aux31209, %aux31210
	br i1 %aux31211, label %etiq14686, label %etiq14687
	
	etiq14686:
	;___Asignación___
	%aux31213 = load i32, i32* @_Acum157
	%aux31214 = add i32 0, 1
	%aux31215 = sub i32 0, %aux31214
	br label %etiq14690
	
	etiq14690:
	;___Asignación___
	%aux31217 = add i32 0, 2
	store i32 %aux31217, i32* @Pivot76
	br label %etiq14691
	
	etiq14691:
	;___IfElse___
	%aux31219 = load i32, i32* @Pivot76
	%aux31220 = add i32 0, 1
	%aux31221 = icmp sge i32 %aux31219, %aux31220
	br i1 %aux31221, label %etiq14693, label %etiq14694
	
	etiq14693:
	;___IfElse___
	%aux31223 = add i32 0, 2
	%aux31224 = load i32, i32* @Pivot76
	%aux31225 = icmp sge i32 %aux31223, %aux31224
	br i1 %aux31225, label %etiq14696, label %etiq14697
	
	etiq14696:
	;___IfElse___
	%aux31227 = add i32 0, 2
	%aux31228 = add i32 0, 0
	%aux31229 = icmp sgt i32 %aux31227, %aux31228
	br i1 %aux31229, label %etiq14700, label %etiq14701
	
	etiq14700:
	;___IfElse___
	%aux31231 = add i32 0, 2
	%aux31232 = load i32, i32* @Pivot76
	%aux31233 = sub i32 %aux31231, %aux31232
	%aux31234 = load i32, i32* @IdPos76
	%aux31235 = icmp eq i32 %aux31233, %aux31234
	br i1 %aux31235, label %etiq14703, label %etiq14704
	
	etiq14703:
	;___Asignación___
	%aux31237 = load i32, i32* @_Acum151
	%aux31238 = load i32, i32* @edad
	%aux31239 = add i32 0, 0
	%aux31240 = mul i32 %aux31238, %aux31239
	%aux31241 = add i32 %aux31237, %aux31240
	store i32 %aux31241, i32* @_Acum151
	br label %etiq14708
	
	etiq14708:
	;___Asignación___
	%aux31243 = load i32, i32* @IdPos76
	%aux31244 = add i32 0, 1
	%aux31245 = add i32 %aux31243, %aux31244
	store i32 %aux31245, i32* @IdPos76
	br label %etiq14710
	
	etiq14710:
	;___Asignación___
	%aux31247 = load i32, i32* @Pivot76
	%aux31248 = add i32 0, 1
	%aux31249 = sub i32 %aux31247, %aux31248
	store i32 %aux31249, i32* @Pivot76
	br label %etiq14713
	
	etiq14704:
	;___Asignación___
	%aux31251 = load i32, i32* @IdPos76
	%aux31252 = add i32 0, 1
	%aux31253 = add i32 %aux31251, %aux31252
	store i32 %aux31253, i32* @IdPos76
	br label %etiq14713
	
	etiq14713:
	;___IfElse___
	%aux31255 = add i32 0, 2
	%aux31256 = load i32, i32* @Pivot76
	%aux31257 = sub i32 %aux31255, %aux31256
	%aux31258 = load i32, i32* @IdPos76
	%aux31259 = icmp eq i32 %aux31257, %aux31258
	br i1 %aux31259, label %etiq14714, label %etiq14715
	
	etiq14714:
	;___Asignación___
	%aux31261 = load i32, i32* @_Acum151
	%aux31262 = add i32 0, 2
	%aux31263 = add i32 %aux31261, %aux31262
	store i32 %aux31263, i32* @_Acum151
	br label %etiq14718
	
	etiq14718:
	;___Asignación___
	%aux31265 = load i32, i32* @IdPos76
	%aux31266 = add i32 0, 1
	%aux31267 = add i32 %aux31265, %aux31266
	store i32 %aux31267, i32* @IdPos76
	br label %etiq14720
	
	etiq14720:
	;___Asignación___
	%aux31269 = load i32, i32* @Pivot76
	%aux31270 = add i32 0, 1
	%aux31271 = sub i32 %aux31269, %aux31270
	store i32 %aux31271, i32* @Pivot76
	br label %etiq14723
	
	etiq14715:
	;___Asignación___
	%aux31273 = load i32, i32* @IdPos76
	%aux31274 = add i32 0, 1
	%aux31275 = add i32 %aux31273, %aux31274
	store i32 %aux31275, i32* @IdPos76
	br label %etiq14723
	
	etiq14701:
	;___DisplayCadenaCaracteres___
	%aux31276 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq14723
	
	etiq14697:
	;___DisplayCadenaCaracteres___
	%aux31277 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq14723
	
	etiq14694:
	;___DisplayCadenaCaracteres___
	%aux31278 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq14723
	
	etiq14723:
	;___Asignación___
	%aux31280 = load i32, i32* @_Acum151
	store i32 %aux31280, i32* @_Acum152
	br label %etiq14724
	
	etiq14724:
	%aux31281 = load i32, i32* @_Acum152
	%aux31282 = add i32 %aux31215, %aux31281
	%aux31283 = add i32 %aux31213, %aux31282
	store i32 %aux31283, i32* @_Acum157
	br label %etiq14725
	
	etiq14725:
	;___Asignación___
	%aux31285 = load i32, i32* @IdPos79
	%aux31286 = add i32 0, 1
	%aux31287 = add i32 %aux31285, %aux31286
	store i32 %aux31287, i32* @IdPos79
	br label %etiq14727
	
	etiq14727:
	;___Asignación___
	%aux31289 = load i32, i32* @Pivot79
	%aux31290 = add i32 0, 1
	%aux31291 = sub i32 %aux31289, %aux31290
	store i32 %aux31291, i32* @Pivot79
	br label %etiq14730
	
	etiq14687:
	;___Asignación___
	%aux31293 = load i32, i32* @IdPos79
	%aux31294 = add i32 0, 1
	%aux31295 = add i32 %aux31293, %aux31294
	store i32 %aux31295, i32* @IdPos79
	br label %etiq14730
	
	etiq14730:
	;___IfElse___
	%aux31297 = add i32 0, 100
	%aux31298 = load i32, i32* @Pivot79
	%aux31299 = sub i32 %aux31297, %aux31298
	%aux31300 = load i32, i32* @IdPos79
	%aux31301 = icmp eq i32 %aux31299, %aux31300
	br i1 %aux31301, label %etiq14731, label %etiq14732
	
	etiq14731:
	;___Asignación___
	%aux31303 = load i32, i32* @_Acum157
	%aux31304 = add i32 0, 1
	%aux31305 = add i32 0, 2
	%aux31306 = add i32 0, 2
	%aux31307 = add i32 0, 1
	%aux31308 = sdiv i32 %aux31306, %aux31307
	%aux31309 = mul i32 %aux31305, %aux31308
	%aux31310 = sub i32 %aux31304, %aux31309
	%aux31311 = add i32 0, 4
	%aux31312 = add i32 %aux31310, %aux31311
	%aux31313 = add i32 0, 1
	%aux31314 = mul i32 %aux31312, %aux31313
	%aux31315 = add i32 %aux31303, %aux31314
	store i32 %aux31315, i32* @_Acum157
	br label %etiq14740
	
	etiq14740:
	;___Asignación___
	%aux31317 = load i32, i32* @IdPos79
	%aux31318 = add i32 0, 1
	%aux31319 = add i32 %aux31317, %aux31318
	store i32 %aux31319, i32* @IdPos79
	br label %etiq14742
	
	etiq14742:
	;___Asignación___
	%aux31321 = load i32, i32* @Pivot79
	%aux31322 = add i32 0, 1
	%aux31323 = sub i32 %aux31321, %aux31322
	store i32 %aux31323, i32* @Pivot79
	br label %etiq14745
	
	etiq14732:
	;___Asignación___
	%aux31325 = load i32, i32* @IdPos79
	%aux31326 = add i32 0, 1
	%aux31327 = add i32 %aux31325, %aux31326
	store i32 %aux31327, i32* @IdPos79
	br label %etiq14745
	
	etiq14745:
	;___IfElse___
	%aux31329 = add i32 0, 100
	%aux31330 = load i32, i32* @Pivot79
	%aux31331 = sub i32 %aux31329, %aux31330
	%aux31332 = load i32, i32* @IdPos79
	%aux31333 = icmp eq i32 %aux31331, %aux31332
	br i1 %aux31333, label %etiq14746, label %etiq14747
	
	etiq14746:
	;___Asignación___
	%aux31335 = load i32, i32* @_Acum157
	%aux31336 = add i32 0, 10
	%aux31337 = add i32 0, 10
	%aux31338 = add i32 0, 10
	%aux31339 = mul i32 %aux31337, %aux31338
	%aux31340 = add i32 %aux31336, %aux31339
	%aux31341 = add i32 0, 10
	%aux31342 = sub i32 %aux31340, %aux31341
	%aux31343 = add i32 0, 100
	%aux31344 = sdiv i32 %aux31342, %aux31343
	%aux31345 = add i32 %aux31335, %aux31344
	store i32 %aux31345, i32* @_Acum157
	br label %etiq14754
	
	etiq14754:
	;___Asignación___
	%aux31347 = load i32, i32* @IdPos79
	%aux31348 = add i32 0, 1
	%aux31349 = add i32 %aux31347, %aux31348
	store i32 %aux31349, i32* @IdPos79
	br label %etiq14756
	
	etiq14756:
	;___Asignación___
	%aux31351 = load i32, i32* @Pivot79
	%aux31352 = add i32 0, 1
	%aux31353 = sub i32 %aux31351, %aux31352
	store i32 %aux31353, i32* @Pivot79
	br label %etiq14759
	
	etiq14747:
	;___Asignación___
	%aux31355 = load i32, i32* @IdPos79
	%aux31356 = add i32 0, 1
	%aux31357 = add i32 %aux31355, %aux31356
	store i32 %aux31357, i32* @IdPos79
	br label %etiq14759
	
	etiq14759:
	;___IfElse___
	%aux31359 = add i32 0, 100
	%aux31360 = load i32, i32* @Pivot79
	%aux31361 = sub i32 %aux31359, %aux31360
	%aux31362 = load i32, i32* @IdPos79
	%aux31363 = icmp eq i32 %aux31361, %aux31362
	br i1 %aux31363, label %etiq14760, label %etiq14761
	
	etiq14760:
	;___Asignación___
	%aux31365 = load i32, i32* @_Acum157
	br label %etiq14763
	
	etiq14763:
	;___Asignación___
	%aux31367 = add i32 0, 2
	store i32 %aux31367, i32* @Pivot77
	br label %etiq14764
	
	etiq14764:
	;___IfElse___
	%aux31369 = load i32, i32* @Pivot77
	%aux31370 = add i32 0, 1
	%aux31371 = icmp sge i32 %aux31369, %aux31370
	br i1 %aux31371, label %etiq14766, label %etiq14767
	
	etiq14766:
	;___IfElse___
	%aux31373 = add i32 0, 3
	%aux31374 = load i32, i32* @Pivot77
	%aux31375 = icmp sge i32 %aux31373, %aux31374
	br i1 %aux31375, label %etiq14769, label %etiq14770
	
	etiq14769:
	;___IfElse___
	%aux31377 = add i32 0, 3
	%aux31378 = add i32 0, 0
	%aux31379 = icmp sgt i32 %aux31377, %aux31378
	br i1 %aux31379, label %etiq14773, label %etiq14774
	
	etiq14773:
	;___IfElse___
	%aux31381 = add i32 0, 3
	%aux31382 = load i32, i32* @Pivot77
	%aux31383 = sub i32 %aux31381, %aux31382
	%aux31384 = load i32, i32* @IdPos77
	%aux31385 = icmp eq i32 %aux31383, %aux31384
	br i1 %aux31385, label %etiq14776, label %etiq14777
	
	etiq14776:
	;___Asignación___
	%aux31387 = load i32, i32* @_Acum153
	%aux31388 = add i32 0, 5
	%aux31389 = add i32 %aux31387, %aux31388
	store i32 %aux31389, i32* @_Acum153
	br label %etiq14780
	
	etiq14780:
	;___Asignación___
	%aux31391 = load i32, i32* @IdPos77
	%aux31392 = add i32 0, 1
	%aux31393 = add i32 %aux31391, %aux31392
	store i32 %aux31393, i32* @IdPos77
	br label %etiq14782
	
	etiq14782:
	;___Asignación___
	%aux31395 = load i32, i32* @Pivot77
	%aux31396 = add i32 0, 1
	%aux31397 = sub i32 %aux31395, %aux31396
	store i32 %aux31397, i32* @Pivot77
	br label %etiq14785
	
	etiq14777:
	;___Asignación___
	%aux31399 = load i32, i32* @IdPos77
	%aux31400 = add i32 0, 1
	%aux31401 = add i32 %aux31399, %aux31400
	store i32 %aux31401, i32* @IdPos77
	br label %etiq14785
	
	etiq14785:
	;___IfElse___
	%aux31403 = add i32 0, 3
	%aux31404 = load i32, i32* @Pivot77
	%aux31405 = sub i32 %aux31403, %aux31404
	%aux31406 = load i32, i32* @IdPos77
	%aux31407 = icmp eq i32 %aux31405, %aux31406
	br i1 %aux31407, label %etiq14786, label %etiq14787
	
	etiq14786:
	;___Asignación___
	%aux31409 = load i32, i32* @_Acum153
	%aux31410 = add i32 0, 1
	%aux31411 = sub i32 0, %aux31410
	%aux31412 = add i32 %aux31409, %aux31411
	store i32 %aux31412, i32* @_Acum153
	br label %etiq14790
	
	etiq14790:
	;___Asignación___
	%aux31414 = load i32, i32* @IdPos77
	%aux31415 = add i32 0, 1
	%aux31416 = add i32 %aux31414, %aux31415
	store i32 %aux31416, i32* @IdPos77
	br label %etiq14792
	
	etiq14792:
	;___Asignación___
	%aux31418 = load i32, i32* @Pivot77
	%aux31419 = add i32 0, 1
	%aux31420 = sub i32 %aux31418, %aux31419
	store i32 %aux31420, i32* @Pivot77
	br label %etiq14795
	
	etiq14787:
	;___Asignación___
	%aux31422 = load i32, i32* @IdPos77
	%aux31423 = add i32 0, 1
	%aux31424 = add i32 %aux31422, %aux31423
	store i32 %aux31424, i32* @IdPos77
	br label %etiq14795
	
	etiq14795:
	;___IfElse___
	%aux31426 = add i32 0, 3
	%aux31427 = load i32, i32* @Pivot77
	%aux31428 = sub i32 %aux31426, %aux31427
	%aux31429 = load i32, i32* @IdPos77
	%aux31430 = icmp eq i32 %aux31428, %aux31429
	br i1 %aux31430, label %etiq14796, label %etiq14797
	
	etiq14796:
	;___Asignación___
	%aux31432 = load i32, i32* @_Acum153
	%aux31433 = add i32 0, 2
	%aux31434 = add i32 %aux31432, %aux31433
	store i32 %aux31434, i32* @_Acum153
	br label %etiq14800
	
	etiq14800:
	;___Asignación___
	%aux31436 = load i32, i32* @IdPos77
	%aux31437 = add i32 0, 1
	%aux31438 = add i32 %aux31436, %aux31437
	store i32 %aux31438, i32* @IdPos77
	br label %etiq14802
	
	etiq14802:
	;___Asignación___
	%aux31440 = load i32, i32* @Pivot77
	%aux31441 = add i32 0, 1
	%aux31442 = sub i32 %aux31440, %aux31441
	store i32 %aux31442, i32* @Pivot77
	br label %etiq14805
	
	etiq14797:
	;___Asignación___
	%aux31444 = load i32, i32* @IdPos77
	%aux31445 = add i32 0, 1
	%aux31446 = add i32 %aux31444, %aux31445
	store i32 %aux31446, i32* @IdPos77
	br label %etiq14805
	
	etiq14774:
	;___DisplayCadenaCaracteres___
	%aux31447 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq14805
	
	etiq14770:
	;___DisplayCadenaCaracteres___
	%aux31448 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq14805
	
	etiq14767:
	;___DisplayCadenaCaracteres___
	%aux31449 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq14805
	
	etiq14805:
	;___Asignación___
	%aux31451 = load i32, i32* @_Acum153
	store i32 %aux31451, i32* @_Acum154
	br label %etiq14806
	
	etiq14806:
	%aux31452 = load i32, i32* @_Acum154
	%aux31453 = sub i32 0, %aux31452
	%aux31454 = add i32 0, 1
	%aux31455 = sub i32 0, %aux31454
	%aux31456 = mul i32 %aux31453, %aux31455
	%aux31457 = add i32 %aux31365, %aux31456
	store i32 %aux31457, i32* @_Acum157
	br label %etiq14808
	
	etiq14808:
	;___Asignación___
	%aux31459 = load i32, i32* @IdPos79
	%aux31460 = add i32 0, 1
	%aux31461 = add i32 %aux31459, %aux31460
	store i32 %aux31461, i32* @IdPos79
	br label %etiq14810
	
	etiq14810:
	;___Asignación___
	%aux31463 = load i32, i32* @Pivot79
	%aux31464 = add i32 0, 1
	%aux31465 = sub i32 %aux31463, %aux31464
	store i32 %aux31465, i32* @Pivot79
	br label %etiq14813
	
	etiq14761:
	;___Asignación___
	%aux31467 = load i32, i32* @IdPos79
	%aux31468 = add i32 0, 1
	%aux31469 = add i32 %aux31467, %aux31468
	store i32 %aux31469, i32* @IdPos79
	br label %etiq14813
	
	etiq14813:
	;___IfElse___
	%aux31471 = add i32 0, 100
	%aux31472 = load i32, i32* @Pivot79
	%aux31473 = sub i32 %aux31471, %aux31472
	%aux31474 = load i32, i32* @IdPos79
	%aux31475 = icmp eq i32 %aux31473, %aux31474
	br i1 %aux31475, label %etiq14814, label %etiq14815
	
	etiq14814:
	;___Asignación___
	%aux31477 = load i32, i32* @_Acum157
	%aux31478 = add i32 0, 1
	%aux31479 = add i32 0, 2
	%aux31480 = add i32 %aux31478, %aux31479
	%aux31481 = add i32 0, 3
	%aux31482 = add i32 %aux31480, %aux31481
	%aux31483 = add i32 0, 4
	%aux31484 = add i32 %aux31482, %aux31483
	%aux31485 = add i32 0, 10
	%aux31486 = sdiv i32 %aux31484, %aux31485
	%aux31487 = add i32 %aux31477, %aux31486
	store i32 %aux31487, i32* @_Acum157
	br label %etiq14822
	
	etiq14822:
	;___Asignación___
	%aux31489 = load i32, i32* @IdPos79
	%aux31490 = add i32 0, 1
	%aux31491 = add i32 %aux31489, %aux31490
	store i32 %aux31491, i32* @IdPos79
	br label %etiq14824
	
	etiq14824:
	;___Asignación___
	%aux31493 = load i32, i32* @Pivot79
	%aux31494 = add i32 0, 1
	%aux31495 = sub i32 %aux31493, %aux31494
	store i32 %aux31495, i32* @Pivot79
	br label %etiq14827
	
	etiq14815:
	;___Asignación___
	%aux31497 = load i32, i32* @IdPos79
	%aux31498 = add i32 0, 1
	%aux31499 = add i32 %aux31497, %aux31498
	store i32 %aux31499, i32* @IdPos79
	br label %etiq14827
	
	etiq14827:
	;___IfElse___
	%aux31501 = add i32 0, 100
	%aux31502 = load i32, i32* @Pivot79
	%aux31503 = sub i32 %aux31501, %aux31502
	%aux31504 = load i32, i32* @IdPos79
	%aux31505 = icmp eq i32 %aux31503, %aux31504
	br i1 %aux31505, label %etiq14828, label %etiq14829
	
	etiq14828:
	;___Asignación___
	%aux31507 = load i32, i32* @_Acum157
	%aux31508 = add i32 0, 50
	%aux31509 = add i32 0, 50
	%aux31510 = sdiv i32 %aux31508, %aux31509
	%aux31511 = add i32 %aux31507, %aux31510
	store i32 %aux31511, i32* @_Acum157
	br label %etiq14833
	
	etiq14833:
	;___Asignación___
	%aux31513 = load i32, i32* @IdPos79
	%aux31514 = add i32 0, 1
	%aux31515 = add i32 %aux31513, %aux31514
	store i32 %aux31515, i32* @IdPos79
	br label %etiq14835
	
	etiq14835:
	;___Asignación___
	%aux31517 = load i32, i32* @Pivot79
	%aux31518 = add i32 0, 1
	%aux31519 = sub i32 %aux31517, %aux31518
	store i32 %aux31519, i32* @Pivot79
	br label %etiq14838
	
	etiq14829:
	;___Asignación___
	%aux31521 = load i32, i32* @IdPos79
	%aux31522 = add i32 0, 1
	%aux31523 = add i32 %aux31521, %aux31522
	store i32 %aux31523, i32* @IdPos79
	br label %etiq14838
	
	etiq14838:
	;___IfElse___
	%aux31525 = add i32 0, 100
	%aux31526 = load i32, i32* @Pivot79
	%aux31527 = sub i32 %aux31525, %aux31526
	%aux31528 = load i32, i32* @IdPos79
	%aux31529 = icmp eq i32 %aux31527, %aux31528
	br i1 %aux31529, label %etiq14839, label %etiq14840
	
	etiq14839:
	;___Asignación___
	%aux31531 = load i32, i32* @_Acum157
	%aux31532 = add i32 0, 50000
	%aux31533 = add i32 0, 49999
	%aux31534 = sub i32 %aux31532, %aux31533
	%aux31535 = add i32 %aux31531, %aux31534
	store i32 %aux31535, i32* @_Acum157
	br label %etiq14844
	
	etiq14844:
	;___Asignación___
	%aux31537 = load i32, i32* @IdPos79
	%aux31538 = add i32 0, 1
	%aux31539 = add i32 %aux31537, %aux31538
	store i32 %aux31539, i32* @IdPos79
	br label %etiq14846
	
	etiq14846:
	;___Asignación___
	%aux31541 = load i32, i32* @Pivot79
	%aux31542 = add i32 0, 1
	%aux31543 = sub i32 %aux31541, %aux31542
	store i32 %aux31543, i32* @Pivot79
	br label %etiq14849
	
	etiq14840:
	;___Asignación___
	%aux31545 = load i32, i32* @IdPos79
	%aux31546 = add i32 0, 1
	%aux31547 = add i32 %aux31545, %aux31546
	store i32 %aux31547, i32* @IdPos79
	br label %etiq14849
	
	etiq14849:
	;___IfElse___
	%aux31549 = add i32 0, 100
	%aux31550 = load i32, i32* @Pivot79
	%aux31551 = sub i32 %aux31549, %aux31550
	%aux31552 = load i32, i32* @IdPos79
	%aux31553 = icmp eq i32 %aux31551, %aux31552
	br i1 %aux31553, label %etiq14850, label %etiq14851
	
	etiq14850:
	;___Asignación___
	%aux31555 = load i32, i32* @_Acum157
	%aux31556 = add i32 0, 2
	%aux31557 = add i32 0, 1
	%aux31558 = sub i32 %aux31556, %aux31557
	%aux31559 = add i32 %aux31555, %aux31558
	store i32 %aux31559, i32* @_Acum157
	br label %etiq14855
	
	etiq14855:
	;___Asignación___
	%aux31561 = load i32, i32* @IdPos79
	%aux31562 = add i32 0, 1
	%aux31563 = add i32 %aux31561, %aux31562
	store i32 %aux31563, i32* @IdPos79
	br label %etiq14857
	
	etiq14857:
	;___Asignación___
	%aux31565 = load i32, i32* @Pivot79
	%aux31566 = add i32 0, 1
	%aux31567 = sub i32 %aux31565, %aux31566
	store i32 %aux31567, i32* @Pivot79
	br label %etiq14860
	
	etiq14851:
	;___Asignación___
	%aux31569 = load i32, i32* @IdPos79
	%aux31570 = add i32 0, 1
	%aux31571 = add i32 %aux31569, %aux31570
	store i32 %aux31571, i32* @IdPos79
	br label %etiq14860
	
	etiq14860:
	;___IfElse___
	%aux31573 = add i32 0, 100
	%aux31574 = load i32, i32* @Pivot79
	%aux31575 = sub i32 %aux31573, %aux31574
	%aux31576 = load i32, i32* @IdPos79
	%aux31577 = icmp eq i32 %aux31575, %aux31576
	br i1 %aux31577, label %etiq14861, label %etiq14862
	
	etiq14861:
	;___Asignación___
	%aux31579 = load i32, i32* @_Acum157
	%aux31580 = add i32 0, 1
	%aux31581 = add i32 0, 1
	%aux31582 = mul i32 %aux31580, %aux31581
	%aux31583 = add i32 %aux31579, %aux31582
	store i32 %aux31583, i32* @_Acum157
	br label %etiq14866
	
	etiq14866:
	;___Asignación___
	%aux31585 = load i32, i32* @IdPos79
	%aux31586 = add i32 0, 1
	%aux31587 = add i32 %aux31585, %aux31586
	store i32 %aux31587, i32* @IdPos79
	br label %etiq14868
	
	etiq14868:
	;___Asignación___
	%aux31589 = load i32, i32* @Pivot79
	%aux31590 = add i32 0, 1
	%aux31591 = sub i32 %aux31589, %aux31590
	store i32 %aux31591, i32* @Pivot79
	br label %etiq14871
	
	etiq14862:
	;___Asignación___
	%aux31593 = load i32, i32* @IdPos79
	%aux31594 = add i32 0, 1
	%aux31595 = add i32 %aux31593, %aux31594
	store i32 %aux31595, i32* @IdPos79
	br label %etiq14871
	
	etiq14871:
	;___IfElse___
	%aux31597 = add i32 0, 100
	%aux31598 = load i32, i32* @Pivot79
	%aux31599 = sub i32 %aux31597, %aux31598
	%aux31600 = load i32, i32* @IdPos79
	%aux31601 = icmp eq i32 %aux31599, %aux31600
	br i1 %aux31601, label %etiq14872, label %etiq14873
	
	etiq14872:
	;___Asignación___
	%aux31603 = load i32, i32* @_Acum157
	%aux31604 = add i32 0, 1
	%aux31605 = add i32 0, 0
	%aux31606 = add i32 %aux31604, %aux31605
	%aux31607 = add i32 %aux31603, %aux31606
	store i32 %aux31607, i32* @_Acum157
	br label %etiq14877
	
	etiq14877:
	;___Asignación___
	%aux31609 = load i32, i32* @IdPos79
	%aux31610 = add i32 0, 1
	%aux31611 = add i32 %aux31609, %aux31610
	store i32 %aux31611, i32* @IdPos79
	br label %etiq14879
	
	etiq14879:
	;___Asignación___
	%aux31613 = load i32, i32* @Pivot79
	%aux31614 = add i32 0, 1
	%aux31615 = sub i32 %aux31613, %aux31614
	store i32 %aux31615, i32* @Pivot79
	br label %etiq14882
	
	etiq14873:
	;___Asignación___
	%aux31617 = load i32, i32* @IdPos79
	%aux31618 = add i32 0, 1
	%aux31619 = add i32 %aux31617, %aux31618
	store i32 %aux31619, i32* @IdPos79
	br label %etiq14882
	
	etiq14882:
	;___IfElse___
	%aux31621 = add i32 0, 100
	%aux31622 = load i32, i32* @Pivot79
	%aux31623 = sub i32 %aux31621, %aux31622
	%aux31624 = load i32, i32* @IdPos79
	%aux31625 = icmp eq i32 %aux31623, %aux31624
	br i1 %aux31625, label %etiq14883, label %etiq14884
	
	etiq14883:
	;___Asignación___
	%aux31627 = load i32, i32* @_Acum157
	%aux31628 = load i32, i32* @_Acum156
	%aux31629 = add i32 %aux31627, %aux31628
	store i32 %aux31629, i32* @_Acum157
	br label %etiq14886
	
	etiq14886:
	;___Asignación___
	%aux31631 = load i32, i32* @IdPos79
	%aux31632 = add i32 0, 1
	%aux31633 = add i32 %aux31631, %aux31632
	store i32 %aux31633, i32* @IdPos79
	br label %etiq14888
	
	etiq14888:
	;___Asignación___
	%aux31635 = load i32, i32* @Pivot79
	%aux31636 = add i32 0, 1
	%aux31637 = sub i32 %aux31635, %aux31636
	store i32 %aux31637, i32* @Pivot79
	br label %etiq14891
	
	etiq14884:
	;___Asignación___
	%aux31639 = load i32, i32* @IdPos79
	%aux31640 = add i32 0, 1
	%aux31641 = add i32 %aux31639, %aux31640
	store i32 %aux31641, i32* @IdPos79
	br label %etiq14891
	
	etiq13567:
	;___DisplayCadenaCaracteres___
	%aux31642 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq14891
	
	etiq13563:
	;___DisplayCadenaCaracteres___
	%aux31643 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq14891
	
	etiq13560:
	;___DisplayCadenaCaracteres___
	%aux31644 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq14891
	
	etiq14891:
	;___Asignación___
	%aux31646 = load i32, i32* @_Acum157
	store i32 %aux31646, i32* @res
	br label %etiq14892
	
	etiq14892:
	;___DisplayCadenaCaracteres___
	%aux31647 = call i32 @puts(i8* getelementptr ([12 x i8], [12 x i8] * @str60, i32 0, i32 0))
	br label %etiq14893
	
	etiq14893:
	;___DisplayExpresion___
	%aux31649 = load i32, i32* @res
	%aux31648 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux31649)
	br label %etiq14894
	
	etiq14894:
	;___DisplayCadenaCaracteres___
	%aux31650 = call i32 @puts(i8* getelementptr ([29 x i8], [29 x i8] * @str61, i32 0, i32 0))
	br label %etiq14895
	
	etiq14895:
	;___DisplayCadenaCaracteres___
	%aux31651 = call i32 @puts(i8* getelementptr ([30 x i8], [30 x i8] * @str62, i32 0, i32 0))
	br label %etiq14896
	
	etiq14896:
	;___Asignación___
	%aux31653 = alloca double
	%aux31654 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux31653)
	%aux31655 = load double, double* %aux31653
	store double %aux31655, double* @peso
	br label %etiq14897
	
	etiq14897:
	;___DisplayCadenaCaracteres___
	%aux31656 = call i32 @puts(i8* getelementptr ([32 x i8], [32 x i8] * @str63, i32 0, i32 0))
	br label %etiq14898
	
	etiq14898:
	;___Asignación___
	%aux31658 = alloca double
	%aux31659 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8] * @double_read_format, i64 0, i64 0), double* %aux31658)
	%aux31660 = load double, double* %aux31658
	store double %aux31660, double* @altura
	br label %etiq14899
	
	etiq14899:
	;___Asignación___
	%aux31662 = add i1 0, 1
	store i1 %aux31662, i1* @aux2
	br label %etiq14900
	
	etiq14900:
	;___While___
	%aux31664 = load i1, i1* @aux2
	br i1 %aux31664, label %etiq14901, label %etiq14934
	
	etiq14901:
	;___DisplayCadenaCaracteres___
	%aux31665 = call i32 @puts(i8* getelementptr ([90 x i8], [90 x i8] * @str64, i32 0, i32 0))
	br label %etiq14903
	
	etiq14903:
	;___Asignación___
	%aux31667 = alloca i32
	%aux31668 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux31667)
	%aux31669 = load i32, i32* %aux31667
	store i32 %aux31669, i32* @res
	br label %etiq14904
	
	etiq14904:
	;___IfElse___
	%aux31671 = load i32, i32* @res
	%aux31672 = add i32 0, 1
	%aux31673 = icmp eq i32 %aux31671, %aux31672
	br i1 %aux31673, label %etiq14906, label %etiq14907
	
	etiq14906:
	;___DisplayCadenaCaracteres___
	%aux31674 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str65, i32 0, i32 0))
	br label %etiq14909
	
	etiq14909:
	;___DisplayExpresion___
	%aux31676 = load double, double* @peso
	%aux31677 = load double, double* @altura
	%aux31678 = fmul double %aux31676, %aux31677
	%aux31679 = load i32, i32* @edad
	%aux31680 = sitofp i32 %aux31679 to double
	%aux31681 = fmul double %aux31678, %aux31680
	%aux31675 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux31681)
	br label %etiq14911
	
	etiq14911:
	;___Asignación___
	%aux31683 = load i1, i1* @aux2
	%aux31684 = xor i1 %aux31683, 1
	store i1 %aux31684, i1* @aux2
	br label %etiq14900
	
	etiq14907:
	;___IfElse___
	%aux31686 = load i32, i32* @res
	%aux31687 = add i32 0, 2
	%aux31688 = icmp eq i32 %aux31686, %aux31687
	br i1 %aux31688, label %etiq14913, label %etiq14914
	
	etiq14913:
	;___DisplayCadenaCaracteres___
	%aux31689 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str66, i32 0, i32 0))
	br label %etiq14916
	
	etiq14916:
	;___DisplayExpresion___
	%aux31691 = load double, double* @peso
	%aux31692 = load double, double* @altura
	%aux31693 = fdiv double %aux31691, %aux31692
	%aux31694 = load i32, i32* @edad
	%aux31695 = sitofp i32 %aux31694 to double
	%aux31696 = fdiv double %aux31693, %aux31695
	%aux31690 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux31696)
	br label %etiq14918
	
	etiq14918:
	;___Asignación___
	%aux31698 = load i1, i1* @aux2
	%aux31699 = xor i1 %aux31698, 1
	store i1 %aux31699, i1* @aux2
	br label %etiq14900
	
	etiq14914:
	;___IfElse___
	%aux31701 = load i32, i32* @res
	%aux31702 = add i32 0, 3
	%aux31703 = icmp eq i32 %aux31701, %aux31702
	br i1 %aux31703, label %etiq14920, label %etiq14921
	
	etiq14920:
	;___DisplayCadenaCaracteres___
	%aux31704 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str67, i32 0, i32 0))
	br label %etiq14923
	
	etiq14923:
	;___DisplayExpresion___
	%aux31706 = load double, double* @peso
	%aux31707 = load double, double* @altura
	%aux31708 = fadd double %aux31706, %aux31707
	%aux31709 = load i32, i32* @edad
	%aux31710 = sitofp i32 %aux31709 to double
	%aux31711 = fadd double %aux31708, %aux31710
	%aux31705 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux31711)
	br label %etiq14925
	
	etiq14925:
	;___Asignación___
	%aux31713 = load i1, i1* @aux2
	%aux31714 = xor i1 %aux31713, 1
	store i1 %aux31714, i1* @aux2
	br label %etiq14900
	
	etiq14921:
	;___IfElse___
	%aux31716 = load i32, i32* @res
	%aux31717 = add i32 0, 4
	%aux31718 = icmp eq i32 %aux31716, %aux31717
	br i1 %aux31718, label %etiq14927, label %etiq14928
	
	etiq14927:
	;___DisplayCadenaCaracteres___
	%aux31719 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @str68, i32 0, i32 0))
	br label %etiq14930
	
	etiq14930:
	;___DisplayExpresion___
	%aux31721 = load double, double* @peso
	%aux31722 = load double, double* @altura
	%aux31723 = fsub double %aux31721, %aux31722
	%aux31724 = load i32, i32* @edad
	%aux31725 = sitofp i32 %aux31724 to double
	%aux31726 = fsub double %aux31723, %aux31725
	%aux31720 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.double, i32 0, i32 0), double %aux31726)
	br label %etiq14932
	
	etiq14932:
	;___Asignación___
	%aux31728 = load i1, i1* @aux2
	%aux31729 = xor i1 %aux31728, 1
	store i1 %aux31729, i1* @aux2
	br label %etiq14900
	
	etiq14928:
	;___DisplayCadenaCaracteres___
	%aux31730 = call i32 @puts(i8* getelementptr ([60 x i8], [60 x i8] * @str69, i32 0, i32 0))
	br label %etiq14900
	
	etiq14934:
	;___DisplayCadenaCaracteres___
	%aux31731 = call i32 @puts(i8* getelementptr ([46 x i8], [46 x i8] * @str70, i32 0, i32 0))
	br label %etiq14935
	
	etiq14935:
	;___Asignación___
	%aux31733 = alloca i32
	%aux31734 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8] * @int_read_format, i64 0, i64 0), i32* %aux31733)
	%aux31735 = load i32, i32* %aux31733
	%aux31736 = trunc i32 %aux31735 to i1
	store i1 %aux31736, i1* @aux
	br label %etiq13232
	
	etiq14937:
	ret i32 0
}

