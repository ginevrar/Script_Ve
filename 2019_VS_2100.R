setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\ZeroEm')     #sim_cl

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')	

mehg<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')	

mehg_perc<-mehg[,12:21]/hg[,12:21]*100

plot(rdate,mehg_perc[,1],type='l',col=1, ylim=c(0,0.6))
par(new=T)
plot(rdate,mehg_perc[,2],type='l',col=2,ylim=c(0,0.6))
par(new=T)
plot(rdate,mehg_perc[,3],type='l',col=3,ylim=c(0,0.6))
par(new=T)
plot(rdate,mehg_perc[,4],type='l',col=4,ylim=c(0,0.6))
par(new=T)
plot(rdate,mehg_perc[,5],type='l',col=5,ylim=c(0,0.6))
par(new=T)
plot(rdate,mehg_perc[,6],type='l',col=6,ylim=c(0,0.6))
par(new=T)
plot(rdate,mehg_perc[,7],type='l',col=7,ylim=c(0,0.6))
par(new=T)
plot(rdate,mehg_perc[,8],type='l',col=8,ylim=c(0,0.6))
par(new=T)
plot(rdate,mehg_perc[,9],type='l', col=9,ylim=c(0,0.6))
par(new=T)
plot(rdate,mehg_perc[,10],type='l',col=10,ylim=c(0,0.6))

summary(mehg_perc)
rdate[1298:1309]
rdate[1430]
mehg_perc[1298:1321,]

plot(rdate[1430:2416],mehg$wn1[1430:2416], type='l')

rdate[1430:1441]   #2019
rdate[2403:2414]   #2100

mean((mehg$wn1[1430:1441] - mehg$wn1[2403:2414])/mehg$wn1[1430:1441]*100)
mean((mehg$wn2[1430:1441] - mehg$wn2[2403:2414])/mehg$wn2[1430:1441]*100)
mean((mehg$wn3[1430:1441] - mehg$wn3[2403:2414])/mehg$wn3[1430:1441]*100)
mean((mehg$wn4[1430:1441] - mehg$wn4[2403:2414])/mehg$wn4[1430:1441]*100)
mean((mehg$wn5[1430:1441] - mehg$wn5[2403:2414])/mehg$wn5[1430:1441]*100)
mean((mehg$wc6[1430:1441] - mehg$wc6[2403:2414])/mehg$wc6[1430:1441]*100)
mean((mehg$wc7[1430:1441] - mehg$wc7[2403:2414])/mehg$wc7[1430:1441]*100)
mean((mehg$ws8[1430:1441] - mehg$ws8[2403:2414])/mehg$ws8[1430:1441]*100)
mean((mehg$ws9[1430:1441] - mehg$ws9[2403:2414])/mehg$ws9[1430:1441]*100)
mean((mehg$ws10[1430:1441] - mehg$ws10[2403:2414])/mehg$ws10[1430:1441]*100)

mean((hg$wn1[1430:1441] - hg$wn1[2403:2414])/hg$wn1[1430:1441]*100)
mean((hg$wn2[1430:1441] - hg$wn2[2403:2414])/hg$wn2[1430:1441]*100)
mean((hg$wn3[1430:1441] - hg$wn3[2403:2414])/hg$wn3[1430:1441]*100)
mean((hg$wn4[1430:1441] - hg$wn4[2403:2414])/hg$wn4[1430:1441]*100)
mean((hg$wn5[1430:1441] - hg$wn5[2403:2414])/hg$wn5[1430:1441]*100)
mean((hg$wc6[1430:1441] - hg$wc6[2403:2414])/hg$wc6[1430:1441]*100)
mean((hg$wc7[1430:1441] - hg$wc7[2403:2414])/hg$wc7[1430:1441]*100)
mean((hg$ws8[1430:1441] - hg$ws8[2403:2414])/hg$ws8[1430:1441]*100)
mean((hg$ws9[1430:1441] - hg$ws9[2403:2414])/hg$ws9[1430:1441]*100)
mean((hg$ws10[1430:1441] - hg$ws10[2403:2414])/hg$ws10[1430:1441]*100)

