setwd('C:/Users/gi/Desktop/shyfem68_merc/File_hydro/ireib5_sim74') 
setwd('C:\\Users\\Acer\\Desktop\\nuovi_test\\ireib5_120_NOseaBound')

nodo3985_old<-read.csv('fort.350') #ve8 closer
nodo2009_old<-read.csv('fort.359') #ve6
nodo2341_old<-read.csv('fort.362') #ve5 cl
nodo4007_old<-read.csv('fort.353') #ve7
nodo2654_old<-read.csv('fort.366') #ve4 cl
nodo1372_old<-read.csv('fort.370') #ve3 cl
nodo3057_old<-read.csv('fort.376') #ve2
nodo2405_old<-read.csv('fort.379') #ve1

setwd('C:/Users/gi/Desktop/shyfem68_merc/File_hydro/ireib5_sim73')
setwd('C:\\Users\\Acer\\Desktop\\nuovi_test\\ireib5_120B')

nodo3985<-read.csv('fort.350')
nodo2009<-read.csv('fort.359')
nodo2341<-read.csv('fort.362')
nodo4007<-read.csv('fort.353')
nodo2654<-read.csv('fort.366')
nodo1372<-read.csv('fort.370')
nodo3057<-read.csv('fort.376')
nodo2405<-read.csv('fort.379')

plot(nodo3985$Hgod,type='l')
plot(nodo3985$Hg2,type='l')
plot(days,nodo3985$MeHg,type='l')
tail(days)
str(nodo3985_old)

str((nodo3985$Hg2))
#lengthdays<-length(nodo3985$Hg2)*30/86400
lengthdays<-length(nodo3985$Hg2)*100/86400
days<-seq(from=0,to=lengthdays, length.out = length(nodo3985$Hg2))

lengthdays2/lengthdays

lengthdays2<-length(nodo3985_old$Hg2)*100/86400

lengthdays3<-lengthdays2#/4.007779
l2<-length(nodo3985_old$Hg2)#/4.007779
days2<-seq(from=0,to=lengthdays3, length.out = l2)

plot(days2, type='l')
plot(days, type='l')



