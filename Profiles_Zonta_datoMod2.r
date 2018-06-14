setwd('L:/Il mio Drive/MERCURIO/Venezia/')
setwd('C:/Users/gi/Downloads/')
dati<-read.table('QSEV_data_box.txt', header=T); str(dati)
#dati<-read.table('QSEV_data.txt', header=T); str(dati)
# plot anno 2013 - 2015 vari layer sed

setwd('C:/Users/Ginevra/Dropbox/fin5/fin5d')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'la1','la2','la3','la4','la5','la6','la7','la8','la9','la10',
             'lb1','lb2','lb3','lb4','lb5','lb6','lb7','lb8','lb9','lb10',
             'lc1','lc2','lc3','lc4','lc5','lc6','lc7','lc8','lc9','lc10',
             'ld1','ld2','ld3','ld4','ld5','ld6','ld7','ld8','ld9','ld10')

library(dplyr)
box1<-filter(dati,box==1);box2<-filter(dati,box ==2)
box3<-filter(dati,box ==3);box4<-filter(dati,box ==4)
box5<-filter(dati,box ==5);box6<-filter(dati,box ==6)
box7<-filter(dati,box ==7);box8<-filter(dati,box ==8)
box9<-filter(dati,box ==9);box10<-filter(dati,box==10)

box1_A<-filter(box1,sed_layer=='A'); box1_B<-filter(box1,sed_layer=='B');box1_C<-filter(box1,sed_layer=='C');box1_D<-filter(box1,sed_layer=='D');box1_E<-filter(box1,sed_layer=='E')
box2_A<-filter(box2,sed_layer=='A'); box2_B<-filter(box2,sed_layer=='B');box2_C<-filter(box2,sed_layer=='C');box2_D<-filter(box2,sed_layer=='D');box2_E<-filter(box2,sed_layer=='E')
box3_A<-filter(box3,sed_layer=='A'); box3_B<-filter(box3,sed_layer=='B');box3_C<-filter(box3,sed_layer=='C');box3_D<-filter(box3,sed_layer=='D');box3_E<-filter(box3,sed_layer=='E')
box4_A<-filter(box4,sed_layer=='A'); box4_B<-filter(box4,sed_layer=='B');box4_C<-filter(box4,sed_layer=='C');box4_D<-filter(box4,sed_layer=='D');box4_E<-filter(box4,sed_layer=='E')
box5_A<-filter(box5,sed_layer=='A'); box5_B<-filter(box5,sed_layer=='B');box5_C<-filter(box5,sed_layer=='C');box5_D<-filter(box5,sed_layer=='D');box5_E<-filter(box5,sed_layer=='E')
box6_A<-filter(box6,sed_layer=='A'); box6_B<-filter(box6,sed_layer=='B');box6_C<-filter(box6,sed_layer=='C');box6_D<-filter(box6,sed_layer=='D');box6_E<-filter(box6,sed_layer=='E')
box7_A<-filter(box7,sed_layer=='A'); box7_B<-filter(box7,sed_layer=='B');box7_C<-filter(box7,sed_layer=='C');box7_D<-filter(box7,sed_layer=='D');box7_E<-filter(box7,sed_layer=='E')
box8_A<-filter(box8,sed_layer=='A'); box8_B<-filter(box8,sed_layer=='B');box8_C<-filter(box8,sed_layer=='C');box8_D<-filter(box8,sed_layer=='D');box8_E<-filter(box8,sed_layer=='E')
box9_A<-filter(box9,sed_layer=='A'); box9_B<-filter(box9,sed_layer=='B');box9_C<-filter(box9,sed_layer=='C');box9_D<-filter(box9,sed_layer=='D');box9_E<-filter(box9,sed_layer=='E')
box10_A<-filter(box10,sed_layer=='A'); box10_B<-filter(box10,sed_layer=='B');box10_C<-filter(box10,sed_layer=='C');box10_D<-filter(box10,sed_layer=='D');box10_E<-filter(box10,sed_layer=='E')

box1_A_hg<-select(box1_A,Hg)*1000; box1_B_hg<-select(box1_B,Hg)*1000;box1_C_hg<-select(box1_C,Hg)*1000;box1_D_hg<-select(box1_D,Hg)*1000;box1_E_hg<-select(box1_E,Hg)*1000
box2_A_hg<-select(box2_A,Hg)*1000; box2_B_hg<-select(box2_B,Hg)*1000;box2_C_hg<-select(box2_C,Hg)*1000;box2_D_hg<-select(box2_D,Hg)*1000;box2_E_hg<-select(box2_E,Hg)*1000
box3_A_hg<-select(box3_A,Hg)*1000; box3_B_hg<-select(box3_B,Hg)*1000;   box3_C_hg<-select(box3_C,Hg)*1000;box3_D_hg<-select(box3_D,Hg)*1000;box3_E_hg<-select(box3_E,Hg)*1000
box4_A_hg<-select(box4_A,Hg)*1000; box4_B_hg<-select(box4_B,Hg)*1000;   box4_C_hg<-select(box4_C,Hg)*1000;box4_D_hg<-select(box4_D,Hg)*1000;box4_E_hg<-select(box4_E,Hg)*1000
box5_A_hg<-select(box5_A,Hg)*1000; box5_B_hg<-select(box5_B,Hg)*1000;   box5_C_hg<-select(box5_C,Hg)*1000;box5_D_hg<-select(box5_D,Hg)*1000;box5_E_hg<-select(box5_E,Hg)*1000
box6_A_hg<-select(box6_A,Hg)*1000; box6_B_hg<-select(box6_B,Hg)*1000;   box6_C_hg<-select(box6_C,Hg)*1000;box6_D_hg<-select(box6_D,Hg)*1000;box6_E_hg<-select(box6_E,Hg)*1000
box7_A_hg<-select(box7_A,Hg)*1000; box7_B_hg<-select(box7_B,Hg)*1000;   box7_C_hg<-select(box7_C,Hg)*1000;box7_D_hg<-select(box7_D,Hg)*1000;box7_E_hg<-select(box7_E,Hg)*1000
box8_A_hg<-select(box8_A,Hg)*1000; box8_B_hg<-select(box8_B,Hg)*1000;box8_C_hg<-select(box8_C,Hg)*1000;box8_D_hg<-select(box8_D,Hg)*1000;box8_E_hg<-select(box8_E,Hg)*1000
box9_A_hg<-select(box9_A,Hg)*1000; box9_B_hg<-select(box9_B,Hg)*1000;box9_C_hg<-select(box9_C,Hg)*1000;box9_D_hg<-select(box9_D,Hg)*1000;box9_E_hg<-select(box9_E,Hg)*1000
box10_A_hg<-select(box10_A,Hg)*1000; box10_B_hg<-select(box10_B,Hg)*1000;box10_C_hg<-select(box10_C,Hg)*1000;box10_D_hg<-select(box10_D,Hg)*1000;box10_E_hg<-select(box10_E,Hg)*1000