mean((mehg$sn1[1430:1441] - mehg$sn1[2403:2414])/mehg$sn1[1430:1441]*100)
mean((mehg$sn2[1430:1441] - mehg$sn2[2403:2414])/mehg$sn2[1430:1441]*100)
mean((mehg$sn3[1430:1441] - mehg$sn3[2403:2414])/mehg$sn3[1430:1441]*100)
mean((mehg$sn4[1430:1441] - mehg$sn4[2403:2414])/mehg$sn4[1430:1441]*100)
mean((mehg$sn5[1430:1441] - mehg$sn5[2403:2414])/mehg$sn5[1430:1441]*100)
mean((mehg$sc6[1430:1441] - mehg$sc6[2403:2414])/mehg$sc6[1430:1441]*100)
mean((mehg$sc7[1430:1441] - mehg$sc7[2403:2414])/mehg$sc7[1430:1441]*100)
mean((mehg$ss8[1430:1441] - mehg$ss8[2403:2414])/mehg$ss8[1430:1441]*100)
mean((mehg$ss9[1430:1441] - mehg$ss9[2403:2414])/mehg$ss9[1430:1441]*100)
mean((mehg$ss10[1430:1441] - mehg$ss10[2403:2414])/mehg$ss10[1430:1441]*100)

mean((hg$sn1[1430:1441] - hg$sn1[2403:2414])/hg$sn1[1430:1441]*100)
mean((hg$sn2[1430:1441] - hg$sn2[2403:2414])/hg$sn2[1430:1441]*100)
mean((hg$sn3[1430:1441] - hg$sn3[2403:2414])/hg$sn3[1430:1441]*100)
mean((hg$sn4[1430:1441] - hg$sn4[2403:2414])/hg$sn4[1430:1441]*100)
mean((hg$sn5[1430:1441] - hg$sn5[2403:2414])/hg$sn5[1430:1441]*100)
mean((hg$sc6[1430:1441] - hg$sc6[2403:2414])/hg$sc6[1430:1441]*100)
mean((hg$sc7[1430:1441] - hg$sc7[2403:2414])/hg$sc7[1430:1441]*100)
mean((hg$ss8[1430:1441] - hg$ss8[2403:2414])/hg$ss8[1430:1441]*100)
mean((hg$ss9[1430:1441] - hg$ss9[2403:2414])/hg$ss9[1430:1441]*100)
mean((hg$ss10[1430:1441] - hg$ss10[2403:2414])/hg$ss10[1430:1441]*100)


sed_rate1<-mean(hg$sn1[1430:1441] - hg$sn1[2403:2414])/81
sed_rate2<-mean(hg$sn2[1430:1441] - hg$sn2[2403:2414])/81
sed_rate3<-mean(hg$sn3[1430:1441] - hg$sn3[2403:2414])/81
sed_rate4<-mean(hg$sn4[1430:1441] - hg$sn4[2403:2414])/81
sed_rate5<-mean(hg$sn5[1430:1441] - hg$sn5[2403:2414])/81
sed_rate6<-mean(hg$sc6[1430:1441] - hg$sc6[2403:2414])/81
sed_rate7<-mean(hg$sc7[1430:1441] - hg$sc7[2403:2414])/81
sed_rate8<-mean(hg$ss8[1430:1441] - hg$ss8[2403:2414])/81
sed_rate9<-mean(hg$ss9[1430:1441] - hg$ss9[2403:2414])/81
sed_rate10<-mean(hg$ss10[1430:1441] - hg$ss10[2403:2414])/81

sed_rate<-cbind(sed_rate1,sed_rate2,sed_rate3,sed_rate4,sed_rate5,sed_rate6,sed_rate7,sed_rate8,sed_rate9,sed_rate10)
mean(sed_rate)
sed_rate

rdate[1430:1441]
rdate[2403:2414]

sed_rate_mhg1<-mean(mehg$sn1[1430:1441] - mehg$sn1[2403:2414])/81
sed_rate_mhg2<-mean(mehg$sn2[1430:1441] - mehg$sn2[2403:2414])/81
sed_rate_mhg3<-mean(mehg$sn3[1430:1441] - mehg$sn3[2403:2414])/81
sed_rate_mhg4<-mean(mehg$sn4[1430:1441] - mehg$sn4[2403:2414])/81
sed_rate_mhg5<-mean(mehg$sn5[1430:1441] - mehg$sn5[2403:2414])/81
sed_rate_mhg6<-mean(mehg$sc6[1430:1441] - mehg$sc6[2403:2414])/81
sed_rate_mhg7<-mean(mehg$sc7[1430:1441] - mehg$sc7[2403:2414])/81
sed_rate_mhg8<-mean(mehg$ss8[1430:1441] - mehg$ss8[2403:2414])/81
sed_rate_mhg9<-mean(mehg$ss9[1430:1441] - mehg$ss9[2403:2414])/81
sed_rate_mhg10<-mean(mehg$ss10[1430:1441] - mehg$ss10[2403:2414])/81

