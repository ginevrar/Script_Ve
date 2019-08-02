setwd('G:/Il mio Drive/MERCURIO/Venezia/')
setwd('C:/Users/gi/Downloads/')
dati<-read.table('QSEV_data_box.txt', header=T); str(dati)
#dati<-read.table('QSEV_data.txt', header=T); str(dati)

min(dati$Hg*10^3)
max(dati$Hg*10^3)

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

layerA<-rbind(box1_A_hg,box2_A_hg,box3_A_hg,box4_A_hg,box5_A_hg,box6_A_hg,box7_A_hg,box8_A_hg,box9_A_hg,box10_A_hg)

max(layerA)/1000
median(layerA$Hg)
mean(layerA$Hg)/1000

min(layerA$Hg)/1000

y<-c(-2,-7,-15,-25,-40)

box1_A_median<-median(box1_A$Hg[1:19]); box1_A_sd<-sd(box1_A$Hg[1:19])
box1_B_median<-median(box1_B$Hg[1:19]); box1_B_sd<-sd(box1_B$Hg[1:19])
box1_C_median<-median(box1_C$Hg[1:19]); box1_C_sd<-sd(box1_C$Hg[1:19])
box1_D_median<-median(box1_D$Hg[1:19]); box1_D_sd<-sd(box1_D$Hg[1:19])
box1_E_median<-median(box1_E$Hg[1:19]); box1_E_sd<-sd(box1_E$Hg[1:19])

box2_A_median<-median(box2_A$Hg[1:24]); box2_A_sd<-sd(box2_A$Hg[1:24])
box2_B_median<-median(box2_B$Hg[1:24]); box2_B_sd<-sd(box2_B$Hg[1:24])
box2_C_median<-median(box2_C$Hg[1:24]); box2_C_sd<-sd(box2_C$Hg[1:24])
box2_D_median<-median(box2_D$Hg[1:24]); box2_D_sd<-sd(box2_D$Hg[1:24])
box2_E_median<-median(box2_E$Hg[1:24]); box2_E_sd<-sd(box2_E$Hg[1:24])

box3_A_median<-median(box3_A$Hg[1:43]); box3_A_sd<-sd(box3_A$Hg[1:43])
box3_B_median<-median(box3_B$Hg[1:43]); box3_B_sd<-sd(box3_B$Hg[1:43])
box3_C_median<-median(box3_C$Hg[1:43]); box3_C_sd<-sd(box3_C$Hg[1:43])
box3_D_median<-median(box3_D$Hg[1:43]); box3_D_sd<-sd(box3_D$Hg[1:43])
box3_E_median<-median(box3_E$Hg[1:43]); box3_E_sd<-sd(box3_E$Hg[1:43])

box4_A_median<-median(box4_A$Hg[1:5]); box4_A_sd<-sd(box4_A$Hg[1:5])
box4_B_median<-median(box4_B$Hg[1:5]); box4_B_sd<-sd(box4_B$Hg[1:5])
box4_C_median<-median(box4_C$Hg[1:5]); box4_C_sd<-sd(box4_C$Hg[1:5])
box4_D_median<-median(box4_D$Hg[1:5]); box4_D_sd<-sd(box4_D$Hg[1:5])
box4_E_median<-median(box4_E$Hg[1:5]); box4_E_sd<-sd(box4_E$Hg[1:5])

box5_A_median<-median(box5_A$Hg[1:52]); box5_A_sd<-sd(box5_A$Hg[1:52])
box5_B_median<-median(box5_B$Hg[1:52]); box5_B_sd<-sd(box5_B$Hg[1:52])
box5_C_median<-median(box5_C$Hg[1:52]); box5_C_sd<-sd(box5_C$Hg[1:52])
box5_D_median<-median(box5_D$Hg[1:52]); box5_D_sd<-sd(box5_D$Hg[1:52])
box5_E_median<-median(box5_E$Hg[1:52]); box5_E_sd<-sd(box5_E$Hg[1:52])

