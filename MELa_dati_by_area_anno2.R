setwd('C:/Users/Acer/Desktop/baba/buona')
setwd('C:/Users/Acer/Desktop/baba/buona/double_in/f/h')
setwd('C:/Users/Acer/Desktop/baba/buona/double_in/MMM2')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

time.steps <- hg[,1]
#time.steps2 <- trunc(time.steps, 0)
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
hg1<- cbind(TEMPO, hg)
rdate<-as.Date(hg1$TEMPO, tz= "GMT", format="%Y")

#ACQUE modeled da 2001 a 2010  [1230:735] --> [1215:1250]  [1239:1332]

rdate1<-rdate[1226:1309]
rdate2<-rdate[1220:1320]

nord_hg<-data.frame(hg$wn1[1226:1309],hg$wn2[1226:1309],hg$wn4[1226:1309]); 
names(nord_hg)<-c('w1','w2','w4')
centr_n_hg<-data.frame(hg$wc6[1226:1309], hg$wn3[1226:1309], hg$wn5[1226:1309])
names(centr_n_hg)<-c('w6','w3','w5')

centr_s_hg<-hg$wc7[1226:1309]

rdate[1226:1309]
sud_hg<-data.frame(hg$ws8[1226:1309],hg$ws9[1226:1309], hg$ws10[1226:1309])
names(sud_hg)<-c('w8','w9','w10')

bnord_y1<-filter(Water_nord_df, Water_nord_df$Anno ==2002)
bnord_y2<-filter(Water_nord_df, Water_nord_df$Anno ==2003)
bnord_y3<-filter(Water_nord_df, Water_nord_df$Anno ==2004)
bnord_y4<-filter(Water_nord_df, Water_nord_df$Anno ==2005)
bnord_y5<-rep(NA,12)
bnord_y6<-filter(Water_nord_df, Water_nord_df$Anno ==2007)
bnord_y7<-filter(Water_nord_df, Water_nord_df$Anno ==2008)

bcnord_y1<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2002)
bcnord_y2<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2003)
bcnord_y3<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2004)
bcnord_y4<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2005)
bcnord_y5<-rep(NA,12)
bcnord_y6<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2007)
bcnord_y7<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2008)

bcsud_y1<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2002)
bcsud_y2<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2003)
bcsud_y3<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2004)
bcsud_y4<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2005)
bcsud_y5<-rep(NA,12)
bcsud_y6<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2007)
bcsud_y7<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2008)

bsud_y1<-filter(Water_sud_df, Water_sud_df$Anno ==2002)
bsud_y2<-filter(Water_sud_df, Water_sud_df$Anno ==2003)
bsud_y3<-filter(Water_sud_df, Water_sud_df$Anno ==2004)
bsud_y4<-filter(Water_sud_df, Water_sud_df$Anno ==2005)
bsud_y5<-rep(NA,12)
bsud_y6<-filter(Water_sud_df, Water_sud_df$Anno ==2007)
bsud_y7<-filter(Water_sud_df, Water_sud_df$Anno ==2008)


png('allboxes_year_Hg1_07_41ba20bbd.png',width = 21, height = 26,
  units = "cm", res=400)

par(mfrow=c(4,7),mar=c(.4,.1,1.5,0.0),
    oma=c(2.3,5.8,1.5,1), bty='n')

plot(rdate[1227:1238],hg$wn1[1227:1238], type='l', main='2002', col='royalblue', ylab='', ylim=c(0,50))
par(new=T)
plot(rdate[1227:1238],hg$wn2[1227:1238], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1227:1238],hg$wn4[1227:1238], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bnord_y1$Mese), bnord_y1$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')
#mtext('box1',side=2, outer=T)
mtext(text='box1',side=2, line=2.7, las=2)

plot(rdate[1239:1250],hg$wn1[1239:1250], type='l', ylab='',main='2003', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1239:1250],hg$wn2[1239:1250], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1239:1250],hg$wn4[1239:1250], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bnord_y2$Mese), bnord_y2$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')


plot(rdate[1251:1262],hg$wn1[1251:1262], type='l',ylab='', main='2004', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1251:1262],hg$wn2[1251:1262], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1251:1262],hg$wn4[1251:1262], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bnord_y3$Mese), bnord_y3$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1263:1274],hg$wn1[1263:1274], type='l',ylab='', main='2005', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1263:1274],hg$wn2[1263:1274], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1263:1274],hg$wn4[1263:1274], type='l',ylab='', main='', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bnord_y4$Mese), bnord_y4$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1275:1286],hg$wn1[1275:1286], type='l',ylab='', main='2006', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1275:1286],hg$wn2[1275:1286], type='l',ylab='', main='', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1275:1286],hg$wn4[1275:1286], type='l',ylab='', main='', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot((bnord_y5),  pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1287:1298],hg$wn1[1287:1298], type='l',ylab='', main='2007', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1287:1298],hg$wn2[1287:1298], type='l',ylab='', main='', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1287:1298],hg$wn4[1287:1298], type='l',ylab='', main='', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bnord_y6$Mese), bnord_y6$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1299:1310],hg$wn1[1299:1310], type='l',ylab='', main='2008', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1299:1310],hg$wn2[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1299:1310],hg$wn4[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bnord_y6$Mese), bnord_y6$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')


