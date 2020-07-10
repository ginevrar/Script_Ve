#setwd('C:/Users/Acer/Dropbox/NewVenice20/z1')
#setwd('G:/Il mio Drive/MERCURIO/Venezia/2017_Venice/eccola14_newInp_max4700') #5_newInp
#setwd('C:/Users/Acer/Desktop/NewVenice20/z19')
 #setwd('C:\Users\Acer\Desktop\NWBad\NewVenice20\z20')
# setwd('C:\\Users\\Acer\\Desktop\\NWBad\\NewVenice21\\2126')
 #setwd('C:/Users/Acer/Desktop/NewVenice20/z20')
# setwd('C:\\Users\\gi\\Desktop\\2156')
# setwd('C:\\Users\\gi\\Desktop\\NNN14')
# setwd('H:\\2154')
# setwd('C:\\Users\\Acer\\Desktop\\in_high_50_88b')
 setwd('C:\\Users\\gi\\Dropbox\\sim_NaOH')
 
setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_clok')
setwd('C:\\Users\\Acer\\Desktop\\last\\NAOH_iniz10')     #sim_cl

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
hgd<-hgdiss + hgDOC + mhgd + hg0

time.steps <- hgdiss[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate1<-format(rdate,"%d-%m-%Y" )
rdate[1313:(1325)]
rdate1[1313:(1325)]
### Bùù

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


rdate2<-rdate[1214:1285]
nord_hgd<-data.frame(hgd$wn1[1214:1285],hgd$wn2[1214:1285],hgd$wn4[1214:1285]); names(nord_hgd)<-c('w1','w2','w4')
centr_hgd<-data.frame(hgd$wc6[1214:1285], hgd$wn3[1214:1285], hgd$wn5[1214:1285],hgd$wc7[1214:1285])
sud_hgd<-data.frame(hgd$ws8[1214:1285],hgd$ws9[1214:1285], hgd$ws10[1214:1285])

mod_cent_mean_D<-rowMeans(centr_hgd); mod_cent_min<-apply(centr_hgd,1,FUN=min);mod_cent_max<-apply(centr_hgd,1,FUN=max)
mod_nord_mean_D<-rowMeans(nord_hgd);mod_nord_min<-apply(nord_hgd,1,FUN=min);mod_nord_max<-apply(nord_hgd,1,FUN=max)
mod_sud_mean_D<-rowMeans(sud_hgd); mod_sud_min<-apply(sud_hgd,1,FUN=min); mod_sud_max<-apply(sud_hgd,1,FUN=max)
NN_D<-c(mod_nord_min,rev(mod_nord_max)); CC_D<-c(mod_cent_min,rev(mod_cent_max));SS_D<-c(mod_sud_min,rev(mod_sud_max))
xx<-c(rdate[1214:1285],rev(rdate[1214:1285]))

nord_mhgd<-data.frame(mhgd$wn1[1214:1285],mhgd$wn2[1214:1285],mhgd$wn4[1214:1285]); names(nord_mhgd)<-c('w1','w2','w4')
centr_mhgd<-data.frame(mhgd$wc6[1214:1285], mhgd$wn3[1214:1285], mhgd$wn5[1214:1285],mhgd$wc7[1214:1285])
sud_mhgd<-data.frame(mhgd$ws8[1214:1285],mhgd$ws9[1214:1285], mhgd$ws10[1214:1285])

mod_cent_mean_mhgd_D<-rowMeans(centr_mhgd); mod_cent_min_mhgd_D<-apply(centr_mhgd,1,FUN=min);mod_cent_max_mhgd_D<-apply(centr_mhgd,1,FUN=max)
mod_nord_mean_mhgd_D<-rowMeans(nord_mhgd);mod_nord_min_mhgd_D<-apply(nord_mhgd,1,FUN=min);mod_nord_max_mhgd_D<-apply(nord_mhgd,1,FUN=max)
mod_sud_mean_mhgd_D<-rowMeans(sud_mhgd); mod_sud_min_mhgd_D<-apply(sud_mhgd,1,FUN=min); mod_sud_max_mhgd_D<-apply(sud_mhgd,1,FUN=max)

NN_mhg_D<-c(mod_nord_min_mhgd_D,rev(mod_nord_max_mhgd_D)); 
CC_mhg_D<-c(mod_cent_min_mhgd_D,rev(mod_cent_max_mhgd_D));SS_mhg_D<-c(mod_sud_min_mhgd_D,rev(mod_sud_max_mhgd_D))
xx<-c(rdate[1214:1285],rev(rdate[1214:1285]))



p7<-plot(rdate[1214:1285], mod_nord_mean_D,  ylim=c(0,11),xlab='',ylab='',type='l',col='royalblue',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,NN_D, col='#4575b455',border = NA)
par(new=T)
plot(rdate[1225],nord_bloom_med_hgd,ylim=c(0,11),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
mtext(side=2, expression(paste('ng l'^-1)), line=2.6, cex=0.85)
par(new=T)
plot(rdate[1225],nord_bloom_min_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],nord_bloom_max_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab=expression(paste('ng l'^-1)))
segments(rdate[1225],nord_bloom_max_hgd,rdate[1225],nord_bloom_min_hgd)


p8<-plot(rdate[1214:1285], mod_cent_mean_D,  ylim=c(0,11),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,CC_D, col='#fed97666',border = NA)
par(new=T)
plot(rdate[1225],central_bloom_med_hgd,ylim=c(0,11),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab= '')
mtext(side=3, 'Hg'[D]~'water concentrations', line=0, font=2, cex=1.2)
par(new=T)
plot(rdate[1225],central_bloom_min_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')   
par(new=T)
plot(rdate[1225],central_bloom_max_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')        
segments(rdate[1225],central_bloom_max_hgd,rdate[1225],central_bloom_min_hgd)
par(new=T)
plot(rdate[1227],centralIND_bloom_med_hgd,ylim=c(0,11),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")), col='darkgrey',
     ylab='')
par(new=T)
plot(rdate[1227],centralIND_bloom_min_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',
     ylab='')   
par(new=T)
plot(rdate[1227],centralIND_bloom_max_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',
     ylab='')   
segments(rdate[1227],centralIND_bloom_max_hgd,rdate[1227],centralIND_bloom_min_hgd,col='darkgrey')


p9<-plot(rdate[1214:1285], mod_sud_mean_D,  ylim=c(0,11),xlab='',ylab='',type='l',col='#82012099',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,SS_D, col='#82012066',border = NA)
par(new=T)
plot(rdate[1225],south_bloom_med_hgd,ylim=c(0,11),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
par(new=T)
plot(rdate[1225],south_bloom_min_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
par(new=T)
plot(rdate[1225],south_bloom_max_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')   

segments(rdate[1225],south_bloom_max_hgd,rdate[1225],south_bloom_min_hgd)


p10<-plot(rdate[1214:1285], mod_nord_mean_mhgd_D,  ylim=c(0,0.12),xlab='',ylab='',type='l', col='royalblue',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,NN_mhg_D, col='#4575b455',border = NA)
par(new=T)
plot(rdate[1225],nord_bloom_med_mhgd, ylim=c(0,0.12),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')
mtext(side=2, expression(paste('ng l'^-1)), line=2.6, cex=0.85)
par(new=T)
plot(rdate[1225],nord_bloom_min_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],nord_bloom_max_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')        
segments(rdate[1225],nord_bloom_max_mhgd,rdate[1225],nord_bloom_min_mhgd)


p11<-plot(rdate[1214:1285], mod_cent_mean_mhgd_D,  ylim=c(0,0.12),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), yaxt='n',"%Y-%m-%d"))
polygon(xx,CC_mhg_D, col='#fed97666',border = NA)
par(new=T)
plot(rdate[1225],central_bloom_med_mhgd, ylim=c(0,0.12),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')

par(new=T)
plot(rdate[1225],central_bloom_min_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],central_bloom_max_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')        
segments(rdate[1225],central_bloom_max_mhgd,rdate[1225],central_bloom_min_mhgd)
par(new=T)
plot(rdate[1227],centralIND_bloom_med_mhgd, ylim=c(0,0.12),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")), col='darkgrey',yaxt='n',
     ylab='')
par(new=T)
plot(rdate[1227],centralIND_bloom_min_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1227],centralIND_bloom_max_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',yaxt='n',
     ylab='')   
segments(rdate[1227],centralIND_bloom_max_mhgd,rdate[1227],centralIND_bloom_min_mhgd,col='darkgrey')


p12<-plot(rdate[1214:1285], mod_sud_mean_mhgd_D,  ylim=c(0,0.12),xlab='',ylab='',type='l',col='#820120',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,SS_mhg_D, col='#82012066',border = NA)
par(new=T)
plot(rdate[1225],south_bloom_med_mhgd, ylim=c(0,0.12),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')
par(new=T)
plot(rdate[1225],south_bloom_min_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],south_bloom_max_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')   
segments(rdate[1225],south_bloom_max_mhgd,rdate[1225],south_bloom_min_mhgd)


png('Acque_Bloom_all_19hilmn.png',width = 21, height = 18,
    units = "cm", res=400)
par(mfrow=c(4,3), bty='n', cex.axis=1.5, cex.lab=1.5,mar=c(3,1.5,1,1), oma=c(0,8,3,1))
p1<-plot(rdate[1214:1285], mod_nord_mean,  ylim=c(0,100),xlab='',ylab='',type='l',col='royalblue',
         main='Northern Water', xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,NN, col='#4575b455',border = NA)
par(new=T)
plot(rdate[1225],nord_bloom_med_hgt,ylim=c(0,100),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n')
par(new=T)
plot(rdate[1225],nord_bloom_min_hgt,ylim=c(0,100),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n')   
par(new=T)
plot(rdate[1225],nord_bloom_max_hgt,ylim=c(0,100),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n')
segments(rdate[1225],nord_bloom_max_hgt,rdate[1225],nord_bloom_min_hgt)
mtext(side=2, expression(paste('Hg'[T])), line=4.5, font=2, cex=1, las=1, at=85)
mtext(side=2, expression(paste('ng l'^-1)), line=2.6, cex=0.85)


p2<-plot(rdate[1214:1285], mod_cent_mean,  ylim=c(0,100),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
         xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"),
         main='Central Water')
polygon(xx,CC, col='#fed97666',border = NA)
par(new=T)
plot(rdate[1225],central_bloom_med_hgt,ylim=c(0,100),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
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


p3<-plot(rdate[1214:1285], mod_sud_mean,  ylim=c(0,100),xlab='',ylab='',type='l',col='#82012099',yaxt='n',
         xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"),
         main='Southern Water')
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


p7<-plot(rdate[1214:1285], mod_nord_mean_D,  ylim=c(0,11),xlab='',ylab='',type='l',col='royalblue',
         xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,NN_D, col='#4575b455',border = NA)
par(new=T)
plot(rdate[1225],nord_bloom_med_hgd,ylim=c(0,11),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
mtext(side=2, expression(paste('ng l'^-1)), line=2.6, cex=0.85)
par(new=T)
plot(rdate[1225],nord_bloom_min_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],nord_bloom_max_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab=expression(paste('ng l'^-1)))
segments(rdate[1225],nord_bloom_max_hgd,rdate[1225],nord_bloom_min_hgd)
mtext(side=2, expression(paste('Hg'[D])), line=4.5, font=2, cex=1, las=1, at=8.7)

p8<-plot(rdate[1214:1285], mod_cent_mean_D,  ylim=c(0,11),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
         xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,CC_D, col='#fed97666',border = NA)
par(new=T)
plot(rdate[1225],central_bloom_med_hgd,ylim=c(0,11),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab= '')
par(new=T)
plot(rdate[1225],central_bloom_min_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')   
par(new=T)
plot(rdate[1225],central_bloom_max_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')        
segments(rdate[1225],central_bloom_max_hgd,rdate[1225],central_bloom_min_hgd)
par(new=T)
plot(rdate[1227],centralIND_bloom_med_hgd,ylim=c(0,11),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")), col='darkgrey',
     ylab='')
par(new=T)
plot(rdate[1227],centralIND_bloom_min_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',
     ylab='')   
par(new=T)
plot(rdate[1227],centralIND_bloom_max_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',
     ylab='')   
segments(rdate[1227],centralIND_bloom_max_hgd,rdate[1227],centralIND_bloom_min_hgd,col='darkgrey')


p9<-plot(rdate[1214:1285], mod_sud_mean_D,  ylim=c(0,11),xlab='',ylab='',type='l',col='#82012099',yaxt='n',
         xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,SS_D, col='#82012066',border = NA)
par(new=T)
plot(rdate[1225],south_bloom_med_hgd,ylim=c(0,11),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
par(new=T)
plot(rdate[1225],south_bloom_min_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
par(new=T)
plot(rdate[1225],south_bloom_max_hgd,ylim=c(0,11),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')   
segments(rdate[1225],south_bloom_max_hgd,rdate[1225],south_bloom_min_hgd)

p4<-plot(rdate[1214:1285], mod_nord_mean_mhgt,  ylim=c(0,0.4),xlab='',ylab='',type='l', col='royalblue',
         xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,NN_mhg, col='#4575b455',border = NA)
par(new=T)
plot(rdate[1225],nord_bloom_med_mhgt, ylim=c(0,0.4),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
mtext(side=2, expression(paste('ng l'^-1)), line=2.6, cex=0.85)
par(new=T)
plot(rdate[1225],nord_bloom_min_mhgt, ylim=c(0,0.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
par(new=T)
plot(rdate[1225],nord_bloom_max_mhgt, ylim=c(0,0.4),pch='-',xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')        
segments(rdate[1225],nord_bloom_max_mhgt,rdate[1225],nord_bloom_min_mhgt)
mtext(side=2, expression(paste('MeHg'[T])), line=4.5, font=2, cex=1, las=1, at=.38)


p5<-plot(rdate[1214:1285], mod_cent_mean_mhgt,  ylim=c(0,0.4),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
         xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,CC_mhg, col='#fed97666',border = NA)
par(new=T)
plot(rdate[1225],central_bloom_med_mhgt, ylim=c(0,0.4),pch=19,xaxt='n',type='p',cex=2,xlab='',yaxt='n',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),
     ylab='')
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


p6<-plot(rdate[1214:1285], mod_sud_mean_mhgt,  ylim=c(0,0.4),xlab='',ylab='',type='l',col='#820120',yaxt='n',
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



p10<-plot(rdate[1214:1285], mod_nord_mean_mhgd_D,  ylim=c(0,0.12),xlab='',ylab='',type='l', col='royalblue',
          xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,NN_mhg_D, col='#4575b455',border = NA)
par(new=T)
plot(rdate[1225],nord_bloom_med_mhgd, ylim=c(0,0.12),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')
mtext(side=2, expression(paste('ng l'^-1)), line=2.6, cex=0.85)
par(new=T)
plot(rdate[1225],nord_bloom_min_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],nord_bloom_max_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')        
segments(rdate[1225],nord_bloom_max_mhgd,rdate[1225],nord_bloom_min_mhgd)
mtext(side=2, expression(paste('MeHg'[D])), line=4.5, font=2, cex=1, las=1, at=.115)

 
p11<-plot(rdate[1214:1285], mod_cent_mean_mhgd_D,  ylim=c(0,0.12),xlab='',ylab='',type='l',col='#d1740c99',yaxt='n',
          xlim=as.Date(c("2001-01-01", "2006-12-31"), yaxt='n',"%Y-%m-%d"))
polygon(xx,CC_mhg_D, col='#fed97666',border = NA)
par(new=T)
plot(rdate[1225],central_bloom_med_mhgd, ylim=c(0,0.12),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')
par(new=T)
plot(rdate[1225],central_bloom_min_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],central_bloom_max_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')        
segments(rdate[1225],central_bloom_max_mhgd,rdate[1225],central_bloom_min_mhgd)
par(new=T)
plot(rdate[1227],centralIND_bloom_med_mhgd, ylim=c(0,0.12),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")), col='darkgrey',yaxt='n',
     ylab='')
par(new=T)
plot(rdate[1227],centralIND_bloom_min_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1227],centralIND_bloom_max_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),col='darkgrey',yaxt='n',
     ylab='')   
segments(rdate[1227],centralIND_bloom_max_mhgd,rdate[1227],centralIND_bloom_min_mhgd,col='darkgrey')


p12<-plot(rdate[1214:1285], mod_sud_mean_mhgd_D,  ylim=c(0,0.12),xlab='',ylab='',type='l',col='#820120',yaxt='n',
          xlim=as.Date(c("2001-01-01", "2006-12-31"), "%Y-%m-%d"))
polygon(xx,SS_mhg_D, col='#82012066',border = NA)
par(new=T)
plot(rdate[1225],south_bloom_med_mhgd, ylim=c(0,0.12),pch=19,xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')
par(new=T)
plot(rdate[1225],south_bloom_min_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
     ylab='')   
par(new=T)
plot(rdate[1225],south_bloom_max_mhgd, ylim=c(0,0.12),pch='-',xaxt='n',type='p',cex=2,xlab='',
     xlim=as.Date(c("2001-01-01", "2006-12-31")),yaxt='n',
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

plot(rdate2[36:48], mod_cent_mean_mhgd_D[36:48], type='l')