box6_A_median<-median(box6_A$Hg[1:75]); box6_A_sd<-sd(box6_A$Hg[1:75])
box6_B_median<-median(box6_B$Hg[1:75]); box6_B_sd<-sd(box6_B$Hg[1:75])
box6_C_median<-median(box6_C$Hg[1:75]); box6_C_sd<-sd(box6_C$Hg[1:75])
box6_D_median<-median(box6_D$Hg[1:75]); box6_D_sd<-sd(box6_D$Hg[1:75])
box6_E_median<-median(box6_E$Hg[1:75]); box6_E_sd<-sd(box6_E$Hg[1:75])

box7_A_median<-median(box7_A$Hg[1:83]); box7_A_sd<-sd(box7_A$Hg[1:83])
box7_B_median<-median(box7_B$Hg[1:83]); box7_B_sd<-sd(box7_B$Hg[1:83])
box7_C_median<-median(box7_C$Hg[1:83]); box7_C_sd<-sd(box7_C$Hg[1:83])
box7_D_median<-median(box7_D$Hg[1:83]); box7_D_sd<-sd(box7_D$Hg[1:83])
box7_E_median<-median(box7_E$Hg[1:83]); box7_E_sd<-sd(box7_E$Hg[1:83])

box8_A_median<-median(box8_A$Hg[1:18]); box8_A_sd<-sd(box8_A$Hg[1:18])
box8_B_median<-median(box8_B$Hg[1:18]); box8_B_sd<-sd(box8_B$Hg[1:18])
box8_C_median<-median(box8_C$Hg[1:18]); box8_C_sd<-sd(box8_C$Hg[1:18])
box8_D_median<-median(box8_D$Hg[1:18]); box8_D_sd<-sd(box8_D$Hg[1:18])
box8_E_median<-median(box8_E$Hg[1:18]); box8_E_sd<-sd(box8_E$Hg[1:18])

box9_A_median<-median(box9_A$Hg[1:18]); box9_A_sd<-sd(box9_A$Hg[1:18])
box9_B_median<-median(box9_B$Hg[1:18]); box9_B_sd<-sd(box9_B$Hg[1:18])
box9_C_median<-median(box9_C$Hg[1:18]); box9_C_sd<-sd(box9_C$Hg[1:18])
box9_D_median<-median(box9_D$Hg[1:18]); box9_D_sd<-sd(box9_D$Hg[1:18])
box9_E_median<-median(box9_E$Hg[1:18]); box9_E_sd<-sd(box9_E$Hg[1:18])

box10_A_median<-median(box10_A$Hg[1:43]); box10_A_sd<-sd(box10_A$Hg[1:43])
box10_B_median<-median(box10_B$Hg[1:43]); box10_B_sd<-sd(box10_B$Hg[1:43])
box10_C_median<-median(box10_C$Hg[1:43]); box10_C_sd<-sd(box10_C$Hg[1:43])
box10_D_median<-median(box10_D$Hg[1:43]); box10_D_sd<-sd(box10_D$Hg[1:43])
box10_E_median<-median(box10_E$Hg[1:43]); box10_E_sd<-sd(box10_E$Hg[1:43])

b1_profile<-c(box1_A_median,box1_B_median,box1_C_median,box1_D_median,box1_E_median)
b1_SD<-c(box1_A_sd,box1_B_sd,box1_C_sd,box1_D_sd,box1_E_sd)

b2_profile<-c(box2_A_median,box2_B_median,box2_C_median,box2_D_median,box2_E_median)
b2_SD<-c(box2_A_sd,box2_B_sd,box2_C_sd,box2_D_sd,box2_E_sd)

b3_profile<-c(box3_A_median,box3_B_median,box3_C_median,box3_D_median,box3_E_median)
b3_SD<-c(box3_A_sd,box3_B_sd,box3_C_sd,box3_D_sd,box3_E_sd)

b4_profile<-c(box4_A_median,box4_B_median,box4_C_median,box4_D_median,box4_E_median)
b4_SD<-c(box4_A_sd,box4_B_sd,box4_C_sd,box4_D_sd,box4_E_sd)

