## sampling dati = 2008
box1_A_hg<-filter(box1,sed_layer=='A'); box1_B_hg<-filter(box1,sed_layer=='B');box1_C_hg<-filter(box1,sed_layer=='C');box1_D_hg<-filter(box1,sed_layer=='D');box1_E<-filter(box1,sed_layer=='E')
box2_A_hg<-filter(box2,sed_layer=='A'); box2_B_hg<-filter(box2,sed_layer=='B');box2_C_hg<-filter(box2,sed_layer=='C');box2_D_hg<-filter(box2,sed_layer=='D');box2_E<-filter(box2,sed_layer=='E')
box3_A_hg<-filter(box3,sed_layer=='A'); box3_B_hg<-filter(box3,sed_layer=='B');box3_C_hg<-filter(box3,sed_layer=='C');box3_D_hg<-filter(box3,sed_layer=='D');box3_E<-filter(box3,sed_layer=='E')
box4_A_hg<-filter(box4,sed_layer=='A'); box4_B_hg<-filter(box4,sed_layer=='B');box4_C_hg<-filter(box4,sed_layer=='C');box4_D_hg<-filter(box4,sed_layer=='D');box4_E<-filter(box4,sed_layer=='E')
box5_A_hg<-filter(box5,sed_layer=='A'); box5_B_hg<-filter(box5,sed_layer=='B');box5_C_hg<-filter(box5,sed_layer=='C');box5_D_hg<-filter(box5,sed_layer=='D');box5_E<-filter(box5,sed_layer=='E')
box6_A_hg<-filter(box6,sed_layer=='A'); box6_B_hg<-filter(box6,sed_layer=='B');box6_C_hg<-filter(box6,sed_layer=='C');box6_D_hg<-filter(box6,sed_layer=='D');box6_E<-filter(box6,sed_layer=='E')
box7_A_hg<-filter(box7,sed_layer=='A'); box7_B_hg<-filter(box7,sed_layer=='B');box7_C_hg<-filter(box7,sed_layer=='C');box7_D_hg<-filter(box7,sed_layer=='D');box7_E<-filter(box7,sed_layer=='E')
box8_A_hg<-filter(box8,sed_layer=='A'); box8_B_hg<-filter(box8,sed_layer=='B');box8_C_hg<-filter(box8,sed_layer=='C');box8_D_hg<-filter(box8,sed_layer=='D');box8_E<-filter(box8,sed_layer=='E')
box9_A_hg<-filter(box9,sed_layer=='A'); box9_B_hg<-filter(box9,sed_layer=='B');box9_C_hg<-filter(box9,sed_layer=='C');box9_D_hg<-filter(box9,sed_layer=='D');box9_E<-filter(box9,sed_layer=='E')
box10_A_hg<-filter(box10,sed_layer=='A'); box10_B_hg<-filter(box10,sed_layer=='B');box10_C_hg<-filter(box10,sed_layer=='C');box10_D_hg<-filter(box10,sed_layer=='D');box10_E<-filter(box10,sed_layer=='E')

