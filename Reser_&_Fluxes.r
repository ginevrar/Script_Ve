setwd('C:\\Users\\Acer\\Dropbox\\NewVenice151\\1')

hg<-read.csv('Total_Hg.csv', skip=1)
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

#aree e profondità
a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07; a9<-2.95E+07;a10<-4.06E+07
area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10; AT<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10

d1<-1.26; d3<-3.35;d5<-1.03; d6<-1.64; d7<-1.84;   d10<-1.71
d2<-0.78; d4<-0.64;d8<-0.89 ; d9<.0.69     #d8<-1 d9<-1

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

hgpw1_fr<-(hgpw1+hgsw1)/(hg$wn1*10^3)
hgpw2_fr<-(hgpw2+hgsw2)/(hg$wn2*10^3)
hgpw3_fr<-(hgpw3+hgsw3)/(hg$wn3*10^3)
hgpw4_fr<-(hgpw4+hgsw4)/(hg$wn4*10^3)
hgpw5_fr<-(hgpw5+hgsw5)/(hg$wn5*10^3)
hgpw6_fr<-(hgpw6+hgsw6)/(hg$wc6*10^3)
hgpw7_fr<-(hgpw7+hgsw7)/(hg$wc7*10^3)
hgpw8_fr<-(hgpw8+hgsw8)/(hg$ws8*10^3)
hgpw9_fr<-(hgpw9+hgsw9)/(hg$ws9*10^3)
hgpw10_fr<-(hgpw10+hgsw10)/(hg$ws10*10^3)

# ug m-3 *m d-1 == ug m-2 d-1/10^6 == mg /m2 d
b1_Dep_mg_m2d<-((hg$wn1)*DEPO_silt2$wn1*(hgpw1_fr))/10^6
b2_Dep_mg_m2d<-((hg$wn2)*DEPO_silt2$wn2*(hgpw2_fr))/10^6        # ng m-3 *m d-1 == ng m-2 d-1/
b3_Dep_mg_m2d<-((hg$wn3)*DEPO_silt2$wn3*(hgpw3_fr))/10^6        # ng m-3 *m d-1 == ng m-2 d-1/
b4_Dep_mg_m2d<-((hg$wn4)*DEPO_silt2$wn4*(hgpw4_fr))/10^6        # ng m-3 *m d-1 == ng m-2 d-1/
b5_Dep_mg_m2d<-((hg$wn5)*DEPO_silt2$wn5*(hgpw5_fr))/10^6        # ng m-3 *m d-1 == ng m-2 d-1/
b6_Dep_mg_m2d<-((hg$wc6)*DEPO_silt2$wc6*(hgpw6_fr))/10^6        # ng m-3 *m d-1 == ng m-2 d-1/
b7_Dep_mg_m2d<-((hg$wc7)*DEPO_silt2$wc7*(hgpw7_fr))/10^6        # ng m-3 *m d-1 == ng m-2 d-1/
b8_Dep_mg_m2d<-((hg$ws8)*DEPO_silt2$ws8*(hgpw8_fr))/10^6        # ng m-3 *m d-1 == ng m-2 d-1/
b9_Dep_mg_m2d<-((hg$ws9)*DEPO_silt2$ws9*(hgpw9_fr))/10^6        # ng m-3 *m d-1 == ng m-2 d-1/
b10_Dep_mg_m2d<-((hg$ws10)*DEPO_silt2$ws10*(hgpw10_fr))/10^6        # ng m-3 *m d-1 == ng m-2 d-1/
