setwd('G:/Il mio Drive/MERCURIO/Venezia/')
setwd('C:/Users/gi/Downloads/');dati<-read.table('QSEV_data_box.txt', header=T); str(dati)

library(dplyr)
box1<-filter(dati,box==1);box2<-filter(dati,box ==2);box3<-filter(dati,box ==3);box4<-filter(dati,box ==4);box5<-filter(dati,box ==5);box6<-filter(dati,box ==6);box7<-filter(dati,box ==7);box8<-filter(dati,box ==8);box9<-filter(dati,box ==9);box10<-filter(dati,box==10)

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

box1_A_OC<-select(box1_A,OC) ; box1_B_OC<-select(box1_B,OC);   box1_C_OC<-select(box1_C,OC) ;box1_D_OC<-select(box1_D,OC) ;box1_E_OC<-select(box1_E,OC) 
box2_A_OC<-select(box2_A,OC) ; box2_B_OC<-select(box2_B,OC);   box2_C_OC<-select(box2_C,OC) ;box2_D_OC<-select(box2_D,OC) ;box2_E_OC<-select(box2_E,OC) 
box3_A_OC<-select(box3_A,OC) ; box3_B_OC<-select(box3_B,OC);   box3_C_OC<-select(box3_C,OC) ;box3_D_OC<-select(box3_D,OC) ;box3_E_OC<-select(box3_E,OC) 
box4_A_OC<-select(box4_A,OC) ; box4_B_OC<-select(box4_B,OC);   box4_C_OC<-select(box4_C,OC) ;box4_D_OC<-select(box4_D,OC) ;box4_E_OC<-select(box4_E,OC) 
box5_A_OC<-select(box5_A,OC) ; box5_B_OC<-select(box5_B,OC);   box5_C_OC<-select(box5_C,OC) ;box5_D_OC<-select(box5_D,OC) ;box5_E_OC<-select(box5_E,OC) 
box6_A_OC<-select(box6_A,OC) ; box6_B_OC<-select(box6_B,OC);   box6_C_OC<-select(box6_C,OC) ;box6_D_OC<-select(box6_D,OC) ;box6_E_OC<-select(box6_E,OC) 
box7_A_OC<-select(box7_A,OC) ; box7_B_OC<-select(box7_B,OC);   box7_C_OC<-select(box7_C,OC) ;box7_D_OC<-select(box7_D,OC) ;box7_E_OC<-select(box7_E,OC) 
box8_A_OC<-select(box8_A,OC) ; box8_B_OC<-select(box8_B,OC);   box8_C_OC<-select(box8_C,OC) ;box8_D_OC<-select(box8_D,OC) ;box8_E_OC<-select(box8_E,OC) 
box9_A_OC<-select(box9_A,OC) ; box9_B_OC<-select(box9_B,OC);   box9_C_OC<-select(box9_C,OC) ;box9_D_OC<-select(box9_D,OC) ;box9_E_OC<-select(box9_E,OC) 
box10_A_OC<-select(box10_A,OC) ; box10_B_OC<-select(box10_B,OC);box10_C_OC<-select(box10_C,OC) ;box10_D_OC<-select(box10_D,OC) ;box10_E_OC<-select(box10_E,OC) 

 
setwd('C:/Users/Acer/Dropbox/NNN61/PiuRes8')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POM_perc<-POMs/TOTs*100
OC_perc<-POM_perc/1.77

1.95/1.77

plot(OC_perc$sn1)

OC1 <-rep('NA',length(rdate));OC2 <-rep('NA',length(rdate))
OC3 <-rep('NA',length(rdate)); OC4 <-rep('NA',length(rdate))
OC5 <-rep('NA',length(rdate)); OC6 <-rep('NA',length(rdate))
OC7 <-rep('NA',length(rdate));OC8 <-rep('NA',length(rdate))
OC9 <-rep('NA',length(rdate)); OC10 <-rep('NA',length(rdate))

OC1[1306]<-mean(box1_A_OC$OC)
OC2[1306]<-mean(box2_A_OC$OC)
OC3[1306]<-mean(box3_A_OC$OC)
OC4[1306]<-mean(box4_A_OC$OC)
OC5[1306]<-mean(box5_A_OC$OC)
OC6[1306]<-mean(box6_A_OC$OC)
OC7[1306]<-mean(box7_A_OC$OC)
OC8[1306]<-mean(box8_A_OC$OC)
OC9[1306]<-mean(box9_A_OC$OC)
OC10[1306]<-mean(box10_A_OC$OC)

