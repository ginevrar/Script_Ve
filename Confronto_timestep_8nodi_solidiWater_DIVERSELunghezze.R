setwd('C:/Users/gi/Desktop/shyfem68_merc/File_hydro/ireib5_sim56')
setwd('C:\\Users\\Acer\\Desktop\\nuovi_test\\ireib5_sim58')

nodo3985_new<-read.csv('fort.250') #ve8 closer
nodo4007_new<-read.csv('fort.253') #ve7
nodo2009_new<-read.csv('fort.259') #ve6
nodo2341_new<-read.csv('fort.262') #ve5 cl
nodo2654_new<-read.csv('fort.266') #ve4 cl
nodo1372_new<-read.csv('fort.270') #ve3 cl
nodo3057_new<-read.csv('fort.276') #ve2
nodo2405_new<-read.csv('fort.279') #ve1

setwd('C:\\Users\\Acer\\Desktop\\nuovi_test\\ireib5_sim95')
nodo3985<-read.csv('fort.250')
nodo2009<-read.csv('fort.259')
nodo2341<-read.csv('fort.262')
nodo4007<-read.csv('fort.253')
nodo2654<-read.csv('fort.266')
nodo1372<-read.csv('fort.270')
nodo3057<-read.csv('fort.276')
nodo2405<-read.csv('fort.279')
str(nodo3985)

max((nodo3057$silt_w))  #ve2
max((nodo3057_new$silt_w))

max((nodo3985$silt_w))#ve8 closer
max((nodo3985_new$silt_w))

max((nodo1372$silt_w))
max((nodo1372_new$silt_w))

max((nodo4007$silt_w))
max((nodo4007_new$silt_w))


#lengthdays<-length(days2)*30/58400
tail(days)
tt1<-nodo3985$it
d1<-tt1/86400
str(d1)
tail(tt1)

lengthdays<-length(nodo3985$it)*1800/86400
days<-seq(from=0,to=tail(d1,1), length.out = length(nodo3985$POM_w))
tail(days)


lengthdays3<-lengthdays2#/6.007779
l2<-length(nodo3985_new$POM_w)#/4.007779

tt2<-nodo3985_new$it
d2<-tt2/86400
tail(d2)

#lengthdays non va momltiplicato per dt ma per 1800 perche
#output fort 250...sono ogni mezz'ora
lengthdays2<-length(nodo3985_new$POM_w)*1800/86400 #diff timestep dt
days2_tot<-seq(from=0,to=tail(d2,1), 
           length.out = length(nodo3985_new$POM_w))

days2<-days2_tot/6.992  #per SCALARE OUT SE SIM 1 INCOMPLETA
tail(days2)
  

plot(days, type='l')


dif_per3985<-(nodo3985_new[1:l,2:6]-nodo3985[1:l,2:6])/nodo3985[1:l,2:6]*100
dif_per1372<-(nodo1372_new[1:l,2:6]-nodo1372[1:l,2:6])/nodo1372[1:l,2:6]*100
dif_per2405<-(nodo2405_new[1:l,2:6]-nodo2405[1:l,2:6])/nodo2405[1:l,2:6]*100
dif_per3057<-(nodo3057_new[1:l,2:6]-nodo3057[1:l,2:6])/nodo3057[1:l,2:6]*100
dif_per2654<-(nodo2654_new[1:l,2:6]-nodo2654[1:l,2:6])/nodo2654[1:l,2:6]*100
dif_per2009<-(nodo2009_new[1:l,2:6]-nodo2009[1:l,2:6])/nodo2009[1:l,2:6]*100
dif_per4007<-(nodo4007_new[1:l,2:6]-nodo4007[1:l,2:6])/nodo4007[1:l,2:6]*100
dif_per2341<-(nodo2341_new[1:l,2:6]-nodo2341[1:l,2:6])/nodo2341[1:l,2:6]*100

POM_wDif<-c(dif_per3985$POM_w,dif_per1372$POM_w,dif_per2405$POM_w,
           dif_per3057$POM_w,dif_per2654$POM_w,dif_per2009$POM_w,
           dif_per4007$POM_w,dif_per2341$POM_w)

silt_wDif<-c(dif_per3985$silt_w,dif_per1372$silt_w,dif_per2405$silt_w,
           dif_per3057$silt_w,dif_per2654$silt_w,dif_per2009$silt_w,dif_per4007$silt_w,
           dif_per2341$silt_w)
plot(dif_per4007$silt_w)

