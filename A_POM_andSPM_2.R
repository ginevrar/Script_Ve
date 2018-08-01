setwd('C:/Users/Acer/Dropbox/');library(dplyr)
setwd('C:/Users/gi/Dropbox/')
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

box1_median_SPM <- tapply(box1$TSS, box1$MESE, median);box1_sd_POM <- tapply(box1$TSS, box1$MESE, sd)
box2_median_SPM <- tapply(box2$TSS, box2$MESE, median);box2_sd_SPM <- tapply(box2$TSS, box2$MESE, sd)
box3_median_SPM <- tapply(box3$TSS, box3$MESE, median);box3_sd_SPM <- tapply(box3$TSS, box3$MESE, sd)
box4_median_SPM <- tapply(box4$TSS, box4$MESE, median);box4_sd_SPM <- tapply(box4$TSS, box4$MESE, sd)
box5_median_SPM <- tapply(box5$TSS, box5$MESE, median);box5_sd_SPM <- tapply(box5$TSS, box5$MESE, sd)
box6_median_SPM <- tapply(box6$TSS, box6$MESE, median);box6_sd_SPM <- tapply(box6$TSS, box6$MESE, sd)
box7_median_SPM <- tapply(box7$TSS, box7$MESE, median);box7_sd_SPM <- tapply(box7$TSS, box7$MESE, sd)
box8_median_SPM <- tapply(box8$TSS, box8$MESE, median);box8_sd_SPM <- tapply(box8$TSS, box8$MESE, sd)
box9_median_SPM <- tapply(box9$TSS, box9$MESE, median);box9_sd_SPM <- tapply(box9$TSS, box9$MESE, sd)
box10_median_SPM <- tapply(box10$TSS, box10$MESE, median);box10_sd_SPM <- tapply(box10$TSS, box10$MESE, sd)

box1_min_SPM <- tapply(box1$TSS, box1$MESE, min);box1_max_SPM <- tapply(box1$TSS, box1$MESE, max)
box2_min_SPM <- tapply(box2$TSS, box2$MESE, min);box2_max_SPM <- tapply(box2$TSS, box2$MESE, max)
box3_min_SPM <- tapply(box3$TSS, box3$MESE, min);box3_max_SPM <- tapply(box3$TSS, box3$MESE, max)
box4_min_SPM <- tapply(box4$TSS, box4$MESE, min);box4_max_SPM <- tapply(box4$TSS, box4$MESE, max)
box5_min_SPM <- tapply(box5$TSS, box5$MESE, min);box5_max_SPM <- tapply(box5$TSS, box5$MESE, max)
box6_min_SPM <- tapply(box6$TSS, box6$MESE, min);box6_max_SPM <- tapply(box6$TSS, box6$MESE, max)
box7_min_SPM <- tapply(box7$TSS, box7$MESE, min);box7_max_SPM <- tapply(box7$TSS, box7$MESE, max)
box8_min_SPM <- tapply(box8$TSS, box8$MESE, min);box8_max_SPM <- tapply(box8$TSS, box8$MESE, max)
box9_min_SPM <- tapply(box9$TSS, box9$MESE, min);box9_max_SPM <- tapply(box9$TSS, box9$MESE, max)
box10_min_SPM <- tapply(box10$TSS, box10$MESE, min);box10_max_SPM <- tapply(box10$TSS, box10$MESE, max)

box1$POM<-box1$POC*1.88;box2$POM<-box2$POC*1.88
box3$POM<-box3$POC*1.88;box4$POM<-box4$POC*1.88
box5$POM<-box5$POC*1.88;box6$POM<-box6$POC*1.88
box7$POM<-box7$POC*1.88;box8$POM<-box8$POC*1.88
box9$POM<-box9$POC*1.88;box10$POM<-box10$POC*1.88

