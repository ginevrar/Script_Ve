setwd('C:/Users/gi/Desktop/shyfem68_merc/1Apr') 
setwd('C:\\Users\\Acer\\Desktop\\nuovi_test\\ireib5_sim116')

nodo3985_old<-read.csv('fort.350', header=T) #ve8 closer
nodo2009_old<-read.csv('fort.359') #ve6
nodo2341_old<-read.csv('fort.362') #ve5 cl
nodo4007_old<-read.csv('fort.353') #ve7
nodo2654_old<-read.csv('fort.366') #ve4 cl
nodo1372_old<-read.csv('fort.370') #ve3 cl
nodo3057_old<-read.csv('fort.376') #ve2
nodo2405_old<-read.csv('fort.379') #ve1

tail(nodo3057_old)
nodo3057_old[5000:5020,]

max(nodo3057_old$Hg2 )
max(nodo3057$Hg2 )

setwd('C:/Users/gi/Desktop/shyfem68_merc/4Apr_react/')
setwd('C:\\Users\\Acer\\Desktop\\nuovi_test\\ireib5_sim117')

nodo3985<-read.csv('fort.350')
nodo2009<-read.csv('fort.359')
nodo2341<-read.csv('fort.362')
nodo4007<-read.csv('fort.353')
nodo2654<-read.csv('fort.366')
nodo1372<-read.csv('fort.370')
nodo3057<-read.csv('fort.376')
nodo2405<-read.csv('fort.379')
 
head(nodo3985)
head(nodo3985_old)

dif_per3985<-(nodo3985_old-nodo3985)/nodo3985
dif_per1372<-(nodo1372_old-nodo1372)/nodo1372
dif_per2405<-(nodo2405_old-nodo2405)/nodo2405
dif_per3057<-(nodo3057_old-nodo3057)/nodo3057
dif_per2654<-(nodo2654_old-nodo2654)/nodo2654
dif_per2009<-(nodo2009_old-nodo2009)/nodo2009
dif_per4007<-(nodo4007_old-nodo4007)/nodo4007
dif_per2341<-(nodo2341_old-nodo2341)/nodo2341


hg2Dif<-c(dif_per3985$Hg2,dif_per1372$Hg2,dif_per2405$Hg2,
          dif_per3057$Hg2,dif_per2654$Hg2,dif_per2009$Hg2,dif_per4007$Hg2,
          dif_per2341$Hg2)

MeHgDif<-c(dif_per3985$MeHg,dif_per1372$MeHg,dif_per2405$MeHg,
           dif_per3057$MeHg,dif_per2654$MeHg,dif_per2009$MeHg,dif_per4007$MeHg,
           dif_per2341$MeHg)

HgodDif<-c(dif_per3985$Hgod,dif_per1372$Hgod,dif_per2405$Hgod,
           dif_per3057$Hgod,dif_per2654$Hgod,dif_per2009$Hgod,dif_per4007$Hgod,
           dif_per2341$Hgod)

summary(hg2Dif*100)
summary(HgodDif*100)
summary(MeHgDif*100)

summary(dif_per3985[2:13536,]*100)
plot(dif_per3985$Hg2*100, type='l', ylim=c(-100,100))
par(new=T)
plot(dif_per2341$Hg2*100, type='l', col=1, ylim=c(-100,100))
par(new=T)
plot(dif_per4007$Hg2*100, type='l', col=3, lty=2,ylim=c(-100,100))
par(new=T)
plot(dif_per2654$Hg2*100, type='l', col=4, lty=2,ylim=c(-100,100))
par(new=T)
plot(dif_per1372$Hg2*100, type='l', col=5, lty=2,ylim=c(-100,100))
par(new=T)
plot(dif_per3057$Hg2*100, type='l', col=6, lty=2,ylim=c(-100,100))
par(new=T)
plot(dif_per2405$Hg2*100, type='l', col=7, lty=3,ylim=c(-100,100))
par(new=T)
plot(dif_per2009$Hg2*100, type='l', col=8, lty=2,ylim=c(-100,100))
abline(h=0)

plot(dif_per3985$Hg2*100, type='l')
plot(dif_per3985$Hg2*100, type='l')



lengthdays<-length(nodo3985$Hg2)*100/86400
days<-seq(from=0,to=lengthdays, length.out = length(nodo3985$Hg2))


lengthdays2<-length(nodo3985_old$Hg2)*100/86400