sed_rate_mhg<-cbind(sed_rate_mhg1,sed_rate_mhg2,sed_rate_mhg3,sed_rate_mhg4,sed_rate_mhg5,sed_rate_mhg6,sed_rate_mhg7,sed_rate_mhg8,sed_rate_mhg9,sed_rate_mhg10)
mean(sed_rate_mhg*1000)
  sed_rate_mhg*1000
rdate[1430:1441]
rdate[2403:2414]

wat_rate1<-mean(hg$wn1[1430:1441] - hg$wn1[2403:2414])/81
wat_rate2<-mean(hg$wn2[1430:1441] - hg$wn2[2403:2414])/81
wat_rate3<-mean(hg$wn3[1430:1441] - hg$wn3[2403:2414])/81
wat_rate4<-mean(hg$wn4[1430:1441] - hg$wn4[2403:2414])/81
wat_rate5<-mean(hg$wn5[1430:1441] - hg$wn5[2403:2414])/81
wat_rate6<-mean(hg$wc6[1430:1441] - hg$wc6[2403:2414])/81
wat_rate7<-mean(hg$wc7[1430:1441] - hg$wc7[2403:2414])/81
wat_rate8<-mean(hg$ws8[1430:1441] - hg$ws8[2403:2414])/81
wat_rate9<-mean(hg$ws9[1430:1441] - hg$ws9[2403:2414])/81
wat_rate10<-mean(hg$ws10[1430:1441] - hg$ws10[2403:2414])/81

wat_rate<-cbind(wat_rate1,wat_rate2,wat_rate3,wat_rate4,wat_rate5,wat_rate6,wat_rate7,wat_rate8,wat_rate9,wat_rate10)
mean(wat_rate)
wat_rate

rdate[1430:1441]
rdate[2403:2414]


wat_rate_mhg1<-mean(mehg$wn1[1430:1441] - mehg$wn1[2403:2414])/81
wat_rate_mhg2<-mean(mehg$wn2[1430:1441] - mehg$wn2[2403:2414])/81
wat_rate_mhg3<-mean(mehg$wn3[1430:1441] - mehg$wn3[2403:2414])/81
wat_rate_mhg4<-mean(mehg$wn4[1430:1441] - mehg$wn4[2403:2414])/81
wat_rate_mhg5<-mean(mehg$wn5[1430:1441] - mehg$wn5[2403:2414])/81
wat_rate_mhg6<-mean(mehg$wc6[1430:1441] - mehg$wc6[2403:2414])/81
wat_rate_mhg7<-mean(mehg$wc7[1430:1441] - mehg$wc7[2403:2414])/81
wat_rate_mhg8<-mean(mehg$ws8[1430:1441] - mehg$ws8[2403:2414])/81
wat_rate_mhg9<-mean(mehg$ws9[1430:1441] - mehg$ws9[2403:2414])/81
wat_rate_mhg10<-mean(mehg$ws10[1430:1441] - mehg$ws10[2403:2414])/81

wat_rate_mhg<-cbind(wat_rate_mhg1,wat_rate_mhg2,wat_rate_mhg3,wat_rate_mhg4,wat_rate_mhg5,wat_rate_mhg6,wat_rate_mhg7,wat_rate_mhg8,wat_rate_mhg9,wat_rate_mhg10)
mean(wat_rate_mhg*1000)
wat_rate_mhg*1000
rdate[1430:1441]
rdate[2403:2414]






nord_SED_conc<-c(hg$sn1[1430:1441],hg$sn2[1430:1441],hg$sn3[1430:1441],hg$sn4[1430:1441],hg$sn5[1430:1441],hg$sc6[1430:1441])
MMM<-median(nord_SED_conc)  #ng g --> ug g
MMM/200.59


(4.66-4.29)/4.66*100
(2.2-2.13)/2.2*100


