setwd('C:/Users/Ginevra/Dropbox/2017_Venice')
SPM<-read.table('SPM.txt', header=T); str(SPM)
pom<-read.table('POM_dato.txt', header=T); str(pom)

setwd('C:/Users/Ginevra/Dropbox/2017_Venice/114/Buona/nuove_forzanti/f')

solid<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solid)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

silt<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

time.steps <- solid[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "00-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
str(rdate)
str(solid)

png('All_boxes_SPMnfe.png',width = 700, height = 480, units = "px")
par(mfrow=c(2,5), mar=c(3,4.5,2,0))
plot(rdate, solid$wn1 ,    type='l', col='#313695',lwd=2, main='Box1', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2, ylim=c(0,35))
par(new=T)
boxplot(SPM$BOX1, col='#31369566', ylim=c(0,35), xaxt='n',yaxt='n') 
#plot(empty1_v05, ylim=c(0,2000), type='p',pch=25,col='#10178c',lwd=2)
par(mar=c(3,3,2,1))
plot(rdate ,solid$wn2 ,    type='l', col='#4575b4',lwd=2,main='Box2',ylab= '',
     xlab= '', cex.lab=2 , cex.main=2 , cex.axis=2,ylim=c(0,40))
par(new=T)
boxplot(SPM$BOX2, col='#4575b466', ylim=c(0,40), xaxt='n',yaxt='n') 
#
plot(rdate,solid$wn4,   type='l',col='#abd9e9',lwd=2,main='Box4',
     xlab= '',ylab= '', cex.lab=2 , cex.main=2 , cex.axis=2)
#par(new=T)
#boxplot(SPM$BOX4, col='#4575b466', ylim=c(0,40), xaxt='n',yaxt='n') 
plot(rdate ,solid$wn3 ,     type='l',col='#f7df9e',lwd=2,main='Box3',
     xlab= '',ylab= '', cex.lab=2 , ylim=c(0,30), cex.main=2 , cex.axis=2)
par(new=T)
boxplot(SPM$BOX3, col='#f7df9e66', ylim=c(0,30), xaxt='n',yaxt='n') 

plot(rdate ,solid$wn5 ,     type='l',col='#f7d067',lwd=2, main='Box5',
     xlab= '',ylab= '', cex.lab=2 , cex.main=2 , cex.axis=2,ylim=c(0,60))
par(new=T)
boxplot(SPM$BOX5, col='#f7df9e66', ylim=c(0,60), xaxt='n',yaxt='n') 

par(mar=c(3,4.5,2,0))
plot(rdate ,solid$wc6 ,     type='l',col='#edba55',lwd=2, main='Box6',
     ylab='SPM (mg/L) ',xlab= '', cex.lab=2 , 
     cex.main=2 ,ylim=c(0,40), cex.axis=2)#
par(new=T)
boxplot(SPM$BOX6, col='#edba5566', ylim=c(0,40), xaxt='n',yaxt='n') 

plot(rdate ,solid$wc7 ,     type='l',col='#f79220',lwd=2, main='Box7',
     ylab='',xlab= '', cex.lab=2 , cex.main=2 ,ylim=c(0,30), cex.axis=2)#
par(new=T)
boxplot(SPM$BOX7, col='#f7922066', ylim=c(0,30), xaxt='n',yaxt='n') 

plot(rdate ,solid$ws8 ,     type='l',ylab= '', col='#f46d43',lwd=2, main='Box8',
     xlab= '', cex.lab=2 , cex.main=2 , ylim=c(0,60), cex.axis=2)
par(new=T)
boxplot(SPM$BOX8, col='#f46d4366', ylim=c(0,60), xaxt='n',yaxt='n') 

plot(rdate ,solid$ws9 ,     type='l',col='#d73027',ylab= '',lwd=2, main='Box9',
     xlab= '', cex.lab=2 , cex.main=2 , ylim=c(0,40), cex.axis=2)
par(new=T)
boxplot(SPM$BOX9, col='#d7302766', ylim=c(0,40), xaxt='n',yaxt='n') 
plot(rdate ,solid$ws10 ,     type='l',col='#a50028',ylab= '',lwd=2, main='Box10',
     xlab= '', cex.lab=2 , cex.main=2 , cex.axis=2, ylim=c(0,30))
par(new=T)
boxplot(SPM$BOX10, col='#a5002866', ylim=c(0,30), xaxt='n',yaxt='n') 
dev.off()
par(mfrow=c(1,1))
png('silt_sed_nfe.png',width = 700, height = 480, units = "px")
par(mfrow=c(5,2), mar=c(3,4.5,2,0))
plot(rdate, silt$sn1 ,    type='l', col='#313695',lwd=2,
     main='Box1', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2)
plot(rdate, silt$sn2 ,    type='l', col='#313695',lwd=2,
     main='Box2', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2)
plot(rdate, silt$sn4 ,    type='l', col='#313695',lwd=2,
     main='Box4', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2)
plot(rdate, silt$sn3 ,    type='l', col='#313695',lwd=2,
     main='Box3', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2)
plot(rdate, silt$sn5 ,    type='l', col='#313695',lwd=2,
     main='Box5', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2)
plot(rdate, silt$sc6 ,    type='l', col='#313695',lwd=2,
     main='Box6', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2)
plot(rdate, silt$sc7 ,    type='l', col='#313695',lwd=2,
     main='Box7', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2)
plot(rdate, silt$ss8 ,    type='l', col='#313695',lwd=2,
     main='Box8', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2)
plot(rdate, silt$ss9 ,    type='l', col='#313695',lwd=2,
     main='Box9', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2)
plot(rdate, silt$ss10,    type='l', col='#313695',lwd=2,
     main='Box10', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2)
dev.off()


png('All_POM_BOxes_SPMnff.png',width = 700, height = 480, units = "px")
par(mfrow=c(2,5), mar=c(3,4.5,2,0))
plot(rdate, POMs$wn1 ,    type='l', col='#313695',lwd=2, main='Box1', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=2 , cex.axis=2, ylim=c(0,7))
par(new=T)
boxplot(pom$BOX1, col='#31369566', ylim=c(0,7), xaxt='n',yaxt='n') 
#plot(empty1_v05, ylim=c(0,2000), type='p',pch=25,col='#10178c',lwd=2)
par(mar=c(3,3,2,1))
plot(rdate ,POMs$wn2 ,    type='l', col='#4575b4',lwd=2,main='POM_BOx2',ylab= '',
     xlab= '', cex.lab=2 , cex.main=2 , cex.axis=2,ylim=c(0,7))
par(new=T)
boxplot(pom$BOX2, col='#4575b466', ylim=c(0,7), xaxt='n',yaxt='n') 
#
plot(rdate,POMs$wn4,   type='l',col='#abd9e9',lwd=2,main='POM_BOx4',
     xlab= '',ylab= '', cex.lab=2 , cex.main=2 , cex.axis=2)
#par(new=T)
#boxplot(pom$BOX4, col='#4575b466', ylim=c(0,40), xaxt='n',yaxt='n') 
plot(rdate ,POMs$wn3 ,     type='l',col='#f7df9e',lwd=2,main='POM_BOx3',
     xlab= '',ylab= '', cex.lab=2 , ylim=c(0,7), cex.main=2 , cex.axis=2)
par(new=T)
boxplot(pom$BOX3, col='#f7df9e66', ylim=c(0,7), xaxt='n',yaxt='n') 

plot(rdate ,POMs$wn5 ,     type='l',col='#f7d067',lwd=2, main='POM_BOx5',
     xlab= '',ylab= '', cex.lab=2 , cex.main=2 , cex.axis=2,ylim=c(0,7))
par(new=T)
boxplot(pom$BOX5, col='#f7df9e66', ylim=c(0,7), xaxt='n',yaxt='n') 

par(mar=c(3,4.5,2,0))
plot(rdate ,POMs$wc6 ,     type='l',col='#edba55',lwd=2, main='POM_BOx6',
     ylab='pom (mg/L) ',xlab= '', cex.lab=2 , 
     cex.main=2 ,ylim=c(0,7), cex.axis=2)#
par(new=T)
boxplot(pom$BOX6, col='#edba5566', ylim=c(0,7), xaxt='n',yaxt='n') 

plot(rdate ,POMs$wc7 ,     type='l',col='#f79220',lwd=2, main='POM_BOx7',
     ylab='',xlab= '', cex.lab=2 , cex.main=2 ,ylim=c(0,7), cex.axis=2)#
par(new=T)
boxplot(pom$BOX7, col='#f7922066', ylim=c(0,7), xaxt='n',yaxt='n') 

plot(rdate ,POMs$ws8 ,     type='l',ylab= '', col='#f46d43',lwd=2, main='POM_BOx8',
     xlab= '', cex.lab=2 , cex.main=2 , ylim=c(0,7), cex.axis=2)
par(new=T)
boxplot(pom$BOX8, col='#f46d4366', ylim=c(0,7), xaxt='n',yaxt='n') 

plot(rdate ,POMs$ws9 ,     type='l',col='#d73027',ylab= '',lwd=2, main='POM_BOx9',
     xlab= '', cex.lab=2 , cex.main=2 , ylim=c(0,7), cex.axis=2)
par(new=T)
boxplot(pom$BOX9, col='#d7302766', ylim=c(0,7), xaxt='n',yaxt='n') 
plot(rdate ,POMs$ws10 ,     type='l',col='#a50028',ylab= '',lwd=2, main='POM_BOx10',
     xlab= '', cex.lab=2 , cex.main=2 , cex.axis=2, ylim=c(0,7))
par(new=T)
boxplot(pom$BOX10, col='#a5002866', ylim=c(0,7), xaxt='n',yaxt='n') 
dev.off()