box1_A_hg<-select(box1_A_hg,Hg)*1000; box1_B_hg<-select(box1_B_hg,Hg)*1000;box1_C_hg<-select(box1_C_hg,Hg)*1000;box1_D_hg<-select(box1_D_hg,Hg)*1000;box1_E_hg<-select(box1_E,Hg)*1000
box2_A_hg<-select(box2_A_hg,Hg)*1000; box2_B_hg<-select(box2_B_hg,Hg)*1000;box2_C_hg<-select(box2_C_hg,Hg)*1000;box2_D_hg<-select(box2_D_hg,Hg)*1000;box2_E_hg<-select(box2_E,Hg)*1000
box3_A_hg<-select(box3_A_hg,Hg)*1000; box3_B_hg<-select(box3_B_hg,Hg)*1000;   box3_C_hg<-select(box3_C_hg,Hg)*1000;box3_D_hg<-select(box3_D_hg,Hg)*1000;box3_E_hg<-select(box3_E,Hg)*1000
box4_A_hg<-select(box4_A_hg,Hg)*1000; box4_B_hg<-select(box4_B_hg,Hg)*1000;   box4_C_hg<-select(box4_C_hg,Hg)*1000;box4_D_hg<-select(box4_D_hg,Hg)*1000;box4_E_hg<-select(box4_E,Hg)*1000
box5_A_hg<-select(box5_A_hg,Hg)*1000; box5_B_hg<-select(box5_B_hg,Hg)*1000;   box5_C_hg<-select(box5_C_hg,Hg)*1000;box5_D_hg<-select(box5_D_hg,Hg)*1000;box5_E_hg<-select(box5_E,Hg)*1000
box6_A_hg<-select(box6_A_hg,Hg)*1000; box6_B_hg<-select(box6_B_hg,Hg)*1000;   box6_C_hg<-select(box6_C_hg,Hg)*1000;box6_D_hg<-select(box6_D_hg,Hg)*1000;box6_E_hg<-select(box6_E,Hg)*1000
box7_A_hg<-select(box7_A_hg,Hg)*1000; box7_B_hg<-select(box7_B_hg,Hg)*1000;   box7_C_hg<-select(box7_C_hg,Hg)*1000;box7_D_hg<-select(box7_D_hg,Hg)*1000;box7_E_hg<-select(box7_E,Hg)*1000
box8_A_hg<-select(box8_A_hg,Hg)*1000; box8_B_hg<-select(box8_B_hg,Hg)*1000;box8_C_hg<-select(box8_C_hg,Hg)*1000;box8_D_hg<-select(box8_D_hg,Hg)*1000;box8_E_hg<-select(box8_E,Hg)*1000
box9_A_hg<-select(box9_A_hg,Hg)*1000; box9_B_hg<-select(box9_B_hg,Hg)*1000;box9_C_hg<-select(box9_C_hg,Hg)*1000;box9_D_hg<-select(box9_D_hg,Hg)*1000;box9_E_hg<-select(box9_E,Hg)*1000
box10_A_hg<-select(box10_A_hg,Hg)*1000; box10_B_hg<-select(box10_B_hg,Hg)*1000;box10_C_hg<-select(box10_C_hg,Hg)*1000;box10_D_hg<-select(box10_D_hg,Hg)*1000;box10_E_hg<-select(box10_E,Hg)*1000
#
#
setwd('C:/Users/Ginevra/Dropbox/new_sed_layers')
setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice/new_in9')

1900-2101;2425/12
12*201;12*113# plot anno 2013 - 2015 vari layer sed
12*110;2427-960

time.steps <- hg[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
tail(rdate)

#box 8lty=1, col='#f46d43',lwd=2, main='Box8',
#box 9 type='l',col='#d73027',lwd=1,main=' ',
#box 10 ype='l',col='#a50028',lwd=1,main=' ',
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
#
1900-2101
2425/12
12*201;12*116
2427-960
#
# plot anno 2013 - 2015 vari layer sed
hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'la1','la2','la3','la4','la5','la6','la7','la8','la9','la10',
             'lb1','lb2','lb3','lb4','lb5','lb6','lb7','lb8','lb9','lb10',
             'lc1','lc2','lc3','lc4','lc5','lc6','lc7','lc8','lc9','lc10',
             'ld1','ld2','ld3','ld4','ld5','ld6','ld7','ld8','ld9','ld10')