layerE<-rbind(box1_E_hg,box2_E_hg,box3_E_hg,box4_E_hg,box5_E_hg,box6_E_hg,box7_E_hg,box8_E_hg,box9_E_hg,box10_E_hg)
layerE_nord <-rbind(box1_E_hg,box2_E_hg,box4_E_hg)
layerE_centr<-rbind(box3_E_hg,box5_E_hg,box6_E_hg)
layerE_sud  <-rbind(box7_E_hg,box8_E_hg,box9_E_hg,box10_E_hg)

summary(layerE_nord)
summary(layerE_centr)
summary(layerE_sud)
summary(box10_E_hg)

y<-c(-2,-7,-15,-25,-40)

box1_A_mean<-mean(box1_A$Hg[1:19]); box1_A_min<-min(box1_A$Hg[1:19]); box1_A_max<-max(box1_A$Hg)
box1_B_mean<-mean(box1_B$Hg[1:19]); box1_B_min<-min(box1_B$Hg[1:19]); box1_B_max<-max(box1_B$Hg)
box1_C_mean<-mean(box1_C$Hg[1:19]); box1_C_min<-min(box1_C$Hg[1:19]); box1_C_max<-max(box1_C$Hg)
box1_D_mean<-mean(box1_D$Hg[1:19]); box1_D_min<-min(box1_D$Hg[1:19]); box1_D_max<-max(box1_D$Hg)
box1_E_mean<-mean(box1_E$Hg[1:19]); box1_E_min<-min(box1_E$Hg[1:19]); box1_E_max<-max(box1_E$Hg)

box2_A_mean<-mean(box2_A$Hg[1:24]); box2_A_min<-min(box2_A$Hg[1:24]); box2_A_max<-max(box2_A$Hg)
box2_B_mean<-mean(box2_B$Hg[1:24]); box2_B_min<-min(box2_B$Hg[1:24]); box2_B_max<-max(box2_B$Hg)
box2_C_mean<-mean(box2_C$Hg[1:24]); box2_C_min<-min(box2_C$Hg[1:24]); box2_C_max<-max(box2_C$Hg)
box2_D_mean<-mean(box2_D$Hg[1:24]); box2_D_min<-min(box2_D$Hg[1:24]); box2_D_max<-max(box2_D$Hg)
box2_E_mean<-mean(box2_E$Hg[1:24]); box2_E_min<-min(box2_E$Hg[1:24]); box2_E_max<-max(box2_E$Hg)

box3_A_mean<-mean(box3_A$Hg[1:43]); box3_A_min<-min(box3_A$Hg[1:43]); box3_A_max<-max(box3_A$Hg)
box3_B_mean<-mean(box3_B$Hg[1:43]); box3_B_min<-min(box3_B$Hg[1:43]); box3_B_max<-max(box3_B$Hg)
box3_C_mean<-mean(box3_C$Hg[1:43]); box3_C_min<-min(box3_C$Hg[1:43]); box3_C_max<-max(box3_C$Hg)
box3_D_mean<-mean(box3_D$Hg[1:43]); box3_D_min<-min(box3_D$Hg[1:43]); box3_D_max<-max(box3_D$Hg)
box3_E_mean<-mean(box3_E$Hg[1:43]); box3_E_min<-min(box3_E$Hg[1:19]); box3_E_max<-max(box3_E$Hg)

box4_A_mean<-mean(box4_A$Hg[1:5]); box4_A_min<-min(box4_A$Hg[1:5]); box4_A_max<-max(box4_A$Hg)
box4_B_mean<-mean(box4_B$Hg[1:5]); box4_B_min<-min(box4_B$Hg[1:5]); box4_B_max<-max(box4_B$Hg)
box4_C_mean<-mean(box4_C$Hg[1:5]); box4_C_min<-min(box4_C$Hg[1:5]); box4_C_max<-max(box4_C$Hg)
box4_D_mean<-mean(box4_D$Hg[1:5]); box4_D_min<-min(box4_D$Hg[1:5]); box4_D_max<-max(box4_D$Hg)
box4_E_mean<-mean(box4_E$Hg[1:5]); box4_E_min<-min(box4_E$Hg[1:5]); box4_E_max<-max(box4_E$Hg)

