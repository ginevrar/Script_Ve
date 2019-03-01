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

#setwd('C:/Users/gi/Dropbox/fin92b/mehg4/oksolid19')  #oksolid7
#setwd('C:/Users/Acer/Dropbox/fin92b/mehg4/oksolid41l')  #oksolid7
  setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\naoh2')

 tots<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(tots)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

silts<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 

time.steps <- tots[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

win.graph()
plot(rdate,silts$ss8,type='l')
plot(rdate,POMs$sc6,type='l')

win.graph()
plot(rdate[1300:1320],silts$wc6[1300:1320],type='l')
plot(rdate,silts$wc6,type='l')

box1$POM = box1$POC*1.77; box2$POM = box2$POC*1.77
box3$POM = box3$POC*1.77; box4$POM = box4$POC*1.77
box5$POM = box5$POC*1.77; box6$POM = box6$POC*1.77
box7$POM = box7$POC*1.77; box8$POM = box8$POC*1.77
box9$POM = box9$POC*1.77; box10$POM = box10$POC*1.77

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


ai1<-silts$wn1[1227:1238]       # 2002
ai2<-silts$wn1[1239:1250]   #2003h    @@ SOLO 11 elementi 2003
ai3<-silts$wn1[1251:1262]   # 2004
ai4<-silts$wn1[1263:1274]   # 2005

ai_year<-data.frame(ai1,ai2,ai3,ai4)
ai_mean<-rowMeans(ai_year)
ai_min<-apply(ai_year, 1, FUN=min)
ai_max<-apply(ai_year, 1, FUN=max)
ai_median<-apply(ai_year, 1, FUN=median)

bi1<-silts$wn2[1227:1238]       # 2002
bi2<-silts$wn2[1239:1250]  #2003h
bi3<-silts$wn2[1251:1262]   # 2004
bi4<-silts$wn2[1263:1274]   # 2005

bi_year<-data.frame(bi1,bi2,bi3,bi4)
bi_mean<-rowMeans(bi_year)
bi_min<-apply(bi_year, 1, FUN=min)
bi_max<-apply(bi_year, 1, FUN=max)

bi_median<-apply(bi_year, 1, FUN=median)

ci1<-silts$wn3[1227:1238]       # 2002
ci2<-silts$wn3[1239:1250]   #2003h
ci3<-silts$wn3[1251:1262]   # 2004
ci4<-silts$wn3[1263:1274]   # 2005


ci_year<-data.frame(ci1,ci2,ci3,ci4)
ci_mean<-rowMeans(ci_year)
ci_min<-apply(ci_year, 1, FUN=min)
ci_max<-apply(ci_year, 1, FUN=max)
ci_median<-apply(ci_year, 1, FUN=median)


di1<-silts$wn4[1227:1238]       # 2002
di2<-silts$wn4[1239:1250]   #2003h
di3<-silts$wn4[1251:1262]   # 2004
di4<-silts$wn4[1263:1274]   # 2005

di_year<-data.frame(di1,di2,di3,di4)
di_mean<-rowMeans(di_year)
di_min<-apply(di_year, 1, FUN=min)
di_max<-apply(di_year, 1, FUN=max)
di_median<-apply(di_year, 1, FUN=median)

ei1<-silts$wn5[1227:1238]       # 2002
ei2<-silts$wn5[1239:1250]   #2003h
ei3<-silts$wn5[1251:1262]   # 2004
ei4<-silts$wn5[1263:1274]   # 2005

ei_year<-data.frame(ei1,ei2,ei3,ei4)
ei_mean<-rowMeans(ei_year)
ei_min<-apply(ei_year, 1, FUN=min)
ei_max<-apply(ei_year, 1, FUN=max)
ei_median<-apply(ei_year, 1, FUN=median)

fi1<-silts$wc6[1227:1238]       # 2002
fi2<-silts$wc6[1239:1250]   #2003h
fi3<-silts$wc6[1251:1262]   # 2004
fi4<-silts$wc6[1263:1274]   # 2005

fi_year<-data.frame(fi1,fi2,fi3,fi4)
fi_mean<-rowMeans(fi_year)
fi_min<-apply(fi_year, 1, FUN=min)
fi_max<-apply(fi_year, 1, FUN=max)
fi_median<-apply(fi_year, 1, FUN=median)
 

gi1<-silts$wc7[1227:1238]       # 2002
gi2<-silts$wc7[1239:1250]   #2003h
gi3<-silts$wc7[1251:1262]   # 2004
gi4<-silts$wc7[1263:1274]   # 2005

gi_year<-data.frame(gi1,gi2,gi3,gi4)
gi_mean<-rowMeans(gi_year)
gi_min<-apply(gi_year, 1, FUN=min)
gi_max<-apply(gi_year, 1, FUN=max)
gi_median<-apply(gi_year, 1, FUN=median)

hi1<-silts$ws8[1227:1238]       # 2002
hi2<-silts$ws8[1239:1250]   #2003h
hi3<-silts$ws8[1251:1262]   # 2004
hi4<-silts$ws8[1263:1274]   # 2005

hi_year<-data.frame(hi1,hi2,hi3,hi4)
hi_mean<-rowMeans(hi_year)
hi_min<-apply(hi_year, 1, FUN=min)
hi_max<-apply(hi_year, 1, FUN=max)
hi_median<-apply(hi_year, 1, FUN=median)
 
ii1<-silts$ws9[1227:1238]       # 2002
ii2<-silts$ws9[1239:1250]   #2003h
ii3<-silts$ws9[1251:1262]   # 2004
ii4<-silts$ws9[1263:1274]   # 2005

ii_year<-data.frame(ii1,ii2,ii3,ii4)
ii_mean<-rowMeans(ii_year)
ii_min<-apply(ii_year, 1, FUN=min)
ii_max<-apply(ii_year, 1, FUN=max)
ii_median<-apply(ii_year, 1, FUN=median)

li1<-silts$ws10[1227:1238]       # 2002
li2<-silts$ws10[1239:1250]   #2003h
li3<-silts$ws10[1251:1262]   # 2004
li4<-silts$ws10[1263:1274]   # 2005

li_year<-data.frame(li1,li2,li3,li4)
li_mean<-rowMeans(li_year)
li_min<-apply(li_year, 1, FUN=min)
li_max<-apply(li_year, 1, FUN=max)
li_median<-apply(li_year, 1, FUN=median)


aiP1<-POMs$wn1[1227:1238]       # 2002
aiP2<-POMs$wn1[1239:1250]   #2003h    @@ SOLO 11 elementi 2003
aiP3<-POMs$wn1[1251:1262]   # 2004
aiP4<-POMs$wn1[1263:1274]   # 2005

ai_pom_year<-data.frame(aiP1,aiP2,aiP3,aiP4)
ai_pom_mean<-rowMeans(ai_pom_year)
ai_pom_min<-apply(ai_pom_year, 1, FUN=min)
ai_pom_max<-apply(ai_pom_year, 1, FUN=max)
ai_pom_median<-apply(ai_pom_year, 1, FUN=median)

biP1<-POMs$wn2[1227:1238]       # 2002
biP2<-POMs$wn2[1239:1250]  #2003h
biP3<-POMs$wn2[1251:1262]   # 2004
biP4<-POMs$wn2[1263:1274]   # 2005

bi_pom_year<-data.frame(biP1,biP2,biP3,biP4)
bi_pom_mean<-rowMeans(bi_pom_year)
bi_pom_min<-apply(bi_pom_year, 1, FUN=min)
bi_pom_max<-apply(bi_pom_year, 1, FUN=max)

bi_pom_median<-apply(bi_pom_year, 1, FUN=median)

ciP1<-POMs$wn3[1227:1238]       # 2002
ciP2<-POMs$wn3[1239:1250]   #2003h
ciP3<-POMs$wn3[1251:1262]   # 2004
ciP4<-POMs$wn3[1263:1274]   # 2005

ci_pom_year<-data.frame(ciP1,ciP2,ciP3,ciP4)
ci_pom_mean<-rowMeans(ci_pom_year)
ci_pom_min<-apply(ci_pom_year, 1, FUN=min)
ci_pom_max<-apply(ci_pom_year, 1, FUN=max)
ci_pom_median<-apply(ci_pom_year, 1, FUN=median)


diP1<-POMs$wn4[1227:1238]       # 2002
diP2<-POMs$wn4[1239:1250]   #2003h
diP3<-POMs$wn4[1251:1262]   # 2004
diP4<-POMs$wn4[1263:1274]   # 2005

di_pom_year<-data.frame(diP1,diP2,diP3,diP4)
di_pom_mean<-rowMeans(di_pom_year)
di_pom_min<-apply(di_pom_year, 1, FUN=min)
di_pom_max<-apply(di_pom_year, 1, FUN=max)
di_pom_median<-apply(di_pom_year, 1, FUN=median)

eiP1<-POMs$wn5[1227:1238]       # 2002
eiP2<-POMs$wn5[1239:1250]   #2003h
eiP3<-POMs$wn5[1251:1262]   # 2004
eiP4<-POMs$wn5[1263:1274]   # 2005

ei_pom_year<-data.frame(eiP1,eiP2,eiP3,eiP4)
ei_pom_mean<-rowMeans(ei_pom_year)
ei_pom_min<-apply(ei_pom_year, 1, FUN=min)
ei_pom_max<-apply(ei_pom_year, 1, FUN=max)
ei_pom_median<-apply(ei_pom_year, 1, FUN=median)

fiP1<-POMs$wc6[1227:1238]       # 2002
fiP2<-POMs$wc6[1239:1250]   #2003h
fiP3<-POMs$wc6[1251:1262]   # 2004
fiP4<-POMs$wc6[1263:1274]   # 2005

fi_pom_year<-data.frame(fiP1,fiP2,fiP3,fiP4)
fi_pom_mean<-rowMeans(fi_pom_year)
fi_pom_min<-apply(fi_pom_year, 1, FUN=min)
fi_pom_max<-apply(fi_pom_year, 1, FUN=max)
fi_pom_median<-apply(fi_pom_year, 1, FUN=median)


giP1<-POMs$wc7[1227:1238]       # 2002
giP2<-POMs$wc7[1239:1250]   #2003h
giP3<-POMs$wc7[1251:1262]   # 2004
giP4<-POMs$wc7[1263:1274]   # 2005

gi_pom_year<-data.frame(giP1,giP2,giP3,giP4)
gi_pom_mean<-rowMeans(gi_pom_year)
gi_pom_min<-apply(gi_pom_year, 1, FUN=min)
gi_pom_max<-apply(gi_pom_year, 1, FUN=max)
gi_pom_median<-apply(gi_pom_year, 1, FUN=median)

hiP1<-POMs$ws8[1227:1238]       # 2002
hiP2<-POMs$ws8[1239:1250]   #2003h
hiP3<-POMs$ws8[1251:1262]   # 2004
hiP4<-POMs$ws8[1263:1274]   # 2005

hi_pom_year<-data.frame(hiP1,hiP2,hiP3,hiP4)
hi_pom_mean<-rowMeans(hi_pom_year)
hi_pom_min<-apply(hi_pom_year, 1, FUN=min)
hi_pom_max<-apply(hi_pom_year, 1, FUN=max)
hi_pom_median<-apply(hi_pom_year, 1, FUN=median)

iiP1<-POMs$ws9[1227:1238]       # 2002
iiP2<-POMs$ws9[1239:1250]   #2003h
iiP3<-POMs$ws9[1251:1262]   # 2004
iiP4<-POMs$ws9[1263:1274]   # 2005

ii_pom_year<-data.frame(iiP1,iiP2,iiP3,iiP4)
ii_pom_mean<-rowMeans(ii_pom_year)
ii_pom_min<-apply(ii_pom_year, 1, FUN=min)
ii_pom_max<-apply(ii_pom_year, 1, FUN=max)
ii_pom_median<-apply(ii_pom_year, 1, FUN=median)

liP1<-POMs$ws10[1227:1238]       # 2002
liP2<-POMs$ws10[1239:1250]   #2003h
liP3<-POMs$ws10[1251:1262]   # 2004
liP4<-POMs$ws10[1263:1274]   # 2005

li_pom_year<-data.frame(liP1,liP2,liP3,liP4)
li_pom_mean<-rowMeans(li_pom_year)
li_pom_min<-apply(li_pom_year, 1, FUN=min)
li_pom_max<-apply(li_pom_year, 1, FUN=max)
li_pom_median<-apply(li_pom_year, 1, FUN=median)



ai_Tot1<-tots$wn1[1227:1238]       # 2002
ai_Tot2<-tots$wn1[1239:1250]   #2003h    @@ SOLO 11 elementi 2003
ai_Tot3<-tots$wn1[1251:1262]   # 2004
ai_Tot4<-tots$wn1[1263:1274]   # 2005

ai_tot_year<-data.frame(ai_Tot1,ai_Tot2,ai_Tot3,ai_Tot4)
ai_tot_mean<-rowMeans(ai_tot_year)
ai_tot_min<-apply(ai_tot_year, 1, FUN=min)
ai_tot_max<-apply(ai_tot_year, 1, FUN=max)
ai_tot_median<-apply(ai_tot_year, 1, FUN=median)

bi_Tot1<-tots$wn2[1227:1238]       # 2002
bi_Tot2<-tots$wn2[1239:1250]  #2003h
bi_Tot3<-tots$wn2[1251:1262]   # 2004
bi_Tot4<-tots$wn2[1263:1274]   # 2005

bi_tot_year<-data.frame(bi_Tot1,bi_Tot2,bi_Tot3,bi_Tot4)
bi_tot_mean<-rowMeans(bi_tot_year)
bi_tot_min<-apply(bi_tot_year, 1, FUN=min)
bi_tot_max<-apply(bi_tot_year, 1, FUN=max)

bi_tot_median<-apply(bi_tot_year, 1, FUN=median)

ci_Tot1<-tots$wn3[1227:1238]       # 2002
ci_Tot2<-tots$wn3[1239:1250]   #2003h
ci_Tot3<-tots$wn3[1251:1262]   # 2004
ci_Tot4<-tots$wn3[1263:1274]   # 2005

ci_tot_year<-data.frame(ci_Tot1,ci_Tot2,ci_Tot3,ci_Tot4)
ci_tot_mean<-rowMeans(ci_tot_year)
ci_tot_min<-apply(ci_tot_year, 1, FUN=min)
ci_tot_max<-apply(ci_tot_year, 1, FUN=max)
ci_tot_median<-apply(ci_tot_year, 1, FUN=median)


di_Tot1<-tots$wn4[1227:1238]       # 2002
di_Tot2<-tots$wn4[1239:1250]   #2003h
di_Tot3<-tots$wn4[1251:1262]   # 2004
di_Tot4<-tots$wn4[1263:1274]   # 2005

di_tot_year<-data.frame(di_Tot1,di_Tot2,di_Tot3,di_Tot4)
di_tot_mean<-rowMeans(di_tot_year)
di_tot_min<-apply(di_tot_year, 1, FUN=min)
di_tot_max<-apply(di_tot_year, 1, FUN=max)
di_tot_median<-apply(di_tot_year, 1, FUN=median)

ei_Tot1<-tots$wn5[1227:1238]       # 2002
ei_Tot2<-tots$wn5[1239:1250]   #2003h
ei_Tot3<-tots$wn5[1251:1262]   # 2004
ei_Tot4<-tots$wn5[1263:1274]   # 2005

ei_tot_year<-data.frame(ei_Tot1,ei_Tot2,ei_Tot3,ei_Tot4)
ei_tot_mean<-rowMeans(ei_tot_year)
ei_tot_min<-apply(ei_tot_year, 1, FUN=min)
ei_tot_max<-apply(ei_tot_year, 1, FUN=max)
ei_tot_median<-apply(ei_tot_year, 1, FUN=median)

fi_Tot1<-tots$wc6[1227:1238]       # 2002
fi_Tot2<-tots$wc6[1239:1250]   #2003h
fi_Tot3<-tots$wc6[1251:1262]   # 2004
fi_Tot4<-tots$wc6[1263:1274]   # 2005

fi_tot_year<-data.frame(fi_Tot1,fi_Tot2,fi_Tot3,fi_Tot4)
fi_tot_mean<-rowMeans(fi_tot_year)
fi_tot_min<-apply(fi_tot_year, 1, FUN=min)
fi_tot_max<-apply(fi_tot_year, 1, FUN=max)
fi_tot_median<-apply(fi_tot_year, 1, FUN=median)


gi_Tot1<-tots$wc7[1227:1238]       # 2002
gi_Tot2<-tots$wc7[1239:1250]   #2003h
gi_Tot3<-tots$wc7[1251:1262]   # 2004
gi_Tot4<-tots$wc7[1263:1274]   # 2005

gi_tot_year<-data.frame(gi_Tot1,gi_Tot2,gi_Tot3,gi_Tot4)
gi_tot_mean<-rowMeans(gi_tot_year)
gi_tot_min<-apply(gi_tot_year, 1, FUN=min)
gi_tot_max<-apply(gi_tot_year, 1, FUN=max)
gi_tot_median<-apply(gi_tot_year, 1, FUN=median)

hi_Tot1<-tots$ws8[1227:1238]       # 2002
hi_Tot2<-tots$ws8[1239:1250]   #2003h
hi_Tot3<-tots$ws8[1251:1262]   # 2004
hi_Tot4<-tots$ws8[1263:1274]   # 2005

hi_tot_year<-data.frame(hi_Tot1,hi_Tot2,hi_Tot3,hi_Tot4)
hi_tot_mean<-rowMeans(hi_tot_year)
hi_tot_min<-apply(hi_tot_year, 1, FUN=min)
hi_tot_max<-apply(hi_tot_year, 1, FUN=max)
hi_tot_median<-apply(hi_tot_year, 1, FUN=median)

ii_Tot1<-tots$ws9[1227:1238]       # 2002
ii_Tot2<-tots$ws9[1239:1250]   #2003h
ii_Tot3<-tots$ws9[1251:1262]   # 2004
ii_Tot4<-tots$ws9[1263:1274]   # 2005

ii_tot_year<-data.frame(ii_Tot1,ii_Tot2,ii_Tot3,ii_Tot4)
ii_tot_mean<-rowMeans(ii_tot_year)
ii_tot_min<-apply(ii_tot_year, 1, FUN=min)
ii_tot_max<-apply(ii_tot_year, 1, FUN=max)
ii_tot_median<-apply(ii_tot_year, 1, FUN=median)

li_Tot1<-tots$ws10[1227:1238]       # 2002
li_Tot2<-tots$ws10[1239:1250]   #2003h
li_Tot3<-tots$ws10[1251:1262]   # 2004
li_Tot4<-tots$ws10[1263:1274]   # 2005

li_tot_year<-data.frame(li_Tot1,li_Tot2,li_Tot3,li_Tot4)
li_tot_mean<-rowMeans(li_tot_year)
li_tot_min<-apply(li_tot_year, 1, FUN=min)
li_tot_max<-apply(li_tot_year, 1, FUN=max)
li_tot_median<-apply(li_tot_year, 1, FUN=median)


dd_SPM<-as.numeric(c(box1_median_SPM,box2_median_SPM,box3_median_SPM,box4_median_SPM,box5_median_SPM,
          box6_median_SPM,box7_median_SPM,box8_median_SPM,box9_median_SPM,box10_median_SPM))

mm_SPM<-c(ai_tot_mean, bi_tot_mean, ci_tot_mean, di_tot_mean, ei_tot_mean,
          fi_tot_mean,gi_tot_mean,hi_tot_mean,ii_tot_mean, li_tot_mean)



dd_POM<-as.numeric(c(box1_median_POM,box2_median_POM,box3_median_POM,box4_median_POM,box5_median_POM,
                     box6_median_POM,box7_median_POM,box8_median_POM,box9_median_POM,box10_median_POM))

mm_POM<-c(ai_pom_mean, bi_pom_mean, ci_pom_mean, di_pom_mean, ei_pom_mean,
          fi_pom_mean,gi_pom_mean,hi_pom_mean,ii_pom_mean, li_pom_mean)

u<-(lm(mm_SPM ~ dd_SPM))
str(dd_SPM)
str(mm_SPM)
cor.test(dd_SPM,mm_SPM)

#plot(dd_SPM,mm_SPM)
abline(u)


cor.test(mm_POM,dd_POM)

win.graph()
par(mfrow=c(2,1))
plot(dd_POM, type='l', ylim=c(0,6))
par(new=T)
plot(mm_POM, type='l', ylim=c(0,6), col=2)

plot(dd_SPM, type='l', ylim=c(0,56))
par(new=T)
plot(mm_SPM, type='l', ylim=c(0,56), col=2)

win.graph()
par(mfrow=c(2,5))
plot(box1_median_SPM, type='l',ylim=c(0,56))
par(new=T)
plot(ai_tot_mean, type='l',ylim=c(0,56), col=2)

plot(box2_median_SPM, type='l',ylim=c(0,56))
par(new=T)
plot(bi_tot_mean, type='l',ylim=c(0,56), col=2)

plot(box3_median_SPM, type='l',ylim=c(0,56))
par(new=T)
plot(ci_tot_mean, type='l',ylim=c(0,56), col=2)

plot(box4_median_SPM, type='l',ylim=c(0,56))
par(new=T)
plot(di_tot_mean, type='l',ylim=c(0,56), col=2)

plot(box5_median_SPM, type='l',ylim=c(0,56))
par(new=T)
plot(ei_tot_mean, type='l',ylim=c(0,56), col=2)

plot(box6_median_SPM, type='l',ylim=c(0,56))
par(new=T)
plot(fi_tot_mean, type='l',ylim=c(0,56), col=2)

plot(box7_median_SPM, type='l',ylim=c(0,56))
par(new=T)
plot(gi_tot_mean, type='l',ylim=c(0,56), col=2)

plot(box8_median_SPM, type='l',ylim=c(0,56))
par(new=T)
plot(hi_tot_mean, type='l',ylim=c(0,56), col=2)

plot(box9_median_SPM, type='l',ylim=c(0,56))
par(new=T)
plot(ii_tot_mean, type='l',ylim=c(0,56), col=2)

plot(box10_median_SPM, type='l',ylim=c(0,56))
par(new=T)
plot(li_tot_mean, type='l',ylim=c(0,56), col=2)


POM_perc<-POMs/tots*100
POC_perc<-POM_perc/1.77

surf_POC_m<-c(mean(POC_perc$sn1[1299:1310]),mean(POC_perc$sn2[1299:1310]),mean(POC_perc$sn3[1299:1310]),
              mean(POC_perc$sn4[1299:1310]),mean(POC_perc$sn5[1299:1310]),mean(POC_perc$sc6[1299:1310]),
              mean(POC_perc$sc7[1299:1310]),mean(POC_perc$ss8[1299:1310]),
              mean(POC_perc$ss9[1299:1310]),mean(POC_perc$ss10[1299:1310]))

surf_POC_d<-c(2.1,2.7,1,1.6,1.5,1.7,1.8,7.2,1.7,1.6)
subsurf_POC_m<-c(mean(POC_perc$sn1[1299:1310]),mean(POC_perc$sn2[1299:1310]),mean(POC_perc$sn3[1299:1310]),
              mean(POC_perc$sn4[1299:1310]),mean(POC_perc$sn5[1299:1310]),mean(POC_perc$sc6[1299:1310]),
              mean(POC_perc$sc7[1299:1310]),mean(POC_perc$ss8[1299:1310]),
              mean(POC_perc$ss9[1299:1310]),mean(POC_perc$ss10[1299:1310]))



poc10_perc_d<-1.6
mean(POC_perc$dss10[1299:1310])
poc10_percds_d<-1.6

subsurf_POC_d<-c(1.9,3.0,1.8,1.5,1.8,1.9,2.2,7.4,2.0,1.6)
subsurf_POC_m<-c(mean(POC_perc$dsn1[1299:1310]),mean(POC_perc$dsn2[1299:1310]),mean(POC_perc$dsn3[1299:1310]),
                 mean(POC_perc$dsn4[1299:1310]),mean(POC_perc$dsn5[1299:1310]),mean(POC_perc$dsc6[1299:1310]),
                 mean(POC_perc$dsc7[1299:1310]),mean(POC_perc$dss8[1299:1310]),
                 mean(POC_perc$dss9[1299:1310]),mean(POC_perc$dss10[1299:1310]))



pom_surfsed_dm<-cbind(surf_POC_d,surf_POC_m)
pom_subssed_dm<-cbind(subsurf_POC_d,subsurf_POC_m)

write.table(pom_surfsed_dm, file='POM_surfsed_perTaylorD.txt')
write.table(pom_subssed_dm, file='POM_subssed_perTaylorD.txt')

poc1[1306:1308]<-c(2.1, 1.9, 2.5)
poc2[1306:1308]<-c(2.7, 3.0, 3.0)
poc3[1306:1308]<-c(1, 1.8, 1.6)
poc4[1306:1308]<-c(1.6, 1.5, 1.6)
poc5[1306:1308]<-c(1.5, 1.8, 1.8)
poc6[1306:1308]<-c(1.7, 1.9, 2.0)
poc7[1306:1308]<-c(1.8,2.2,2.9)
poc8[1306:1308]<-c(7.2,7.4,8.5)
poc9[1306:1308]<-c(1.7,2.0,1.8)
poc10[1306:1308]<-c(1.6,1.6,1.4)

mean(POC_perc$ss10[1299:1310])
poc10_perc_d<-1.6
mean(POC_perc$dss10[1299:1310])
poc10_percds_d<-1.6

