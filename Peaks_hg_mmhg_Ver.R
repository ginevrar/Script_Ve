
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
  

png('Peaks_sediment_Hg_mehg9.png',
    width = 25, height = 14,res=600,     # width = 32, height = 18,res=400,
    units = "cm")
par(mfrow=c(2,5),mar=c(3,3.2,1.5,1.5), cex=0.7,
    oma=c(0,3,3,1), bty='n', mgp=c(2,.8,0))
rdate[52]

plot(rdate[52:122],hg$sn1[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box1',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
polygon(H_resus,yy1, col='#68676755',border = NA)
polygon(Eutrop,yy1, col='#3a871f88',border = NA)
segments(rdate[102],0,rdate[102],max(hg$sn1[52:122]),lty=2, col=1, lwd=1)
segments(rdate[72],1100,rdate[72],850, col=1, lwd=1)
segments(rdate[71],940,rdate[72],850, col=1, lwd=1)
segments(rdate[72],850,rdate[73],940, col=1, lwd=1)

text(rdate[106],1000,'2001',col=1)
a<-seq(0,max(hg$sn1[52:122]), by=300)
axis(4,at=a, cex.axis=1)
  par(new=T)
plot(rdate[52:122],mehg$sn1[52:122],
     type='l', col='#e60073',ylim=c(0,2), ylab='MeHg (ng/g)',
     lwd=2,main='Box1',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
segments(rdate[92],0,rdate[92],max(mehg$sn1[52:122]),lty=2, col='#e60073', lwd=1) #abline(v=rdate[92],col='#e60073', lty=2)
text(rdate[78],1.2,'1990',col='#e60073')

plot(rdate[52:122],hg$sn2[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box2',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
segments(rdate[102],0,rdate[102],max(hg$sn1[52:122]),lty=2, col=1, lwd=1)
segments(rdate[72],1240,rdate[72],1000, col=1, lwd=2)
segments(rdate[71],1090,rdate[72],1000, col=1, lwd=2)
segments(rdate[72],1000,rdate[73],1090, col=1, lwd=2)
text(rdate[105],1000,'2001',col=1)
polygon(H_resus,yy11, col='#68676755',border = NA)
polygon(Eutrop,yy11, col='#3a871f88',border = NA)
a<-seq(0,1200,by=300)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[52:122],mehg$sn2[52:122],
     type='l', col='#e60073',ylim=c(0,2), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[88],col='#e60073', lty=2)
text(rdate[78],0.9,'1986',col='#e60073')
mtext('Hg (ng/g)', side=4, line=1.2, las=3)
mte
yy22<-c(0,0,1934.57,1934.57)
plot(rdate[52:122],hg$sn4[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box4',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
polygon(H_resus,yy22, col='#68676755',border = NA)
polygon(Eutrop,yy22, col='#3a871f88',border = NA)
segments(rdate[80],0,rdate[80],max(hg$sn4[52:122]),lty=2, col=1, lwd=1)
segments(rdate[72],1960,rdate[72],1700, col=1, lwd=2)
segments(rdate[71],1790,rdate[72],1700, col=1, lwd=2)
segments(rdate[72],1700,rdate[73],1790, col=1, lwd=2)
text(rdate[89],1788,'1978',col=1)
a<-seq(0,2000, by=500)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[52:122],mehg$sn4[52:122],
     type='l', col='#e60073',ylim=c(0,4), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
text(rdate[63],3,'1971',col='#e60073')
segments(rdate[73],0,rdate[73],max(mehg$sn4[52:122]),lty=2, lwd=1,col='#e60073')



plot(rdate[52:122],hg$sn3[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main=' ',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
polygon(H_resus,yy3, col='#68676755',border = NA)
polygon(Eutrop,yy3, col='#3a871f88',border = NA)
segments(rdate[79],0,rdate[79],max(hg$sn3[52:122]),lty=2, lwd=1,col=1)
segments(rdate[95],0,rdate[95],1142,lty=2, lwd=1,col=1)
text(rdate[82],1260,'1977',col=1)
text(rdate[98],1200,'1993',col=1)
a<-seq(0,1200, by=300)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[52:122],mehg$sn3[52:122],
     type='l', col='#e60073',ylim=c(0,2), ylab=' ',
     lwd=2,main='Box3',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)

segments(rdate[77],0,rdate[77],max(mehg$sn3[52:122]),lty=2, lwd=1,col='#e60073')
text(rdate[73],1,'1975',col='#e60073')
segments(rdate[72],2,rdate[72],1.8, col=1, lwd=2)
segments(rdate[71],1.9,rdate[72],1.8, col=1, lwd=2)
segments(rdate[72],1.8,rdate[73],1.9, col=1, lwd=2)


plot(rdate[52:122],hg$sn5[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box5',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
polygon(H_resus,yy2, col='#68676755',border = NA)
polygon(Eutrop,yy2, col='#3a871f88',border = NA)
segments(rdate[81],0,rdate[81],1559.812,lty=2, lwd=1,col=1)
segments(rdate[95],0,rdate[95],max(hg$sn5[52:122]),lty=2, lwd=1,col=1)
text(rdate[89],1700,'1979',col=1)
text(rdate[98],1300,'1993',col=1)
segments(rdate[72],1660,rdate[72],1410, col=1, lwd=2)
segments(rdate[71],1500,rdate[72],1410, col=1, lwd=2)
segments(rdate[72],1410,rdate[73],1500, col=1, lwd=2)

a<-seq(0,1800, by=300)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[52:122],mehg$sn5[52:122],
     type='l', col='#e60073',ylim=c(0,3), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[81],col='#e60073', lty=2)
text(rdate[77],1.5,'1979',col='#e60073')
segments(rdate[81],0,rdate[81],1559.812,lty=2, lwd=1,col='#e60073')

yy4<-c(0, 0, 5000, 5000)
plot(rdate[52:122],hg$sc6[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box6',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
polygon(H_resus,yy4, col='#68676755',border = NA)
polygon(Eutrop,yy4, col='#3a871f88',border = NA)
segments(rdate[81],0,rdate[81],max(hg$sc6[52:122]),lty=2, lwd=1,col=1)
segments(rdate[72],3940,rdate[72],3490, col=1, lwd=2)
segments(rdate[71],3530,rdate[72],3490, col=1, lwd=2)
segments(rdate[72],3490,rdate[73],3530, col=1, lwd=2)

text(rdate[68],4900,'1979',col=1)
a<-seq(0,5000, by=500)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[52:122],mehg$sc6[52:122],
     type='l', col='#e60073',ylim=c(0,6), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
segments(rdate[85],0,rdate[85],max(mehg$sc6[52:122]),lty=2, lwd=1,col='#e60073')
text(rdate[98],4.5,'1983',col='#e60073')

yy5<-c(0, 0, 500, 500)
plot(rdate[52:122],hg$sc7[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box7',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
#abline(v=rdate[97],lty=2)
text(rdate[104],490,'1995',col=1)
 polygon(H_resus,yy6, col='#68676755',border = NA)
polygon(Eutrop,yy6, col='#3a871f55',border = NA)
a<-seq(0,500, by=250)
axis(4,at=a, cex.axis=1)
segments(rdate[97],0,rdate[97],max(hg$sc7[52:122]),lty=2, lwd=1,col=1)
segments(rdate[72],490,rdate[72],440, col=1, lwd=2)
segments(rdate[71],460,rdate[72],440, col=1, lwd=2)
segments(rdate[72],440,rdate[73],460, col=1, lwd=2)
par(new=T)
plot(rdate[52:122],mehg$sc7[52:122],
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,ylim=c(0,2),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
text(rdate[88],.5,'1991',col='#e60073')
segments(rdate[93],0,rdate[93],max(mehg$sc7[52:122]),lty=2, lwd=1,col='#e60073')


yy6<-c(0, 0, 650, 650)
plot(rdate[52:122],hg$ss8[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box8',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
polygon(H_resus,yy6, col='#68676733',border = NA)
polygon(Eutrop,yy6, col='#3a871f33',border = NA)
#abline(v=rdate[97],lty=2)
#abline(v=rdate[82],lty=2)
segments(rdate[97],0,rdate[97],max(hg$ss8[52:122]),lty=2, lwd=1,col=1)
segments(rdate[82],0,rdate[82],max(hg$ss8[52:122]),lty=2, lwd=1,col=1)
segments(rdate[72],610,rdate[72],540, col=1, lwd=2)
segments(rdate[71],560,rdate[72],540, col=1, lwd=2)
segments(rdate[72],540,rdate[73],560, col=1, lwd=2)
text(rdate[102],490,'1995',col=1)
 text(rdate[78],490,'1980',col=1)
a<-seq(0,600, by=200)
axis(4,at=a, cex.axis=1,lab=ll)
par(new=T)
plot(rdate[52:122],mehg$ss8[52:122],
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,ylim=c(0,2),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
abline(v=rdate[85],col='', lty=2)
segments(rdate[82],0,rdate[82],max(mehg$ss8[52:122]),
         lty=2, lwd=1,col='#e60073')

text(rdate[83],.5,'1983',col='#e60073')


yy6<-c(0, 0, 650, 650)
plot(rdate[52:122],hg$ss9[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box9',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
text(rdate[109],490,'2001',col=1)
 polygon(H_resus,yy4, col='#68676733',border = NA)
polygon(Eutrop,yy4, col='#3a871f33',border = NA)
segments(rdate[103],0,rdate[103],max(hg$ss9[52:122]),lty=2, lwd=1,col=1)
segments(rdate[72],490,rdate[72],440, col=1, lwd=2)
segments(rdate[71],460,rdate[72],440, col=1, lwd=2)
segments(rdate[72],440,rdate[73],460, col=1, lwd=2)

a<-seq(0,500, by=250)
axis(4,at=a, cex.axis=1)
par(new=T)
plot(rdate[52:122],mehg$ss9[52:122],
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
segments(rdate[90],0,rdate[90],max(mehg$ss9[52:122]),
         lty=2, lwd=1,col='#e60073')
text(rdate[87],0.5,'1988',col='#e60073')


yy10<-c(0, 0, 420, 420)
plot(rdate[52:122],hg$ss10[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box10',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
polygon(H_resus,yy10, col='#68676733',border = NA)
polygon(Eutrop,yy10, col='#3a871f33',border = NA)
segments(rdate[81],0,rdate[81],max(hg$ss10[52:122]),lty=2, lwd=1,col=1)
segments(rdate[72],400,rdate[72],350, col=1, lwd=2)
segments(rdate[71],360,rdate[72],350, col=1, lwd=2)
segments(rdate[72],350,rdate[73],360, col=1, lwd=2)
text(rdate[85],300,'1979',col=1)
a<-seq(0,400, by=200)
axis(4,at=a, cex.axis=1)
par(new=T)

plot(rdate[52:122],mehg$ss10[52:122],
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=1)
segments(rdate[81],0,rdate[81],max(mehg$ss10[52:122]),
         lty=2, lwd=1,col='#e60073')
text(rdate[87],.5,'1983',col='#e60073')
dev.off()
getwd()
  