box5_A_mean<-mean(box5_A$Hg[1:52]); box5_A_min<-min(box5_A$Hg[1:52]); box5_A_max<-max(box5_A$Hg)
box5_B_mean<-mean(box5_B$Hg[1:52]); box5_B_min<-min(box5_B$Hg[1:52]); box5_B_max<-max(box5_B$Hg)
box5_C_mean<-mean(box5_C$Hg[1:52]); box5_C_min<-min(box5_C$Hg[1:52]); box5_C_max<-max(box5_C$Hg)
box5_D_mean<-mean(box5_D$Hg[1:52]); box5_D_min<-min(box5_D$Hg[1:52]); box5_D_max<-max(box5_D$Hg)
box5_E_mean<-mean(box5_E$Hg[1:52]); box5_E_min<-min(box5_E$Hg[1:52]); box5_E_max<-max(box5_E$Hg)

box6_A_mean<-mean(box6_A$Hg[1:75]); box6_A_min<-min(box6_A$Hg[1:75]); box6_A_max<-max(box6_A$Hg)
box6_B_mean<-mean(box6_B$Hg[1:75]); box6_B_min<-min(box6_B$Hg[1:75]); box6_B_max<-max(box6_B$Hg)
box6_C_mean<-mean(box6_C$Hg[1:75]); box6_C_min<-min(box6_C$Hg[1:75]); box6_C_max<-max(box6_C$Hg)
box6_D_mean<-mean(box6_D$Hg[1:75]); box6_D_min<-min(box6_D$Hg[1:75]); box6_D_max<-max(box6_D$Hg)
box6_E_mean<-mean(box6_E$Hg[1:75]); box6_E_min<-min(box6_E$Hg[1:75]); box6_E_max<-max(box6_E$Hg)

box7_A_mean<-mean(box7_A$Hg[1:83]); box7_A_min<-min(box7_A$Hg[1:83]); box7_A_max<-max(box7_A$Hg)
box7_B_mean<-mean(box7_B$Hg[1:83]); box7_B_min<-min(box7_B$Hg[1:83]); box7_B_max<-max(box7_B$Hg)
box7_C_mean<-mean(box7_C$Hg[1:83]); box7_C_min<-min(box7_C$Hg[1:83]); box7_C_max<-max(box7_C$Hg)
box7_D_mean<-mean(box7_D$Hg[1:83]); box7_D_min<-min(box7_D$Hg[1:83]); box7_D_max<-min(box7_D$Hg)
box7_E_mean<-mean(box7_E$Hg[1:83]); box7_E_min<-min(box7_E$Hg[1:83]); box7_E_max<-max(box7_E$Hg)

box8_A_mean<-mean(box8_A$Hg[1:18]); box8_A_min<-min(box8_A$Hg[1:18]); box8_A_max<-max(box8_A$Hg)
box8_B_mean<-mean(box8_B$Hg[1:18]); box8_B_min<-min(box8_B$Hg[1:18]); box8_B_max<-max(box8_B$Hg)
box8_C_mean<-mean(box8_C$Hg[1:18]); box8_C_min<-min(box8_C$Hg[1:18]); box8_C_max<-max(box8_C$Hg)
box8_D_mean<-mean(box8_D$Hg[1:18]); box8_D_min<-min(box8_D$Hg[1:18]); box8_D_max<-max(box8_D$Hg)
box8_E_mean<-mean(box8_E$Hg[1:18]); box8_E_min<-min(box8_E$Hg[1:18]); box8_E_max<-max(box8_E$Hg)

box9_A_mean<-mean(box9_A$Hg[1:18]); box9_A_min<-min(box9_A$Hg[1:18]); box9_A_max<-max(box9_A$Hg)
box9_B_mean<-mean(box9_B$Hg[1:18]); box9_B_min<-min(box9_B$Hg[1:18]); box9_B_max<-max(box9_B$Hg)
box9_C_mean<-mean(box9_C$Hg[1:18]); box9_C_min<-min(box9_C$Hg[1:18]); box9_C_max<-max(box9_C$Hg)
box9_D_mean<-mean(box9_D$Hg[1:18]); box9_D_min<-min(box9_D$Hg[1:18]); box9_D_max<-max(box9_D$Hg)
box9_E_mean<-mean(box9_E$Hg[1:18]); box9_E_min<-min(box9_E$Hg[1:18]); box9_E_max<-max(box9_E$Hg)

box10_A_mean<-mean(box10_A$Hg[1:43]); box10_A_min<-min(box10_A$Hg[1:43]); box10_A_max<-max(box10_A$Hg)
box10_B_mean<-mean(box10_B$Hg[1:43]); box10_B_min<-min(box10_B$Hg[1:43]); box10_B_max<-max(box10_B$Hg)
box10_C_mean<-mean(box10_C$Hg[1:43]); box10_C_min<-min(box10_C$Hg[1:43]); box10_C_max<-max(box10_C$Hg)
box10_D_mean<-mean(box10_D$Hg[1:43]); box10_D_min<-min(box10_D$Hg[1:43]); box10_D_max<-min(box10_D$Hg)
box10_E_mean<-mean(box10_E$Hg[1:43]); box10_E_min<-min(box10_E$Hg[1:43]); box10_E_max<-max(box10_E$Hg)


box1_A_median<-median(box1_A$Hg[1:19]); box1_A_min<-min(box1_A$Hg[1:19]); box1_A_max<-max(box1_A$Hg)
box1_B_median<-median(box1_B$Hg[1:19]); box1_B_min<-min(box1_B$Hg[1:19]); box1_B_max<-max(box1_B$Hg)
box1_C_median<-median(box1_C$Hg[1:19]); box1_C_min<-min(box1_C$Hg[1:19]); box1_C_max<-max(box1_C$Hg)
box1_D_median<-median(box1_D$Hg[1:19]); box1_D_min<-min(box1_D$Hg[1:19]); box1_D_max<-max(box1_D$Hg)
box1_E_median<-median(box1_E$Hg[1:19]); box1_E_min<-min(box1_E$Hg[1:19]); box1_E_max<-max(box1_E$Hg)

