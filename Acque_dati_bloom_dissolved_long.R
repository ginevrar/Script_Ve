setwd('C:/Users/Acer/Dropbox')
setwd('C:/Users/gi/Dropbox')
corila<-read.table('Corila_dati_acque.txt', header=T,as.is=TRUE)
str(corila)

tmp <- as.Date(corila$data,format="%Y-%m-%d")
tmp2<-format(tmp, "%d-%m-%Y")
setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_clok')
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\Reference_OK')     #sim_cl
#setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\Referece_NewPOM\\')     #sim_cl

hgdiss<-read.csv('Dissolved_Divalent_Hg.csv', skip=1)
names(hgdiss)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hgDOC<-read.csv('DOC_Sorbed_Divalent_Hg.csv', skip=1)
names(hgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hg0<-read.csv('Elemental_Hg.csv', skip=1)
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

mehgdiss<-read.csv('Dissolved_Methyl_Hg.csv', skip=1)
names(mehgdiss)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

mehgDOC<-read.csv('DOC_Sorbed_Methyl_Hg.csv', skip=1)
names(mehgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')


mhgd<-mehgdiss + mehgDOC
hgd<-hgdiss + hgDOC 


hgII<-hgt-hg0-mhgt

diss_perc<-hgd/hgII*100

diss_perc[1313:1325,]
rdate[1313:1325,]

time.steps <- hg0[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate1<-format(rdate,"%d-%m-%Y" )
rdate[1313:(1325)]
rdate[1430:(1441)]

### B
mean_diss_perc<-colMeans(diss_perc[1430:1441,2:11])

mean(mean_diss_perc)


nord_bloom_med_hgd<-2.086136
nord_bloom_min_hgd<-1.65366396
nord_bloom_max_hgd<-2.51860804

central_bloom_med_hgd<-1.464307
central_bloom_min_hgd<-1.22841316
central_bloom_max_hgd<-1.70020084

centralIND_bloom_med_hgd<-2.286726
centralIND_bloom_min_hgd<-1.26451936	
centralIND_bloom_max_hgd<-3.30893264

south_bloom_med_hgd<-1.043068
south_bloom_min_hgd<-0.8464898
south_bloom_max_hgd<-1.2396462

nord_bloom_med_mhgd<-	0.0516	
nord_bloom_min_mhgd<-0.03053	
nord_bloom_max_mhgd<-0.07267

central_bloom_med_mhgd<-0.0215	
central_bloom_min_mhgd<-0.013072	
central_bloom_max_mhgd<-0.029928

centralIND_bloom_med_mhgd<-	0.0301	
centralIND_bloom_min_mhgd<-0.00903
centralIND_bloom_max_mhgd<-0.05117

south_bloom_med_mhgd<-0.0172		
south_bloom_min_mhgd<-0.008772	
south_bloom_max_mhgd<-0.025628 

rdate2<-rdate 
nord_hgd<-data.frame(hgd$wn1 ,hgd$wn2,hgd$wn4); names(nord_hgd)<-c('w1','w2','w4')
centr_hgd<-data.frame(hgd$wc6, hgd$wn3, hgd$wn5,hgd$wc7)
sud_hgd<-data.frame(hgd$ws8,hgd$ws9, hgd$ws10)

mod_cent_mean_D<-rowMeans(centr_hgd); mod_cent_min<-apply(centr_hgd,1,FUN=min);mod_cent_max<-apply(centr_hgd,1,FUN=max)
mod_nord_mean_D<-rowMeans(nord_hgd);mod_nord_min<-apply(nord_hgd,1,FUN=min);mod_nord_max<-apply(nord_hgd,1,FUN=max)
mod_sud_mean_D<-rowMeans(sud_hgd); mod_sud_min<-apply(sud_hgd,1,FUN=min); mod_sud_max<-apply(sud_hgd,1,FUN=max)
NN_D<-c(mod_nord_min,rev(mod_nord_max)); CC_D<-c(mod_cent_min,rev(mod_cent_max));SS_D<-c(mod_sud_min,rev(mod_sud_max))
xx<-c(rdate,rev(rdate))

nord_mhgd<-data.frame(mhgd$wn1,mhgd$wn2,mhgd$wn4); names(nord_mhgd)<-c('w1','w2','w4')
centr_mhgd<-data.frame(mhgd$wc6, mhgd$wn3, mhgd$wn5,mhgd$wc7)
sud_mhgd<-data.frame(mhgd$ws8,mhgd$ws9, mhgd$ws10)

mod_cent_mean_mhgd_D<-rowMeans(centr_mhgd); mod_cent_min_mhgd_D<-apply(centr_mhgd,1,FUN=min);mod_cent_max_mhgd_D<-apply(centr_mhgd,1,FUN=max)
mod_nord_mean_mhgd_D<-rowMeans(nord_mhgd);mod_nord_min_mhgd_D<-apply(nord_mhgd,1,FUN=min);mod_nord_max_mhgd_D<-apply(nord_mhgd,1,FUN=max)
mod_sud_mean_mhgd_D<-rowMeans(sud_mhgd); mod_sud_min_mhgd_D<-apply(sud_mhgd,1,FUN=min); mod_sud_max_mhgd_D<-apply(sud_mhgd,1,FUN=max)

NN_mhg_D<-c(mod_nord_min_mhgd_D,rev(mod_nord_max_mhgd_D)); 
CC_mhg_D<-c(mod_cent_min_mhgd_D,rev(mod_cent_max_mhgd_D));SS_mhg_D<-c(mod_sud_min_mhgd_D,rev(mod_sud_max_mhgd_D))
xx<-c(rdate ,rev(rdate))

png('Acque_Bloom_all_2.png',width = 21, height = 18,
    units = "cm", res=600)
par(mfrow=c(4,3), bty='n', cex.axis=1.5, cex.lab=1.5,mar=c(3,1.5,1,1), oma=c(0,8,3,1))
plot(rdate, mod_nord_mean,  ylim=c(0,250),xlab='',ylab='',type='l',col='royalblue',
     main='', xlim=as.Date(c("1900-01-01", "2100-12-01"), "%Y-%m-%d"))
mtext(expression(paste('Hg'[T]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)
mtext(expression(bold('Northern Lagoon')), 3, outer=FALSE, line=1)
 
polygon(xx,NN, col='#4575b455',border = NA)
par(new=T)
plot(rdate[1225],nord_bloom_med_hgt,ylim=c(0,250),ylab='',
     pch=19,xaxt='n',type='p',cex=2,xlab='',xlim=as.Date(c("1900-01-01", "2100-12-01")), yaxt='n')
par(new=T)
plot(rdate[1225],nord_bloom_min_hgt,ylim=c(0,250),pch='-',xaxt='n',type='p',cex=2,xlab='',ylab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n')   
par(new=T)
plot(rdate[1225],nord_bloom_max_hgt,ylim=c(0,250),pch='-',xaxt='n',type='p',cex=2,xlab='',ylab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n')
segments(rdate[1225],nord_bloom_max_hgt,rdate[1225],nord_bloom_min_hgt)
#mtext(side=2, expression(paste('Hg'[T])), line=4.5, font=2, cex=1, las=1, at=85)
mtext(side=2, expression(paste('ng l'^-1)), line=2.6, cex=1)


p2<-plot(rdate, mod_cent_mean,  ylim=c(0,250),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
         xlim=as.Date(c("1900-01-01", "2100-12-01"), "%Y-%m-%d"), main=' ')
mtext(expression(paste('Hg'[T]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)
mtext(expression(bold('Central Lagoon')), 3, outer=FALSE, line=1, font=2)

polygon(xx,CC, col='#fed97666',border = NA)
par(new=T)
plot(rdate[1225],central_bloom_med_hgt,ylim=c(0,250),pch=19,xaxt='n',type='p',cex=2,
     xlab='',yaxt='n',ylab='',  xlim=as.Date(c("1900-01-01", "2100-12-01")))
par(new=T)
plot(rdate[1225],central_bloom_min_hgt,ylim=c(0,250),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')   
par(new=T)
plot(rdate[1225],central_bloom_max_hgt,ylim=c(0,250),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')        
segments(rdate[1225],central_bloom_max_hgt,rdate[1225],central_bloom_min_hgt)
par(new=T)
plot(rdate[1227],centralIND_bloom_med_hgt,ylim=c(0,250),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")), col='darkgrey',
     ylab='')
par(new=T)
plot(rdate[1227],centralIND_bloom_min_hgt,ylim=c(0,250),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),col='darkgrey',
     ylab='')   
par(new=T)
plot(rdate[1227],centralIND_bloom_max_hgt,ylim=c(0,250),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),col='darkgrey',
     ylab='')   
segments(rdate[1227],centralIND_bloom_max_hgt,rdate[1227],centralIND_bloom_min_hgt,col='darkgrey')


p3<-plot(rdate, mod_sud_mean,  ylim=c(0,250),xlab='',ylab='',type='l',col='#82012099',yaxt='n',
         xlim=as.Date(c("1900-01-01", "2100-12-01")), main=' ')
mtext(expression(paste('Hg'[T]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)
mtext(expression(bold('Southern Lagoon')), 3, outer=FALSE, line=1, font=2)

polygon(xx,SS, col='#82012066',border = NA)
par(new=T)
plot(rdate[1225],south_bloom_med_hgt,ylim=c(0,250),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')
par(new=T)
plot(rdate[1225],south_bloom_min_hgt,ylim=c(0,250),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')   
par(new=T)
plot(rdate[1225],south_bloom_max_hgt,ylim=c(0,250),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim='',   ylab='')   
segments(rdate[1225],south_bloom_max_hgt,rdate[1225],south_bloom_min_hgt)


plot(rdate, mod_nord_mean_D,  ylim=c(0,85),xlab='',ylab='',type='l',col='royalblue',
     xlim=as.Date(c("1900-01-01", "2100-12-01")))
polygon(xx,NN_D, col='#4575b455',border = NA)
mtext(expression(paste('Hg'[D]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)

par(new=T)
plot(rdate[1225],nord_bloom_med_hgd,ylim=c(0,85),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')
mtext(side=2, expression(paste('ng l'^-1)), line=2.6, cex=1)
par(new=T)
plot(rdate[1225],nord_bloom_min_hgd,ylim=c(0,85),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],nord_bloom_max_hgd,ylim=c(0,85),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab=expression(paste('ng l'^-1)))
segments(rdate[1225],nord_bloom_max_hgd,rdate[1225],nord_bloom_min_hgd)
#mtext(side=2, expression(paste('Hg'[D])), line=4.5, font=2, cex=1, las=1, at=8.7)


plot(rdate, mod_cent_mean_D,  ylim=c(0,85),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")))
polygon(xx,CC_D, col='#fed97666',border = NA)
mtext(expression(paste('Hg'[D]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)

par(new=T)
plot(rdate[1225],central_bloom_med_hgd,ylim=c(0,85),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab= '')
par(new=T)
plot(rdate[1225],central_bloom_min_hgd,ylim=c(0,85),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')   
par(new=T)
plot(rdate[1225],central_bloom_max_hgd,ylim=c(0,85),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')        
segments(rdate[1225],central_bloom_max_hgd,rdate[1225],central_bloom_min_hgd)
par(new=T)
plot(rdate[1227],centralIND_bloom_med_hgd,ylim=c(0,85),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")), col='darkgrey',
     ylab='')
par(new=T)
plot(rdate[1227],centralIND_bloom_min_hgd,ylim=c(0,85),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),col='darkgrey',
     ylab='')   
par(new=T)
plot(rdate[1227],centralIND_bloom_max_hgd,ylim=c(0,85),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),col='darkgrey',
     ylab='')   
segments(rdate[1227],centralIND_bloom_max_hgd,rdate[1227],centralIND_bloom_min_hgd,col='darkgrey')
par(new=T)
plot(tmp,corila$HgII,ylim=c(0,85),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     ylab=expression(paste('ng l'^-1)),col='#000B4D',
     xlim=as.Date(c("1900-01-01", "2100-12-01")))

segments(tmp[1],corila$HgII[1],tmp[1],corila$HgII[7],col='#000B4D')
segments(tmp[2],corila$HgII[2],tmp[2],corila$HgII[8],col='#000B4D')
segments(tmp[3],corila$HgII[3],tmp[3],corila$HgII[9],col='#000B4D')
segments(tmp[4],corila$HgII[4],tmp[4],corila$HgII[10],col='#000B4D')
segments(tmp[5],corila$HgII[5],tmp[5],corila$HgII[11],col='#000B4D')
segments(tmp[6],corila$HgII[6],tmp[6],corila$HgII[12],col='#000B4D')


p9<-plot(rdate, mod_sud_mean_D,  ylim=c(0,85),xlab='',ylab='',type='l',col='#82012099',yaxt='n',
         xlim=as.Date(c("1900-01-01", "2100-12-01")))
mtext(expression(paste('Hg'[D]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)

polygon(xx,SS_D, col='#82012066',border = NA)
par(new=T)
plot(rdate[1225],south_bloom_med_hgd,ylim=c(0,85),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),ylab='')
par(new=T)
plot(rdate[1225],south_bloom_min_hgd,ylim=c(0,85),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),ylab='')
par(new=T)
plot(rdate[1225],south_bloom_max_hgd,ylim=c(0,85),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')   
segments(rdate[1225],south_bloom_max_hgd,rdate[1225],south_bloom_min_hgd)

p4<-plot(rdate, mod_nord_mean_mhgt,  ylim=c(0,1.4),xlab='',ylab='',type='l', col='royalblue',
         xlim=as.Date(c("1900-01-01", "2100-12-01")))
polygon(xx,NN_mhg, col='#4575b455',border = NA)
mtext(expression(paste('MeHg'[T]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)
par(new=T)
plot(rdate[1225],nord_bloom_med_mhgt, ylim=c(0,1.4),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')
mtext(side=2, expression(paste('ng l'^-1)), line=2.6, cex=1)
par(new=T)
plot(rdate[1225],nord_bloom_min_mhgt, ylim=c(0,1.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')
par(new=T)
plot(rdate[1225],nord_bloom_max_mhgt, ylim=c(0,1.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')        
segments(rdate[1225],nord_bloom_max_mhgt,rdate[1225],nord_bloom_min_mhgt)
#mtext(side=2, expression(paste('MeHg'[T])), line=4.5, font=2, cex=1, las=1, at=.38)


p5<-plot(rdate, mod_cent_mean_mhgt,  ylim=c(0,1.4),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
         xlim=as.Date(c("1900-01-01", "2100-12-01")))
polygon(xx,CC_mhg, col='#fed97666',border = NA)
mtext(expression(paste('MeHg'[T]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)

par(new=T)
plot(rdate[1225],central_bloom_med_mhgt, ylim=c(0,1.4),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')
par(new=T)
plot(rdate[1225],central_bloom_min_mhgt, ylim=c(0,1.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')   
par(new=T)
plot(rdate[1225],central_bloom_max_mhgt, ylim=c(0,1.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab='')        
segments(rdate[1225],central_bloom_max_mhgt,rdate[1225],central_bloom_min_mhgt)
par(new=T)
plot(rdate[1227],centralIND_bloom_med_mhgt, ylim=c(0,1.4),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")), col='darkgrey',
     ylab='')
par(new=T)
plot(rdate[1227],centralIND_bloom_min_mhgt, ylim=c(0,1.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),col='darkgrey',
     ylab='')   
par(new=T)
plot(rdate[1227],centralIND_bloom_max_mhgt, ylim=c(0,1.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),col='darkgrey',
     ylab='')   
segments(rdate[1227],centralIND_bloom_max_mhgt,rdate[1227],centralIND_bloom_min_mhgt,col='darkgrey')


p6<-plot(rdate, mod_sud_mean_mhgt,  ylim=c(0,1.4),xlab='',ylab='',type='l',col='#820120',yaxt='n',
         xlim=as.Date(c("1900-01-01", "2100-12-01")))
polygon(xx,SS_mhg, col='#82012066',border = NA)
mtext(expression(paste('MeHg'[T]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)

par(new=T)
plot(rdate[1225],south_bloom_med_mhgt, ylim=c(0,1.4),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab=expression(paste('ng l'^-1)))
par(new=T)
plot(rdate[1225],south_bloom_min_mhgt, ylim=c(0,1.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab=expression(paste('ng l'^-1)))   
par(new=T)
plot(rdate[1225],south_bloom_max_mhgt, ylim=c(0,1.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),
     ylab=expression(paste('ng l'^-1)))   
segments(rdate[1225],south_bloom_max_mhgt,rdate[1225],south_bloom_min_mhgt)

p10<-plot(rdate, mod_nord_mean_mhgd_D,  ylim=c(0,1.3),xlab='',ylab='',type='l', col='royalblue',
          xlim=as.Date(c("1900-01-01", "2100-12-01")))
polygon(xx,NN_mhg_D, col='#4575b455',border = NA)
mtext(expression(paste('MeHg'[D]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)

par(new=T)
plot(rdate[1225],nord_bloom_med_mhgd, ylim=c(0,1.3),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab='')
mtext(side=2, expression(paste('ng l'^-1)), line=2.6, cex=1)
par(new=T)
plot(rdate[1225],nord_bloom_min_mhgd, ylim=c(0,1.3),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],nord_bloom_max_mhgd, ylim=c(0,1.3),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab='')        
segments(rdate[1225],nord_bloom_max_mhgd,rdate[1225],nord_bloom_min_mhgd)
#mtext(side=2, expression(paste('MeHg'[D])), line=4.5, font=2, cex=1, las=1, at=.115)


plot(rdate, mod_cent_mean_mhgd_D,  ylim=c(0,1.3),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")), yaxt='n')
polygon(xx,CC_mhg_D, col='#fed97666',border = NA)
mtext(expression(paste('MeHg'[D]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)

par(new=T)
plot(rdate[1225],central_bloom_med_mhgd, ylim=c(0,1.3),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab='')
par(new=T)
plot(rdate[1225],central_bloom_min_mhgd, ylim=c(0,1.3),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],central_bloom_max_mhgd, ylim=c(0,1.3),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab='')        
segments(rdate[1225],central_bloom_max_mhgd,rdate[1225],central_bloom_min_mhgd)
par(new=T)
plot(rdate[1227],centralIND_bloom_med_mhgd, ylim=c(0,1.3),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")), col='darkgrey',yaxt='n',
     ylab='')
par(new=T)
plot(rdate[1227],centralIND_bloom_min_mhgd, ylim=c(0,1.3),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),col='darkgrey',yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1227],centralIND_bloom_max_mhgd, ylim=c(0,1.3),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),col='darkgrey',yaxt='n',
     ylab='')   
segments(rdate[1227],centralIND_bloom_max_mhgd,rdate[1227],centralIND_bloom_min_mhgd,col='darkgrey')
par(new=T)
plot(tmp,corila$MeHg,ylim=c(0,1.3),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     ylab=expression(paste('ng l'^-1)),col='#000B4D',
     xlim=as.Date(c("1900-01-01", "2100-12-01")))
segments(tmp[1],corila$MeHg[1],tmp[1],corila$MeHg[7],col='#000B4D')
segments(tmp[2],corila$MeHg[2],tmp[2],corila$MeHg[8],col='#000B4D')
segments(tmp[3],corila$MeHg[3],tmp[3],corila$MeHg[9],col='#000B4D')
segments(tmp[4],corila$MeHg[4],tmp[4],corila$MeHg[10],col='#000B4D')
segments(tmp[5],corila$MeHg[5],tmp[5],corila$MeHg[11],col='#000B4D')
segments(tmp[6],corila$MeHg[6],tmp[6],corila$MeHg[12],col='#000B4D')

plot(rdate, mod_sud_mean_mhgd_D,  ylim=c(0,1.3),xlab='',ylab='',type='l',col='#820120',yaxt='n',
     xlim=as.Date(c("1900-01-01", "2100-12-01")))
polygon(xx,SS_mhg_D, col='#82012066',border = NA)
mtext(expression(paste('MeHg'[D]~'in water')), 3, outer=FALSE, line=-1, cex=0.8)

par(new=T)
plot(rdate[1225],south_bloom_med_mhgd, ylim=c(0,1.3),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab='')
par(new=T)
plot(rdate[1225],south_bloom_min_mhgd, ylim=c(0,1.3),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],south_bloom_max_mhgd, ylim=c(0,1.3),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("1900-01-01", "2100-12-01")),yaxt='n',
     ylab='')   
segments(rdate[1225],south_bloom_max_mhgd,rdate[1225],south_bloom_min_mhgd)
dev.off()

#___________________________fine HgD acque bloom _____________________________________________
par(mfrow=c(1,1))

plot(rdate2[36:48], mod_nord_mean_mhgd_D[36:48], type='l')
plot(rdate2[36:48], mod_cent_mean_mhgd_D[36:48], type='l')
plot(rdate2[36:48], mod_sud_mean_mhgd_D[36:48], type='l')

plot(rdate2[36:48], mod_cent_mean_mhgt[36:48], type='l')
plot(rdate2[36:48], mod_nord_mean_D[36:48], type='l')
plot(rdate2[36:48], mod_cent_mean_D[36:48], type='l')
plot(rdate2[36:48], mod_nord_mean[36:48], type='l')

plot(rdate2[1430:1441], mod_cent_mean_mhgt[1430:1441], type='b')

(mod_cent_mean_mhgt[1430]-mod_cent_mean_mhgt[1436])/mod_cent_mean_mhgt[1430]
(mod_cent_mean_mhgt[1430]-mod_cent_mean_mhgt[1436])/mod_cent_mean_mhgt[1430]


(CC_mhg[1430]-CC_mhg[1436])/CC_mhg[1430]
(NN_mhg[1430]-NN_mhg[1436])/NN_mhg[1430]
(SS_mhg[1430]-SS_mhg[1436])/SS_mhg[1430]

(CC[1430]-CC[1436])/CC[1430]*100
(NN[1430]-NN[1436])/NN[1430]*100
(SS[1430]-SS[1436])/SS[1430]*100

plot(CC_mhg[1430:1442])

 
