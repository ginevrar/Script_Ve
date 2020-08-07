setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\Reference_OK')     #sim_cl

mehg<-read.csv("Methyl_Hg.csv", skip = 1,header=FALSE, sep = ",", dec=".")
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')		

hgII<-read.csv("Divalent_Hg.csv", skip = 1,header=FALSE, sep = ",", dec=".")
names(hgII)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')		

mehgD<-read.csv("Dissolved_Methyl_Hg.csv", skip = 1,header=FALSE, sep = ",", dec=".")
names(mehgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				

DOCmehg<-read.csv("DOC_Sorbed_Methyl_Hg.csv", header=FALSE, skip =1, sep = ",", dec=".")
names(DOCmehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

hgD<-read.csv("Dissolved_Divalent_Hg.csv", skip = 1,header=FALSE, sep = ",", dec=".")
names(hgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
 
DOChg<-read.csv("DOC_Sorbed_Divalent_Hg.csv", header=FALSE, skip =1, sep = ",", dec=".")
names(DOChg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
 
metilazione<-read.csv("Bacterial_Methylation_Rate.csv", header=FALSE, skip =1, sep = ",", dec=".")
names(metilazione)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')		

demetilazione<-read.csv("Bacterial_Demethylation_Rate.csv", header=FALSE, skip =1, sep = ",", dec=".")
names(demetilazione)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                      'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                      'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                      'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')		

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip =1, sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                        'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                        'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                        'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')		

a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

Model_aree<-c(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
Model_area<-sum(Model_aree)
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71		

diss_mehg<-mehgD+DOCmehg ; str(diss_mehg);tail(diss_mehg)
diss_hg<-hgD+DOChg; str(diss_hg);tail(diss_hg)

time.steps <- demetilazione[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate
# metilato

demet1<-diss_mehg*demetilazione      # 1 d-1 * hgT ug m3 = ug m3 d
demet2<-mehg*demetilazione         # 1 d-1 * hgT ug m3 = ug m3 d
demet2_sed<-mehg*TOTs*demetilazione         # 1 d-1 * hgT ng g * g m3 = ng m3 d  

met1<-diss_hg*metilazione      # 1 d-1 * hgT ug m3 = ug m3 d
met2<-hgII*metilazione         # 1 d-1 * hgT ug m3 = ug m3 d
met2_sed<-hgII*TOTs*metilazione         # 1 d-1 * hgT ug m3 = ug m3 d

demet1_ugd<-demet1$wn1 *a1*d1
demet2_ugd<-demet1$wn2 *a2*d2
demet3_ugd<-demet1$wn3 *a3*d3
demet4_ugd<-demet1$wn4 *a4*d4
demet5_ugd<-demet1$wn5 *a5*d5
demet6_ugd<-demet1$wc6 *a6*d6
demet7_ugd<-demet1$wc7 *a7*d7
demet8_ugd<-demet1$ws8 *a8*d8
demet9_ugd<-demet1$ws9 *a9*d9
demet10_ugd<-demet1$ws10 *a10*d10

demet1b_ugd<-demet2$wn1 *a1*d1
demet2b_ugd<-demet2$wn2 *a2*d2
demet3b_ugd<-demet2$wn3 *a3*d3
demet4b_ugd<-demet2$wn4 *a4*d4
demet5b_ugd<-demet2$wn5 *a5*d5
demet6b_ugd<-demet2$wc6 *a6*d6
demet7b_ugd<-demet2$wc7 *a7*d7
demet8b_ugd<-demet2$ws8 *a8*d8
demet9b_ugd<-demet2$ws9 *a9*d9
demet10b_ugd<-demet2$ws10 *a10*d10


met1_ugd<-met1$wn1 *a1*d1
met2_ugd<-met1$wn2 *a2*d2
met3_ugd<-met1$wn3 *a3*d3
met4_ugd<-met1$wn4 *a4*d4
met5_ugd<-met1$wn5 *a5*d5
met6_ugd<-met1$wc6 *a6*d6
met7_ugd<-met1$wc7 *a7*d7
met8_ugd<-met1$ws8 *a8*d8
met9_ugd<-met1$ws9 *a9*d9
met10_ugd<-met1$ws10 *a10*d10

met1b_ugd<-met2$wn1 *a1*d1
met2b_ugd<-met2$wn2 *a2*d2
met3b_ugd<-met2$wn3 *a3*d3
met4b_ugd<-met2$wn4 *a4*d4
met5b_ugd<-met2$wn5 *a5*d5
met6b_ugd<-met2$wc6 *a6*d6
met7b_ugd<-met2$wc7 *a7*d7
met8b_ugd<-met2$ws8 *a8*d8
met9b_ugd<-met2$ws9 *a9*d9
met10b_ugd<-met2$ws10 *a10*d10

waterMet1_gd<-(met1_ugd+met2_ugd+met3_ugd+met4_ugd+met5_ugd+met6_ugd+met7_ugd+met8_ugd+met9_ugd+met10_ugd)/10^6
waterMet2_gd<-(met1b_ugd+met2b_ugd+met3b_ugd+met4b_ugd+met5b_ugd+met6b_ugd+met7b_ugd+met8b_ugd+met9b_ugd+met10b_ugd)/10^6

waterdemet1_gd<-(demet1_ugd+demet2_ugd+demet3_ugd+demet4_ugd+demet5_ugd+demet6_ugd+demet7_ugd+demet8_ugd+demet9_ugd+demet10_ugd)/10^6
waterdemet2_gd<-(demet1b_ugd+demet2b_ugd+demet3b_ugd+demet4b_ugd+demet5b_ugd+demet6b_ugd+demet7b_ugd+demet8b_ugd+demet9b_ugd+demet10b_ugd)/10^6

waterMet1_gd_all<-cbind(rdate,met1_ugd,met2_ugd,met3_ugd,met4_ugd,met5_ugd,met6_ugd,met7_ugd,met8_ugd,met9_ugd,met10_ugd)/10^6
waterMet2_gd_all<-cbind(rdate,met1b_ugd,met2b_ugd,met3b_ugd,met4b_ugd,met5b_ugd,met6b_ugd,met7b_ugd,met8b_ugd,met9b_ugd,met10b_ugd)/10^6

waterdemet1_gd_all<-cbind(rdate,demet1_ugd,demet2_ugd,demet3_ugd,demet4_ugd,demet5_ugd,demet6_ugd,demet7_ugd,demet8_ugd,demet9_ugd,demet10_ugd)/10^6
waterdemet2_gd_all<-cbind(rdate,demet1b_ugd,demet2b_ugd,demet3b_ugd,demet4b_ugd,demet5b_ugd,demet6b_ugd,demet7b_ugd,demet8b_ugd,demet9b_ugd,demet10b_ugd)/10^6

colMeans(waterMet1_gd_all[1431:1442,]*365)/10^3
colMeans(waterdemet1_gd_all[1431:1442,]*365)/10^3  # kg y-1
colMeans(waterMet2_gd_all[1431:1442,]*365)/10^3
colMeans(waterdemet2_gd_all[1431:1442,]*365)/10^3  # kg y-1

demet1_ugd_sed<-demet1$sn1 *a1*0.05  # 1 d-1 * ug m3 = ug d
demet2_ugd_sed<-demet1$sn2 *a2*0.05
demet3_ugd_sed<-demet1$sn3 *a3*0.05
demet4_ugd_sed<-demet1$sn4 *a4*0.05
demet5_ugd_sed<-demet1$sn5 *a5*0.05
demet6_ugd_sed<-demet1$sc6 *a6*0.05
demet7_ugd_sed<-demet1$sc7 *a7*0.05
demet8_ugd_sed<-demet1$ss8 *a8*0.05
demet9_ugd_sed<-demet1$ss9 *a9*0.05
demet10_ugd_sed<-demet1$ss10 *a10*0.05

demet1b_ngd_sed<-demet2_sed$sn1 *a1*0.05   # 1 d-1 * ug m3 * = ug d
demet2b_ngd_sed<-demet2_sed$sn2 *a2*0.05
demet3b_ngd_sed<-demet2_sed$sn3 *a3*0.05
demet4b_ngd_sed<-demet2_sed$sn4 *a4*0.05
demet5b_ngd_sed<-demet2_sed$sn5 *a5*0.05
demet6b_ngd_sed<-demet2_sed$sc6 *a6*0.05
demet7b_ngd_sed<-demet2_sed$sc7 *a7*0.05
demet8b_ngd_sed<-demet2_sed$ss8 *a8*0.05
demet9b_ngd_sed<-demet2_sed$ss9 *a9*0.05
demet10b_ngd_sed<-demet2_sed$ss10 *a10*0.05

met1_ugd_sed<-met1$sn1 *a1*0.05
met2_ugd_sed<-met1$sn2 *a2*0.05
met3_ugd_sed<-met1$sn3 *a3*0.05
met4_ugd_sed<-met1$sn4 *a4*0.05
met5_ugd_sed<-met1$sn5 *a5*0.05
met6_ugd_sed<-met1$sc6 *a6*0.05
met7_ugd_sed<-met1$sc7 *a7*0.05
met8_ugd_sed<-met1$ss8 *a8*0.05
met9_ugd_sed<-met1$ss9 *a9*0.05
met10_ugd_sed<-met1$ss10 *a10*0.05

met1b_ngd_sed<-met2_sed$sn1 *a1*0.05
met2b_ngd_sed<-met2_sed$sn2 *a2*0.05
met3b_ngd_sed<-met2_sed$sn3 *a3*0.05
met4b_ngd_sed<-met2_sed$sn4 *a4*0.05
met5b_ngd_sed<-met2_sed$sn5 *a5*0.05
met6b_ngd_sed<-met2_sed$sc6 *a6*0.05
met7b_ngd_sed<-met2_sed$sc7 *a7*0.05
met8b_ngd_sed<-met2_sed$ss8 *a8*0.05
met9b_ngd_sed<-met2_sed$ss9 *a9*0.05
met10b_ngd_sed<-met2_sed$ss10 *a10*0.05

Met1_gd_sed<-(met1_ugd_sed+met2_ugd_sed+met3_ugd_sed+met4_ugd_sed+met5_ugd_sed+met6_ugd_sed+met7_ugd_sed+met8_ugd_sed+met9_ugd_sed+met10_ugd_sed)/10^6
Met2_gd_sed<-(met1b_ngd_sed+met2b_ngd_sed+met3b_ngd_sed+met4b_ngd_sed+met5b_ngd_sed+met6b_ngd_sed+met7b_ngd_sed+met8b_ngd_sed+met9b_ngd_sed+met10b_ngd_sed)/10^9

demet1_gd_sed<-(demet1_ugd_sed+demet2_ugd_sed+demet3_ugd_sed+demet4_ugd_sed+demet5_ugd_sed+demet6_ugd_sed+demet7_ugd_sed+demet8_ugd_sed+demet9_ugd_sed+demet10_ugd_sed)/10^6
demet2_gd_sed<-(demet1b_ngd_sed+demet2b_ngd_sed+demet3b_ngd_sed+demet4b_ngd_sed+demet5b_ngd_sed+demet6b_ngd_sed+demet7b_ngd_sed+demet8b_ngd_sed+demet9b_ngd_sed+demet10b_ngd_sed)/10^9

Met1_gd_sed_all<-cbind(met1_ugd_sed,met2_ugd_sed,met3_ugd_sed,met4_ugd_sed,met5_ugd_sed,met6_ugd_sed,met7_ugd_sed,met8_ugd_sed,met9_ugd_sed,met10_ugd_sed)/10^6
Met2_gd_sed_all<-cbind(met1b_ngd_sed,met2b_ngd_sed,met3b_ngd_sed,met4b_ngd_sed,met5b_ngd_sed,met6b_ngd_sed,met7b_ngd_sed,met8b_ngd_sed,met9b_ngd_sed,met10b_ngd_sed)/10^9

demet1_gd_sed_all<-cbind(demet1_ugd_sed,demet2_ugd_sed,demet3_ugd_sed,demet4_ugd_sed,demet5_ugd_sed,demet6_ugd_sed,demet7_ugd_sed,demet8_ugd_sed,demet9_ugd_sed,demet10_ugd_sed)/10^6
demet2_gd_sed_all<-cbind(demet1b_ngd_sed,demet2b_ngd_sed,demet3b_ngd_sed,demet4b_ngd_sed,demet5b_ngd_sed,demet6b_ngd_sed,demet7b_ngd_sed,demet8b_ngd_sed,demet9b_ngd_sed,demet10b_ngd_sed)/10^9

colMeans(Met1_gd_sed_all[1431:1442,]*365)-colMeans(demet1_gd_sed_all[1431:1442,]*365)  # g y-1
colMeans(Met2_gd_sed_all[1431:1442,]*365)-colMeans(demet2_gd_sed_all[1431:1442,]*365)  # g y-1

colMeans(waterMet1_gd_all[1431:1442,]*365)-colMeans(waterdemet1_gd_all[1431:1442,]*365)  # g y-1
colMeans(waterMet2_gd_all[1431:1442,]*365)-colMeans(waterdemet2_gd_all[1431:1442,]*365)  # g y-1


sum(colMeans(Met2_gd_sed_all[1431:1442,]*365))/1000
sum(colMeans(demet2_gd_sed_all[1431:1442,]*365))/1000

sum(colMeans(waterMet2_gd_all[1431:1442,]*365))/1000  #g y-1
sum(colMeans(waterdemet2_gd_all[1431:1442,]*365))/1000  # kg y-1

colMeans(Met2_gd_sed_all[1431:1442,]*365)/10^3  # kg y-1
u<-colMeans(demet2_gd_sed_all[1431:1442,]*365)/10^3  # kg y-1
 
mean(waterMet2_gd)*365/1000
colMeans(waterdemet2_gd)*365/1000


yBALw<-(waterMet1_gd -waterdemet1_gd)*365/1000
yBALw2<-(waterMet2_gd -waterdemet2_gd)*365/1000


yBALs<-(Met1_gd_sed -demet1_gd_sed)*365/1000
yBALs2<-(Met2_gd_sed -demet2_gd_sed)*365/1000

yy<-c(-7,-7,1,1)
par(mfrow=c(1,1))
plot(rdate,yBALw2, type='l', col='blue', ylim=c(-7,1))
 polygon(H_resus,yy, col='#68676755',border = NA)
polygon(Eutrop,yy, col='#3a871f88',border = NA)
par(new=T)
plot(rdate,yBALw2, type='l', col='blue', ylim=c(-7,1))
par(new=T)
plot(rdate,yBALs2, type='l', col='brown', ylim=c(-7,1))
abline(h=0)
years<-seq(1900, 2100)

mean(waterMet2_gd[1431:1442]*365/1000)
mean(waterdemet2_gd[1431:1442]*365/1000)
yBALw2[1431:1442]

tutto<-data.frame(rdate,yBALw,yBALw2,yBALs,yBALs2)
#2.6151248-1.6504104
colMeans(tutto[2:4])
tutto2<-data.frame(rdate,waterMet1_gd,waterMet2_gd,waterdemet1_gd,waterdemet2_gd)

2019-1900
1428+12
rdate[1431:1442]
a<-(tutto[1431:1442,3])
mean(a)
#con output a dicembre viene circa 0.35 per il 2019

write.table(tutto,'MEt_demet.txt')
write.table(tutto2,'MEt_demet_gd.txt')