box1_median_POM <- tapply(box1$POM, box1$MESE, median);box1_sd_POM <- tapply(box1$POM, box1$MESE, sd)
box2_median_POM <- tapply(box2$POM, box2$MESE, median);box2_sd_POM <- tapply(box2$POM, box2$MESE, sd)
box3_median_POM <- tapply(box3$POM, box3$MESE, median);box3_sd_POM <- tapply(box3$POM, box3$MESE, sd)
box4_median_POM <- tapply(box4$POM, box4$MESE, median);box4_sd_POM <- tapply(box4$POM, box4$MESE, sd)
box5_median_POM <- tapply(box5$POM, box5$MESE, median);box5_sd_POM <- tapply(box5$POM, box5$MESE, sd)
box6_median_POM <- tapply(box6$POM, box6$MESE, median);box6_sd_POM <- tapply(box6$POM, box6$MESE, sd)
box7_median_POM <- tapply(box7$POM, box7$MESE, median);box7_sd_POM <- tapply(box7$POM, box7$MESE, sd)
box8_median_POM <- tapply(box8$POM, box8$MESE, median);box8_sd_POM <- tapply(box8$POM, box8$MESE, sd)
box9_median_POM <- tapply(box9$POM, box9$MESE, median);box9_sd_POM <- tapply(box9$POM, box9$MESE, sd)
box10_median_POM <- tapply(box10$POM, box10$MESE, median);box10_sd_POM <- tapply(box10$POM, box10$MESE, sd)

box1_min_POM <- tapply(box1$POM, box1$MESE, min); box1_max_POM <- tapply(box1$POM, box1$MESE, max)
box2_min_POM <- tapply(box2$POM, box2$MESE, min); box2_max_POM <- tapply(box2$POM, box2$MESE, max)
box3_min_POM <- tapply(box3$POM, box3$MESE, min); box3_max_POM <- tapply(box3$POM, box3$MESE, max)
box4_min_POM <- tapply(box4$POM, box4$MESE, min); box4_max_POM <- tapply(box4$POM, box4$MESE, max)
box5_min_POM <- tapply(box5$POM, box5$MESE, min); box5_max_POM <- tapply(box5$POM, box5$MESE, max)
box6_min_POM <- tapply(box6$POM, box6$MESE, min); box6_max_POM <- tapply(box6$POM, box6$MESE, max)
box7_min_POM <- tapply(box7$POM, box7$MESE, min); box7_max_POM <- tapply(box7$POM, box7$MESE, max)
box8_min_POM <- tapply(box8$POM, box8$MESE, min); box8_max_POM <- tapply(box8$POM, box8$MESE, max)
box9_min_POM <- tapply(box9$POM, box9$MESE, min); box9_max_POM <- tapply(box9$POM, box9$MESE, max)
box10_min_POM <- tapply(box10$POM, box10$MESE, min); box10_max_POM <- tapply(box10$POM, box10$MESE, max)

#POC_box1<-c(0.5,0.4,0.5,0.8,0.6,0.7,0.8,0.9,0.7,0.4,0.6,0.4)
#POC_box1_sd<-c(0.5,0.4,0.5,0.8,0.6,0.7,0.8,0.9,0.7,0.4,0.6,0.4)

#POM_box1<-POC_box1*1.88
#POM_box1_sd<-POC_box1_sd*1.88

#setwd('C:/Users/gi/Desktop/finaleRITAMRE/nuoviin2')
#setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice/piuSILT6_eutrop9')
setwd('C:/Users/Ginevra/Dropbox/new_sed_layers2')
setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice/res_eutr7')
setwd('C:/Users/gi/Dropbox/fin28')
setwd('C:/Users/gi/Dropbox/fin45')
setwd('C:/Users/Acer/Dropbox/fin90/c')

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

xx<-seq(1,12);epsilon <- 0.08

ai1<-silts$wn1[1226+1:(1237)]       # 2002
ai2<-silts$wn1[1238+1:(1238+11)]   #2003h
ai3<-silts$wn1[1250+1:(1250+11)]   # 2004
ai4<-silts$wn1[1263+1:(1274)]   # 2005
ai5<-silts$wn1[1274+1:(1285)]   # 2006
ai6<-silts$wn1[1286+1:(1297)]   # 2007 
ai7<-silts$wn1[1298+1:(1298+11)]  

ai_year<-data.frame(ai1,ai2,ai3,ai4,ai5,ai6,ai7)
ai_mean<-rowMeans(ai_year)
ai_min<-apply(ai_year, 1, FUN=min)
ai_max<-apply(ai_year, 1, FUN=max)

AI<-c(ai_min,rev(ai_max))