b5_profile<-c(box5_A_median,box5_B_median,box5_C_median,box5_D_median,box5_E_median)
b5_SD<-c(box5_A_sd,box5_B_sd,box5_C_sd,box5_D_sd,box5_E_sd)

b6_profile<-c(box6_A_median,box6_B_median,box6_C_median,box6_D_median,box6_E_median)
b6_SD<-c(box6_A_sd,box6_B_sd,box6_C_sd,box6_D_sd,box6_E_sd)

b7_profile<-c(box7_A_median,box7_B_median,box7_C_median,box7_D_median,box7_E_median)
b7_SD<-c(box7_A_sd,box7_B_sd,box7_C_sd,box7_D_sd,box7_E_sd)

b8_profile<-c(box8_A_median,box8_B_median,box8_C_median,box8_D_median,box8_E_median)
b8_SD<-c(box8_A_sd,box8_B_sd,box8_C_sd,box8_D_sd,box8_E_sd)

b9_profile<-c(box9_A_median,box9_B_median,box9_C_median,box9_D_median,box9_E_median)
b9_SD<-c(box9_A_sd,box9_B_sd,box9_C_sd,box9_D_sd,box9_E_sd)

b10_profile<-c(box10_A_median,box10_B_median,box10_C_median,box10_D_median,box10_E_median)
b10_SD<-c(box10_A_sd,box10_B_sd,box10_C_sd,box10_D_sd,box10_E_sd)

epsilon <- .7
 

par(mfrow=c(2,5),mar=c(3,1,1,1), oma=c(0,5.5,3,1),  bty='n',cex=1.5) # bg='black',fg = 'white',col.axis = "white", col.clab = "white"

plot(b1_profile,y, xlim=c(0,1), ylim=c(-40,0), col='#313695', type='b', pch=19)
segments(b1_profile-b1_SD,y,b1_profile+b1_SD,y, col='#313695', lwd=1.8)
segments(b1_profile-b1_SD,y-epsilon,b1_profile-b1_SD,y+epsilon, col='#313695', lwd=1.8)
segments(b1_profile+b1_SD,y-epsilon,b1_profile+b1_SD,y+epsilon, col='#313695', lwd=1.8)

plot(b2_profile,y, xlim=c(0,1), ylim=c(-40,0), col='#4575b4', type='b', pch=19)
segments(b2_profile-b2_SD,y,b2_profile+b2_SD,y, col='#4575b4', lwd=1.8)
segments(b2_profile-b2_SD,y-epsilon,b2_profile-b2_SD,y+epsilon, col='#4575b4', lwd=1.8)
segments(b2_profile+b2_SD,y-epsilon,b2_profile+b2_SD,y+epsilon, col='#4575b4', lwd=1.8)

plot(b4_profile,y, xlim=c(0,1),  ylim=c(-40,0),col='#abd9e9', type='b', pch=19)
segments(b4_profile-b4_SD,y,b4_profile+b4_SD,y, col='#abd9e9', lwd=1.8)
segments(b4_profile-b4_SD,y-epsilon,b4_profile-b4_SD,y+epsilon, col='#abd9e9', lwd=1.8)
segments(b4_profile+b4_SD,y-epsilon,b4_profile+b4_SD,y+epsilon, col='#abd9e9', lwd=1.8)

plot(b3_profile,y, xlim=c(0,1), ylim=c(-40,0), col='#DDF26B', type='b', pch=19)
segments(b3_profile-b3_SD,y,b3_profile+b3_SD,y, col='#DDF26B', lwd=1.8)
segments(b3_profile-b3_SD,y-epsilon,b3_profile-b3_SD,y+epsilon, col='#DDF26B', lwd=1.8)
segments(b3_profile+b3_SD,y-epsilon,b3_profile+b3_SD,y+epsilon, col='#DDF26B', lwd=1.8)