silt_wDif2<-c(dif_per3985$silt_w,dif_per1372$silt_w,
            dif_per3057$silt_w,dif_per2654$silt_w,
            dif_per4007$silt_w,
             dif_per2341$silt_w)

#2405 e 2009 non varia a parte alcuni picchi - togliere
summary(silt_wDif)
summary(silt_wDif2)
summary(POM_wDif)


png('Hist_diffTCD_9558.png', width = 21,height = 12, units = 'cm',res=300)
par(mfrow=c(2,1),mar=c(2.9,2.1,1.86,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=0.8,lwd=1.4)

hist(silt_wDif, xlab='%',
     main='Differenze (%) tra \n le concentr azioni simulate di Silt')
hist(POM_wDif, xlab='%',
     main='Differenze (%) tra \n le concentrazioni simulate di POM')
dev.off()


plot(silt_wDif,type='l', ylim=c(-10,60))
hist(silt_wDif2 )
summary(POM_wDif)
summary(silt_wDif)


png('Differences_9558.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)
plot(silt_wDif, type='l',ylim=c(-60,80))
abline(h=-50, col=2)
abline(h=50, col=2)

plot(POM_wDif, type='l',ylim=c(-50,60))
abline(h=0, col=2)
abline(h=50, col=2)

dev.off()

if(tail(d2,1)<tail(d1,1)) { 
  ax<-days
  ax2<-days2} else { 
    ax<-days
    ax2<-days}

str(d1)
str(d2)
str(days2)

plot(ax2, nodo3057_new$silt_w[1:length(ax2)], type='l', ylim=c(0,690), #sim76
     col=2, lty=1,  ylab = 'ng/l')
par(new=T)
plot(ax, nodo3057$silt_w[1:length(ax)],         ylim=c(0,690),         #sim 74
     type='l', col='black', ylab = 'ng/l', lty=2)

plot(nodo2405_new$silt_w-nodo2405$silt_w,type='l')

png('Confronto_sil_ireib_9558_.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

plot(ax, nodo2405_new$silt_w[1:length(ax)], type='l', 
     col=2, lty=1, ylim=c(0,100), ylab = 'ng/l')
par(new=T)
plot(ax, nodo2405$silt_w[1:length(ax)], 
     type='l', col='black', ylim=c(0,100),ylab = 'ng/l', lty=2)
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("silt in water (mg/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
legend('topright',legend=c('sim 95','sim 58'),         #'dt = 30','dt = 300'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

plot(ax, nodo3057_new$silt_w[1:length(ax)], 
     type='l', col=2, lty=1, ylim=c(0,150), ylab = 'ng/l')
par(new=T)
plot(ax, nodo3057$silt_w[1:length(ax)],lty=2,
     type='l', col='black', ylim=c(0,150), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(ax, nodo1372_new$silt_w[1:length(ax)], type='l', col=2,
     lty=1, ylim=c(0,80),ylab = 'ng/l')#20
par(new=T)
plot(ax, nodo1372$silt_w[1:length(ax)], type='l',
     lty=2,col='black', ylim=c(0,80), 
     ylab = 'ng/l')
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(ax, nodo2654_new$silt_w[1:length(ax)], 
     type='l', col=2, lty=1, ylim=c(0,80), ylab = 'ng/l')
par(new=T)
plot(ax, nodo2654$silt_w[1:length(ax)], lty=2,
     type='l', col='black', ylim=c(0,80), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(ax, nodo2341_new$silt_w[1:length(ax)], type='l', 
     col=2, lty=1, ylim=c(0,80), ylab = 'ng/l')
par(new=T)
plot(ax, nodo2341$silt_w[1:length(ax)],lty=2, 
     type='l', col='black', ylim=c(0,80), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(ax, nodo2009_new$silt_w[1:length(ax)], 
     type='l', col=2, lty=1, ylim=c(0,100), ylab = 'ng/l')
par(new=T)
plot(ax, nodo2009$silt_w[1:length(ax)],lty=2 ,type='l',
     col='black', ylim=c(0,100),ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(ax, nodo4007_new$silt_w[1:length(ax)], type='l', 
     col=2, lty=1, ylim=c(0,100), ylab = 'ng/l')
par(new=T)
plot(ax, nodo4007$silt_w[1:length(ax)], 
     type='l',lty=2, col='black', ylim=c(0,100), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(ax, nodo3985_new$silt_w[1:length(ax)], type='l', 
     col=2, lty=1, ylim=c(0,100), ylab = 'ng/l')
par(new=T)
plot(ax, nodo3985$silt_w[1:length(ax)], type='l',lty=2,
     col='black', ylim=c(0,100), ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)

dev.off()

#______ POM

png('Confronto_POM_ireib2_5895_BB.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

tail(nodo2405_new$it[1:length(ax)])
tail(nodo2405$it[1:length(ax)])

plot(ax, nodo2405_new$POM_w[1:length(ax)], type='l', 
     col=2, lty=1, ylim=c(0,3.0), ylab = 'ng/l')
par(new=T)
plot(ax, nodo2405$POM_w[1:length(ax)], 
     type='l', col='black', ylim=c(0,3.0),ylab = 'ng/l', lty=2)
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("POM_w in water (ng/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
legend('topright',legend=c('sim 95', 'sim 58'),    #legend=c('dt=30 ','dt=300'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

plot(ax, nodo3057_new$POM_w[1:length(ax)], 
     type='l', col=2, lty=1, ylim=c(0,8), ylab = 'ng/l')
par(new=T)
plot(ax, nodo3057$POM_w[1:length(ax)],lty=2,
     type='l', col='black', ylim=c(0,8), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(ax, nodo1372_new$POM_w[1:length(ax)], type='l', col=2,
     lty=1, ylim=c(0,3),ylab = 'ng/l')#20
par(new=T)
plot(ax, nodo1372$POM_w[1:length(ax)], type='l',
     lty=2,col='black', ylim=c(0,3), 
     ylab = 'ng/l')
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(ax, nodo2654_new$POM_w[1:length(ax)], 
     type='l', col=2, lty=1, ylim=c(0,3), ylab = 'ng/l')
par(new=T)
plot(ax, nodo2654$POM_w[1:length(ax)], lty=2,
     type='l', col='black', ylim=c(0,3), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(ax, nodo2341_new$POM_w[1:length(ax)], type='l', 
     col=2, lty=1, ylim=c(0,4), ylab = 'ng/l')
par(new=T)
plot(ax, nodo2341$POM_w[1:length(ax)],lty=2, 
     type='l', col='black', ylim=c(0,4), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(ax, nodo2009_new$POM_w[1:length(ax)], 
     type='l', col=2, lty=1, ylim=c(0,5), ylab = 'ng/l')
par(new=T)
plot(ax, nodo2009$POM_w[1:length(ax)],lty=2 ,type='l',
     col='black', ylim=c(0,5),ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(ax, nodo4007_new$POM_w[1:length(ax)], 
     type='l', col=2, lty=1, ylim=c(0,4), ylab = 'ng/l')
par(new=T)
plot(ax, nodo4007$POM_w[1:length(ax)], 
     type='l',lty=2, col='black', ylim=c(0,4), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(ax, nodo3985_new$POM_w[1:length(ax)], 
     type='l', col=2, lty=1, ylim=c(0,5), ylab = 'ng/l')
par(new=T)
plot(ax, nodo3985$POM_w[1:length(ax)], type='l',lty=2,
     col='black', ylim=c(0,5), ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)


dev.off()

###______ silt_w, merc

png('Confrontosilt_CORR.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

plot(nodo2405_new$silt_w[1:length(ax)],nodo2405$silt_w[1:length(ax)], type='l', 
     col=2, lty=1, ylim=c(0,60), xlim=c(0,60), ylab = 'ng/l')
mtext('VE 01',side=3,cex = 1.3,  col =1)
mtext("Silt in water (ng/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
legend('topright',legend=c('sim74','sim76'),   col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')

plot(nodo3057_new$silt_w[1:length(ax)], nodo3057$silt_w[1:length(ax)],
     type='l', col=2, lty=1, ylim=c(0,60), xlim=c(0,60), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(nodo1372_new$silt_w[1:length(ax)], nodo1372$silt_w[1:length(ax)], type='l', col=2,
     lty=1, ylim=c(0,60), xlim=c(0,60),ylab = 'ng/l')#20
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(nodo2654_new$silt_w[1:length(ax)], nodo2654$silt_w[1:length(ax)],
     type='l', col=2, lty=1, ylim=c(0,60), xlim=c(0,60), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(nodo2341_new$silt_w[1:length(ax)], nodo2341$silt_w[1:length(ax)],type='l', 
     col=2, lty=1, ylim=c(0,60), xlim=c(0,60), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)

plot(nodo2009_new$silt_w[1:length(ax)], nodo2009$silt_w[1:length(ax)],
     type='l', col=2, lty=1, ylim=c(0,60), xlim=c(0,60), ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

plot(nodo4007_new$silt_w[1:length(ax)], nodo4007$silt_w[1:length(ax)], 
     type='l', col=2, lty=1, ylim=c(0,60), xlim=c(0,60), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(nodo3985_new$silt_w[1:length(ax)],nodo3985$silt_w[1:length(ax)], type='l', 
     col=2, lty=1, ylim=c(0,60), xlim=c(0,60), ylab = 'ng/l')
text('VE 08',side=3,cex = 1.3,  col =1)
dev.off()


###______ Hg2, merc
#l<-9000+9000; tail(days[1:length(ax)])
##m<-9000
#l<-80000; tail(days[1:l])
#m<-107160-3456

 
l<-1900; tail(days[1:l])
m<-1


9000*3
days[m:l]
png('Confronto_silt_w_sametmstp_1mese_7674.png', width = 29,height = 21, units = 'cm',res=300)
par(mfrow=c(2,4),mar=c(2.9,2.1,.1,.1), oma=c(0,0,3,0),
    cex.axis=1.2,cex=1.2,lwd=1.4)

plot(days[m:l], nodo2405$silt_w[m:l], 
     type='l', col='black', ylim=c(0,35),ylab = 'ng/l')
par(new=T)
plot(days[m:l], nodo2405_new$silt_w[m:l], type='l', 
     col=2, lty=2, ylim=c(0,35), ylab = 'ng/l')
mtext("silt_w in water (ng/l)", 3, outer = TRUE, line=1.8, cex=2, font=2)
mtext("ng/l", 2, outer = TRUE, line=1.8, cex=1.2)
legend('topright',legend=c('sim76','sim78'),
       col=c(1,2),lty=c(1),
       pch='-',lwd=1.1,  bty='n')
mtext('VE 01',side=3,cex = 1.3,  col =1)

plot(days[m:l], nodo3057$silt_w[m:l], type='l', 
     col='black', ylim=c(0,60), ylab = 'ng/l')
par(new=T)
plot(days[m:l], nodo3057_new$silt_w[m:l], type='l', 
     col=2, lty=2, ylim=c(0,60), ylab = 'ng/l')
mtext('VE 02',side=3,cex = 1.3,  col =1)

plot(days[m:l], nodo1372$silt_w[m:l], type='l', col='black', ylim=c(0,60), ylab = 'ng/l')#20
par(new=T)
plot(days[m:l], nodo1372_new$silt_w[m:l], type='l', col=2, lty=2, 
     ylim=c(0,60), ylab = 'ng/l')#20
mtext('VE 03',side=3,cex = 1.3,  col =1)

plot(days[m:l], nodo2654$silt_w[m:l], type='l', 
     col='black', ylim=c(0,70), ylab = 'ng/l')
par(new=T)
plot(days[m:l], nodo2654_new$silt_w[m:l], type='l', 
     col=2, lty=2, ylim=c(0,70), ylab = 'ng/l')
mtext('VE 04',side=3,cex = 1.3,  col =1)

plot(days[m:l], nodo2341$silt_w[m:l], type='l', col='black', 
     ylim=c(0,20), ylab = 'ng/l')
par(new=T)
plot(days[m:l], nodo2341_new$silt_w[m:l], type='l', col=2, 
     lty=2, ylim=c(0,20), ylab = 'ng/l')
mtext('VE 05',side=3,cex = 1.3,  col =1)


plot(days[m:l], nodo2009$silt_w[m:l], type='l', col='black', 
     ylim=c(0,50),ylab = 'ng/l')
par(new=T)
plot(days[m:l], nodo2009_new$silt_w[m:l], type='l', col=2, 
     lty=2, ylim=c(0,50), ylab = 'ng/l')
mtext('VE 06',side=3,cex = 1.3,  col =1)

#nodo4007<-read.csv('fort.353')
plot(days[m:l], nodo4007$silt_w[m:l], type='l', col='black', 
     ylim=c(0,60), ylab = 'ng/l')
par(new=T)
plot(days[m:l], nodo4007_new$silt_w[m:l], type='l', col=2,
     lty=2, ylim=c(0,60), ylab = 'ng/l')
mtext('VE 07',side=3,cex = 1.3,  col =1)

plot(days[m:l], nodo3985$silt_w[m:l], type='l', col='black', 
     ylim=c(0,60), ylab = 'ng/l')
par(new=T)
plot(days[m:l], nodo3985_new$silt_w[m:l], type='l', col=2,
     lty=2, ylim=c(0,60), ylab = 'ng/l')
mtext('VE 08',side=3,cex = 1.3,  col =1)
dev.off()

getwd()
