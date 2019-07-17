setwd('C:/Users/Acer/Dropbox/');library(dplyr)
setwd('C:/Users/gi/Dropbox/')

box1_SPM<-read.table('Box1_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box2_SPM<-read.table('Box2_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box3_SPM<-read.table('Box3_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box4_SPM<-read.table('Box4_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box5_SPM<-read.table('Box5_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box6_SPM<-read.table('Box6_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box7_SPM<-read.table('Box7_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box8_SPM<-read.table('Box8_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box9_SPM<-read.table('Box9_tss_poc.txt', header=T)   #ricordare di convertire poc a pom
box10_SPM<-read.table('Box10_tss_poc.txt', header=T)   #ricordare di convertire poc a pom

#c2<-cast(box1_SPM, ANNO ~ MESE, value='TSS', mean)
#c3<-cast(box1_SPM, ANNO ~ MESE, value='TSS', min)
#c4<-cast(box1_SPM, ANNO ~ MESE, value='TSS', max)

#media1<-as.numeric(c(c2[1,2:13],c2[2,2:13],c2[3,2:13],c2[4,2:13],c2[5,2:13]))

media_mese<-function(x){x1<-cast(x, ANNO ~ MESE, value='TSS', mean)
as.numeric(c(x1[1,2:13],x1[2,2:13],x1[3,2:13],x1[4,2:13],x1[5,2:13]))
}
max_mese<-function(x){x1<-cast(x, ANNO ~ MESE, value='TSS', max)
as.numeric(c(x1[1,2:13],x1[2,2:13],x1[3,2:13],x1[4,2:13],x1[5,2:13]))
}
min_mese<-function(x){x1<-cast(x, ANNO ~ MESE, value='TSS', min)
as.numeric(c(x1[1,2:13],x1[2,2:13],x1[3,2:13],x1[4,2:13],x1[5,2:13]))
}

media_mese2<-function(x){x1<-cast(x, ANNO ~ MESE, value='POC', mean)
as.numeric(c(x1[1,2:13]*1.88,x1[2,2:13]*1.88,x1[3,2:13]*1.88,x1[4,2:13]*1.88,x1[5,2:13]*1.88))
}
max_mese2<-function(x){x1<-cast(x, ANNO ~ MESE, value='TSS', max)
as.numeric(c(x1[1,2:13]*1.88,x1[2,2:13]*1.88,x1[3,2:13]*1.88,x1[4,2:13]*1.88,x1[5,2:13]*1.88))
}
min_mese2<-function(x){x1<-cast(x, ANNO ~ MESE, value='TSS', min)
as.numeric(c(x1[1,2:13]*1.88,x1[2,2:13]*1.88,x1[3,2:13]*1.88,x1[4,2:13]*1.88,x1[5,2:13]*1.88))
}
media_mese2(box1_SPM)
mp5<-media_mese2(box5_SPM)

m1<-media_mese(box1_SPM);m2<-media_mese(box2_SPM);m3<-media_mese(box3_SPM)
m4<-media_mese(box4_SPM);m5<-media_mese(box5_SPM);m6<-media_mese(box6_SPM)
m7<-media_mese(box7_SPM);m8<-media_mese(box8_SPM);m9<-media_mese(box9_SPM);m10<-media_mese(box10_SPM)

mm1<-max_mese(box1_SPM);mm2<-max_mese(box2_SPM);mm3<-max_mese(box3_SPM)
mm4<-max_mese(box4_SPM);mm5<-max_mese(box5_SPM);mm6<-max_mese(box6_SPM)
mm7<-max_mese(box7_SPM);mm8<-max_mese(box8_SPM);mm9<-max_mese(box9_SPM);mm10<-max_mese(box10_SPM)

mn1<-min_mese(box1_SPM);mn2<-min_mese(box2_SPM);mn3<-min_mese(box3_SPM)
mn4<-min_mese(box4_SPM);mn5<-min_mese(box5_SPM);mn6<-min_mese(box6_SPM)
mn7<-min_mese(box7_SPM);mn8<-min_mese(box8_SPM);mn9<-min_mese(box9_SPM);mn10<-min_mese(box10_SPM)

setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\REference_OK\\')     #sim_cl

tots<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(tots)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

time.steps <- tots[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
yy1<-c(0,0,60,60)
png('Solidi_box5b.png', height = 14,width = 18, units='cm', res=300)
par(mfrow=c(1,2), bty='n', mar=c(2,4,2,1))
plot(rdate,tots$wn5, type='l', xlim=c(rdate[1],rdate[2428]), xlab='',
     main='Suspended Particulate Matter', col='#e6c3d100', ylab='', ylim=c(0,60))
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate,tots$wn5, type='l', xlim=c(rdate[1],rdate[2428]), xlab='',
     main='Suspended Particulate Matter', col='snow4', ylab='', ylim=c(0,60))
par(new=T)
plot(rdate[1215:1274],jitter(m5), pch=19,cex=1.2, col='#e6c3d199',xlab='',
     xlim=c(rdate[1],rdate[2428]),
     ylab='mg/L',xaxt='n', ylim=c(0,60), yaxt='n')
legend(rdate[1550],60, legend =c('Model','Data'),pch=c(19,19), col=c('snow4','#e6c3d177')) 

plot(rdate,POMs$wn5, type='l', xlim=c(rdate[1],rdate[2428]),xlab='',
     main='Particulate Organic Matter', col='snow4', ylab='mg/L', ylim=c(0,10))
par(new=T)
plot(rdate[1215:1274],jitter(mp5), pch=19, col='#b8d8bd99',xlab='',xlim=c(rdate[1],rdate[2428]),
     ylab='',xaxt='n', ylim=c(0,10), yaxt='n')
legend(rdate[1550],10, legend =c('Model','Data'),pch=c(19,19), col=c('snow4','#b8d8bd99')) 
dev.off()

getwd()


plot(rdate,tots$wn1, type='l', xlim=c(rdate[1],rdate[2428]),
     main='2002', col='red', ylab='', ylim=c(0,90))
par(new=T)
plot(rdate,tots$wn2, type='l', xlim=c(rdate[1],rdate[2428]),
     main='2002', col='red', ylab='', ylim=c(0,90))
par(new=T)
plot(rdate,tots$wn3, type='l', xlim=c(rdate[1],rdate[2428]),
     main='2002', col='red', ylab='', ylim=c(0,90))
par(new=T)


plot(rdate[1215:1274],jitter(m1), pch=19, col='#e6c3d177',xlab='',xlim=c(rdate[1],rdate[2428]),
     ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
par(new=T)
plot(rdate,POMs$wn1, type='l', xlim=c(rdate[1],rdate[2428]),
     main='2002', col='green', ylab='', ylim=c(0,10))
par(new=T)
plot(rdate[1215:1274],jitter(m1), pch=19, col='#e6c3d177',xlab='',xlim=c(rdate[1],rdate[2428]),
     ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate,tots$wn1, type='l', xlim=c(rdate[1],rdate[2428]),
     main='2002', col='red', ylab='', ylim=c(0,90))
#mtext('box1',side=2, outer=T)
par(new=T)
plot(rdate[1215:1274],jitter(mm1), pch='-', cex=2,col='blue',xlab='',xlim=c(rdate[1],rdate[2428]),
     ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
par(new=T)
plot(rdate[1215:1274],jitter(mn1), pch='-', cex=2,col='cyan',xlab='',xlim=c(rdate[1],rdate[2428]),
     ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
#mtext('box1',side=2, outer=T)

plot(rdate,tots$wn2, type='l', xlim=c(rdate[1],rdate[2428]),
     main='2002', col='red', ylab='', ylim=c(0,90))
par(new=T)
plot(rdate[1215:1274],jitter(m2), pch=19, col='#e6c3d177',xlab='',xlim=c(rdate[1],rdate[2428]),
     ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
#mtext('box1',side=2, outer=T)

plot(rdate,tots$wn3, type='l', xlim=c(rdate[1],rdate[2428]),
     main='2002', col='red', ylab='', ylim=c(0,90))
par(new=T)
plot(rdate[1215:1274],jitter(m3), pch=19, col='#e6c3d177',xlab='',xlim=c(rdate[1],rdate[2428]),
     ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
#mtext('box1',side=2, outer=T)
plot(rdate,tots$wn4, type='l', xlim=c(rdate[1],rdate[2428]),
     main='2002', col='red', ylab='', ylim=c(0,90))
par(new=T)
plot(rdate[1215:1274],jitter(m4), pch=19, col='#e6c3d177',xlab='',xlim=c(rdate[1],rdate[2428]),
     ylab='',xaxt='n', ylim=c(0,90), yaxt='n')

plot(rdate,tots$wn5, type='l', xlim=c(rdate[1],rdate[2428]),
     main='2002', col='red', ylab='', ylim=c(0,90))
par(new=T)
plot(rdate[1215:1274],jitter(m5), pch=19, col='#e6c3d177',xlab='',xlim=c(rdate[1],rdate[2428]),
     ylab='',xaxt='n', ylim=c(0,90), yaxt='n')
