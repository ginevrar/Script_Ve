
setwd('C:\\Users\\gi\\Desktop\\2154')
hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 
  time.steps <- hg$time;time.steps3 <- time.steps*24*3600;
  TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
  rdate<-as.Date(TEMPO, tz= "GMT", format="%Y");head(rdate)
 
TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10', 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 
silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 
POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 
sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 
DEPO_silt<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 
DEPO_POM<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 
DEPO_sand<-read.csv("Sand_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_sand)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10', 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 
RESUS_silt<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                      'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 
RESUS_POM<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 
RESUS_sand<-read.csv("Sand_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_sand)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',	'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               	  	'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
               # aree box

a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07; a9<-2.95E+07;a10<-4.06E+07
area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71

reservoir_hg_w1 <- a1*d1 * hg$wn1/10^6     # ug/m3(w+s) *vol(m3) = ug(hg)/10^6 = g(hg)
reservoir_hg_w2 <- a2*d2 * hg$wn2/10^6
reservoir_hg_w3 <- a3*d3 * hg$wn3/10^6
reservoir_hg_w4 <- a4*d4 * hg$wn4/10^6
reservoir_hg_w5 <- a5*d5 * hg$wn5/10^6
reservoir_hg_w6 <- a6*d6 * hg$wc6/10^6
reservoir_hg_w7 <- a7*d7 * hg$wc7/10^6
reservoir_hg_w8 <- a8*d8 * hg$ws8/10^6
reservoir_hg_w9 <- a9*d9 * hg$ws9/10^6
reservoir_hg_w10<- a10*d10* hg$ws10/10^6

reservoir_hgp_w1 <- a1*d1 *Phgs$wn1/10^6    # ug/m3(w+s) *vol(m3) = ug(hg)/10^6 = g(hg)
reservoir_hgp_w2 <- a2*d2 *Phgs$wn2/10^6
reservoir_hgp_w3 <- a3*d3 *Phgs$wn3/10^6
reservoir_hgp_w4 <- a4*d4 *Phgs$wn4/10^6
reservoir_hgp_w5 <- a5*d5 *Phgs$wn5/10^6
reservoir_hgp_w6 <- a6*d6 *Phgs$wc6/10^6
reservoir_hgp_w7 <- a7*d7 *Phgs$wc7/10^6
reservoir_hgp_w8 <- a8*d8 *Phgs$ws8/10^6
reservoir_hgp_w9 <- a9*d9 *Phgs$ws9/10^6
reservoir_hgp_w10<- a10*d10 *Phgs$ws10/10^6

 #fsilt=silts/TOTs;fPOM=POMs/TOTs;fsand=sands/TOTs

7309-1   #01/01/1910
8038-1   # 12/13/1910

51139-1  #01/01/1970
51868-1  #12/31/1970

69401-1  #01/01/1995
70130-1  #12/31/1995

72323-1  #01/01/1999
73052-1  #12/31/1999

87662-1  #01/01/2019
86933-1  #01/01/2019

#plot(RESUS_silt$sc6[7308:8037]) # da 01-01 a 12-31 del 1910
#plot(RESUS_silt$sc6[51138:51867]) # da 01-01 a 12-31 del 1970
#plot(RESUS_silt$sc6[69400:70129])# da 01-01 a 12-31 del 1995
#plot(RESUS_silt$sc6[87661:86932])# da 01-01 a 12-31 del 2019

Dep_POM_gm2d<-DEPO_POM*POMs        #POM depo = m d-1 * g m-3 = g m2 d
Dep_silt_gm2d<-DEPO_silt*silts        #silt depo = m d-1 * g m-3 = g m2 d

Res_POM_gm2d<-RESUS_POM*POMs        #POM depo = m d-1 * g m-3 = g m2 d
Res_silt_gm2d<-RESUS_silt*silts        #silt depo = m d-1 * g m-3 = g m2 d

summary(Dep_silt_gm2d[2:11])
summary(Res_silt_gm2d[2:11])

NetSilt_1<-Dep_silt_gm2d$wn1-Res_silt_gm2d$sn1
NetSilt_2<-Dep_silt_gm2d$wn2-Res_silt_gm2d$sn2
NetSilt_3<-Dep_silt_gm2d$wn3-Res_silt_gm2d$sn3
NetSilt_4<-Dep_silt_gm2d$wn4-Res_silt_gm2d$sn4
NetSilt_5<-Dep_silt_gm2d$wn5-Res_silt_gm2d$sn5
NetSilt_6<-Dep_silt_gm2d$wc6-Res_silt_gm2d$sc6
NetSilt_7<-Dep_silt_gm2d$wc7-Res_silt_gm2d$sc7
NetSilt_8<-Dep_silt_gm2d$ws8-Res_silt_gm2d$ss8
NetSilt_9<-Dep_silt_gm2d$ws9-Res_silt_gm2d$ss9
NetSilt_10<-Dep_silt_gm2d$ws10-Res_silt_gm2d$ss10

NetPOM_1<-Dep_POM_gm2d$wn1-Res_POM_gm2d$sn1
NetPOM_2<-Dep_POM_gm2d$wn2-Res_POM_gm2d$sn2
NetPOM_3<-Dep_POM_gm2d$wn3-Res_POM_gm2d$sn3
NetPOM_4<-Dep_POM_gm2d$wn4-Res_POM_gm2d$sn4
NetPOM_5<-Dep_POM_gm2d$wn5-Res_POM_gm2d$sn5
NetPOM_6<-Dep_POM_gm2d$wc6-Res_POM_gm2d$sc6
NetPOM_7<-Dep_POM_gm2d$wc7-Res_POM_gm2d$sc7
NetPOM_8<-Dep_POM_gm2d$ws8-Res_POM_gm2d$ss8
NetPOM_9<-Dep_POM_gm2d$ws9-Res_POM_gm2d$ss9
NetPOM_10<-Dep_POM_gm2d$ws10-Res_POM_gm2d$ss10

NetSed1<-NetPOM_1+NetSilt_1
NetSed2<-NetPOM_2+NetSilt_2
NetSed3<-NetPOM_3+NetSilt_3
NetSed4<-NetPOM_4+NetSilt_4
NetSed5<-NetPOM_5+NetSilt_5
NetSed6<-NetPOM_6+NetSilt_6
NetSed7<-NetPOM_7+NetSilt_7
NetSed8<-NetPOM_8+NetSilt_8
NetSed9<-NetPOM_9+NetSilt_9
NetSed10<-NetPOM_10+NetSilt_10

plot(NetSed1, col=1, type='l', ylim=c(-50,50))
plot(NetPOM_1, col=2, type='l', ylim=c(-50,50))
plot(NetSilt_3, col=1, type='l', ylim=c(-50,50))
plot(NetSilt_4, col=2, type='l', ylim=c(-50,50))
plot(NetSilt_5, col=1, type='l', ylim=c(-50,50))
plot(NetSilt_6, col=2, type='l', ylim=c(-50,50))
plot(NetSilt_7, col=2, type='l', ylim=c(-50,50))
plot(NetSilt_8, col=2, type='l', ylim=c(-50,50))
plot(NetSilt_9, col=2, type='l', ylim=c(-50,50))
plot(NetSilt_10, col=2, type='l', ylim=c(-50,50))

plot(NetSed1*SEDhg$wn1,col=2, type='l')
plot(NetSed1*SEDhg$sn1,col=1, type='l')

mmm1<-(NetSed1*SEDhg$wn1)-(NetSed1*SEDhg$sn1)
plot(mmm1,col=1, type='l')

NetSed2*SEDhg
NetSed3*SEDhg
NetSed1*SEDhg
NetSed1*SEDhg
NetSed1*SEDhg

Dep_hg_ngm2d<-SEDhg*(Dep_POM_gm2d+Dep_silt_gm2d)/10^3     # ug m2 d 
Res_hg_ngm2d<-(SEDhg/0.9)*(Res_POM_gm2d+Res_silt_gm2d)/10^3     # ug m2 d 

D1_ngd<-(Dep_hg_ngm2d$wn1*a1)/10^6
D2_ngd<-(Dep_hg_ngm2d$wn2*a2)/10^6
D3_ngd<-(Dep_hg_ngm2d$wn3*a3)/10^6
D4_ngd<-(Dep_hg_ngm2d$wn4*a4)/10^6
D5_ngd<-(Dep_hg_ngm2d$wn5*a5)/10^6
D6_ngd<-(Dep_hg_ngm2d$wc6*a6)/10^6
D7_ngd<-(Dep_hg_ngm2d$wc7*a7)/10^6
D8_ngd<-(Dep_hg_ngm2d$ws8*a8)/10^6
D9_ngd<-(Dep_hg_ngm2d$ws9*a9)/10^6
D10_ngd<-(Dep_hg_ngm2d$ws10*a10)/10^6

R1_ngd<-(Res_hg_ngm2d$sn1*a1)/10^6    #ngd
R2_ngd<-(Res_hg_ngm2d$sn2*a2)/10^6
R3_ngd<-(Res_hg_ngm2d$sn3*a3)/10^6
R4_ngd<-(Res_hg_ngm2d$sn4*a4)/10^6
R5_ngd<-(Res_hg_ngm2d$sn5*a5)/10^6
R6_ngd<-(Res_hg_ngm2d$sc6*a6)/10^6
R7_ngd<-(Res_hg_ngm2d$sc7*a7)/10^6
R8_ngd<-(Res_hg_ngm2d$ss8*a8)/10^6
R9_ngd<-(Res_hg_ngm2d$ss9*a9)/10^6
R10_ngd<-(Res_hg_ngm2d$ss10*a10)/10^6

dd<-(D1_ngd+D2_ngd+D3_ngd+D4_ngd+D5_ngd+D6_ngd+D7_ngd+D8_ngd+D9_ngd+D10_ngd) #ng d                                 #g d-1  -> g y-1
rr<-(R1_ngd+R2_ngd+R3_ngd+R4_ngd+R5_ngd+R6_ngd+R7_ngd+R8_ngd+R9_ngd+R10_ngd) #ng d                                 #g d-1  -> g y-1

nn<-(dd-rr)   # g d-1         

plot(nn*365/1000)
max(nn*365/1000)


# conti in ng -- max 13632.94
# ug                 13632.94
#  g                 13632.94