png('POC_perc_fin92b__oksMMM9.png',width = 30, height = 20, units = "cm", res=300)
par(mfrow=c(2,5), bty='n', cex.lab=1.3)
plot(rdate[480:1440],OC_perc$sn1[480:1440],main='Box 1',
     ylab='POC %',xlab=' ',
     col='#313695',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],OC1[480:1440],col=c('#313695'),yaxt='n',
     type='p', lwd=2, cex=2, xaxt='n',ylab=' ',xlab=' ',
     lty=2,ylim=c(0,10))
segments(rdate[1306],max(box1_A_OC),rdate[1306], min(box1_A_OC),col='#313695')

plot(rdate[480:1440],OC_perc$sn2[480:1440],col='#4575b4',
     main='Box 2',ylab='POC %',xlab='',
     type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],OC2[480:1440],col=c('#4575b4'),
     type='p', lwd=2, cex=2, xaxt='n',yaxt='n',ylab=' ',xlab=' ',
     lty=2,ylim=c(0,10))
segments(rdate[1306],max(box2_A_OC),rdate[1306], min(box2_A_OC),col='#4575b4')

plot(rdate[480:1440],OC_perc$sn4[480:1440],
     main='Box 4',ylab='POC %',xlab='',
     col='#abd9e9',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],OC4[480:1440],col=c('#abd9e9'),
     type='p', lwd=2, cex=2, xaxt='n',yaxt='n',ylab=' ',xlab=' ',
     lty=2,ylim=c(0,10))
segments(rdate[1306],max(box4_A_OC),rdate[1306], min(box4_A_OC),col='#abd9e9')

plot(rdate[480:1440],OC_perc$sn3[480:1440],
     main='Box 3',ylab='POC %',xlab='',
     col='#DDF26B',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],OC3[480:1440],col=c('#DDF26B'),
     type='p', lwd=2, cex=2, xaxt='n',yaxt='n',ylab=' ',xlab=' ',
     lty=2,ylim=c(0,10))
segments(rdate[1306],max(box3_A_OC),rdate[1306], min(box3_A_OC),col='#DDF26B')

plot(rdate[480:1440],OC_perc$sn5[480:1440],
     main='Box 5',ylab='POC %',xlab='',
     col='#e5e572',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],OC5[480:1440],col=c('#e5e572'),
     type='p', lwd=2, cex=2, ylab=' ',xlab=' ',
     lty=2,ylim=c(0,10))
segments(rdate[1306],max(box5_A_OC),rdate[1306], min(box5_A_OC),col='#e5e572')

plot(rdate[480:1440],OC_perc$sc6[480:1440],
     main='Box 6',ylab='POC %',xlab='',
     col='#fed976',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],OC6[480:1440],col=c('#fed976'),
     type='p', lwd=2, cex=2, xaxt='n',yaxt='n',ylab=' ',xlab=' ',
     lty=2,ylim=c(0,10))
segments(rdate[1306],max(box6_A_OC),rdate[1306], min(box6_A_OC),col='#fed976')

plot(rdate[480:1440],OC_perc$sc7[480:1440],
     main='Box 7',ylab='POC %',xlab='',
     col='#f79220',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],OC7[480:1440],col=c('#f79220'),
     type='p', lwd=2, cex=2, xaxt='n',yaxt='n',ylab=' ',xlab=' ',
     lty=2,ylim=c(0,10))
segments(rdate[1306],max(box7_A_OC),rdate[1306], min(box7_A_OC),col='#f79220')

plot(rdate[480:1440],OC_perc$ss8[480:1440],
     main='Box 8',ylab='POC %',xlab='',
     col='#f46d43',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],OC8[480:1440],col=c('#f46d43'),
     type='p', lwd=2, cex=2, xaxt='n',yaxt='n',ylab=' ',xlab=' ',
     lty=2,ylim=c(0,10))
segments(rdate[1306],max(box8_A_OC),rdate[1306], min(box8_A_OC),col='#f46d43')

plot(rdate[480:1440],OC_perc$ss9[480:1440],
     main='Box 9',ylab='POC %',xlab='',
     col='#d73027',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],OC9[480:1440],col=c('#d73027'),
     type='p', lwd=2, cex=2, xaxt='n',yaxt='n',ylab=' ',xlab=' ',
     lty=2,ylim=c(0,10))
segments(rdate[1306],max(box9_A_OC),rdate[1306], min(box9_A_OC),col='#d73027')

plot(rdate[480:1440],OC_perc$ss10[480:1440],
     main='Box 10',ylab='POC %',xlab='',
     col='#a50028',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],OC10[480:1440],col=c('#a50028'),
     type='p', lwd=2, cex=2, xaxt='n',yaxt='n',ylab=' ',xlab=' ',
     lty=2,ylim=c(0,10))
segments(rdate[1306],max(box10_A_OC),rdate[1306], min(box10_A_OC),col='#a50028')
dev.off()



