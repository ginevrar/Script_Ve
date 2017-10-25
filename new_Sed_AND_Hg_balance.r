
# total output from run 1900-2100 ---> 1:2427
# runs 63d/63e 
# 1997        [1167:1178]
# 2010        [1323:1334]
# 2050        [1804:1815]
# 2001 - 2003 [1215:1250]

setwd('C:/Users/Ginevra/Dropbox/2017_Venice/115')

setwd('C:/Users/Ginevra/Dropbox/2017_Venice/115')

hgT<-read.csv('Total_Hg.csv', skip=1)
names(hgT)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

 #ng/g  			 
SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
          'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

burial<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

POM_depos<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

silt_depos<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(silt_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

POM_res<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

silt_res<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(silt_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

hgDOC<-read.csv('DOC_Sorbed_Divalent_Hg.csv', header=FALSE, skip = 1,sep = ",", dec=".")
  names(hgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
hgD<-read.csv('Dissolved_Divalent_Hg.csv', header=FALSE, skip = 1,sep = ",", dec=".")
names(hgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

#aree e profonditÃ boxes	
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07;a4<-8.90E+06; a5<-2.22E+07; 
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

area<-cbind(0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)

d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; 
d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71	

v1<-a1*d1; v2<-a2*d2; v3<-a3*d3; v4<-a4*d4; v5<-a5*d5; v6<-a6*d6;
v7<-a7*d7; v8<-a8*d8; v9<-a9*d9; v10<-a10*d10; 

# depo POM m/day depo silt m/day   
POM_depo_m_day<-POM_depos; silt_depo_m_day<-silt_depos # 

fPOM<-POMs/TOTs; fsilt<-silts/TOTs
depo_media<- (POM_depo_m_day *fPOM) + (silt_depo_m_day*fsilt) #m/day

solids_sed  <-TOTs 

## prova 1

 kd_POM<-10^6; kd_silt<-10^5
  
 POMs_kgL<-POMs/10^6 ; silts_kgL<-silts/10^6    #mgL/10^6 -> kgL
 hgCl_gm3<-(hgD-hgDOC)/10^6   #ngL/10^6 ->mgL 
  
 hgPOM_gm3<-hgCl_gm3*POMs_kgL*kd_POM
 hgsilt_gm3<-hgCl_gm3*silts_kgL*kd_silt
  
 hgPOM_ngL <- hgPOM_gm3 *10^6
 hgsilt_ngL<- hgsilt_gm3*10^6

 #gm3 * md-> g/m2d
Box1_Hg_g_m2_d<-(hgPOM_gm3$wn1*POM_depo_m_day$wn1)+
  (hgsilt_gm3$wn1*silt_depo_m_day$wn1)
Box1_Hg_g_d<-Box1_Hg_g_m2_d*a1  #g/d
Box1_Hg_kg_y<-(Box1_Hg_g_d/1000)*365

hgPOM1_kg<-hgPOM_gm3$wn1/1000*v1
kg_d<-(hgPOM1_kg)*(POM_depo_m_day$wn1/d1)
head(kg_d)*365

1.304627e-07
## prova 2
depoHg_ugm2_d<-depo_media*Phgs   # m/d* ug m3  -> ugm2d

depo_kg_y_Hg1<-(depoHg_ugm2_d$wn1*a1*365)/10^9
depo_kg_y_Hg2<-(depoHg_ugm2_d$wn2*a2*365)/10^9
depo_kg_y_Hg3<-(depoHg_ugm2_d$wn3*a3*365)/10^9
depo_kg_y_Hg4<-(depoHg_ugm2_d$wn4*a4*365)/10^9
depo_kg_y_Hg5<-(depoHg_ugm2_d$wn5*a5*365)/10^9
depo_kg_y_Hg6<-(depoHg_ugm2_d$wc6*a6*365)/10^9
depo_kg_y_Hg7<-(depoHg_ugm2_d$wc7*a7*365)/10^9
depo_kg_y_Hg8<-(depoHg_ugm2_d$ws8*a8*365)/10^9
depo_kg_y_Hg9<-(depoHg_ugm2_d$ws9*a9*365)/10^9
depo_kg_y_Hg10<-(depoHg_ugm2_d$ws10*a10*365)/10^9


Phg1_ug<-Phgs$wn1*v1 ## 
Phg1_g<-Phg1_ug/10^6
Phg1_kg<-Phg1_g/1000

plot(Phg1_kg)
head(Phg1_kg)
head(d1_kg_d)
head(d1_kg_y)
d1_kg_y<-(d1_kg_d*365)
d1_kg_d<-Phg1_kg[2:12]*(depo_media$wn1[2:12]/d1) #g/d



13/365

## prova 3
depoSed_g_m2_d <-depo_media     * TOTs  #m/day * g/m3 -> g/m2d
depoSed_g_m2_y    <-depoSed_g_m2_d*365  #m/day * g/m3 -> g/m2d
depoHg_ng_m2_d <-depoSed_g_m2_d * SEDhg #gm2d*ng/g-> ng/m2d

depo1_Phg_g_d<-(depoHg_ng_m2_d$wn1 *a1)/10^9
depo1_Phg_kg_y<-(depo1_Phg_g_d*365)/10^3


depo2_Phg_g_d<-(depoHg_ng_m2_d$wn2 *a2)/10^9
depo2_Phg_kg_y<-(depo2_Phg_g_d*365)/10^3

## prova 4
Hg_depo_ng_m2_d<-depo_media * SEDhg * TOTs   #m/day * g/m3 * ng/g #ng m2 d

Hg_depo1_ng_y<- (Hg_depo_ng_m2_d$wn1*a1)*365   #ng y
Hg_depo1_kg_y <-Hg_depo1_ng_y/10^12

head(Box1_Hg_kg_y)
head(rdate)
head(depo_kg_y_Hg1)
head(depo1_Phg_kg_y)
plot(Hg_depo1_kg_y)

head(depo2_Phg_kg_y)



time.steps <- hg[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