plot(b5_profile,y, xlim=c(0,1), ylim=c(-40,0), col='#e5e572', type='b', pch=19)
segments(b5_profile-b5_SD,y,b5_profile+b5_SD,y, col='#e5e572', lwd=1.8)
segments(b5_profile-b5_SD,y-epsilon,b5_profile-b5_SD,y+epsilon, col='#e5e572', lwd=1.8)
segments(b5_profile+b5_SD,y-epsilon,b5_profile+b5_SD,y+epsilon, col='#e5e572', lwd=1.8)

plot(b6_profile,y, xlim=c(0,1),  ylim=c(-40,0),col='#fed976', type='b', pch=19)
segments(b6_profile-b6_SD,y,b6_profile+b6_SD,y, col='#fed976', lwd=1.8)
segments(b6_profile-b6_SD,y-epsilon,b6_profile-b6_SD,y+epsilon, col='#fed976', lwd=1.8)
segments(b6_profile+b6_SD,y-epsilon,b6_profile+b6_SD,y+epsilon, col='#fed976', lwd=1.8)

plot(b7_profile,y, xlim=c(0,1),  ylim=c(-40,0),col='#f79220', type='b', pch=19)
segments(b7_profile-b7_SD,y,b7_profile+b7_SD,y, col='#f79220', lwd=1.8)
segments(b7_profile-b7_SD,y-epsilon,b7_profile-b7_SD,y+epsilon, col='#f79220', lwd=1.8)
segments(b7_profile+b7_SD,y-epsilon,b7_profile+b7_SD,y+epsilon, col='#f79220', lwd=1.8)

plot(b8_profile,y, xlim=c(0,1), ylim=c(-40,0), col='#f46d43', type='b', pch=19)
segments(b8_profile-b8_SD,y,b8_profile+b8_SD,y, col='#f46d43', lwd=1.8)
segments(b8_profile-b8_SD,y-epsilon,b8_profile-b8_SD,y+epsilon, col='#f46d43', lwd=1.8)
segments(b8_profile+b8_SD,y-epsilon,b8_profile+b8_SD,y+epsilon, col='#f46d43', lwd=1.8)

plot(b9_profile,y, xlim=c(0,1), ylim=c(-40,0), col='#d73027', type='b', pch=19)
segments(b9_profile-b9_SD,y,b9_profile+b9_SD,y, col='#d73027', lwd=1.8)
segments(b9_profile-b9_SD,y-epsilon,b9_profile-b9_SD,y+epsilon, col='#d73027', lwd=1.8)
segments(b9_profile+b9_SD,y-epsilon,b9_profile+b9_SD,y+epsilon, col='#d73027', lwd=1.8)

plot(b10_profile,y, xlim=c(0,1), ylim=c(-40,0), col='#a50028', type='b', pch=19)
segments(b10_profile-b10_SD,y,b10_profile+b10_SD,y, col='#a50028', lwd=1.8)
segments(b10_profile-b10_SD,y-epsilon,b10_profile-b10_SD,y+epsilon, col='#a50028', lwd=1.8)
segments(b10_profile+b10_SD,y-epsilon,b10_profile+b10_SD,y+epsilon, col='#a50028', lwd=1.8)






par(mfrow=c(1,1),mar=c(3,1,1,1), oma=c(0,5.5,3,1),  bty='n',cex=1.5) # bg='black',fg = 'white',col.axis = "white", col.clab = "white"

