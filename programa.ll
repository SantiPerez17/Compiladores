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
@strmensaje1 = private constant [24 x i8] c"\0AEl valor debe ser >=1\0A\00"
@strmensaje2 = private constant [49 x i8] c"\0ALa lista tiene menos elementos que el indicado\0A\00"
@strmensaje3 = private constant [22 x i8] c"\0ALa lista esta vacia\0A\00"
@t = global i32 0
@xd = global i1 0

define i32 @main(i32, i8**) {
	
	etiq125:
	;___Asignación___
	%aux426 = add i32 0, 2
	store i32 %aux426, i32* @a
	br label %etiq126
	
	etiq126:
	;___Asignación___
	%aux428 = add i32 0, 5
	store i32 %aux428, i32* @b
	br label %etiq127
	
	etiq127:
	;___Asignación___
	%aux430 = add i32 0, 3
	store i32 %aux430, i32* @Pivot9
	br label %etiq128
	
	etiq128:
	;___IfElse___
	%aux432 = load i32, i32* @Pivot9
	%aux435 = add i32 0, 1
	%aux434 = icmp sge i32 %aux432, %aux435
	br i1 %aux434, label %etiq129, label %etiq130
	
	etiq129:
	;___IfElse___
	%aux440 = add i32 0, 3
	%aux438 = load i32, i32* @Pivot9
	%aux439 = icmp sge i32 %aux440, %aux438
	br i1 %aux439, label %etiq132, label %etiq133
	
	etiq132:
	;___IfElse___
	%aux445 = add i32 0, 3
	%aux446 = add i32 0, 0
	%aux444 = icmp sgt i32 %aux445, %aux446
	br i1 %aux444, label %etiq135, label %etiq136
	
	etiq135:
	;___IfElse___
	%aux454 = add i32 0, 3
	%aux452 = load i32, i32* @Pivot9
	%aux453 = sub i32 %aux454, %aux452
	%aux449 = load i32, i32* @IdPos9
	%aux450 = icmp eq i32 %aux453, %aux449
	br i1 %aux450, label %etiq138, label %etiq139
	
	etiq138:
	;___Asignación___
	%aux456 = load i32, i32* @_Acum17
	%aux459 = add i32 0, 6
	%aux458 = add i32 %aux456, %aux459
	store i32 %aux458, i32* @_Acum17
	br label %etiq141
	
	etiq141:
	;___Asignación___
	%aux461 = load i32, i32* @IdPos9
	%aux464 = add i32 0, 1
	%aux463 = add i32 %aux461, %aux464
	store i32 %aux463, i32* @IdPos9
	br label %etiq142
	
	etiq142:
	;___Asignación___
	%aux466 = load i32, i32* @Pivot9
	%aux469 = add i32 0, 1
	%aux468 = sub i32 %aux466, %aux469
	store i32 %aux468, i32* @Pivot9
	br label %etiq143
	
	etiq139:
	;___Asignación___
	%aux471 = load i32, i32* @IdPos9
	%aux474 = add i32 0, 1
	%aux473 = add i32 %aux471, %aux474
	store i32 %aux473, i32* @IdPos9
	br label %etiq143
	
	etiq143:
	;___IfElse___
	%aux482 = add i32 0, 3
	%aux480 = load i32, i32* @Pivot9
	%aux481 = sub i32 %aux482, %aux480
	%aux477 = load i32, i32* @IdPos9
	%aux478 = icmp eq i32 %aux481, %aux477
	br i1 %aux478, label %etiq144, label %etiq145
	
	etiq144:
	;___Asignación___
	%aux484 = load i32, i32* @_Acum17
	%aux487 = add i32 0, 7
	%aux486 = add i32 %aux484, %aux487
	store i32 %aux486, i32* @_Acum17
	br label %etiq147
	
	etiq147:
	;___Asignación___
	%aux489 = load i32, i32* @IdPos9
	%aux492 = add i32 0, 1
	%aux491 = add i32 %aux489, %aux492
	store i32 %aux491, i32* @IdPos9
	br label %etiq148
	
	etiq148:
	;___Asignación___
	%aux494 = load i32, i32* @Pivot9
	%aux497 = add i32 0, 1
	%aux496 = sub i32 %aux494, %aux497
	store i32 %aux496, i32* @Pivot9
	br label %etiq149
	
	etiq145:
	;___Asignación___
	%aux499 = load i32, i32* @IdPos9
	%aux502 = add i32 0, 1
	%aux501 = add i32 %aux499, %aux502
	store i32 %aux501, i32* @IdPos9
	br label %etiq149
	
	etiq149:
	;___IfElse___
	%aux510 = add i32 0, 3
	%aux508 = load i32, i32* @Pivot9
	%aux509 = sub i32 %aux510, %aux508
	%aux505 = load i32, i32* @IdPos9
	%aux506 = icmp eq i32 %aux509, %aux505
	br i1 %aux506, label %etiq150, label %etiq151
	
	etiq150:
	;___Asignación___
	%aux512 = load i32, i32* @_Acum17
	%aux515 = add i32 0, 8
	%aux514 = add i32 %aux512, %aux515
	store i32 %aux514, i32* @_Acum17
	br label %etiq153
	
	etiq153:
	;___Asignación___
	%aux517 = load i32, i32* @IdPos9
	%aux520 = add i32 0, 1
	%aux519 = add i32 %aux517, %aux520
	store i32 %aux519, i32* @IdPos9
	br label %etiq154
	
	etiq154:
	;___Asignación___
	%aux522 = load i32, i32* @Pivot9
	%aux525 = add i32 0, 1
	%aux524 = sub i32 %aux522, %aux525
	store i32 %aux524, i32* @Pivot9
	br label %etiq155
	
	etiq151:
	;___Asignación___
	%aux527 = load i32, i32* @IdPos9
	%aux530 = add i32 0, 1
	%aux529 = add i32 %aux527, %aux530
	store i32 %aux529, i32* @IdPos9
	br label %etiq155
	
	etiq136:
	;___DisplayCadenaCaracteres___
	%aux531 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq155
	
	etiq133:
	;___DisplayCadenaCaracteres___
	%aux532 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq155
	
	etiq130:
	;___DisplayCadenaCaracteres___
	%aux533 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq155
	
	etiq155:
	;___Asignación___
	%aux535 = load i32, i32* @_Acum17
	store i32 %aux535, i32* @_Acum18
	br label %etiq156
	
	etiq156:
	;___Asignación___
	%aux537 = add i32 0, 1
	store i32 %aux537, i32* @Pivot6
	br label %etiq157
	
	etiq157:
	;___IfElse___
	%aux539 = load i32, i32* @Pivot6
	%aux542 = add i32 0, 1
	%aux541 = icmp sge i32 %aux539, %aux542
	br i1 %aux541, label %etiq158, label %etiq159
	
	etiq158:
	;___IfElse___
	%aux547 = add i32 0, 1
	%aux545 = load i32, i32* @Pivot6
	%aux546 = icmp sge i32 %aux547, %aux545
	br i1 %aux546, label %etiq161, label %etiq162
	
	etiq161:
	;___IfElse___
	%aux552 = add i32 0, 1
	%aux553 = add i32 0, 0
	%aux551 = icmp sgt i32 %aux552, %aux553
	br i1 %aux551, label %etiq164, label %etiq165
	
	etiq164:
	;___IfElse___
	%aux561 = add i32 0, 1
	%aux559 = load i32, i32* @Pivot6
	%aux560 = sub i32 %aux561, %aux559
	%aux556 = load i32, i32* @IdPos6
	%aux557 = icmp eq i32 %aux560, %aux556
	br i1 %aux557, label %etiq167, label %etiq168
	
	etiq167:
	;___Asignación___
	%aux563 = load i32, i32* @_Acum11
	%aux564 = load i32, i32* @b
	%aux565 = add i32 %aux563, %aux564
	store i32 %aux565, i32* @_Acum11
	br label %etiq170
	
	etiq170:
	;___Asignación___
	%aux567 = load i32, i32* @IdPos6
	%aux570 = add i32 0, 1
	%aux569 = add i32 %aux567, %aux570
	store i32 %aux569, i32* @IdPos6
	br label %etiq171
	
	etiq171:
	;___Asignación___
	%aux572 = load i32, i32* @Pivot6
	%aux575 = add i32 0, 1
	%aux574 = sub i32 %aux572, %aux575
	store i32 %aux574, i32* @Pivot6
	br label %etiq172
	
	etiq168:
	;___Asignación___
	%aux577 = load i32, i32* @IdPos6
	%aux580 = add i32 0, 1
	%aux579 = add i32 %aux577, %aux580
	store i32 %aux579, i32* @IdPos6
	br label %etiq172
	
	etiq165:
	;___DisplayCadenaCaracteres___
	%aux581 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq172
	
	etiq162:
	;___DisplayCadenaCaracteres___
	%aux582 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq172
	
	etiq159:
	;___DisplayCadenaCaracteres___
	%aux583 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq172
	
	etiq172:
	;___Asignación___
	%aux585 = load i32, i32* @_Acum11
	store i32 %aux585, i32* @_Acum12
	br label %etiq173
	
	etiq173:
	;___Asignación___
	%aux587 = add i32 0, 2
	store i32 %aux587, i32* @Pivot7
	br label %etiq174
	
	etiq174:
	;___IfElse___
	%aux589 = load i32, i32* @Pivot7
	%aux592 = add i32 0, 1
	%aux591 = icmp sge i32 %aux589, %aux592
	br i1 %aux591, label %etiq175, label %etiq176
	
	etiq175:
	;___IfElse___
	%aux597 = add i32 0, 2
	%aux595 = load i32, i32* @Pivot7
	%aux596 = icmp sge i32 %aux597, %aux595
	br i1 %aux596, label %etiq178, label %etiq179
	
	etiq178:
	;___IfElse___
	%aux602 = add i32 0, 2
	%aux603 = add i32 0, 0
	%aux601 = icmp sgt i32 %aux602, %aux603
	br i1 %aux601, label %etiq181, label %etiq182
	
	etiq181:
	;___IfElse___
	%aux611 = add i32 0, 2
	%aux609 = load i32, i32* @Pivot7
	%aux610 = sub i32 %aux611, %aux609
	%aux606 = load i32, i32* @IdPos7
	%aux607 = icmp eq i32 %aux610, %aux606
	br i1 %aux607, label %etiq184, label %etiq185
	
	etiq184:
	;___Asignación___
	%aux613 = load i32, i32* @_Acum13
	%aux614 = load i32, i32* @a
	%aux615 = add i32 %aux613, %aux614
	store i32 %aux615, i32* @_Acum13
	br label %etiq187
	
	etiq187:
	;___Asignación___
	%aux617 = load i32, i32* @IdPos7
	%aux620 = add i32 0, 1
	%aux619 = add i32 %aux617, %aux620
	store i32 %aux619, i32* @IdPos7
	br label %etiq188
	
	etiq188:
	;___Asignación___
	%aux622 = load i32, i32* @Pivot7
	%aux625 = add i32 0, 1
	%aux624 = sub i32 %aux622, %aux625
	store i32 %aux624, i32* @Pivot7
	br label %etiq189
	
	etiq185:
	;___Asignación___
	%aux627 = load i32, i32* @IdPos7
	%aux630 = add i32 0, 1
	%aux629 = add i32 %aux627, %aux630
	store i32 %aux629, i32* @IdPos7
	br label %etiq189
	
	etiq189:
	;___IfElse___
	%aux638 = add i32 0, 2
	%aux636 = load i32, i32* @Pivot7
	%aux637 = sub i32 %aux638, %aux636
	%aux633 = load i32, i32* @IdPos7
	%aux634 = icmp eq i32 %aux637, %aux633
	br i1 %aux634, label %etiq190, label %etiq191
	
	etiq190:
	;___Asignación___
	%aux640 = load i32, i32* @_Acum13
	%aux641 = load i32, i32* @_Acum12
	%aux642 = add i32 %aux640, %aux641
	store i32 %aux642, i32* @_Acum13
	br label %etiq193
	
	etiq193:
	;___Asignación___
	%aux644 = load i32, i32* @IdPos7
	%aux647 = add i32 0, 1
	%aux646 = add i32 %aux644, %aux647
	store i32 %aux646, i32* @IdPos7
	br label %etiq194
	
	etiq194:
	;___Asignación___
	%aux649 = load i32, i32* @Pivot7
	%aux652 = add i32 0, 1
	%aux651 = sub i32 %aux649, %aux652
	store i32 %aux651, i32* @Pivot7
	br label %etiq195
	
	etiq191:
	;___Asignación___
	%aux654 = load i32, i32* @IdPos7
	%aux657 = add i32 0, 1
	%aux656 = add i32 %aux654, %aux657
	store i32 %aux656, i32* @IdPos7
	br label %etiq195
	
	etiq182:
	;___DisplayCadenaCaracteres___
	%aux658 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq195
	
	etiq179:
	;___DisplayCadenaCaracteres___
	%aux659 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq195
	
	etiq176:
	;___DisplayCadenaCaracteres___
	%aux660 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq195
	
	etiq195:
	;___Asignación___
	%aux662 = load i32, i32* @_Acum13
	store i32 %aux662, i32* @_Acum14
	br label %etiq196
	
	etiq196:
	;___Asignación___
	%aux664 = add i32 0, 2
	store i32 %aux664, i32* @Pivot8
	br label %etiq197
	
	etiq197:
	;___IfElse___
	%aux666 = load i32, i32* @Pivot8
	%aux669 = add i32 0, 1
	%aux668 = icmp sge i32 %aux666, %aux669
	br i1 %aux668, label %etiq198, label %etiq199
	
	etiq198:
	;___IfElse___
	%aux674 = add i32 0, 3
	%aux672 = load i32, i32* @Pivot8
	%aux673 = icmp sge i32 %aux674, %aux672
	br i1 %aux673, label %etiq201, label %etiq202
	
	etiq201:
	;___IfElse___
	%aux679 = add i32 0, 3
	%aux680 = add i32 0, 0
	%aux678 = icmp sgt i32 %aux679, %aux680
	br i1 %aux678, label %etiq204, label %etiq205
	
	etiq204:
	;___IfElse___
	%aux688 = add i32 0, 3
	%aux686 = load i32, i32* @Pivot8
	%aux687 = sub i32 %aux688, %aux686
	%aux683 = load i32, i32* @IdPos8
	%aux684 = icmp eq i32 %aux687, %aux683
	br i1 %aux684, label %etiq207, label %etiq208
	
	etiq207:
	;___Asignación___
	%aux690 = load i32, i32* @_Acum15
	%aux693 = add i32 0, 3
	%aux692 = add i32 %aux690, %aux693
	store i32 %aux692, i32* @_Acum15
	br label %etiq210
	
	etiq210:
	;___Asignación___
	%aux695 = load i32, i32* @IdPos8
	%aux698 = add i32 0, 1
	%aux697 = add i32 %aux695, %aux698
	store i32 %aux697, i32* @IdPos8
	br label %etiq211
	
	etiq211:
	;___Asignación___
	%aux700 = load i32, i32* @Pivot8
	%aux703 = add i32 0, 1
	%aux702 = sub i32 %aux700, %aux703
	store i32 %aux702, i32* @Pivot8
	br label %etiq212
	
	etiq208:
	;___Asignación___
	%aux705 = load i32, i32* @IdPos8
	%aux708 = add i32 0, 1
	%aux707 = add i32 %aux705, %aux708
	store i32 %aux707, i32* @IdPos8
	br label %etiq212
	
	etiq212:
	;___IfElse___
	%aux716 = add i32 0, 3
	%aux714 = load i32, i32* @Pivot8
	%aux715 = sub i32 %aux716, %aux714
	%aux711 = load i32, i32* @IdPos8
	%aux712 = icmp eq i32 %aux715, %aux711
	br i1 %aux712, label %etiq213, label %etiq214
	
	etiq213:
	;___Asignación___
	%aux718 = load i32, i32* @_Acum15
	%aux719 = load i32, i32* @_Acum14
	%aux720 = add i32 %aux718, %aux719
	store i32 %aux720, i32* @_Acum15
	br label %etiq216
	
	etiq216:
	;___Asignación___
	%aux722 = load i32, i32* @IdPos8
	%aux725 = add i32 0, 1
	%aux724 = add i32 %aux722, %aux725
	store i32 %aux724, i32* @IdPos8
	br label %etiq217
	
	etiq217:
	;___Asignación___
	%aux727 = load i32, i32* @Pivot8
	%aux730 = add i32 0, 1
	%aux729 = sub i32 %aux727, %aux730
	store i32 %aux729, i32* @Pivot8
	br label %etiq218
	
	etiq214:
	;___Asignación___
	%aux732 = load i32, i32* @IdPos8
	%aux735 = add i32 0, 1
	%aux734 = add i32 %aux732, %aux735
	store i32 %aux734, i32* @IdPos8
	br label %etiq218
	
	etiq218:
	;___IfElse___
	%aux743 = add i32 0, 3
	%aux741 = load i32, i32* @Pivot8
	%aux742 = sub i32 %aux743, %aux741
	%aux738 = load i32, i32* @IdPos8
	%aux739 = icmp eq i32 %aux742, %aux738
	br i1 %aux739, label %etiq219, label %etiq220
	
	etiq219:
	;___Asignación___
	%aux745 = load i32, i32* @_Acum15
	%aux748 = add i32 0, 5
	%aux747 = add i32 %aux745, %aux748
	store i32 %aux747, i32* @_Acum15
	br label %etiq222
	
	etiq222:
	;___Asignación___
	%aux750 = load i32, i32* @IdPos8
	%aux753 = add i32 0, 1
	%aux752 = add i32 %aux750, %aux753
	store i32 %aux752, i32* @IdPos8
	br label %etiq223
	
	etiq223:
	;___Asignación___
	%aux755 = load i32, i32* @Pivot8
	%aux758 = add i32 0, 1
	%aux757 = sub i32 %aux755, %aux758
	store i32 %aux757, i32* @Pivot8
	br label %etiq224
	
	etiq220:
	;___Asignación___
	%aux760 = load i32, i32* @IdPos8
	%aux763 = add i32 0, 1
	%aux762 = add i32 %aux760, %aux763
	store i32 %aux762, i32* @IdPos8
	br label %etiq224
	
	etiq205:
	;___DisplayCadenaCaracteres___
	%aux764 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq224
	
	etiq202:
	;___DisplayCadenaCaracteres___
	%aux765 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq224
	
	etiq199:
	;___DisplayCadenaCaracteres___
	%aux766 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq224
	
	etiq224:
	;___Asignación___
	%aux768 = load i32, i32* @_Acum15
	store i32 %aux768, i32* @_Acum16
	br label %etiq225
	
	etiq225:
	;___Asignación___
	%aux770 = add i32 0, 2
	store i32 %aux770, i32* @Pivot10
	br label %etiq226
	
	etiq225:
	;___IfElse___
	%aux772 = load i32, i32* @Pivot10
	%aux775 = add i32 0, 1
	%aux774 = icmp sge i32 %aux772, %aux775
	br i1 %aux774, label %etiq226, label %etiq227
	
	etiq226:
	;___IfElse___
	%aux780 = add i32 0, 2
	%aux778 = load i32, i32* @Pivot10
	%aux779 = icmp sge i32 %aux780, %aux778
	br i1 %aux779, label %etiq229, label %etiq230
	
	etiq229:
	;___IfElse___
	%aux785 = add i32 0, 2
	%aux786 = add i32 0, 0
	%aux784 = icmp sgt i32 %aux785, %aux786
	br i1 %aux784, label %etiq232, label %etiq233
	
	etiq232:
	;___IfElse___
	%aux794 = add i32 0, 2
	%aux792 = load i32, i32* @Pivot10
	%aux793 = sub i32 %aux794, %aux792
	%aux789 = load i32, i32* @IdPos10
	%aux790 = icmp eq i32 %aux793, %aux789
	br i1 %aux790, label %etiq235, label %etiq236
	
	etiq235:
	;___Asignación___
	%aux796 = load i32, i32* @_Acum19
	%aux797 = load i32, i32* @_Acum16
	%aux798 = add i32 %aux796, %aux797
	store i32 %aux798, i32* @_Acum19
	br label %etiq238
	
	etiq238:
	;___Asignación___
	%aux800 = load i32, i32* @IdPos10
	%aux803 = add i32 0, 1
	%aux802 = add i32 %aux800, %aux803
	store i32 %aux802, i32* @IdPos10
	br label %etiq239
	
	etiq239:
	;___Asignación___
	%aux805 = load i32, i32* @Pivot10
	%aux808 = add i32 0, 1
	%aux807 = sub i32 %aux805, %aux808
	store i32 %aux807, i32* @Pivot10
	br label %etiq240
	
	etiq236:
	;___Asignación___
	%aux810 = load i32, i32* @IdPos10
	%aux813 = add i32 0, 1
	%aux812 = add i32 %aux810, %aux813
	store i32 %aux812, i32* @IdPos10
	br label %etiq240
	
	etiq240:
	;___IfElse___
	%aux821 = add i32 0, 2
	%aux819 = load i32, i32* @Pivot10
	%aux820 = sub i32 %aux821, %aux819
	%aux816 = load i32, i32* @IdPos10
	%aux817 = icmp eq i32 %aux820, %aux816
	br i1 %aux817, label %etiq241, label %etiq242
	
	etiq241:
	;___Asignación___
	%aux823 = load i32, i32* @_Acum19
	%aux824 = load i32, i32* @_Acum18
	%aux825 = add i32 %aux823, %aux824
	store i32 %aux825, i32* @_Acum19
	br label %etiq244
	
	etiq244:
	;___Asignación___
	%aux827 = load i32, i32* @IdPos10
	%aux830 = add i32 0, 1
	%aux829 = add i32 %aux827, %aux830
	store i32 %aux829, i32* @IdPos10
	br label %etiq245
	
	etiq245:
	;___Asignación___
	%aux832 = load i32, i32* @Pivot10
	%aux835 = add i32 0, 1
	%aux834 = sub i32 %aux832, %aux835
	store i32 %aux834, i32* @Pivot10
	br label %etiq246
	
	etiq242:
	;___Asignación___
	%aux837 = load i32, i32* @IdPos10
	%aux840 = add i32 0, 1
	%aux839 = add i32 %aux837, %aux840
	store i32 %aux839, i32* @IdPos10
	br label %etiq246
	
	etiq233:
	;___DisplayCadenaCaracteres___
	%aux841 = call i32 @puts(i8* getelementptr ([22 x i8], [22 x i8] * @strmensaje3, i32 0, i32 0))
	br label %etiq246
	
	etiq230:
	;___DisplayCadenaCaracteres___
	%aux842 = call i32 @puts(i8* getelementptr ([49 x i8], [49 x i8] * @strmensaje2, i32 0, i32 0))
	br label %etiq246
	
	etiq227:
	;___DisplayCadenaCaracteres___
	%aux843 = call i32 @puts(i8* getelementptr ([24 x i8], [24 x i8] * @strmensaje1, i32 0, i32 0))
	br label %etiq246
	
	etiq246:
	;___Asignación___
	%aux845 = load i32, i32* @_Acum19
	store i32 %aux845, i32* @res
	br label %etiq247
	
	etiq247:
	;___DisplayExpresion___
	%aux847 = load i32, i32* @res
	%aux846 = call i32 (i8*, ...) @printf(i8* getelementptr ([4 x i8], [4 x i8]* @.integer, i32 0, i32 0), i32 %aux847)
	br label %etiq248
	
	etiq248:
	ret i32 0
}

