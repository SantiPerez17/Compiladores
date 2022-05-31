;Programa: 'Prueba'
source_filename = "pruebas.txt"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.11.0"

declare i32 @puts(i8*)
declare i32 @scanf(i8*, ...)
declare double @scanfd(i8*, ...)
declare i1 @scanfb(i8*, ...)
@.integer = private constant [4 x i8] c"%d\0A\00"
@.double = private constant [5 x i8] c"%lf\0A\00"
@int_read_format = unnamed_addr constant [3 x i8] c"%d\00"
@double_read_format = unnamed_addr constant [4 x i8] c"%lf\00"
@bool_read_format = unnamed_addr constant [3 x i8] c"%b\00"

@_Acum1 = global i32 0
@_Acum2 = global i32 0
@_Acum3 = global i32 0
@_IdPos1 = global i32 0
@_IdPos2 = global i32 0
@_IdPos3 = global i32 0
@_Pivot1 = global i32 0
@_Pivot2 = global i32 0
@_Pivot3 = global i32 0
@a = global i32 0
@ahre = global i1 0
@b = global i32 0
@c = global i32 0
@d = global i32 0
@f = global double 0.0
@r = global i1 0
@res = global i32 0
@res2 = global i32 0
@str12 = private constant [7 x i8] c"\0Ahola\0A\00"
@str19 = private constant [7 x i8] c"\0Achau\0A\00"
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq1:
	;___DisplayCadenaCaracteres___
	%aux2 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str12, i32 0, i32 0))
	br label %etiq3
	
	etiq3:
	;___Asignación___
	%aux5 = load i32, i32* @a
	store i32 %aux5, i32* @_Pivot1
	br label %etiq6
	
	etiq6:
	%aux9 = load i32, i32* @_Pivot1
	%aux12 = add i32 0, 1
	%aux11 = icmp sge i32 %aux9, %aux12
	br i1 %aux11, label %etiq7, label %etiq8
	
	etiq7:
	%aux19 = add i32 0, 2
	%aux17 = load i32, i32* @_Pivot1
	%aux18 = icmp sge i32 %aux19, %aux17
	br i1 %aux18, label %etiq14, label %etiq15
	
	etiq14:
	%aux26 = add i32 0, 2
	%aux27 = add i32 0, 0
	%aux25 = icmp sgt i32 %aux26, %aux27
	br i1 %aux25, label %etiq21, label %etiq22
	
	etiq21:
	%aux37 = add i32 0, 2
	%aux35 = load i32, i32* @_Pivot1
	%aux36 = sub i32 %aux37, %aux35
	%aux32 = load i32, i32* @_IdPos1
	%aux33 = icmp eq i32 %aux36, %aux32
	%aux38 = load i32, i32* @_Pivot1
	%aux41 = add i32 0, 2
	%aux40 = icmp sle i32 %aux38, %aux41
	%aux30 = and i1 %aux33, %aux40
	br i1 %aux25, label %etiq42, label %etiq43
	
	etiq42:
	;___Asignación___
	%aux45 = load i32, i32* @_Acum1
	%aux46 = load i32, i32* @b
	%aux47 = add i32 %aux45, %aux46
	store i32 %aux47, i32* @_Acum1
	br label %etiq48
	
	etiq48:
	;___Asignación___
	%aux50 = load i32, i32* @_IdPos1
	%aux53 = add i32 0, 1
	%aux52 = add i32 %aux50, %aux53
	store i32 %aux52, i32* @_IdPos1
	br label %etiq54
	
	etiq54:
	;___Asignación___
	%aux56 = load i32, i32* @_Pivot1
	%aux59 = add i32 0, 1
	%aux58 = sub i32 %aux56, %aux59
	store i32 %aux58, i32* @_Pivot1
	br label %etiq66
	
	etiq43:
	;___Asignación___
	%aux62 = load i32, i32* @_IdPos1
	%aux65 = add i32 0, 1
	%aux64 = add i32 %aux62, %aux65
	store i32 %aux64, i32* @_IdPos1
	br label %etiq66
	
	etiq66:
	%aux76 = add i32 0, 2
	%aux74 = load i32, i32* @_Pivot1
	%aux75 = sub i32 %aux76, %aux74
	%aux71 = load i32, i32* @_IdPos1
	%aux72 = icmp eq i32 %aux75, %aux71
	%aux77 = load i32, i32* @_Pivot1
	%aux80 = add i32 0, 2
	%aux79 = icmp sle i32 %aux77, %aux80
	%aux69 = and i1 %aux72, %aux79
	br i1 %aux25, label %etiq81, label %etiq82
	
	etiq81:
	;___Asignación___
	%aux84 = load i32, i32* @_Acum1
	%aux90 = add i32 0, 20
	%aux88 = load i32, i32* @c
	%aux89 = add i32 %aux90, %aux88
	%aux86 = add i32 %aux84, %aux89
	store i32 %aux86, i32* @_Acum1
	br label %etiq91
	
	etiq91:
	;___Asignación___
	%aux93 = load i32, i32* @_IdPos1
	%aux96 = add i32 0, 1
	%aux95 = add i32 %aux93, %aux96
	store i32 %aux95, i32* @_IdPos1
	br label %etiq97
	
	etiq97:
	;___Asignación___
	%aux99 = load i32, i32* @_Pivot1
	%aux102 = add i32 0, 1
	%aux101 = sub i32 %aux99, %aux102
	store i32 %aux101, i32* @_Pivot1
	br label %etiq103
	
	etiq103:
	%aux104 = load i32, i32* @_Acum1
	store i32 %aux104, i32* @res
	br label %etiq117
	
	etiq82:
	;___Asignación___
	%aux106 = load i32, i32* @_IdPos1
	%aux109 = add i32 0, 1
	%aux108 = add i32 %aux106, %aux109
	store i32 %aux108, i32* @_IdPos1
	br label %etiq117
	
	etiq22:
	%aux112 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq117
	
	etiq15:
	%aux114 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq117
	
	etiq8:
	%aux116 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq117
	
	etiq117:
	;___DisplayCadenaCaracteres___
	%aux118 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str19, i32 0, i32 0))
	br label %etiq119
	
	etiq119:
	;___Asignación___
	%aux121 = load i32, i32* @c
	store i32 %aux121, i32* @_Pivot2
	br label %etiq122
	
	etiq122:
	%aux125 = load i32, i32* @_Pivot2
	%aux128 = add i32 0, 1
	%aux127 = icmp sge i32 %aux125, %aux128
	br i1 %aux127, label %etiq123, label %etiq124
	
	etiq123:
	%aux135 = add i32 0, 4
	%aux133 = load i32, i32* @_Pivot2
	%aux134 = icmp sge i32 %aux135, %aux133
	br i1 %aux134, label %etiq130, label %etiq131
	
	etiq130:
	%aux142 = add i32 0, 4
	%aux143 = add i32 0, 0
	%aux141 = icmp sgt i32 %aux142, %aux143
	br i1 %aux141, label %etiq137, label %etiq138
	
	etiq137:
	%aux153 = add i32 0, 4
	%aux151 = load i32, i32* @_Pivot2
	%aux152 = sub i32 %aux153, %aux151
	%aux148 = load i32, i32* @_IdPos2
	%aux149 = icmp eq i32 %aux152, %aux148
	%aux154 = load i32, i32* @_Pivot2
	%aux157 = add i32 0, 4
	%aux156 = icmp sle i32 %aux154, %aux157
	%aux146 = and i1 %aux149, %aux156
	br i1 %aux141, label %etiq158, label %etiq159
	
	etiq158:
	;___Asignación___
	%aux161 = load i32, i32* @_Acum2
	%aux164 = add i32 0, 5
	%aux163 = add i32 %aux161, %aux164
	store i32 %aux163, i32* @_Acum2
	br label %etiq165
	
	etiq165:
	;___Asignación___
	%aux167 = load i32, i32* @_IdPos2
	%aux170 = add i32 0, 1
	%aux169 = add i32 %aux167, %aux170
	store i32 %aux169, i32* @_IdPos2
	br label %etiq171
	
	etiq171:
	;___Asignación___
	%aux173 = load i32, i32* @_Pivot2
	%aux176 = add i32 0, 1
	%aux175 = sub i32 %aux173, %aux176
	store i32 %aux175, i32* @_Pivot2
	br label %etiq183
	
	etiq159:
	;___Asignación___
	%aux179 = load i32, i32* @_IdPos2
	%aux182 = add i32 0, 1
	%aux181 = add i32 %aux179, %aux182
	store i32 %aux181, i32* @_IdPos2
	br label %etiq183
	
	etiq183:
	%aux193 = add i32 0, 4
	%aux191 = load i32, i32* @_Pivot2
	%aux192 = sub i32 %aux193, %aux191
	%aux188 = load i32, i32* @_IdPos2
	%aux189 = icmp eq i32 %aux192, %aux188
	%aux194 = load i32, i32* @_Pivot2
	%aux197 = add i32 0, 4
	%aux196 = icmp sle i32 %aux194, %aux197
	%aux186 = and i1 %aux189, %aux196
	br i1 %aux141, label %etiq198, label %etiq199
	
	etiq198:
	;___Asignación___
	%aux201 = load i32, i32* @_Acum2
	%aux204 = add i32 0, 6
	%aux203 = add i32 %aux201, %aux204
	store i32 %aux203, i32* @_Acum2
	br label %etiq205
	
	etiq205:
	;___Asignación___
	%aux207 = load i32, i32* @_IdPos2
	%aux210 = add i32 0, 1
	%aux209 = add i32 %aux207, %aux210
	store i32 %aux209, i32* @_IdPos2
	br label %etiq211
	
	etiq211:
	;___Asignación___
	%aux213 = load i32, i32* @_Pivot2
	%aux216 = add i32 0, 1
	%aux215 = sub i32 %aux213, %aux216
	store i32 %aux215, i32* @_Pivot2
	br label %etiq223
	
	etiq199:
	;___Asignación___
	%aux219 = load i32, i32* @_IdPos2
	%aux222 = add i32 0, 1
	%aux221 = add i32 %aux219, %aux222
	store i32 %aux221, i32* @_IdPos2
	br label %etiq223
	
	etiq223:
	%aux233 = add i32 0, 4
	%aux231 = load i32, i32* @_Pivot2
	%aux232 = sub i32 %aux233, %aux231
	%aux228 = load i32, i32* @_IdPos2
	%aux229 = icmp eq i32 %aux232, %aux228
	%aux234 = load i32, i32* @_Pivot2
	%aux237 = add i32 0, 4
	%aux236 = icmp sle i32 %aux234, %aux237
	%aux226 = and i1 %aux229, %aux236
	br i1 %aux141, label %etiq238, label %etiq239
	
	etiq238:
	;___Asignación___
	%aux241 = load i32, i32* @_Acum2
	%aux244 = add i32 0, 7
	%aux243 = add i32 %aux241, %aux244
	store i32 %aux243, i32* @_Acum2
	br label %etiq245
	
	etiq245:
	;___Asignación___
	%aux247 = load i32, i32* @_IdPos2
	%aux250 = add i32 0, 1
	%aux249 = add i32 %aux247, %aux250
	store i32 %aux249, i32* @_IdPos2
	br label %etiq251
	
	etiq251:
	;___Asignación___
	%aux253 = load i32, i32* @_Pivot2
	%aux256 = add i32 0, 1
	%aux255 = sub i32 %aux253, %aux256
	store i32 %aux255, i32* @_Pivot2
	br label %etiq263
	
	etiq239:
	;___Asignación___
	%aux259 = load i32, i32* @_IdPos2
	%aux262 = add i32 0, 1
	%aux261 = add i32 %aux259, %aux262
	store i32 %aux261, i32* @_IdPos2
	br label %etiq263
	
	etiq263:
	%aux273 = add i32 0, 4
	%aux271 = load i32, i32* @_Pivot2
	%aux272 = sub i32 %aux273, %aux271
	%aux268 = load i32, i32* @_IdPos2
	%aux269 = icmp eq i32 %aux272, %aux268
	%aux274 = load i32, i32* @_Pivot2
	%aux277 = add i32 0, 4
	%aux276 = icmp sle i32 %aux274, %aux277
	%aux266 = and i1 %aux269, %aux276
	br i1 %aux141, label %etiq278, label %etiq279
	
	etiq278:
	;___Asignación___
	%aux281 = load i32, i32* @_Acum2
	%aux284 = add i32 0, 8
	%aux283 = add i32 %aux281, %aux284
	store i32 %aux283, i32* @_Acum2
	br label %etiq285
	
	etiq285:
	;___Asignación___
	%aux287 = load i32, i32* @_IdPos2
	%aux290 = add i32 0, 1
	%aux289 = add i32 %aux287, %aux290
	store i32 %aux289, i32* @_IdPos2
	br label %etiq291
	
	etiq291:
	;___Asignación___
	%aux293 = load i32, i32* @_Pivot2
	%aux296 = add i32 0, 1
	%aux295 = sub i32 %aux293, %aux296
	store i32 %aux295, i32* @_Pivot2
	br label %etiq297
	
	etiq297:
	%aux298 = load i32, i32* @_Acum2
	store i32 %aux298, i32* @b
	br label %etiq311
	
	etiq279:
	;___Asignación___
	%aux300 = load i32, i32* @_IdPos2
	%aux303 = add i32 0, 1
	%aux302 = add i32 %aux300, %aux303
	store i32 %aux302, i32* @_IdPos2
	br label %etiq311
	
	etiq138:
	%aux306 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq311
	
	etiq131:
	%aux308 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq311
	
	etiq124:
	%aux310 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq311
	
	etiq311:
	;___Asignación___
	%aux313 = add i32 0, 1
	store i32 %aux313, i32* @_Pivot3
	br label %etiq314
	
	etiq314:
	%aux317 = load i32, i32* @_Pivot3
	%aux320 = add i32 0, 1
	%aux319 = icmp sge i32 %aux317, %aux320
	br i1 %aux319, label %etiq315, label %etiq316
	
	etiq315:
	%aux327 = add i32 0, 3
	%aux325 = load i32, i32* @_Pivot3
	%aux326 = icmp sge i32 %aux327, %aux325
	br i1 %aux326, label %etiq322, label %etiq323
	
	etiq322:
	%aux334 = add i32 0, 3
	%aux335 = add i32 0, 0
	%aux333 = icmp sgt i32 %aux334, %aux335
	br i1 %aux333, label %etiq329, label %etiq330
	
	etiq329:
	%aux345 = add i32 0, 3
	%aux343 = load i32, i32* @_Pivot3
	%aux344 = sub i32 %aux345, %aux343
	%aux340 = load i32, i32* @_IdPos3
	%aux341 = icmp eq i32 %aux344, %aux340
	%aux346 = load i32, i32* @_Pivot3
	%aux349 = add i32 0, 3
	%aux348 = icmp sle i32 %aux346, %aux349
	%aux338 = and i1 %aux341, %aux348
	br i1 %aux333, label %etiq350, label %etiq351
	
	etiq350:
	;___Asignación___
	%aux353 = load i32, i32* @_Acum3
	%aux356 = add i32 0, 1
	%aux355 = add i32 %aux353, %aux356
	store i32 %aux355, i32* @_Acum3
	br label %etiq357
	
	etiq357:
	;___Asignación___
	%aux359 = load i32, i32* @_IdPos3
	%aux362 = add i32 0, 1
	%aux361 = add i32 %aux359, %aux362
	store i32 %aux361, i32* @_IdPos3
	br label %etiq363
	
	etiq363:
	;___Asignación___
	%aux365 = load i32, i32* @_Pivot3
	%aux368 = add i32 0, 1
	%aux367 = sub i32 %aux365, %aux368
	store i32 %aux367, i32* @_Pivot3
	br label %etiq375
	
	etiq351:
	;___Asignación___
	%aux371 = load i32, i32* @_IdPos3
	%aux374 = add i32 0, 1
	%aux373 = add i32 %aux371, %aux374
	store i32 %aux373, i32* @_IdPos3
	br label %etiq375
	
	etiq375:
	%aux385 = add i32 0, 3
	%aux383 = load i32, i32* @_Pivot3
	%aux384 = sub i32 %aux385, %aux383
	%aux380 = load i32, i32* @_IdPos3
	%aux381 = icmp eq i32 %aux384, %aux380
	%aux386 = load i32, i32* @_Pivot3
	%aux389 = add i32 0, 3
	%aux388 = icmp sle i32 %aux386, %aux389
	%aux378 = and i1 %aux381, %aux388
	br i1 %aux333, label %etiq390, label %etiq391
	
	etiq390:
	;___Asignación___
	%aux393 = load i32, i32* @_Acum3
	%aux396 = add i32 0, 2
	%aux395 = add i32 %aux393, %aux396
	store i32 %aux395, i32* @_Acum3
	br label %etiq397
	
	etiq397:
	;___Asignación___
	%aux399 = load i32, i32* @_IdPos3
	%aux402 = add i32 0, 1
	%aux401 = add i32 %aux399, %aux402
	store i32 %aux401, i32* @_IdPos3
	br label %etiq403
	
	etiq403:
	;___Asignación___
	%aux405 = load i32, i32* @_Pivot3
	%aux408 = add i32 0, 1
	%aux407 = sub i32 %aux405, %aux408
	store i32 %aux407, i32* @_Pivot3
	br label %etiq415
	
	etiq391:
	;___Asignación___
	%aux411 = load i32, i32* @_IdPos3
	%aux414 = add i32 0, 1
	%aux413 = add i32 %aux411, %aux414
	store i32 %aux413, i32* @_IdPos3
	br label %etiq415
	
	etiq415:
	%aux425 = add i32 0, 3
	%aux423 = load i32, i32* @_Pivot3
	%aux424 = sub i32 %aux425, %aux423
	%aux420 = load i32, i32* @_IdPos3
	%aux421 = icmp eq i32 %aux424, %aux420
	%aux426 = load i32, i32* @_Pivot3
	%aux429 = add i32 0, 3
	%aux428 = icmp sle i32 %aux426, %aux429
	%aux418 = and i1 %aux421, %aux428
	br i1 %aux333, label %etiq430, label %etiq431
	
	etiq430:
	;___Asignación___
	%aux433 = load i32, i32* @_Acum3
	%aux436 = add i32 0, 3
	%aux435 = add i32 %aux433, %aux436
	store i32 %aux435, i32* @_Acum3
	br label %etiq437
	
	etiq437:
	;___Asignación___
	%aux439 = load i32, i32* @_IdPos3
	%aux442 = add i32 0, 1
	%aux441 = add i32 %aux439, %aux442
	store i32 %aux441, i32* @_IdPos3
	br label %etiq443
	
	etiq443:
	;___Asignación___
	%aux445 = load i32, i32* @_Pivot3
	%aux448 = add i32 0, 1
	%aux447 = sub i32 %aux445, %aux448
	store i32 %aux447, i32* @_Pivot3
	br label %etiq449
	
	etiq449:
	%aux450 = load i32, i32* @_Acum3
	store i32 %aux450, i32* @b
	br label %etiq463
	
	etiq431:
	;___Asignación___
	%aux452 = load i32, i32* @_IdPos3
	%aux455 = add i32 0, 1
	%aux454 = add i32 %aux452, %aux455
	store i32 %aux454, i32* @_IdPos3
	br label %etiq463
	
	etiq330:
	%aux458 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq463
	
	etiq323:
	%aux460 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq463
	
	etiq316:
	%aux462 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq463
	
	etiq463:
	;___Asignación___
	%aux470 = add i1 0, 1
	%aux471 = add i1 0, 0
	%aux469 = and i1 %aux470, %aux471
	%aux465 = add i1 0, 1
	store i1 %aux465, i1* @xd
	br label %etiq482
	
	etiq482:
	ret i32 0
}