box2_A_median<-median(box2_A$Hg[1:24]); box2_A_min<-min(box2_A$Hg[1:24]); box2_A_max<-max(box2_A$Hg)
box2_B_median<-median(box2_B$Hg[1:24]); box2_B_min<-min(box2_B$Hg[1:24]); box2_B_max<-max(box2_B$Hg)
box2_C_median<-median(box2_C$Hg[1:24]); box2_C_min<-min(box2_C$Hg[1:24]); box2_C_max<-max(box2_C$Hg)
box2_D_median<-median(box2_D$Hg[1:24]); box2_D_min<-min(box2_D$Hg[1:24]); box2_D_max<-max(box2_D$Hg)
box2_E_median<-median(box2_E$Hg[1:24]); box2_E_min<-min(box2_E$Hg[1:24]); box2_E_max<-max(box2_E$Hg)

box3_A_median<-median(box3_A$Hg[1:43]); box3_A_min<-min(box3_A$Hg[1:43]); box3_A_max<-max(box3_A$Hg)
box3_B_median<-median(box3_B$Hg[1:43]); box3_B_min<-min(box3_B$Hg[1:43]); box3_B_max<-max(box3_B$Hg)
box3_C_median<-median(box3_C$Hg[1:43]); box3_C_min<-min(box3_C$Hg[1:43]); box3_C_max<-max(box3_C$Hg)
box3_D_median<-median(box3_D$Hg[1:43]); box3_D_min<-min(box3_D$Hg[1:43]); box3_D_max<-max(box3_D$Hg)
box3_E_median<-median(box3_E$Hg[1:43]); box3_E_min<-min(box3_E$Hg[1:19]); box3_E_max<-max(box3_E$Hg)

box4_A_median<-median(box4_A$Hg[1:5]); box4_A_min<-min(box4_A$Hg[1:5]); box4_A_max<-max(box4_A$Hg)
box4_B_median<-median(box4_B$Hg[1:5]); box4_B_min<-min(box4_B$Hg[1:5]); box4_B_max<-max(box4_B$Hg)
box4_C_median<-median(box4_C$Hg[1:5]); box4_C_min<-min(box4_C$Hg[1:5]); box4_C_max<-max(box4_C$Hg)
box4_D_median<-median(box4_D$Hg[1:5]); box4_D_min<-min(box4_D$Hg[1:5]); box4_D_max<-max(box4_D$Hg)
box4_E_median<-median(box4_E$Hg[1:5]); box4_E_min<-min(box4_E$Hg[1:5]); box4_E_max<-max(box4_E$Hg)

box5_A_median<-median(box5_A$Hg[1:52]); box5_A_min<-min(box5_A$Hg[1:52]); box5_A_max<-max(box5_A$Hg)
box5_B_median<-median(box5_B$Hg[1:52]); box5_B_min<-min(box5_B$Hg[1:52]); box5_B_max<-max(box5_B$Hg)
box5_C_median<-median(box5_C$Hg[1:52]); box5_C_min<-min(box5_C$Hg[1:52]); box5_C_max<-max(box5_C$Hg)
box5_D_median<-median(box5_D$Hg[1:52]); box5_D_min<-min(box5_D$Hg[1:52]); box5_D_max<-max(box5_D$Hg)
box5_E_median<-median(box5_E$Hg[1:52]); box5_E_min<-min(box5_E$Hg[1:52]); box5_E_max<-max(box5_E$Hg)

box6_A_median<-median(box6_A$Hg[1:75]); box6_A_min<-min(box6_A$Hg[1:75]); box6_A_max<-max(box6_A$Hg)
box6_B_median<-median(box6_B$Hg[1:75]); box6_B_min<-min(box6_B$Hg[1:75]); box6_B_max<-max(box6_B$Hg)
box6_C_median<-median(box6_C$Hg[1:75]); box6_C_min<-min(box6_C$Hg[1:75]); box6_C_max<-max(box6_C$Hg)
box6_D_median<-median(box6_D$Hg[1:75]); box6_D_min<-min(box6_D$Hg[1:75]); box6_D_max<-max(box6_D$Hg)
box6_E_median<-median(box6_E$Hg[1:75]); box6_E_min<-min(box6_E$Hg[1:75]); box6_E_max<-max(box6_E$Hg)

box7_A_median<-median(box7_A$Hg[1:83]); box7_A_min<-min(box7_A$Hg[1:83]); box7_A_max<-max(box7_A$Hg)
box7_B_median<-median(box7_B$Hg[1:83]); box7_B_min<-min(box7_B$Hg[1:83]); box7_B_max<-max(box7_B$Hg)
box7_C_median<-median(box7_C$Hg[1:83]); box7_C_min<-min(box7_C$Hg[1:83]); box7_C_max<-max(box7_C$Hg)
box7_D_median<-median(box7_D$Hg[1:83]); box7_D_min<-min(box7_D$Hg[1:83]); box7_D_max<-max(box7_D$Hg)
box7_E_median<-median(box7_E$Hg[1:83]); box7_E_min<-min(box7_E$Hg[1:83]); box7_E_max<-max(box7_E$Hg)

box8_A_median<-median(box8_A$Hg[1:18]); box8_A_min<-min(box8_A$Hg[1:18]); box8_A_max<-max(box8_A$Hg)
box8_B_median<-median(box8_B$Hg[1:18]); box8_B_min<-min(box8_B$Hg[1:18]); box8_B_max<-max(box8_B$Hg)
box8_C_median<-median(box8_C$Hg[1:18]); box8_C_min<-min(box8_C$Hg[1:18]); box8_C_max<-max(box8_C$Hg)
box8_D_median<-median(box8_D$Hg[1:18]); box8_D_min<-min(box8_D$Hg[1:18]); box8_D_max<-max(box8_D$Hg)
box8_E_median<-median(box8_E$Hg[1:18]); box8_E_min<-min(box8_E$Hg[1:18]); box8_E_max<-max(box8_E$Hg)

