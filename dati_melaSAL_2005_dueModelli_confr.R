setwd('C:/Users/gi/Downloads')
datiM<-read.csv('Dati_Mela.csv')
str(datiM)

datiM$Data<- ISOdate(datiM$ANNO,datiM$MESE,datiM$GIORNO)

datiM$Data<- as.Date(datiM$Data, "%m/%d/%Y", tmz='GMT')


datiM[66,]

setwd('C:/Users/gi/Desktop/shyfem68_merc/File_hydro/ireib5_bis')
mod_b01<-read.table('salt.2d.1')   
mod_b02<-read.table('salt.2d.2')   
mod_b03<-read.table('salt.2d.3')   
mod_b04<-read.table('salt.2d.4')   
mod_b05<-read.table('salt.2d.5')   
mod_b06<-read.table('salt.2d.6')   
mod_b07<-read.table('salt.2d.7')   
mod_b08<-read.table('salt.2d.8')   
mod_b09<-read.table('salt.2d.9')   
mod_b10<-read.table('salt.2d.10')   
mod_b11<-read.table('salt.2d.11')   
mod_b12<-read.table('salt.2d.12')   
mod_b13<-read.table('salt.2d.13')   
mod_b14<-read.table('salt.2d.14')   
mod_b15<-read.table('salt.2d.15')   
mod_b16<-read.table('salt.2d.16')   
mod_b17<-read.table('salt.2d.17')   
mod_b18<-read.table('salt.2d.18')   
mod_b19<-read.table('salt.2d.19')   
mod_b20<-read.table('salt.2d.20')   
mod_b31<-read.table('salt.2d.21')   
mod_CI<-read.table('salt.2d.22')   
mod_CS<-read.table('salt.2d.23')   

setwd('C:/Users/gi/Desktop/shyfem68_merc/File_hydro/ireib2_bis')
mod2_b01<-read.table('salt.2d.1')   
mod2_b02<-read.table('salt.2d.2')   
mod2_b03<-read.table('salt.2d.3')   
mod2_b04<-read.table('salt.2d.4')   
mod2_b05<-read.table('salt.2d.5')   
mod2_b06<-read.table('salt.2d.6')   
mod2_b07<-read.table('salt.2d.7')   
mod2_b08<-read.table('salt.2d.8')   
mod2_b09<-read.table('salt.2d.9')   
mod2_b10<-read.table('salt.2d.10')   
mod2_b11<-read.table('salt.2d.11')   
mod2_b12<-read.table('salt.2d.12')   
mod2_b13<-read.table('salt.2d.13')   
mod2_b14<-read.table('salt.2d.14')   
mod2_b15<-read.table('salt.2d.15')   
mod2_b16<-read.table('salt.2d.16')   
mod2_b17<-read.table('salt.2d.17')   
mod2_b18<-read.table('salt.2d.18')   
mod2_b19<-read.table('salt.2d.19')   
mod2_b20<-read.table('salt.2d.20')   
mod2_b31<-read.table('salt.2d.21')   
mod2_CI<-read.table('salt.2d.22')   
mod2_CS<-read.table('salt.2d.23')   

datiM2005<-subset(datiM,ANNO==2005)
str(datiM2005)
summary(datiM2005)


X <- split.data.frame(datiM2005, datiM2005$Staz)

str(X)

B01<-data.frame(X[1]);B02<-data.frame(X[2])
B03<-data.frame(X[3]);B04<-data.frame(X[4])
B05<-data.frame(X[5]);B06<-data.frame(X[6])
B07<-data.frame(X[7]);B08<-data.frame(X[8])
B09<-data.frame(X[9]);B10<-data.frame(X[10]);
B11<-data.frame(X[11]);B12<-data.frame(X[12])
B13<-data.frame(X[13]);B14<-data.frame(X[14])
B15<-data.frame(X[15]);B16<-data.frame(X[16])
B17<-data.frame(X[17]);B18<-data.frame(X[18])
B19<-data.frame(X[19]);B20<-data.frame(X[20])
B31<-data.frame(X[21]);c01<-data.frame(X[22])
c02<-data.frame(X[23]);c03<-data.frame(X[24])
c04<-data.frame(X[25]);c05<-data.frame(X[26])
c06<-data.frame(X[27]);c07<-data.frame(X[28])
c08<-data.frame(X[29]);CI<-data.frame(X[30])
CS<-data.frame(X[31]);M01<-data.frame(X[32])
M02<-data.frame(X[33])