plot(b1_profile,y, xlim=c(0,1),lwd=2, ylim=c(-40,0), col='#313695', type='b', pch=1)
par(new=T)
plot(b2_profile,y, xlim=c(0,1),lwd=2, ylim=c(-40,0), col='#4575b4', type='b', pch=2)
par(new=T)
plot(b4_profile,y, xlim=c(0,1), lwd=2, ylim=c(-40,0),col='#abd9e9', type='b', pch=11)
par(new=T)
plot(b3_profile,y, xlim=c(0,1), lwd=2,ylim=c(-40,0), col='#DDF26B', type='b', pch=4)
par(new=T)
plot(b5_profile,y, xlim=c(0,1), lwd=2,ylim=c(-40,0), col='#e5e572', type='b', pch=17)
par(new=T)
plot(b6_profile,y, xlim=c(0,1),lwd=2,  ylim=c(-40,0),col='#fed976', type='b', pch=5)
par(new=T)
plot(b7_profile,y, xlim=c(0,1),lwd=2, ylim=c(-40,0),col='#f79220', type='b', pch=6)
par(new=T)
plot(b8_profile,y, xlim=c(0,1),lwd=2, ylim=c(-40,0), col='#f46d43', type='b', pch=7)
par(new=T)
plot(b9_profile,y, xlim=c(0,1), lwd=2,ylim=c(-40,0), col='#d73027', type='b', pch=8)
par(new=T)
plot(b10_profile,y, xlim=c(0,1),lwd=2, ylim=c(-40,0), col='#a50028', type='b', pch=9)
#legend(0,-5,col=c('#313695','#4575b4','#DDF26B','#abd9e9','#e5e572','#fed976','#f79220','#f46d43','#d73027','#a50028'),
 #      pch=c(1,2,4,11,10,5,6,7,8,9), legend=c('box1','box2','box3','box4','box5','box6','box7','box8','box9','box10'))
 
## STAZIONI BOX1
st7<-rbind(box1_A[1,1:16],box1_B[1,1:16],box1_C[1,1:16],box1_D[1,1:16],box1_E[1,1:16])
st9<-rbind(box1_A[2,1:16],box1_B[2,1:16],box1_C[2,1:16],box1_D[2,1:16],box1_E[2,1:16])
st10<-rbind(box1_A[3,1:16],box1_B[3,1:16],box1_C[3,1:16],box1_D[3,1:16],box1_E[3,1:16])
st11<-rbind(box1_A[4,1:16],box1_B[4,1:16],box1_C[4,1:16],box1_D[4,1:16],box1_E[4,1:16])
st12<-rbind(box1_A[5,1:16],box1_B[5,1:16],box1_C[5,1:16],box1_D[5,1:16],box1_E[5,1:16])
st13<-rbind(box1_A[6,1:16],box1_B[6,1:16],box1_C[6,1:16],box1_D[6,1:16],box1_E[6,1:16])
st15<-rbind(box1_A[7,1:16],box1_B[7,1:16],box1_C[7,1:16],box1_D[7,1:16],box1_E[7,1:16])
st16<-rbind(box1_A[8,1:16],box1_B[8,1:16],box1_C[8,1:16],box1_D[8,1:16],box1_E[8,1:16])
st17<-rbind(box1_A[9,1:16],box1_B[9,1:16],box1_C[9,1:16],box1_D[9,1:16],box1_E[9,1:16])
st18<-rbind(box1_A[10,1:16],box1_B[10,1:16],box1_C[10,1:16],box1_D[10,1:16],box1_E[10,1:16])
st19<-rbind(box1_A[11,1:16],box1_B[11,1:16],box1_C[11,1:16],box1_D[11,1:16],box1_E[11,1:16])
st20<-rbind(box1_A[12,1:16],box1_B[12,1:16],box1_C[12,1:16],box1_D[12,1:16],box1_E[12,1:16])
st21<-rbind(box1_A[13,1:16],box1_B[13,1:16],box1_C[13,1:16],box1_D[13,1:16],box1_E[13,1:16])
st27<-rbind(box1_A[14,1:16],box1_B[14,1:16],box1_C[14,1:16],box1_D[14,1:16],box1_E[14,1:16])
st28<-rbind(box1_A[15,1:16],box1_B[15,1:16],box1_C[15,1:16],box1_D[15,1:16],box1_E[15,1:16])
st29<-rbind(box1_A[16,1:16],box1_B[16,1:16],box1_C[16,1:16],box1_D[16,1:16],box1_E[16,1:16])
st30<-rbind(box1_A[17,1:16],box1_B[17,1:16],box1_C[17,1:16],box1_D[17,1:16],box1_E[17,1:16])
st31<-rbind(box1_A[18,1:16],box1_B[18,1:16],box1_C[18,1:16],box1_D[18,1:16],box1_E[18,1:16])
st84<-rbind(box1_A[19,1:16],box1_B[19,1:16],box1_C[19,1:16],box1_D[19,1:16],box1_E[19,1:16])

