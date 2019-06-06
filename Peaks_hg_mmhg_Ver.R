
H_resus<-c(rdate[81], rdate[104],  rdate[104],rdate[81])
Eutrop<-c(rdate[81], rdate[92],  rdate[92],rdate[81])

yy<-c(0, 0, 1200, 1200)
yy11<-c(0, 0, 1229, 1229)
yy2<-c(0, 0, 2000, 2000)
yy3<-c(0, 0, 1260, 1260)

polygon(x = c, # X-Coordinates of polygon (basso sx, basso dx, alto dx, alto sx)
          y = c(0, 0, 1200, 1200),                             # Y-Coordinates of polygon
          col = "#1b98e0") 
  

#png('Peaks_sediment_Hg_mehg9b.png',
#    width = 25, height = 14,res=600,     # width = 32, height = 18,res=400,
#    units = "cm")
png('Peaks_sediment_Hg_mehg9bbbb.png',
    width = 25, height = 14,res=300,     # width = 32, height = 18,res=400,
    units = "cm")

#png('Peaks_sediment_Hg_mehg9c.png',
#    width = 1920, height = 1080,res=300,     # width = 32, height = 18,res=400,
#    units = "px")
par(mfrow=c(2,5),mar=c(3,3.6,1.5,1.5), cex=0.7,
    oma=c(0,1,3,1), bty='n', mgp=c(2.8,.8,0))
rdate[52]
 