nord_SED_conc_mehg<-c(mehg$sn1[1430:1441],mehg$sn2[1430:1441],mehg$sn3[1430:1441],mehg$sn4[1430:1441],mehg$sn5[1430:1441],mehg$sc6[1430:1441])
MMMnn<-median(nord_SED_conc_mehg)  #ng g --> ug g
MMMnn/215

(0.0078-0.002574347)/0.0078*100


sud_SED_conc<-c(hg$sc7[1430:1441],hg$ss8[1430:1441],hg$ss9[1430:1441],hg$ss10[1430:1441])
SSS<-median(sud_SED_conc)  #ng g --> ug g
SSS/200.59

sud_SED_conc_memehg<-c(mehg$sc7[1430:1441],mehg$ss8[1430:1441],mehg$ss9[1430:1441],mehg$ss10[1430:1441])
SSS<-median(sud_SED_conc_memehg)  #ng g --> ug g
SSS/215

(0.0037-0.001367995)/0.0037*100

plot(hg$sn1[1430:2414])



(hg$sn1[1430:1441] - hg$sn1[2403:2414])/81
(hg$sn2[1430:1441] - hg$sn2[2403:2414])/81
(hg$sn3[1430:1441] - hg$sn3[2403:2414])/81
(hg$sn4[1430:1441] - hg$sn4[2403:2414])/81
(hg$sn5[1430:1441] - hg$sn5[2403:2414])/81
(hg$sc6[1430:1441] - hg$sc6[2403:2414])/81
(hg$sc7[1430:1441] - hg$sc7[2403:2414])/81
(hg$ss8[1430:1441] - hg$ss8[2403:2414])/81
(hg$ss9[1430:1441] - hg$ss9[2403:2414])/81
(hg$ss10[1430:1441] - hg$ss10[2403:2414])/81
 

mean((mehg$dsn1[1430:1441] - mehg$dsn1[2403:2414])/mehg$dsn1[1430:1441]*100)
mean((mehg$dsn2[1430:1441] - mehg$dsn2[2403:2414])/mehg$dsn2[1430:1441]*100)
mean((mehg$dsn3[1430:1441] - mehg$dsn3[2403:2414])/mehg$dsn3[1430:1441]*100)
mean((mehg$dsn4[1430:1441] - mehg$dsn4[2403:2414])/mehg$dsn4[1430:1441]*100)
mean((mehg$dsn5[1430:1441] - mehg$dsn5[2403:2414])/mehg$dsn5[1430:1441]*100)
mean((mehg$dsc6[1430:1441] - mehg$dsc6[2403:2414])/mehg$dsc6[1430:1441]*100)
mean((mehg$dsc7[1430:1441] - mehg$dsc7[2403:2414])/mehg$dsc7[1430:1441]*100)
mean((mehg$dss8[1430:1441] - mehg$dss8[2403:2414])/mehg$dss8[1430:1441]*100)
mean((mehg$dss9[1430:1441] - mehg$dss9[2403:2414])/mehg$dss9[1430:1441]*100)
mean((mehg$dss10[1430:1441] - mehg$dss10[2403:2414])/mehg$dss10[1430:1441]*100)

mean((hg$dsn1[1430:1441] - hg$dsn1[2403:2414])/hg$dsn1[1430:1441]*100)
mean((hg$dsn2[1430:1441] - hg$dsn2[2403:2414])/hg$dsn2[1430:1441]*100)
mean((hg$dsn3[1430:1441] - hg$dsn3[2403:2414])/hg$dsn3[1430:1441]*100)
mean((hg$dsn4[1430:1441] - hg$dsn4[2403:2414])/hg$dsn4[1430:1441]*100)
mean((hg$dsn5[1430:1441] - hg$dsn5[2403:2414])/hg$dsn5[1430:1441]*100)
mean((hg$dsc6[1430:1441] - hg$dsc6[2403:2414])/hg$dsc6[1430:1441]*100)
mean((hg$dsc7[1430:1441] - hg$dsc7[2403:2414])/hg$dsc7[1430:1441]*100)
mean((hg$dss8[1430:1441] - hg$dss8[2403:2414])/hg$dss8[1430:1441]*100)
mean((hg$dss9[1430:1441] - hg$dss9[2403:2414])/hg$dss9[1430:1441]*100)
mean((hg$dss10[1430:1441] - hg$dss10[2403:2414])/hg$dss10[1430:1441]*100)




