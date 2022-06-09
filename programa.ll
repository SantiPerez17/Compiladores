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
@IdPos10 = global i32 0
@IdPos11 = global i32 0
@IdPos12 = global i32 0
@IdPos5 = global i32 0
@IdPos6 = global i32 0
@IdPos7 = global i32 0
@IdPos8 = global i32 0
@IdPos9 = global i32 0
@Pivot10 = global i32 0
@Pivot11 = global i32 0
@Pivot12 = global i32 0
@Pivot5 = global i32 0
@Pivot6 = global i32 0
@Pivot7 = global i32 0
@Pivot8 = global i32 0
@Pivot9 = global i32 0
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
@_Acum20 = global i32 0
@_Acum21 = global i32 0
@_Acum22 = global i32 0
@_Acum23 = global i32 0
@_Acum24 = global i32 0
@_Acum9 = global i32 0
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
	
	etiq145:
	;___Asignación___
	%aux276 = add i32 0, 30
	store i32 %aux276, i32* @a
	br label %etiq146
	
	etiq146:
	;___Asignación___
	%aux278 = add i32 0, 50
	store i32 %aux278, i32* @b
	br label %etiq147
	
	etiq147:
	;___Asignación___
	%aux281 = load i32, i32* @b
	store i32 %aux281, i32* @Pivot7
	br label %etiq148
	
	etiq148:
	;___IfElse___
	%aux283 = load i32, i32* @Pivot7
	%aux284 = add i32 0, 1
	%aux285 = icmp sge i32 %aux283, %aux284
	br i1 %aux285, label %etiq150, label %etiq151
	
	etiq150:
	;___IfElse___
	%aux287 = add i32 0, 2
	%aux288 = load i32, i32* @Pivot7
	%aux289 = icmp sge i32 %aux287, %aux288
	br i1 %aux289, label %etiq153, label %etiq154
	
	etiq153:
	;___IfElse___
	%aux291 = add i32 0, 2
	%aux292 = add i32 0, 0
	%aux293 = icmp sgt i32 %aux291, %aux292
	br i1 %aux293, label %etiq157, label %etiq158
	
	etiq157:
	;___IfElse___
	%aux295 = add i32 0, 2
	%aux296 = load i32, i32* @Pivot7
	%aux297 = sub i32 %aux295, %aux296
	%aux298 = load i32, i32* @IdPos7
	%aux299 = icmp eq i32 %aux297, %aux298
	br i1 %aux299, label %etiq160, label %etiq161
	
	etiq160:
	;___Asignación___
	%aux301 = load i32, i32* @_Acum13
	%aux302 = add i32 0, 10
	br label %etiq164
	
	etiq164:
	;___Asignación___
	%aux304 = load i32, i32* @a
	store i32 %aux304, i32* @Pivot5
	br label %etiq165
	
	etiq165:
	;___IfElse___
	%aux306 = load i32, i32* @Pivot5
	%aux307 = add i32 0, 1
	%aux308 = icmp sge i32 %aux306, %aux307
	br i1 %aux308, label %etiq167, label %etiq168
	
	etiq167:
	;___IfElse___
	%aux310 = add i32 0, 2
	%aux311 = load i32, i32* @Pivot5
	%aux312 = icmp sge i32 %aux310, %aux311
	br i1 %aux312, label %etiq170, label %etiq171
	
	etiq170:
	;___IfElse___
	%aux314 = add i32 0, 2
	%aux315 = add i32 0, 0
	%aux316 = icmp sgt i32 %aux314, %aux315
	br i1 %aux316, label %etiq174, label %etiq175
	
	etiq174:
	;___IfElse___
	%aux318 = add i32 0, 2
	%aux319 = load i32, i32* @Pivot5
	%aux320 = sub i32 %aux318, %aux319
	%aux321 = load i32, i32* @IdPos5
	%aux322 = icmp eq i32 %aux320, %aux321
	br i1 %aux322, label %etiq177, label %etiq178
	
	etiq177:
	;___Asignación___
	%aux324 = load i32, i32* @_Acum9
	%aux325 = add i32 0, 1
	%aux326 = add i32 %aux324, %aux325
	store i32 %aux326, i32* @_Acum9
	br label %etiq181
	
	etiq181:
	;___Asignación___
	%aux328 = load i32, i32* @IdPos5
	%aux329 = add i32 0, 1
	%aux330 = add i32 %aux328, %aux329
	store i32 %aux330, i32* @IdPos5
	br label %etiq183
	
	etiq183:
	;___Asignación___
	%aux332 = load i32, i32* @Pivot5
	%aux333 = add i32 0, 1
	%aux334 = sub i32 %aux332, %aux333
	store i32 %aux334, i32* @Pivot5
	br label %etiq186
	
	etiq178:
	;___Asignación___
	%aux336 = load i32, i32* @IdPos5
	%aux337 = add i32 0, 1
	%aux338 = add i32 %aux336, %aux337
	store i32 %aux338, i32* @IdPos5
	br label %etiq186
	
	etiq186:
	;___IfElse___
	%aux340 = add i32 0, 2
	%aux341 = load i32, i32* @Pivot5
	%aux342 = sub i32 %aux340, %aux341
	%aux343 = load i32, i32* @IdPos5
	%aux344 = icmp eq i32 %aux342, %aux343
	br i1 %aux344, label %etiq187, label %etiq188
	
	etiq187:
	;___Asignación___
	%aux346 = load i32, i32* @_Acum9
	%aux347 = add i32 0, 2
	%aux348 = add i32 %aux346, %aux347
	store i32 %aux348, i32* @_Acum9
	br label %etiq191
	
	etiq191:
	;___Asignación___
	%aux350 = load i32, i32* @IdPos5
	%aux351 = add i32 0, 1
	%aux352 = add i32 %aux350, %aux351
	store i32 %aux352, i32* @IdPos5
	br label %etiq193
	
	etiq193:
	;___Asignación___
	%aux354 = load i32, i32* @Pivot5
	%aux355 = add i32 0, 1
	%aux356 = sub i32 %aux354, %aux355
	store i32 %aux356, i32* @Pivot5
	br label %etiq196
	
	etiq188:
	;___Asignación___
	%aux358 = load i32, i32* @IdPos5
	%aux359 = add i32 0, 1
	%aux360 = add i32 %aux358, %aux359
	store i32 %aux360, i32* @IdPos5
	br label %etiq196
	
	etiq175:
	;___DisplayCadenaCaracteres___
	%aux361 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq196
	
	etiq171:
	;___DisplayCadenaCaracteres___
	%aux362 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq196
	
	etiq168:
	;___DisplayCadenaCaracteres___
	%aux363 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq196
	
	etiq196:
	;___Asignación___
	%aux365 = load i32, i32* @_Acum9
	store i32 %aux365, i32* @_Acum10
	br label %etiq197
	
	etiq197:
	%aux366 = load i32, i32* @_Acum10
	%aux367 = mul i32 %aux302, %aux366
	%aux368 = add i32 0, 5
	%aux369 = add i32 %aux367, %aux368
	%aux370 = add i32 %aux301, %aux369
	store i32 %aux370, i32* @_Acum13
	br label %etiq199
	
	etiq199:
	;___Asignación___
	%aux372 = load i32, i32* @IdPos7
	%aux373 = add i32 0, 1
	%aux374 = add i32 %aux372, %aux373
	store i32 %aux374, i32* @IdPos7
	br label %etiq201
	
	etiq201:
	;___Asignación___
	%aux376 = load i32, i32* @Pivot7
	%aux377 = add i32 0, 1
	%aux378 = sub i32 %aux376, %aux377
	store i32 %aux378, i32* @Pivot7
	br label %etiq204
	
	etiq161:
	;___Asignación___
	%aux380 = load i32, i32* @IdPos7
	%aux381 = add i32 0, 1
	%aux382 = add i32 %aux380, %aux381
	store i32 %aux382, i32* @IdPos7
	br label %etiq204
	
	etiq204:
	;___IfElse___
	%aux384 = add i32 0, 2
	%aux385 = load i32, i32* @Pivot7
	%aux386 = sub i32 %aux384, %aux385
	%aux387 = load i32, i32* @IdPos7
	%aux388 = icmp eq i32 %aux386, %aux387
	br i1 %aux388, label %etiq205, label %etiq206
	
	etiq205:
	;___Asignación___
	%aux390 = load i32, i32* @_Acum13
	%aux391 = add i32 0, 10
	br label %etiq209
	
	etiq209:
	;___Asignación___
	%aux393 = add i32 0, 2
	store i32 %aux393, i32* @Pivot6
	br label %etiq210
	
	etiq210:
	;___IfElse___
	%aux395 = load i32, i32* @Pivot6
	%aux396 = add i32 0, 1
	%aux397 = icmp sge i32 %aux395, %aux396
	br i1 %aux397, label %etiq212, label %etiq213
	
	etiq212:
	;___IfElse___
	%aux399 = add i32 0, 2
	%aux400 = load i32, i32* @Pivot6
	%aux401 = icmp sge i32 %aux399, %aux400
	br i1 %aux401, label %etiq215, label %etiq216
	
	etiq215:
	;___IfElse___
	%aux403 = add i32 0, 2
	%aux404 = add i32 0, 0
	%aux405 = icmp sgt i32 %aux403, %aux404
	br i1 %aux405, label %etiq219, label %etiq220
	
	etiq219:
	;___IfElse___
	%aux407 = add i32 0, 2
	%aux408 = load i32, i32* @Pivot6
	%aux409 = sub i32 %aux407, %aux408
	%aux410 = load i32, i32* @IdPos6
	%aux411 = icmp eq i32 %aux409, %aux410
	br i1 %aux411, label %etiq222, label %etiq223
	
	etiq222:
	;___Asignación___
	%aux413 = load i32, i32* @_Acum11
	%aux414 = add i32 0, 1
	%aux415 = add i32 %aux413, %aux414
	store i32 %aux415, i32* @_Acum11
	br label %etiq226
	
	etiq226:
	;___Asignación___
	%aux417 = load i32, i32* @IdPos6
	%aux418 = add i32 0, 1
	%aux419 = add i32 %aux417, %aux418
	store i32 %aux419, i32* @IdPos6
	br label %etiq228
	
	etiq228:
	;___Asignación___
	%aux421 = load i32, i32* @Pivot6
	%aux422 = add i32 0, 1
	%aux423 = sub i32 %aux421, %aux422
	store i32 %aux423, i32* @Pivot6
	br label %etiq231
	
	etiq223:
	;___Asignación___
	%aux425 = load i32, i32* @IdPos6
	%aux426 = add i32 0, 1
	%aux427 = add i32 %aux425, %aux426
	store i32 %aux427, i32* @IdPos6
	br label %etiq231
	
	etiq231:
	;___IfElse___
	%aux429 = add i32 0, 2
	%aux430 = load i32, i32* @Pivot6
	%aux431 = sub i32 %aux429, %aux430
	%aux432 = load i32, i32* @IdPos6
	%aux433 = icmp eq i32 %aux431, %aux432
	br i1 %aux433, label %etiq232, label %etiq233
	
	etiq232:
	;___Asignación___
	%aux435 = load i32, i32* @_Acum11
	%aux436 = add i32 0, 2
	%aux437 = add i32 %aux435, %aux436
	store i32 %aux437, i32* @_Acum11
	br label %etiq236
	
	etiq236:
	;___Asignación___
	%aux439 = load i32, i32* @IdPos6
	%aux440 = add i32 0, 1
	%aux441 = add i32 %aux439, %aux440
	store i32 %aux441, i32* @IdPos6
	br label %etiq238
	
	etiq238:
	;___Asignación___
	%aux443 = load i32, i32* @Pivot6
	%aux444 = add i32 0, 1
	%aux445 = sub i32 %aux443, %aux444
	store i32 %aux445, i32* @Pivot6
	br label %etiq241
	
	etiq233:
	;___Asignación___
	%aux447 = load i32, i32* @IdPos6
	%aux448 = add i32 0, 1
	%aux449 = add i32 %aux447, %aux448
	store i32 %aux449, i32* @IdPos6
	br label %etiq241
	
	etiq220:
	;___DisplayCadenaCaracteres___
	%aux450 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq241
	
	etiq216:
	;___DisplayCadenaCaracteres___
	%aux451 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq241
	
	etiq213:
	;___DisplayCadenaCaracteres___
	%aux452 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq241
	
	etiq241:
	;___Asignación___
	%aux454 = load i32, i32* @_Acum11
	store i32 %aux454, i32* @_Acum12
	br label %etiq242
	
	etiq242:
	%aux455 = load i32, i32* @_Acum12
	%aux456 = mul i32 %aux391, %aux455
	%aux457 = add i32 0, 5
	%aux458 = add i32 %aux456, %aux457
	%aux459 = add i32 %aux390, %aux458
	store i32 %aux459, i32* @_Acum13
	br label %etiq244
	
	etiq244:
	;___Asignación___
	%aux461 = load i32, i32* @IdPos7
	%aux462 = add i32 0, 1
	%aux463 = add i32 %aux461, %aux462
	store i32 %aux463, i32* @IdPos7
	br label %etiq246
	
	etiq246:
	;___Asignación___
	%aux465 = load i32, i32* @Pivot7
	%aux466 = add i32 0, 1
	%aux467 = sub i32 %aux465, %aux466
	store i32 %aux467, i32* @Pivot7
	br label %etiq249
	
	etiq206:
	;___Asignación___
	%aux469 = load i32, i32* @IdPos7
	%aux470 = add i32 0, 1
	%aux471 = add i32 %aux469, %aux470
	store i32 %aux471, i32* @IdPos7
	br label %etiq249
	
	etiq158:
	;___DisplayCadenaCaracteres___
	%aux472 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq249
	
	etiq154:
	;___DisplayCadenaCaracteres___
	%aux473 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq249
	
	etiq151:
	;___DisplayCadenaCaracteres___
	%aux474 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq249
	
	etiq249:
	;___Asignación___
	%aux476 = load i32, i32* @_Acum13
	store i32 %aux476, i32* @_Acum14
	br label %etiq250
	
	etiq250:
	%aux477 = load i32, i32* @_Acum14
	%aux478 = add i32 0, 2
	br label %etiq252
	
	etiq252:
	;___Asignación___
	%aux480 = add i32 0, 2
	store i32 %aux480, i32* @Pivot8
	br label %etiq253
	
	etiq253:
	;___IfElse___
	%aux482 = load i32, i32* @Pivot8
	%aux483 = add i32 0, 1
	%aux484 = icmp sge i32 %aux482, %aux483
	br i1 %aux484, label %etiq255, label %etiq256
	
	etiq255:
	;___IfElse___
	%aux486 = add i32 0, 2
	%aux487 = load i32, i32* @Pivot8
	%aux488 = icmp sge i32 %aux486, %aux487
	br i1 %aux488, label %etiq258, label %etiq259
	
	etiq258:
	;___IfElse___
	%aux490 = add i32 0, 2
	%aux491 = add i32 0, 0
	%aux492 = icmp sgt i32 %aux490, %aux491
	br i1 %aux492, label %etiq262, label %etiq263
	
	etiq262:
	;___IfElse___
	%aux494 = add i32 0, 2
	%aux495 = load i32, i32* @Pivot8
	%aux496 = sub i32 %aux494, %aux495
	%aux497 = load i32, i32* @IdPos8
	%aux498 = icmp eq i32 %aux496, %aux497
	br i1 %aux498, label %etiq265, label %etiq266
	
	etiq265:
	;___Asignación___
	%aux500 = load i32, i32* @_Acum15
	%aux501 = add i32 0, 1
	%aux502 = add i32 %aux500, %aux501
	store i32 %aux502, i32* @_Acum15
	br label %etiq269
	
	etiq269:
	;___Asignación___
	%aux504 = load i32, i32* @IdPos8
	%aux505 = add i32 0, 1
	%aux506 = add i32 %aux504, %aux505
	store i32 %aux506, i32* @IdPos8
	br label %etiq271
	
	etiq271:
	;___Asignación___
	%aux508 = load i32, i32* @Pivot8
	%aux509 = add i32 0, 1
	%aux510 = sub i32 %aux508, %aux509
	store i32 %aux510, i32* @Pivot8
	br label %etiq274
	
	etiq266:
	;___Asignación___
	%aux512 = load i32, i32* @IdPos8
	%aux513 = add i32 0, 1
	%aux514 = add i32 %aux512, %aux513
	store i32 %aux514, i32* @IdPos8
	br label %etiq274
	
	etiq274:
	;___IfElse___
	%aux516 = add i32 0, 2
	%aux517 = load i32, i32* @Pivot8
	%aux518 = sub i32 %aux516, %aux517
	%aux519 = load i32, i32* @IdPos8
	%aux520 = icmp eq i32 %aux518, %aux519
	br i1 %aux520, label %etiq275, label %etiq276
	
	etiq275:
	;___Asignación___
	%aux522 = load i32, i32* @_Acum15
	%aux523 = add i32 0, 1
	%aux524 = add i32 0, 2
	%aux525 = add i32 %aux523, %aux524
	%aux526 = add i32 %aux522, %aux525
	store i32 %aux526, i32* @_Acum15
	br label %etiq280
	
	etiq280:
	;___Asignación___
	%aux528 = load i32, i32* @IdPos8
	%aux529 = add i32 0, 1
	%aux530 = add i32 %aux528, %aux529
	store i32 %aux530, i32* @IdPos8
	br label %etiq282
	
	etiq282:
	;___Asignación___
	%aux532 = load i32, i32* @Pivot8
	%aux533 = add i32 0, 1
	%aux534 = sub i32 %aux532, %aux533
	store i32 %aux534, i32* @Pivot8
	br label %etiq285
	
	etiq276:
	;___Asignación___
	%aux536 = load i32, i32* @IdPos8
	%aux537 = add i32 0, 1
	%aux538 = add i32 %aux536, %aux537
	store i32 %aux538, i32* @IdPos8
	br label %etiq285
	
	etiq263:
	;___DisplayCadenaCaracteres___
	%aux539 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq285
	
	etiq259:
	;___DisplayCadenaCaracteres___
	%aux540 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq285
	
	etiq256:
	;___DisplayCadenaCaracteres___
	%aux541 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq285
	
	etiq285:
	;___Asignación___
	%aux543 = load i32, i32* @_Acum15
	store i32 %aux543, i32* @_Acum16
	br label %etiq286
	
	etiq286:
	%aux544 = load i32, i32* @_Acum16
	%aux545 = mul i32 %aux478, %aux544
	%aux546 = add i32 %aux477, %aux545
	store i32 %aux546, i32* @res
	br label %etiq287
	
	etiq287:
	;___Asignación___
	%aux548 = add i32 0, 2
	br label %etiq288
	
	etiq288:
	;___Asignación___
	%aux550 = add i32 0, 2
	store i32 %aux550, i32* @Pivot9
	br label %etiq289
	
	etiq289:
	;___IfElse___
	%aux552 = load i32, i32* @Pivot9
	%aux553 = add i32 0, 1
	%aux554 = icmp sge i32 %aux552, %aux553
	br i1 %aux554, label %etiq291, label %etiq292
	
	etiq291:
	;___IfElse___
	%aux556 = add i32 0, 2
	%aux557 = load i32, i32* @Pivot9
	%aux558 = icmp sge i32 %aux556, %aux557
	br i1 %aux558, label %etiq294, label %etiq295
	
	etiq294:
	;___IfElse___
	%aux560 = add i32 0, 2
	%aux561 = add i32 0, 0
	%aux562 = icmp sgt i32 %aux560, %aux561
	br i1 %aux562, label %etiq298, label %etiq299
	
	etiq298:
	;___IfElse___
	%aux564 = add i32 0, 2
	%aux565 = load i32, i32* @Pivot9
	%aux566 = sub i32 %aux564, %aux565
	%aux567 = load i32, i32* @IdPos9
	%aux568 = icmp eq i32 %aux566, %aux567
	br i1 %aux568, label %etiq301, label %etiq302
	
	etiq301:
	;___Asignación___
	%aux570 = load i32, i32* @_Acum17
	%aux571 = add i32 0, 1
	%aux572 = add i32 %aux570, %aux571
	store i32 %aux572, i32* @_Acum17
	br label %etiq305
	
	etiq305:
	;___Asignación___
	%aux574 = load i32, i32* @IdPos9
	%aux575 = add i32 0, 1
	%aux576 = add i32 %aux574, %aux575
	store i32 %aux576, i32* @IdPos9
	br label %etiq307
	
	etiq307:
	;___Asignación___
	%aux578 = load i32, i32* @Pivot9
	%aux579 = add i32 0, 1
	%aux580 = sub i32 %aux578, %aux579
	store i32 %aux580, i32* @Pivot9
	br label %etiq310
	
	etiq302:
	;___Asignación___
	%aux582 = load i32, i32* @IdPos9
	%aux583 = add i32 0, 1
	%aux584 = add i32 %aux582, %aux583
	store i32 %aux584, i32* @IdPos9
	br label %etiq310
	
	etiq310:
	;___IfElse___
	%aux586 = add i32 0, 2
	%aux587 = load i32, i32* @Pivot9
	%aux588 = sub i32 %aux586, %aux587
	%aux589 = load i32, i32* @IdPos9
	%aux590 = icmp eq i32 %aux588, %aux589
	br i1 %aux590, label %etiq311, label %etiq312
	
	etiq311:
	;___Asignación___
	%aux592 = load i32, i32* @_Acum17
	%aux593 = add i32 0, 1
	%aux594 = add i32 0, 2
	%aux595 = add i32 %aux593, %aux594
	%aux596 = add i32 %aux592, %aux595
	store i32 %aux596, i32* @_Acum17
	br label %etiq316
	
	etiq316:
	;___Asignación___
	%aux598 = load i32, i32* @IdPos9
	%aux599 = add i32 0, 1
	%aux600 = add i32 %aux598, %aux599
	store i32 %aux600, i32* @IdPos9
	br label %etiq318
	
	etiq318:
	;___Asignación___
	%aux602 = load i32, i32* @Pivot9
	%aux603 = add i32 0, 1
	%aux604 = sub i32 %aux602, %aux603
	store i32 %aux604, i32* @Pivot9
	br label %etiq321
	
	etiq312:
	;___Asignación___
	%aux606 = load i32, i32* @IdPos9
	%aux607 = add i32 0, 1
	%aux608 = add i32 %aux606, %aux607
	store i32 %aux608, i32* @IdPos9
	br label %etiq321
	
	etiq299:
	;___DisplayCadenaCaracteres___
	%aux609 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq321
	
	etiq295:
	;___DisplayCadenaCaracteres___
	%aux610 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq321
	
	etiq292:
	;___DisplayCadenaCaracteres___
	%aux611 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq321
	
	etiq321:
	;___Asignación___
	%aux613 = load i32, i32* @_Acum17
	store i32 %aux613, i32* @_Acum18
	br label %etiq322
	
	etiq322:
	%aux614 = load i32, i32* @_Acum18
	%aux615 = sub i32 0, %aux614
	%aux616 = mul i32 %aux548, %aux615
	br label %etiq323
	
	etiq323:
	;___Asignación___
	%aux618 = load i32, i32* @b
	store i32 %aux618, i32* @Pivot12
	br label %etiq324
	
	etiq324:
	;___IfElse___
	%aux620 = load i32, i32* @Pivot12
	%aux621 = add i32 0, 1
	%aux622 = icmp sge i32 %aux620, %aux621
	br i1 %aux622, label %etiq326, label %etiq327
	
	etiq326:
	;___IfElse___
	%aux624 = add i32 0, 2
	%aux625 = load i32, i32* @Pivot12
	%aux626 = icmp sge i32 %aux624, %aux625
	br i1 %aux626, label %etiq329, label %etiq330
	
	etiq329:
	;___IfElse___
	%aux628 = add i32 0, 2
	%aux629 = add i32 0, 0
	%aux630 = icmp sgt i32 %aux628, %aux629
	br i1 %aux630, label %etiq333, label %etiq334
	
	etiq333:
	;___IfElse___
	%aux632 = add i32 0, 2
	%aux633 = load i32, i32* @Pivot12
	%aux634 = sub i32 %aux632, %aux633
	%aux635 = load i32, i32* @IdPos12
	%aux636 = icmp eq i32 %aux634, %aux635
	br i1 %aux636, label %etiq336, label %etiq337
	
	etiq336:
	;___Asignación___
	%aux638 = load i32, i32* @_Acum23
	%aux639 = add i32 0, 10
	br label %etiq340
	
	etiq340:
	;___Asignación___
	%aux641 = load i32, i32* @a
	store i32 %aux641, i32* @Pivot10
	br label %etiq341
	
	etiq341:
	;___IfElse___
	%aux643 = load i32, i32* @Pivot10
	%aux644 = add i32 0, 1
	%aux645 = icmp sge i32 %aux643, %aux644
	br i1 %aux645, label %etiq343, label %etiq344
	
	etiq343:
	;___IfElse___
	%aux647 = add i32 0, 2
	%aux648 = load i32, i32* @Pivot10
	%aux649 = icmp sge i32 %aux647, %aux648
	br i1 %aux649, label %etiq346, label %etiq347
	
	etiq346:
	;___IfElse___
	%aux651 = add i32 0, 2
	%aux652 = add i32 0, 0
	%aux653 = icmp sgt i32 %aux651, %aux652
	br i1 %aux653, label %etiq350, label %etiq351
	
	etiq350:
	;___IfElse___
	%aux655 = add i32 0, 2
	%aux656 = load i32, i32* @Pivot10
	%aux657 = sub i32 %aux655, %aux656
	%aux658 = load i32, i32* @IdPos10
	%aux659 = icmp eq i32 %aux657, %aux658
	br i1 %aux659, label %etiq353, label %etiq354
	
	etiq353:
	;___Asignación___
	%aux661 = load i32, i32* @_Acum19
	%aux662 = add i32 0, 1
	%aux663 = add i32 %aux661, %aux662
	store i32 %aux663, i32* @_Acum19
	br label %etiq357
	
	etiq357:
	;___Asignación___
	%aux665 = load i32, i32* @IdPos10
	%aux666 = add i32 0, 1
	%aux667 = add i32 %aux665, %aux666
	store i32 %aux667, i32* @IdPos10
	br label %etiq359
	
	etiq359:
	;___Asignación___
	%aux669 = load i32, i32* @Pivot10
	%aux670 = add i32 0, 1
	%aux671 = sub i32 %aux669, %aux670
	store i32 %aux671, i32* @Pivot10
	br label %etiq362
	
	etiq354:
	;___Asignación___
	%aux673 = load i32, i32* @IdPos10
	%aux674 = add i32 0, 1
	%aux675 = add i32 %aux673, %aux674
	store i32 %aux675, i32* @IdPos10
	br label %etiq362
	
	etiq362:
	;___IfElse___
	%aux677 = add i32 0, 2
	%aux678 = load i32, i32* @Pivot10
	%aux679 = sub i32 %aux677, %aux678
	%aux680 = load i32, i32* @IdPos10
	%aux681 = icmp eq i32 %aux679, %aux680
	br i1 %aux681, label %etiq363, label %etiq364
	
	etiq363:
	;___Asignación___
	%aux683 = load i32, i32* @_Acum19
	%aux684 = add i32 0, 2
	%aux685 = add i32 %aux683, %aux684
	store i32 %aux685, i32* @_Acum19
	br label %etiq367
	
	etiq367:
	;___Asignación___
	%aux687 = load i32, i32* @IdPos10
	%aux688 = add i32 0, 1
	%aux689 = add i32 %aux687, %aux688
	store i32 %aux689, i32* @IdPos10
	br label %etiq369
	
	etiq369:
	;___Asignación___
	%aux691 = load i32, i32* @Pivot10
	%aux692 = add i32 0, 1
	%aux693 = sub i32 %aux691, %aux692
	store i32 %aux693, i32* @Pivot10
	br label %etiq372
	
	etiq364:
	;___Asignación___
	%aux695 = load i32, i32* @IdPos10
	%aux696 = add i32 0, 1
	%aux697 = add i32 %aux695, %aux696
	store i32 %aux697, i32* @IdPos10
	br label %etiq372
	
	etiq351:
	;___DisplayCadenaCaracteres___
	%aux698 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq372
	
	etiq347:
	;___DisplayCadenaCaracteres___
	%aux699 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq372
	
	etiq344:
	;___DisplayCadenaCaracteres___
	%aux700 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq372
	
	etiq372:
	;___Asignación___
	%aux702 = load i32, i32* @_Acum19
	store i32 %aux702, i32* @_Acum20
	br label %etiq373
	
	etiq373:
	%aux703 = load i32, i32* @_Acum20
	%aux704 = mul i32 %aux639, %aux703
	%aux705 = add i32 0, 5
	%aux706 = add i32 %aux704, %aux705
	%aux707 = add i32 %aux638, %aux706
	store i32 %aux707, i32* @_Acum23
	br label %etiq375
	
	etiq375:
	;___Asignación___
	%aux709 = load i32, i32* @IdPos12
	%aux710 = add i32 0, 1
	%aux711 = add i32 %aux709, %aux710
	store i32 %aux711, i32* @IdPos12
	br label %etiq377
	
	etiq377:
	;___Asignación___
	%aux713 = load i32, i32* @Pivot12
	%aux714 = add i32 0, 1
	%aux715 = sub i32 %aux713, %aux714
	store i32 %aux715, i32* @Pivot12
	br label %etiq380
	
	etiq337:
	;___Asignación___
	%aux717 = load i32, i32* @IdPos12
	%aux718 = add i32 0, 1
	%aux719 = add i32 %aux717, %aux718
	store i32 %aux719, i32* @IdPos12
	br label %etiq380
	
	etiq380:
	;___IfElse___
	%aux721 = add i32 0, 2
	%aux722 = load i32, i32* @Pivot12
	%aux723 = sub i32 %aux721, %aux722
	%aux724 = load i32, i32* @IdPos12
	%aux725 = icmp eq i32 %aux723, %aux724
	br i1 %aux725, label %etiq381, label %etiq382
	
	etiq381:
	;___Asignación___
	%aux727 = load i32, i32* @_Acum23
	%aux728 = add i32 0, 10
	br label %etiq385
	
	etiq385:
	;___Asignación___
	%aux730 = add i32 0, 2
	store i32 %aux730, i32* @Pivot11
	br label %etiq386
	
	etiq386:
	;___IfElse___
	%aux732 = load i32, i32* @Pivot11
	%aux733 = add i32 0, 1
	%aux734 = icmp sge i32 %aux732, %aux733
	br i1 %aux734, label %etiq388, label %etiq389
	
	etiq388:
	;___IfElse___
	%aux736 = add i32 0, 2
	%aux737 = load i32, i32* @Pivot11
	%aux738 = icmp sge i32 %aux736, %aux737
	br i1 %aux738, label %etiq391, label %etiq392
	
	etiq391:
	;___IfElse___
	%aux740 = add i32 0, 2
	%aux741 = add i32 0, 0
	%aux742 = icmp sgt i32 %aux740, %aux741
	br i1 %aux742, label %etiq395, label %etiq396
	
	etiq395:
	;___IfElse___
	%aux744 = add i32 0, 2
	%aux745 = load i32, i32* @Pivot11
	%aux746 = sub i32 %aux744, %aux745
	%aux747 = load i32, i32* @IdPos11
	%aux748 = icmp eq i32 %aux746, %aux747
	br i1 %aux748, label %etiq398, label %etiq399
	
	etiq398:
	;___Asignación___
	%aux750 = load i32, i32* @_Acum21
	%aux751 = add i32 0, 1
	%aux752 = add i32 %aux750, %aux751
	store i32 %aux752, i32* @_Acum21
	br label %etiq402
	
	etiq402:
	;___Asignación___
	%aux754 = load i32, i32* @IdPos11
	%aux755 = add i32 0, 1
	%aux756 = add i32 %aux754, %aux755
	store i32 %aux756, i32* @IdPos11
	br label %etiq404
	
	etiq404:
	;___Asignación___
	%aux758 = load i32, i32* @Pivot11
	%aux759 = add i32 0, 1
	%aux760 = sub i32 %aux758, %aux759
	store i32 %aux760, i32* @Pivot11
	br label %etiq407
	
	etiq399:
	;___Asignación___
	%aux762 = load i32, i32* @IdPos11
	%aux763 = add i32 0, 1
	%aux764 = add i32 %aux762, %aux763
	store i32 %aux764, i32* @IdPos11
	br label %etiq407
	
	etiq407:
	;___IfElse___
	%aux766 = add i32 0, 2
	%aux767 = load i32, i32* @Pivot11
	%aux768 = sub i32 %aux766, %aux767
	%aux769 = load i32, i32* @IdPos11
	%aux770 = icmp eq i32 %aux768, %aux769
	br i1 %aux770, label %etiq408, label %etiq409
	
	etiq408:
	;___Asignación___
	%aux772 = load i32, i32* @_Acum21
	%aux773 = add i32 0, 2
	%aux774 = add i32 %aux772, %aux773
	store i32 %aux774, i32* @_Acum21
	br label %etiq412
	
	etiq412:
	;___Asignación___
	%aux776 = load i32, i32* @IdPos11
	%aux777 = add i32 0, 1
	%aux778 = add i32 %aux776, %aux777
	store i32 %aux778, i32* @IdPos11
	br label %etiq414
	
	etiq414:
	;___Asignación___
	%aux780 = load i32, i32* @Pivot11
	%aux781 = add i32 0, 1
	%aux782 = sub i32 %aux780, %aux781
	store i32 %aux782, i32* @Pivot11
	br label %etiq417
	
	etiq409:
	;___Asignación___
	%aux784 = load i32, i32* @IdPos11
	%aux785 = add i32 0, 1
	%aux786 = add i32 %aux784, %aux785
	store i32 %aux786, i32* @IdPos11
	br label %etiq417
	
	etiq396:
	;___DisplayCadenaCaracteres___
	%aux787 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq417
	
	etiq392:
	;___DisplayCadenaCaracteres___
	%aux788 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq417
	
	etiq389:
	;___DisplayCadenaCaracteres___
	%aux789 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq417
	
	etiq417:
	;___Asignación___
	%aux791 = load i32, i32* @_Acum21
	store i32 %aux791, i32* @_Acum22
	br label %etiq418
	
	etiq418:
	%aux792 = load i32, i32* @_Acum22
	%aux793 = mul i32 %aux728, %aux792
	%aux794 = add i32 0, 5
	%aux795 = add i32 %aux793, %aux794
	%aux796 = add i32 %aux727, %aux795
	store i32 %aux796, i32* @_Acum23
	br label %etiq420
	
	etiq420:
	;___Asignación___
	%aux798 = load i32, i32* @IdPos12
	%aux799 = add i32 0, 1
	%aux800 = add i32 %aux798, %aux799
	store i32 %aux800, i32* @IdPos12
	br label %etiq422
	
	etiq422:
	;___Asignación___
	%aux802 = load i32, i32* @Pivot12
	%aux803 = add i32 0, 1
	%aux804 = sub i32 %aux802, %aux803
	store i32 %aux804, i32* @Pivot12
	br label %etiq425
	
	etiq382:
	;___Asignación___
	%aux806 = load i32, i32* @IdPos12
	%aux807 = add i32 0, 1
	%aux808 = add i32 %aux806, %aux807
	store i32 %aux808, i32* @IdPos12
	br label %etiq425
	
	etiq334:
	;___DisplayCadenaCaracteres___
	%aux809 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq425
	
	etiq330:
	;___DisplayCadenaCaracteres___
	%aux810 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq425
	
	etiq327:
	;___DisplayCadenaCaracteres___
	%aux811 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq425
	
	etiq425:
	;___Asignación___
	%aux813 = load i32, i32* @_Acum23
	store i32 %aux813, i32* @_Acum24
	br label %etiq426
	
	etiq426:
	%aux814 = load i32, i32* @_Acum24
	%aux815 = add i32 %aux616, %aux814
	store i32 %aux815, i32* @res2
	br label %etiq427
	
	etiq427:
	;___DisplayExpresion___
	%aux817 = load i32, i32* @res
	%aux816 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux817)
	br label %etiq428
	
	etiq428:
	;___DisplayExpresion___
	%aux819 = load i32, i32* @res2
	%aux818 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux819)
	br label %etiq429
	
	etiq429:
	ret i32 0
}

