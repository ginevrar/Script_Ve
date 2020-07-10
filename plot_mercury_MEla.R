setwd('C:/Users/gi/Downloads')
datiM<-read.csv('Dati_Mela.csv')
str(datiM)

datiM$Data<- ISOdate(datiM$ANNO,datiM$MESE,datiM$GIORNO)

datiM$Data<- as.Date(datiM$Data, "%m/%d/%Y", tmz='GMT')


datiM[66,]

setwd('C:/Users/gi/Desktop/shyfem68_merc/File_hydro/ireib5_sim38')
mod_hgII_b01<-read.table('252.2d.1')   
mod_hgII_b02<-read.table('252.2d.2')   
mod_hgII_b03<-read.table('252.2d.3')   
mod_hgII_b04<-read.table('252.2d.4')   
mod_hgII_b05<-read.table('252.2d.5')   
mod_hgII_b06<-read.table('252.2d.6')   
mod_hgII_b07<-read.table('252.2d.7')   
mod_hgII_b08<-read.table('252.2d.8')   
mod_hgII_b09<-read.table('252.2d.9')   
mod_hgII_b10<-read.table('252.2d.10')   
mod_hgII_b11<-read.table('252.2d.11')   
mod_hgII_b12<-read.table('252.2d.12')   
mod_hgII_b13<-read.table('252.2d.13')   
mod_hgII_b14<-read.table('252.2d.14')   
mod_hgII_b15<-read.table('252.2d.15')   
mod_hgII_b16<-read.table('252.2d.16')   
mod_hgII_b17<-read.table('252.2d.17')   
mod_hgII_b18<-read.table('252.2d.18')   
mod_hgII_b19<-read.table('252.2d.19')   
mod_hgII_b20<-read.table('252.2d.20')   
mod_hgII_b31<-read.table('252.2d.21')   
mod_hgII_CI<-read.table('252.2d.22')   
mod_hgII_CS<-read.table('252.2d.23')   


mod_mehg_b01<-read.table('253.2d.1')   
mod_mehg_b02<-read.table('253.2d.2')   
mod_mehg_b03<-read.table('253.2d.3')   
mod_mehg_b04<-read.table('253.2d.4')   
mod_mehg_b05<-read.table('253.2d.5')   
mod_mehg_b06<-read.table('253.2d.6')   
mod_mehg_b07<-read.table('253.2d.7')   
mod_mehg_b08<-read.table('253.2d.8')   
mod_mehg_b09<-read.table('253.2d.9')   
mod_mehg_b10<-read.table('253.2d.10')   
mod_mehg_b11<-read.table('253.2d.11')   
mod_mehg_b12<-read.table('253.2d.12')   
mod_mehg_b13<-read.table('253.2d.13')   
mod_mehg_b14<-read.table('253.2d.14')   
mod_mehg_b15<-read.table('253.2d.15')   
mod_mehg_b16<-read.table('253.2d.16')   
mod_mehg_b17<-read.table('253.2d.17')   
mod_mehg_b18<-read.table('253.2d.18')   
mod_mehg_b19<-read.table('253.2d.19')   
mod_mehg_b20<-read.table('253.2d.20')   
mod_mehg_b31<-read.table('253.2d.21')   
mod_mehg_CI<-read.table('253.2d.22')   
mod_mehg_CS<-read.table('253.2d.23')   

mod_hg0_b01<-read.table('251.2d.1')   
mod_hg0_b02<-read.table('251.2d.2')   
mod_hg0_b03<-read.table('251.2d.3')   
mod_hg0_b04<-read.table('251.2d.4')   
mod_hg0_b05<-read.table('251.2d.5')   
mod_hg0_b06<-read.table('251.2d.6')   
mod_hg0_b07<-read.table('251.2d.7')   
mod_hg0_b08<-read.table('251.2d.8')   
mod_hg0_b09<-read.table('251.2d.9')   
mod_hg0_b10<-read.table('251.2d.10')   
mod_hg0_b11<-read.table('251.2d.11')   
mod_hg0_b12<-read.table('251.2d.12')   
mod_hg0_b13<-read.table('251.2d.13')   
mod_hg0_b14<-read.table('251.2d.14')   
mod_hg0_b15<-read.table('251.2d.15')   
mod_hg0_b16<-read.table('251.2d.16')   
mod_hg0_b17<-read.table('251.2d.17')   
mod_hg0_b18<-read.table('251.2d.18')   
mod_hg0_b19<-read.table('251.2d.19')   
mod_hg0_b20<-read.table('251.2d.20')   
mod_hg0_b31<-read.table('251.2d.21')   
mod_hg0_CI<-read.table('251.2d.22')   
mod_hg0_CS<-read.table('251.2d.23')   