b<-(hg[1284:1320,2])
(a-b)/a*100
time.steps <- hg[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
tail(rdate)
#png('Hg_sediment_zonta2.png',width = 550, height = 530*1.2,  #provare mult*1.5 dimensioni plot units = "px")

png('Hg_sediment_zontaaaaaaa_newin9.png',width = 21, height = 29,
    units = "cm", res=400)
par(mfrow=c(10,4),mar=c(1,1,1,1),
    oma=c(2.3,5.3,1.5,0), bty='n')
#dev.new()
#par(mfrow=c(10,4),mar=c(1,1,1,1), oma=c(0,4,3,1), bty='n')
plot(rdate[1284:1320],hg$la1[1284:1320],ylim=c(0,2000),
     type='l', col='#313695', ylab=' ',
     lwd=2,lty=1, xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box1_A_hg,ylim=c(0,2000),col='#31369577', xaxt='n', boxwex=0.2,yaxt='n')
mtext(text='box1',side=2, line=2.7, las=2)
mtext('layer A',side=3, lty=.6)
plot(rdate[1284:1320],hg$lb1[1284:1320],ylim=c(0,2000),
     type='l', col='#313695', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box1_B_hg,ylim=c(0,2000), col='#31369577',xaxt='n', boxwex=0.2,yaxt='n')
mtext('layer B',side=3, lty=.6)
plot(rdate[1284:1320],hg$lc1[1284:1320],ylim=c(0,2000),
     type='l', col='#313695', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box1_C_hg,ylim=c(0,2000), col='#31369577',xaxt='n', boxwex=0.2,yaxt='n')
mtext('layer C',side=3, lty=.6)
plot(rdate[1284:1320],hg$ld1[1284:1320],ylim=c(0,2000),
     type='l', col='#313695', ylab=' ',lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box1_D_hg,ylim=c(0,2000), col='#31369577',xaxt='n', boxwex=0.2,yaxt='n')
mtext('layer D',side=3, lty=.6)
plot(rdate[1284:1320],hg$la2[1284:1320],ylim=c(0,2000),
     type='l', col='#4575b4', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box2_A_hg,ylim=c(0,2000),col='#4575b477', xaxt='n', boxwex=0.2,yaxt='n')
mtext(text='box2',side=2, line=2.7,las=2)
plot(rdate[1284:1320],hg$lb2[1284:1320],ylim=c(0,2000),
     type='l', col='#4575b4', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box2_B_hg,ylim=c(0,2000),col='#4575b477', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$lc2[1284:1320],ylim=c(0,2000),
     type='l', col='#4575b4', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box2_C_hg,ylim=c(0,2000),col='#4575b477', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$ld2[1284:1320],ylim=c(0,2000),
     type='l', col='#4575b4', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box2_D_hg,ylim=c(0,2000),col='#4575b477', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$la3[1284:1320],ylim=c(0,2000),
     type='l', col='#abd9e9', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box4_A_hg,ylim=c(0,2000),col='#abd9e977', xaxt='n', boxwex=0.2,yaxt='n')
mtext(text='box4',side=2, line=2.7, las=2)
plot(rdate[1284:1320],hg$lb4[1284:1320],ylim=c(0,2000),
     type='l', col='#abd9e9', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box4_B_hg,ylim=c(0,2000),col='#abd9e977', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$lc4[1284:1320],ylim=c(0,2000),
     type='l', col='#abd9e9', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box4_C_hg,ylim=c(0,2000), col='#abd9e977',xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$ld4[1284:1320],ylim=c(0,2000),
     type='l', col='#abd9e9', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box4_D_hg,ylim=c(0,2000),col='#abd9e977', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$la3[1284:1320],ylim=c(0,2000),
     type='l', col='#DDF26B', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box3_A_hg,ylim=c(0,2000),col='#DDF26B77', xaxt='n', boxwex=0.2,yaxt='n')
mtext(text='box3',side=2, line=2.7, las=2)
plot(rdate[1284:1320],hg$lb3[1284:1320],ylim=c(0,2000),
     type='l', col='#DDF26B', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box3_B_hg,ylim=c(0,2000),col='#DDF26B77', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$lc3[1284:1320],ylim=c(0,2000),
     type='l', col='#DDF26B', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box3_C_hg,ylim=c(0,2000),col='#DDF26B77', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$ld3[1284:1320],ylim=c(0,2000),
     type='l', col='#DDF26B', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box3_D_hg,ylim=c(0,2000), col='#DDF26B77',xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$la5[1284:1320],ylim=c(0,2000),
     type='l', col='#e5e572', ylab=' ',lwd=2, lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box5_A_hg,ylim=c(0,2000), col='#e5e57277',xaxt='n', boxwex=0.2,yaxt='n')
mtext(text='box5',side=2, line=2.7, las=2)
plot(rdate[1284:1320],hg$lb5[1284:1320],ylim=c(0,2000),
     type='l', col='#e5e572', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box5_B_hg,ylim=c(0,2000),col='#e5e57277', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$lc5[1284:1320],ylim=c(0,2000),
     type='l', col='#e5e572', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box5_C_hg,ylim=c(0,2000),col='#e5e57277', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$ld5[1284:1320],ylim=c(0,2000),
     type='l', col='#e5e572', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box5_D_hg,ylim=c(0,2000),col='#e5e57277', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$la6[1284:1320],ylim=c(0,2000),
     type='l', col='#fed976', ylab=' ',
     lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box6_A_hg,ylim=c(0,2000),col='#fed97677', xaxt='n', boxwex=0.2,yaxt='n')
mtext(text='box6',side=2, line=2.7, las=2)
plot(rdate[1284:1320],hg$lb6[1284:1320],ylim=c(0,2000),
     type='l', col='#fed976', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box6_B_hg,ylim=c(0,2000),col='#fed97677', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$lc6[1284:1320],ylim=c(0,2000),
     type='l', col='#fed976', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box6_C_hg,ylim=c(0,2000),col='#fed97677', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$ld6[1284:1320],ylim=c(0,2000),
     type='l', col='#fed976', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box6_D_hg,ylim=c(0,2000),col='#fed97677', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$la7[1284:1320],ylim=c(0,2000),
     type='l', col='#f79220', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box7_A_hg,ylim=c(0,2000),col='#f7922077', xaxt='n', boxwex=0.2,yaxt='n')
mtext(text='box7',side=2, line=2.7, las=2)
plot(rdate[1284:1320],hg$lb7[1284:1320],ylim=c(0,2000),
     type='l', col='#f79220', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box7_B_hg,ylim=c(0,2000),col='#f7922077', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$lc7[1284:1320],ylim=c(0,2000),
     type='l', col='#f79220', ylab=' ',lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box7_C_hg,ylim=c(0,2000),col='#f7922077', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$ld7[1284:1320],ylim=c(0,2000),
     type='l', col='#f79220', ylab=' ',
     lwd=2,lty=1, xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box7_D_hg,ylim=c(0,2000),col='#f7922077', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$la8[1284:1320],ylim=c(0,2000),
     type='l', col='#f46d43', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box8_A_hg,ylim=c(0,2000),col='#f46d4377', xaxt='n', boxwex=0.2,yaxt='n')
mtext(text='box8',side=2, line=2.7, las=2)
plot(rdate[1284:1320],hg$lb8[1284:1320],ylim=c(0,2000),
     type='l', col='#f46d43', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box8_B_hg,ylim=c(0,2000),col='#f46d4377', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$lc8[1284:1320],ylim=c(0,2000),
     type='l', col='#f46d43', ylab=' ',lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box8_C_hg,ylim=c(0,2000),col='#f46d4377', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$ld8[1284:1320],ylim=c(0,2000),
     type='l', col='#f46d43', ylab=' ',
     lwd=2,lty=1, xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box8_D_hg,ylim=c(0,2000),col='#f46d4377', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$la9[1284:1320],ylim=c(0,2000),
     type='l', col='#d73027', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box9_A_hg,ylim=c(0,2000),col='#d7302777', xaxt='n', boxwex=0.2,yaxt='n')
mtext(text='box9',side=2, line=2.7, las=2)
plot(rdate[1284:1320],hg$lb9[1284:1320],ylim=c(0,2000),
     type='l', col='#d73027', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box9_B_hg,ylim=c(0,2000),col='#d7302777', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$lc9[1284:1320],ylim=c(0,2000),
     type='l', col='#d73027', ylab=' ',lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box9_C_hg,ylim=c(0,2000),col='#d7302777', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$ld9[1284:1320],ylim=c(0,2000),
     type='l', col='#d73027', ylab=' ',
     lwd=2,lty=1, xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box9_D_hg,ylim=c(0,2000),col='#d7302777', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$la10[1284:1320],ylim=c(0,2000),
     type='l', col='#a50028', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box10_A_hg,ylim=c(0,2000),col='#a5002877', xaxt='n', boxwex=0.2,yaxt='n')
mtext(text='box10',side=2, line=2.7, las=2)
plot(rdate[1284:1320],hg$lb10[1284:1320],ylim=c(0,2000),
     type='l', col='#a50028', ylab=' ', lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box10_B_hg,ylim=c(0,2000),col='#a5002877', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$lc10[1284:1320],ylim=c(0,2000),
     type='l', col='#a50028', ylab=' ',lwd=2,lty=1,
     xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box10_C_hg,ylim=c(0,2000),col='#a5002877', xaxt='n', boxwex=0.2,yaxt='n')
plot(rdate[1284:1320],hg$ld10[1284:1320],ylim=c(0,2000),
     type='l', col='#a50028', ylab=' ',
     lwd=2,lty=1, xlab= '', cex.lab=1.5, cex.main=1.5,cex.axis=1.5)
par(new=T)
boxplot(box10_D_hg,ylim=c(0,2000),col='#a5002877', xaxt='n', boxwex=0.2,yaxt='n')
dev.off()
#box 8lty=1, col='#f46d43',lwd=2, main='Box8',
#box 9 type='l',col='#d73027',lwd=1,main=' ',
#box 10 ype='l',col='#a50028',lwd=1,main=' ',