png('Confronto_hg0.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

plot(days2, nodo2405_old$Hgod[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,20), ylab = 'ng/l')

par(new=T)
plot(days[1:length(days2)], nodo2405$Hgod[1:length(days2)], 
     type='l', col=1, ylim=c(0,20),ylab = 'ng/l', lty=2)
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("Hg0 in water (ng/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
legend('topright',legend=c('sim 79','sim 78'),         #'dt = 30','dt = 300'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

plot(days2, nodo3057_old$Hgod[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,15), ylab = 'ng/l')
par(new=T)
plot(days[1:length(days2)], nodo3057$Hgod[1:length(days2)],lty=2,
     type='l', col=1, ylim=c(0,15), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days2, nodo1372_old$Hgod[1:length(days2)], type='l', col=2,
     lty=1, ylim=c(0,6),ylab = 'ng/l')#20
par(new=T)
plot(days[1:length(days2)], nodo1372$Hgod[1:length(days2)], type='l',
     lty=2,col=1, ylim=c(0,6), 
     ylab = 'ng/l')
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(days2, nodo2654_old$Hgod[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,10), ylab = 'ng/l')
par(new=T)
plot(days, nodo2654$Hgod[1:length(nodo3985$Hg2)], lty=2,
     type='l', col=1, ylim=c(0,10), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days2, nodo2341_old$Hgod[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,10), ylab = 'ng/l')
par(new=T)
plot(days, nodo2341$Hgod[1:length(nodo3985$Hg2)],lty=2, 
     type='l', col=1, ylim=c(0,10), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(days2, nodo2009_old$Hgod[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,15), ylab = 'ng/l')
par(new=T)
plot(days, nodo2009$Hgod[1:length(nodo3985$Hg2)],lty=2 ,type='l',
     col=1, ylim=c(0,15),ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(days2, nodo4007_old$Hgod[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,10), ylab = 'ng/l')
par(new=T)
plot(days, nodo4007$Hgod[1:length(nodo3985$Hg2)], 
     type='l',lty=2, col=1, ylim=c(0,10), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days2, nodo3985_old$Hgod[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,15), ylab = 'ng/l')
par(new=T)
plot(days, nodo3985$Hgod[1:length(nodo3985$Hg2)], type='l',lty=2,
     col=1, ylim=c(0,15), ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)

dev.off()

#______ MEHG methylmerc

png('Confronto_mehg.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

plot(days2, nodo2405_old$MeHg[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,10), ylab = 'ng/l')
par(new=T)
plot(days, nodo2405$MeHg[1:length(nodo3985$Hg2)], 
     type='l', col=1, ylim=c(0,10),ylab = 'ng/l', lty=2)
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("MeHg in water (ng/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
legend('topright',legend=c('sim 79','sim 78'),    #legend=c('dt=30 ','dt=300'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

plot(days2, nodo3057_old$MeHg[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,8), ylab = 'ng/l')
par(new=T)
plot(days, nodo3057$MeHg[1:length(nodo3985$Hg2)],lty=2,
     type='l', col=1, ylim=c(0,8), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days2, nodo1372_old$MeHg[1:length(days2)], type='l', col=2,
     lty=1, ylim=c(0,3),ylab = 'ng/l')#20
par(new=T)
plot(days, nodo1372$MeHg[1:length(nodo3985$Hg2)], type='l',
     lty=2,col=1, ylim=c(0,3), 
     ylab = 'ng/l')
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(days2, nodo2654_old$MeHg[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,3), ylab = 'ng/l')
par(new=T)
plot(days, nodo2654$MeHg[1:length(nodo3985$Hg2)], lty=2,
     type='l', col=1, ylim=c(0,3), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days2, nodo2341_old$MeHg[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,4), ylab = 'ng/l')
par(new=T)
plot(days, nodo2341$MeHg[1:length(nodo3985$Hg2)],lty=2, 
     type='l', col=1, ylim=c(0,4), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(days2, nodo2009_old$MeHg[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,5), ylab = 'ng/l')
par(new=T)
plot(days, nodo2009$MeHg[1:length(nodo3985$Hg2)],lty=2 ,type='l',
     col=1, ylim=c(0,5),ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(days2, nodo4007_old$MeHg[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,4), ylab = 'ng/l')
par(new=T)
plot(days, nodo4007$MeHg[1:length(nodo3985$Hg2)], 
     type='l',lty=2, col=1, ylim=c(0,4), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days2, nodo3985_old$MeHg[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,5), ylab = 'ng/l')
par(new=T)
plot(days, nodo3985$MeHg[1:length(nodo3985$Hg2)], type='l',lty=2,
     col=1, ylim=c(0,5), ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)


dev.off()

###______ Hg2, merc

png('Confronto_hg2.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)


plot(days2, nodo2405_old$Hg2[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,300), ylab = 'ng/l')
par(new=T)
plot(days, nodo2405$Hg2[1:length(nodo3985$Hg2)], 
     type='l', col=1, ylim=c(0,300),ylab = 'ng/l', lty=2)
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("HgII in water (ng/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
legend('topright',legend=c('sim 78','sim 79'),    
       #legend=c('dt=30 ','dt=300'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

plot(days2, nodo3057_old$Hg2[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,300), ylab = 'ng/l')
par(new=T)
plot(days, nodo3057$Hg2[1:length(nodo3985$Hg2)],lty=2,
     type='l', col=1, ylim=c(0,300), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days2, nodo1372_old$Hg2[1:length(days2)], type='l', col=2,
     lty=1, ylim=c(0,100),ylab = 'ng/l')#20
par(new=T)
plot(days, nodo1372$Hg2[1:length(nodo3985$Hg2)], type='l',
     lty=2,col=1, ylim=c(0,100), 
     ylab = 'ng/l')
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(days2, nodo2654_old$Hg2[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,120), ylab = 'ng/l')
par(new=T)
plot(days, nodo2654$Hg2[1:length(nodo3985$Hg2)], lty=2,
     type='l', col=1, ylim=c(0,120), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days2, nodo2341_old$Hg2[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,150), ylab = 'ng/l')
par(new=T)
plot(days, nodo2341$Hg2[1:length(nodo3985$Hg2)],lty=2, 
     type='l', col=1, ylim=c(0,150), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(days2, nodo2009_old$Hg2[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,150), ylab = 'ng/l')
par(new=T)
plot(days, nodo2009$Hg2[1:length(nodo3985$Hg2)],lty=2 ,type='l',
     col=1, ylim=c(0,150),ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(days2, nodo4007_old$Hg2[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,120), ylab = 'ng/l')
par(new=T)
plot(days, nodo4007$Hg2[1:length(nodo3985$Hg2)], 
     type='l',lty=2, col=1, ylim=c(0,120), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days2, nodo3985_old$Hg2[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,150), ylab = 'ng/l')
par(new=T)
plot(days, nodo3985$Hg2[1:length(nodo3985$Hg2)], type='l',lty=2,
     col=1, ylim=c(0,150), ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)
dev.off()

png('Confronto_hg2_CORR.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

plot(nodo2405_old$Hg2[1:length(days2)],nodo2405$Hg2[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,60), ylab = 'ng/l')
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("HgII in water (ng/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
legend('topright',legend=c('sim 79','sim 78'),          legend=c('dt=30 ','dt=300'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

plot(nodo3057_old$Hg2[1:length(days2)], nodo3057$Hg2[1:length(nodo3985$Hg2)],
     type='l', col=2, lty=1, ylim=c(0,30), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(nodo1372_old$Hg2[1:length(days2)], nodo1372$Hg2[1:length(days2)], type='l', col=2,
     lty=1, ylim=c(0,10),ylab = 'ng/l')#20
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(nodo2654_old$Hg2[1:length(days2)], nodo2654$Hg2[1:length(nodo3985$Hg2)],
     type='l', col=2, lty=1, ylim=c(0,20), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(nodo2341_old$Hg2[1:length(days2)], nodo2341$Hg2[1:length(nodo3985$Hg2)],type='l', 
     col=2, lty=1, ylim=c(0,20), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(nodo2009_old$Hg2[1:length(days2)], nodo2009$Hg2[1:length(nodo3985$Hg2)],
     type='l', col=2, lty=1, ylim=c(0,30), ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(nodo4007_old$Hg2[1:length(days2)], nodo4007$Hg2[1:length(nodo3985$Hg2)], 
     type='l', col=2, lty=1, ylim=c(0,20), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(nodo3985_old$Hg2[1:length(days2)],nodo3985$Hg2[1:length(nodo3985$Hg2)], type='l', 
     col=2, lty=1, ylim=c(0,20), ylab = 'ng/l')
 text('VE 08',side=3,cex = 1.3,  col =1)
dev.off()