bi1<-silts$wn2[1226+1:(1237)]       # 2002
bi2<-silts$wn2[1238+1:(1238+11)]   #2003h
bi3<-silts$wn2[1250+1:(1250+11)]   # 2004
bi4<-silts$wn2[1263+1:(1274)]   # 2005
bi5<-silts$wn2[1274+1:(1285)]   # 2006
bi6<-silts$wn2[1286+1:(1297)]   # 2007 
bi7<-silts$wn2[1298+1:(1298+11)]  

bi_year<-data.frame(bi1,bi2,bi3,bi4,bi5,bi6,bi7)
bi_mean<-rowMeans(bi_year)
bi_min<-apply(bi_year, 1, FUN=min)
bi_max<-apply(bi_year, 1, FUN=max)

BI<-c(bi_min,rev(bi_max))

ci1<-silts$wn3[1226+1:(1237)]       # 2002
ci2<-silts$wn3[1238+1:(1238+11)]   #2003h
ci3<-silts$wn3[1250+1:(1250+11)]   # 2004
ci4<-silts$wn3[1263+1:(1274)]   # 2005
ci5<-silts$wn3[1274+1:(1285)]   # 2006
ci6<-silts$wn3[1286+1:(1297)]   # 2007 
ci7<-silts$wn3[1298+1:(1298+11)]  

ci_year<-data.frame(ci1,ci2,ci3,ci4,ci5,ci6,ci7)
ci_mean<-rowMeans(ci_year)
ci_min<-apply(ci_year, 1, FUN=min)
ci_max<-apply(ci_year, 1, FUN=max)
CI<-c(ci_min,rev(ci_max))

di1<-silts$wn4[1226+1:(1237)]       # 2002
di2<-silts$wn4[1238+1:(1238+11)]   #2003h
di3<-silts$wn4[1250+1:(1250+11)]   # 2004
di4<-silts$wn4[1263+1:(1274)]   # 2005
di5<-silts$wn4[1274+1:(1285)]   # 2006
di6<-silts$wn4[1286+1:(1297)]   # 2007 
di7<-silts$wn4[1298+1:(1298+11)]  

di_year<-data.frame(di1,di2,di3,di4,di5,di6,di7)
di_mean<-rowMeans(di_year)
di_min<-apply(di_year, 1, FUN=min)
di_max<-apply(di_year, 1, FUN=max)

DI<-c(di_min,rev(di_max))


ei1<-silts$wn5[1226+1:(1237)]       # 2002
ei2<-silts$wn5[1238+1:(1238+11)]   #2003h
ei3<-silts$wn5[1250+1:(1250+11)]   # 2004
ei4<-silts$wn5[1263+1:(1274)]   # 2005
ei5<-silts$wn5[1274+1:(1285)]   # 2006
ei6<-silts$wn5[1286+1:(1297)]   # 2007 
ei7<-silts$wn5[1298+1:(1298+11)]  

ei_year<-data.frame(ei1,ei2,ei3,ei4,ei5,ei6,ei7)
ei_mean<-rowMeans(ei_year)
ei_min<-apply(ei_year, 1, FUN=min)
ei_max<-apply(ei_year, 1, FUN=max)

EI<-c(di_min,rev(di_max))


fi1<-silts$wc6[1226+1:(1237)]       # 2002
fi2<-silts$wc6[1238+1:(1238+11)]   #2003h
fi3<-silts$wc6[1250+1:(1250+11)]   # 2004
fi4<-silts$wc6[1263+1:(1274)]   # 2005
fi5<-silts$wc6[1274+1:(1285)]   # 2006
fi6<-silts$wc6[1286+1:(1297)]   # 2007 
fi7<-silts$wc6[1298+1:(1298+11)]  

fi_year<-data.frame(fi1,fi2,fi3,fi4,fi5,fi6,fi7)
fi_mean<-rowMeans(fi_year)
fi_min<-apply(fi_year, 1, FUN=min)
fi_max<-apply(fi_year, 1, FUN=max)

FI<-c(fi_min,rev(fi_max))
xxx<-c(rdate[1227+1:1238],rev(rdate[1227+1:1238]))


