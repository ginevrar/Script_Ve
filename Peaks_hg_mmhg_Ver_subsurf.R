
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


png('Peaks_sediment_Hg_mehg_VER_subs.png',
    width = 25, height = 14,res=300,     # width = 32, height = 18,res=400,
    units = "cm")
par(mfrow=c(2,5),mar=c(3,3.6,1.5,1.5), cex=0.7,
    oma=c(0,1,3,1), bty='n', mgp=c(2.8,.8,0))

par(mfrow=c(2,5),mar=c(3,3.6,1.5,1.5), cex=0.7,
    oma=c(0,1,3,1), bty='n', mgp=c(2.8,.8,0))

plot(rdate[52:122],hg$dsn1[52:122],type='l', ylim=c(0,300),col='#68676700', ylab=' ',lwd=2,main=' ',yaxt='n',xaxt='n', xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
polygon(H_resus,yy1, col='#68676755',border = NA)
polygon(Eutrop,yy1, col='#3a871f88',border = NA)
segments(rdate[105],0,rdate[105],max(hg$dsn1[52:122]),lty=3, col=1, lwd=1)
segments(rdate[72],1100,rdate[72],850, col=1, lwd=1)
segments(rdate[71],940,rdate[72],850, col=1, lwd=1)
segments(rdate[72],850,rdate[73],940, col=1, lwd=1)
par(new=T)
plot(rdate[52:122],hg$dsn1[52:122],
     type='l', col=1, ylab=' ', ylim=c(0,300),
     lwd=2,main='Box1',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
text(rdate[106],1000,'2001',col=1)
a<-seq(0,300, by=100)
axis(2,at=a, cex.axis=.9, las=2)
 #mtext('Hg (ng/g)', side=2, line=1.6, las=3, cex=.7)
mtext('MeHg (ng/g)', side=2,line=1.4,col='#e60073', cex = .7, outer = F)

par(new=T)
plot(rdate[52:122],hg$osn1[52:122],
     type='l', col=1, ylab=' ', ylim=c(0,300),
     lwd=2,main='Box1',lty=3,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],mehg$dsn1[52:122], yaxt='n',
     type='l', col='#e60073',ylim=c(0,.4), ylab=' ',
     lwd=2,main='Box1',lty=1,xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
segments(rdate[104],0,rdate[104],max(mehg$dsn1[52:122]),lty=3, col='#e60073', lwd=1) #abline(v=rdate[92],col='#e60073', lty=3)
a<-seq(0,.4, by=.1)
axis(4,at=a, cex.axis=.9,col='#e60073', las=2)
text(rdate[104],.37,'2001',col='#e60073')
par(new=T)
plot(rdate[52:122],mehg$osn1[52:122],ylim=c(0,.4),yaxt='n',
     type='l', col='#e60073',  ylab=' ',
     lwd=2,main='Box1',lty=3,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)

#::::::::::::::::::::::: box2 :::::::::::::::::::::::

plot(rdate[52:122],hg$dsn2[52:122],
     type='l', col='#68676700', ylab=' ',ylim=c(0,500),
     lwd=2,main='Box2',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
polygon(H_resus,yy1, col='#68676755',border = NA)
polygon(Eutrop,yy1, col='#3a871f88',border = NA)
segments(rdate[122],0,rdate[122],max(hg$dsn2[52:122]),lty=3, col=1, lwd=1)
segments(rdate[72],1240,rdate[72],1000, col=1, lwd=2)
segments(rdate[71],1090,rdate[72],1000, col=1, lwd=2)
segments(rdate[72],1000,rdate[73],1090, col=1, lwd=2)
text(rdate[105],1000,'2001',col=1)
par(new=T)
plot(rdate[52:122],hg$dsn2[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,500),
     lwd=2,main='Box2',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
a<-seq(0,500, by=250)
axis(2,at=a, cex.axis=.9, las=2)
par(new=T)
plot(rdate[52:122],hg$osn2[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,500),
     lwd=2,main='Box2',lty=3,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],mehg$dsn2[52:122], yaxt='n',
     type='l', col='#e60073',ylim=c(0,.6), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
segments(rdate[122],0,rdate[122],max(mehg$dsn2[52:122]),lty=3, col='#e60073', lwd=1)
par(new=T)
plot(rdate[52:122],mehg$osn2[52:122], yaxt='n',
     type='l', col='#e60073',ylim=c(0,.6), ylab=' ',
     lwd=2,main=' ',lty=3,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
a<-seq(0,.6, by=.2)
axis(4,at=a, cex.axis=.9,col='#e60073', las=2)
#::::::::::::::::::::::: box4 :::::::::::::::::::::::
 
yy22<-c(0,0,2000.1092,2000.1092)
plot(rdate[52:122],hg$sn4[52:122],type='l', col='#68676700', ylab=' ',lwd=2,main='Box4',lty=1,yaxt='n',xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
polygon(H_resus,yy22, col='#68676755',border = NA)
polygon(Eutrop,yy22, col='#3a871f88',border = NA)
par(new=T)
plot(rdate[52:122],hg$dsn4[52:122],ylim=c(0,700),
     type='l', col=1, ylab=' ',
     lwd=2,main=' ',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
segments(rdate[105],0,rdate[105],max(hg$dsn4[52:122]),lty=3, lwd=1,col=1)

par(new=T)
plot(rdate[52:122],hg$osn4[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,700),
     lwd=2,main=' ',lty=3,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
a<-seq(0,700, by=350)
axis(2,at=a, cex.axis=.9,las=2)
par(new=T)
plot(rdate[52:122],mehg$dsn4[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,1), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
text(rdate[63],3,'1971',col='#e60073')
segments(rdate[98],0,rdate[98],max(mehg$dsn4[52:122]),lty=3, lwd=1,col='#e60073')
par(new=T)
plot(rdate[52:122],mehg$osn4[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,1), ylab=' ',
     lwd=2,main=' ',lty=3,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
text(rdate[63],3,'1971',col='#e60073')
#segments(rdate[93],0,rdate[93],max(mehg$sn4[52:122]),lty=3, lwd=1,col='#e60073')
a<-seq(0,1, by=0.2)
axis(4,at=a, cex.axis=.9,col='#e60073', las=2)

#::::::::::::::::::::::: box3 :::::::::::::::::::::::

plot(rdate[52:122],hg$sn3[52:122], type='l', col='#e6007300', ylab=' ',ylim = c(0,600), lwd=2,main=' ',lty=1,yaxt='n', xaxt='n', xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
polygon(H_resus,yy22, col='#68676755',border = NA)
polygon(Eutrop,yy22, col='#3a871f88',border = NA)
par(new=T)
plot(rdate[52:122],hg$dsn3[52:122],ylim = c(0,600),
     type='l', col=1, ylab=' ',
     lwd=2,main=' ',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],hg$osn3[52:122],ylim = c(0,600),
     type='l', col=1, ylab=' ',
     lwd=2,main=' ',lty=3,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
segments(rdate[122],0,rdate[122],max(hg$dsn3[52:122]),lty=3, lwd=1,col=1)
 text(rdate[82],1260,'1977',col=1)
text(rdate[98],1200,'1993',col=1)
a<-seq(0,600, by=300)
axis(2,at=a, cex.axis=.9, las=2)
par(new=T)
plot(rdate[52:122],mehg$dsn3[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,1), ylab=' ',
     lwd=2,main='Box3',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],mehg$osn3[52:122],
     type='l', col='#e60073',ylab=' ', yaxt='n',
     lwd=2,main=' ',lty=3,ylim=c(0,1),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
segments(rdate[92],0,rdate[92],max(mehg$dsn3[52:122]),lty=3, lwd=1,col='#e60073')
a<-seq(0,1, by=.2)
axis(4,at=a, cex.axis=.9, col='#e60073',las=2)
#segments(rdate[77],0,rdate[77],max(mehg$sn3[52:122]),lty=3, lwd=1,col='#e60073')
#text(rdate[73],1,'1975',col='#e60073')
#segments(rdate[72],2,rdate[72],1.8, col=1, lwd=2)
#segments(rdate[71],1.9,rdate[72],1.8, col=1, lwd=2)
#segments(rdate[72],1.8,rdate[73],1.9, col=1, lwd=2)

plot(rdate[52:122],hg$dsn5[52:122],
     type='l', col='#68676700', ylab=' ',ylim=c(0,600),
     lwd=2,main='Box5',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
polygon(H_resus,yy22, col='#68676755',border = NA)
polygon(Eutrop,yy22, col='#3a871f88',border = NA)
par(new=T)
plot(rdate[52:122],hg$dsn5[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,600),
     lwd=2,main=' ',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],hg$osn5[52:122],
     type='l', col=1, ylab=' ',
     lwd=2,main=' ',lty=3,yaxt='n',ylim=c(0,600),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
a<-seq(0,600, by=300)
axis(2,at=a, cex.axis=.9, las=2)
segments(rdate[93],0,rdate[93],max(hg$dsn5[52:122]),lty=3, lwd=1,col=1)
text(rdate[89],1700,'1979',col=1)
text(rdate[98],1300,'1993',col=1)
#segments(rdate[72],1660,rdate[72],1410, col=1, lwd=2)
#segments(rdate[71],1500,rdate[72],1410, col=1, lwd=2)
#segments(rdate[72],1410,rdate[73],1500, col=1, lwd=2)

#a<-seq(0,1800, by=300)
#axis(4,at=a, cex.axis=.9)
par(new=T)
plot(rdate[52:122],mehg$dsn5[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,.8), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],mehg$osn5[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,.8), ylab=' ',
     lwd=2,main=' ',lty=3,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
a<-seq(0,.8, by=.2)
axis(4,at=a, cex.axis=.9, col='#e60073', las=2)
mtext('MeHg (ng/g)', side=4, line=1.6, col='#e60073', las=3, cex=.7)

#abline(v=rdate[93],col='#e60073', lty=3)
text(rdate[77],1.5,'1979',col='#e60073')
segments(rdate[93],0,rdate[93],max(mehg$dsn5[52:122]),lty=3, lwd=1,col='#e60073')




yy4<-c(0, 0, 5000, 5000)
plot(rdate[52:122],hg$sc6[52:122],ylim = c(0,1500),
     type='l', col='#e6007300', ylab=' ',
     lwd=2,main='Box6',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
polygon(H_resus,yy4, col='#68676755',border = NA)
polygon(Eutrop,yy4, col='#3a871f88',border = NA)
par(new=T)
plot(rdate[52:122],hg$dsc6[52:122],ylim = c(0,1500),
     type='l', col=1, ylab=' ',
     lwd=2,main=' ',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],hg$osc6[52:122],ylim = c(0,1500),
     type='l', col=1, ylab=' ',
     lwd=2,main=' ',lty=3,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
segments(rdate[91],0,rdate[91],max(hg$dsc6[52:122]),lty=3, lwd=1,col=1)

text(rdate[68],4900,'1979',col=1)
a<-seq(0,1500, by=500)
axis(2,at=a, cex.axis=.9, las=2)
par(new=T)
plot(rdate[52:122],mehg$dsc6[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,2), ylab=' ',
     lwd=2,main=' ',lty=1,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
segments(rdate[91],0,rdate[91],max(mehg$dsc6[52:122]),lty=3, lwd=1,col='#e60073')
text(rdate[98],4.5,'1983',col='#e60073')
par(new=T)
plot(rdate[52:122],mehg$osc6[52:122],yaxt='n',
     type='l', col='#e60073',ylim=c(0,2), ylab=' ',
     lwd=2,main=' ',lty=3,
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
a<-seq(0,2., by=.5)
axis(4,at=a, cex.axis=.9, col='#e60073', las=2)

yy5<-c(0, 0, 500, 500)
plot(rdate[52:122],hg$dsc7[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,200),
     lwd=2,main='Box7',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
#abline(v=rdate[97],lty=3)
text(rdate[104],490,'1995',col=1)
polygon(H_resus,yy5, col='#68676755',border = NA)
polygon(Eutrop,yy5, col='#3a871f55',border = NA)
a<-seq(0,200, by=100)
axis(2,at=a, cex.axis=.9, las=2)
segments(rdate[122],0,rdate[122],max(hg$dsc7[52:122]),lty=3, lwd=1,col=1)
segments(rdate[72],490,rdate[72],440, col=1, lwd=2)
segments(rdate[71],460,rdate[72],440, col=1, lwd=2)
segments(rdate[72],440,rdate[73],460, col=1, lwd=2)
par(new=T)
plot(rdate[52:122],hg$osc7[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,200),
     lwd=2,main='Box7',lty=3,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],mehg$dsc7[52:122],
     type='l', col='#e60073',ylab=' ',yaxt='n',
     lwd=2,main=' ',lty=1,ylim=c(0,.1),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],mehg$osc7[52:122],ylim=c(0,.1),
     type='l', col='#e60073',ylab=' ',yaxt='n',
     lwd=2,main=' ',lty=3, 
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
text(rdate[88],.5,'1991',col='#e60073')
 segments(rdate[122],0,rdate[122],max(mehg$dsc7[52:122]),lty=3, lwd=1,col='#e60073')
 a<-seq(0,.1, by=.05)
 axis(4,at=a, cex.axis=.9, col='#e60073', las=2)

yy6<-c(0, 0, 650, 650)
plot(rdate[52:122],hg$dss8[52:122],  type='l', col=1, ylab=' ',ylim=c(0,200),
     lwd=2,main='Box8',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
polygon(H_resus,yy6, col='#68676733',border = NA)
polygon(Eutrop,yy6, col='#3a871f33',border = NA)
#abline(v=rdate[97],lty=3)
#abline(v=rdate[82],lty=3)
segments(rdate[122],0,rdate[122],max(hg$dss8[52:122]),lty=3, lwd=1,col=1)
text(rdate[102],490,'1995',col=1)
par(new=T)
plot(rdate[52:122],hg$oss8[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,200),
     lwd=2,main='Box8',lty=3,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
a<-seq(0,200, by=100)
axis(2,at=a, cex.axis=.9, las=2)
par(new=T)
plot(rdate[52:122],mehg$dss8[52:122],yaxt='n',
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,ylim=c(0,.2),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
 segments(rdate[122],0,rdate[122],max(mehg$dss8[52:122]),
         lty=3, lwd=1,col='#e60073')
par(new=T)
plot(rdate[52:122],mehg$oss8[52:122],yaxt='n',
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=3,ylim=c(0,.2),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
abline(v=rdate[85],col='', lty=3)
text(rdate[83],.5,'1983',col='#e60073')
a<-seq(0,.200, by=.100)
axis(4,at=a, cex.axis=.9,col='#e60073', las=2)

yy6<-c(0, 0, 650, 650)
plot(rdate[52:122],hg$ss9[52:122],
     type='l', col='#68676700', ylab=' ',
     lwd=2,main='Box9',lty=1,yaxt='n',ylim=c(0,400),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
#.text(rdate[109],490,'2001',col=1)
polygon(H_resus,yy4, col='#68676733',border = NA)
polygon(Eutrop,yy4, col='#3a871f33',border = NA)
segments(rdate[104],0,rdate[104],max(hg$dss9[52:122]),lty=3, lwd=1,col=1)
segments(rdate[72],490,rdate[72],440, col=1, lwd=2)
segments(rdate[71],460,rdate[72],440, col=1, lwd=2)
segments(rdate[72],440,rdate[73],460, col=1, lwd=2)
par(new=T)
plot(rdate[52:122],hg$dss9[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,400),
     lwd=2,main='Box9',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],hg$oss9[52:122],
     type='l', col=1, ylab=' ',ylim=c(0,400),
     lwd=2,main='Box9',lty=3,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)

a<-seq(0,400, by=200)
axis(2,at=a, cex.axis=.9, las=2)
par(new=T)
plot(rdate[52:122],mehg$dss9[52:122],
     type='l', col='#e60073',ylab=' ',yaxt='n',
     lwd=2,main=' ',lty=1,ylim=c(0,.5),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
segments(rdate[99],0,rdate[99],max(mehg$dss9[52:122]),
         lty=3, lwd=1,col='#e60073')
text(rdate[87],0.5,'1988',col='#e60073')
par(new=T)
plot(rdate[52:122],mehg$oss9[52:122],
     type='l', col='#e60073',ylab=' ',yaxt='n',
     lwd=2,main=' ',lty=3,ylim=c(0,.5),
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
b<-seq(0,.5, by=.25)
axis(4,at=b, cex.axis=.9, col='#e60073', las=2)


yy10<-c(0, 0, 420, 420)
plot(rdate[52:122],hg$ss10[52:122],ylim=c(0,200),
     type='l',  col='#e6007300', ylab=' ',
     lwd=2,main='Box10',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
polygon(H_resus,yy10, col='#68676733',border = NA)
polygon(Eutrop,yy10, col='#3a871f33',border = NA)
segments(rdate[92],0,rdate[92],max(hg$dss10[52:122]),lty=3, lwd=1,col=1)
segments(rdate[72],400,rdate[72],350, col=1, lwd=2)
segments(rdate[71],360,rdate[72],350, col=1, lwd=2)
segments(rdate[72],350,rdate[73],360, col=1, lwd=2)
text(rdate[85],300,'1979',col=1)
a<-seq(0,200, by=100)
axis(2,at=a, cex.axis=.9, las=2)
par(new=T)
plot(rdate[52:122],hg$dss10[52:122],ylim=c(0,200),
     type='l',  col=1, ylab=' ',
     lwd=2,main='Box10',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],hg$oss10[52:122],ylim=c(0,200),
     type='l',  col=1, ylab=' ',
     lwd=2,main='Box10',lty=3,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],mehg$dss10[52:122],ylim=c(0,.400),
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],mehg$oss10[52:122],ylim=c(0,.400),
     type='l', col='#e60073',ylab=' ',
     lwd=2,main=' ',lty=3,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
segments(rdate[81],0,rdate[81],max(mehg$dss10[52:122]),
         lty=3, lwd=1,col='#e60073')
b<-seq(0,.4, by=.2)
axis(4,at=b, cex.axis=.9, col='#e60073', las=2)
text(rdate[87],.5,'1983',col='#e60073')
dev.off()
getwd()


plot(rdate[52:122],hg$ss10[52:122],ylim=c(0,1200),
     type='l',  col=1, ylab=' ',
     lwd=2,main='Box10',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)
par(new=T)
plot(rdate[52:122],hg$dss10[52:122],ylim=c(0,1200),
     type='l',  col=1, ylab=' ',
     lwd=2,main='Box10',lty=1,yaxt='n',
     xlab= '', cex.lab=1 , cex.main=1 , cex.axis=.9)

hg$ss10[82:92]
hg$dss10[82:92]

diff_10<-c(NA,diff(hg$ss10[82:92], differences = 1))
diff_10b<-c(NA,diff(hg$dss10[82:92], differences = 1))
mean(diff_10, na.rm=T)
mean(diff_10b, na.rm=T)

diff_6<-c(NA,diff((hg$sc6[82:92]*TOTs$sc6[82:92]), differences = 1))
diff_6b<-c(NA,diff((hg$dsc6[82:92]*TOTs$dsc6[82:92]), differences = 1))
mean(diff_6, na.rm=T)
mean(diff_6b, na.rm=T)

rdate[82]
rdate[92]

diff_4<-c(NA,diff((hg$sn4[82:92]*TOTs$sn4[82:92]), differences = 1))
diff_4b<-c(NA,diff((hg$dsn4[82:92]*TOTs$dsn4[82:92]), differences = 1))
mean(diff_4, na.rm=T)
mean(diff_4b, na.rm=T)
