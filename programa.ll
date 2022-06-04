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
@IdPos6 = global i32 0
@IdPos7 = global i32 0
@IdPos8 = global i32 0
@IdPos9 = global i32 0
@Pivot10 = global i32 0
@Pivot6 = global i32 0
@Pivot7 = global i32 0
@Pivot8 = global i32 0
@Pivot9 = global i32 0
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
@str36 = private constant [7 x i8] c"\0Acero\0A\00"
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq125:
	;___Asignación___
	%aux425 = add i32 0, 2
	store i32 %aux425, i32* @a
	br label %etiq126
	
	etiq126:
	;___Asignación___
	%aux427 = add i32 0, 5
	store i32 %aux427, i32* @b
	br label %etiq127
	
	etiq127:
	;___Asignación___
	%aux429 = add i32 0, 3
	store i32 %aux429, i32* @Pivot9
	br label %etiq128
	
	etiq128:
	;___IfElse___
	%aux431 = load i32, i32* @Pivot9
	%aux434 = add i32 0, 1
	%aux433 = icmp sge i32 %aux431, %aux434
	br i1 %aux433, label %etiq129, label %etiq130
	
	etiq129:
	;___IfElse___
	%aux439 = add i32 0, 3
	%aux437 = load i32, i32* @Pivot9
	%aux438 = icmp sge i32 %aux439, %aux437
	br i1 %aux438, label %etiq132, label %etiq133
	
	etiq132:
	;___IfElse___
	%aux444 = add i32 0, 3
	%aux445 = add i32 0, 0
	%aux443 = icmp sgt i32 %aux444, %aux445
	br i1 %aux443, label %etiq135, label %etiq136
	
	etiq135:
	;___IfElse___
	%aux453 = add i32 0, 3
	%aux451 = load i32, i32* @Pivot9
	%aux452 = sub i32 %aux453, %aux451
	%aux448 = load i32, i32* @IdPos9
	%aux449 = icmp eq i32 %aux452, %aux448
	br i1 %aux449, label %etiq138, label %etiq139
	
	etiq138:
	;___Asignación___
	%aux455 = load i32, i32* @_Acum17
	%aux458 = add i32 0, 6
	%aux457 = add i32 %aux455, %aux458
	store i32 %aux457, i32* @_Acum17
	br label %etiq141
	
	etiq141:
	;___Asignación___
	%aux460 = load i32, i32* @IdPos9
	%aux463 = add i32 0, 1
	%aux462 = add i32 %aux460, %aux463
	store i32 %aux462, i32* @IdPos9
	br label %etiq142
	
	etiq142:
	;___Asignación___
	%aux465 = load i32, i32* @Pivot9
	%aux468 = add i32 0, 1
	%aux467 = sub i32 %aux465, %aux468
	store i32 %aux467, i32* @Pivot9
	br label %etiq143
	
	etiq139:
	;___Asignación___
	%aux470 = load i32, i32* @IdPos9
	%aux473 = add i32 0, 1
	%aux472 = add i32 %aux470, %aux473
	store i32 %aux472, i32* @IdPos9
	br label %etiq143
	
	etiq143:
	;___IfElse___
	%aux481 = add i32 0, 3
	%aux479 = load i32, i32* @Pivot9
	%aux480 = sub i32 %aux481, %aux479
	%aux476 = load i32, i32* @IdPos9
	%aux477 = icmp eq i32 %aux480, %aux476
	br i1 %aux477, label %etiq144, label %etiq145
	
	etiq144:
	;___Asignación___
	%aux483 = load i32, i32* @_Acum17
	%aux486 = add i32 0, 7
	%aux485 = add i32 %aux483, %aux486
	store i32 %aux485, i32* @_Acum17
	br label %etiq147
	
	etiq147:
	;___Asignación___
	%aux488 = load i32, i32* @IdPos9
	%aux491 = add i32 0, 1
	%aux490 = add i32 %aux488, %aux491
	store i32 %aux490, i32* @IdPos9
	br label %etiq148
	
	etiq148:
	;___Asignación___
	%aux493 = load i32, i32* @Pivot9
	%aux496 = add i32 0, 1
	%aux495 = sub i32 %aux493, %aux496
	store i32 %aux495, i32* @Pivot9
	br label %etiq149
	
	etiq145:
	;___Asignación___
	%aux498 = load i32, i32* @IdPos9
	%aux501 = add i32 0, 1
	%aux500 = add i32 %aux498, %aux501
	store i32 %aux500, i32* @IdPos9
	br label %etiq149
	
	etiq149:
	;___IfElse___
	%aux509 = add i32 0, 3
	%aux507 = load i32, i32* @Pivot9
	%aux508 = sub i32 %aux509, %aux507
	%aux504 = load i32, i32* @IdPos9
	%aux505 = icmp eq i32 %aux508, %aux504
	br i1 %aux505, label %etiq150, label %etiq151
	
	etiq150:
	;___Asignación___
	%aux511 = load i32, i32* @_Acum17
	%aux514 = add i32 0, 8
	%aux513 = add i32 %aux511, %aux514
	store i32 %aux513, i32* @_Acum17
	br label %etiq153
	
	etiq153:
	;___Asignación___
	%aux516 = load i32, i32* @IdPos9
	%aux519 = add i32 0, 1
	%aux518 = add i32 %aux516, %aux519
	store i32 %aux518, i32* @IdPos9
	br label %etiq154
	
	etiq154:
	;___Asignación___
	%aux521 = load i32, i32* @Pivot9
	%aux524 = add i32 0, 1
	%aux523 = sub i32 %aux521, %aux524
	store i32 %aux523, i32* @Pivot9
	br label %etiq155
	
	etiq151:
	;___Asignación___
	%aux526 = load i32, i32* @IdPos9
	%aux529 = add i32 0, 1
	%aux528 = add i32 %aux526, %aux529
	store i32 %aux528, i32* @IdPos9
	br label %etiq155
	
	etiq136:
	;___DisplayCadenaCaracteres___
	%aux530 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq155
	
	etiq133:
	;___DisplayCadenaCaracteres___
	%aux531 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq155
	
	etiq130:
	;___DisplayCadenaCaracteres___
	%aux532 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq155
	
	etiq155:
	;___Asignación___
	%aux534 = load i32, i32* @_Acum17
	store i32 %aux534, i32* @_Acum18
	br label %etiq156
	
	etiq156:
	;___Asignación___
	%aux536 = add i32 0, 1
	store i32 %aux536, i32* @Pivot6
	br label %etiq157
	
	etiq157:
	;___IfElse___
	%aux538 = load i32, i32* @Pivot6
	%aux541 = add i32 0, 1
	%aux540 = icmp sge i32 %aux538, %aux541
	br i1 %aux540, label %etiq158, label %etiq159
	
	etiq158:
	;___IfElse___
	%aux546 = add i32 0, 1
	%aux544 = load i32, i32* @Pivot6
	%aux545 = icmp sge i32 %aux546, %aux544
	br i1 %aux545, label %etiq161, label %etiq162
	
	etiq161:
	;___IfElse___
	%aux551 = add i32 0, 1
	%aux552 = add i32 0, 0
	%aux550 = icmp sgt i32 %aux551, %aux552
	br i1 %aux550, label %etiq164, label %etiq165
	
	etiq164:
	;___IfElse___
	%aux560 = add i32 0, 1
	%aux558 = load i32, i32* @Pivot6
	%aux559 = sub i32 %aux560, %aux558
	%aux555 = load i32, i32* @IdPos6
	%aux556 = icmp eq i32 %aux559, %aux555
	br i1 %aux556, label %etiq167, label %etiq168
	
	etiq167:
	;___Asignación___
	%aux562 = load i32, i32* @_Acum11
	%aux563 = load i32, i32* @b
	%aux564 = add i32 %aux562, %aux563
	store i32 %aux564, i32* @_Acum11
	br label %etiq170
	
	etiq170:
	;___Asignación___
	%aux566 = load i32, i32* @IdPos6
	%aux569 = add i32 0, 1
	%aux568 = add i32 %aux566, %aux569
	store i32 %aux568, i32* @IdPos6
	br label %etiq171
	
	etiq171:
	;___Asignación___
	%aux571 = load i32, i32* @Pivot6
	%aux574 = add i32 0, 1
	%aux573 = sub i32 %aux571, %aux574
	store i32 %aux573, i32* @Pivot6
	br label %etiq172
	
	etiq168:
	;___Asignación___
	%aux576 = load i32, i32* @IdPos6
	%aux579 = add i32 0, 1
	%aux578 = add i32 %aux576, %aux579
	store i32 %aux578, i32* @IdPos6
	br label %etiq172
	
	etiq165:
	;___DisplayCadenaCaracteres___
	%aux580 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq172
	
	etiq162:
	;___DisplayCadenaCaracteres___
	%aux581 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq172
	
	etiq159:
	;___DisplayCadenaCaracteres___
	%aux582 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq172
	
	etiq172:
	;___Asignación___
	%aux584 = load i32, i32* @_Acum11
	store i32 %aux584, i32* @_Acum12
	br label %etiq173
	
	etiq173:
	;___Asignación___
	%aux586 = add i32 0, 2
	store i32 %aux586, i32* @Pivot7
	br label %etiq174
	
	etiq174:
	;___IfElse___
	%aux588 = load i32, i32* @Pivot7
	%aux591 = add i32 0, 1
	%aux590 = icmp sge i32 %aux588, %aux591
	br i1 %aux590, label %etiq175, label %etiq176
	
	etiq175:
	;___IfElse___
	%aux596 = add i32 0, 2
	%aux594 = load i32, i32* @Pivot7
	%aux595 = icmp sge i32 %aux596, %aux594
	br i1 %aux595, label %etiq178, label %etiq179
	
	etiq178:
	;___IfElse___
	%aux601 = add i32 0, 2
	%aux602 = add i32 0, 0
	%aux600 = icmp sgt i32 %aux601, %aux602
	br i1 %aux600, label %etiq181, label %etiq182
	
	etiq181:
	;___IfElse___
	%aux610 = add i32 0, 2
	%aux608 = load i32, i32* @Pivot7
	%aux609 = sub i32 %aux610, %aux608
	%aux605 = load i32, i32* @IdPos7
	%aux606 = icmp eq i32 %aux609, %aux605
	br i1 %aux606, label %etiq184, label %etiq185
	
	etiq184:
	;___Asignación___
	%aux612 = load i32, i32* @_Acum13
	%aux613 = load i32, i32* @a
	%aux614 = add i32 %aux612, %aux613
	store i32 %aux614, i32* @_Acum13
	br label %etiq187
	
	etiq187:
	;___Asignación___
	%aux616 = load i32, i32* @IdPos7
	%aux619 = add i32 0, 1
	%aux618 = add i32 %aux616, %aux619
	store i32 %aux618, i32* @IdPos7
	br label %etiq188
	
	etiq188:
	;___Asignación___
	%aux621 = load i32, i32* @Pivot7
	%aux624 = add i32 0, 1
	%aux623 = sub i32 %aux621, %aux624
	store i32 %aux623, i32* @Pivot7
	br label %etiq189
	
	etiq185:
	;___Asignación___
	%aux626 = load i32, i32* @IdPos7
	%aux629 = add i32 0, 1
	%aux628 = add i32 %aux626, %aux629
	store i32 %aux628, i32* @IdPos7
	br label %etiq189
	
	etiq189:
	;___IfElse___
	%aux637 = add i32 0, 2
	%aux635 = load i32, i32* @Pivot7
	%aux636 = sub i32 %aux637, %aux635
	%aux632 = load i32, i32* @IdPos7
	%aux633 = icmp eq i32 %aux636, %aux632
	br i1 %aux633, label %etiq190, label %etiq191
	
	etiq190:
	;___Asignación___
	%aux639 = load i32, i32* @_Acum13
	%aux640 = load i32, i32* @_Acum12
	%aux641 = add i32 %aux639, %aux640
	store i32 %aux641, i32* @_Acum13
	br label %etiq193
	
	etiq193:
	;___Asignación___
	%aux643 = load i32, i32* @IdPos7
	%aux646 = add i32 0, 1
	%aux645 = add i32 %aux643, %aux646
	store i32 %aux645, i32* @IdPos7
	br label %etiq194
	
	etiq194:
	;___Asignación___
	%aux648 = load i32, i32* @Pivot7
	%aux651 = add i32 0, 1
	%aux650 = sub i32 %aux648, %aux651
	store i32 %aux650, i32* @Pivot7
	br label %etiq195
	
	etiq191:
	;___Asignación___
	%aux653 = load i32, i32* @IdPos7
	%aux656 = add i32 0, 1
	%aux655 = add i32 %aux653, %aux656
	store i32 %aux655, i32* @IdPos7
	br label %etiq195
	
	etiq182:
	;___DisplayCadenaCaracteres___
	%aux657 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq195
	
	etiq179:
	;___DisplayCadenaCaracteres___
	%aux658 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq195
	
	etiq176:
	;___DisplayCadenaCaracteres___
	%aux659 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq195
	
	etiq195:
	;___Asignación___
	%aux661 = load i32, i32* @_Acum13
	store i32 %aux661, i32* @_Acum14
	br label %etiq196
	
	etiq196:
	;___Asignación___
	%aux663 = add i32 0, 2
	store i32 %aux663, i32* @Pivot8
	br label %etiq197
	
	etiq197:
	;___IfElse___
	%aux665 = load i32, i32* @Pivot8
	%aux668 = add i32 0, 1
	%aux667 = icmp sge i32 %aux665, %aux668
	br i1 %aux667, label %etiq198, label %etiq199
	
	etiq198:
	;___IfElse___
	%aux673 = add i32 0, 3
	%aux671 = load i32, i32* @Pivot8
	%aux672 = icmp sge i32 %aux673, %aux671
	br i1 %aux672, label %etiq201, label %etiq202
	
	etiq201:
	;___IfElse___
	%aux678 = add i32 0, 3
	%aux679 = add i32 0, 0
	%aux677 = icmp sgt i32 %aux678, %aux679
	br i1 %aux677, label %etiq204, label %etiq205
	
	etiq204:
	;___IfElse___
	%aux687 = add i32 0, 3
	%aux685 = load i32, i32* @Pivot8
	%aux686 = sub i32 %aux687, %aux685
	%aux682 = load i32, i32* @IdPos8
	%aux683 = icmp eq i32 %aux686, %aux682
	br i1 %aux683, label %etiq207, label %etiq208
	
	etiq207:
	;___Asignación___
	%aux689 = load i32, i32* @_Acum15
	%aux692 = add i32 0, 3
	%aux691 = add i32 %aux689, %aux692
	store i32 %aux691, i32* @_Acum15
	br label %etiq210
	
	etiq210:
	;___Asignación___
	%aux694 = load i32, i32* @IdPos8
	%aux697 = add i32 0, 1
	%aux696 = add i32 %aux694, %aux697
	store i32 %aux696, i32* @IdPos8
	br label %etiq211
	
	etiq211:
	;___Asignación___
	%aux699 = load i32, i32* @Pivot8
	%aux702 = add i32 0, 1
	%aux701 = sub i32 %aux699, %aux702
	store i32 %aux701, i32* @Pivot8
	br label %etiq212
	
	etiq208:
	;___Asignación___
	%aux704 = load i32, i32* @IdPos8
	%aux707 = add i32 0, 1
	%aux706 = add i32 %aux704, %aux707
	store i32 %aux706, i32* @IdPos8
	br label %etiq212
	
	etiq212:
	;___IfElse___
	%aux715 = add i32 0, 3
	%aux713 = load i32, i32* @Pivot8
	%aux714 = sub i32 %aux715, %aux713
	%aux710 = load i32, i32* @IdPos8
	%aux711 = icmp eq i32 %aux714, %aux710
	br i1 %aux711, label %etiq213, label %etiq214
	
	etiq213:
	;___Asignación___
	%aux717 = load i32, i32* @_Acum15
	%aux718 = load i32, i32* @_Acum14
	%aux719 = add i32 %aux717, %aux718
	store i32 %aux719, i32* @_Acum15
	br label %etiq216
	
	etiq216:
	;___Asignación___
	%aux721 = load i32, i32* @IdPos8
	%aux724 = add i32 0, 1
	%aux723 = add i32 %aux721, %aux724
	store i32 %aux723, i32* @IdPos8
	br label %etiq217
	
	etiq217:
	;___Asignación___
	%aux726 = load i32, i32* @Pivot8
	%aux729 = add i32 0, 1
	%aux728 = sub i32 %aux726, %aux729
	store i32 %aux728, i32* @Pivot8
	br label %etiq218
	
	etiq214:
	;___Asignación___
	%aux731 = load i32, i32* @IdPos8
	%aux734 = add i32 0, 1
	%aux733 = add i32 %aux731, %aux734
	store i32 %aux733, i32* @IdPos8
	br label %etiq218
	
	etiq218:
	;___IfElse___
	%aux742 = add i32 0, 3
	%aux740 = load i32, i32* @Pivot8
	%aux741 = sub i32 %aux742, %aux740
	%aux737 = load i32, i32* @IdPos8
	%aux738 = icmp eq i32 %aux741, %aux737
	br i1 %aux738, label %etiq219, label %etiq220
	
	etiq219:
	;___Asignación___
	%aux744 = load i32, i32* @_Acum15
	%aux747 = add i32 0, 5
	%aux746 = add i32 %aux744, %aux747
	store i32 %aux746, i32* @_Acum15
	br label %etiq222
	
	etiq222:
	;___Asignación___
	%aux749 = load i32, i32* @IdPos8
	%aux752 = add i32 0, 1
	%aux751 = add i32 %aux749, %aux752
	store i32 %aux751, i32* @IdPos8
	br label %etiq223
	
	etiq223:
	;___Asignación___
	%aux754 = load i32, i32* @Pivot8
	%aux757 = add i32 0, 1
	%aux756 = sub i32 %aux754, %aux757
	store i32 %aux756, i32* @Pivot8
	br label %etiq224
	
	etiq220:
	;___Asignación___
	%aux759 = load i32, i32* @IdPos8
	%aux762 = add i32 0, 1
	%aux761 = add i32 %aux759, %aux762
	store i32 %aux761, i32* @IdPos8
	br label %etiq224
	
	etiq205:
	;___DisplayCadenaCaracteres___
	%aux763 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq224
	
	etiq202:
	;___DisplayCadenaCaracteres___
	%aux764 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq224
	
	etiq199:
	;___DisplayCadenaCaracteres___
	%aux765 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq224
	
	etiq224:
	;___Asignación___
	%aux767 = load i32, i32* @_Acum15
	store i32 %aux767, i32* @_Acum16
	br label %etiq225
	
	etiq225:
	;___Asignación___
	%aux769 = add i32 0, 2
	store i32 %aux769, i32* @Pivot10
	br label %etiq226
	
	etiq225:
	;___IfElse___
	%aux771 = load i32, i32* @Pivot10
	%aux774 = add i32 0, 1
	%aux773 = icmp sge i32 %aux771, %aux774
	br i1 %aux773, label %etiq226, label %etiq227
	
	etiq226:
	;___IfElse___
	%aux779 = add i32 0, 2
	%aux777 = load i32, i32* @Pivot10
	%aux778 = icmp sge i32 %aux779, %aux777
	br i1 %aux778, label %etiq229, label %etiq230
	
	etiq229:
	;___IfElse___
	%aux784 = add i32 0, 2
	%aux785 = add i32 0, 0
	%aux783 = icmp sgt i32 %aux784, %aux785
	br i1 %aux783, label %etiq232, label %etiq233
	
	etiq232:
	;___IfElse___
	%aux793 = add i32 0, 2
	%aux791 = load i32, i32* @Pivot10
	%aux792 = sub i32 %aux793, %aux791
	%aux788 = load i32, i32* @IdPos10
	%aux789 = icmp eq i32 %aux792, %aux788
	br i1 %aux789, label %etiq235, label %etiq236
	
	etiq235:
	;___Asignación___
	%aux795 = load i32, i32* @_Acum19
	%aux796 = load i32, i32* @_Acum16
	%aux797 = add i32 %aux795, %aux796
	store i32 %aux797, i32* @_Acum19
	br label %etiq238
	
	etiq238:
	;___Asignación___
	%aux799 = load i32, i32* @IdPos10
	%aux802 = add i32 0, 1
	%aux801 = add i32 %aux799, %aux802
	store i32 %aux801, i32* @IdPos10
	br label %etiq239
	
	etiq239:
	;___Asignación___
	%aux804 = load i32, i32* @Pivot10
	%aux807 = add i32 0, 1
	%aux806 = sub i32 %aux804, %aux807
	store i32 %aux806, i32* @Pivot10
	br label %etiq240
	
	etiq236:
	;___Asignación___
	%aux809 = load i32, i32* @IdPos10
	%aux812 = add i32 0, 1
	%aux811 = add i32 %aux809, %aux812
	store i32 %aux811, i32* @IdPos10
	br label %etiq240
	
	etiq240:
	;___IfElse___
	%aux820 = add i32 0, 2
	%aux818 = load i32, i32* @Pivot10
	%aux819 = sub i32 %aux820, %aux818
	%aux815 = load i32, i32* @IdPos10
	%aux816 = icmp eq i32 %aux819, %aux815
	br i1 %aux816, label %etiq241, label %etiq242
	
	etiq241:
	;___Asignación___
	%aux822 = load i32, i32* @_Acum19
	%aux823 = load i32, i32* @_Acum18
	%aux824 = add i32 %aux822, %aux823
	store i32 %aux824, i32* @_Acum19
	br label %etiq244
	
	etiq244:
	;___Asignación___
	%aux826 = load i32, i32* @IdPos10
	%aux829 = add i32 0, 1
	%aux828 = add i32 %aux826, %aux829
	store i32 %aux828, i32* @IdPos10
	br label %etiq245
	
	etiq245:
	;___Asignación___
	%aux831 = load i32, i32* @Pivot10
	%aux834 = add i32 0, 1
	%aux833 = sub i32 %aux831, %aux834
	store i32 %aux833, i32* @Pivot10
	br label %etiq246
	
	etiq242:
	;___Asignación___
	%aux836 = load i32, i32* @IdPos10
	%aux839 = add i32 0, 1
	%aux838 = add i32 %aux836, %aux839
	store i32 %aux838, i32* @IdPos10
	br label %etiq246
	
	etiq233:
	;___DisplayCadenaCaracteres___
	%aux840 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq246
	
	etiq230:
	;___DisplayCadenaCaracteres___
	%aux841 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq246
	
	etiq227:
	;___DisplayCadenaCaracteres___
	%aux842 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq246
	
	etiq246:
	;___Asignación___
	%aux844 = load i32, i32* @_Acum19
	store i32 %aux844, i32* @res
	br label %etiq247
	
	etiq247:
	;___DisplayExpresion___
	%aux846 = load i32, i32* @res
	%aux845 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux846)
	br label %etiq248
	
	etiq248:
	;___IfElse___
	%aux848 = load i32, i32* @a
	%aux851 = add i32 0, 0
	%aux850 = icmp eq i32 %aux848, %aux851
	br i1 %aux850, label %etiq249, label %etiq250
	
	etiq249:
	;___IfElse___
	%aux853 = load i32, i32* @b
	%aux856 = add i32 0, 1
	%aux855 = icmp eq i32 %aux853, %aux856
	br i1 %aux855, label %etiq252, label %etiq253
	
	etiq252:
	;___IfElse___
	%aux858 = load i32, i32* @c
	%aux861 = add i32 0, 2
	%aux860 = icmp eq i32 %aux858, %aux861
	br i1 %aux860, label %etiq255, label %etiq256
	
	etiq255:
	;___DisplayExpresion___
	%aux866 = load i32, i32* @a
	%aux867 = load i32, i32* @b
	%aux868 = add i32 %aux866, %aux867
	%aux864 = load i32, i32* @c
	%aux865 = add i32 %aux868, %aux864
	%aux862 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux865)
	br label %etiq258
	
	etiq256:
	;___DisplayExpresion___
	%aux870 = load i32, i32* @a
	%aux871 = load i32, i32* @b
	%aux872 = add i32 %aux870, %aux871
	%aux869 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux872)
	br label %etiq258
	
	etiq253:
	;___DisplayExpresion___
	%aux874 = load i32, i32* @a
	%aux873 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux874)
	br label %etiq258
	
	etiq250:
	;___DisplayCadenaCaracteres___
	%aux875 = call i32 @puts(i8* getelementptr ([7 x i8], [7 x i8] * @str36, i32 0, i32 0))
	br label %etiq258
	
	etiq258:
	ret i32 0
}

