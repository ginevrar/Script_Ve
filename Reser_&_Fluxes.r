setwd('C:\\Users\\Acer\\Dropbox\\NewVenice16')
setwd('C:\\Users\\Acer\\Desktop\\last\\NAOH')

hg<-read.csv('Total_Hg.csv',header=FALSE, skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

time.steps <- hg$time;time.steps3 <- time.steps*24*3600;
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y");head(rdate)

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
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

Volume<-read.csv("Segment_Volume.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Volume)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',	'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               	  	'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

#aree e profonditÃ
a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07; a9<-2.95E+07;a10<-4.06E+07
area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10; AT<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10

d1<-1.26; d3<-3.35;d5<-1.03; d6<-1.64; d7<-1.84;   d10<-1.71
d2<-0.78; d4<-0.64;d8<-0.89 ; d9<-0.69     #d8<-1 d9<-1

#fsilt=silts/TOTs;fPOM=POMs/TOTs;fsand=sands/TOTs

reservoir_hg_w1 <- (a1*d1 * hg$wn1)/10^6    # ug/m3(w+s) *vol(m3) = ug(hg)/10^6 = g(hg)
reservoir_hg_w2 <- (a2*d2 * hg$wn2)/10^6
reservoir_hg_w3 <- (a3*d3 * hg$wn3)/10^6
reservoir_hg_w4 <- (a4*d4 * hg$wn4)/10^6
reservoir_hg_w5 <- (a5*d5 * hg$wn5)/10^6
reservoir_hg_w6 <- (a6*d6 * hg$wc6)/10^6
reservoir_hg_w7 <- (a7*d7 * hg$wc7)/10^6
reservoir_hg_w8 <- (a8*d8 * hg$ws8)/10^6
reservoir_hg_w9 <- (a9*d9 * hg$ws9)/10^6
reservoir_hg_w10<- (a10*d10* hg$ws10)/10^6

reservoir_hgp_w1 <- (a1*d1 *Phgs$wn1)/10^6    #  ug/m3(w+s) *vol(m3) = ug(hg)/10^6 = g(hg)
reservoir_hgp_w2 <- (a2*d2 *Phgs$wn2)/10^6
reservoir_hgp_w3 <- (a3*d3 *Phgs$wn3)/10^6
reservoir_hgp_w4 <- (a4*d4 *Phgs$wn4)/10^6
reservoir_hgp_w5 <- (a5*d5 *Phgs$wn5)/10^6
reservoir_hgp_w6 <- (a6*d6 *Phgs$wc6)/10^6
reservoir_hgp_w7 <- (a7*d7 *Phgs$wc7)/10^6
reservoir_hgp_w8 <- (a8*d8 *Phgs$ws8)/10^6
reservoir_hgp_w9 <- (a9*d9 *Phgs$ws9)/10^6
reservoir_hgp_w10<- (a10*d10 *Phgs$ws10)/10^6

hgsw1<-SEDhg2$wn1*silts$wn1     #ng g-1 * g m-3  = ng m-3
hgsw2<-SEDhg2$wn2*silts$wn2     #ng g-1 * g m-3
hgsw3<-SEDhg2$wn3*silts$wn3     #ng g-1 * g m-3
hgsw4<-SEDhg2$wn4*silts$wn4     #ng g-1 * g m-3
hgsw5<-SEDhg2$wn5*silts$wn5     #ng g-1 * g m-3
hgsw6<-SEDhg2$wc6*silts$wc6     #ng g-1 * g m-3
hgsw7<-SEDhg2$wc7*silts$wc7     #ng g-1 * g m-3
hgsw8<-SEDhg2$ws8*silts$ws8     #ng g-1 * g m-3
hgsw9<-SEDhg2$ws9*silts$ws9    #ng g-1 * g m-3
hgsw10<-SEDhg2$ws10*silts$ws10    #ng g-1 * g m-3

hgpw1<-SEDhg2$wn1*POMs$wn1     #ng g-1 * g m-3  = ng m-3
hgpw2<-SEDhg2$wn2*POMs$wn2     #ng g-1 * g m-3
hgpw3<-SEDhg2$wn3*POMs$wn3     #ng g-1 * g m-3
hgpw4<-SEDhg2$wn4*POMs$wn4     #ng g-1 * g m-3
hgpw5<-SEDhg2$wn5*POMs$wn5     #ng g-1 * g m-3
hgpw6<-SEDhg2$wc6*POMs$wc6     #ng g-1 * g m-3
hgpw7<-SEDhg2$wc7*POMs$wc7     #ng g-1 * g m-3
hgpw8<-SEDhg2$ws8*POMs$ws8     #ng g-1 * g m-3
hgpw9<-SEDhg2$ws9*POMs$ws9    #ng g-1 * g m-3
hgpw10<-SEDhg2$ws10*POMs$ws10    #ng g-1 * g m-3

hgpw1_fr<-(hgpw1)/(hg$wn1*10^3)
plot(hgpw1_fr, type='l')
hgpw2_fr<-(hgpw2)/(hg$wn2*10^3)
hgpw3_fr<-(hgpw3)/(hg$wn3*10^3)
hgpw4_fr<-(hgpw4)/(hg$wn4*10^3)
hgpw5_fr<-(hgpw5)/(hg$wn5*10^3)
hgpw6_fr<-(hgpw6)/(hg$wc6*10^3)
hgpw7_fr<-(hgpw7)/(hg$wc7*10^3)
hgpw8_fr<-(hgpw8)/(hg$ws8*10^3)
hgpw9_fr<-(hgpw9)/(hg$ws9*10^3)
hgpw10_fr<-(hgpw10)/(hg$ws10*10^3)

hgSw1_fr <-(hgsw1)/(hg$wn1*10^3)
 hgSw2_fr<-(hgsw2)/(hg$wn2*10^3)
hgSw3_fr<-(hgsw3)/(hg$wn3*10^3)
hgSw4_fr<-(hgsw4)/(hg$wn4*10^3)
hgSw5_fr<-(hgsw5)/(hg$wn5*10^3)
hgSw6_fr<-(hgsw6)/(hg$wc6*10^3)
hgSw7_fr<-(hgsw7)/(hg$wc7*10^3)
hgSw8_fr<-(hgsw8)/(hg$ws8*10^3)
hgSw9_fr<-(hgsw9)/(hg$ws9*10^3)
hgSw10_fr<-(hgsw10)/(hg$ws10*10^3)

# ug m-3 *m d-1 == ug m-2 d-1/10^6 == mg /m2 d
b1_Dep_mg_m2d<-(hg$wn1*DEPO_silt$wn1*(hgSw1_fr))/10^3
b2_Dep_mg_m2d<-(hg$wn2*DEPO_silt$wn2*(hgSw2_fr))/10^3           # ug m-3 *m d-1 == mg m-2 d-1
b3_Dep_mg_m2d<-(hg$wn3*DEPO_silt$wn3*(hgSw3_fr))/10^3          
b4_Dep_mg_m2d<-(hg$wn4*DEPO_silt$wn4*(hgSw4_fr))/10^3           
b5_Dep_mg_m2d<-(hg$wn5*DEPO_silt$wn5*(hgSw5_fr))/10^3           
b6_Dep_mg_m2d<-(hg$wc6*DEPO_silt$wc6*(hgSw6_fr))/10^3           
b7_Dep_mg_m2d<-(hg$wc7*DEPO_silt$wc7*(hgSw7_fr))/10^3          
b8_Dep_mg_m2d<-(hg$ws8*DEPO_silt$ws8*(hgSw8_fr))/10^3           
b9_Dep_mg_m2d<-(hg$ws9*DEPO_silt$ws9*(hgSw9_fr))/10^3           
b10_Dep_mg_m2d<-(hg$ws10*DEPO_silt$ws10*(hgSw10_fr))/10^3      


b1_DepP_mg_m2d<-(hg$wn1*DEPO_POM$wn1*(hgpw1_fr))/10^3
b2_DepP_mg_m2d<-(hg$wn2*DEPO_POM$wn2*(hgpw2_fr))/10^3           # ug m-3 *m d-1 == mg m-2 d-1
b3_DepP_mg_m2d<-(hg$wn3*DEPO_POM$wn3*(hgpw3_fr))/10^3          
b4_DepP_mg_m2d<-(hg$wn4*DEPO_POM$wn4*(hgpw4_fr))/10^3           
b5_DepP_mg_m2d<-(hg$wn5*DEPO_POM$wn5*(hgpw5_fr))/10^3           
b6_DepP_mg_m2d<-(hg$wc6*DEPO_POM$wc6*(hgpw6_fr))/10^3           
b7_DepP_mg_m2d<-(hg$wc7*DEPO_POM$wc7*(hgpw7_fr))/10^3          
b8_DepP_mg_m2d<-(hg$ws8*DEPO_POM$ws8*(hgpw8_fr))/10^3           
b9_DepP_mg_m2d<-(hg$ws9*DEPO_POM$ws9*(hgpw9_fr))/10^3           
b10_DepP_mg_m2d<-(hg$ws10*DEPO_POM$ws10*(hgpw10_fr))/10^3      


hgssed1<-SEDhg2$sn1*silts$sn1     #ng g-1 * g m-3  = ng m-3
hgssed2<-SEDhg2$sn2*silts$sn2     #ng g-1 * g m-3
hgssed3<-SEDhg2$sn3*silts$sn3     #ng g-1 * g m-3
hgssed4<-SEDhg2$sn4*silts$sn4     #ng g-1 * g m-3
hgssed5<-SEDhg2$sn5*silts$sn5     #ng g-1 * g m-3
hgssed6<-SEDhg2$sc6*silts$sc6     #ng g-1 * g m-3
hgssed7<-SEDhg2$sc7*silts$sc7     #ng g-1 * g m-3
hgssed8<-SEDhg2$ss8*silts$ss8     #ng g-1 * g m-3
hgssed9<-SEDhg2$ss9*silts$ss9    #ng g-1 * g m-3
hgssed10<-SEDhg2$ss10*silts$ss10    #ng g-1 * g m-3

hgpsed1<-SEDhg2$sn1*POMs$sn1     #ng g-1 * g m-3  = ng m-3
hgpsed2<-SEDhg2$sn2*POMs$sn2     #ng g-1 * g m-3
hgpsed3<-SEDhg2$sn3*POMs$sn3     #ng g-1 * g m-3
hgpsed4<-SEDhg2$sn4*POMs$sn4     #ng g-1 * g m-3
hgpsed5<-SEDhg2$sn5*POMs$sn5     #ng g-1 * g m-3
hgpsed6<-SEDhg2$sc6*POMs$sc6     #ng g-1 * g m-3
hgpsed7<-SEDhg2$sc7*POMs$sc7     #ng g-1 * g m-3
hgpsed8<-SEDhg2$ss8*POMs$ss8     #ng g-1 * g m-3
hgpsed9<-SEDhg2$ss9*POMs$ss9    #ng g-1 * g m-3
hgpsed10<-SEDhg2$ss10*POMs$ss10    #ng g-1 * g m-3

phgw1<-Phgs2$wn1*10^3
hgpw1+hgsw1      #Phg ug m-3

plot(phgw1)
plot(hgpw1+hgsw1)

plot(SEDhg2$sn1, type='l',col=2, ylim=c(0,2000))

hgT1<-(hg$sn1*TOTs$sn1)   # ng g * g m-3  = ng m-3
hgT2<-(hg$sn2*TOTs$sn2)   # ng g * g m-3  = ng m-3
hgT3<-(hg$sn3*TOTs$sn3)   # ng g * g m-3  = ng m-3
hgT4<-(hg$sn4*TOTs$sn4)   # ng g * g m-3  = ng m-3
hgT5<-(hg$sn5*TOTs$sn5)   # ng g * g m-3  = ng m-3
hgT6<-(hg$sc6*TOTs$sc6)   # ng g * g m-3  = ng m-3
hgT7<-(hg$sc7*TOTs$sc7)   # ng g * g m-3  = ng m-3
hgT8<-(hg$ss8*TOTs$ss8)   # ng g * g m-3  = ng m-3
hgT9<-(hg$ss9*TOTs$ss9)   # ng g * g m-3  = ng m-3
hgT10<-(hg$ss10*TOTs$ss10)   # ng g * g m-3  = ng m-3

hgPOMsed1_fr<-(hgpsed1)/hgT1
hgPOMsed2_fr<-(hgpsed2)/hgT2
hgPOMsed3_fr<-(hgpsed3)/hgT3
hgPOMsed4_fr<-(hgpsed4)/hgT4
hgPOMsed5_fr<-(hgpsed5)/hgT5
hgPOMsed6_fr<-(hgpsed6)/hgT6
hgPOMsed7_fr<-(hgpsed7)/hgT7
hgPOMsed8_fr<-(hgpsed8)/hgT8
hgPOMsed9_fr<-(hgpsed9)/hgT9
hgPOMsed10_fr<-(hgpsed10)/hgT10

hgSiltsed1_fr<-(hgssed1)/hgT1
hgSiltsed2_fr<-(hgssed2)/hgT2
hgSiltsed3_fr<-(hgssed3)/hgT3
hgSiltsed4_fr<-(hgssed4)/hgT4
hgSiltsed5_fr<-(hgssed5)/hgT5
hgSiltsed6_fr<-(hgssed6)/hgT6
hgSiltsed7_fr<-(hgssed7)/hgT7
hgSiltsed8_fr<-(hgssed8)/hgT8
hgSiltsed9_fr<-(hgssed9)/hgT9
hgSiltsed10_fr<-(hgssed10)/hgT10

b1_ResS_mg_m2d <-(hgT1*RESUS_silt$sn1*hgSiltsed1_fr)/10^6       # ng m-3 *m d-1 == mg m-2 d-1   
b2_ResS_mg_m2d <-(hgT2*RESUS_silt$sn2*hgSiltsed2_fr)/10^6       
b3_ResS_mg_m2d <-(hgT3*RESUS_silt$sn3*hgSiltsed3_fr)/10^6       
b4_ResS_mg_m2d <-(hgT4*RESUS_silt$sn4*hgSiltsed4_fr)/10^6       
b5_ResS_mg_m2d <-(hgT5*RESUS_silt$sn5*hgSiltsed5_fr)/10^6       
b6_ResS_mg_m2d <-(hgT6*RESUS_silt$sc6*hgSiltsed6_fr)/10^6       
b7_ResS_mg_m2d <-(hgT7*RESUS_silt$sc7*hgSiltsed7_fr)/10^6       
b8_ResS_mg_m2d <-(hgT8*RESUS_silt$ss8*hgSiltsed8_fr)/10^6       
b9_ResS_mg_m2d <-(hgT9*RESUS_silt$ss9*hgSiltsed9_fr)/10^6       
b10_ResS_mg_m2d<-(hgT10*RESUS_silt$ss10*hgSiltsed10_fr)/10^6       

head(b1_Dep_mg_m2d)
head(b1_ResS_mg_m2d)

b1_ResP_mg_m2d<-(hgT1*RESUS_POM$sn1*hgPOMsed1_fr)/10^6       
b2_ResP_mg_m2d<-(hgT2*RESUS_POM$sn2*hgPOMsed2_fr)/10^6       
b3_ResP_mg_m2d<-(hgT3*RESUS_POM$sn3*hgPOMsed3_fr)/10^6  
b4_ResP_mg_m2d<-(hgT4*RESUS_POM$sn4*hgPOMsed4_fr)/10^6  
b5_ResP_mg_m2d<-(hgT5*RESUS_POM$sn5*hgPOMsed5_fr)/10^6  
b6_ResP_mg_m2d<-(hgT6*RESUS_POM$sc6*hgPOMsed6_fr)/10^6  
b7_ResP_mg_m2d<-(hgT7*RESUS_POM$sc7*hgPOMsed7_fr)/10^6  
b8_ResP_mg_m2d<-(hgT8*RESUS_POM$ss8*hgPOMsed8_fr)/10^6  
b9_ResP_mg_m2d<-(hgT9*RESUS_POM$ss9*hgPOMsed9_fr)/10^6  
b10_ResP_mg_m2d<-(hgT10*RESUS_POM$ss10*hgPOMsed10_fr)/10^6  

reservoir_hg_s1 <- a1*0.05 * hg$sn1 *TOTs$sn1/10^3       #ng(hg)/g(s) *g(s)/m3(w+s)*vol(m3) = ng(hg)/10^3 = ug(hg)
reservoir_hg_s2 <- a2*0.05 * hg$sn2 *TOTs$sn2/10^3
reservoir_hg_s3 <- a3*0.05 * hg$sn3 *TOTs$sn3/10^3
reservoir_hg_s4 <- a4*0.05 * hg$sn4 *TOTs$sn4/10^3
reservoir_hg_s5 <- a5*0.05 * hg$sn5 *TOTs$sn5/10^3
reservoir_hg_s6 <- a6*0.05 * hg$sc6 *TOTs$sc6/10^3
reservoir_hg_s7 <- a7*0.05 * hg$sc7 *TOTs$sc7/10^3
reservoir_hg_s8 <- a8*0.05 * hg$ss8 *TOTs$ss8/10^3
reservoir_hg_s9 <- a9*0.05 * hg$ss9 *TOTs$ss9/10^3
reservoir_hg_s10<-a10*0.05 * hg$ss10 *TOTs$ss10/10^3
plot(b1_Dep_mg_m2d, type='l', col=2)


str(hg$wn1)
str(DEPO_silt$wn1)

(hg$wn1*d1)/10^6

plot(reservoir_hg_w1*10^3, type='l', ylim=c(0,1000000))   #mg
par(new=T)
plot(b1_Dep_mg_m2d*a1, type='l', col=2, ylim=c(0,1000000))

plot(reservoir_hg_s1/10^3, type='l', ylim=c(0,2000000000))   #mg
par(new=T)
plot(b1_ResS_mg_m2d*a1, type='l', col=2, ylim=c(0,2000000000))


plot(b1_Dep_mg_m2d*a1, type='l', col=2, ylim=c(0,10000000))
par(new=T)
plot(b1_ResS_mg_m2d*a1, type='l', col=1, ylim=c(0,10000000))

silt_bal1=(b1_Dep_mg_m2d-b1_ResS_mg_m2d)
silt_bal2<-(b2_Dep_mg_m2d-b2_ResS_mg_m2d)
silt_bal3<-(b3_Dep_mg_m2d-b3_ResS_mg_m2d)*a3/10^6




SB1<-silt_bal1*a1/10^6
*a2/10^6
silt_bal4<-(b4_Dep_mg_m2d-b4_ResS_mg_m2d)*a4/10^6
silt_bal5<-(b5_Dep_mg_m2d-b5_ResS_mg_m2d)*a5/10^6
silt_bal6<-(b6_Dep_mg_m2d-b6_ResS_mg_m2d)*a6/10^6
silt_bal7<-(b7_Dep_mg_m2d-b7_ResS_mg_m2d)*a7/10^6
silt_bal8<-(b8_Dep_mg_m2d-b8_ResS_mg_m2d)*a8/10^6
silt_bal9<-(b9_Dep_mg_m2d-b9_ResS_mg_m2d)*a9/10^6
silt_bal10<-(b10_Dep_mg_m2d-b10_ResS_mg_m2d)*a10/10^6

silt_BAL<-silt_bal1+silt_bal2+silt_bal3+silt_bal4+silt_bal5+silt_bal6+silt_bal7+silt_bal8+silt_bal9+silt_bal10
head(silt_BAL)   #???kg d

 POM_bal1<-(b1_DepP_mg_m2d-b1_ResP_mg_m2d)*a1/10^6
 POM_bal2<-(b2_DepP_mg_m2d-b2_ResP_mg_m2d)*a2/10^6
 POM_bal3<-(b3_DepP_mg_m2d-b3_ResP_mg_m2d)*a3/10^6
 POM_bal4<-(b4_DepP_mg_m2d-b4_ResP_mg_m2d)*a4/10^6
 POM_bal5<-(b5_DepP_mg_m2d-b5_ResP_mg_m2d)*a5/10^6
 POM_bal6<-(b6_DepP_mg_m2d-b6_ResP_mg_m2d)*a6/10^6
 POM_bal7<-(b7_DepP_mg_m2d-b7_ResP_mg_m2d)*a7/10^6
 POM_bal8<-(b8_DepP_mg_m2d-b8_ResP_mg_m2d)*a8/10^6
 POM_bal9<-(b9_DepP_mg_m2d-b9_ResP_mg_m2d)*a9/10^6
 POM_bal10<-(b10_DepP_mg_m2d-b10_ResP_mg_m2d)*a10/10^6


 POM_BAL<-POM_bal1+POM_bal2+POM_bal3+POM_bal4+POM_bal5+POM_bal6+POM_bal7+POM_bal8+POM_bal9+POM_bal10
 head(POM_BAL)   #???kg d
 


plot(rdate[731:1096],b1_Dep_mg_m2d[731:1096], type='l', col=2, ylim=c(0,.2))
par(new=T)
plot(rdate[731:1096],b1_ResS_mg_m2d[731:1096], type='l', col=1, ylim=c(0,.2))


plot(rdate ,b1_Dep_mg_m2d , type='l', col=2, ylim=c(0,.2))
par(new=T)
plot(rdate ,b1_ResS_mg_m2d , type='l', col=1, ylim=c(0,.2))


mean(b1_Dep_mg_m2d[731:1096])*a1/10^6
mean(b1_ResS_mg_m2d[731:1096]+b1_ResP_mg_m2d[731:1096])*a1/10^6

mean(b2_Dep_mg_m2d[731:1096])*a2/10^6
mean(b2_ResS_mg_m2d[731:1096]+b2_ResP_mg_m2d[731:1096])*a2/10^6

mean(b3_Dep_mg_m2d[731:1096])*a3/10^6
mean(b3_ResS_mg_m2d[731:1096]+b3_ResP_mg_m2d[731:1096])*a3/10^6

mean(b4_Dep_mg_m2d[731:1096])*a4/10^6
mean(b4_ResS_mg_m2d[731:1096]+b4_ResP_mg_m2d[731:1096])*a4/10^6

mean(b5_Dep_mg_m2d[731:1096])*a5/10^6
mean(b5_ResS_mg_m2d[731:1096]+b5_ResP_mg_m2d[731:1096])*a5/10^6

mean(b6_Dep_mg_m2d[731:1096])*a6/10^6
mean(b6_ResS_mg_m2d[731:1096]+b6_ResP_mg_m2d[731:1096])*a6/10^6

mean(b7_Dep_mg_m2d[731:1096])*a7/10^6
mean(b7_ResS_mg_m2d[731:1096]+b7_ResP_mg_m2d[731:1096])*a7/10^6

mean(b8_Dep_mg_m2d[731:1096])*a8/10^6
mean(b8_ResS_mg_m2d[731:1096]+b8_ResP_mg_m2d[731:1096])*a8/10^6

mean(b9_Dep_mg_m2d[731:1096])*a9/10^6
mean(b9_ResS_mg_m2d[731:1096]+b9_ResP_mg_m2d[731:1096])*a9/10^6

mean(b10_Dep_mg_m2d[731:1096])*a10/10^6
mean(b10_ResS_mg_m2d[731:1096]+b10_ResP_mg_m2d[731:1096])*a10/10^6

b1_Dep_mg_m2d<-(hg$wn1*DEPO_silt$wn1*(hgpw1_fr))/10^3