gi1<-silts$wc7[1226+1:(1237)]       # 2002
gi2<-silts$wc7[1238+1:(1238+11)]   #2003h
gi3<-silts$wc7[1250+1:(1250+11)]   # 2004
gi4<-silts$wc7[1263+1:(1274)]   # 2005
gi5<-silts$wc7[1274+1:(1285)]   # 2006
gi6<-silts$wc7[1286+1:(1297)]   # 2007 
gi7<-silts$wc7[1298+1:(1298+11)]  

gi_year<-data.frame(gi1,gi2,gi3,gi4,gi5,gi6,gi7)
gi_mean<-rowMeans(gi_year)
gi_min<-apply(gi_year, 1, FUN=min)
gi_max<-apply(gi_year, 1, FUN=max)

GI<-c(gi_min,rev(gi_max))


hi1<-silts$ws8[1226+1:(1237)]       # 2002
hi2<-silts$ws8[1238+1:(1238+11)]   #2003h
hi3<-silts$ws8[1250+1:(1250+11)]   # 2004
hi4<-silts$ws8[1263+1:(1274)]   # 2005
hi5<-silts$ws8[1274+1:(1285)]   # 2006
hi6<-silts$ws8[(1286+1):(1297)]   # 2007 
hi7<-silts$ws8[1298:(1298+11)]  

hi_year<-data.frame(hi1,hi2,hi3,hi4,hi5,hi6,hi7)
hi_mean<-rowMeans(hi_year)
hi_min<-apply(hi_year, 1, FUN=min)
hi_max<-apply(hi_year, 1, FUN=max)

HI<-c(hi_min,rev(hi_max))

rdate[1226:1237]

ii1<-silts$ws9[1226+1:(1237)]       # 2002
ii2<-silts$ws9[1238+1:(1238+11)]   #2003h
ii3<-silts$ws9[1250+1:(1250+11)]   # 2004
ii4<-silts$ws9[1263+1:(1274)]   # 2005
ii5<-silts$ws9[1274+1:(1285)]   # 2006
ii6<-silts$ws9[1286+1:(1297)]   # 2007 
ii7<-silts$ws9[1298+1:(1298+11)]  
rdate[1274+1:1285]

ii_year<-data.frame(ii1,ii2,ii3,ii4,ii5,ii6,ii7)
ii_mean<-rowMeans(ii_year)
ii_min<-apply(ii_year, 1, FUN=min)
ii_max<-apply(ii_year, 1, FUN=max)

II<-c(ii_min,rev(ii_max))

rdate[1263+1:(1274)] 

li1<-silts$ws10[1226+1:(1237)]       # 2002
li2<-silts$ws10[1238+1:(1238+11)]   #2003h
li3<-silts$ws10[1250+1:(1250+11)]   # 2004
li4<-silts$ws10[1263+1:(1274)]   # 2005
li5<-silts$ws10[1274+1:(1285)]   # 2006
li6<-silts$ws10[1286+1:(1297)]   # 2007 
li7<-silts$ws10[1298+1:(1298+11)]  

li_year<-data.frame(li1,li2,li3,li4,li5,li6,li7)
li_mean<-rowMeans(li_year)
li_min<-apply(li_year, 1, FUN=min)
li_max<-apply(li_year, 1, FUN=max)


ai_median<-apply(ai_year, 1, FUN=median)
li_median<-apply(li_year, 1, FUN=median)
li_median<-apply(li_year, 1, FUN=median)
li_median<-apply(li_year, 1, FUN=median)

LI<-c(li_min,rev(li_max))


png('All_boxes_SPM_res_fin90c_.png',res=300,
    width=30, height = 20, units = "cm")
par(mfrow=c(2,5), mar=c(3,1,1,1), oma=c(0,4,3.3,1), bty='n')
plot(rdate[1227+1:1238], ai_median, type='l', 
     col='#313695',lwd=2, main='Box1', 
     ylab='SPM (mg/L)',xlab= '', cex.lab=2, 
     cex.main=1.6, ylim=c(0,200))# , cex.axis=1.3, ylim=c(0,200))