box9_A_median<-median(box9_A$Hg[1:18]); box9_A_min<-min(box9_A$Hg[1:18]); box9_A_max<-max(box9_A$Hg)
box9_B_median<-median(box9_B$Hg[1:18]); box9_B_min<-min(box9_B$Hg[1:18]); box9_B_max<-max(box9_B$Hg)
box9_C_median<-median(box9_C$Hg[1:18]); box9_C_min<-min(box9_C$Hg[1:18]); box9_C_max<-max(box9_C$Hg)
box9_D_median<-median(box9_D$Hg[1:18]); box9_D_min<-min(box9_D$Hg[1:18]); box9_D_max<-max(box9_D$Hg)
box9_E_median<-median(box9_E$Hg[1:18]); box9_E_min<-min(box9_E$Hg[1:18]); box9_E_max<-max(box9_E$Hg)

box10_A_median<-median(box10_A$Hg[1:43]); box10_A_min<-min(box10_A$Hg[1:43]); box10_A_max<-max(box10_A$Hg)
box10_B_median<-median(box10_B$Hg[1:43]); box10_B_min<-min(box10_B$Hg[1:43]); box10_B_max<-max(box10_B$Hg)
box10_C_median<-median(box10_C$Hg[1:43]); box10_C_min<-min(box10_C$Hg[1:43]); box10_C_max<-max(box10_C$Hg)
box10_D_median<-median(box10_D$Hg[1:43]); box10_D_min<-min(box10_D$Hg[1:43]); box10_D_max<-min(box10_D$Hg)
box10_E_median<-median(box10_E$Hg[1:43]); box10_E_min<-min(box10_E$Hg[1:43]); box10_E_max<-max(box10_E$Hg)

b1_profile<-c(box1_A_median,box1_B_median,box1_C_median,box1_D_median,box1_E_median)
b2_profile<-c(box2_A_median,box2_B_median,box2_C_median,box2_D_median,box2_E_median)
b3_profile<-c(box3_A_median,box3_B_median,box3_C_median,box3_D_median,box3_E_median)
b4_profile<-c(box4_A_median,box4_B_median,box4_C_median,box4_D_median,box4_E_median)
b5_profile<-c(box5_A_median,box5_B_median,box5_C_median,box5_D_median,box5_E_median)
b6_profile<-c(box6_A_median,box6_B_median,box6_C_median,box6_D_median,box6_E_median)
b7_profile<-c(box7_A_median,box7_B_median,box7_C_median,box7_D_median,box7_E_median)
b8_profile<-c(box8_A_median,box8_B_median,box8_C_median,box8_D_median,box8_E_median)
b9_profile<-c(box9_A_median,box9_B_median,box9_C_median,box9_D_median,box9_E_median)
b10_profile<-c(box10_A_median,box10_B_median,box10_C_median,box10_D_median,box10_E_median)

b1_profile_mean<-c(box1_A_mean,box1_B_mean,box1_C_mean,box1_D_mean,box1_E_mean)
b2_profile_mean<-c(box2_A_mean,box2_B_mean,box2_C_mean,box2_D_mean,box2_E_mean)
b3_profile_mean<-c(box3_A_mean,box3_B_mean,box3_C_mean,box3_D_mean,box3_E_mean)
b4_profile_mean<-c(box4_A_mean,box4_B_mean,box4_C_mean,box4_D_mean,box4_E_mean)
b5_profile_mean<-c(box5_A_mean,box5_B_mean,box5_C_mean,box5_D_mean,box5_E_mean)
b6_profile_mean<-c(box6_A_mean,box6_B_mean,box6_C_mean,box6_D_mean,box6_E_mean)
b7_profile_mean<-c(box7_A_mean,box7_B_mean,box7_C_mean,box7_D_mean,box7_E_mean)
b8_profile_mean<-c(box8_A_mean,box8_B_mean,box8_C_mean,box8_D_mean,box8_E_mean)
b9_profile_mean<-c(box9_A_mean,box9_B_mean,box9_C_mean,box9_D_mean,box9_E_mean)
b10_profile_mean<-c(box10_A_mean,box10_B_mean,box10_C_mean,box10_D_mean,box10_E_mean)

b1_min<-c(box1_A_min,box1_B_min,box1_C_min,box1_D_min,box1_E_min)
b2_min<-c(box2_A_min,box2_B_min,box2_C_min,box2_D_min,box2_E_min)
b3_min<-c(box3_A_min,box3_B_min,box3_C_min,box3_D_min,box3_E_min)
b4_min<-c(box4_A_min,box4_B_min,box4_C_min,box4_D_min,box4_E_min)
b5_min<-c(box5_A_min,box5_B_min,box5_C_min,box5_D_min,box5_E_min)
b6_min<-c(box6_A_min,box6_B_min,box6_C_min,box6_D_min,box6_E_min)
b7_min<-c(box7_A_min,box7_B_min,box7_C_min,box7_D_min,box7_E_min)
b8_min<-c(box8_A_min,box8_B_min,box8_C_min,box8_D_min,box8_E_min)
b9_min<-c(box9_A_min,box9_B_min,box9_C_min,box9_D_min,box9_E_min)
b10_min<-c(box10_A_min,box10_B_min,box10_C_min,box10_D_min,box10_E_min)

