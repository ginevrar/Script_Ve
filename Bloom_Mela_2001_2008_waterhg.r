Water_sud_bloom<-c(3.15,2.08,4.2)
Water_nord_bloom<-c(29.08555,	12.1798248,	45.9912752, NA, NA, NA,NA)
Water_central_bloom<-c(14.84366, 8.5531576,21.1341624, 2.58219507, 4.713865, 3.627636718 ,NA)
Marghera_bloom<-c(11.9391168,56,	100.7924632,NA,NA,NA,NA)


setwd('C:/Users/Ginevra/Dropbox/fin19')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

read.table('water_nordMELA.txt', header=T);read.table('water_cnordMELA.txt', header=T);read.table('water_csudMELA.txt', header=T);read.table('water_sudMELA.txt', header=T) 

time.steps <- hg[,1]
#time.steps2 <- trunc(time.steps, 0)
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
hg1<- cbind(TEMPO, hg)
rdate<-as.Date(hg1$TEMPO, tz= "GMT", format="%Y")

#ACQUE modeled da 2001 a 2010  [1230:735] --> [1215:1250]  [1239:1332]

rdate1<-rdate[1226:1309]
nord_hg<-data.frame(hg$wn1[1226:1309],hg$wn2[1226:1309],hg$wn4[1226:1309]); 
names(nord_hg)<-c('w1','w2','w4')
centr_n_hg<-data.frame(hg$wc6[1226:1309], hg$wn3[1226:1309], hg$wn5[1226:1309])
names(centr_n_hg)<-c('w6','w3','w5')

centr_s_hg<-hg$wc7[1226:1309]


sud_hg<-data.frame(hg$ws8[1226:1309],hg$ws9[1226:1309], hg$ws10[1226:1309])
names(sud_hg)<-c('w8','w9','w10')

#png('confr_MEla_E_Bloom2__fin5b_.png',width = 30, height = 20, units = "cm",res=300)
par(mfrow=c(2,2), bty='n',mar=c(4,5,2,0))
dev.off()
plot(rdate1,nord_hg$w1,ylim=c(0,60),type='l',lwd=2,
     yaxt='n',col='#4575b4')
par(new=T)
plot(rdate1,nord_hg$w2,ylim=c(0,60),type='l',lwd=2,
     yaxt='n',col='#4575b4')
par(new=T)
plot(rdate1,nord_hg$w4,ylim=c(0,60),type='l',lwd=2,
     yaxt='n',col='#4575b4')
par(new=T)
plot(Water_nord_df$Anno,Water_nord_df$Hg1, type='p
     ')

library(dplyr)
Water_nord_df_2003<-filter(Water_nord_df, Anno==2003)
plot(Water_nord_df_2003$Mese,Water_nord_df_2003$Hg1)

plot(rdate1,nord_hg$w1,ylim=c(0,60),type='l',lwd=2,
     yaxt='n',col='#4575b4')
par(new=T)
plot(rdate1,nord_hg$w2,ylim=c(0,60),type='l',lwd=2,
     yaxt='n',col='#4575b4')
par(new=T)
plot(rdate1,nord_hg$w4,ylim=c(0,60),type='l',lwd=2,
     yaxt='n',col='#4575b4')
par(new=T)

boxplot(Water_nord_bloom, Water_nord,main='Hg in water - north', 
        ylab='ng/L',cex.lab=1.8,
        cex.axis=1.3,xaxt='n',boxwex=0.4,
        col=c('#4575b477','#abd9e999'), 
        ylim=c(0,60), range =T, cex.main=2)
text(1,50,'Dati 2001-2003')
text(2,50,'Dati 2002-2008')

plot(rdate1,centr_n_hg$w6,ylim=c(0,70),type='l',lwd=2,
     yaxt='n',col='#4575b4')
par(new=T)
plot(rdate1,centr_n_hg$w3,ylim=c(0,70),type='l',lwd=2,
     yaxt='n',col='#4575b4')
par(new=T)
plot(rdate1,centr_n_hg$w5,ylim=c(0,70),type='l',lwd=2,
     yaxt='n',col='#4575b4')
par(new=T)
boxplot (Water_central_bloom, Water_centro_n , main='Hg water central-north', 
         ylab='ng/L', xaxt='n',
         cex.lab=1.8,
         cex.axis=1.3,xaxt='n',boxwex=0.4,
         col=c('#4575b477','#abd9e999'), 
         ylim=c(0,70), range =T, cex.main=2)


plot(rdate1,centr_s_hg,ylim=c(0,70),type='l',lwd=2,
     yaxt='n',col='#f79220')
par(new=T)
boxplot (Water_central_bloom, Water_centro_s  ,main='Hg acque centro-sud', 
         ylab='ng/L',  xaxt='n',
         cex.lab=1.8, cex.axis=1.3,xaxt='n',boxwex=0.4,
         col=c('#f7922099','#f7922033'), 
         ylim=c(0,70), range =T, cex.main=2)
         
plot(rdate1,sud_hg$w8,ylim=c(0,70),type='l',lwd=2,
     yaxt='n',col='#f79220')
par(new=T)  
plot(rdate1,sud_hg$w9,ylim=c(0,70),type='l',lwd=2,
     yaxt='n',col='#f79220')
par(new=T)  
plot(rdate1,sud_hg$w10,ylim=c(0,70),type='l',lwd=2,
     yaxt='n',col='#d73027')
par(new=T)  
boxplot(Water_sud_bloom,Water_sud,  main='Hg acque sud', 
        ylab='ng/L',xaxt='n',
        cex.lab=1.8, cex.axis=1.3,xaxt='n',boxwex=0.4,
        col=c('#d7302788','#d7302733'), 
        ylim=c(0,70), range =T, cex.main=2)
      
dev.off()