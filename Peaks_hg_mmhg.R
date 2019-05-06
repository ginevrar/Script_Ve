
H_resus<-c(rdate[81], rdate[104],  rdate[104],rdate[81])
yy<-c(0, 0, 1200, 1200)
yy1<-c(0, 0, 1214, 1214)
yy11<-c(0, 0, 1229, 1229)
yy2<-c(0, 0, 2000, 2000)
yy3<-c(0, 0, 1260, 1260)

polygon(x = c, # X-Coordinates of polygon (basso sx, basso dx, alto dx, alto sx)
          y = c(0, 0, 1200, 1200),                             # Y-Coordinates of polygon
          col = "#1b98e0") 
Eutrop<-c(rdate[81], rdate[92],  rdate[92],rdate[81])
  

png('Peaks_sediment_Hg_mehg8.png',
    width = 25, height = 14,res=600,     # width = 32, height = 18,res=400,
    units = "cm")
par(mfrow=c(2,5),mar=c(3,3.2,1.5,1.5), cex=0.7,
    oma=c(0,3,3,1), bty='n', mgp=c(2,.8,0))

plot(rdate[45:132],hg$sn1[45:132],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box1',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
polygon(H_resus,yy1, col='#68676755',border = NA)
polygon(Eutrop,yy1, col='#3a871f88',border = NA)
abline(v=rdate[103], lty=2)
text(rdate[106],1200,'2001',col=1)
a<-seq(0,max(hg$sn1[45:132]), by=300)
axis(4,at=a, cex.axis=1)
  par(new=T)
plot(rdate[45:132],mehg$sn1[45:132],
     type='l', col='#e60073',ylim=c(0,2), ylab=' ',
     lwd=2,main='Box1',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[92],col='#e60073', lty=2)
text(rdate[78],2,'1990',col='#e60073')

plot(rdate[45:132],hg$sn2[45:132],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box2',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[102], lty=2)
text(rdate[105],1200,'2001',col=1)
polygon(H_resus,yy11, col='#68676755',border = NA)
polygon(Eutrop,yy11, col='#3a871f88',border = NA)
a<-seq(0,max(hg$sn2[45:132]), by=300)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[45:132],mehg$sn2[45:132],
     type='l', col='#e60073',ylim=c(0,2), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[88],col='#e60073', lty=2)
text(rdate[77],2,'1986',col='#e60073')

yy22<-c(0,0,1934.57,1934.57)
plot(rdate[45:132],hg$sn4[45:132],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box4',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[80],lty=2)
text(rdate[85],1788,'1978',col=1)
polygon(H_resus,yy22, col='#68676755',border = NA)
polygon(Eutrop,yy22, col='#3a871f88',border = NA)
a<-seq(0,2000, by=500)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[45:132],mehg$sn4[45:132],
     type='l', col='#e60073',ylim=c(0,4), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
lines(xxx,yyy,col='#e60073', lty=2)
abline(v=rdate[73],h=3.3,col='#e60073', lty=2)
text(rdate[63],3.8,'1971',col='#e60073')

xxx<-rep(rdate[73],12)
yyy<-rep(3.3,12)


plot(rdate[45:132],hg$sn3[45:132],
     type='l', col=1, ylab=' ',
     lwd=2,main=' ',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[79],lty=2)
text(rdate[82],2,'1977',col=1)
abline(v=rdate[95],lty=2)
text(rdate[98],1200,'1993',col=1)
polygon(H_resus,yy3, col='#68676755',border = NA)
polygon(Eutrop,yy3, col='#3a871f88',border = NA)
a<-seq(0,max(hg$sn3[45:132]), by=300)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[45:132],mehg$sn3[45:132],
     type='l', col='#e60073',ylim=c(0,2), ylab=' ',
     lwd=2,main='Box3',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[77],col='#e60073', lty=2)
text(rdate[73],2,'1975',col='#e60073')


plot(rdate[45:132],hg$sn5[45:132],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box51',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[81],lty=2)
text(rdate[88],1700,'1979',col=1)
abline(v=rdate[95],lty=2)
text(rdate[98],2,'1993',col=1)
polygon(H_resus,yy2, col='#68676755',border = NA)
polygon(Eutrop,yy2, col='#3a871f88',border = NA)
a<-seq(0,1800, by=600)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[45:132],mehg$sn5[45:132],
     type='l', col='#e60073',ylim=c(0,3), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[81],col='#e60073', lty=2)
text(rdate[69],2,'1979',col='#e60073')


yy4<-c(0, 0, 5000, 5000)
plot(rdate[45:132],hg$sc6[45:132],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box6',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[81],lty=2)
text(rdate[70],4700,'1979',col=1)
polygon(H_resus,yy4, col='#68676755',border = NA)
polygon(Eutrop,yy4, col='#3a871f88',border = NA)
a<-seq(0,5000, by=600)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[45:132],mehg$sc6[45:132],
     type='l', col='#e60073',ylim=c(0,6), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[85],col='#e60073', lty=2)
text(rdate[93],5.5,'1983',col='#e60073')

yy5<-c(0, 0, 500, 500)
plot(rdate[45:132],hg$sc7[45:132],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box7',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[97],lty=2)
text(rdate[104],490,'1995',col=1)
polygon(H_resus,yy1, col='#68676755',border = NA)
polygon(Eutrop,yy1, col='#3a871f88',border = NA)
a<-seq(0,500, by=250)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[45:132],mehg$sc7[45:132],
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,ylim=c(0,2),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[93],col='#e60073', lty=2)
text(rdate[88],1.5,'1991',col='#e60073')


yy6<-c(0, 0, 650, 650)
plot(rdate[45:132],hg$ss8[45:132],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box8',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[97],lty=2)
text(rdate[100],490,'1995',col=1)
abline(v=rdate[81],lty=2)
text(rdate[76],490,'1979',col=1)
polygon(H_resus,yy6, col='#68676733',border = NA)
polygon(Eutrop,yy6, col='#3a871f33',border = NA)
a<-seq(0,700, by=300)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[45:132],mehg$ss8[45:132],
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,ylim=c(0,2),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[85],col='#e60073', lty=2)
text(rdate[87],.5,'1983',col='#e60073')


yy6<-c(0, 0, 650, 650)
plot(rdate[45:132],hg$ss9[45:132],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box9',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[103],lty=2)
text(rdate[105],490,'2001',col=1)
 polygon(H_resus,yy4, col='#68676733',border = NA)
polygon(Eutrop,yy4, col='#3a871f33',border = NA)
a<-seq(0,500, by=250)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[45:132],mehg$ss9[45:132],
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[85],col='#e60073', lty=2)
text(rdate[87],5.5,'1983',col='#e60073')


yy10<-c(0, 0, 420, 420)
plot(rdate[45:132],hg$ss10[45:132],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box10',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[81],lty=2)
text(rdate[105],490,'1979',col=1)
polygon(H_resus,yy10, col='#68676733',border = NA)
polygon(Eutrop,yy10, col='#3a871f33',border = NA)
a<-seq(0,500, by=250)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[45:132],mehg$ss10[45:132],
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[81],col='#e60073', lty=2)
text(rdate[87],5.5,'1983',col='#e60073')
dev.off()
getwd()
  