mod_hgT_CS<-mod_hgII_CS+mod_mehg_CS+mod_hg0_CS

datiM2005<-subset(datiM,ANNO==2005)



str(datiM2005)
summary(datiM2005)

plot(mod_hgII_b01$V2, type='l')
par(new=T)
plot(mod_hgII_b01_t$V2, type='l', col=2)

datiM2005$HG<-datiM2005$hg*10^3

X <- split.data.frame(datiM2005, datiM2005$Staz)
str(X)

str(mod_hgII_b01)

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



plot(X[23]$C01.MESE,X[23]$C01.HG, type='b')



png('DatiMEla_HgII_2005.png',width=29, height = 21, units='cm',res=200) 
par(mfrow=c(6,3), mar=c(2.6,2,1,1),oma=c(0,0,4.3,0), cex.axis=1.2)

plot(as.POSIXct.Date(mod_hgII_b01[,1]), mod_hgII_b01[,2],
     ylim=c(0,40),pch=19,ylab='SPM (mg/l)',xlab = '',type='l',lwd=1.5,
     xaxt='n',col='#000000')
par(new=T)
plot(B01$B01.Data,B01$B01.HG, type='p',lwd=2,
     ylab='SPM (mg/l)',xlab = '',
     ylim=c(0,40),col='tomato',bg='tomato', pch=24)
mtext('St. B01, nodo 3765',3)
#text(B01$B01.MESE,B01$B01.hg,labels=B01$B01.hg)
mtext("HgII (model) e HgT (data) nelle acque", 3, outer = TRUE, line=1.8, cex=2,
      font=2)

plot(as.POSIXct.Date(mod_hgII_b02[,1]), mod_hgII_b02[,2],
     type='l',lwd=1.5,
     ylim=c(0,40),ylab='SPM (mg/l)',xlab = '',
     xaxt='n',pch=19,col='#000000')
