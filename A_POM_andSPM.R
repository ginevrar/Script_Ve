setwd('C:/Users/Ginevra/Dropbox/');library(dplyr)
box1<-read.table('Box1_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box2<-read.table('Box2_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box3<-read.table('Box3_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box4<-read.table('Box4_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box5<-read.table('Box5_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box6<-read.table('Box6_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box7<-read.table('Box7_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box8<-read.table('Box8_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box9<-read.table('Box9_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box10<-read.table('Box10_tss_poc.txt', header=T)   #ricordare di convertire poc a pom

box1_mean_SPM <- tapply(box1$TSS, box1$MESE, mean);box1_sd_SPM <- tapply(box1$TSS, box1$MESE, sd)
box2_mean_SPM <- tapply(box2$TSS, box2$MESE, mean);box2_sd_SPM <- tapply(box2$TSS, box2$MESE, sd)
box3_mean_SPM <- tapply(box3$TSS, box3$MESE, mean);box3_sd_SPM <- tapply(box3$TSS, box3$MESE, sd)
box4_mean_SPM <- tapply(box4$TSS, box4$MESE, mean);box4_sd_SPM <- tapply(box4$TSS, box4$MESE, sd)
box5_mean_SPM <- tapply(box5$TSS, box5$MESE, mean);box5_sd_SPM <- tapply(box5$TSS, box5$MESE, sd)
box6_mean_SPM <- tapply(box6$TSS, box6$MESE, mean);box6_sd_SPM <- tapply(box6$TSS, box6$MESE, sd)
box7_mean_SPM <- tapply(box7$TSS, box7$MESE, mean);box7_sd_SPM <- tapply(box7$TSS, box7$MESE, sd)
box8_mean_SPM <- tapply(box8$TSS, box8$MESE, mean);box8_sd_SPM <- tapply(box8$TSS, box8$MESE, sd)
box9_mean_SPM <- tapply(box9$TSS, box9$MESE, mean);box9_sd_SPM <- tapply(box9$TSS, box9$MESE, sd)
box10_mean_SPM <- tapply(box10$TSS, box10$MESE, mean);box10_sd_SPM <- tapply(box10$TSS, box10$MESE, sd)


box1$POM<-box1$POC*1.88;box2$POM<-box2$POC*1.88
box3$POM<-box3$POC*1.88;box4$POM<-box4$POC*1.88
box5$POM<-box5$POC*1.88;box6$POM<-box6$POC*1.88
box7$POM<-box7$POC*1.88;box8$POM<-box8$POC*1.88
box9$POM<-box9$POC*1.88;box10$POM<-box10$POC*1.88

box1_mean_POM <- tapply(box1$POM, box1$MESE, mean);box1_sd_POM <- tapply(box1$POM, box1$MESE, sd)
box2_mean_POM <- tapply(box2$POM, box2$MESE, mean);box2_sd_POM <- tapply(box2$POM, box2$MESE, sd)
box3_mean_POM <- tapply(box3$POM, box3$MESE, mean);box3_sd_POM <- tapply(box3$POM, box3$MESE, sd)
box4_mean_POM <- tapply(box4$POM, box4$MESE, mean);box4_sd_POM <- tapply(box4$POM, box4$MESE, sd)
box5_mean_POM <- tapply(box5$POM, box5$MESE, mean);box5_sd_POM <- tapply(box5$POM, box5$MESE, sd)
box6_mean_POM <- tapply(box6$POM, box6$MESE, mean);box6_sd_POM <- tapply(box6$POM, box6$MESE, sd)
box7_mean_POM <- tapply(box7$POM, box7$MESE, mean);box7_sd_POM <- tapply(box7$POM, box7$MESE, sd)
box8_mean_POM <- tapply(box8$POM, box8$MESE, mean);box8_sd_POM <- tapply(box8$POM, box8$MESE, sd)
box9_mean_POM <- tapply(box9$POM, box9$MESE, mean);box9_sd_POM <- tapply(box9$POM, box9$MESE, sd)
box10_mean_POM <- tapply(box10$POM, box10$MESE, mean);box10_sd_POM <- tapply(box10$POM, box10$MESE, sd)

POC_box1<-c(0.5,0.4,0.5,0.8,0.6,0.7,0.8,0.9,0.7,0.4,0.6,0.4)
POC_box1_sd<-c(0.5,0.4,0.5,0.8,0.6,0.7,0.8,0.9,0.7,0.4,0.6,0.4)

POM_box1<-POC_box1*1.88
POM_box1_sd<-POC_box1_sd*1.88

#setwd('C:/Users/gi/Desktop/finaleRITAMRE/nuoviin2')
setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice/piuSILT6_eutrop9')
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
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

xx<-seq(1,12)
epsilon <- 0.08

png('All_boxes_SPM_e9b.png',res=300,
    width=30, height = 20, units = "cm")
par(mfrow=c(2,5), mar=c(3,4.5,2,0))
plot(rdate[1227:1238], solid$wn1[1227:1238], type='l', col='#313695',lwd=2, main='Box1', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(box1_mean_SPM, col='#313695',lwd=2.5, cex=2,ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box1_mean_SPM-box1_sd_SPM,xx,box1_mean_SPM+box1_sd_SPM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_mean_SPM-box1_sd_SPM,xx+epsilon,box1_mean_SPM-box1_sd_SPM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_mean_SPM+box1_sd_SPM,xx+epsilon,box1_mean_SPM+box1_sd_SPM, col='#313695',lwd=1.8)

#plot(empty1_v05, ylim=c(0,2000), type='p',pch=25,col='#10178c',lwd=2)
plot(rdate[1227:1238], solid$wn2[1227:1238], type='l', col='#4575b4',lwd=2,main='Box2',
     ylab= '', xlab= '', cex.lab=2 , cex.main=1.6 , cex.axis=1.3,ylim=c(0,100))
par(new=T)
plot(box2_mean_SPM, col='#4575b4',lwd=2.5, cex=2, ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box2_mean_SPM-box2_sd_SPM,xx,box2_mean_SPM+box2_sd_SPM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_mean_SPM-box2_sd_SPM,xx+epsilon,box2_mean_SPM-box2_sd_SPM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_mean_SPM+box2_sd_SPM,xx+epsilon,box2_mean_SPM+box2_sd_SPM, col='#4575b4',lwd=1.8)


plot(rdate[1227:1238],solid$wn4[1227:1238],   type='l',col='#abd9e9',lwd=2,main='Box4',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6 , ylim=c(0,100),cex.axis=1.3)
par(new=T)
plot(box4_mean_SPM, col='#abd9e9',cex=2, lwd=2.5,ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box4_mean_SPM-box4_sd_SPM, xx,box4_mean_SPM+box4_sd_SPM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_mean_SPM-box4_sd_SPM,xx+epsilon,box4_mean_SPM-box4_sd_SPM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_mean_SPM+box4_sd_SPM,xx+epsilon,box4_mean_SPM+box4_sd_SPM, col='#abd9e9',lwd=1.8)

#plot(SPM$BOX4, col='#4575b466', ylim=c(0,40), xaxt='n',yaxt='n') 
plot(rdate[1227:1238],solid$wn3[1227:1238],     type='l',col='#f7df9e',lwd=2,main='Box3',
     xlab= '',ylab= '', cex.lab=2 , ylim=c(0,100), cex.main=1.6 , cex.axis=1.3)
par(new=T)
plot(box3_mean_SPM, col='#f7df9e', cex=2, lwd=2.5,ylim=c(0,100), xaxt='n',yaxt='n') 

segments(xx,box3_mean_SPM-box3_sd_SPM,xx,box3_mean_SPM+box3_sd_SPM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box3_mean_SPM-box3_sd_SPM,xx+epsilon,box3_mean_SPM-box3_sd_SPM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box3_mean_SPM+box3_sd_SPM,xx+epsilon,box3_mean_SPM+box3_sd_SPM, col='#f7df9e',lwd=1.8)


plot(rdate[1227:1238] ,solid$wn5[1227:1238], type='l',col='#f7d067',lwd=2, main='Box5',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6 , cex.axis=1.3,ylim=c(0,100))
par(new=T)
plot(box5_mean_SPM,col='#f7df9e',cex=2,lwd=2.5, ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box5_mean_SPM-box5_sd_SPM,xx,box5_mean_SPM+box5_sd_SPM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box5_mean_SPM-box5_sd_SPM,xx+epsilon,box5_mean_SPM-box5_sd_SPM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box5_mean_SPM+box5_sd_SPM,xx+epsilon,box5_mean_SPM+box5_sd_SPM, col='#f7df9e',lwd=1.8)

plot(rdate[1227:1238] ,solid$wc6[1227:1238],     type='l',col='#edba55',lwd=2, main='Box6',
     ylab='SPM (mg/L) ',xlab= '', cex.lab=2 , 
     cex.main=1.6 ,ylim=c(0,100), cex.axis=1.3)#
par(new=T)
plot(box6_mean_SPM,col='#edba55',lwd=2.5, cex=2, ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box6_mean_SPM-box6_sd_SPM,xx,box6_mean_SPM+box6_sd_SPM, col='#edba55', lwd=1.8)
segments(xx-epsilon,box6_mean_SPM-box6_sd_SPM,xx+epsilon,box6_mean_SPM-box6_sd_SPM, col='#edba55', lwd=1.8)
segments(xx-epsilon,box6_mean_SPM+box6_sd_SPM,xx+epsilon,box6_mean_SPM+box6_sd_SPM, col='#edba55',lwd=1.8)

plot(rdate[1227:1238] ,solid$wc7[1227:1238] ,     type='l',col='#f79220',lwd=2, main='Box7',
     ylab='',xlab= '', cex.lab=2 , cex.main=1.6 ,ylim=c(0,100), cex.axis=1.3)#
par(new=T)
plot(box7_mean_SPM,lwd=2.5, cex=2, col='#f79220', ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box7_mean_SPM-box7_sd_SPM,xx,box7_mean_SPM+box7_sd_SPM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_mean_SPM-box7_sd_SPM,xx+epsilon,box7_mean_SPM-box7_sd_SPM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_mean_SPM+box7_sd_SPM,xx+epsilon,box7_mean_SPM+box7_sd_SPM, col='#f79220',lwd=1.8)

plot(rdate[1227:1238] ,solid$ws8[1227:1238] ,     type='l',ylab= '', col='#f46d43',lwd=2, main='Box8',
     xlab= '', cex.lab=2 , cex.main=1.6 , ylim=c(0,100), cex.axis=1.3)
par(new=T)
plot(box8_mean_SPM, lwd=2.5, cex=2,col='#f46d43', ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box8_mean_SPM-box8_sd_SPM,xx,box8_mean_SPM+box8_sd_SPM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_mean_SPM-box8_sd_SPM,xx+epsilon,box8_mean_SPM-box8_sd_SPM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_mean_SPM+box8_sd_SPM,xx+epsilon,box8_mean_SPM+box8_sd_SPM, col='#f46d43',lwd=1.8)


plot(rdate[1227:1238] ,solid$ws9[1227:1238] ,     type='l',col='#d73027',ylab= '',lwd=2, main='Box9',
     xlab= '', cex.lab=2 , cex.main=1.6 , ylim=c(0,100), cex.axis=1.3)
par(new=T)
plot(box9_mean_SPM,col='#d73027', lwd=2.5, cex=2, ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box9_mean_SPM-box9_sd_SPM,xx,box9_mean_SPM+box9_sd_SPM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_mean_SPM-box9_sd_SPM,xx+epsilon,box9_mean_SPM-box9_sd_SPM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_mean_SPM+box9_sd_SPM,xx+epsilon,box9_mean_SPM+box9_sd_SPM, col='#d73027',lwd=1.8)

plot(rdate[1227:1238],solid$ws10[1227:1238],     
     type='l',col='#a50028',ylab= '',lwd=2, main='Box10',
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(box10_mean_SPM, lwd=2.5, cex=2,col='#a50028', ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box10_mean_SPM-box10_sd_SPM,xx,box10_mean_SPM+box10_sd_SPM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_mean_SPM-box10_sd_SPM,xx+epsilon,box10_mean_SPM-box10_sd_SPM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_mean_SPM+box10_sd_SPM,xx+epsilon,box10_mean_SPM+box10_sd_SPM, col='#a50028',lwd=1.8)
dev.off()

png('POM_con_e9b.png',width = 700, height = 480, units = "px")
par(mfrow=c(2,5), mar=c(3,1,1,1), oma=c(0,4,3.3,1), bty='n')
plot(rdate[1227:1238], POMs$wn1[1227:1238],  
     type='l', col='#31369577',lwd=2, main='Box1', 
     ylab='mg/L',xlab= '', cex.lab=2 , 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(box1_mean_POM,pch=1, cex=2,lwd=1, col='#313695', ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box1_mean_POM-box1_sd_POM,xx,box1_mean_POM+box1_sd_POM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_mean_POM-box1_sd_POM,xx+epsilon,box1_mean_POM-box1_sd_POM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_mean_POM+box1_sd_POM,xx+epsilon,box1_mean_POM+box1_sd_POM, col='#313695',lwd=1.8)

mtext('mg/L', side=2, line=3, outer=F)
mtext('Particolato organico in sospensione (POM)',
      side=3, line=2, outer=T, font=2)

plot(rdate[1227:1238] ,POMs$wn2[1227:1238],lty=1,    
     type='l', col='#4575b477',lwd=2,main='Box2',ylab= '',
     xlab= '', cex.lab=2 , cex.main=1.6 , yaxt='n',cex.axis=1.3,ylim=c(0,10))
par(new=T)
plot(box2_mean_POM,pch=1, cex=2,lwd=1, col='#4575b4', ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box2_mean_POM-box2_sd_POM,xx,box2_mean_POM+box2_sd_POM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_mean_POM-box2_sd_POM,xx+epsilon,box2_mean_POM-box2_sd_POM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_mean_POM+box2_sd_POM,xx+epsilon,box2_mean_POM+box2_sd_POM, col='#4575b4',lwd=1.8)


plot(rdate[1227:1238],POMs$wn4[1227:1238], ylim=c(0,10),   type='l',
     col='#abd9e988',lwd=2,main='Box4',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6 , yaxt='n',cex.axis=1.3)
par(new=T)
plot(box4_mean_POM, col='#4575b466',cex=2, lwd=1, ylim=c(0,40), xaxt='n',yaxt='n') 
segments(xx,box4_mean_POM-box4_sd_POM, xx,box4_mean_POM+box4_sd_POM, col='#abd9e9', lwd=1.8)

segments(xx-epsilon,box4_mean_POM-box4_sd_POM,xx+epsilon,box4_mean_POM-box4_sd_POM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_mean_POM+box4_sd_POM,xx+epsilon,box4_mean_POM+box4_sd_POM, col='#abd9e9',lwd=1.8)


plot(rdate[1227:1238] ,POMs$wn3[1227:1238],  yaxt='n',   
     type='l',col='#DDF26B77',lwd=2,main='Box3',
     xlab= '', ylab= '', cex.lab=2 , ylim=c(0,10), 
     cex.main=1.6 , cex.axis=1.3)
par(new=T)
plot(box3_mean_POM,pch=1, cex=2, lwd=1,col='#DDF26B',ylab='', 
     ylim=c(0,10), xaxt='n',yaxt='n')
segments(xx,box3_mean_POM-box3_sd_POM,xx,box3_mean_POM+box3_sd_POM, col='#DDF26B', lwd=1.8)
segments(xx-epsilon,box3_mean_POM-box3_sd_POM,xx+epsilon,box3_mean_POM-box3_sd_POM, col='#DDF26B', lwd=1.8)
segments(xx-epsilon,box3_mean_POM+box3_sd_POM,xx+epsilon,box3_mean_POM+box3_sd_POM, col='#DDF26B',lwd=1.8)


plot(rdate[1227:1238] ,POMs$wn5[1227:1238],     
     type='l',col='#e5e57277',lwd=2, main='Box5',yaxt='n',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6,
     cex.axis=1.3,ylim=c(0,10))
par(new=T)
plot(box5_mean_POM,pch=1, cex=2,lwd=1, col='#e5e572',ylab = '',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box5_mean_POM-box5_sd_POM,xx,box5_mean_POM+box5_sd_POM, col='#e5e572', lwd=1.8)
segments(xx-epsilon,box5_mean_POM-box5_sd_POM,xx+epsilon,box5_mean_POM-box5_sd_POM, col='#e5e572', lwd=1.8)
segments(xx-epsilon,box5_mean_POM+box5_sd_POM,xx+epsilon,box5_mean_POM+box5_sd_POM, col='#e5e572',lwd=1.8)

plot(rdate[1227:1238] ,POMs$wc6[1227:1238],    
     type='l',col='#fed97677',lwd=2, main='Box6',
     ylab=' ',xlab= '', cex.lab=2 , 
     cex.main=1.6 ,ylim=c(0,10), cex.axis=1.3)#
par(new=T)
plot(box6_mean_POM,pch=1, cex=2, lwd=1,col='#fed976', 
     ylim=c(0,10),ylab='',
     xaxt='n',yaxt='n') 
mtext('mg/L', side=2, line=3, outer=F)
segments(xx,box6_mean_POM-box6_sd_POM,xx,box6_mean_POM+box6_sd_POM, col='#fed976', lwd=1.8)
segments(xx-epsilon,box6_mean_POM-box6_sd_POM,xx+epsilon,box6_mean_POM-box6_sd_POM, col='#fed976', lwd=1.8)
segments(xx-epsilon,box6_mean_POM+box6_sd_POM,xx+epsilon,box6_mean_POM+box6_sd_POM, col='#fed976',lwd=1.8)

plot(rdate[1227:1238] ,POMs$wc7[1227:1238],    yaxt='n',
     type='l',col='#f7922077',lwd=2, main='Box7',
     ylab='',xlab= '', cex.lab=2 , cex.main=1.6 ,ylim=c(0,10), cex.axis=1.3)#
par(new=T)
plot(box7_mean_POM,pch=1, cex=2, lwd=1,col='#f79220', ylim=c(0,10),ylab='',
     xaxt='n',yaxt='n') 
segments(xx,box7_mean_POM-box7_sd_POM,xx,box7_mean_POM+box7_sd_POM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_mean_POM-box7_sd_POM,xx+epsilon,box7_mean_POM-box7_sd_POM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_mean_POM+box7_sd_POM,xx+epsilon,box7_mean_POM+box7_sd_POM, col='#f79220',lwd=1.8)

plot(rdate[1227:1238],POMs$ws8[1227:1238],   
     type='l',ylab= '', col='#f46d4377',lwd=2, main='Box8',
     xlab= '', cex.lab=2 ,cex.main=1.6 , ylim=c(0,10),yaxt='n',
     cex.axis=1.3)
par(new=T)
plot(box8_mean_POM, pch=1, cex=2,col='#f46d43',ylab='',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box8_mean_POM-box8_sd_POM,xx,box8_mean_POM+box8_sd_POM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_mean_POM-box8_sd_POM,xx+epsilon,box8_mean_POM-box8_sd_POM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_mean_POM+box8_sd_POM,xx+epsilon,box8_mean_POM+box8_sd_POM, col='#f46d43',lwd=1.8)


plot(rdate[1227:1238] ,POMs$ws9[1227:1238],     
     type='l',col='#d7302777',ylab= '',lwd=2, main='Box9',
     xlab= '', cex.lab=2 , cex.main=1.6 , 
     yaxt='n',ylim=c(0,10), cex.axis=1.3)
par(new=T)
plot(box9_mean_POM, pch=1, cex=2,lwd=1,col='#d73027',ylab='',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box9_mean_POM-box9_sd_POM,xx,box9_mean_POM+box9_sd_POM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_mean_POM-box9_sd_POM,xx+epsilon,box9_mean_POM-box9_sd_POM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_mean_POM+box9_sd_POM,xx+epsilon,box9_mean_POM+box9_sd_POM, col='#d73027',lwd=1.8)

plot(rdate[1227:1238] ,POMs$ws10[1227:1238],yaxt='n',     
     type='l',col='#a5002877',ylab= '',lwd=2, main='Box10',
     xlab= '', cex.lab=2 , cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(box10_mean_POM,pch=1, cex=2,lwd=1,col='#a50028',ylab='',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box10_mean_POM-box10_sd_POM,xx,box10_mean_POM+box10_sd_POM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_mean_POM-box10_sd_POM,xx+epsilon,box10_mean_POM-box10_sd_POM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_mean_POM+box10_sd_POM,xx+epsilon,box10_mean_POM+box10_sd_POM, col='#a50028',lwd=1.8)
dev.off()