## STAZIONI box2
st1<-rbind(box2_A[1,1:16],box2_B[1,1:16],box2_C[1,1:16],box2_D[1,1:16],box2_E[1,1:16])
st2<-rbind(box2_A[2,1:16],box2_B[2,1:16],box2_C[2,1:16],box2_D[2,1:16],box2_E[2,1:16])
st3<-rbind(box2_A[3,1:16],box2_B[3,1:16],box2_C[3,1:16],box2_D[3,1:16],box2_E[3,1:16])
st4<-rbind(box2_A[4,1:16],box2_B[4,1:16],box2_C[4,1:16],box2_D[4,1:16],box2_E[4,1:16])
st5<-rbind(box2_A[5,1:16],box2_B[5,1:16],box2_C[5,1:16],box2_D[5,1:16],box2_E[5,1:16])
st6<-rbind(box2_A[6,1:16],box2_B[6,1:16],box2_C[6,1:16],box2_D[6,1:16],box2_E[6,1:16])
st8<-rbind(box2_A[7,1:16],box2_B[7,1:16],box2_C[7,1:16],box2_D[7,1:16],box2_E[7,1:16])
st22<-rbind(box2_A[8,1:16],box2_B[8,1:16],box2_C[8,1:16],box2_D[8,1:16],box2_E[8,1:16])
st23<-rbind(box2_A[9,1:16],box2_B[9,1:16],box2_C[9,1:16],box2_D[9,1:16],box2_E[9,1:16])
st24<-rbind(box2_A[10,1:16],box2_B[10,1:16],box2_C[10,1:16],box2_D[10,1:16],box2_E[10,1:16])
st25<-rbind(box2_A[11,1:16],box2_B[11,1:16],box2_C[11,1:16],box2_D[11,1:16],box2_E[11,1:16])
st26<-rbind(box2_A[12,1:16],box2_B[12,1:16],box2_C[12,1:16],box2_D[12,1:16],box2_E[12,1:16])
st32<-rbind(box2_A[13,1:16],box2_B[13,1:16],box2_C[13,1:16],box2_D[13,1:16],box2_E[13,1:16])
st33<-rbind(box2_A[14,1:16],box2_B[14,1:16],box2_C[14,1:16],box2_D[14,1:16],box2_E[14,1:16])
st34<-rbind(box2_A[15,1:16],box2_B[15,1:16],box2_C[15,1:16],box2_D[15,1:16],box2_E[15,1:16])
st35<-rbind(box2_A[16,1:16],box2_B[16,1:16],box2_C[16,1:16],box2_D[16,1:16],box2_E[16,1:16])
st36<-rbind(box2_A[17,1:16],box2_B[17,1:16],box2_C[17,1:16],box2_D[17,1:16],box2_E[17,1:16])
st37<-rbind(box2_A[18,1:16],box2_B[18,1:16],box2_C[18,1:16],box2_D[18,1:16],box2_E[18,1:16])
st38<-rbind(box2_A[19,1:16],box2_B[19,1:16],box2_C[19,1:16],box2_D[19,1:16],box2_E[19,1:16])
st39<-rbind(box2_A[20,1:16],box2_B[20,1:16],box2_C[20,1:16],box2_D[20,1:16],box2_E[20,1:16])
st40<-rbind(box2_A[21,1:16],box2_B[21,1:16],box2_C[21,1:16],box2_D[21,1:16],box2_E[21,1:16])
st41<-rbind(box2_A[22,1:16],box2_B[22,1:16],box2_C[22,1:16],box2_D[22,1:16],box2_E[22,1:16])
st42<-rbind(box2_A[23,1:16],box2_B[23,1:16],box2_C[23,1:16],box2_D[23,1:16],box2_E[23,1:16])
st43<-rbind(box2_A[24,1:16],box2_B[24,1:16],box2_C[24,1:16],box2_D[24,1:16],box2_E[24,1:16])
