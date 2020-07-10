setwd('C:\\Users\\gi\\Downloads')

datiM<-read.csv('Dati_Mela.csv')
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

png('SPM_BOUNDARIES_2005.png', width = 21, height = 10,
    res=300,units = 'cm')
par(mfrow=c(1,2), mar=c(2.6,2,1,1),oma=c(0,0,4.3,0), 
    cex.main=1.2,bty='n',cex.axis=1.2)
axx<-c('G', '','F', 'M','A','','M','G','L','A','S','O','N','D')
plot(M01$M01.MESE,M01$M01.TSS, type='b',ylim=c(0,30), xaxt='n',
     col='darkorange', pch=24)
mtext('Lido',3,cex=1.2)
aa<-seq(1,12,length.out = length(M01))
axis(1,at=aa,labels = axx )
mtext("Solidi in sospensione nelle acque (mg/l)", 3, 
      outer = TRUE, line=1.8, cex=1.4,font=2)
plot(M02$M02.MESE,M02$M02.TSS, type='b',ylim=c(0,40),xaxt='n',
     col='darkorange', pch=24)
mtext('Chioggia',3, cex=1.2)
axis(1,at=aa,labels = axx )
dev.off()


png('DatiMElaPoM2005.png',width=29, height = 21, units='cm',res=200) 
par(mfrow=c(6,3), mar=c(2.6,2,1,1),oma=c(0,0,4.3,0), cex.axis=1.2)

plot(B01$B01.MESE,B01$B01.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B01, nodo 3765',3)
#text(B01$B01.MESE,B01$B01.POC*1.88,labels=B01$B01.POC*1.88)
mtext("Particolato Organico nelle acque (mg/l)", 3, outer = TRUE, line=1.8, cex=2,
      font=2)
plot(B02$B02.MESE,B02$B02.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B02, nodo 4036',3)

plot(B03$B03.MESE,B03$B03.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B03, nodo 4007',3)

plot(B04$B04.MESE,B04$B04.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B04, nodo 3549',3)

plot(B06$B06.MESE,B06$B06.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B06, nodo 3054',3)


plot(B07$B07.MESE,B07$B07.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B07, nodo 2904',3)

plot(B08$B08.MESE,B08$B08.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B08, nodo 2193',3)

plot(B09$B09.MESE,B09$B09.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B09, nodo 2409',3)

plot(B10$B10.MESE,B10$B10.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B10, nodo 2095',3)

plot(B11$B11.MESE,B11$B11.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B11, nodo 2419',3)

plot(B14$B14.MESE,B14$B14.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B14, nodo 1337',3)

plot(B16$B16.MESE,B16$B16.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B16, nodo 605',3)

plot(B17$B17.MESE,B17$B17.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B17, nodo 535',3)

plot(B19$B19.MESE,B19$B19.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B19, nodo 432',3)

plot(B20$B20.MESE,B20$B20.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B20, nodo 25',3)

plot(B31$B31.MESE,B31$B31.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. B31, nodo 2650',3)

plot(CI$CI.MESE,CI$CI.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. CI, nodo 2940',3)

plot(CS$CS.MESE,CS$CS.POC*1.88, type='b',ylim=c(0,10), col='darkgreen')
mtext('St. CS, nodo 2550',3)

dev.off()