b1_max<-c(box1_A_max,box1_B_max,box1_C_max,box1_D_max,box1_E_max)
b2_max<-c(box2_A_max,box2_B_max,box2_C_max,box2_D_max,box2_E_max)
b3_max<-c(box3_A_max,box3_B_max,box3_C_max,box3_D_max,box3_E_max)
b4_max<-c(box4_A_max,box4_B_max,box4_C_max,box4_D_max,box4_E_max)
b5_max<-c(box5_A_max,box5_B_max,box5_C_max,box5_D_max,box5_E_max)
b6_max<-c(box6_A_max,box6_B_max,box6_C_max,box6_D_max,box6_E_max)
b7_max<-c(box7_A_max,box7_B_max,box7_C_max,box7_D_max,box7_E_max)
b8_max<-c(box8_A_max,box8_B_max,box8_C_max,box8_D_max,box8_E_max)
b9_max<-c(box9_A_max,box9_B_max,box9_C_max,box9_D_max,box9_E_max)
b10_max<-c(box10_A_max,box10_B_max,box10_C_max,box10_D_max,box10_E_max)

b1_profile_mod<-c(mean(hg$la1[1298:1309]), mean(hg$lb1[1298:1309]),mean(hg$lc1[1298:1309]),mean(hg$ld1[1298:1309]), NA)
b1_max_mod/1000<-c(max(hg$la1[1298:1309]), max(hg$lb1[1298:1309]),max(hg$lc1[1298:1309]),max(hg$ld1[1298:1309]),NA)
b1_min_mod/1000<-c(min(hg$la1[1298:1309]), min(hg$lb1[1298:1309]),min(hg$lc1[1298:1309]),min(hg$ld1[1298:1309]), NA)

b2_profile_mod<-c(mean(hg$la2[1298:1309]), mean(hg$lb2[1298:1309]),mean(hg$lc2[1298:1309]), mean(hg$ld2[1298:1309]), NA)
b2_max_mod/1000<-c(max(hg$la2[1298:1309]), max(hg$lb2[1298:1309]),max(hg$lc2[1298:1309]), max(hg$ld2[1298:1309]), NA)
b2_min_mod/1000<-c(min(hg$la2[1298:1309]), min(hg$lb2[1298:1309]),min(hg$lc2[1298:1309]), min(hg$ld2[1298:1309]), NA)

b3_profile_mod<-c(mean(hg$la3[1298:1309]), mean(hg$lb3[1298:1309]),mean(hg$lc3[1298:1309]),mean(hg$ld3[1298:1309]), NA)
b3_max_mod/1000<-c(max(hg$la3[1298:1309]), max(hg$lb3[1298:1309]),max(hg$lc3[1298:1309]),max(hg$ld3[1298:1309]), NA)
b3_min_mod/1000<-c(min(hg$la3[1298:1309]), min(hg$lb3[1298:1309]),min(hg$lc3[1298:1309]),min(hg$ld3[1298:1309]), NA)

b4_profile_mod<-c(mean(hg$la4[1298:1309]), mean(hg$lb4[1298:1309]),mean(hg$lc4[1298:1309]),mean(hg$ld4[1298:1309]), NA)
b4_max_mod/1000<-c(max(hg$la4[1298:1309]), max(hg$lb4[1298:1309]),max(hg$lc4[1298:1309]),max(hg$ld4[1298:1309]), NA)
b4_min_mod/1000<-c(max(hg$la4[1298:1309]), min(hg$lb4[1298:1309]),min(hg$lc4[1298:1309]),min(hg$ld4[1298:1309]), NA)

b5_profile_mod<-c(mean(hg$la5[1298:1309]), mean(hg$lb5[1298:1309]),mean(hg$lc5[1298:1309]),mean(hg$ld5[1298:1309]), NA)
b5_max_mod/1000<-c(max(hg$la5[1298:1309]), max(hg$lb5[1298:1309]),max(hg$lc5[1298:1309]),max(hg$ld5[1298:1309]), NA)
b5_min_mod/1000<-c(min(hg$la5[1298:1309]), min(hg$lb5[1298:1309]),min(hg$lc5[1298:1309]),min(hg$ld5[1298:1309]), NA)

b6_profile_mod<-c(mean(hg$la6[1298:1309]), mean(hg$lb6[1298:1309]),mean(hg$lc6[1298:1309]),mean(hg$ld6[1298:1309]), NA)
b6_max_mod/1000<-c(max(hg$la6[1298:1309]), max(hg$lb6[1298:1309]),max(hg$lc6[1298:1309]),max(hg$ld6[1298:1309]), NA)
b6_min_mod/1000<-c(min(hg$la6[1298:1309]), min(hg$lb6[1298:1309]),min(hg$lc6[1298:1309]),min(hg$ld6[1298:1309]), NA)

b7_profile_mod<-c(mean(hg$la7[1298:1309]), mean(hg$lb7[1298:1309]),mean(hg$lc7[1298:1309]),mean(hg$ld7[1298:1309]), NA)
b7_max_mod/1000<-c(max(hg$la7[1298:1309]), max(hg$lb7[1298:1309]),max(hg$lc7[1298:1309]),max(hg$ld7[1298:1309]), NA)
b7_min_mod/1000<-c(min(hg$la7[1298:1309]), min(hg$lb7[1298:1309]),min(hg$lc7[1298:1309]),min(hg$ld7[1298:1309]), NA)

b8_profile_mod<-c(mean(hg$la8[1298:1309]), mean(hg$lb8[1298:1309]),mean(hg$lc8[1298:1309]),mean(hg$ld8[1298:1309]), NA)
b8_max_mod/1000<-c(max(hg$la8[1298:1309]), max(hg$lb8[1298:1309]),max(hg$lc8[1298:1309]),max(hg$ld8[1298:1309]), NA)
b8_min_mod/1000<-c(min(hg$la8[1298:1309]), min(hg$lb8[1298:1309]),min(hg$lc8[1298:1309]),min(hg$ld8[1298:1309]), NA)

