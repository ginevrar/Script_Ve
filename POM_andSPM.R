setwd('C:/Users/gi/Dropbox/2017_Venice')
setwd('G:\\Il mio Drive\\MERCURIO\\Venezia\\2017_Venice')

box2<-read.table('Box2_tss_poc.txt')   #ricordare di convertire poc a pom
SPM<-read.table('SPM.txt', header=T); str(SPM)
pom<-read.table('POM_dato.txt', header=T); str(pom)

POC_box1<-c(0.5,0.4,0.5,0.8,0.6,0.7,0.8,0.9,0.7,0.4,0.6,0.4)
POC_box1_sd<-c(0.5,0.4,0.5,0.8,0.6,0.7,0.8,0.9,0.7,0.4,0.6,0.4)

POM_box1<-POC_box1*1.88
POM_box1_sd<-POC_box1_sd*1.88

setwd('C:/Users/Acer/Desktop/New_SIM/Reference_OK')

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
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
str(rdate)
png('All_boxes_SPM_2.png',res=300,
    width=30, height = 20, units = "cm")
par(mfrow=c(2,5), mar=c(3,4.5,2,0))
plot(rdate, solid$wn1 ,    type='l', col='#313695',lwd=2, main='Box1', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2 , 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,60))
par(new=T)
plot(SPM$BOX1, col='#31369566', ylim=c(0,60),
        at=c(2.4),xlim=c(0,2.6),
        xaxt='n',yaxt='n') 

#plot(empty1_v05, ylim=c(0,2000), type='p',pch=25,col='#10178c',lwd=2)
plot(rdate[1227:1239] ,solid$wn2[1227:1239] ,    type='l', col='#4575b4',lwd=2,main='Box2',ylab= '',
     xlab= '', cex.lab=2 , cex.main=1.6 , cex.axis=1.3,ylim=c(0,60))
par(new=T)
plot(SPM$BOX2, at=c(2.4),xlim=c(0,3),col='#4575b466', ylim=c(0,60), xaxt='n',yaxt='n') 
#
plot(rdate[1227:1239],solid$wn4[1227:1239],   type='l',col='#abd9e9',lwd=2,main='Box4',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6 , ylim=c(0,60),cex.axis=1.3)
#par(new=T)
#plot(SPM$BOX4, col='#4575b466', ylim=c(0,40), xaxt='n',yaxt='n') 
plot(rdate[1227:1239],solid$wn3[1227:1239],     type='l',col='#f7df9e',lwd=2,main='Box3',
     xlab= '',ylab= '', cex.lab=2 , ylim=c(0,60), cex.main=1.6 , cex.axis=1.3)
par(new=T)
plot(SPM$BOX3, at=c(2.4),xlim=c(0,3), col='#f7df9e66', ylim=c(0,60), xaxt='n',yaxt='n') 

plot(rdate[1227:1239] ,solid$wn5[1227:1239],     type='l',col='#f7d067',lwd=2, main='Box5',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6 , cex.axis=1.3,ylim=c(0,60))
par(new=T)
plot(SPM$BOX5, at=c(2.4),xlim=c(0,3),col='#f7df9e66', ylim=c(0,60), xaxt='n',yaxt='n') 

plot(rdate[1227:1239] ,solid$wc6[1227:1239],     type='l',col='#edba55',lwd=2, main='Box6',
     ylab='SPM (mg/L) ',xlab= '', cex.lab=2 , 
     cex.main=1.6 ,ylim=c(0,60), cex.axis=1.3)#
par(new=T)
plot(SPM$BOX6, at=c(2.4),xlim=c(0,3),col='#edba5566', ylim=c(0,60), xaxt='n',yaxt='n') 

plot(rdate[1227:1239] ,solid$wc7[1227:1239] ,     type='l',col='#f79220',lwd=2, main='Box7',
     ylab='',xlab= '', cex.lab=2 , cex.main=1.6 ,ylim=c(0,60), cex.axis=1.3)#
par(new=T)
plot(SPM$BOX7, at=c(2.4),xlim=c(0,3),col='#f7922066', ylim=c(0,60), xaxt='n',yaxt='n') 

plot(rdate[1227:1239] ,solid$ws8[1227:1239] ,     type='l',ylab= '', col='#f46d43',lwd=2, main='Box8',
     xlab= '', cex.lab=2 , cex.main=1.6 , ylim=c(0,60), cex.axis=1.3)
par(new=T)
plot(SPM$BOX8, at=c(2.4),xlim=c(0,3), col='#f46d4366', ylim=c(0,60), xaxt='n',yaxt='n') 

plot(rdate[1227:1239] ,solid$ws9[1227:1239] ,     type='l',col='#d73027',ylab= '',lwd=2, main='Box9',
     xlab= '', cex.lab=2 , cex.main=1.6 , ylim=c(0,60), cex.axis=1.3)
par(new=T)
plot(SPM$BOX9,  at=c(2.4),xlim=c(0,3),col='#d7302766', ylim=c(0,60), xaxt='n',yaxt='n') 
plot(rdate[1227:1239],solid$ws10[1227:1239],     
     type='l',col='#a50028',ylab= '',lwd=2, main='Box10',
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,60))
par(new=T)
plot(SPM$BOX10, at=c(2.4),xlim=c(0,3), col='#a5002866', ylim=c(0,60), xaxt='n',yaxt='n') 
dev.off()