par(new=T)
plot(B02$B02.MESE,B02$B02.HG, type='p',ylim=c(0,40),
     lwd=2, ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B02, nodo 4036',3)

plot(as.POSIXct.Date(mod_hgII_b03[,1]), mod_hgII_b03[,2],type='l',lwd=1.5,
     ylim=c(0,60),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B03$B03.MESE,B03$B03.HG, type='p',ylim=c(0,60),lwd=2, ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B03, nodo 4007',3)

plot(as.POSIXct.Date(mod_hgII_b04[,1]), mod_hgII_b04[,2],type = 'l',lwd=2,
     ylim=c(0,50),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B04$B04.MESE,B04$B04.HG, type='p',
     lwd=2,ylim=c(0,50), ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B04, nodo 3549',3)

plot(as.POSIXct.Date(mod_hgII_b06[,1]), mod_hgII_b06[,2],type = 'l',lwd=1.5,
     ylim=c(0,100),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B06$B06.MESE,B06$B06.HG, type='p',
     ylim=c(0,100),ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B06, nodo 3054',3)

plot(as.POSIXct.Date(mod_hgII_b07[,1]), mod_hgII_b07[,2] ,type='l',
     ylim=c(0,30),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B07$B07.MESE,B07$B07.HG, lwd=2,type='p',ylim=c(0,30), ylab='SPM (mg/l)',xlab = '',
     col='darkorange', bg='darkorange',pch=24)
mtext('St. B07, nodo 2904',3)

plot(as.POSIXct.Date(mod_hgII_b08[,1]), mod_hgII_b08[,2],type = 'l',lwd=1.5,
     ylim=c(0,60),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B08$B08.MESE,B08$B08.HG, type='p',lwd=2,
     ylim=c(0,60),ylab='SPM (mg/l)',xlab = '',
     col='darkorange', bg='darkorange',pch=24)
mtext('St. B08, nodo 2193',3)

plot(as.POSIXct.Date(mod_hgII_b09[,1]), mod_hgII_b09[,2],type = 'l',lwd=1.5,
     ylim=c(0,40),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B09$B09.MESE,B09$B09.HG, type='p',lwd=2,ylim=c(0,40),ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B09, nodo 2409',3)

plot(as.POSIXct.Date(mod_hgII_b10[,1]), mod_hgII_b10[,2],type = 'l',lwd=1.5,
     ylim=c(0,50),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B10$B10.MESE,B10$B10.HG, type='p',lwd=2,
     ylim=c(0,50), ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B10, nodo 2095',3)

plot(as.POSIXct.Date(mod_hgII_b11[,1]), mod_hgII_b11[,2],type = 'l',lwd=1.5,
     ylim=c(0,80),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B11$B11.MESE,B11$B11.HG, type='p',lwd=2,ylim=c(0,80),ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B11, nodo 2419',3)

plot(as.POSIXct.Date(mod_hgII_b14[,1]), mod_hgII_b14[,2],type = 'l',lwd=1.5,
     ylim=c(0,40),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B14$B14.MESE,B14$B14.HG, type='p',lwd=2,ylim=c(0,40),ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B14, nodo 1337',3)

plot(as.POSIXct.Date(mod_hgII_b16[,1]), mod_hgII_b16[,2],type = 'l',lwd=1.5,
     ylim=c(0,30),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B16$B16.MESE,B16$B16.HG, type='p',lwd=2,ylim=c(0,30), ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B16, nodo 605',3)

plot(as.POSIXct.Date(mod_hgII_b17[,1]), mod_hgII_b17[,2],type = 'l',lwd=1.5,
     ylim=c(0,30),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B17$B17.MESE,B17$B17.HG, type='p',lwd=2,ylim=c(0,30),ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B17, nodo 535',3)

plot(as.POSIXct.Date(mod_hgII_b19[,1]), mod_hgII_b19[,2],type = 'l',lwd=1.5,
     ylim=c(0,30),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B19$B19.MESE,B19$B19.HG, type='p',ylim=c(0,30),ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B19, nodo 432',3)

plot(as.POSIXct.Date(mod_hgII_b20[,1]), mod_hgII_b20[,2],type = 'l',lwd=1.5,
     ylim=c(0,30),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B20$B20.MESE,B20$B20.HG, type='p',lwd=2,ylim=c(0,30),ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B20, nodo 25',3)

plot(as.POSIXct.Date(mod_hgII_b31[,1]), mod_hgII_b31[,2],type = 'l',lwd=1.5,
     ylim=c(0,30),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(B31$B31.MESE,B31$B31.HG, type='p',lwd=2,ylim=c(0,30),ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. B31, nodo 2650',3)

plot(as.POSIXct.Date(mod_hgII_CI[,1]), mod_hgII_CI[,2],type = 'l',lwd=1.5,
     ylim=c(0,100),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(CI$CI.MESE,CI$CI.HG, type='p',lwd=2,ylim=c(0,100),ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. CI, nodo 2650',3)

(max(CS$CS.HG, na.rm=T))


plot(as.POSIXct.Date(mod_hgII_CS[,1]), mod_hgII_CS[,2],type = 'l',lwd=1.5,
     ylim=c(0,100),pch=19,ylab='SPM (mg/l)',xlab = '',
     xaxt='n',col='#000000')
par(new=T)
plot(CS$CS.MESE,CS$CS.HG, type='p',lwd=2,ylim=c(0,100),ylab='SPM (mg/l)',xlab = '',
     col='darkorange',bg='darkorange', pch=24)
mtext('St. CS, nodo 2650',3)

dev.off()

str(c02)



mod<-cor.test(dati_lev$Grassabo,mod_hgII_grass$V2)
r<-mod$estimate
pv<-mod$p.value
mylabel <- bquote(italic(r) == .(format(r, digits = 2)))
#mylabel2 <- bquote(italic(Pvalue) == .(format(pv, digits = 2)))
text(x = -0.5, 0.9 ,labels = mylabel, col=1)
#text(x = -0.5,0.7, labels = mylabel2, col=1)
mtext(side=3,'Chioggia Vigo',line=-.1,cex=.9)


getwd()
