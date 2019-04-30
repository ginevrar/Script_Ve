# total output from run 1900-2100 ---> 1:2427
# runs 63d/63e 
# 1919       [91244:100359,1:11]
# 1970       [644318:653661,1:11]
# 1995       [878071:887414,1:11]
# 2019       [1102481:1111824,1:11]

### DEPOSIZINE VIENE CIRCA UGUALE con TUTTE e 3 le formule, 
### invece risospensione no (la C viene più alta)

setwd('G:\\Il mio Drive\\CL_10\\out')

 hg<-read.csv('Total_Hg.csv', skip=1)
 names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
           'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')	
 hg_10<-hg[91244:100359,]
 hg_70<-hg[644318:653661,]
 hg_95<-hg[878071:887414,]
 hg_19<-hg[1102481:1111824,]
 str(hg_10)
 hg<-NA

 TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
 names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
 TOTs_10<-TOTs[91244:100359,]
 TOTs_70<-TOTs[644318:653661,]
 TOTs_95<-TOTs[878071:887414,]
 TOTs_19<-TOTs[1102481:1111824,]
 TOTs<-NA
 
SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
SEDhg_10<-SEDhg[91244:100359,]
SEDhg_70<-SEDhg[644318:653661,]
SEDhg_95<-SEDhg[878071:887414,]
SEDhg_19<-SEDhg[1102481:1111824,]
SEDhg<-NA

write.table()

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
Phgs_10<-Phgs[91244:100359,]
Phgs_70<-Phgs[644318:653661,]
Phgs_95<-Phgs[878071:887414,]
Phgs_19<-Phgs[1102481:1111824,]
Phgs<-NA

plot(Phgs_10$wn1)

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
silts_10<-silts[91244:100359,]
silts_70<-silts[644318:653661,]
silts_95<-silts[878071:887414,]
silts_19<-silts[1102481:1111824,]
silts<-NA


silts_10

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
POMs_10<-POMs[91244:100359,]
POMs_70<-POMs[644318:653661,]
POMs_95<-POMs[878071:887414,]
POMs_19<-POMs[1102481:1111824,]

POMs<-NA

POM_depos<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                    'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                    'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
POM_depos_10<-POM_depos[91244:100359,1:11]
POM_depos_70<-POM_depos[644318:653661,1:11]
POM_depos_95<-POM_depos[878071:887414,1:11]
POM_depos_19<-POM_depos[1102481:1111824,1:11]

POM_depos<-NA

silt_depos<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')	
silt_depos_10<-silt_depos[91244:100359,1:11]
silt_depos_70<-silt_depos[644318:653661,1:11]
silt_depos_95<-silt_depos[878071:887414,1:11]
silt_depos_19<-silt_depos[1102481:1111824,1:11]

silt_depos<-NA

POM_res<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		
POM_res_10<-POM_res[91244:100359,12:21]
POM_res_70<-POM_res[644318:653661,12:21]
POM_res_95<-POM_res[878071:887414,12:21]
POM_res_19<-POM_res[1102481:1111824,12:21]

POM_res<-NA

silt_res<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
silt_res_10<-silt_res[91244:100359,12:21]
silt_res_70<-silt_res[644318:653661,12:21]
silt_res_95<-silt_res[878071:887414,12:21]
silt_res_19<-silt_res[1102481:1111824,12:21]

silt_res<-NA