b9_profile_mod<-c(mean(hg$la9[1298:1309]), mean(hg$lb9[1298:1309]),mean(hg$lc9[1298:1309]),mean(hg$ld9[1298:1309]), NA)
b9_max_mod/1000<-c(max(hg$la9[1298:1309]), max(hg$lb9[1298:1309]),max(hg$lc9[1298:1309]),max(hg$ld9[1298:1309]), NA)
b9_min_mod/1000<-c(min(hg$la9[1298:1309]), min(hg$lb9[1298:1309]),min(hg$lc9[1298:1309]),min(hg$ld9[1298:1309]), NA)

b10_profile_mod<-c(mean(hg$la10[1298:1309]), mean(hg$lb10[1298:1309]),mean(hg$lc10[1298:1309]),mean(hg$ld10[1298:1309]), NA)
b10_max_mod/1000<-c(max(hg$la10[1298:1309]), max(hg$lb10[1298:1309]),max(hg$lc10[1298:1309]),max(hg$ld10[1298:1309]), NA)
b10_min_mod/1000<-c(min(hg$la10[1298:1309]), min(hg$lb10[1298:1309]),min(hg$lc10[1298:1309]),min(hg$ld10[1298:1309]), NA)


epsilon <- .7
#dev.new()
png('profile_ZONTA_datoModeo3.png',width = 1000*1.5, height = 530*1.5,  
    units = "px")
par(mfrow=c(2,5),mar=c(3,0,1,0), oma=c(0,4,3,1),  bty='n',cex=1.5) # bg='black',fg = 'white',col.axis = "white", col.clab = "white"

plot(b1_profile,y,xlim=c(0,2), ylim=c(-40,0),  cex=1.6,
     col='#313695',bg='#31369577',  type='b', pch=21)
segments(b1_min,y, b1_max,y, col='#313695', lwd=1.8)
segments(b1_min,y-epsilon,b1_min,y+epsilon, col='#313695', lwd=1.8)
segments(b1_max,y-epsilon,b1_max,y+epsilon, col='#313695', lwd=1.8)
par(new=T)
plot(b1_profile_mean,y,xlim=c(0,2), ylim=c(-40,0), col='#313695',xaxt='n',
     cex=1.6,type='b', pch=21)