polygon(xxx,AI, col='#31369577', border =NA)
par(new=T)
plot(box1_median_SPM, col='#313695',lwd=2.5, ylab='', cex=2,ylim=c(0,200), xaxt='n',yaxt='n')
segments(xx,box1_min_SPM,xx,+box1_max_SPM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_min_SPM,xx+epsilon,box1_min_SPM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_max_SPM,xx+epsilon,box1_max_SPM, col='#313695', lwd=1.8)

plot(rdate[1227+1:1238], solid$wn2[1227+1:1238], type='l', col='#4575b4',lwd=2,main='Box2',yaxt='n',
     ylab= '', xlab= '', cex.lab=2 , cex.main=1.6 , cex.axis=1.3,ylim=c(0,200))
polygon(xxx,BI, col='#31369577', border =NA)

par(new=T)
plot(box2_median_SPM, col='#4575b4',lwd=2.5, cex=2, ylab='', ylim=c(0,200), xaxt='n',yaxt='n') 
segments(xx,box2_min_SPM,xx,+box2_max_SPM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_min_SPM,xx+epsilon,box2_min_SPM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_max_SPM,xx+epsilon,box2_max_SPM, col='#4575b4', lwd=1.8)

plot(rdate[1227+1:1238],solid$wn4[1227+1:1238],  type='l',col='#abd9e9',lwd=2,main='Box4',yaxt='n',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6 , ylim=c(0,200),cex.axis=1.3)
par(new=T)
plot(box4_median_SPM, col='#abd9e9',cex=2, ylab='', lwd=2.5,ylim=c(0,200), xaxt='n',yaxt='n') 
polygon(xxx,DI, col='#31369577', border =NA)
segments(xx,box4_min_SPM,xx,+box4_max_SPM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_min_SPM,xx+epsilon,box4_min_SPM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_max_SPM,xx+epsilon,box4_max_SPM, col='#abd9e9', lwd=1.8)

#plot(SPM$BOX4, col='#4575b466', ylim=c(0,40), xaxt='n',yaxt='n') 
plot(rdate[1227+1:1238],solid$wn3[1227+1:1238],   ylab='',   type='l',col='#f7df9e',
     lwd=2,main='Box3',yaxt='n',
     xlab= '', cex.lab=2 , ylim=c(0,200), cex.main=1.6 , cex.axis=1.3)
polygon(xxx,CI, col='#31369577', border =NA)
par(new=T)
plot(box3_median_SPM, col='#f7df9e', cex=2, ylab='', lwd=2.5,ylim=c(0,200), xaxt='n',yaxt='n') 
segments(xx,box3_min_SPM,xx,+box3_max_SPM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box3_min_SPM,xx+epsilon,box3_min_SPM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box3_max_SPM,xx+epsilon,box3_max_SPM, col='#f7df9e', lwd=1.8)

plot(rdate[1227+1:1238] ,solid$wn5[1227+1:1238],ylab='',  type='l',col='#f7d067',lwd=2,yaxt='n', main='Box5',
     xlab= '', cex.lab=2 , cex.main=1.6 , cex.axis=1.3,ylim=c(0,200))
polygon(xxx,EI, col='#31369577', border =NA)
par(new=T)
plot(box5_median_SPM,col='#f7d067',cex=2,lwd=2.5,ylab='',  ylim=c(0,200), xaxt='n',yaxt='n') 
segments(xx,box5_min_SPM,xx,+box5_max_SPM, col='#f7d067', lwd=1.8)
segments(xx-epsilon,box5_min_SPM,xx+epsilon,box5_min_SPM, col='#f7d067', lwd=1.8)
segments(xx-epsilon,box5_max_SPM,xx+epsilon,box5_max_SPM, col='#f7d067', lwd=1.8)

plot(rdate[1227+1:1238] ,solid$wc6[1227+1:1238], type='l',col='#edba55',lwd=2, main='Box6',
     ylab='SPM (mg/L) ',xlab= '', cex.lab=2, cex.main=1.6 ,ylim=c(0,200), cex.axis=1.3)#
polygon(xxx,FI, col='#31369577', border =NA)

par(new=T)
plot(box6_median_SPM,col='#edba55',lwd=2.5, ylab='', cex=2, ylim=c(0,200), xaxt='n',yaxt='n') 
segments(xx,box6_min_SPM,xx,+box6_max_SPM, col='#edba55', lwd=1.8)
segments(xx-epsilon,box6_min_SPM,xx+epsilon,box6_min_SPM, col='#edba55', lwd=1.8)
segments(xx-epsilon,box6_max_SPM,xx+epsilon,box6_max_SPM, col='#edba55', lwd=1.8)