time.steps <- TOTs[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate

a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

Model_aree<-c(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
Model_area<-sum(Model_aree)
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71		

Rrw1=hg_19$wn1*a1*d1/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs1= Phgs_19$sn1*a1*0.05/10^6
Rrds1=Phgs_19$dsn1*a1*0.05/10^6
Rros1=Phgs_19$osn1*a1*0.05/10^6

Rrw2=hg_19$wn2*a2*d2/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs2=Phgs_19$sn2*a2*0.05/10^6
Rrds2=Phgs_19$dsn2*a2*0.05/10^6
Rros2=Phgs_19$osn2*a2*0.05/10^6

Rrw3=hg_19$wn3*a3*d3/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs3=Phgs_19$sn3*a3*0.05/10^6
Rrds3=Phgs_19$dsn3*a3*0.05/10^6
Rros3=Phgs_19$osn3*a3*0.05/10^6

Rrw4=hg_19$wn4*a4*d4/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs4=Phgs_19$sn4*a4*0.05/10^6
Rrds4=Phgs_19$dsn4*a4*0.05/10^6
Rros4=Phgs_19$osn4*a4*0.05/10^6

Rrw5=hg_19$wn5*a5*d5/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs5=Phgs_19$sn5*a5*0.05/10^6
Rrds5=Phgs_19$dsn5*a5*0.05/10^6
Rros5=Phgs_19$osn5*a5*0.05/10^6

Rrw6=hg_19$wc6*a6*d6/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs6=Phgs_19$sc6*a6*0.05/10^6
Rrds6=Phgs_19$dsc6*a6*0.05/10^6
Rros6=Phgs_19$osc6*a6*0.05/10^6

Rrw7=hg_19$wc7*a7*d7/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs7=Phgs_19$sc7*a7*0.05/10^6
Rrds7=Phgs_19$dsc7*a7*0.05/10^6
Rros7=Phgs_19$osc7*a7*0.05/10^6

Rrw8=hg_19$ws8*a8*d8/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs8=Phgs_19$ss8*a8*0.05/10^6
Rrds8=Phgs_19$dss8*a8*0.05/10^6
Rros8=Phgs_19$oss8*a8*0.05/10^6

Rrw9=hg_19$ws9*a9*d9/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs9=Phgs_19$ss9*a9*0.05/10^6
Rrds9=Phgs_19$dss9*a9*0.05/10^6
Rros9=Phgs_19$oss9*a9*0.05/10^6

Rrw10=hg_19$ws10*a10*d10/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs10=Phgs_19$ss10*a10*0.05/10^6
Rrds10=Phgs_19$dss10*a10*0.05/10^6
Rros10=Phgs_19$oss10*a10*0.05/10^6

RrW<-Rrw1+Rrw2+Rrw3+Rrw4+Rrw5+Rrw6+Rrw7+Rrw8+Rrw9+Rrw10
RrS<-Rrs1+Rrs2+Rrs3+Rrs4+Rrs5+Rrs6+Rrs7+Rrs8+Rrs9+Rrs10
RrDS<-Rrds1+Rrds2+Rrds3+Rrds4+Rrds5+Rrds6+Rrds7+Rrds8+Rrds9+Rrds10
RrOS<-Rros1+Rros2+Rros3+Rros4+Rros5+Rros6+Rros7+Rros8+Rros9+Rros10

RESERV<-data.frame(RrW,RrS,RrDS, RrOS)
write.table(RESERV,file='RESERV_19.txt')

RrW_all<-cbind(Rrw1,Rrw2,Rrw3,Rrw4,Rrw5,Rrw6,Rrw7,Rrw8,Rrw9,Rrw10)
RrS_all<-cbind(Rrs1,Rrs2,Rrs3,Rrs4,Rrs5,Rrs6,Rrs7,Rrs8,Rrs9,Rrs10)
RrDS_all<-cbind(Rrds1,Rrds2,Rrds3,Rrds4,Rrds5,Rrds6,Rrds7,Rrds8,Rrds9,Rrds10)
RrOS_all<-cbind(Rros1,Rros2,Rros3,Rros4,Rros5,Rros6,Rros7,Rros8,Rros9,Rros10)

write.table(RrW_all,file='RrW_all.txt')
write.table(RrS_all,file='RrS_all.txt')
write.table(RrDS_all,file='RrDS_all.txt')
write.table(RrOS_all,file='RrOS_all.txt')


solids_sed1  <-silts_19$sn1+POMs_19$sn1;   solids_dsed1  <-silts_19$dsn1+POMs_19$dsn1;    
solids_sed2  <-silts_19$sn2+POMs_19$sn2;   solids_dsed2  <-silts_19$dsn2+POMs_19$dsn2;    
solids_sed3  <-silts_19$sn3+POMs_19$sn3;   solids_dsed3  <-silts_19$dsn3+POMs_19$dsn3; 
solids_sed4  <-silts_19$sn4+POMs_19$sn4;   solids_dsed4  <-silts_19$dsn4+POMs_19$dsn4;   
solids_sed5  <-silts_19$sn5+POMs_19$sn5;   solids_dsed5  <-silts_19$dsn5+POMs_19$dsn5;  
solids_sed6  <-silts_19$sc6+POMs_19$sc6;   solids_dsed6  <-silts_19$dsc6+POMs_19$dsc6;       
solids_sed7  <-silts_19$sc7+POMs_19$sc7;   solids_dsed7  <-silts_19$dsc7+POMs_19$dsc7;     
solids_sed8  <-silts_19$ss8+POMs_19$ss8;   solids_dsed8  <-silts_19$dss8+POMs_19$dss8;   
solids_sed9  <-silts_19$ss9+POMs_19$ss9;   solids_dsed9  <-silts_19$dss9+POMs_19$dss9;    
solids_sed10  <-silts_19$ss10+POMs_19$ss10; solids_dsed10  <-silts_19$dss10+POMs_19$dss10;  

#fraction of POM
fPOM  <-POMs_19/(POMs_19+silts_19)
fsilt <-silts_19/(POMs_19+silts_19)

#SEDhg*solid_sed -> ng/g
SEDhg_sed1   <-SEDhg_19$sn1;    SEDhg_dsed1   <-SEDhg_19$dsn1 
SEDhg_sed2   <-SEDhg_19$sn2;    SEDhg_dsed2   <-SEDhg_19$dsn2 
SEDhg_sed3   <-SEDhg_19$sn3;    SEDhg_dsed3   <-SEDhg_19$dsn3   
SEDhg_sed4   <-SEDhg_19$sn4;    SEDhg_dsed4   <-SEDhg_19$dsn4 
SEDhg_sed5   <-SEDhg_19$sn5;    SEDhg_dsed5   <-SEDhg_19$dsn5 
SEDhg_sed6   <-SEDhg_19$sc6;    SEDhg_dsed6   <-SEDhg_19$dsc6
SEDhg_sed7   <-SEDhg_19$sc7;    SEDhg_dsed7   <-SEDhg_19$dsc7
SEDhg_sed8   <-SEDhg_19$ss8;    SEDhg_dsed8   <-SEDhg_19$dss8
SEDhg_sed9   <-SEDhg_19$ss9;    SEDhg_dsed9   <-SEDhg_19$dss9
SEDhg_sed10   <-SEDhg_19$ss10;  SEDhg_dsed10   <-SEDhg_19$dss10

POM_depo1_m_day<-POM_depos_19$wn1#d1   #depo m#day * depth(m) --> 1#day (0.003 #d)
silt_depo1_m_day<-silt_depos_19$wn1#d1 # depo silt m#day  (0.014 #d) 
POM_depo2_m_day<-POM_depos_19$wn2#d2  
silt_depo2_m_day<-silt_depos_19$wn2#d2  # 
POM_depo3_m_day<-POM_depos_19$wn3#d3  #depo m#day * depth(m) --> 1#day (0.003 #d)
silt_depo3_m_day<-silt_depos_19$wn3#d3 # depo silt m#day  (0.014 #d) 
POM_depo4_m_day<-POM_depos_19$wn4#d4  
silt_depo4_m_day<-silt_depos_19$wn4#d4
POM_depo5_m_day<-POM_depos_19$wn5#d5
silt_depo5_m_day<-silt_depos_19$wn5#d5
POM_depo6_m_day<-POM_depos_19$wc6#d6
silt_depo6_m_day<-silt_depos_19$wc6#d6
POM_depo7_m_day<-POM_depos_19$wc7#d7
silt_depo7_m_day<-silt_depos_19$wc7#d7
POM_depo8_m_day<-POM_depos_19$ws8#d8
silt_depo8_m_day<-silt_depos_19$ws8#d8
POM_depo9_m_day<-POM_depos_19$ws9#d9
silt_depo9_m_day<-silt_depos_19$ws9#d9
POM_depo10_m_day<-POM_depos_19$ws10#d10
silt_depo10_m_day<-silt_depos_19$ws10#d10

depo_media1<- (POM_depo1_m_day *fPOM$wn1) + (silt_depo1_m_day*fsilt$wn1) #m/day
depo_media2<- (POM_depo2_m_day *fPOM$wn2) + (silt_depo2_m_day*fsilt$wn2)  
depo_media3<- (POM_depo3_m_day *fPOM$wn3) + (silt_depo3_m_day*fsilt$wn3) 
depo_media4<- (POM_depo4_m_day *fPOM$wn4) + (silt_depo4_m_day*fsilt$wn4)  
depo_media5<- (POM_depo5_m_day *fPOM$wn5) + (silt_depo5_m_day*fsilt$wn5)  
depo_media6<- (POM_depo6_m_day *fPOM$wc6) + (silt_depo6_m_day*fsilt$wc6) 
depo_media7<- (POM_depo7_m_day *fPOM$wc7) + (silt_depo7_m_day*fsilt$wc7) #
depo_media8<- (POM_depo8_m_day *fPOM$ws8) + (silt_depo8_m_day*fsilt$ws8) #
depo_media9<- (POM_depo9_m_day *fPOM$ws9) + (silt_depo9_m_day*fsilt$ws9) #
depo_media10<-(POM_depo10_m_day*fPOM$ws10)+ (silt_depo10_m_day*fsilt$ws10) #

depo1_Phg_ug_m2_d<-depo_media1*Phgs_19$wn1        #m/day *ug/m3 = ug m2 d-1 
depo2_Phg_ug_m2_d<-depo_media2*Phgs_19$wn2        
depo3_Phg_ug_m2_d<-depo_media3*Phgs_19$wn3        # 
depo4_Phg_ug_m2_d<-depo_media4*Phgs_19$wn4         
depo5_Phg_ug_m2_d<-depo_media5*Phgs_19$wn5 
depo6_Phg_ug_m2_d<-depo_media6*Phgs_19$wc6  
depo7_Phg_ug_m2_d<-depo_media7*Phgs_19$wc7      
depo8_Phg_ug_m2_d<-depo_media8*Phgs_19$ws8 
depo9_Phg_ug_m2_d<-depo_media9*Phgs_19$ws9  
depo10_Phg_ug_m2_d<-depo_media10*Phgs_19$ws10    

depo1_hg_ug_m2_d  <-(SEDhg_19$wn1*TOTs_19$wn1*depo_media1)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo2_hg_ug_m2_d  <-(SEDhg_19$wn2*TOTs_19$wn2*depo_media2)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo3_hg_ug_m2_d  <-(SEDhg_19$wn3*TOTs_19$wn3*depo_media3)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo4_hg_ug_m2_d  <-(SEDhg_19$wn4*TOTs_19$wn4*depo_media4)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo5_hg_ug_m2_d  <-(SEDhg_19$wn5*TOTs_19$wn5*depo_media5)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo6_hg_ug_m2_d  <-(SEDhg_19$wc6*TOTs_19$wc6*depo_media6)/1000   #ng g * g/m3 * m d-1 -> 
depo7_hg_ug_m2_d  <-(SEDhg_19$wc7*TOTs_19$wc7*depo_media7)/1000   #ng g * g/m3 * m d-1  
depo8_hg_ug_m2_d  <-(SEDhg_19$ws8*TOTs_19$ws8*depo_media8)/1000   #ng g * g/m3 * m d-1
depo9_hg_ug_m2_d  <-(SEDhg_19$ws9*TOTs_19$ws9*depo_media9)/1000   #ng g * g/m3 * m d-1 
depo10_hg_ug_m2_d  <-(SEDhg_19$ws10*TOTs_19$ws10*depo_media10)/1000   #ng g * g/m3 * m d-1 

depo1_Phg_kg_y<-depo1_Phg_ug_m2_d*a1/10^9*365
depo2_Phg_kg_y<-depo2_Phg_ug_m2_d*a2/10^9*365
depo3_Phg_kg_y<-depo3_Phg_ug_m2_d*a3/10^9*365
depo4_Phg_kg_y<-depo4_Phg_ug_m2_d*a4/10^9*365
depo5_Phg_kg_y<-depo5_Phg_ug_m2_d*a5/10^9*365
depo6_Phg_kg_y<-depo6_Phg_ug_m2_d*a6/10^9*365
depo7_Phg_kg_y<-depo7_Phg_ug_m2_d*a7/10^9*365
depo8_Phg_kg_y<-depo8_Phg_ug_m2_d*a8/10^9*365
depo9_Phg_kg_y<-depo9_Phg_ug_m2_d*a9/10^9*365
depo10_Phg_kg_y<-depo10_Phg_ug_m2_d*a10/10^9*365

depo1b_Phg_ug_d<-depo1_Phg_ug_m2_d*a1
depo2b_Phg_ug_d<-depo2_Phg_ug_m2_d*a2
depo3b_Phg_ug_d<-depo3_Phg_ug_m2_d*a3
depo4b_Phg_ug_d<-depo4_Phg_ug_m2_d*a4
depo5b_Phg_ug_d<-depo5_Phg_ug_m2_d*a5
depo6b_Phg_ug_d<-depo6_Phg_ug_m2_d*a6
depo7b_Phg_ug_d<-depo7_Phg_ug_m2_d*a7
depo8b_Phg_ug_d<-depo8_Phg_ug_m2_d*a8
depo9b_Phg_ug_d<-depo9_Phg_ug_m2_d*a9
depo10b_Phg_ug_d<-depo10_Phg_ug_m2_d*a10


mean(depo2_Phg_ug_m2_d)
mean(depo2_hg_ug_m2_d)

depo1c_hg_ug_d<-depo1_hg_ug_m2_d*a1
depo2c_hg_ug_d<-depo2_hg_ug_m2_d*a2
depo3c_hg_ug_d<-depo3_hg_ug_m2_d*a3
depo4c_hg_ug_d<-depo4_hg_ug_m2_d*a4
depo5c_hg_ug_d<-depo5_hg_ug_m2_d*a5
depo6c_hg_ug_d<-depo6_hg_ug_m2_d*a6
depo7c_hg_ug_d<-depo7_hg_ug_m2_d*a7
depo8c_hg_ug_d<-depo8_hg_ug_m2_d*a8
depo9c_hg_ug_d<-depo9_hg_ug_m2_d*a9
depo10c_hg_ug_d<-depo10_hg_ug_m2_d*a10


POM_res1_m_day<-POM_res_19$sn1      #
silt_res1_m_day<-silt_res_19$sn1  
POM_res2_m_day<-POM_res_19$sn2  
silt_res2_m_day<-silt_res_19$sn2 # 
POM_res3_m_day<-POM_res_19$sn3      #res m/day * 
silt_res3_m_day<-silt_res_19$sn3#  
POM_res4_m_day<-POM_res_19$sn4
silt_res4_m_day<-silt_res_19$sn4
POM_res5_m_day<-POM_res_19$sn5
silt_res5_m_day<-silt_res_19$sn5
POM_res6_m_day<-POM_res_19$sc6
silt_res6_m_day<-silt_res_19$sc6
POM_res7_m_day<-POM_res_19$sc7
silt_res7_m_day<-silt_res_19$sc7
POM_res8_m_day<-POM_res_19$ss8
silt_res8_m_day<-silt_res_19$ss8
POM_res9_m_day<-POM_res_19$ss9
silt_res9_m_day<-silt_res_19$ss9
POM_res10_m_day<-POM_res_19$ss10
silt_res10_m_day<-silt_res_19$ss10

res_media1<- (POM_res1_m_day *fPOM$sn1) + (silt_res1_m_day*fsilt$sn1) #m/day
res_media2<- (POM_res2_m_day *fPOM$sn2) + (silt_res2_m_day*fsilt$sn2) #1/day
res_media3<- (POM_res3_m_day *fPOM$sn3) + (silt_res3_m_day*fsilt$sn3) #1/day
res_media4<- (POM_res4_m_day *fPOM$sn4) + (silt_res4_m_day*fsilt$sn4) #1/day
res_media5<- (POM_res5_m_day *fPOM$sn5) + (silt_res5_m_day*fsilt$sn5) #1/day
res_media6<- (POM_res6_m_day *fPOM$sc6) + (silt_res6_m_day*fsilt$sc6) #1/day
res_media7<- (POM_res7_m_day *fPOM$sc7) + (silt_res7_m_day*fsilt$sc7) #1/day
res_media8<- (POM_res8_m_day *fPOM$ss8) + (silt_res8_m_day*fsilt$ss8) #1/day
res_media9<- (POM_res9_m_day *fPOM$ss9) + (silt_res9_m_day*fsilt$ss9) #1/day
res_media10<-(POM_res10_m_day*fPOM$ss10)+ (silt_res10_m_day*fsilt$ss10) #1/day

str(fPOM$sc6)
str(POM_res10_m_day)

res1_g_m2_d<-res_media1 * solids_sed1#/porosity$sn1      #m/day * g/m3 --> gm2d
res2_g_m2_d<-res_media2 * solids_sed2#/porosity$sn2      #m/day * g/m3
res3_g_m2_d<-res_media3 * solids_sed3#/porosity$sn3      # 
res4_g_m2_d<-res_media4 * solids_sed4#/porosity$sn4     
res5_g_m2_d<-res_media5 * solids_sed5#/porosity$sn5      
res6_g_m2_d<-res_media6 * solids_sed6#/porosity$sc6     
res7_g_m2_d<-res_media7 * solids_sed7#/porosity$sc7     
res8_g_m2_d<-res_media8 * solids_sed8#/porosity$ss8      #1/day * g/m3
res9_g_m2_d<-res_media9 * solids_sed9#/porosity$ss9      #1/day * g/m3
res10_g_m2_d<-res_media10 * solids_sed10#/porosity$ss10      #1/day * g/m3

res1_kg_y <-(res1_g_m2_d*a1)*365/1000
res2_kg_y <-(res2_g_m2_d*a2)*365/1000
res3_kg_y <-(res3_g_m2_d*a3)*365/1000
res4_kg_y <-(res4_g_m2_d*a4)*365/1000
res5_kg_y <-(res5_g_m2_d*a5)*365/1000
res6_kg_y <-(res6_g_m2_d*a6)*365/1000
res7_kg_y <-(res7_g_m2_d*a7)*365/1000
res8_kg_y <-(res8_g_m2_d*a8)*365/1000
res9_kg_y <-(res9_g_m2_d*a9)*365/1000
res10_kg_y <-(res10_g_m2_d*a10)*365/1000

TOT_res_ty<-(res1_kg_y+res2_kg_y+res3_kg_y+res4_kg_y+res5_kg_y+
          res6_kg_y+res7_kg_y+res8_kg_y+res9_kg_y+res10_kg_y)*1000

mean(TOT_res_ty)
#92.4% of re-suspension (1.13*10^12 g year?1) occurs in the northern basin
#and 7.6% from the southern basin (9.27?1010 g year-1).

res1_Phg_ug_m2_d<-res1_g_m2_d*SEDhg_19$sn1/10^3   #g m-2 d * ng g-1   = ng m-2 d
res2_Phg_ug_m2_d<-res2_g_m2_d*SEDhg_19$sn2/10^3 
res3_Phg_ug_m2_d<-res3_g_m2_d*SEDhg_19$sn3/10^3   ## kg/y*ug/kg--> ug/y 
res4_Phg_ug_m2_d<-res4_g_m2_d*SEDhg_19$sn4/10^3 
res5_Phg_ug_m2_d<-res5_g_m2_d*SEDhg_19$sn5/10^3 
res6_Phg_ug_m2_d<-res6_g_m2_d*SEDhg_19$sc6/10^3 
res7_Phg_ug_m2_d<-res7_g_m2_d*SEDhg_19$sc7/10^3 
res8_Phg_ug_m2_d<-res8_g_m2_d*SEDhg_19$ss8/10^3 
res9_Phg_ug_m2_d<-res9_g_m2_d*SEDhg_19$ss9/10^3 
res10_Phg_ug_m2_d<-res10_g_m2_d*SEDhg_19$ss10/10^3 

res1_hg_ug_m2_d<-res_media1*Phgs_19$sn1#/porosity$sn1    #m d-1 * ug m-3   = ug m-2 d   ???
res2_hg_ug_m2_d<-res_media2*Phgs_19$sn2#/porosity$sn2    #m d-1 * ug m-3   = ug m-2 d
res3_hg_ug_m2_d<-res_media3*Phgs_19$sn3#/porosity$sn3    #m d-1 * ug m-3   = ug m-2 d
res4_hg_ug_m2_d<-res_media4*Phgs_19$sn4#/porosity$sn4    #m d-1 * ug m-3   = ug m-2 d
res5_hg_ug_m2_d<-res_media5*Phgs_19$sn5#/porosity$sn5    #m d-1 * ug m-3   = ug m-2 d
res6_hg_ug_m2_d<-res_media6*Phgs_19$sc6#/porosity$sc6    #m d-3 * ug m-1   = ug m-2 d
res7_hg_ug_m2_d<-res_media7*Phgs_19$sc7#/porosity$sc7    #m d-1 * ug m-3   = ug m-2 d
res8_hg_ug_m2_d<-res_media8*Phgs_19$ss8#/porosity$ss8    #m d-1 * ug m-3   = ug m-2 d
res9_hg_ug_m2_d<-res_media9*Phgs_19$ss9#/porosity$ss9    #m d-1 * ug m-3   = ug m-2 d
res10_hg_ug_m2_d<-res_media10*Phgs_19$ss10#/porosity$ss10   #m d-1 * ug m-3   = ug m-2 d

res1_Phg_kg_y<-res1_Phg_ug_m2_d*a1/10^9*365
res2_Phg_kg_y<-res2_Phg_ug_m2_d*a2/10^9*365
res3_Phg_kg_y<-res3_Phg_ug_m2_d*a3/10^9*365
res4_Phg_kg_y<-res4_Phg_ug_m2_d*a4/10^9*365
res5_Phg_kg_y<-res5_Phg_ug_m2_d*a5/10^9*365
res6_Phg_kg_y<-res6_Phg_ug_m2_d*a6/10^9*365
res7_Phg_kg_y<-res7_Phg_ug_m2_d*a7/10^9*365
res8_Phg_kg_y<-res8_Phg_ug_m2_d*a8/10^9*365
res9_Phg_kg_y<-res9_Phg_ug_m2_d*a9/10^9*365
res10_Phg_kg_y<-res10_Phg_ug_m2_d*a10/10^9*365

res1b_Phg_ug_d<-res1_Phg_ug_m2_d*a1 
res2b_Phg_ug_d<-res2_Phg_ug_m2_d*a2 
res3b_Phg_ug_d<-res3_Phg_ug_m2_d*a3 
res4b_Phg_ug_d<-res4_Phg_ug_m2_d*a4 
res5b_Phg_ug_d<-res5_Phg_ug_m2_d*a5 
res6b_Phg_ug_d<-res6_Phg_ug_m2_d*a6 
res7b_Phg_ug_d<-res7_Phg_ug_m2_d*a7 
res8b_Phg_ug_d<-res8_Phg_ug_m2_d*a8 
res9b_Phg_ug_d<-res9_Phg_ug_m2_d*a9 
res10b_Phg_ug_d<-res10_Phg_ug_m2_d*a10 

res1c_hg_ug_d<-res1_hg_ug_m2_d*a1 
res2c_hg_ug_d<-res2_hg_ug_m2_d*a2 
res3c_hg_ug_d<-res3_hg_ug_m2_d*a3 
res4c_hg_ug_d<-res4_hg_ug_m2_d*a4 
res5c_hg_ug_d<-res5_hg_ug_m2_d*a5 
res6c_hg_ug_d<-res6_hg_ug_m2_d*a6 
res7c_hg_ug_d<-res7_hg_ug_m2_d*a7 
res8c_hg_ug_d<-res8_hg_ug_m2_d*a8 
res9c_hg_ug_d<-res9_hg_ug_m2_d*a9 
res10c_hg_ug_d<-res10_hg_ug_m2_d*a10 

b1<-(depo1_Phg_ug_m2_d-res1_Phg_ug_m2_d)*a1    #
bb1<-(depo1_hg_ug_m2_d-res1_hg_ug_m2_d)*a1 
  
b2<-(depo2_Phg_ug_m2_d-res2_Phg_ug_m2_d)*a2 
bb2<-(depo2_hg_ug_m2_d-res2_hg_ug_m2_d)*a2 

b3<-(depo3_Phg_ug_m2_d-res3_Phg_ug_m2_d)*a3 
bb3<-(depo3_hg_ug_m2_d-res3_hg_ug_m2_d)*a3 

b4<-(depo4_Phg_ug_m2_d-res4_Phg_ug_m2_d)*a4 
bb4<-(depo4_hg_ug_m2_d-res4_hg_ug_m2_d)*a4 

b5<-(depo5_Phg_ug_m2_d-res5_Phg_ug_m2_d)*a5 
bb5<-(depo5_hg_ug_m2_d-res5_hg_ug_m2_d)*a5 

b6<-(depo6_Phg_ug_m2_d-res6_Phg_ug_m2_d)*a6 
bb6<-(depo6_hg_ug_m2_d-res6_hg_ug_m2_d)*a6 

b7<-(depo7_Phg_ug_m2_d-res7_Phg_ug_m2_d)*a7 
bb7<-(depo7_hg_ug_m2_d-res7_hg_ug_m2_d)*a7 

b8<-(depo8_Phg_ug_m2_d-res8_Phg_ug_m2_d)*a8 
bb8<-(depo8_hg_ug_m2_d-res8_hg_ug_m2_d)*a8 

b9<-(depo9_Phg_ug_m2_d-res9_Phg_ug_m2_d)*a9 
bb9<-(depo9_hg_ug_m2_d-res9_hg_ug_m2_d)*a9 

b10<-(depo10_Phg_ug_m2_d-res10_Phg_ug_m2_d)*a10     # ug d-1
bb10<-(depo10_hg_ug_m2_d-res10_hg_ug_m2_d)*a10


b1b<- (depo1b_Phg_ug_d-res1b_Phg_ug_d)/10^6  # g d-1
bb1c<-(depo1c_hg_ug_d-res1c_hg_ug_d)/10^6  

b2b<- (depo2b_Phg_ug_d-res2b_Phg_ug_d)/10^6  # g d-1
bb2c<-(depo2c_hg_ug_d-res2c_hg_ug_d)/10^6  

b3b<- (depo3b_Phg_ug_d-res3b_Phg_ug_d)/10^6  # g d-1
bb3c<-(depo3c_hg_ug_d-res3c_hg_ug_d)/10^6  

b4b<- (depo4b_Phg_ug_d-res4b_Phg_ug_d)/10^6  # g d-1
bb4c<-(depo4c_hg_ug_d-res4c_hg_ug_d)/10^6  

b5b<- (depo5b_Phg_ug_d-res5b_Phg_ug_d)/10^6  #g d-1
bb5c<-(depo5c_hg_ug_d-res5c_hg_ug_d)/10^6  

b6b<- (depo6b_Phg_ug_d-res6b_Phg_ug_d)/10^6  # g d-1
bb6c<-(depo6c_hg_ug_d-res6c_hg_ug_d)/10^6  

b7b<- (depo7b_Phg_ug_d-res7b_Phg_ug_d)/10^6  # g d-1
bb7c<-(depo7c_hg_ug_d-res7c_hg_ug_d)/10^6  

b8b<- (depo8b_Phg_ug_d-res8b_Phg_ug_d)/10^6  # g d-1
bb8c<-(depo8c_hg_ug_d-res8c_hg_ug_d)/10^6  

b9b<- (depo9b_Phg_ug_d-res9b_Phg_ug_d)/10^6  # g d-1
bb9c<-(depo9c_hg_ug_d-res9c_hg_ug_d)/10^6  

b10b<- (depo10b_Phg_ug_d-res10b_Phg_ug_d)/10^6  # g d-1
bb10c<-(depo10c_hg_ug_d-res10c_hg_ug_d)/10^6  

plot(bb7)
plot(b2)

netto1<-(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10)*365/10^9
netto2<-(bb1+bb2+bb3+bb4+bb5+bb6+bb7+bb8+bb9+bb10)/10^9*365

netto3<-(b1b+b2b+b3b+b4b+b5b+b6b+b7b+b8b+b9b+b10b)*365/10^3
netto4<-(bb1c+bb2c+bb3c+bb4c+bb5c+bb6c+bb7c+bb8c+bb9c+bb10c)*365/10^3

risospensione_ug_m2_d<-data.frame(res1_hg_ug_m2_d,res2_hg_ug_m2_d,res3_hg_ug_m2_d,res4_hg_ug_m2_d,res5_hg_ug_m2_d,
                                  res6_hg_ug_m2_d,res7_hg_ug_m2_d,res8_hg_ug_m2_d,res9_hg_ug_m2_d,res10_hg_ug_m2_d)

depo_ug_m2_d<-data.frame(depo1_Phg_ug_m2_d,depo2_Phg_ug_m2_d,depo3_Phg_ug_m2_d,depo4_Phg_ug_m2_d,depo5_Phg_ug_m2_d,
                         depo6_Phg_ug_m2_d,depo7_Phg_ug_m2_d,depo8_Phg_ug_m2_d,depo9_Phg_ug_m2_d,depo10_Phg_ug_m2_d)



write.table(risospensione_ug_m2_d, file='risospensione_ug_m2_d.txt')   # g d-1
write.table(depo_ug_m2_d, file='depo_ug_m2_d.txt')   # g d-1


alll_bal_19<-data.frame(bb1c,bb2c,bb3c,bb4c,bb5c,bb6c,bb7c,bb8c,bb9c,bb10c)

write.table(alll_bal_19, file='alll_bal_19.txt')   # g d-1


plot(netto3, type='l')
plot(netto4, type='l')

plot(depo1_Phg_kg_y-res1_Phg_kg_y,type='l',col='blue')
plot(depo2_Phg_kg_y-res2_Phg_kg_y,type='l',col='blue')
plot(depo3_Phg_kg_y-res3_Phg_kg_y,type='l',col='blue')
plot(depo4_Phg_kg_y-res4_Phg_kg_y,type='l',col='blue')


mean(depo1_Phg_kg_y-res1_Phg_kg_y)
mean(depo2_Phg_kg_y-res2_Phg_kg_y)
mean(depo3_Phg_kg_y-res3_Phg_kg_y)
mean(depo4_Phg_kg_y-res4_Phg_kg_y)
mean(depo5_Phg_kg_y-res5_Phg_kg_y)
mean(depo6_Phg_kg_y-res6_Phg_kg_y)
mean(depo7_Phg_kg_y-res7_Phg_kg_y)
mean(depo8_Phg_kg_y-res8_Phg_kg_y)
mean(depo9_Phg_kg_y-res9_Phg_kg_y)
mean(depo10_Phg_kg_y-res10_Phg_kg_y)

-1103-517+357+57-210+411+2463+351+477+767

Hg_depo<-cbind(depo1_Phg_kg_y,depo2_Phg_kg_y,depo3_Phg_kg_y,depo4_Phg_kg_y,
               depo5_Phg_kg_y,depo6_Phg_kg_y,depo7_Phg_kg_y,depo8_Phg_kg_y,
               depo9_Phg_kg_y,depo10_Phg_kg_y)

Hg_depoB<-cbind(depo1b_Phg_ug_d,depo2b_Phg_ug_d,depo3b_Phg_ug_d,depo4b_Phg_ug_d,depo5b_Phg_ug_d,
                depo6b_Phg_ug_d,depo7b_Phg_ug_d,depo8b_Phg_ug_d,depo9b_Phg_ug_d,depo10b_Phg_ug_d)

Hg_depoC<-cbind(depo1c_hg_ug_d,depo2c_hg_ug_d,depo3c_hg_ug_d,depo4c_hg_ug_d,depo5c_hg_ug_d,
                depo6c_hg_ug_d,depo7c_hg_ug_d,depo8c_hg_ug_d,depo9c_hg_ug_d,depo10c_hg_ug_d)

Hg_res<-cbind(res1_Phg_kg_y,res2_Phg_kg_y,res3_Phg_kg_y,res4_Phg_kg_y,res5_Phg_kg_y,
  res6_Phg_kg_y,res7_Phg_kg_y,res8_Phg_kg_y,res9_Phg_kg_y,res10_Phg_kg_y)

Hg_resB<-cbind(res1b_Phg_ug_d,res2b_Phg_ug_d,res3b_Phg_ug_d,res4b_Phg_ug_d,res5b_Phg_ug_d,
                res6b_Phg_ug_d,res7b_Phg_ug_d,res8b_Phg_ug_d,res9b_Phg_ug_d,res10b_Phg_ug_d)

Hg_resC<-cbind(res1c_hg_ug_d,res2c_hg_ug_d,res3c_hg_ug_d,res4c_hg_ug_d,res5c_hg_ug_d,
                res6c_hg_ug_d,res7c_hg_ug_d,res8c_hg_ug_d,res9c_hg_ug_d,res10c_hg_ug_d)

Hg_res_tot<-rowSums(Hg_res)  #.rowMeans
Hg_depo_tot<-rowSums(Hg_depo)

Hg_res_totB<-rowSums(Hg_resB)*365/10^9
Hg_depo_totB<-rowSums(Hg_depoB)*365/10^9

Hg_res_totC<-rowSums(Hg_resC)*365/10^9
Hg_depo_totC<-rowSums(Hg_depoC)*365/10^9

sed_bal<-data.frame( Hg_res_tot,Hg_depo_tot,Hg_res_totB,Hg_depo_totB,Hg_res_totC,Hg_depo_totC, 
                     netto1,netto2,netto3,netto4)

write.table(sed_bal,'sed_bal_19bbb.txt')

plot(Hg_depo_tot,col='blue' ,type='l', ylim=c(0,100))
par(new=T)
plot(Hg_res_tot,col='red', type='l', ylim=c(0,100))

NEt_Net<-Hg_depo_tot-Hg_res_tot

plot(NEt_Net,col='hotpink',type='b',ylim=c(0,1000))

plot(Hg_depo_totB-Hg_res_totB)
plot(Hg_depo_totC-Hg_res_totC)

NEt_Net_media<-tapply(NEt_Net[2:692041], rep(1:(length(NEt_Net[2:692041])/8760),each = 8760),mean)
NET_deposited_media<-tapply(NET_deposited[2:692041], rep(1:(length(NET_deposited[2:692041])/8760),each = 8760),mean)

1.65*3
24690.09   - 23838.59