png('POM_con.png',width = 700, height = 480, units = "px")
par(mfrow=c(2,5), mar=c(3,1,1,1), oma=c(0,4,3.3,1), bty='n')
plot(rdate[1227:1239], POMs$wn1[1227:1239],  
     type='l', col='#31369577',lwd=2, main='Box1', 
     ylab='mg/L',xlab= '', cex.lab=2 , 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,4))
par(new=T)
plot(pom$BOX1,pch=1, cex=1.4, col='#31369566', ylim=c(0,4), xaxt='n',yaxt='n') 
mtext('mg/L', side=2, line=3, outer=F)
mtext('Particolato organico in sospensione (POM)',
      side=3, line=2, outer=T, font=2)

plot(rdate[1227:1239] ,POMs$wn2[1227:1239],lty=1,    
     type='l', col='#4575b477',lwd=2,main='Box2',ylab= '',
     xlab= '', cex.lab=2 , cex.main=1.6 , yaxt='n',cex.axis=1.3,ylim=c(0,4))
par(new=T)
plot(pom$BOX2,pch=1, cex=1.4, col='#4575b4', ylim=c(0,4), xaxt='n',yaxt='n') 
#
plot(rdate[1227:1239],POMs$wn4[1227:1239], ylim=c(0,4),   type='l',
     col='#abd9e988',lwd=2,main='Box4',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6 , yaxt='n',cex.axis=1.3)
#par(new=T)
#plot(pom$BOX4, col='#4575b466', ylim=c(0,40), xaxt='n',yaxt='n') 
plot(rdate[1227:1239] ,POMs$wn3[1227:1239],  yaxt='n',   
     type='l',col='#DDF26B77',lwd=2,main='Box3',
     xlab= '', ylab= '', cex.lab=2 , ylim=c(0,4), 
     cex.main=1.6 , cex.axis=1.3)
par(new=T)
plot(pom$BOX3,pch=1, cex=1.4, col='#DDF26B',ylab='', 
     ylim=c(0,4), xaxt='n',yaxt='n') 

plot(rdate[1227:1239] ,POMs$wn5[1227:1239],     
     type='l',col='#e5e57277',lwd=2, main='Box5',yaxt='n',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6,
     cex.axis=1.3,ylim=c(0,4))
par(new=T)
plot(pom$BOX5,pch=1, cex=1.4, col='#e5e572',ylab = '',
     ylim=c(0,4), xaxt='n',yaxt='n') 

plot(rdate[1227:1239] ,POMs$wc6[1227:1239],    
     type='l',col='#fed97677',lwd=2, main='Box6',
     ylab=' ',xlab= '', cex.lab=2 , 
     cex.main=1.6 ,ylim=c(0,4), cex.axis=1.3)#
par(new=T)
plot(pom$BOX6,pch=1, cex=1.4, col='#fed976', 
     ylim=c(0,4),ylab='',
     xaxt='n',yaxt='n') 
mtext('mg/L', side=2, line=3, outer=F)

plot(rdate[1227:1239] ,POMs$wc7[1227:1239],    yaxt='n',
     type='l',col='#f7922077',lwd=2, main='Box7',
     ylab='',xlab= '', cex.lab=2 , cex.main=1.6 ,ylim=c(0,4), cex.axis=1.3)#
par(new=T)
plot(pom$BOX7,pch=1, cex=1.4, col='#f79220', ylim=c(0,4),ylab='',
     xaxt='n',yaxt='n') 

plot(rdate[1227:1239] ,POMs$ws8[1227:1239],   
     type='l',ylab= '', col='#f46d4377',lwd=2, main='Box8',
     xlab= '', cex.lab=2 , cex.main=1.6 , ylim=c(0,4),yaxt='n',
     cex.axis=1.3)
par(new=T)
plot(pom$BOX8, pch=1, cex=1.4,col='#f46d43',ylab='',
     ylim=c(0,4), xaxt='n',yaxt='n') 

plot(rdate[1227:1239] ,POMs$ws9[1227:1239],     
     type='l',col='#d7302777',ylab= '',lwd=2, main='Box9',
     xlab= '', cex.lab=2 , cex.main=1.6 , 
     yaxt='n',ylim=c(0,4), cex.axis=1.3)
par(new=T)
plot(pom$BOX9, pch=1, cex=1.4,col='#d73027',ylab='',
     ylim=c(0,4), xaxt='n',yaxt='n') 

plot(rdate[1227:1239] ,POMs$ws10[1227:1239],yaxt='n',     
     type='l',col='#a5002877',ylab= '',lwd=2, main='Box10',
     xlab= '', cex.lab=2 , cex.main=1.6 , cex.axis=1.3, ylim=c(0,4))
par(new=T)
plot(pom$BOX10,pch=1, cex=1.4,col='#a50028',ylab='',
     ylim=c(0,4), xaxt='n',yaxt='n') 
dev.off()