plot(rdate[1227+1:1238] ,solid$wc7[1227+1:1238], type='l',col='#f79220',lwd=2,yaxt='n', main='Box7',
     ylab='',xlab= '', cex.lab=2 , cex.main=1.6 ,ylim=c(0,200), cex.axis=1.3)#
par(new=T)
plot(box7_median_SPM,lwd=2.5, cex=2, col='#f79220',ylab='',  ylim=c(0,200), xaxt='n',yaxt='n') 
segments(xx,box7_min_SPM,xx,+box7_max_SPM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_min_SPM,xx+epsilon,box7_min_SPM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_max_SPM,xx+epsilon,box7_max_SPM, col='#f79220', lwd=1.8)

plot(rdate[1227+1:1238] ,solid$ws8[1227+1:1238], type='l',ylab= '', col='#f46d43',yaxt='n',lwd=2, main='Box8',
     xlab= '', cex.lab=2 , cex.main=1.6 , ylim=c(0,200), cex.axis=1.3)
par(new=T)
plot(box8_median_SPM, lwd=2.5, cex=2,col='#f46d43', ylab='', ylim=c(0,200), xaxt='n',yaxt='n') 
segments(xx,box8_min_SPM,xx,+box8_max_SPM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_min_SPM,xx+epsilon,box8_min_SPM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_max_SPM,xx+epsilon,box8_max_SPM, col='#f46d43', lwd=1.8)

plot(rdate[1227+1:1238] ,solid$ws9[1227+1:1238], type='l',col='#d73027',ylab= '',yaxt='n',lwd=2, main='Box9',
     xlab= '', cex.lab=2 , cex.main=1.6 , ylim=c(0,200), cex.axis=1.3)
par(new=T)
plot(box9_median_SPM,col='#d73027', lwd=2.5, cex=2, ylab='', ylim=c(0,200), xaxt='n',yaxt='n') 
segments(xx,box9_min_SPM,xx,+box9_max_SPM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_min_SPM,xx+epsilon,box9_min_SPM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_max_SPM,xx+epsilon,box9_max_SPM, col='#d73027', lwd=1.8)

plot(rdate[1227+1:1238],solid$ws10[1227+1:1238], type='l',col='#a50028',ylab= '',yaxt='n',lwd=2, main='Box10',
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,200))
par(new=T)
plot(box10_median_SPM, lwd=2.5, cex=2,col='#a50028', ylab='', ylim=c(0,200), xaxt='n',yaxt='n') 
segments(xx,box10_min_SPM,xx,+box10_max_SPM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_min_SPM,xx+epsilon,box10_min_SPM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_max_SPM,xx+epsilon,box10_max_SPM, col='#a50028', lwd=1.8)
dev.off()

aip1<-POMs$wn1[1226+1:(1237)]       # 2002
aip2<-POMs$wn1[1238+1:(1238+11)]   #2003h
aip3<-POMs$wn1[1250+1:(1250+11)]   # 2004
aip4<-POMs$wn1[1263+1:(1274)]   # 2005
aip5<-POMs$wn1[1274+1:(1285)]   # 2006
aip6<-POMs$wn1[1286+1:(1297)]   # 2007 
aip7<-POMs$wn1[1298+1:(1298+11)]  

ai_year<-data.frame(ai1,ai2,ai3,ai4,ai5,ai6,ai7)
ai_mean<-rowMeans(ai_year)
ai_min<-apply(ai_year, 1, FUN=min)
ai_max<-apply(ai_year, 1, FUN=max)

AI<-c(ai_min,rev(ai_max))


png('POM_con_fin90c__.png',width = 700, height = 480, units = "px")
par(mfrow=c(2,5), mar=c(3,1,1,1), oma=c(0,4,3.3,1), bty='n')
plot(rdate[1227+1:1238], POMs$wn1[1227+1:1238],  
     type='l', col='#31369577',lwd=2, main='Box1', 
     ylab='mg/L',xlab= '', cex.lab=2 , 
     cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)