lengthdays3<-lengthdays2#/2.58
l2<-length(nodo3985_old$Hg2)#/2.58
days2<-days

plot(days2, type='l')
plot(days, type='l')


head(nodo3057_old$Hgod)


png('Confronto_hg0_9293_.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

  plot(days2, nodo2405_old$Hgod[1:length(days2)], type='l', ylim=c(0,200000),
     col=2, lty=1, ylab = 'ng/l')
par(new=T)
plot(days2, nodo2405$Hgod[1:length(days2)],  ylim=c(0,200000),
     type='l', col=1,ylab = 'ng/l', lty=2)
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("Hg0 in water (ng/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
legend('topleft',legend=c('115','116'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

plot(days2, nodo3057_old$Hgod[1:length(days2)], ylim=c(0,100),
     type='l', col=2, lty=1,  ylab = 'ng/l')
par(new=T)
plot(days, nodo3057$Hgod[1:length(nodo3985$Hg2)],lty=2,ylim=c(0,100),
     type='l', col=1,  ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days2, nodo1372_old$Hgod[1:length(days2)], type='l', col=2,ylim=c(0,300),
     lty=1, ylab = 'ng/l')#20
par(new=T)
plot(days, nodo1372$Hgod[1:length(nodo3985$Hg2)], type='l',ylim=c(0,300),
     lty=2,col=1,    ylab = 'ng/l')
mtext('VE 03',side=3,cex = 1.3,  col =1)


plot(days2, nodo2654_old$Hgod[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,1000), ylab = 'ng/l')
par(new=T)
plot(days, nodo2654$Hgod[1:length(nodo3985$Hg2)], lty=2,
     type='l', col=1, ylim=c(0,1000), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)


plot(days2, nodo2341_old$Hgod[1:length(days2)], type='l', ylim=c(0,1000),
     col=2, lty=1, ylab = 'ng/l')
par(new=T)
plot(days, nodo2341$Hgod[1:length(nodo3985$Hg2)],lty=2, ylim=c(0,1000),
     type='l', col=1,  ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(days2, nodo2009_old$Hgod[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,1000), ylab = 'ng/l')
par(new=T)
plot(days, nodo2009$Hgod[1:length(nodo3985$Hg2)],lty=2 ,type='l',
     col=1, ylim=c(0,1000),ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(days2, nodo4007_old$Hgod[1:length(days2)], type='l', col=2, lty=1, ylim=c(0,1000), ylab = 'ng/l')
par(new=T)
plot(days, nodo4007$Hgod[1:length(nodo3985$Hg2)], 
     type='l',lty=2, col=1, ylim=c(0,1000), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days2, nodo3985_old$Hgod[1:length(days2)], type='l', col=2, lty=1, ylim=c(0,1000), ylab = 'ng/l')
par(new=T)
plot(days, nodo3985$Hgod[1:length(nodo3985$Hg2)], type='l',lty=2,ylim=c(0,1000),
     col=1,  ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)

dev.off()

#______ MEHG methylmerc

png('Confronto_mehg_9293_.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

plot(days2, nodo2405_old$MeHg[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,200), ylab = 'ng/l')
par(new=T)
plot(days, nodo2405$MeHg[1:length(nodo3985$Hg2)], 
     type='l', col=1, ylim=c(0,200),ylab = 'ng/l', lty=2)
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("MeHg in water (ng/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
legend('topleft',legend=c('115','116'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

plot(days2, nodo3057_old$MeHg[1:length(days2)], ylim=c(0,200),
     type='l', col=2, lty=1,  ylab = 'ng/l')
par(new=T)
plot(days, nodo3057$MeHg[1:length(nodo3985$Hg2)],lty=2,ylim=c(0,200),
     type='l', col=1,  ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days2, nodo1372_old$MeHg[1:length(days2)], type='l', col=2,
     lty=1, ylim=c(0,200),ylab = 'ng/l')#20
par(new=T)
plot(days, nodo1372$MeHg[1:length(nodo3985$Hg2)], type='l',
     lty=2,col=1, ylim=c(0,200), 
     ylab = 'ng/l')
mtext('VE 03',side=3,cex = 1.3,  col =1)


plot(days2, nodo2654_old$MeHg[1:length(days2)], 
     type='l', col=2, lty=1, ylim=c(0,50), ylab = 'ng/l')
par(new=T)
plot(days, nodo2654$MeHg[1:length(nodo3985$Hg2)], lty=2,
     type='l', col=1, ylim=c(0,50),ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days2, nodo2341_old$MeHg[1:length(days2)], type='l', 
     col=2, lty=1, ylim=c(0,50), ylab = 'ng/l')
par(new=T)
plot(days, nodo2341$MeHg[1:length(nodo3985$Hg2)],lty=2, 
     type='l', col=1, ylim=c(0,50), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(days2, nodo2009_old$MeHg[1:length(days2)], ylim=c(0,100),
     type='l', col=2, lty=1,  ylab = 'ng/l')
par(new=T)
plot(days, nodo2009$MeHg[1:length(nodo3985$Hg2)],lty=2 ,type='l',ylim=c(0,100),
     col=1, ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(days2, nodo4007_old$MeHg[1:length(days2)], ylim=c(0,100),
     type='l', col=2, lty=1,  ylab = 'ng/l')
par(new=T)
plot(days, nodo4007$MeHg[1:length(nodo3985$Hg2)],ylim=c(0,100), 
     type='l',lty=2, col=1,  ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days2, nodo3985_old$MeHg[1:length(days2)], type='l',ylim=c(0,100), col=2, lty=1,  ylab = 'ng/l')
par(new=T)
plot(days, nodo3985$MeHg[1:length(nodo3985$Hg2)], ylim=c(0,100),type='l',lty=2,
     col=1,  ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)

dev.off()

###______ Hg2, merc


png('Confronto_hg2_9293_.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

max(nodo2405_old$Hg2)

plot(days2, nodo2405_old$Hg2[1:length(days2)], type='l', ylim=c(0,5000),
     col=2, lty=1, ylab = 'ng/l')
par(new=T)
plot(days, nodo2405$Hg2[1:length(nodo3985$Hg2)], ylim=c(0,5000),
     type='l', col=1,ylab = 'ng/l', lty=2)
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("HgII in water (ng/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
legend('topleft',legend=c('115','116'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

plot(days2, nodo3057_old$Hg2[1:length(days2)], ylim=c(0,5000),
     type='l', col=2, lty=1, ylab = 'ng/l')
par(new=T)
plot(days, nodo3057$Hg2[1:length(nodo3985$Hg2)],lty=2,ylim=c(0,5000),
     type='l', col=1, ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days2, nodo1372_old$Hg2[1:length(days2)], type='l', col=2,
     lty=1, ylim=c(0,5000),ylab = 'ng/l')#20
par(new=T)
plot(days, nodo1372$Hg2[1:length(nodo3985$Hg2)], type='l',
     lty=2,col=1, ylim=c(0,5000), 
     ylab = 'ng/l')
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(days2, nodo2654_old$Hg2[1:length(days2)], ylim=c(0,5000),
     type='l', col=2, lty=1, ylab = 'ng/l')
par(new=T)
plot(days, nodo2654$Hg2[1:length(nodo3985$Hg2)], lty=2,ylim=c(0,5000),
     type='l', col=1, ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days2, nodo2341_old$Hg2[1:length(days2)], type='l', ylim=c(0,3000),
     col=2, lty=1, ylab = 'ng/l')
par(new=T)
plot(days, nodo2341$Hg2[1:length(nodo3985$Hg2)],lty=2, ylim=c(0,3000),
     type='l', col=1, ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(days2, nodo2009_old$Hg2[1:length(days2)], ylim=c(0,5000),
     type='l', col=2, lty=1, ylab = 'ng/l')
par(new=T)
plot(days, nodo2009$Hg2[1:length(nodo3985$Hg2)],lty=2 ,type='l',ylim=c(0,5000),
     col=1,ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(days2, nodo4007_old$Hg2[1:length(days2)], ylim=c(0,2000),
     type='l', col=2, lty=1, ylab = 'ng/l')
par(new=T)
plot(days, nodo4007$Hg2[1:length(nodo3985$Hg2)], ylim=c(0,2000),
     type='l',lty=2, col=1, ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days2, nodo3985_old$Hg2[1:length(days2)], type='l',ylim=c(0,2000),
     col=2, lty=1, ylab = 'ng/l')
par(new=T)
plot(days, nodo3985$Hg2[1:length(nodo3985$Hg2)], type='l',lty=2,ylim=c(0,2000),
     col=1, ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)
dev.off()

getwd() 
