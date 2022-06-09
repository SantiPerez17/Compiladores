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
@IdPos4 = global i32 0
@IdPos5 = global i32 0
@IdPos6 = global i32 0
@IdPos7 = global i32 0
@Pivot4 = global i32 0
@Pivot5 = global i32 0
@Pivot6 = global i32 0
@Pivot7 = global i32 0
@_Acum10 = global i32 0
@_Acum11 = global i32 0
@_Acum12 = global i32 0
@_Acum13 = global i32 0
@_Acum14 = global i32 0
@_Acum7 = global i32 0
@_Acum8 = global i32 0
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
	
	etiq110:
	;___Asignación___
	%aux209 = add i32 0, 1
	store i32 %aux209, i32* @a
	br label %etiq111
	
	etiq111:
	;___Asignación___
	%aux211 = add i32 0, 2
	store i32 %aux211, i32* @b
	br label %etiq112
	
	etiq112:
	;___Asignación___
	%aux214 = load i32, i32* @b
	store i32 %aux214, i32* @Pivot6
	br label %etiq113
	
	etiq113:
	;___IfElse___
	%aux216 = load i32, i32* @Pivot6
	%aux217 = add i32 0, 1
	%aux218 = icmp sge i32 %aux216, %aux217
	br i1 %aux218, label %etiq115, label %etiq116
	
	etiq115:
	;___IfElse___
	%aux220 = add i32 0, 2
	%aux221 = load i32, i32* @Pivot6
	%aux222 = icmp sge i32 %aux220, %aux221
	br i1 %aux222, label %etiq118, label %etiq119
	
	etiq118:
	;___IfElse___
	%aux224 = add i32 0, 2
	%aux225 = add i32 0, 0
	%aux226 = icmp sgt i32 %aux224, %aux225
	br i1 %aux226, label %etiq122, label %etiq123
	
	etiq122:
	;___IfElse___
	%aux228 = add i32 0, 2
	%aux229 = load i32, i32* @Pivot6
	%aux230 = sub i32 %aux228, %aux229
	%aux231 = load i32, i32* @IdPos6
	%aux232 = icmp eq i32 %aux230, %aux231
	br i1 %aux232, label %etiq125, label %etiq126
	
	etiq125:
	;___Asignación___
	%aux234 = load i32, i32* @_Acum11
	%aux235 = add i32 0, 10
	br label %etiq129
	
	etiq129:
	;___Asignación___
	%aux237 = load i32, i32* @a
	store i32 %aux237, i32* @Pivot4
	br label %etiq130
	
	etiq130:
	;___IfElse___
	%aux239 = load i32, i32* @Pivot4
	%aux240 = add i32 0, 1
	%aux241 = icmp sge i32 %aux239, %aux240
	br i1 %aux241, label %etiq132, label %etiq133
	
	etiq132:
	;___IfElse___
	%aux243 = add i32 0, 2
	%aux244 = load i32, i32* @Pivot4
	%aux245 = icmp sge i32 %aux243, %aux244
	br i1 %aux245, label %etiq135, label %etiq136
	
	etiq135:
	;___IfElse___
	%aux247 = add i32 0, 2
	%aux248 = add i32 0, 0
	%aux249 = icmp sgt i32 %aux247, %aux248
	br i1 %aux249, label %etiq139, label %etiq140
	
	etiq139:
	;___IfElse___
	%aux251 = add i32 0, 2
	%aux252 = load i32, i32* @Pivot4
	%aux253 = sub i32 %aux251, %aux252
	%aux254 = load i32, i32* @IdPos4
	%aux255 = icmp eq i32 %aux253, %aux254
	br i1 %aux255, label %etiq142, label %etiq143
	
	etiq142:
	;___Asignación___
	%aux257 = load i32, i32* @_Acum7
	%aux258 = add i32 0, 1
	%aux259 = add i32 %aux257, %aux258
	store i32 %aux259, i32* @_Acum7
	br label %etiq146
	
	etiq146:
	;___Asignación___
	%aux261 = load i32, i32* @IdPos4
	%aux262 = add i32 0, 1
	%aux263 = add i32 %aux261, %aux262
	store i32 %aux263, i32* @IdPos4
	br label %etiq148
	
	etiq148:
	;___Asignación___
	%aux265 = load i32, i32* @Pivot4
	%aux266 = add i32 0, 1
	%aux267 = sub i32 %aux265, %aux266
	store i32 %aux267, i32* @Pivot4
	br label %etiq151
	
	etiq143:
	;___Asignación___
	%aux269 = load i32, i32* @IdPos4
	%aux270 = add i32 0, 1
	%aux271 = add i32 %aux269, %aux270
	store i32 %aux271, i32* @IdPos4
	br label %etiq151
	
	etiq151:
	;___IfElse___
	%aux273 = add i32 0, 2
	%aux274 = load i32, i32* @Pivot4
	%aux275 = sub i32 %aux273, %aux274
	%aux276 = load i32, i32* @IdPos4
	%aux277 = icmp eq i32 %aux275, %aux276
	br i1 %aux277, label %etiq152, label %etiq153
	
	etiq152:
	;___Asignación___
	%aux279 = load i32, i32* @_Acum7
	%aux280 = add i32 0, 2
	%aux281 = add i32 %aux279, %aux280
	store i32 %aux281, i32* @_Acum7
	br label %etiq156
	
	etiq156:
	;___Asignación___
	%aux283 = load i32, i32* @IdPos4
	%aux284 = add i32 0, 1
	%aux285 = add i32 %aux283, %aux284
	store i32 %aux285, i32* @IdPos4
	br label %etiq158
	
	etiq158:
	;___Asignación___
	%aux287 = load i32, i32* @Pivot4
	%aux288 = add i32 0, 1
	%aux289 = sub i32 %aux287, %aux288
	store i32 %aux289, i32* @Pivot4
	br label %etiq161
	
	etiq153:
	;___Asignación___
	%aux291 = load i32, i32* @IdPos4
	%aux292 = add i32 0, 1
	%aux293 = add i32 %aux291, %aux292
	store i32 %aux293, i32* @IdPos4
	br label %etiq161
	
	etiq140:
	;___DisplayCadenaCaracteres___
	%aux294 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq161
	
	etiq136:
	;___DisplayCadenaCaracteres___
	%aux295 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq161
	
	etiq133:
	;___DisplayCadenaCaracteres___
	%aux296 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq161
	
	etiq161:
	;___Asignación___
	%aux298 = load i32, i32* @_Acum7
	store i32 %aux298, i32* @_Acum8
	br label %etiq162
	
	etiq162:
	%aux299 = load i32, i32* @_Acum8
	%aux300 = mul i32 %aux235, %aux299
	%aux301 = add i32 0, 5
	%aux302 = add i32 %aux300, %aux301
	%aux303 = add i32 %aux234, %aux302
	store i32 %aux303, i32* @_Acum11
	br label %etiq164
	
	etiq164:
	;___Asignación___
	%aux305 = load i32, i32* @IdPos6
	%aux306 = add i32 0, 1
	%aux307 = add i32 %aux305, %aux306
	store i32 %aux307, i32* @IdPos6
	br label %etiq166
	
	etiq166:
	;___Asignación___
	%aux309 = load i32, i32* @Pivot6
	%aux310 = add i32 0, 1
	%aux311 = sub i32 %aux309, %aux310
	store i32 %aux311, i32* @Pivot6
	br label %etiq169
	
	etiq126:
	;___Asignación___
	%aux313 = load i32, i32* @IdPos6
	%aux314 = add i32 0, 1
	%aux315 = add i32 %aux313, %aux314
	store i32 %aux315, i32* @IdPos6
	br label %etiq169
	
	etiq169:
	;___IfElse___
	%aux317 = add i32 0, 2
	%aux318 = load i32, i32* @Pivot6
	%aux319 = sub i32 %aux317, %aux318
	%aux320 = load i32, i32* @IdPos6
	%aux321 = icmp eq i32 %aux319, %aux320
	br i1 %aux321, label %etiq170, label %etiq171
	
	etiq170:
	;___Asignación___
	%aux323 = load i32, i32* @_Acum11
	%aux324 = add i32 0, 10
	br label %etiq174
	
	etiq174:
	;___Asignación___
	%aux326 = add i32 0, 2
	store i32 %aux326, i32* @Pivot5
	br label %etiq175
	
	etiq175:
	;___IfElse___
	%aux328 = load i32, i32* @Pivot5
	%aux329 = add i32 0, 1
	%aux330 = icmp sge i32 %aux328, %aux329
	br i1 %aux330, label %etiq177, label %etiq178
	
	etiq177:
	;___IfElse___
	%aux332 = add i32 0, 2
	%aux333 = load i32, i32* @Pivot5
	%aux334 = icmp sge i32 %aux332, %aux333
	br i1 %aux334, label %etiq180, label %etiq181
	
	etiq180:
	;___IfElse___
	%aux336 = add i32 0, 2
	%aux337 = add i32 0, 0
	%aux338 = icmp sgt i32 %aux336, %aux337
	br i1 %aux338, label %etiq184, label %etiq185
	
	etiq184:
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
	%aux347 = add i32 0, 1
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
	
	etiq196:
	;___IfElse___
	%aux362 = add i32 0, 2
	%aux363 = load i32, i32* @Pivot5
	%aux364 = sub i32 %aux362, %aux363
	%aux365 = load i32, i32* @IdPos5
	%aux366 = icmp eq i32 %aux364, %aux365
	br i1 %aux366, label %etiq197, label %etiq198
	
	etiq197:
	;___Asignación___
	%aux368 = load i32, i32* @_Acum9
	%aux369 = add i32 0, 2
	%aux370 = add i32 %aux368, %aux369
	store i32 %aux370, i32* @_Acum9
	br label %etiq201
	
	etiq201:
	;___Asignación___
	%aux372 = load i32, i32* @IdPos5
	%aux373 = add i32 0, 1
	%aux374 = add i32 %aux372, %aux373
	store i32 %aux374, i32* @IdPos5
	br label %etiq203
	
	etiq203:
	;___Asignación___
	%aux376 = load i32, i32* @Pivot5
	%aux377 = add i32 0, 1
	%aux378 = sub i32 %aux376, %aux377
	store i32 %aux378, i32* @Pivot5
	br label %etiq206
	
	etiq198:
	;___Asignación___
	%aux380 = load i32, i32* @IdPos5
	%aux381 = add i32 0, 1
	%aux382 = add i32 %aux380, %aux381
	store i32 %aux382, i32* @IdPos5
	br label %etiq206
	
	etiq185:
	;___DisplayCadenaCaracteres___
	%aux383 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq206
	
	etiq181:
	;___DisplayCadenaCaracteres___
	%aux384 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq206
	
	etiq178:
	;___DisplayCadenaCaracteres___
	%aux385 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq206
	
	etiq206:
	;___Asignación___
	%aux387 = load i32, i32* @_Acum9
	store i32 %aux387, i32* @_Acum10
	br label %etiq207
	
	etiq207:
	%aux388 = load i32, i32* @_Acum10
	%aux389 = mul i32 %aux324, %aux388
	%aux390 = add i32 0, 5
	%aux391 = add i32 %aux389, %aux390
	%aux392 = add i32 %aux323, %aux391
	store i32 %aux392, i32* @_Acum11
	br label %etiq209
	
	etiq209:
	;___Asignación___
	%aux394 = load i32, i32* @IdPos6
	%aux395 = add i32 0, 1
	%aux396 = add i32 %aux394, %aux395
	store i32 %aux396, i32* @IdPos6
	br label %etiq211
	
	etiq211:
	;___Asignación___
	%aux398 = load i32, i32* @Pivot6
	%aux399 = add i32 0, 1
	%aux400 = sub i32 %aux398, %aux399
	store i32 %aux400, i32* @Pivot6
	br label %etiq214
	
	etiq171:
	;___Asignación___
	%aux402 = load i32, i32* @IdPos6
	%aux403 = add i32 0, 1
	%aux404 = add i32 %aux402, %aux403
	store i32 %aux404, i32* @IdPos6
	br label %etiq214
	
	etiq123:
	;___DisplayCadenaCaracteres___
	%aux405 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq214
	
	etiq119:
	;___DisplayCadenaCaracteres___
	%aux406 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq214
	
	etiq116:
	;___DisplayCadenaCaracteres___
	%aux407 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq214
	
	etiq214:
	;___Asignación___
	%aux409 = load i32, i32* @_Acum11
	store i32 %aux409, i32* @_Acum12
	br label %etiq215
	
	etiq215:
	%aux410 = load i32, i32* @_Acum12
	%aux411 = add i32 0, 2
	br label %etiq217
	
	etiq217:
	;___Asignación___
	%aux413 = add i32 0, 2
	store i32 %aux413, i32* @Pivot7
	br label %etiq218
	
	etiq218:
	;___IfElse___
	%aux415 = load i32, i32* @Pivot7
	%aux416 = add i32 0, 1
	%aux417 = icmp sge i32 %aux415, %aux416
	br i1 %aux417, label %etiq220, label %etiq221
	
	etiq220:
	;___IfElse___
	%aux419 = add i32 0, 2
	%aux420 = load i32, i32* @Pivot7
	%aux421 = icmp sge i32 %aux419, %aux420
	br i1 %aux421, label %etiq223, label %etiq224
	
	etiq223:
	;___IfElse___
	%aux423 = add i32 0, 2
	%aux424 = add i32 0, 0
	%aux425 = icmp sgt i32 %aux423, %aux424
	br i1 %aux425, label %etiq227, label %etiq228
	
	etiq227:
	;___IfElse___
	%aux427 = add i32 0, 2
	%aux428 = load i32, i32* @Pivot7
	%aux429 = sub i32 %aux427, %aux428
	%aux430 = load i32, i32* @IdPos7
	%aux431 = icmp eq i32 %aux429, %aux430
	br i1 %aux431, label %etiq230, label %etiq231
	
	etiq230:
	;___Asignación___
	%aux433 = load i32, i32* @_Acum13
	%aux434 = add i32 0, 1
	%aux435 = add i32 %aux433, %aux434
	store i32 %aux435, i32* @_Acum13
	br label %etiq234
	
	etiq234:
	;___Asignación___
	%aux437 = load i32, i32* @IdPos7
	%aux438 = add i32 0, 1
	%aux439 = add i32 %aux437, %aux438
	store i32 %aux439, i32* @IdPos7
	br label %etiq236
	
	etiq236:
	;___Asignación___
	%aux441 = load i32, i32* @Pivot7
	%aux442 = add i32 0, 1
	%aux443 = sub i32 %aux441, %aux442
	store i32 %aux443, i32* @Pivot7
	br label %etiq239
	
	etiq231:
	;___Asignación___
	%aux445 = load i32, i32* @IdPos7
	%aux446 = add i32 0, 1
	%aux447 = add i32 %aux445, %aux446
	store i32 %aux447, i32* @IdPos7
	br label %etiq239
	
	etiq239:
	;___IfElse___
	%aux449 = add i32 0, 2
	%aux450 = load i32, i32* @Pivot7
	%aux451 = sub i32 %aux449, %aux450
	%aux452 = load i32, i32* @IdPos7
	%aux453 = icmp eq i32 %aux451, %aux452
	br i1 %aux453, label %etiq240, label %etiq241
	
	etiq240:
	;___Asignación___
	%aux455 = load i32, i32* @_Acum13
	%aux456 = add i32 0, 1
	%aux457 = add i32 0, 2
	%aux458 = add i32 %aux456, %aux457
	%aux459 = add i32 %aux455, %aux458
	store i32 %aux459, i32* @_Acum13
	br label %etiq245
	
	etiq245:
	;___Asignación___
	%aux461 = load i32, i32* @IdPos7
	%aux462 = add i32 0, 1
	%aux463 = add i32 %aux461, %aux462
	store i32 %aux463, i32* @IdPos7
	br label %etiq247
	
	etiq247:
	;___Asignación___
	%aux465 = load i32, i32* @Pivot7
	%aux466 = add i32 0, 1
	%aux467 = sub i32 %aux465, %aux466
	store i32 %aux467, i32* @Pivot7
	br label %etiq250
	
	etiq241:
	;___Asignación___
	%aux469 = load i32, i32* @IdPos7
	%aux470 = add i32 0, 1
	%aux471 = add i32 %aux469, %aux470
	store i32 %aux471, i32* @IdPos7
	br label %etiq250
	
	etiq228:
	;___DisplayCadenaCaracteres___
	%aux472 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq250
	
	etiq224:
	;___DisplayCadenaCaracteres___
	%aux473 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq250
	
	etiq221:
	;___DisplayCadenaCaracteres___
	%aux474 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq250
	
	etiq250:
	;___Asignación___
	%aux476 = load i32, i32* @_Acum13
	store i32 %aux476, i32* @_Acum14
	br label %etiq251
	
	etiq251:
	%aux477 = load i32, i32* @_Acum14
	%aux478 = mul i32 %aux411, %aux477
	%aux479 = add i32 %aux410, %aux478
	store i32 %aux479, i32* @res
	br label %etiq252
	
	etiq252:
	;___DisplayExpresion___
	%aux481 = load i32, i32* @res
	%aux480 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux481)
	br label %etiq253
	
	etiq253:
	ret i32 0
}

