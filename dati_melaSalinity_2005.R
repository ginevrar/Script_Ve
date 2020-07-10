setwd('C:/Users/gi/Downloads')
datiM<-read.csv('Dati_Mela.csv')

setwd('C:/Users/gi/Desktop/shyfem68_merc/File_hydro')
#mod_b1<-read.table(' 
#mod_b2<-read.table('             ')   #4049


str(datiM)

subset(datiM,Staz=='c')

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



plot(X[23]$C02.MESE,X[23]$C02.SAL, type='b')




png('DatiMElaSAL2005.png',width=29, height = 21, units='cm',res=200) 
par(mfrow=c(6,3), mar=c(2.6,2,1,1),oma=c(0,0,4.3,0), cex.axis=1.2)

plot(B01$B01.MESE,B01$B01.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B01, nodo 3765',3)
#text(B01$B01.MESE,B01$B01.SAL,labels=B01$B01.SAL)
mtext("Salinità", 3, outer = TRUE, line=1.8, cex=2,
      font=2)
plot(B02$B02.MESE,B02$B02.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B02, nodo 4036',3)

plot(B03$B03.MESE,B03$B03.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B03, nodo 4007',3)

plot(B04$B04.MESE,B04$B04.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B04, nodo 3549',3)

plot(B06$B06.MESE,B06$B06.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B06, nodo 3054',3)

plot(B07$B07.MESE,B07$B07.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B07, nodo 2904',3)

plot(B08$B08.MESE,B08$B08.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B08, nodo 2193',3)

plot(B09$B09.MESE,B09$B09.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B09, nodo 2409',3)

plot(B10$B10.MESE,B10$B10.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B10, nodo 2095',3)

plot(B11$B11.MESE,B11$B11.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B11, nodo 2419',3)

plot(B14$B14.MESE,B14$B14.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B14, nodo 1337',3)

plot(B16$B16.MESE,B16$B16.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B16, nodo 605',3)

plot(B17$B17.MESE,B17$B17.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B17, nodo 535',3)

plot(B19$B19.MESE,B19$B19.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B19, nodo 432',3)

plot(B20$B20.MESE,B20$B20.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B20, nodo 25',3)

plot(B31$B31.MESE,B31$B31.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. B31, nodo 2650',3)

plot(CI$CI.MESE,CI$CI.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
mtext('St. CI, nodo 2650',3)

plot(CS$CS.MESE,CS$CS.SAL, type='b',ylim=c(10,40),     col='royalblue', pch=5)
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

setwd('C:/Users/gi/Desktop/shyfem68_merc/File_hydro/ireib2')
mod_chiog<-read.table('zeta.2d.1')   #230
mod_expov<-read.table('zeta.2d.2')   #1953
mod_grass<-read.table('zeta.2d.3')   #provare nodo  e 4132
mod_lesal<-read.table('zeta.2d.4')   #4049
mod_mur<-read.table('zeta.2d.5')     #3217
mod_pusal<-read.table('zeta.2d.6')   #2559
mod_sangi<-read.table('zeta.2d.7')   #2425 o 2246
mod_sases<-read.table('zeta.2d.8')   #2423
mod_saneras<-read.table('zeta.2d.9') #3142
mod_settmor<-read.table('zeta.2d.10') #557 
mod_valav<-read.table('zeta.2d.11')   #1640 o 1642
mod_botrez<-read.table('zeta.2d.12')  #4291

#read.table('zeta_s.2d')


head(dati_lev$time_sec)
str(mod_chiog)

getwd()
