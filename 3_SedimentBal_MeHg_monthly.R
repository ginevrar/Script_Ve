# total output from run 1900-2100 ---> 1:2427
# runs 63d/63e 
# 1919       [91244:100359,1:11]
# 1970       [644318:653661,1:11]
# 1995       [878071:887414,1:11]
# 2019       [1102481:1111824,1:11]

setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\')     #sim_cl

mehg<-read.csv('Methyl_hg.csv', skip=1)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')	

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

SEDmehg<-read.csv("Total_Sorbed_Methyl_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDmehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 


Pmehgs<-read.csv("Total_Sorbed_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Pmehgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

POM_depos<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                    'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                    'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 


silt_depos<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                     'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                     'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                     'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')	


POM_res<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		


silt_res<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 


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

Rrw1=mehg$wn1*a1*d1/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs1=mehg$sn1*a1*0.05/10^6
Rrds1=mehg$dsn1*a1*0.05/10^6
Rros1=mehg$osn1*a1*0.05/10^6

Rrw2=mehg$wn2*a2*d2/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs2=mehg$sn2*a2*0.05/10^6
Rrds2=mehg$dsn2*a2*0.05/10^6
Rros2=mehg$osn2*a2*0.05/10^6

Rrw3=mehg$wn3*a3*d3/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs3=mehg$sn3*a3*0.05/10^6
Rrds3=mehg$dsn3*a3*0.05/10^6
Rros3=mehg$osn3*a3*0.05/10^6

Rrw4=mehg$wn4*a4*d4/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs4=mehg$sn4*a4*0.05/10^6
Rrds4=mehg$dsn4*a4*0.05/10^6
Rros4=mehg$osn4*a4*0.05/10^6

Rrw5=mehg$wn5*a5*d5/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs5=mehg$sn5*a5*0.05/10^6
Rrds5=mehg$dsn5*a5*0.05/10^6
Rros5=mehg$osn5*a5*0.05/10^6

Rrw6=mehg$wc6*a6*d6/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs6=mehg$sc6*a6*0.05/10^6
Rrds6=mehg$dsc6*a6*0.05/10^6
Rros6=mehg$osc6*a6*0.05/10^6

Rrw7=mehg$wc7*a7*d7/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs7=mehg$sc7*a7*0.05/10^6
Rrds7=mehg$dsc7*a7*0.05/10^6
Rros7=mehg$osc7*a7*0.05/10^6

Rrw8=mehg$ws8*a8*d8/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs8=mehg$ss8*a8*0.05/10^6
Rrds8=mehg$dss8*a8*0.05/10^6
Rros8=mehg$oss8*a8*0.05/10^6

Rrw9=mehg$ws9*a9*d9/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs9=mehg$ss9*a9*0.05/10^6
Rrds9=mehg$dss9*a9*0.05/10^6
Rros9=mehg$oss9*a9*0.05/10^6

Rrw10=mehg$ws10*a10*d10/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs10=mehg$ss10*a10*0.05/10^6
Rrds10=mehg$dss10*a10*0.05/10^6
Rros10=mehg$oss10*a10*0.05/10^6

RrW<-Rrw1+Rrw2+Rrw3+Rrw4+Rrw5+Rrw6+Rrw7+Rrw8+Rrw9+Rrw10
RrS<-Rrs1+Rrs2+Rrs3+Rrs4+Rrs5+Rrs6+Rrs7+Rrs8+Rrs9+Rrs10
RrDS<-Rrds1+Rrds2+Rrds3+Rrds4+Rrds5+Rrds6+Rrds7+Rrds8+Rrds9+Rrds10
RrOS<-Rros1+Rros2+Rros3+Rros4+Rros5+Rros6+Rros7+Rros8+Rros9+Rros10

RESERV<-data.frame(RrW,RrS,RrDS, RrOS)
write.table(RESERV,file='RESERV_g.txt')


solids_sed1  <-silts$sn1+POMs$sn1;   solids_dsed1  <-silts$dsn1+POMs$dsn1;    
solids_sed2  <-silts$sn2+POMs$sn2;   solids_dsed2  <-silts$dsn2+POMs$dsn2;    
solids_sed3  <-silts$sn3+POMs$sn3;   solids_dsed3  <-silts$dsn3+POMs$dsn3; 
solids_sed4  <-silts$sn4+POMs$sn4;   solids_dsed4  <-silts$dsn4+POMs$dsn4;   
solids_sed5  <-silts$sn5+POMs$sn5;   solids_dsed5  <-silts$dsn5+POMs$dsn5;  
solids_sed6  <-silts$sc6+POMs$sc6;   solids_dsed6  <-silts$dsc6+POMs$dsc6;       
solids_sed7  <-silts$sc7+POMs$sc7;   solids_dsed7  <-silts$dsc7+POMs$dsc7;     
solids_sed8  <-silts$ss8+POMs$ss8;   solids_dsed8  <-silts$dss8+POMs$dss8;   
solids_sed9  <-silts$ss9+POMs$ss9;   solids_dsed9  <-silts$dss9+POMs$dss9;    
solids_sed10  <-silts$ss10+POMs$ss10; solids_dsed10  <-silts$dss10+POMs$dss10;  


#fraction of POM
fPOM  <-POMs/TOTs
fsilt <-silts/TOTs

#SEDmehg*solid_sed -> ng/g
SEDmehg_sed1   <-SEDmehg$sn1;    SEDmehg_dsed1   <-SEDmehg$dsn1 
SEDmehg_sed2   <-SEDmehg$sn2;    SEDmehg_dsed2   <-SEDmehg$dsn2 
SEDmehg_sed3   <-SEDmehg$sn3;    SEDmehg_dsed3   <-SEDmehg$dsn3   
SEDmehg_sed4   <-SEDmehg$sn4;    SEDmehg_dsed4   <-SEDmehg$dsn4 
SEDmehg_sed5   <-SEDmehg$sn5;    SEDmehg_dsed5   <-SEDmehg$dsn5 
SEDmehg_sed6   <-SEDmehg$sc6;    SEDmehg_dsed6   <-SEDmehg$dsc6
SEDmehg_sed7   <-SEDmehg$sc7;    SEDmehg_dsed7   <-SEDmehg$dsc7
SEDmehg_sed8   <-SEDmehg$ss8;    SEDmehg_dsed8   <-SEDmehg$dss8
SEDmehg_sed9   <-SEDmehg$ss9;    SEDmehg_dsed9   <-SEDmehg$dss9
SEDmehg_sed10   <-SEDmehg$ss10;  SEDmehg_dsed10   <-SEDmehg$dss10


POM_depo1_m_day<-POM_depos$wn1#d1   #depo m#day * depth(m) --> 1#day (0.003 #d)
silt_depo1_m_day<-silt_depos$wn1#d1 # depo silt m#day  (0.014 #d) 
POM_depo2_m_day<-POM_depos$wn2#d2  
silt_depo2_m_day<-silt_depos$wn2#d2  # 
POM_depo3_m_day<-POM_depos$wn3#d3  #depo m#day * depth(m) --> 1#day (0.003 #d)
silt_depo3_m_day<-silt_depos$wn3#d3 # depo silt m#day  (0.014 #d) 
POM_depo4_m_day<-POM_depos$wn4#d4  
silt_depo4_m_day<-silt_depos$wn4#d4
POM_depo5_m_day<-POM_depos$wn5#d5
silt_depo5_m_day<-silt_depos$wn5#d5
POM_depo6_m_day<-POM_depos$wc6#d6
silt_depo6_m_day<-silt_depos$wc6#d6
POM_depo7_m_day<-POM_depos$wc7#d7
silt_depo7_m_day<-silt_depos$wc7#d7
POM_depo8_m_day<-POM_depos$ws8#d8
silt_depo8_m_day<-silt_depos$ws8#d8
POM_depo9_m_day<-POM_depos$ws9#d9
silt_depo9_m_day<-silt_depos$ws9#d9
POM_depo10_m_day<-POM_depos$ws10#d10
silt_depo10_m_day<-silt_depos$ws10#d10

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

depo1_Pmehg_ug_m2_d<-depo_media1*Pmehgs$wn1        #m/day *ug/m3 = ug m2 d-1 
depo2_Pmehg_ug_m2_d<-depo_media2*Pmehgs$wn2        
depo3_Pmehg_ug_m2_d<-depo_media3*Pmehgs$wn3        # 
depo4_Pmehg_ug_m2_d<-depo_media4*Pmehgs$wn4         
depo5_Pmehg_ug_m2_d<-depo_media5*Pmehgs$wn5 
depo6_Pmehg_ug_m2_d<-depo_media6*Pmehgs$wc6  
depo7_Pmehg_ug_m2_d<-depo_media7*Pmehgs$wc7      
depo8_Pmehg_ug_m2_d<-depo_media8*Pmehgs$ws8 
depo9_Pmehg_ug_m2_d<-depo_media9*Pmehgs$ws9  
depo10_Pmehg_ug_m2_d<-depo_media10*Pmehgs$ws10    

depo1_mehg_ug_m2_d  <-(SEDmehg$wn1*TOTs$wn1*depo_media1)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo2_mehg_ug_m2_d  <-(SEDmehg$wn2*TOTs$wn2*depo_media2)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo3_mehg_ug_m2_d  <-(SEDmehg$wn3*TOTs$wn3*depo_media3)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo4_mehg_ug_m2_d  <-(SEDmehg$wn4*TOTs$wn4*depo_media4)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo5_mehg_ug_m2_d  <-(SEDmehg$wn5*TOTs$wn5*depo_media5)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo6_mehg_ug_m2_d  <-(SEDmehg$wc6*TOTs$wc6*depo_media6)/1000   #ng g * g/m3 * m d-1 -> 
depo7_mehg_ug_m2_d  <-(SEDmehg$wc7*TOTs$wc7*depo_media7)/1000   #ng g * g/m3 * m d-1  
depo8_mehg_ug_m2_d  <-(SEDmehg$ws8*TOTs$ws8*depo_media8)/1000   #ng g * g/m3 * m d-1
depo9_mehg_ug_m2_d  <-(SEDmehg$ws9*TOTs$ws9*depo_media9)/1000   #ng g * g/m3 * m d-1 
depo10_mehg_ug_m2_d  <-(SEDmehg$ws10*TOTs$ws10*depo_media10)/1000   #ng g * g/m3 * m d-1 


depo1_Pmehg_kg_y<-depo1_Pmehg_ug_m2_d*a1/10^9*365
depo2_Pmehg_kg_y<-depo2_Pmehg_ug_m2_d*a2/10^9*365
depo3_Pmehg_kg_y<-depo3_Pmehg_ug_m2_d*a3/10^9*365
depo4_Pmehg_kg_y<-depo4_Pmehg_ug_m2_d*a4/10^9*365
depo5_Pmehg_kg_y<-depo5_Pmehg_ug_m2_d*a5/10^9*365
depo6_Pmehg_kg_y<-depo6_Pmehg_ug_m2_d*a6/10^9*365
depo7_Pmehg_kg_y<-depo7_Pmehg_ug_m2_d*a7/10^9*365
depo8_Pmehg_kg_y<-depo8_Pmehg_ug_m2_d*a8/10^9*365
depo9_Pmehg_kg_y<-depo9_Pmehg_ug_m2_d*a9/10^9*365
depo10_Pmehg_kg_y<-depo10_Pmehg_ug_m2_d*a10/10^9*365

depo1b_Pmehg_ug_d<-depo1_Pmehg_ug_m2_d*a1
depo2b_Pmehg_ug_d<-depo2_Pmehg_ug_m2_d*a2
depo3b_Pmehg_ug_d<-depo3_Pmehg_ug_m2_d*a3
depo4b_Pmehg_ug_d<-depo4_Pmehg_ug_m2_d*a4
depo5b_Pmehg_ug_d<-depo5_Pmehg_ug_m2_d*a5
depo6b_Pmehg_ug_d<-depo6_Pmehg_ug_m2_d*a6
depo7b_Pmehg_ug_d<-depo7_Pmehg_ug_m2_d*a7
depo8b_Pmehg_ug_d<-depo8_Pmehg_ug_m2_d*a8
depo9b_Pmehg_ug_d<-depo9_Pmehg_ug_m2_d*a9
depo10b_Pmehg_ug_d<-depo10_Pmehg_ug_m2_d*a10

depo1c_mehg_ug_d<-depo1_mehg_ug_m2_d*a1
depo2c_mehg_ug_d<-depo2_mehg_ug_m2_d*a2
depo3c_mehg_ug_d<-depo3_mehg_ug_m2_d*a3
depo4c_mehg_ug_d<-depo4_mehg_ug_m2_d*a4
depo5c_mehg_ug_d<-depo5_mehg_ug_m2_d*a5
depo6c_mehg_ug_d<-depo6_mehg_ug_m2_d*a6
depo7c_mehg_ug_d<-depo7_mehg_ug_m2_d*a7
depo8c_mehg_ug_d<-depo8_mehg_ug_m2_d*a8
depo9c_mehg_ug_d<-depo9_mehg_ug_m2_d*a9
depo10c_mehg_ug_d<-depo10_mehg_ug_m2_d*a10


POM_res1_m_day<-POM_res$sn1      #
silt_res1_m_day<-silt_res$sn1  
POM_res2_m_day<-POM_res$sn2  
silt_res2_m_day<-silt_res$sn2 # 
POM_res3_m_day<-POM_res$sn3      #res m/day * 
silt_res3_m_day<-silt_res$sn3#  
POM_res4_m_day<-POM_res$sn4
silt_res4_m_day<-silt_res$sn4
POM_res5_m_day<-POM_res$sn5
silt_res5_m_day<-silt_res$sn5
POM_res6_m_day<-POM_res$sc6
silt_res6_m_day<-silt_res$sc6
POM_res7_m_day<-POM_res$sc7
silt_res7_m_day<-silt_res$sc7
POM_res8_m_day<-POM_res$ss8
silt_res8_m_day<-silt_res$ss8
POM_res9_m_day<-POM_res$ss9
silt_res9_m_day<-silt_res$ss9
POM_res10_m_day<-POM_res$ss10
silt_res10_m_day<-silt_res$ss10

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


str(fPOM$sn1)
str(POM_res10_m_day)

res1_g_m2_d<-res_media1 * solids_sed1/porosity$sn1      #m/day * g/m3 --> gm2d
res2_g_m2_d<-res_media2 * solids_sed2/porosity$sn2      #m/day * g/m3
res3_g_m2_d<-res_media3 * solids_sed3/porosity$sn3      # 
res4_g_m2_d<-res_media4 * solids_sed4/porosity$sn4     
res5_g_m2_d<-res_media5 * solids_sed5/porosity$sn5      
res6_g_m2_d<-res_media6 * solids_sed6/porosity$sc6     
res7_g_m2_d<-res_media7 * solids_sed7/porosity$sc7     
res8_g_m2_d<-res_media8 * solids_sed8/porosity$ss8      #1/day * g/m3
res9_g_m2_d<-res_media9 * solids_sed9/porosity$ss9      #1/day * g/m3
res10_g_m2_d<-res_media10 * solids_sed10/porosity$ss10      #1/day * g/m3

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

res1_Pmehg_ug_m2_d<-res1_g_m2_d*SEDmehg$sn1/10^3   #g m-2 d * ng g-1   = ng m-2 d
res2_Pmehg_ug_m2_d<-res2_g_m2_d*SEDmehg$sn2/10^3 
res3_Pmehg_ug_m2_d<-res3_g_m2_d*SEDmehg$sn3/10^3   ## kg/y*ug/kg--> ug/y 
res4_Pmehg_ug_m2_d<-res4_g_m2_d*SEDmehg$sn4/10^3 
res5_Pmehg_ug_m2_d<-res5_g_m2_d*SEDmehg$sn5/10^3 
res6_Pmehg_ug_m2_d<-res6_g_m2_d*SEDmehg$sc6/10^3 
res7_Pmehg_ug_m2_d<-res7_g_m2_d*SEDmehg$sc7/10^3 
res8_Pmehg_ug_m2_d<-res8_g_m2_d*SEDmehg$ss8/10^3 
res9_Pmehg_ug_m2_d<-res9_g_m2_d*SEDmehg$ss9/10^3 
res10_Pmehg_ug_m2_d<-res10_g_m2_d*SEDmehg$ss10/10^3 


res1_mehg_ug_m2_d<-res_media1*Pmehgs$sn1/porosity$sn1   #m d-1 * ug m-3   = ug m-2 d
res2_mehg_ug_m2_d<-res_media2*Pmehgs$sn2/porosity$sn2     #m d-1 * ug m-3   = ug m-2 d
res3_mehg_ug_m2_d<-res_media3*Pmehgs$sn3/porosity$sn3    #m d-1 * ug m-3   = ug m-2 d
res4_mehg_ug_m2_d<-res_media4*Pmehgs$sn4/porosity$sn4   #m d-1 * ug m-3   = ug m-2 d
res5_mehg_ug_m2_d<-res_media5*Pmehgs$sn5/porosity$sn5    #m d-1 * ug m-3   = ug m-2 d
res6_mehg_ug_m2_d<-res_media6*Pmehgs$sc6/porosity$sc6   #m d-3 * ug m-1   = ug m-2 d
res7_mehg_ug_m2_d<-res_media7*Pmehgs$sc7/porosity$sc7    #m d-1 * ug m-3   = ug m-2 d
res8_mehg_ug_m2_d<-res_media8*Pmehgs$ss8/porosity$ss8    #m d-1 * ug m-3   = ug m-2 d
res9_mehg_ug_m2_d<-res_media9*Pmehgs$ss9/porosity$ss9#m d-1 * ug m-3   = ug m-2 d
res10_mehg_ug_m2_d<-res_media10*Pmehgs$ss10/porosity$ss10   #m d-1 * ug m-3   = ug m-2 d


res1_Pmehg_kg_y<-res1_Pmehg_ug_m2_d*a1/10^9*365
res2_Pmehg_kg_y<-res2_Pmehg_ug_m2_d*a2/10^9*365
res3_Pmehg_kg_y<-res3_Pmehg_ug_m2_d*a3/10^9*365
res4_Pmehg_kg_y<-res4_Pmehg_ug_m2_d*a4/10^9*365
res5_Pmehg_kg_y<-res5_Pmehg_ug_m2_d*a5/10^9*365
res6_Pmehg_kg_y<-res6_Pmehg_ug_m2_d*a6/10^9*365
res7_Pmehg_kg_y<-res7_Pmehg_ug_m2_d*a7/10^9*365
res8_Pmehg_kg_y<-res8_Pmehg_ug_m2_d*a8/10^9*365
res9_Pmehg_kg_y<-res9_Pmehg_ug_m2_d*a9/10^9*365
res10_Pmehg_kg_y<-res10_Pmehg_ug_m2_d*a10/10^9*365


res1b_Pmehg_ug_d<-res1_Pmehg_ug_m2_d*a1 
res2b_Pmehg_ug_d<-res2_Pmehg_ug_m2_d*a2 
res3b_Pmehg_ug_d<-res3_Pmehg_ug_m2_d*a3 
res4b_Pmehg_ug_d<-res4_Pmehg_ug_m2_d*a4 
res5b_Pmehg_ug_d<-res5_Pmehg_ug_m2_d*a5 
res6b_Pmehg_ug_d<-res6_Pmehg_ug_m2_d*a6 
res7b_Pmehg_ug_d<-res7_Pmehg_ug_m2_d*a7 
res8b_Pmehg_ug_d<-res8_Pmehg_ug_m2_d*a8 
res9b_Pmehg_ug_d<-res9_Pmehg_ug_m2_d*a9 
res10b_Pmehg_ug_d<-res10_Pmehg_ug_m2_d*a10 

res1c_mehg_ug_d<-res1_mehg_ug_m2_d*a1 
res2c_mehg_ug_d<-res2_mehg_ug_m2_d*a2 
res3c_mehg_ug_d<-res3_mehg_ug_m2_d*a3 
res4c_mehg_ug_d<-res4_mehg_ug_m2_d*a4 
res5c_mehg_ug_d<-res5_mehg_ug_m2_d*a5 
res6c_mehg_ug_d<-res6_mehg_ug_m2_d*a6 
res7c_mehg_ug_d<-res7_mehg_ug_m2_d*a7 
res8c_mehg_ug_d<-res8_mehg_ug_m2_d*a8 
res9c_mehg_ug_d<-res9_mehg_ug_m2_d*a9 
res10c_mehg_ug_d<-res10_mehg_ug_m2_d*a10 

b1<-(depo1_Pmehg_ug_m2_d-res1_Pmehg_ug_m2_d)*a1    #
bb1<-(depo1_mehg_ug_m2_d-res1_mehg_ug_m2_d)*a1 

b2<-(depo2_Pmehg_ug_m2_d-res2_Pmehg_ug_m2_d)*a2 
bb2<-(depo2_mehg_ug_m2_d-res2_mehg_ug_m2_d)*a2 

b3<-(depo3_Pmehg_ug_m2_d-res3_Pmehg_ug_m2_d)*a3 
bb3<-(depo3_mehg_ug_m2_d-res3_mehg_ug_m2_d)*a3 

b4<-(depo4_Pmehg_ug_m2_d-res4_Pmehg_ug_m2_d)*a4 
bb4<-(depo4_mehg_ug_m2_d-res4_mehg_ug_m2_d)*a4 

b5<-(depo5_Pmehg_ug_m2_d-res5_Pmehg_ug_m2_d)*a5 
bb5<-(depo5_mehg_ug_m2_d-res5_mehg_ug_m2_d)*a5 

b6<-(depo6_Pmehg_ug_m2_d-res6_Pmehg_ug_m2_d)*a6 
bb6<-(depo6_mehg_ug_m2_d-res6_mehg_ug_m2_d)*a6 

b7<-(depo7_Pmehg_ug_m2_d-res7_Pmehg_ug_m2_d)*a7 
bb7<-(depo7_mehg_ug_m2_d-res7_mehg_ug_m2_d)*a7 

b8<-(depo8_Pmehg_ug_m2_d-res8_Pmehg_ug_m2_d)*a8 
bb8<-(depo8_mehg_ug_m2_d-res8_mehg_ug_m2_d)*a8 

b9<-(depo9_Pmehg_ug_m2_d-res9_Pmehg_ug_m2_d)*a9 
bb9<-(depo9_mehg_ug_m2_d-res9_mehg_ug_m2_d)*a9 

b10<-(depo10_Pmehg_ug_m2_d-res10_Pmehg_ug_m2_d)*a10     # ug d-1
bb10<-(depo10_mehg_ug_m2_d-res10_mehg_ug_m2_d)*a10


b1b<- (depo1b_Pmehg_ug_d-res1b_Pmehg_ug_d)/10^6  # g d-1
bb1c<-(depo1c_mehg_ug_d-res1c_mehg_ug_d)/10^6  

b2b<- (depo2b_Pmehg_ug_d-res2b_Pmehg_ug_d)/10^6  # g d-1
bb2c<-(depo2c_mehg_ug_d-res2c_mehg_ug_d)/10^6  

b3b<- (depo3b_Pmehg_ug_d-res3b_Pmehg_ug_d)/10^6  # g d-1
bb3c<-(depo3c_mehg_ug_d-res3c_mehg_ug_d)/10^6  

b4b<- (depo4b_Pmehg_ug_d-res4b_Pmehg_ug_d)/10^6  # g d-1
bb4c<-(depo4c_mehg_ug_d-res4c_mehg_ug_d)/10^6  

b5b<- (depo5b_Pmehg_ug_d-res5b_Pmehg_ug_d)/10^6  #g d-1
bb5c<-(depo5c_mehg_ug_d-res5c_mehg_ug_d)/10^6  

b6b<- (depo6b_Pmehg_ug_d-res6b_Pmehg_ug_d)/10^6  # g d-1
bb6c<-(depo6c_mehg_ug_d-res6c_mehg_ug_d)/10^6  

b7b<- (depo7b_Pmehg_ug_d-res7b_Pmehg_ug_d)/10^6  # g d-1
bb7c<-(depo7c_mehg_ug_d-res7c_mehg_ug_d)/10^6  

b8b<- (depo8b_Pmehg_ug_d-res8b_Pmehg_ug_d)/10^6  # g d-1
bb8c<-(depo8c_mehg_ug_d-res8c_mehg_ug_d)/10^6  

b9b<- (depo9b_Pmehg_ug_d-res9b_Pmehg_ug_d)/10^6  # g d-1
bb9c<-(depo9c_mehg_ug_d-res9c_mehg_ug_d)/10^6  

b10b<- (depo10b_Pmehg_ug_d-res10b_Pmehg_ug_d)/10^6  # g d-1
bb10c<-(depo10c_mehg_ug_d-res10c_mehg_ug_d)/10^6  

plot(bb7)
plot(b2)

netto1<-(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10)*365/10^9
netto2<-(bb1+bb2+bb3+bb4+bb5+bb6+bb7+bb8+bb9+bb10)/10^9*365

netto3<-(b1b+b2b+b3b+b4b+b5b+b6b+b7b+b8b+b9b+b10b)*365/10^3
netto4<-(bb1c+bb2c+bb3c+bb4c+bb5c+bb6c+bb7c+bb8c+bb9c+bb10c)*365/10^3

risospensione_ug_m2_d<-data.frame(res1_mehg_ug_m2_d,res2_mehg_ug_m2_d,res3_mehg_ug_m2_d,res4_mehg_ug_m2_d,res5_mehg_ug_m2_d,
                                  res6_mehg_ug_m2_d,res7_mehg_ug_m2_d,res8_mehg_ug_m2_d,res9_mehg_ug_m2_d,res10_mehg_ug_m2_d)

depo_ug_m2_d<-data.frame(depo1_Pmehg_ug_m2_d,depo2_Pmehg_ug_m2_d,depo3_Pmehg_ug_m2_d,depo4_Pmehg_ug_m2_d,depo5_Pmehg_ug_m2_d,
                         depo6_Pmehg_ug_m2_d,depo7_Pmehg_ug_m2_d,depo8_Pmehg_ug_m2_d,depo9_Pmehg_ug_m2_d,depo10_Pmehg_ug_m2_d)



write.table(risospensione_ug_m2_d, file='risospensione_ug_m2_d_mehg.txt')   # g d-1
write.table(depo_ug_m2_d, file='depo_ug_m2_d_mehg.txt')   # g d-1


alll_bal<-data.frame(bb1c,bb2c,bb3c,bb4c,bb5c,bb6c,bb7c,bb8c,bb9c,bb10c)

write.table(alll_bal, file='alll_bal_mehg.txt')   # g d-1

plot(netto3, type='l')
plot(netto4, type='l')

plot(depo1_Pmehg_kg_y-res1_Pmehg_kg_y,type='l',col='blue')
plot(depo2_Pmehg_kg_y-res2_Pmehg_kg_y,type='l',col='blue')


mehg_depo<-cbind(depo1_Pmehg_kg_y,depo2_Pmehg_kg_y,depo3_Pmehg_kg_y,depo4_Pmehg_kg_y,
               depo5_Pmehg_kg_y,depo6_Pmehg_kg_y,depo7_Pmehg_kg_y,depo8_Pmehg_kg_y,
               depo9_Pmehg_kg_y,depo10_Pmehg_kg_y)

mehg_depoB<-cbind(depo1b_Pmehg_ug_d,depo2b_Pmehg_ug_d,depo3b_Pmehg_ug_d,depo4b_Pmehg_ug_d,depo5b_Pmehg_ug_d,
                depo6b_Pmehg_ug_d,depo7b_Pmehg_ug_d,depo8b_Pmehg_ug_d,depo9b_Pmehg_ug_d,depo10b_Pmehg_ug_d)

mehg_depoC<-cbind(depo1c_mehg_ug_d,depo2c_mehg_ug_d,depo3c_mehg_ug_d,depo4c_mehg_ug_d,depo5c_mehg_ug_d,
                depo6c_mehg_ug_d,depo7c_mehg_ug_d,depo8c_mehg_ug_d,depo9c_mehg_ug_d,depo10c_mehg_ug_d)

mehg_res<-cbind(res1_Pmehg_kg_y,res2_Pmehg_kg_y,res3_Pmehg_kg_y,res4_Pmehg_kg_y,res5_Pmehg_kg_y,
              res6_Pmehg_kg_y,res7_Pmehg_kg_y,res8_Pmehg_kg_y,res9_Pmehg_kg_y,res10_Pmehg_kg_y)

mehg_resB<-cbind(res1b_Pmehg_ug_d,res2b_Pmehg_ug_d,res3b_Pmehg_ug_d,res4b_Pmehg_ug_d,res5b_Pmehg_ug_d,
               res6b_Pmehg_ug_d,res7b_Pmehg_ug_d,res8b_Pmehg_ug_d,res9b_Pmehg_ug_d,res10b_Pmehg_ug_d)

mehg_resC<-cbind(res1c_mehg_ug_d,res2c_mehg_ug_d,res3c_mehg_ug_d,res4c_mehg_ug_d,res5c_mehg_ug_d,
               res6c_mehg_ug_d,res7c_mehg_ug_d,res8c_mehg_ug_d,res9c_mehg_ug_d,res10c_mehg_ug_d)

mehg_res_tot<-rowMeans(mehg_res)
mehg_depo_tot<-rowMeans(mehg_depo)

mehg_res_totB<-rowMeans(mehg_resB)*365/10^9
mehg_depo_totB<-rowMeans(mehg_depoB)*365/10^9

mehg_res_totC<-rowMeans(mehg_resC)*365/10^9
mehg_depo_totC<-rowMeans(mehg_depoC)*365/10^9

sed_bal<-data.frame( mehg_res_tot,mehg_depo_tot,mehg_res_totB,mehg_depo_totB,mehg_res_totC,mehg_depo_totC, 
                     netto1,netto2,netto3,netto4)

write.table(sed_bal,'sed_balb_mehg.txt')

plot(mehg_depo_tot,col='blue' ,type='l', ylim=c(0,100))
par(new=T)
plot(mehg_res_tot,col='red', type='l',ylim=c(0,100))

NEt_Net<-mehg_depo_tot-mehg_res_tot

plot(NEt_Net*1000,col='hotpink',type='b',  ylim=c(0,2000))

NEt_Net_media<-tapply(NEt_Net[2:692041], rep(1:(length(NEt_Net[2:692041])/8760),each = 8760),mean)
NET_deposited_media<-tapply(NET_deposited[2:692041], rep(1:(length(NET_deposited[2:692041])/8760),each = 8760),mean)


