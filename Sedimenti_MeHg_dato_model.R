setwd('L:/Il mio Drive/MERCURIO/Venezia/')
MEHG<-read.table('MeHg_data_all.txt',  header=T)

setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice/res_eutr6')
setwd('C:/Users/Ginevra/Dropbox/fin29')

mehg<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')



time.steps <- mehg[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate
### B

a<-data.frame(mehg$dsn1,mehg$sn1,mehg$osn1)
b<-data.frame(mehg$dsn2,mehg$sn2,mehg$osn2)
c<-data.frame(mehg$dsn3,mehg$sn3,mehg$osn3)
d<-data.frame(mehg$dsn4,mehg$sn4,mehg$osn4)
e<-data.frame(mehg$dsn5,mehg$sn5,mehg$osn5)
f<-data.frame(mehg$dsc6,mehg$sc6,mehg$osc6)
g<-data.frame(mehg$dsc7,mehg$sc7,mehg$osc7)
h<-data.frame(mehg$dss8,mehg$ss8,mehg$oss8)
i<-data.frame(mehg$dss9,mehg$ss9,mehg$oss9)
l<-data.frame(mehg$dss10,mehg$ss10,mehg$oss10)

plot(c)

media1<-rowMeans(a)
media2<-rowMeans(b)
media3<-rowMeans(c)
media4<-rowMeans(d)
media5<-rowMeans(e)
media6<-rowMeans(f)
media7<-rowMeans(g)
media8<-rowMeans(h)
media9<-rowMeans(i)
media10<-rowMeans(l)

png('All_boxes_MeHgSED_fin29.png',
    width = 950, height = 530,
    units = "px")
par(mfrow=c(2,5),mar=c(3,1,1,1), oma=c(0,4,3,1), bty='n')
 
plot(rdate[241:1467],mehg$sn1[241:1467],ylim=c(0,2.5), lty=3,
     type='l', col='#31369577',lwd=1.5, main='Box1', 
     ylab='MeHg (ng/g)',xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=2)
par(new=T)
plot(rdate[241:1467], mehg$dsn1[241:1467],ylim=c(0,2.5), 
     type='l', col='#31369577',xaxt='n',yaxt='n',
     lty=1,lwd=1.5,main=' ',ylab= '',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],mehg$osn1[241:1467],
     ylim=c(0,2.5), type='l', col='#31369577',
     lty=5,lwd=1,main=' ',ylab= '',xaxt='n',yaxt='n',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
boxplot(MEHG$box1,ylim=c(0,2.5),col='#31369577',xlim=c(0,2),at=1.7,
        ylab=' ',boxwex=.3, xaxt='n',yaxt='n')
par(new=T)
plot(rdate[241:1467],media1[241:1467],ylim=c(0,2.5), lty=1,
     type='l', col=1,lwd=1.5, main='Box1',xaxt='n',yaxt='n', 
     ylab='MeHg (ng/g)',xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=2)
mtext('MeHg (ng/g)', side = 2, line=2.9, cex=1.2)

plot(rdate[241:1467],mehg$sn2[241:1467],ylim=c(0,2.5),
     type='l', col='#4575b4',lwd=1.5,main='Box2',ylab= '',
     xlab= '', cex.lab=1.5 , lty=3,cex.main=1.3  , cex.axis=2)
par(new=T)
plot(rdate[241:1467], mehg$dsn2[241:1467],ylim=c(0,2.5), 
     type='l', col='#4575b4',xaxt='n',yaxt='n',
     lty=1,lwd=1.5,main=' ',ylab= '',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],mehg$osn2[241:1467],
     ylim=c(0,2.5), type='l', col='#4575b4',
     lty=5,lwd=1,main=' ',ylab= '',xaxt='n',yaxt='n',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
bb<-boxplot(MEHG$box2,ylim=c(0,2.5),col='#4575b477',
            boxwex=.3, xlim=c(0,2),at=1.7,
            xaxt='n',ylab= '',yaxt='n')
par(new=T)
plot(rdate[241:1467],media2[241:1467],ylim=c(0,2.5), lty=1,
     type='l', col=1,lwd=1.5, main='',xaxt='n',yaxt='n',
     ylab=' ',xlab= '', cex.lab=1.5 , 
     cex.main=1.3  , cex.axis=2)

 
plot(rdate[241:1467],mehg$sn4[241:1467], ylim=c(0,2.5),
     type='l',col='#abd9e9',lwd=1.5,main='Box4',
     xlab= '',ylab= '', cex.lab=1.5 ,lty=3, cex.main=1.3  , 
     cex.axis=2)
par(new=T)
plot(rdate[241:1467], mehg$dsn4[241:1467],ylim=c(0,2.5), 
     type='l', col='#abd9e9',xaxt='n',yaxt='n',
     lty=1,lwd=1.5,main=' ',ylab= '',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],mehg$osn4[241:1467],
     ylim=c(0,2.5), type='l', col='#abd9e9',
     lty=5,lwd=1,main=' ',ylab= '',xaxt='n',yaxt='n',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],media4[241:1467],ylim=c(0,2.5), lty=1,
     type='l', col=1,lwd=1.5, main='',xaxt='n',yaxt='n',
     ylab='MeHg (ng/l)',xlab= '', cex.lab=1.5 , 
     cex.main=1.3  , cex.axis=2)

 