#---------------------- Hg acque centro nord ----------------------------

plot(rdate[1227:1238],hg$wn3[1227:1238], type='l', main=' ', col='royalblue', ylab='', ylim=c(0,50))
par(new=T)
plot(rdate[1227:1238],hg$wn5[1227:1238], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1227:1238],hg$wc6[1227:1238], type='l',ylab='', main='', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcnord_y1$Mese), bcnord_y1$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')
#mtext('box1',side=2, outer=T)
mtext(text='box1',side=2, line=2.7, las=2)

plot(rdate[1239:1250],hg$wn3[1239:1250], type='l', ylab='',main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1239:1250],hg$wn5[1239:1250], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1239:1250],hg$wc6[1239:1250], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcnord_y2$Mese), bcnord_y2$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1251:1262],hg$wn3[1251:1262], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1251:1262],hg$wn5[1251:1262], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1251:1262],hg$wc6[1251:1262], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcnord_y3$Mese), bcnord_y3$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1263:1274],hg$wn3[1263:1274], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1263:1274],hg$wn5[1263:1274], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1263:1274],hg$wc6[1263:1274], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcnord_y4$Mese), bcnord_y4$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1275:1286],hg$wn3[1275:1286], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1275:1286],hg$wn5[1275:1286], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1275:1286],hg$wc6[1275:1286], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
#plot(bcnord_y5$Mese), bcnord_y5$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1287:1298],hg$wn3[1287:1298], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1287:1298],hg$wn5[1287:1298], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1287:1298],hg$wc6[1287:1298], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcnord_y6$Mese), bcnord_y6$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1299:1310],hg$wn3[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1299:1310],hg$wn5[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1299:1310],hg$wc6[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcnord_y6$Mese), bcnord_y6$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')


####----------------Hg water centro sud -----------------------------------------------
plot(rdate[1227:1238],hg$wc7[1227:1238], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcnord_y1$Mese), bcnord_y1$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')
#mtext('box1',side=2, outer=T)
mtext(text='box1',side=2, line=2.7, las=2)


plot(rdate[1239:1250],hg$wc7[1239:1250], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcsud_y2$Mese), bcsud_y2$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1251:1262],hg$wc7[1251:1262], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcsud_y3$Mese), bcsud_y3$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1263:1274],hg$wc7[1263:1274], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcsud_y4$Mese), bcsud_y4$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1275:1286],hg$wc7[1275:1286], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
 #par(new=T)
#plot(jitter(bcsud_y5$Mese), bcsud_y5$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1287:1298],hg$wc7[1287:1298], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcsud_y6$Mese), bcsud_y6$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1299:1310],hg$wn1[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1299:1310],hg$wn2[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1299:1310],hg$wc7[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bcsud_y6$Mese), bcsud_y6$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')


####----------------Hg water sud -----------------------------------------------

plot(rdate[1227:1238],hg$ws8[1227:1238], type='l', main=' ', col='royalblue', ylab='', ylim=c(0,50))
par(new=T)
plot(rdate[1227:1238],hg$ws9[1227:1238], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1227:1238],hg$ws10[1227:1238], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bsud_y1$Mese), bsud_y1$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')
#mtext('box1',side=2, outer=T)
mtext(text='box1',side=2, line=2.7, las=2)

plot(rdate[1239:1250],hg$ws8[1239:1250], type='l', ylab='',main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1239:1250],hg$ws9[1239:1250], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1239:1250],hg$ws10[1239:1250], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bsud_y2$Mese), bsud_y2$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')


plot(rdate[1251:1262],hg$ws8[1251:1262], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1251:1262],hg$ws10[1251:1262], type='l',ylab='', main='', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1251:1262],hg$wc6[1251:1262], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bsud_y3$Mese), bsud_y3$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1263:1274],hg$ws8[1263:1274], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1263:1274],hg$ws10[1263:1274], type='l',ylab='', main='', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1263:1274],hg$wc6[1263:1274], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bsud_y4$Mese), bsud_y4$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1275:1286],hg$ws8[1275:1286], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1275:1286],hg$ws10[1275:1286], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1275:1286],hg$wc6[1275:1286], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
#par(new=T)
#plot(jitter(bsud_y5$Mese), bsud_y5$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1287:1298],hg$ws8[1287:1298], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1287:1298],hg$ws10[1287:1298], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1287:1298],hg$wc6[1287:1298], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bsud_y6$Mese), bsud_y6$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

plot(rdate[1299:1310],hg$ws8[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1299:1310],hg$ws10[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(rdate[1299:1310],hg$wc6[1299:1310], type='l',ylab='', main=' ', col='royalblue', ylim=c(0,50), yaxt='n')
par(new=T)
plot(jitter(bsud_y6$Mese), bsud_y6$Hg1, pch=19, col='#e6c3d177',xlab='', ylab='',xaxt='n', ylim=c(0,50), yaxt='n')

dev.off()


