setwd('C:/Users/Acer/Desktop/naoh3')
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\Base_MenoRes3')     #sim_cl

hgt<-read.csv('Total_Hg.csv', skip=1)
names(hgt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
#
mhgt<-read.csv('Methyl_Hg.csv', skip=1)
names(mhgt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

time.steps <- hgt[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate1<-format(rdate,"%d-%m-%Y" )
rdate[1313:1325]
rdate1[1313:1325]

nord_bloom_med_hgt<-29.08555
nord_bloom_min_hgt<-12.1798248	
nord_bloom_max_hgt<-45.9912752

central_bloom_med_hgt<-14.84366
central_bloom_min_hgt<-8.5531576
central_bloom_max_hgt<-21.1341624

centralIND_bloom_med_hgt<-56.36579		
centralIND_bloom_min_hgt<-11.9391168
centralIND_bloom_max_hgt<-100.7924632

south_bloom_med_hgt<-3.149263
south_bloom_min_hgt<-2.08774072	
south_bloom_max_hgt<-4.21078528


nord_bloom_med_mhgt<-0.22145	
nord_bloom_min_mhgt<-0.1161	
nord_bloom_max_mhgt<-0.3268

central_bloom_med_mhgt<-0.07525	
central_bloom_min_mhgt<-0.045752	
central_bloom_max_mhgt<-0.104748

centralIND_bloom_med_mhgt<-0.1204
centralIND_bloom_min_mhgt<-0.031906
centralIND_bloom_max_mhgt<-0.208894

south_bloom_med_mhgt<-0.02795	
south_bloom_min_mhgt<-0.019522	
south_bloom_max_mhgt<-0.036378

nord_hgt<-data.frame(hgt$wn1[1214:1321],hgt$wn2[1214:1321],hgt$wn4[1214:1321]); names(nord_hgt)<-c('w1','w2','w4')
centr_hgt<-data.frame(hgt$wc6[1214:1321], hgt$wn3[1214:1321], hgt$wn5[1214:1321],hgt$wc7[1214:1321])
sud_hgt<-data.frame(hgt$ws8[1214:1321],hgt$ws9[1214:1321], hgt$ws10[1214:1321])

mod_cent_mean<-rowMeans(centr_hgt); mod_cent_min<-apply(centr_hgt,1,FUN=min);mod_cent_max<-apply(centr_hgt,1,FUN=max)
mod_nord_mean<-rowMeans(nord_hgt);mod_nord_min<-apply(nord_hgt,1,FUN=min);mod_nord_max<-apply(nord_hgt,1,FUN=max)
mod_sud_mean <-rowMeans(sud_hgt); mod_sud_min<-apply(sud_hgt,1,FUN=min); mod_sud_max<-apply(sud_hgt,1,FUN=max)
NN<-c(mod_nord_min,rev(mod_nord_max)); CC<-c(mod_cent_min,rev(mod_cent_max));SS<-c(mod_sud_min,rev(mod_sud_max))
xx<-c(rdate[1214:1321],rev(rdate[1214:1321]))

nord_hgt_2019<-data.frame(hgt$wn1[1430:1441],hgt$wn2[1430:1441],hgt$wn4[1430:1441]); names(nord_hgt)<-c('w1','w2','w4')
centr_hgt_2019<-data.frame(hgt$wc6[1430:1441], hgt$wn3[1430:1441], hgt$wn5[1430:1441],hgt$wc7[1430:1441])
sud_hgt_2019<-data.frame(hgt$ws8[1430:1441],hgt$ws9[1430:1441], hgt$ws10[1430:1441])

mod_cent_mean_2019<-rowMeans(centr_hgt_2019); mod_cent_min<-apply(centr_hgt_2019,1,FUN=min);mod_cent_max<-apply(centr_hgt_2019,1,FUN=max)
mod_nord_mean_2019<-rowMeans(nord_hgt_2019);mod_nord_min<-apply(nord_hgt_2019,1,FUN=min);mod_nord_max<-apply(nord_hgt_2019,1,FUN=max)
mod_sud_mean_2019<-rowMeans(sud_hgt_2019); mod_sud_min<-apply(sud_hgt_2019,1,FUN=min); mod_sud_max<-apply(sud_hgt_2019,1,FUN=max)

mean(mean(mod_cent_mean_2019),mean(mod_nord_mean_2019),mean(mod_sud_mean_2019))
mean(mean(mod_cent_min),mean(mod_nord_min),mean(mod_sud_min))
mean(mean(mod_cent_max),mean(mod_nord_max),mean(mod_sud_max))

 
rdate[1430:1441]

mean(mod_cent_mean[3:37]); central_bloom_med_hgt
mean(mod_nord_mean[3:37]); nord_bloom_med_hgt
mean(mod_sud_mean[3:37]); south_bloom_med_hgt


nord_mhgt<-data.frame(mhgt$wn1[1214:1321],mhgt$wn2[1214:1321],mhgt$wn4[1214:1321]); names(nord_mhgt)<-c('w1','w2','w4')
centr_mhgt<-data.frame(mhgt$wc6[1214:1321], mhgt$wn3[1214:1321], mhgt$wn5[1214:1321],mhgt$wc7[1214:1321])
sud_mhgt<-data.frame(mhgt$ws8[1214:1321],mhgt$ws9[1214:1321], mhgt$ws10[1214:1321])

mod_cent_mean_mhgt<-rowMeans(centr_mhgt); mod_cent_min_mhgt<-apply(centr_mhgt,1,FUN=min);mod_cent_max_mhgt<-apply(centr_mhgt,1,FUN=max)
mod_nord_mean_mhgt<-rowMeans(nord_mhgt);mod_nord_min_mhgt<-apply(nord_mhgt,1,FUN=min);mod_nord_max_mhgt<-apply(nord_mhgt,1,FUN=max)
mod_sud_mean_mhgt<-rowMeans(sud_mhgt); mod_sud_min_mhgt<-apply(sud_mhgt,1,FUN=min); mod_sud_max_mhgt<-apply(sud_mhgt,1,FUN=max)
NN_mhg<-c(mod_nord_min_mhgt,rev(mod_nord_max_mhgt)); CC_mhg<-c(mod_cent_min_mhgt,rev(mod_cent_max_mhgt));SS_mhg<-c(mod_sud_min_mhgt,rev(mod_sud_max_mhgt))
xx<-c(rdate[1214:1321],rev(rdate[1214:1321]))

plot(rdate[1250:1261], mod_nord_mean_mhgt[37:48], type='l')
plot(rdate[1250:1261], mod_sud_mean[37:48], type='l')
plot(rdate[1250:1261], mod_cent_mean[37:48], type='l')
plot(rdate[1250:1261], hg0$wn1[37:48], type='l')

uuu<-hg0$wn1[37:48]
(mean(uuu[1:4])-mean(uuu[5:8]))/mean(uuu[1:4])*100

mean(uuu[8:10])

##png('Acque_Bloom_tootB20b3tris_51.png',width = 21, height = 16, units = "cm", res=400)  #26
#par(mfrow=c(2,3), bty='n', cex.axis=1.5, cex.lab=1.5,mar=c(3,1.5,1,1), oma=c(0,6,3,1))

p1<-plot(rdate[1214:1321], mod_nord_mean,  ylim=c(0,100),xlab='',ylab='',type='l',col='royalblue',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,NN, col='#4575b455',border = NA)
par(new=T)
plot(rdate[1225],nord_bloom_med_hgt,ylim=c(0,100),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab=expression(paste('ng l'^-1)))
par(new=T)
plot(rdate[1225],nord_bloom_min_hgt,ylim=c(0,100),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab=expression(paste('ng l'^-1)))   
par(new=T)
plot(rdate[1225],nord_bloom_max_hgt,ylim=c(0,100),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab=expression(paste('ng l'^-1)))        
segments(rdate[1225],nord_bloom_max_hgt,rdate[1225],nord_bloom_min_hgt)

 
p2<-plot(rdate[1214:1321], mod_cent_mean,  ylim=c(0,100),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,CC, col='#fed97666',border = NA)
par(new=T)
plot(rdate[1225],central_bloom_med_hgt,ylim=c(0,100),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
mtext(side=3, 'Hg'[T]~'water concentrations', line=0, font=2, cex=1.2)
par(new=T)
plot(rdate[1225],central_bloom_min_hgt,ylim=c(0,100),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')   
par(new=T)
plot(rdate[1225],central_bloom_max_hgt,ylim=c(0,100),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')        
segments(rdate[1225],central_bloom_max_hgt,rdate[1225],central_bloom_min_hgt)
par(new=T)
plot(rdate[1227],centralIND_bloom_med_hgt,ylim=c(0,100),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")), col='darkgrey',
     ylab='')
par(new=T)
plot(rdate[1227],centralIND_bloom_min_hgt,ylim=c(0,100),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',
     ylab='')   
par(new=T)
plot(rdate[1227],centralIND_bloom_max_hgt,ylim=c(0,100),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',
     ylab='')   
segments(rdate[1227],centralIND_bloom_max_hgt,rdate[1227],centralIND_bloom_min_hgt,col='darkgrey')


p3<-plot(rdate[1214:1321], mod_sud_mean,  ylim=c(0,100),xlab='',ylab='',type='l',col='#82012099',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,SS, col='#82012066',border = NA)
par(new=T)
plot(rdate[1225],south_bloom_med_hgt,ylim=c(0,100),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
par(new=T)
plot(rdate[1225],south_bloom_min_hgt,ylim=c(0,100),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')   
par(new=T)
plot(rdate[1225],south_bloom_max_hgt,ylim=c(0,100),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim='',   ylab='')   
segments(rdate[1225],south_bloom_max_hgt,rdate[1225],south_bloom_min_hgt)


p4<-plot(rdate[1214:1321], mod_nord_mean_mhgt,  ylim=c(0,0.4),xlab='',ylab='',type='l', col='royalblue',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,NN_mhg, col='#4575b455',border = NA)
par(new=T)
plot(rdate[1225],nord_bloom_med_mhgt, ylim=c(0,0.4),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
mtext(side=2, expression(paste('ng l'^-1)), line=3.5)
par(new=T)
plot(rdate[1225],nord_bloom_min_mhgt, ylim=c(0,0.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
par(new=T)
plot(rdate[1225],nord_bloom_max_mhgt, ylim=c(0,0.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')        
segments(rdate[1225],nord_bloom_max_mhgt,rdate[1225],nord_bloom_min_mhgt)
  

p5<-plot(rdate[1214:1321], mod_cent_mean_mhgt,  ylim=c(0,0.4),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,CC_mhg, col='#fed97666',border = NA)
par(new=T)
plot(rdate[1225],central_bloom_med_mhgt, ylim=c(0,0.4),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
mtext(side=3, 'MeHg'[T]~'water concentrations', line=-0.9, font=2, cex=1.2)
par(new=T)
plot(rdate[1225],central_bloom_min_mhgt, ylim=c(0,0.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')   
par(new=T)
plot(rdate[1225],central_bloom_max_mhgt, ylim=c(0,0.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')        
segments(rdate[1225],central_bloom_max_mhgt,rdate[1225],central_bloom_min_mhgt)
par(new=T)
plot(rdate[1227],centralIND_bloom_med_mhgt, ylim=c(0,0.4),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")), col='darkgrey',
     ylab='')
par(new=T)
plot(rdate[1227],centralIND_bloom_min_mhgt, ylim=c(0,0.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',
     ylab='')   
par(new=T)
plot(rdate[1227],centralIND_bloom_max_mhgt, ylim=c(0,0.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',
     ylab='')   
segments(rdate[1227],centralIND_bloom_max_mhgt,rdate[1227],centralIND_bloom_min_mhgt,col='darkgrey')


p6<-plot(rdate[1214:1321], mod_sud_mean_mhgt,  ylim=c(0,0.4),xlab='',ylab='',type='l',col='#820120',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,SS_mhg, col='#82012066',border = NA)
par(new=T)
plot(rdate[1225],south_bloom_med_mhgt, ylim=c(0,0.4),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab=expression(paste('ng l'^-1)))
par(new=T)
plot(rdate[1225],south_bloom_min_mhgt, ylim=c(0,0.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab=expression(paste('ng l'^-1)))   
par(new=T)
plot(rdate[1225],south_bloom_max_mhgt, ylim=c(0,0.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab=expression(paste('ng l'^-1)))   
segments(rdate[1225],south_bloom_max_mhgt,rdate[1225],south_bloom_min_mhgt)
#dev.off()

#___________________________fine HgT MeHgT acque bloom _____________________________________________
getwd()