plot(rdate[241:1467],mehg$sn3[241:1467], ylim=c(0,2.5),lty=3,
     type='l', col='#DDF26B',lwd=1.5,main='Box3',
     xlab= '', ylab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=2)
par(new=T)
plot(rdate[241:1467], mehg$dsn3[241:1467],ylim=c(0,2.5), 
     type='l', col='#DDF26B',xaxt='n',yaxt='n',
     lty=1,lwd=1.5,main=' ',ylab= '',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],mehg$osn3[241:1467],
     ylim=c(0,2.5), type='l', col='#DDF26B',
     lty=5,lwd=1,main=' ',ylab= '',xaxt='n',yaxt='n',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
boxplot(MEHG$box3,ylim=c(0,2.5),col='#DDF26B',
         xaxt='n', boxwex=.3, xlim=c(0,2),at=1.7,
        ylab= 'MeHg (ng/l)',yaxt='n')
par(new=T)
plot(rdate[241:1467],media3[241:1467],ylim=c(0,2.5), lty=1,
     type='l', col=1,lwd=1.5, main='',xaxt='n',yaxt='n',
     ylab=' ',xlab= '', cex.lab=1.5 , 
     cex.main=1.3  , cex.axis=2)

 
plot(rdate[241:1467],mehg$sn5[241:1467], ylim=c(0,2.5), 
     type='l',col='#e5e572',lwd=1.5, main='Box5',lty=3,
     xlab= '',ylab= 'MeHg (ng/l)', cex.lab=1.5 , cex.main=1.3  , cex.axis=2)
par(new=T)
plot(rdate[241:1467], mehg$dsn5[241:1467],ylim=c(0,2.5), 
     type='l', col='#e5e572',xaxt='n',yaxt='n',
     lty=1,lwd=1.5,main=' ',ylab= '',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],mehg$osn5[241:1467],
     ylim=c(0,2.5), type='l', col='#e5e572',
     lty=5,lwd=1,main=' ',ylab= '',xaxt='n',yaxt='n',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],media5[241:1467],ylim=c(0,2.5), lty=1,
     type='l', col=1,lwd=1.5, main='',xaxt='n',yaxt='n',
     ylab=' ',xlab= '', cex.lab=1.5 , 
     cex.main=1.3  , cex.axis=2)

 
#boxplot(BOX5,ylim=c(0,4000),col='#f7d06777',ylab= '',boxwex=.4,xaxt='n',yaxt='n')
plot(rdate[241:1467],mehg$sc6[241:1467], 
     ylim=c(0,2.5), type='l',col='#fed976',lwd=1.5,
     main='Box6',lty=3,
     ylab='MeHg (ng/l)',xlab= '', cex.lab=1.5 , 
     cex.main=1.3  , cex.axis=2)#
par(new=T)
plot(rdate[241:1467], mehg$dsc6[241:1467],ylim=c(0,2.5), 
     type='l', col='#fed976',xaxt='n',yaxt='n',
     lty=1,lwd=1.5,main=' ',ylab= '',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],mehg$osc6[241:1467],
     ylim=c(0,2.5), type='l', col='#fed976',
     lty=5,lwd=1,main=' ',ylab= '',xaxt='n',yaxt='n',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
boxplot(MEHG$box6,ylim=c(0,2.5),col='#fed97677',
        ylab=' ', boxwex=.3, xlim=c(0,2),at=1.7,
        xaxt='n', yaxt='n')
par(new=T)
plot(rdate[241:1467],media6[241:1467],ylim=c(0,2.5), lty=1,
     type='l', col=1,lwd=1.5, main='',xaxt='n',yaxt='n',
     ylab=' ',xlab= '', cex.lab=1.5 , 
     cex.main=1.3  , cex.axis=2)
