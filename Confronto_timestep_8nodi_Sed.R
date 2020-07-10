setwd('C:/Users/gi/Desktop/shyfem68_merc/sim16_15Apr_piùdep') 
setwd('G:\\Il mio Drive\\SHYFEM\\shyfem68_merc\\ireib\\ireib5_sim78')
setwd('C:\\Users\\Acer\\Desktop\\nuovi_test\\ireib5_sim78')

nodo3985_sed_old<-read.csv('fort.450', header=FALSE)
nodo2009_sed_old<-read.csv('fort.459',header=FALSE)
nodo2341_sed_old<-read.csv('fort.462',header=FALSE)
nodo4007_sed_old<-read.csv('fort.453',header=FALSE)
nodo2654_sed_old<-read.csv('fort.466',header=FALSE)
nodo1372_sed_old<-read.csv('fort.470',header=FALSE)
nodo3057_sed_old<-read.csv('fort.476',header=FALSE)
nodo2405_sed_old<-read.csv('fort.479',header=FALSE)


setwd('C:/Users/gi/Desktop/shyfem68_merc/sim14/')
setwd('C:\\Users\\Acer\\Desktop\\nuovi_test\\ireib5_sim76')

nodo3985_sed<-read.csv('fort.450',header=FALSE)
nodo4007_sed<-read.csv('fort.453',header=FALSE)
nodo2009_sed<-read.csv('fort.459',header=FALSE)
nodo2341_sed<-read.csv('fort.462',header=FALSE)
nodo2654_sed<-read.csv('fort.466',header=FALSE)
nodo1372_sed<-read.csv('fort.470',header=FALSE)
nodo3057_sed<-read.csv('fort.476',header=FALSE)
nodo2405_sed<-read.csv('fort.479',header=FALSE)
str(nodo3985_sed)

head(nodo3985)
head(nodo3985_sed_old)



lengthdays<-length(nodo3985_sed$V1)*100/86400
days<-seq(from=0,to=lengthdays, length.out = length(nodo3985_sed$V1))


lengthdays2<-length(nodo3985_sed_old$V1)*100/86400

lengthdays3<-lengthdays2/2.58
l2<-length(nodo3985_sed_old$V1)/2.58
days2<-seq(from=0,to=lengthdays2, length.out = length(nodo3985_sed_old$V1))
#days2<-days