yy1<-c(0, 0, 1132.712, 1132.712)
plot(rdate[52:122],hg$sn1[52:122],
     type='l', col=1, ylab='Hg (ng/g)',
     lwd=2,main='Box1',lty=1,yaxt='n',ylim=c(0,1200),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
polygon(H_resus,yy1, col='#68676755',border = NA)
polygon(Eutrop,yy1, col='#3a871f88',border = NA)
segments(rdate[104],0,rdate[104],max(hg$sn1[52:122]),lty=2, col=1, lwd=1)
segments(rdate[72],1000,rdate[72],850, col=1, lwd=2)
segments(rdate[70],920,rdate[72],850, col=1, lwd=2)
segments(rdate[72],850,rdate[74],920, col=1, lwd=2)
text(rdate[112],1000,'2002',col=1, cex=.8)
a<-seq(0,1200, by=300)
axis(2,at=a, cex.axis=0.9,las=2)
par(new=T)
plot(rdate[52:122],mehg$sn1[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,2), ylab='',
     lwd=2,main='Box1',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
segments(rdate[94],0,rdate[94],max(mehg$sn1[52:122]),lty=2, col='#e60073', lwd=1) #abline(v=rdate[92],col='#e60073', lty=2)
text(rdate[84],.81,'1992',col='#e60073', cex=.8)
a<-seq(0,2, by=1)
axis(4,at=a, cex.axis=0.9, col='#e60073',las=2)

yy12<-c(0,0,max(hg$sn2[52:122]),max(hg$sn2[52:122]))
plot(rdate[52:122],hg$sn2[52:122],yaxt='n',
     type='l', col=1, ylab=' ',ylim=c(0,1200),
     lwd=2,main='Box2',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
a<-seq(0,1200, by=300)
axis(2,at=a, cex.axis=0.9,las=2)
segments(rdate[104],0,rdate[104],max(hg$sn2[52:122]),lty=2, col=1, lwd=1)
segments(rdate[72],1000,rdate[72],850, col=1, lwd=2)
segments(rdate[70],920,rdate[72],850, col=1, lwd=2)
segments(rdate[72],850,rdate[74],920, col=1, lwd=2)
text(rdate[112],1000,'2002',col=1, cex=.8)
polygon(H_resus,yy12, col='#68676755',border = NA)
polygon(Eutrop,yy12, col='#3a871f88',border = NA)
par(new=T)
plot(rdate[52:122],mehg$sn2[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,2), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
#abline(v=rdate[88],col='#e60073', lty=2)
segments(rdate[88],0,rdate[88],max(mehg$sn2[52:122]),lty=2, col='#e60073', lwd=1)
max(mehg$sn2[52:122])
text(rdate[80],0.7,'1986',col='#e60073', cex=.8)
a<-seq(0,2,by=1)
axis(4,at=a, cex.axis=0.9, col='#e60073',las=2)

#mtext('Hg (ng/g)', side=4, line=1.2, las=3)
#mt
yy13<-c(0.0 , 0.0 ,1101, 1101)
plot(rdate[52:122],hg$sn3[52:122],
     type='l', col=1, ylab=' ',yaxt='n',
     lwd=2,main=' ',lty=1,ylim=c(0,1200),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
a<-seq(0,1200, by=300)
axis(2,at=a, cex.axis=0.9,las=2)
polygon(H_resus,yy13, col='#68676755',border = NA)
polygon(Eutrop,yy13, col='#3a871f88',border = NA)
segments(rdate[81],0,rdate[81],max(hg$sn3[52:122]),lty=2, lwd=1,col=1)
segments(rdate[97],0,rdate[97],max(hg$sn3[95:122]),lty=2, lwd=1,col=1)

segments(rdate[72],1000,rdate[72],850, col=1, lwd=2)
segments(rdate[70],920,rdate[72],850, col=1, lwd=2)
segments(rdate[72],850,rdate[74],920, col=1, lwd=2)

text(rdate[80],1150,'1979',col=1,cex=.8) 
text(rdate[96],1150,'1995',col=1,cex=.8)
par(new=T)
plot(rdate[52:122],mehg$sn3[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,2), ylab=' ',
     lwd=2,main='Box3',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
segments(rdate[80],0,rdate[80],max(mehg$sn3[52:122]),lty=2, lwd=1,col='#e60073')
text(rdate[72],.6,'1978',col='#e60073',cex=.8)
  a<-seq(0,2.00, by=1)
axis(4,at=a, cex.axis=0.9,col='#e60073',las=2)

yy22<-c(0,0,2000,2000)
plot(rdate[52:122],hg$sn4[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,2050),
     lwd=2,main='Box4',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
polygon(H_resus,yy22, col='#68676755',border = NA)
polygon(Eutrop,yy22, col='#3a871f88',border = NA)
a<-seq(0,2000, by=500)
axis(2,at=a,cex.axis=0.9,las=2)
segments(rdate[81],0,rdate[81],max(hg$sn4[52:122]),lty=2, col=1, lwd=1)
#segments(rdate[72],1960,rdate[72],1700, col=1, lwd=2)
#segments(rdate[70],1790,rdate[72],1700, col=1, lwd=2)
#segments(rdate[72],1700,rdate[74],1790, col=1, lwd=2)
text(rdate[82],2048,'1979',col=1, cex=.8)
par(new=T)
plot(rdate[52:122],mehg$sn4[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,3), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
text(rdate[63],3,'1975',col='#e60073', cex=.8)
segments(rdate[77],0,rdate[77],max(mehg$sn4[52:122]),lty=2, lwd=1,col='#e60073')
a<-seq(0,3, by=1)
axis(4,at=a, cex.axis=0.9,col='#e60073',las=2)
segments(rdate[72],2.6,rdate[72],2.3, col=1, lwd=2)
segments(rdate[70],2.4,rdate[72],2.3, col=1, lwd=2)
segments(rdate[72],2.3,rdate[74],2.4, col=1, lwd=2)

max(hg$sn5[52:122])

yy15<-c(0,0,1657,1657)
  plot(rdate[52:122],hg$sn5[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,1800),
     lwd=2,main='Box5',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
a<-seq(0,1800, by=600)
axis(2,at=a, cex.axis=0.9,col=1, las=2)
polygon(H_resus,yy15, col='#68676755',border = NA)
polygon(Eutrop,yy15, col='#3a871f88',border = NA)
segments(rdate[81],0,rdate[81],max(hg$sn5[52:92]),lty=2, lwd=1,col=1)
segments(rdate[97],0,rdate[97],max(hg$sn5[52:122]),lty=2, lwd=1,col=1)
text(rdate[72],400,'1979',col=1, cex=.8)
text(rdate[104],1700,'1995',col=1, cex=.8)
#segments(rdate[72],1660,rdate[72],1410, col=1, lwd=2)
#segments(rdate[70],1500,rdate[72],1410, col=1, lwd=2)
#segments(rdate[72],1410,rdate[74],1500, col=1, lwd=2)
par(new=T)
plot(rdate[52:122],mehg$sn5[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,2), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
segments(rdate[84],0,rdate[84],max(mehg$sn5[52:92]),col='#e60073',lty=2, lwd=1)
text(rdate[83],2,'1982',col='#e60073', cex=.8)
a<-seq(0,2, by=1)
axis(4,at=a, cex.axis=0.9,col='#e60073',las=2)
segments(rdate[72],1.6,rdate[72],1.3, col=1, lwd=2)
segments(rdate[70],1.4,rdate[72],1.3, col=1, lwd=2)
segments(rdate[72],1.3,rdate[74],1.4, col=1, lwd=2)
mtext('MeHg (ng/g)', side=4,line=1.4,col='#e60073', cex = .7, outer = F)


yy4<-c(0, 0, 4951.867, 4951.867)
plot(rdate[52:122],hg$sc6[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,5000),
     lwd=2,main='Box6',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
polygon(H_resus,yy4, col='#68676755',border = NA)
polygon(Eutrop,yy4, col='#3a871f88',border = NA)
segments(rdate[81],0,rdate[81],max(hg$sc6[52:122]),lty=2, lwd=1,col=1)
segments(rdate[72],4690,rdate[72],4190, col=1, lwd=2)
segments(rdate[70],4330,rdate[72],4190, col=1, lwd=2)
segments(rdate[72],4190,rdate[74],4330, col=1, lwd=2)
a<-seq(0,5000, by=1000)
axis(2,at=a, cex.axis=0.9,col=1, las=2)
text(rdate[76],5040,'1979',col=1, cex=.8)

par(new=T)
plot(rdate[52:122],mehg$sc6[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,5), ylab='Hg (ng/g)',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
segments(rdate[85],0,rdate[85],max(mehg$sc6[52:122]),lty=2, lwd=1,col='#e60073')
text(rdate[98],4.5,'1983',col='#e60073', cex=.8)
a<-seq(0,5, by=1)
axis(4,at=a, cex.axis=0.9,col='#e60073', las=2)

yy17<-c(0, 0, 446.3759, 446.3759)
plot(rdate[52:122],hg$sc7[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,500),
     lwd=2,main='Box7',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
#abline(v=rdate[97],lty=2)
text(rdate[104],490,'1998',col=1, cex=.8)
polygon(H_resus,yy17, col='#68676755',border = NA)
polygon(Eutrop,yy17, col='#3a871f88',border = NA)
a<-seq(0,500, by=250)
axis(2,at=a, cex.axis=0.9, las=2)
segments(rdate[100],0,rdate[100],max(hg$sc7[52:122]),lty=2, lwd=1,col=1)
segments(rdate[72],480,rdate[72],415, col=1, lwd=2)
segments(rdate[70],430,rdate[72],415, col=1, lwd=2)
segments(rdate[72],415,rdate[74],430, col=1, lwd=2)
par(new=T)
plot(rdate[52:122],mehg$sc7[52:122],yaxt='n',
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,ylim=c(0,2),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)

text(rdate[93],.5,'1994',col='#e60073', cex=.8)
segments(rdate[96],0,rdate[96],max(mehg$sc7[52:122]),lty=2, lwd=1,col='#e60073')
a<-seq(0,2.00, by=1)
axis(4,at=a, cex.axis=0.9,col='#e60073', las=2)


yy6<-c(0, 0, 655.7291, 655.7291)
plot(rdate[52:122],hg$ss8[52:122],
     type='l', col=1, ylab='',ylim=c(0,700),
     lwd=2,main='Box8',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
a<-seq(0,700, by=350)
axis(2,at=a, cex.axis=0.9,col=1, las=2)
polygon(H_resus,yy6, col='#68676755',border = NA)
polygon(Eutrop,yy6, col='#3a871f88',border = NA)
#abline(v=rdate[97],lty=2)
#abline(v=rdate[82],lty=2)
segments(rdate[97],0,rdate[97],max(hg$ss8[52:122]),lty=2, lwd=1,col=1)
segments(rdate[82],0,rdate[82],max(hg$ss8[52:84]),lty=2, lwd=1,col=1)
segments(rdate[72],610,rdate[72],540, col=1, lwd=2)
segments(rdate[70],560,rdate[72],540, col=1, lwd=2)
segments(rdate[72],540,rdate[74],560, col=1, lwd=2)
text(rdate[106],680,'1995',col=1, cex=.8)
text(rdate[82],645,'1980',col=1, cex=.8)
#???a<-seq(0,600, by=200)
#axis(2,at=a, cex.axis=0.9)
par(new=T)
plot(rdate[52:122],mehg$ss8[52:122],yaxt='n',
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,ylim=c(0,2),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
#abline(v=rdate[88],col='#e60073', lty=2)
segments(rdate[88],0,rdate[88],max(mehg$ss8[52:122]),
         lty=2, lwd=1,col='#e60073')
a<-seq(0,2, by=1)
axis(4,at=a, cex.axis=0.9,col='#e60073', las=2)
text(rdate[85],.8,'1986',col='#e60073', cex=.8)


yy18<-c(0, 0, 487.8596, 487.8596)
plot(rdate[52:122],hg$ss9[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main='Box9',lty=1,yaxt='n',ylim=c(0,500),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
text(rdate[109],500,'2002',col=1, cex=.8)
 polygon(H_resus,yy18, col='#68676755',border = NA)
polygon(Eutrop,yy18, col='#3a871f88',border = NA)
segments(rdate[104],0,rdate[104],max(hg$ss9[52:122]),lty=2, lwd=1,col=1)
segments(rdate[72],490,rdate[72],440, col=1, lwd=2)
segments(rdate[70],460,rdate[72],440, col=1, lwd=2)
segments(rdate[72],440,rdate[74],460, col=1, lwd=2)

a<-seq(0,500, by=250)
axis(2,at=a, cex.axis=0.9, las=2)
par(new=T)
plot(rdate[52:122],mehg$ss9[52:122],yaxt='n',
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,ylim=c(0,2),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)

segments(rdate[90],0,rdate[90],max(mehg$ss9[52:122]),
         lty=2, lwd=1,col='#e60073')
text(rdate[89],0.56,'1988',col='#e60073', cex=.8)
a<-seq(0,2, by=1)
axis(4,at=a, cex.axis=0.9,col='#e60073', las=2)
 

yy10<-c(0, 0, 379.5139, 379.5139)
plot(rdate[52:122],hg$ss10[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,500),
     lwd=2,main='Box10',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
polygon(H_resus,yy10, col='#68676755',border = NA)
polygon(Eutrop,yy10, col='#3a871f88',border = NA)
segments(rdate[81],0,rdate[81],max(hg$ss10[52:122]),lty=2, lwd=1,col=1)
segments(rdate[72],400,rdate[72],350, col=1, lwd=2)
segments(rdate[71],360,rdate[72],350, col=1, lwd=2)
segments(rdate[72],350,rdate[73],360, col=1, lwd=2)
text(rdate[85],400,'1979',col=1, cex=.8)
a<-seq(0,500, by=250)
axis(2,at=a, cex.axis=0.9, las=2)
par(new=T)

plot(rdate[52:122],mehg$ss10[52:122],yaxt='n',
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,ylim=c(0,2),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=0.9)
segments(rdate[84],0,rdate[84],max(mehg$ss10[52:122]),
         lty=2, lwd=1,col='#e60073')
text(rdate[87],.55,'1982',col='#e60073', cex=.8)
mtext('MeHg (ng/g)', side=4,line=1.4,col='#e60073', cex = .7)
  
a<-seq(0,2, by=1)
axis(4,at=a, cex.axis=0.9,col='#e60073', las=2)
dev.off()
getwd()
  