plot(box1_median_POM,pch=1, cex=2,lwd=1, col='#313695', ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box1_min_POM,xx,+box1_max_POM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_min_POM,xx+epsilon,box1_min_POM, col='#313695', lwd=1.8)
segments(xx-epsilon,box1_max_POM,xx+epsilon,box1_max_POM, col='#313695', lwd=1.8)

mtext('POM (mg/L)', side=2, line=3, outer=F)
#mtext('Particolato organico in sospensione (POM)',
   #   side=3, line=2, outer=T, font=2)

plot(rdate[1227+1:1238] ,POMs$wn2[1227+1:1238],lty=1,    
     type='l', col='#4575b477',lwd=2,main='Box2',ylab= '',
     xlab= '', cex.lab=2 , cex.main=1.6 , yaxt='n',cex.axis=1.3,ylim=c(0,10))
par(new=T)
plot(box2_median_POM,pch=1, cex=2,lwd=1, col='#4575b4', ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box2_min_POM,xx,+box2_max_POM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_min_POM,xx+epsilon,box2_min_POM, col='#4575b4', lwd=1.8)
segments(xx-epsilon,box2_max_POM,xx+epsilon,box2_max_POM, col='#4575b4', lwd=1.8)

plot(rdate[1227+1:1238],POMs$wn4[1227+1:1238], ylim=c(0,10),   type='l',
     col='#abd9e988',lwd=2,main='Box4',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6 , yaxt='n',cex.axis=1.3)
par(new=T)
plot(box4_median_POM, col='#4575b466',cex=2, lwd=1, ylim=c(0,40), xaxt='n',yaxt='n') 
segments(xx,box4_min_POM,xx,+box4_max_POM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_min_POM,xx+epsilon,box4_min_POM, col='#abd9e9', lwd=1.8)
segments(xx-epsilon,box4_max_POM,xx+epsilon,box4_max_POM, col='#abd9e9', lwd=1.8)

plot(rdate[1227+1:1238] ,POMs$wn3[1227+1:1238],  yaxt='n',   
     type='l',col='#DDF26B77',lwd=2,main='Box3',
     xlab= '', ylab= '', cex.lab=2 , ylim=c(0,10), 
     cex.main=1.6 , cex.axis=1.3)
par(new=T)
plot(box3_median_POM,pch=1, cex=2, lwd=1,col='#DDF26B',ylab='', 
     ylim=c(0,10), xaxt='n',yaxt='n')
segments(xx,box3_min_POM,xx,+box3_max_POM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box3_min_POM,xx+epsilon,box3_min_POM, col='#f7df9e', lwd=1.8)
segments(xx-epsilon,box3_max_POM,xx+epsilon,box3_max_POM, col='#f7df9e', lwd=1.8)


plot(rdate[1227+1:1238] ,POMs$wn5[1227+1:1238],     
     type='l',col='#e5e57277',lwd=2, main='Box5',yaxt='n',
     xlab= '',ylab= '', cex.lab=2 , cex.main=1.6,
     cex.axis=1.3,ylim=c(0,10))
par(new=T)
plot(box5_median_POM,pch=1, cex=2,lwd=1, col='#e5e572',ylab = '',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box5_min_POM,xx,+box5_max_POM, col='#f7d067', lwd=1.8)
segments(xx-epsilon,box5_min_POM,xx+epsilon,box5_min_POM, col='#f7d067', lwd=1.8)
segments(xx-epsilon,box5_max_POM,xx+epsilon,box5_max_POM, col='#f7d067', lwd=1.8)

plot(rdate[1227+1:1238] ,POMs$wc6[1227+1:1238],    
     type='l',col='#fed97677',lwd=2, main='Box6',
     ylab=' ',xlab= '', cex.lab=2 , 
     cex.main=1.6 ,ylim=c(0,10), cex.axis=1.3)#
par(new=T)
plot(box6_median_POM,pch=1, cex=2, lwd=1,col='#fed976', 
     ylim=c(0,10),ylab='',
     xaxt='n',yaxt='n') 
