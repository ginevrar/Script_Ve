setwd('C:/Users/gi/Dropbox/res_eutr')
solid_1<-read.csv("Total_solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solid_1)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

POMs_1<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs_1)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

silt_1<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_1)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

setwd('C:/Users/gi/Dropbox/res_eutr17')
solid_17<-read.csv("Total_solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solid_17)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

POMs_17<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs_17)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

silt_17<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_17)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

setwd('C:/Users/gi/Dropbox/res_eutr9')
solid_9<-read.csv("Total_solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solid_9)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

POMs_9<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs_9)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

silt_9<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_9)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

setwd('C:/Users/gi/Dropbox/res_eutr19')
solid_19<-read.csv("Total_solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solid_19)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

POMs_19<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs_19)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

silt_19<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_19)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

time.steps <- solid_19[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

xx<-seq(1,12);epsilon <- 0.08


png('Confronto_SPM_res__.png',res=300,
    width=30, height = 20, units = "cm")
par(mfrow=c(2,5), mar=c(3,4.5,2,0))
plot(rdate[1227:1238], solid_1$wn1[1227:1238], type='l', col=1,lwd=2, main='Box1', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_17$wn1[1227:1238], type='l', col=2,lwd=2, main='Box1', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_9$wn1[1227:1238], type='l', col=3,lwd=2, main='Box1', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
legend(rdate[1233],90,legend=c('s1','s17','s9','s19'),col=c(1,2,3,4),
       lty=1)
par(new=T)
plot(rdate[1227:1238], solid_19$wn1[1227:1238], type='l', col=4,lwd=2, main='Box1', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(box1_median_SPM, col='#313695',lwd=2.5, cex=2,ylim=c(0,100), xaxt='n',yaxt='n')



segments(xx,box1_min_SPM,xx,+box1_max_SPM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_min_SPM,xx+epsilon,box1_min_SPM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_max_SPM,xx+epsilon,box1_max_SPM, col='#313695', lwd=1.8)

plot(rdate[1227:1238], solid_1$wn2[1227:1238], type='l', col=1,lwd=2, main='Box2', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_17$wn2[1227:1238], type='l', col=2,lwd=2, 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_9$wn2[1227:1238], type='l', col=3,lwd=2, 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_19$wn2[1227:1238], type='l', col=4,lwd=2, 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(box2_median_SPM, col='#4575b4',lwd=2.5, cex=2, ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box2_min_SPM,xx,+box2_max_SPM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_min_SPM,xx+epsilon,box2_min_SPM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_max_SPM,xx+epsilon,box2_max_SPM, col='#4575b4', lwd=1.8)

plot(rdate[1227:1238], solid_1$wn4[1227:1238], type='l', col=1,lwd=2, main='Box4', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_17$wn4[1227:1238], type='l', col=2,lwd=2,   
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_9$wn4[1227:1238], type='l', col=3,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_19$wn4[1227:1238], type='l', col=4,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
	 par(new=T)
plot(box4_median_SPM, col='#abd9e9',cex=2, lwd=2.5,ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box4_min_SPM,xx,+box4_max_SPM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_min_SPM,xx+epsilon,box4_min_SPM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_max_SPM,xx+epsilon,box4_max_SPM, col='#abd9e9', lwd=1.8)

#plot(SPM$BOX4, col='#4575b466', ylim=c(0,40), xaxt='n',yaxt='n') 
plot(rdate[1227:1238], solid_1$wn3[1227:1238], type='l', col=1,lwd=2, main='Box3', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_17$wn3[1227:1238], type='l', col=2,lwd=2,   
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_9$wn3[1227:1238], type='l', col=3,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_19$wn3[1227:1238], type='l', col=4,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
	 par(new=T)
par(new=T)
plot(box3_median_SPM, col='#f7df9e', cex=2, lwd=2.5,ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box3_min_SPM,xx,+box3_max_SPM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box3_min_SPM,xx+epsilon,box3_min_SPM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box3_max_SPM,xx+epsilon,box3_max_SPM, col='#f7df9e', lwd=1.8)

plot(rdate[1227:1238], solid_1$wn5[1227:1238], type='l', col=1,lwd=2, main='Box5', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_17$wn5[1227:1238], type='l', col=2,lwd=2,   
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_9$wn5[1227:1238], type='l', col=3,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_19$wn5[1227:1238], type='l', col=4,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
	 par(new=T)
par(new=T)
plot(box5_median_SPM,col='#f7d067',cex=2,lwd=2.5, ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box5_min_SPM,xx,+box5_max_SPM, col='#f7d067', lwd=1.8)
segments(xx-epsilon,box5_min_SPM,xx+epsilon,box5_min_SPM, col='#f7d067', lwd=1.8)
segments(xx-epsilon,box5_max_SPM,xx+epsilon,box5_max_SPM, col='#f7d067', lwd=1.8)

plot(rdate[1227:1238], solid_1$wc6[1227:1238], type='l', col=1,lwd=2, main='Box6', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_17$wc6[1227:1238], type='l', col=2,lwd=2,   
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_9$wc6[1227:1238], type='l', col=3,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_19$wc6[1227:1238], type='l', col=4,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
	 par(new=T)
par(new=T)
plot(box6_median_SPM,col='#edba55',lwd=2.5, cex=2, ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box6_min_SPM,xx,+box6_max_SPM, col='#edba55', lwd=1.8)
segments(xx-epsilon,box6_min_SPM,xx+epsilon,box6_min_SPM, col='#edba55', lwd=1.8)
segments(xx-epsilon,box6_max_SPM,xx+epsilon,box6_max_SPM, col='#edba55', lwd=1.8)


plot(rdate[1227:1238], solid_1$wc7[1227:1238], type='l', col=1,lwd=2, main='Box6', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_17$wc7[1227:1238], type='l', col=2,lwd=2,   
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_9$wc7[1227:1238], type='l', col=3,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_19$wc7[1227:1238], type='l', col=4,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(box7_median_SPM,lwd=2.5, cex=2, col='#f79220', ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box7_min_SPM,xx,+box7_max_SPM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_min_SPM,xx+epsilon,box7_min_SPM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_max_SPM,xx+epsilon,box7_max_SPM, col='#f79220', lwd=1.8)

plot(rdate[1227:1238], solid_1$ws8[1227:1238], type='l', col=1,lwd=2, main='Box8', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_17$ws8[1227:1238], type='l', col=2,lwd=2,   
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_9$ws8[1227:1238], type='l', col=3,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_19$ws8[1227:1238], type='l', col=4,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
	 par(new=T)
plot(box8_median_SPM, lwd=2.5, cex=2,col='#f46d43', ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box8_min_SPM,xx,+box8_max_SPM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_min_SPM,xx+epsilon,box8_min_SPM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_max_SPM,xx+epsilon,box8_max_SPM, col='#f46d43', lwd=1.8)

plot(rdate[1227:1238], solid_1$ws9[1227:1238], type='l', col=1,lwd=2, main='Box8', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_17$ws9[1227:1238], type='l', col=2,lwd=2,   
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_9$ws9[1227:1238], type='l', col=3,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(box9_median_SPM,col='#d73027', lwd=2.5, cex=2, ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box9_min_SPM,xx,+box9_max_SPM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_min_SPM,xx+epsilon,box9_min_SPM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_max_SPM,xx+epsilon,box9_max_SPM, col='#d73027', lwd=1.8)

plot(rdate[1227:1238], solid_1$ws10[1227:1238], type='l', col=1,lwd=2, main='Box8', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_17$ws10[1227:1238], type='l', col=2,lwd=2,   
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(rdate[1227:1238], solid_9$ws10[1227:1238], type='l', col=3,lwd=2,  
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,100))
par(new=T)
plot(box10_median_SPM, lwd=2.5, cex=2,col='#a50028', ylim=c(0,100), xaxt='n',yaxt='n') 
segments(xx,box10_min_SPM,xx,+box10_max_SPM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_min_SPM,xx+epsilon,box10_min_SPM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_max_SPM,xx+epsilon,box10_max_SPM, col='#a50028', lwd=1.8)
dev.off()

png('confronto_POMs_con.png',width = 700, height = 480, units = "px")
par(mfrow=c(2,5), mar=c(3,1,1,1), oma=c(0,4,3.3,1), bty='n')
plot(rdate[1227:1238], POMs_1$wn1[1227:1238], type='l', col=1,lwd=2, main='Box1', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
legend(rdate[1233],8,legend=c('s1','s17','s9','s19'),col=c(1,2,3,4),
       lty=1)
par(new=T)
plot(rdate[1227:1238], POMs_17$wn1[1227:1238], type='l', col=2,lwd=2, main='Box1', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_9$wn1[1227:1238], type='l', col=3,lwd=2, main='Box1', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_19$wn1[1227:1238], type='l', col=4,lwd=2, main='Box1', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
par(new=T)
plot(box1_median_POM,pch=1, cex=2,lwd=1, col='#313695', ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box1_min_POM,xx,+box1_max_POM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_min_POM,xx+epsilon,box1_min_POM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_max_POM,xx+epsilon,box1_max_POM, col='#313695', lwd=1.8)

mtext('mg/L', side=2, line=3, outer=F)
mtext('Particolato organico in sospensione (POM)',
      side=3, line=2, outer=T, font=2)

plot(rdate[1227:1238], POMs_1$wn2[1227:1238], type='l', col=1,lwd=2, main='Box2', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_17$wn2[1227:1238], type='l', col=2,lwd=2, 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_9$wn2[1227:1238], type='l', col=3,lwd=2, 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_19$wn2[1227:1238], type='l', col=4,lwd=2, 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(box2_median_POM,pch=1, cex=2,lwd=1, col='#4575b4', ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box2_min_POM,xx,+box2_max_POM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_min_POM,xx+epsilon,box2_min_POM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_max_POM,xx+epsilon,box2_max_POM, col='#4575b4', lwd=1.8)

plot(rdate[1227:1238], POMs_1$wn4[1227:1238], type='l', col=1,lwd=2, main='Box4', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_17$wn4[1227:1238], type='l', col=2,lwd=2,   
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_9$wn4[1227:1238], type='l', col=3,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_19$wn4[1227:1238], type='l', col=4,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
	 par(new=T)
plot(box4_median_POM, col='#4575b466',cex=2, lwd=1, ylim=c(0,40), xaxt='n',yaxt='n') 
segments(xx,box4_min_POM,xx,+box4_max_POM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_min_POM,xx+epsilon,box4_min_POM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_max_POM,xx+epsilon,box4_max_POM, col='#abd9e9', lwd=1.8)

plot(rdate[1227:1238], POMs_1$wn3[1227:1238], type='l', col=1,lwd=2, main='Box3', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_17$wn3[1227:1238], type='l', col=2,lwd=2,   
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_9$wn3[1227:1238], type='l', col=3,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_19$wn3[1227:1238], type='l', col=4,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
	 par(new=T)
par(new=T)
plot(box3_median_POM,pch=1, cex=2, lwd=1,col='#DDF26B',ylab='', 
     ylim=c(0,10), xaxt='n',yaxt='n')
segments(xx,box3_min_POM,xx,+box3_max_POM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box3_min_POM,xx+epsilon,box3_min_POM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box3_max_POM,xx+epsilon,box3_max_POM, col='#f7df9e', lwd=1.8)

plot(rdate[1227:1238], POMs_1$wn5[1227:1238], type='l', col=1,lwd=2, main='Box5', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_17$wn5[1227:1238], type='l', col=2,lwd=2,   
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_9$wn5[1227:1238], type='l', col=3,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_19$wn5[1227:1238], type='l', col=4,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
	 par(new=T)
par(new=T)
plot(box5_median_POM,pch=1, cex=2,lwd=1, col='#e5e572',ylab = '',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box5_min_POM,xx,+box5_max_POM, col='#f7d067', lwd=1.8)
segments(xx-epsilon,box5_min_POM,xx+epsilon,box5_min_POM, col='#f7d067', lwd=1.8)
segments(xx-epsilon,box5_max_POM,xx+epsilon,box5_max_POM, col='#f7d067', lwd=1.8)

plot(rdate[1227:1238], POMs_1$wc6[1227:1238], type='l', col=1,lwd=2, main='Box6', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_17$wc6[1227:1238], type='l', col=2,lwd=2,   
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_9$wc6[1227:1238], type='l', col=3,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_19$wc6[1227:1238], type='l', col=4,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
	 par(new=T)
par(new=T)
plot(box6_median_POM,pch=1, cex=2, lwd=1,col='#fed976', 
     ylim=c(0,10),ylab='',
     xaxt='n',yaxt='n') 
mtext('mg/L', side=2, line=3, outer=F)
segments(xx,box6_min_POM,xx,+box6_max_POM, col='#edba55', lwd=1.8)
segments(xx-epsilon,box6_min_POM,xx+epsilon,box6_min_POM, col='#edba55', lwd=1.8)
segments(xx-epsilon,box6_max_POM,xx+epsilon,box6_max_POM, col='#edba55', lwd=1.8)


plot(rdate[1227:1238], POMs_1$wc7[1227:1238], type='l', col=1,lwd=2, main='Box6', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_17$wc7[1227:1238], type='l', col=2,lwd=2,   
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_9$wc7[1227:1238], type='l', col=3,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_19$wc7[1227:1238], type='l', col=4,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(box7_median_POM,pch=1, cex=2, lwd=1,col='#f79220', ylim=c(0,10),ylab='',
     xaxt='n',yaxt='n') 
segments(xx,box7_min_POM,xx,+box7_max_POM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_min_POM,xx+epsilon,box7_min_POM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_max_POM,xx+epsilon,box7_max_POM, col='#f79220', lwd=1.8)

plot(rdate[1227:1238], POMs_1$ws8[1227:1238], type='l', col=1,lwd=2, main='Box8', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_17$ws8[1227:1238], type='l', col=2,lwd=2,   
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_9$ws8[1227:1238], type='l', col=3,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_19$ws8[1227:1238], type='l', col=4,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
	 par(new=T)
plot(box8_median_POM, pch=1, cex=2,col='#f46d43',ylab='',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box8_min_POM,xx,+box8_max_POM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_min_POM,xx+epsilon,box8_min_POM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_max_POM,xx+epsilon,box8_max_POM, col='#f46d43', lwd=1.8)

plot(rdate[1227:1238], POMs_1$ws9[1227:1238], type='l', col=1,lwd=2, main='Box8', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_17$ws9[1227:1238], type='l', col=2,lwd=2,   
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_9$ws9[1227:1238], type='l', col=3,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)

plot(rdate[1227:1238], POMs_19$ws9[1227:1238], type='l', col=4,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(box9_median_POM, pch=1, cex=2,lwd=1,col='#d73027',ylab='',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box9_min_POM,xx,+box9_max_POM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_min_POM,xx+epsilon,box9_min_POM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_max_POM,xx+epsilon,box9_max_POM, col='#d73027', lwd=1.8)

plot(rdate[1227:1238], POMs_1$ws10[1227:1238], type='l', col=1,lwd=2, main='Box8', 
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_17$ws10[1227:1238], type='l', col=2,lwd=2,   
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(rdate[1227:1238], POMs_9$ws10[1227:1238], type='l', col=3,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)

plot(rdate[1227:1238], POMs_19$ws10[1227:1238], type='l', col=4,lwd=2,  
     ylab='POM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(box10_median_POM,pch=1, cex=2,lwd=1,col='#a50028',ylab='',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box10_min_POM,xx,+box10_max_POM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_min_POM,xx+epsilon,box10_min_POM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_max_POM,xx+epsilon,box10_max_POM, col='#a50028', lwd=1.8)

dev.off()