plot(X[23]$C01.Data,X[23]$C01.salt, type='p')




png('DatiMElasalt2005_model_twosimVer.png',width=29, height = 21, units='cm',res=200) 
par(mfrow=c(6,3), mar=c(2.6,2,1,1),oma=c(0,0,4.3,0), cex.axis=1.2)


plot(as.POSIXct.Date(mod_b01[,1]), mod_b01[,2],type='l',lwd=1.6,
     ylim=c(10,40),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b01[,2],type='l',lwd=1.6,lty=2,
     ylim=c(10,40),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B01$B01.Data,B01$B01.SAL, type='p',lwd=2,
     ylab='*C',xlab = '',
     ylim=c(10,40),col='#00000066', pch=19)
mtext('St. B01, nodo 3765',3)
mtext('Salinità',3, outer=T, line=2,font=2, cex=1.3)
#text((B01$B01.Data,B01$B01.SAL,labels=B01$B01.SAL)

plot(as.POSIXct.Date(mod_b02[,1]), mod_b02[,2],ylim=c(20,40),
     ylab='*C',xlab = '',type='l',lwd=1.6,
     xaxt='n',pch=19,col='#005E8C')
par(new=T)
plot(as.POSIXct.Date(mod2_b02[,1]), mod2_b02[,2],type='l',lwd=1.6,lty=2,
     ylim=c(20,40),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B02$B02.Data,B02$B02.SAL, type='p',ylim=c(20,40),lwd=2, ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B02, nodo 4036',3)

plot(as.POSIXct.Date(mod_b03[,1]), mod_b03[,2],
     ylim=c(25,40),pch=19,ylab='*C',xlab = '',type='l',lwd=1.6,
     xaxt='n',col='#005E8C')
par(new=T)
plot(as.POSIXct.Date(mod2_b03[,1]), mod2_b03[,2],type='l',lwd=1.6,lty=2,
     ylim=c(25,40),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B03$B03.Data,B03$B03.SAL, type='p',ylim=c(25,40),lwd=2, ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B03, nodo 4007',3)


plot(as.POSIXct.Date(mod_b04[,1]),mod_b04[,2],
     ylim=c(24,44),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b04[,1]), mod2_b04[,2],type='l',lwd=1.6,lty=2,
     ylim=c(24,44),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B04$B04.Data,B04$B04.SAL, type='p',lwd=2,ylim=c(24,44), ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B04, nodo 3549',3)
legend(B01$B01.Data[1]-20.3,46, pch=19,lty=c(2,1,2,4),
       legend=c('data','ireib=5','ireib=2'),bty='n',
       col=c('#00000066','#005E8C','darkorange'), cex=1.3)



plot(as.POSIXct.Date(mod_b06[,1]), mod_b06[,2],
     ylim=c(20,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b06[,2],type='l',lwd=1.6,lty=2,
     ylim=c(20,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B06$B06.Data,B06$B06.SAL, type='p',
     ylim=c(20,35),ylab='*C',xlab = '',lwd=1.5,
     col='#00000066', pch=19)
mtext('St. B06, nodo 3054',3)

plot(as.POSIXct.Date(mod_b07[,1]), mod_b07[,2],
     ylim=c(25,36),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b07[,1]), mod2_b07[,2],type='l',lwd=1.6,lty=2,
     ylim=c(25,36),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B07$B07.Data,B07$B07.SAL, lwd=2,type='p',ylim=c(25,36), ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B07, nodo 2904',3)


plot(as.POSIXct.Date(mod_b08[,1]), mod_b08[,2],
     ylim=c(18,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b08[,2],type='l',lwd=1.6,lty=2,
     ylim=c(18,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B08$B08.Data,B08$B08.SAL, type='p',lwd=2,ylim=c(18,35),ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B08, nodo 2193',3)


plot(as.POSIXct.Date(mod_b09[,1]), mod_b09[,2],
     ylim=c(15,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b09[,2],type='l',lwd=1.6,lty=2,
     ylim=c(15,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B09$B09.Data,B09$B09.SAL, type='p',lwd=2,ylim=c(15,35),ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B09, nodo 2409',3)

plot(as.POSIXct.Date(mod_b10[,1]), mod_b10[,2],
     ylim=c(15,35),pch=19,ylab=' ',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b10[,2],type='l',lwd=1.6,lty=2,
     ylim=c(15,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B10$B10.Data,B10$B10.SAL, type='p',lwd=2,
     ylim=c(15,35), ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B10, nodo 2095',3)

plot(as.POSIXct.Date(mod_b11[,1]), mod_b11[,2],
     ylim=c(20,38),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b11[,2],type='l',lwd=1.6,lty=2,
     ylim=c(20,38),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B11$B11.Data,B11$B11.SAL, type='p',lwd=2,ylim=c(20,38),ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B11, nodo 2419',3)


plot(as.POSIXct.Date(mod_b14[,1]), mod_b14[,2],
     ylim=c(25,40),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]),mod2_b14[,2],type='l',lwd=1.6,lty=2,
     ylim=c(25,40),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B14$B14.Data,B14$B14.SAL, type='p',lwd=2,ylim=c(25,40),ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B14, nodo 1337',3)


plot(as.POSIXct.Date(mod_b16[,1]), mod_b16[,2],
     ylim=c(15,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b16[,2],type='l',lwd=1.6,lty=2,
     ylim=c(15,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B16$B16.Data,B16$B16.SAL, type='p',lwd=2,ylim=c(15,35), ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B16, nodo 605',3)

plot(as.POSIXct.Date(mod_b17[,1]), mod_b17[,2],
     ylim=c(25,38),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b17[,2],type='l',lwd=1.6,lty=2,
     ylim=c(25,38),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B17$B17.Data,B17$B17.SAL, type='p',lwd=2,ylim=c(25,38),ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B17, nodo 535',3)

plot(as.POSIXct.Date(mod_b19[,1]), mod_b19[,2],
     ylim=c(28,38),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b19[,2],type='l',lwd=1.6,lty=2,
     ylim=c(28,38),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B19$B19.Data,B19$B19.SAL, type='p',ylim=c(28,38),
     ylab='*C',xlab = '',lwd=1.5,
     col='#00000066', pch=19)
mtext('St. B19, nodo 432',3)

plot(as.POSIXct.Date(mod_b20[,1]), mod_b20[,2],
     ylim=c(0,40),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b20[,2],type='l',lwd=1.6,lty=2,
     ylim=c(0,40),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B20$B20.Data,B20$B20.SAL, type='p',lwd=2,
     ylim=c(0,40),ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B20, nodo 25',3)

plot(as.POSIXct.Date(mod_b31[,1]), mod_b31[,2],
     ylim=c(28,36),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_b01[,1]), mod2_b31[,2],type='l',lwd=1.6,lty=2,
     ylim=c(28,36),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(B31$B31.Data,B31$B31.SAL, type='p',lwd=2,ylim=c(28,36),ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. B31, nodo 2650',3)


plot(as.POSIXct.Date(mod_CI[,1]), mod_CI[,2],
     ylim=c(20,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_CI[,1]), mod2_CI[,2],type='l',
     lwd=1.6,lty=2,
     ylim=c(20,35),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(CI$CI.Data,CI$CI.SAL, type='p',lwd=2,ylim=c(20,35),
     ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. CI, nodo 2650',3)

plot(as.POSIXct.Date(mod_CS[,1]), mod_CS[,2],
     ylim=c(25,38),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='#005E8C',type='l')
par(new=T)
plot(as.POSIXct.Date(mod2_CS[,1]), mod2_CS[,2],type='l',lwd=1.6,lty=2,
     ylim=c(25,38),pch=19,ylab='*C',xlab = '',
     xaxt='n',col='darkorange')
par(new=T)
plot(CS$CS.Data,CS$CS.SAL, type='p',lwd=2,ylim=c(25,38),ylab='*C',xlab = '',
     col='#00000066', pch=19)
mtext('St. CS, nodo 2650',3)

dev.off()

str(c02)



mod<-cor.test(dati_lev$Grassabo,mod_grass$V2)
r<-mod$estimate
pv<-mod$p.value
mylabel <- bquote(italic(r) == .(format(r, digits = 2)))
#mylabel2 <- bquote(italic(Pvalue) == .(format(pv, digits = 2)))
text(x = -0.5, 0.9 ,labels = mylabel, col=1)
#text(x = -0.5,0.7, labels = mylabel2, col=1)
mtext(side=3,'Chioggia Vigo',line=-.1,cex=.9)


getwd()