png('sConfronto_hg2SED.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.5,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

str(nodo2405_sed_old)
plot(days, nodo2405_sed$V2[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(100000,4331626),ylab = 'ng/m3')
par(new=T)
plot(days2, nodo2405_sed_old$V2[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(100000,4331626), ylab = 'ng/m3')

str(nodo2405_sed_old$V2[1:days2])

mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("HgP in sediment (ng/m3)", 3, outer = TRUE, line=1.8, cex=2,
      font=2)
mtext("ng/m3", 2, outer = TRUE, line=1.8, cex=1.2)
legend('bottomright',legend=c('tCD=0.45','tCD=0.75'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

#new= sim11, senza bound. (linea rossa)
plot(days, nodo3057_sed$V2[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(100000,4331626), ylab = 'ng/m3')
par(new=T)
plot(days2, nodo3057_sed_old$V2[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(100000,4331626), ylab = 'ng/m3')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days, nodo1372_sed$V2[1:length(days)], 
     type='l', col=1, ylim=c(100000,4331626), ylab = 'ng/m3')#20
par(new=T)
plot(days2, nodo1372_sed_old$V2[1:length(days2)], type='l',
     col=2, lty=2, ylim=c(100000,4331626), ylab = 'ng/m3')#20
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(days, nodo2654_sed$V2[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(100000,4331626), ylab = 'ng/m3')
par(new=T)
plot(days2, nodo2654_sed_old$V2[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(100000,4331626), ylab = 'ng/m3')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days, nodo2341_sed$V2[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(100000,4331626), ylab = 'ng/m3')
par(new=T)
plot(days2, nodo2341_sed_old$V2[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(100000,4331626), ylab = 'ng/m3')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(days, nodo2009_sed$V2[1:length(nodo3985_sed$V1)],
     type='l', col=1, ylim=c(100000,4331626),ylab = 'ng/m3')
par(new=T)
plot(days2, nodo2009_sed_old$V2[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(100000,4331626), ylab = 'ng/m3')
mtext('VE 06',side=3,cex = 1.3,  col =1)

#nodo4007<-read.csv('fort.353')
plot(days, nodo4007_sed$V2[1:length(nodo3985_sed$V1)],
     type='l', col=1, ylim=c(1000000,4131626), ylab = 'ng/m3')
par(new=T)
plot(days2, nodo4007_sed_old$V2[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(1000000,4131626), ylab = 'ng/m3')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days, nodo3985_sed$V2, type='l',
     ylim=c(100000,4331626),      col=1,  ylab = 'ng/m3')
#mtext(nodo3985$kext,side=3,cex = 1.3,  col = "red")
par(new=T)
plot(days2, nodo3985_sed_old$V2[1:length(days2)], type='l', col=2,
     lty=2, ylim=c(100000,4331626), ylab = 'ng/m3')
mtext('VE 08',side=3,cex = 1.3,  col =1)
dev.off()

#______ V3 methylmerc

png('sConfronto_MeHg_SED.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.5,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

plot(days, nodo2405_sed$V3[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(26000,90300),ylab = 'ng/m3')
par(new=T)
plot(days2, nodo2405_sed_old$V3[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(26000,90300), ylab = 'ng/m3')
mtext("MeHg in sediment (ng/m3)", 3, outer = TRUE, line=1.8, cex=2, font=2)
mtext("ng/m3", 2, outer = TRUE, line=1.8, cex=1.2)
legend('bottomright',legend=c('tCD=0.45','tCD=0.75'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')
mtext('VE 01',side=3,cex = 1.3,  col =1)

plot(days, nodo3057_sed$V3[1:length(nodo3985_sed$V1)],
     type='l', col=1, ylim=c(26000,90300), ylab = 'ng/m3')
par(new=T)
plot(days2, nodo3057_sed_old$V3[1:length(days2)],
     type='l', col=2, lty=2, ylim=c(26000,90300), ylab = 'ng/m3')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days, nodo1372_sed$V3[1:length(nodo3985_sed$V1)],
     type='l', col=1, ylim=c(26000,90300), ylab = 'ng/m3')#20
par(new=T)
plot(days2, nodo1372_sed_old$V3[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(26000,90300), ylab = 'ng/m3')#20
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(days, nodo2654_sed$V3[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(26000,90300), ylab = 'ng/m3')
par(new=T)
plot(days2, nodo2654_sed_old$V3[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(26000,90300), ylab = 'ng/m3')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days, nodo2341_sed$V3[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(26000,90300), ylab = 'ng/m3')
par(new=T)
plot(days2, nodo2341_sed_old$V3[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(26000,90300), ylab = 'ng/m3')
mtext('VE 05',side=3,cex = 1.3,  col =1)

#nodo4007<-read.csv('fort.353')
plot(days, nodo2009_sed$V3[1:length(nodo3985_sed$V1)],
     type='l', col=1, ylim=c(26000,90300),ylab = 'ng/m3')
par(new=T)
plot(days2, nodo2009_sed_old$V3[1:length(days2)],
     type='l', col=2, lty=2, ylim=c(26000,90300), ylab = 'ng/m3')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(days, nodo4007_sed$V3[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(26000,90300), ylab = 'ng/m3')
par(new=T)
plot(days2, nodo4007_sed_old$V3[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(26000,90300), ylab = 'ng/m3')

mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days, nodo3985_sed$V3[1:length(nodo3985_sed$V1)],
     type='l', col=1, ylim=c(26000,90300),
     ylab = 'ng/m3')
par(new=T)
plot(days2, nodo3985_sed_old$V3[1:length(days2)],
     type='l', col=2, lty=2, ylim=c(26000,90300),ylab = 'ng/m3')
mtext('VE 08',side=3,cex = 1.3,  col =1)
dev.off()

###______ Hg2, merc


png('sConfronto_hgsed_ngg.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.5,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

plot(days2, nodo2405_sed_old$V1[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(2,4), ylab = 'ng/l')
par(new=T)
plot(days, nodo2405_sed$V1[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(2,4),ylab = 'ng/l')
mtext("Hg in sediment (ng/g)", 3, outer = TRUE, line=1.8, cex=2, font=2)
mtext("ng/g", 2, outer = TRUE, line=1.8, cex=1.2)
legend('topright',c('tCD=0.45','tCD=0.75'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')
mtext('VE 01',side=3,cex = 1.3,  col =1)

plot(days, nodo3057_sed$V1[1:length(nodo3985_sed$V1)], type='l',
     col=1, ylim=c(2,4), ylab = 'ng/l')
par(new=T)
plot(days2, nodo3057_sed_old$V1[1:length(days2)], type='l', col=2, lty=2, ylim=c(2,4), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days, nodo1372_sed$V1[1:length(nodo3985_sed$V1)], type='l',
     col=1, ylim=c(2.4,6), ylab = 'ng/l')#20
par(new=T)
plot(days2, nodo1372_sed_old$V1[1:length(days2)], type='l', 
     col=2, lty=2, ylim=c(2.4,6),ylab = 'ng/l')#20
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(days, nodo2654_sed$V1[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(2,5), ylab = 'ng/l')
par(new=T)
plot(days2, nodo2654_sed_old$V1[1:length(days2)], type='l',
     col=2, lty=2, ylim=c(2,5), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days, nodo2341_sed$V1[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(2,4), ylab = 'ng/l')
par(new=T)
plot(days2, nodo2341_sed_old$V1[1:length(days2)], type='l', col=2, lty=2, ylim=c(2,4), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(days, nodo2009_sed$V1[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(2,4),ylab = 'ng/l')
par(new=T)
plot(days2, nodo2009_sed_old$V1[1:length(days2)], type='l', col=2, lty=2, ylim=c(2,4), ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

#nodo4007<-read.csv('fort.353')
plot(days, nodo4007_sed$V1[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(2,5), ylab = 'ng/l')
par(new=T)
plot(days2, nodo4007_sed_old$V1[1:length(days2)], 
     type='l', col=2, lty=2, ylim=c(2,5), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days, nodo3985_sed$V1[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(2,4), ylab = 'ng/l')
par(new=T)
plot(days2, nodo3985_sed_old$V1[1:length(days2)], type='l', col=2, lty=2, ylim=c(2,4), ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)
dev.off()


png('sConfronto_SILTsed_ngg.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.5,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)
plot(days, nodo2405_sed$V4[1:length(days)], type='l', 
     col=1, ylim=c(1000000,1400000),ylab = 'ng/l')
par(new=T)
plot(days2, nodo2405_sed_old$V4[1:length(days2)], type='l', col=2, lty=2, ylim=c(1000000,1400000), ylab = 'ng/l')
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("silt in sediment (g/m3)", 3, outer = TRUE, line=1.8, cex=2, font=2)
mtext("ng/g", 2, outer = TRUE, line=1.8, cex=1.2)
legend('bottomright',legend=c('tCD=0.45','tCD=0.75'),
       col=c(1,2),lty=c(1,2),
       pch='-',lwd=1.1,  bty='n')


plot(days, nodo3057_sed$V4[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(1000000,1400000), ylab = 'ng/l')
par(new=T)
plot(days2, nodo3057_sed_old$V4[1:length(days2)], type='l', col=2, lty=2, ylim=c(1000000,1400000), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days, nodo1372_sed$V4[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(1000000,1400000), ylab = 'ng/l')#20
par(new=T)
plot(days2, nodo1372_sed_old$V4[1:length(days2)], type='l', 
     col=2, lty=2, ylim=c(1000000,1400000),ylab = 'ng/l')#20
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(days, nodo2654_sed$V4[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(1000000,1400000), ylab = 'ng/l')
par(new=T)
plot(days2, nodo2654_sed_old$V4[1:length(days2)], type='l', col=2, lty=2, ylim=c(1000000,1400000), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days, nodo2341_sed$V4[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(1000000,1400000), ylab = 'ng/l')
par(new=T)
plot(days2, nodo2341_sed_old$V4[1:length(days2)], type='l', col=2, lty=2, ylim=c(1000000,1400000), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(days, nodo2009_sed$V4[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(1000000,1400000),ylab = 'ng/l')
par(new=T)
plot(days2, nodo2009_sed_old$V4[1:length(days2)], type='l', col=2, lty=2, ylim=c(1000000,1400000), ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

#nodo4007<-read.csv('fort.353')
plot(days, nodo4007_sed$V4[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(1000000,1400000), ylab = 'ng/l')
par(new=T)
plot(days2, nodo4007_sed_old$V4[1:length(days2)], type='l', col=2, lty=2, ylim=c(1000000,1400000), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days, nodo3985_sed$V4[1:length(nodo3985_sed$V1)], type='l',
     ylim=c(1000000,1400000), col=1,ylab = 'ng/l')
par(new=T)
plot(days2, nodo3985_sed_old$V4[1:length(days2)], type='l',
     col=2, lty=2, ylim=c(1000000,1400000), ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)
dev.off()


png('sConfronto_POMsed_ngg.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.5,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)
plot(days, nodo2405_sed$V5[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(4000,9000),ylab = 'ng/l')
par(new=T)
plot(days2, nodo2405_sed_old$V5[1:length(days2)], type='l', col=2, lty=2, ylim=c(4000,9000), ylab = 'ng/l')
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("POM in sediment (g/m3)", 3, outer = TRUE, line=1.8, cex=2, font=2)
#mtext("ng/g", 2, outer = TRUE, line=1.8, cex=1.2)
legend('topright',legend=c('tCD=0.45','tCD=0.75'),
       col=c(1,2),lty=c(1,2),
       pch='-',lwd=1.1,  bty='n')


plot(days, nodo3057_sed$V5[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(4000,9000), ylab = 'ng/l')
par(new=T)
plot(days2, nodo3057_sed_old$V5[1:length(days2)], type='l', col=2, lty=2, ylim=c(4000,9000), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days, nodo1372_sed$V5[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(4000,9000), ylab = 'ng/l')#20
par(new=T)
plot(days2, nodo1372_sed_old$V5[1:length(days2)], type='l', 
     col=2, lty=2, ylim=c(4000,9000),ylab = 'ng/l')#20
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(days, nodo2654_sed$V5[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(4000,9000), ylab = 'ng/l')
par(new=T)
plot(days2, nodo2654_sed_old$V5[1:length(days2)], type='l', col=2, lty=2, ylim=c(4000,9000), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days, nodo2341_sed$V5[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(4000,9000), ylab = 'ng/l')
par(new=T)
plot(days2, nodo2341_sed_old$V5[1:length(days2)], type='l', col=2, lty=2, ylim=c(4000,9000), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(days, nodo2009_sed$V5[1:length(nodo3985_sed$V1)], 
     type='l', col=1, ylim=c(4000,9000),ylab = 'ng/l')
par(new=T)
plot(days2, nodo2009_sed_old$V5[1:length(days2)], type='l', col=2, lty=2, ylim=c(4000,9000), ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

#nodo4007<-read.csv('fort.353')
plot(days, nodo4007_sed$V5[1:length(nodo3985_sed$V1)], type='l', col=1, ylim=c(4000,9000), ylab = 'ng/l')
par(new=T)
plot(days2, nodo4007_sed_old$V5[1:length(days2)], type='l', col=2, lty=2, ylim=c(4000,9000), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days, nodo3985_sed$V5[1:length(nodo3985_sed$V1)], type='l',
     ylim=c(4000,9000), col=1,ylab = 'ng/l')
par(new=T)
plot(days2, nodo3985_sed_old$V5[1:length(days2)], type='l',
     col=2, lty=2, ylim=c(4000,9000), ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)

dev.off()