mtext('POM (mg/L)', side=2, line=3, outer=F)
segments(xx,box6_min_POM,xx,+box6_max_POM, col='#edba55', lwd=1.8)
segments(xx-epsilon,box6_min_POM,xx+epsilon,box6_min_POM, col='#edba55', lwd=1.8)
segments(xx-epsilon,box6_max_POM,xx+epsilon,box6_max_POM, col='#edba55', lwd=1.8)

plot(rdate[1227+1:1238] ,POMs$wc7[1227+1:1238],    yaxt='n',
     type='l',col='#f7922077',lwd=2, main='Box7',
     ylab='',xlab= '', cex.lab=2 , cex.main=1.6 ,ylim=c(0,10), cex.axis=1.3)#
par(new=T)
plot(box7_median_POM,pch=1, cex=2, lwd=1,col='#f79220', ylim=c(0,10),ylab='',
     xaxt='n',yaxt='n') 
segments(xx,box7_min_POM,xx,+box7_max_POM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_min_POM,xx+epsilon,box7_min_POM, col='#f79220', lwd=1.8)
segments(xx-epsilon,box7_max_POM,xx+epsilon,box7_max_POM, col='#f79220', lwd=1.8)

plot(rdate[1227+1:1238],POMs$ws8[1227+1:1238],   
     type='l',ylab= '', col='#f46d4377',lwd=2, main='Box8',
     xlab= '', cex.lab=2 ,cex.main=1.6 , ylim=c(0,10),yaxt='n',
     cex.axis=1.3)
par(new=T)
plot(box8_median_POM, pch=1, cex=2,col='#f46d43',ylab='',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box8_min_POM,xx,+box8_max_POM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_min_POM,xx+epsilon,box8_min_POM, col='#f46d43', lwd=1.8)
segments(xx-epsilon,box8_max_POM,xx+epsilon,box8_max_POM, col='#f46d43', lwd=1.8)

hi1<-POMs$ws9[1226+1:(1237)]       # 2002
hi2<-POMs$ws9[1238+1:(1238+11)]   #2003h
hi3<-POMs$ws9[1250+1:(1250+11)]   # 2004
hi4<-POMs$ws9[1263+1:(1274)]   # 2005
hi5<-POMs$ws9[1274+1:(1285)]   # 2006
hi6<-POMs$ws9[1286+1:(1297)]   # 2007 
hi7<-POMs$ws9[1298+1:(1298+11)]  

hi_year<-data.frame(hi1,hi2,hi3,hi4,hi5,hi6,hi7)
                   
hi_mean<-rowMeans(hi_year)
hi_min<-apply(hi_year, 1, FUN=min)
hi_max<-apply(hi_year, 1, FUN=max)

HI<-c(hi_min,rev(hi_max))
xx<-c(mesi,rev(mesi))

xxx<-c(rdate[1227+1:1238],rev(rdate[1227+1:1238]))
     
plot(rdate[1227+1:1238] ,hi_mean,     
     type='l',col='#d73027',ylab= '',lwd=2, main='Box9',
     xlab= '', cex.lab=2 , cex.main=1.6 , 
     cex.axis=1.3, ylim=c(0,10),yaxt='n') 
polygon(xxx,HI, col='#d7302777', border = NA)

par(new=T)
plot(box9_median_POM, pch=1, cex=2,lwd=1,col='#d73027',ylab='',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box9_min_POM,xx,+box9_max_POM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_min_POM,xx+epsilon,box9_min_POM, col='#d73027', lwd=1.8)
segments(xx-epsilon,box9_max_POM,xx+epsilon,box9_max_POM, col='#d73027', lwd=1.8)

plot(rdate[1227+1:1238] ,POMs$ws10[1227+1:1238],yaxt='n',     
     type='l',col='#a5002877',ylab= '',lwd=2, main='Box10',
     xlab= '', cex.lab=2 , cex.main=1.6 , cex.axis=1.3, ylim=c(0,10))
par(new=T)


plot(box10_median_POM,pch=1, cex=2,lwd=1,col='#a50028',ylab='',
     ylim=c(0,10), xaxt='n',yaxt='n') 
segments(xx,box10_min_POM,xx,+box10_max_POM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_min_POM,xx+epsilon,box10_min_POM, col='#a50028', lwd=1.8)
segments(xx-epsilon,box10_max_POM,xx+epsilon,box10_max_POM, col='#a50028', lwd=1.8)

dev.off()