par(new=T)
plot(b1_profile_mod/1000,y,xlim=c(0,2), cex=1.6, ylim=c(-40,0), 
     col='#313695',bg='#31369577',   type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
#mtext(side=1, text=expression(paste ('??g g'^-1)), cex=1.6, line=1.9)
mtext(side=3, text='box 1', font=2, line=.5)

plot(b2_profile,y,xlim=c(0,2), ylim=c(-40,0),  cex=1.6,
     col='#4575b4',bg='#4575b477', type='b', pch=21)
segments(b2_min,y,b2_max,y, col='#4575b4', lwd=1.8)
segments(b2_min,y-epsilon,b2_min,y+epsilon, col='#4575b4', lwd=1.8)
segments(b2_max,y-epsilon,b2_max,y+epsilon, col='#4575b4', lwd=1.8)
par(new=T)
plot(b2_profile_mean,y,xlim=c(0,2), ylim=c(-40,0),  cex=1.6,
     col='#4575b4', type='b', pch=21)
par(new=T)
plot(b2_profile_mod/1000,y,xlim=c(0,2), ylim=c(-40,0),
      cex=1.6,col='#4575b4',bg='#4575b477', type='b', pch=25)
#mtext(side=2, text='depth (cm)', line=3)
#mtext(side=1, text=expression(paste ('??g g'^-1)), cex=1.6, line=1.9)
mtext(side=3, text='box 2', font=2, line=.5)

plot(b4_profile,y,xlim=c(0,2),  ylim=c(-40,0), cex=1.6,
     col='#abd9e9',bg='#abd9e977', type='b', pch=21)
segments(b4_min,y,b4_max,y, col='#abd9e9', lwd=1.8)
segments(b4_min,y-epsilon,b4_min,y+epsilon, col='#abd9e9', lwd=1.8)
segments(b4_max,y-epsilon,b4_max,y+epsilon, col='#abd9e9', lwd=1.8)
par(new=T)
plot(b4_profile_mean,y,xlim=c(0,2),  ylim=c(-40,0), cex=1.6,
     col='#abd9e9',type='b', pch=21)
par(new=T)
plot(b4_profile_mod/1000,y,xlim=c(0,2),  cex=1.6,ylim=c(-40,0), col='#abd9e9',bg='#abd9e977', type='b', pch=25)
#mtext(side=1, text=expression(paste ('??g g'^-1)), cex=1.6, line=1.9)
mtext(side=3, text='box 4', font=2, line=.5)

plot(b3_profile,y,xlim=c(0,2), ylim=c(-40,0), cex=1.6,
     col='#DDF26B', bg='#DDF26B77',type='b', pch=21)
segments(b3_min,y,b3_max,y, col='#DDF26B', lwd=1.8)
segments(b3_min,y-epsilon,b3_min,y+epsilon, col='#DDF26B', lwd=1.8)
segments(b3_max,y-epsilon,b3_max,y+epsilon, col='#DDF26B', lwd=1.8)
par(new=T)
plot(b3_profile_mean,y,xlim=c(0,2), ylim=c(-40,0), cex=1.6,
     col='#DDF26B',type='b', pch=21)
par(new=T)
plot(b3_profile_mod/1000,y,xlim=c(0,2),  cex=1.6,ylim=c(-40,0), 
     col='#DDF26B', bg='#DDF26B77', type='b', pch=25)
#mtext(side=1, text=expression(paste ('??g g'^-1)), cex=1.6, line=1.9)
mtext(side=3, text='box 3', font=2, line=.5)

plot(b5_profile,y,xlim=c(0,4), ylim=c(-40,0), col='#e5e572', cex=1.6, bg='#e5e57277',  type='b', pch=21)
segments(b5_min,y,b5_max,y, col='#e5e572', lwd=1.8)
segments(b5_min,y-epsilon,b5_min,y+epsilon, col='#e5e572', lwd=1.8)
segments(b5_max,y-epsilon,b5_max,y+epsilon, col='#e5e572', lwd=1.8)
par(new=T)
plot(b5_profile_mean,y,xlim=c(0,4), ylim=c(-40,0), col='#e5e572', cex=1.6,  type='b', pch=21)
par(new=T)
plot(b5_profile_mod/1000,y,xlim=c(0,4), ylim=c(-40,0), cex=1.6, col='#e5e572', bg='#e5e57277',type='b', pch=25)
#mtext(side=1, text=expression(paste ('??g g'^-1)), cex=1.6, line=1.9)
mtext(side=3, text='box 5', font=2, line=.5)

plot(b6_profile,y,xlim=c(0,4),  cex=1.6, ylim=c(-40,0),col='#fed976', bg='#fed97677', type='b', pch=21)
segments(b6_min,y,b6_max,y, col='#fed976', lwd=1.8)
segments(b6_min,y-epsilon,b6_min,y+epsilon, col='#fed976', lwd=1.8)
segments(b6_max,y-epsilon,b6_max,y+epsilon, col='#fed976', lwd=1.8)
par(new=T)
plot(b6_profile_mean,y,xlim=c(0,4),  cex=1.6, ylim=c(-40,0),col='#fed976',type='b', pch=21)
par(new=T)
plot(b6_profile_mod/1000,y,xlim=c(0,4),  cex=1.6,ylim=c(-40,0), col='#fed976', bg='#fed97677',  type='b', pch=25)
mtext(side=2, text='depth (cm)',  cex=1.6, line=3)
mtext(side=1, text=expression(paste ('??g g'^-1)), cex=1.6, line=1.9)
mtext(side=3, text='box 6', font=2, line=.5)

plot(b7_profile,y,xlim=c(0,2),  ylim=c(-40,0), cex=1.6,
     col='#f79220',bg='#f7922077', type='b', pch=21)
segments(b7_min,y,b7_max,y, col='#f79220', lwd=1.8)
segments(b7_min,y-epsilon,b7_min,y+epsilon, col='#f79220', lwd=1.8)
segments(b7_max,y-epsilon,b7_max,y+epsilon, col='#f79220', lwd=1.8)
par(new=T)
plot(b7_profile_mean,y,xlim=c(0,2),  ylim=c(-40,0), cex=1.6,
     col='#f79220',  type='b', pch=21)
par(new=T)
plot(b7_profile_mod/1000,y,xlim=c(0,2),  cex=1.6,ylim=c(-40,0), 
     col='#f79220',bg='#f7922077',  type='b', pch=25)
mtext(side=1, text=expression(paste ('??g g'^-1)), cex=1.6, line=1.9)
mtext(side=3, text='box 7', font=2, line=.5)

plot(b8_profile,y,xlim=c(0,2), ylim=c(-40,0), cex=1.6,
     col='#f46d43',bg='#f46d4377', type='b', pch=21)
segments(b8_min,y,b8_max,y, col='#f46d43', lwd=1.8)
segments(b8_min,y-epsilon,b8_min,y+epsilon, col='#f46d43', lwd=1.8)
segments(b8_max,y-epsilon,b8_max,y+epsilon, col='#f46d43', lwd=1.8)
par(new=T)
plot(b8_profile_mean,y,xlim=c(0,2), ylim=c(-40,0), cex=1.6,
     col='#f46d43',  type='b', pch=21)
par(new=T)
plot(b8_profile_mod/1000,y,xlim=c(0,2), ylim=c(-40,0), cex=1.6,
     col='#f46d43',bg='#f46d4377',  type='b', pch=25)
mtext(side=1, text=expression(paste ('??g g'^-1)), cex=1.6, line=1.9)
mtext(side=3, text='box 8', font=2, line=.5)

plot(b9_profile,y,xlim=c(0,2), ylim=c(-40,0),  cex=1.6,
     col='#d73027',bg='#d7302777', type='b', pch=21)
segments(b9_min,y,b9_max,y, col='#d73027', lwd=1.8)
segments(b9_min,y-epsilon,b9_min,y+epsilon, col='#d73027', lwd=1.8)
segments(b9_max,y-epsilon,b9_max,y+epsilon, col='#d73027', lwd=1.8)
par(new=T)
plot(b9_profile_mean,y,xlim=c(0,2), ylim=c(-40,0),  cex=1.6,
     col='#d73027',  type='b', pch=21)
par(new=T)
plot(b9_profile_mod/1000,y,xlim=c(0,2), ylim=c(-40,0), cex=1.6,
     col='#d73027',bg='#d7302777', type='b', pch=25)
mtext(side=1, text=expression(paste ('??g g'^-1)), cex=1.6, line=1.9)
mtext(side=3, text='box 9', font=2, line=.5)

plot(b10_profile,y,xlim=c(0,2), ylim=c(-40,0), col='#a50028',  cex=1.6,
     bg='#a5002877', type='b', pch=21)
segments(b10_min,y,b10_max,y, col='#a50028', lwd=1.8)
segments(b10_min,y-epsilon,b10_min,y+epsilon, col='#a50028', lwd=1.8)
segments(b10_max,y-epsilon,b10_max,y+epsilon, col='#a50028', lwd=1.8)
par(new=T)
plot(b10_profile_mean,y,xlim=c(0,2), ylim=c(-40,0), col='#a50028',  cex=1.6,
     type='b', pch=21)
par(new=T)
plot(b10_profile_mod/1000,y,xlim=c(0,2), ylim=c(-40,0), cex=1.6,
     col='#a50028',  bg='#a5002877', type='b', pch=25)
mtext(side=1, text=expression(paste ('??g g'^-1)), cex=1.6, line=1.9)
mtext(side=3, text='box 10', font=2, line=.5)

dev.off()
getwd()