mtext('MeHg (ng/g)', side = 2, line=2.9, cex=1.2)

 
plot(rdate[241:1467],mehg$sc7[241:1467], lty=3,
     ylim=c(0,2.5), type='l',ylab= 'MeHg (ng/l)',
     col='#f79220',lwd=1.5,
     main='Box7',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=2)
par(new=T)
plot(rdate[241:1467], mehg$dsc7[241:1467],ylim=c(0,2.5), 
     type='l', col='#f79220',xaxt='n',yaxt='n',
     lty=1,lwd=1.5,main=' ',ylab= '',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],mehg$osc7[241:1467],
     ylim=c(0,2.5), type='l', col='#f79220',
     lty=5,lwd=1,main=' ',ylab= '', xaxt='n',yaxt='n',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
boxplot(MEHG$box7,ylim=c(0,2.5),col='#f7922077',
        ylab= '',boxwex=.3, xlim=c(0,2),at=1.7,
        xaxt='n',yaxt='n')#
par(new=T)
plot(rdate[241:1467],media7[241:1467],ylim=c(0,2.5), lty=1,
     type='l', col=1,lwd=1.5, main='',xaxt='n',yaxt='n',
     ylab=' ',xlab= '', cex.lab=1.5 , 
     cex.main=1.3  , cex.axis=2)
 
plot(rdate[241:1467],mehg$ss8[241:1467],lty=3,
     ylim=c(0,2.5),
     type='l',ylab= '', col='#f46d43',lwd=1.5, main='Box8',
     xlab= '', cex.lab=1.5 , cex.main=1.3 ,  cex.axis=2)
par(new=T)
plot(rdate[241:1467], mehg$dss8[241:1467],ylim=c(0,2.5), 
     type='l', col='#f46d43',xaxt='n',yaxt='n',
     lty=1,lwd=1.5,main=' ',ylab= '',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],mehg$oss8[241:1467],
     ylim=c(0,2.5), type='l', col='#f46d43',
     lty=5,lwd=1,main=' ',ylab= '',xaxt='n',yaxt='n',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],media8[241:1467],ylim=c(0,2.5), lty=1,
     type='l', col=1,lwd=1.5, main='',xaxt='n',yaxt='n',
     ylab=' ',xlab= '', cex.lab=1.5 , 
     cex.main=1.3  , cex.axis=2)

 
plot(rdate[241:1467],mehg$ss9[241:1467], lty=3,
     ylim=c(0,2.5), type='l',col='#d73027',ylab= '',lwd=1.5, main='Box9',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=2)
par(new=T)
plot(rdate[241:1467], mehg$dss9[241:1467],ylim=c(0,2.5), 
     type='l', col='#d73027',xaxt='n',yaxt='n',
     lty=1,lwd=1.5,main=' ',ylab= '',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],mehg$oss9[241:1467],
     ylim=c(0,2.5), type='l', col='#d73027',
     lty=5,lwd=1,main=' ',ylab= 'MeHg (ng/l)',xaxt='n',yaxt='n',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],media9[241:1467],ylim=c(0,2.5), lty=1,
     type='l', col=1,lwd=1.5, main='',xaxt='n',yaxt='n',
     ylab=' ',xlab= '', cex.lab=1.5 , 
     cex.main=1.3  , cex.axis=2)
 
plot(rdate[241:1467],mehg$ss10[241:1467],lty=3,
     ylim=c(0,2.5), type='l',col='#a50028',ylab= '',lwd=1.5, main='Box10',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=2)
par(new=T)
plot(rdate[241:1467], mehg$dss10[241:1467],
     ylim=c(0,2.5), 
     type='l', col='#a50028',xaxt='n',yaxt='n',
     lty=1,lwd=1.5,main=' ',ylab= '',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],mehg$oss10[241:1467],
     ylim=c(0,2.5), type='l', col='#a50028',
     lty=5,lwd=1,main=' ',ylab= '',xaxt='n',yaxt='n',
     xlab= '', cex.lab=1.5 , cex.main=1.3  , cex.axis=1.4)
par(new=T)
plot(rdate[241:1467],media10[241:1467],ylim=c(0,2.5), lty=1,
     type='l', col=1,lwd=1.5, main='',xaxt='n',yaxt='n',
     ylab=' ',xlab= '', cex.lab=1.5 , 
     cex.main=1.3  , cex.axis=2)

dev.off()
#plot(empty10_v05, ylim=c(0,20

