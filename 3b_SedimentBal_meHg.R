# total output from run 1900-2100 ---> 1:2427
#setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')     #sim_cl
setwd('G:\\Il mio Drive\\CL_10\\out')

SEDmehg<-read.csv("Total_Sorbed_Methyl_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDmehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')		
SEDmehg_10<-SEDmehg[91244:100359,]
SEDmehg_70<-SEDmehg[644318:653661,]
SEDmehg_95<-SEDmehg[878071:887414,]
SEDmehg_19<-SEDmehg[1102481:1111824,]

Pmehgs<-read.csv("Total_Sorbed_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Pmehgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
Pmehgs_10<-Pmehgs[91244:100359,]
Pmehgs_70<-Pmehgs[644318:653661,]
Pmehgs_95<-Pmehgs[878071:887414,]
Pmehgs_19<-Pmehgs[1102481:1111824,]		 

time.steps <- Pmehgs[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

rdate_10=rdate[91244:100359]
rdate_70=rdate[644318:653661]
rdate_95=rdate[878071:887414]
rdate_19=rdate[1102481:1111824]		

bbbb<-data.frame(rdate_10,rdate_95,rdate_19)

write.table(rdate_10, 'rdate_10.txt')
write.table(bbbb, 'rdate_10_19.txt')


Pmehgs<-NA
SEDmehg<-NA

a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

Model_area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10; 
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71		

#fraction of POM
fPOM  <-POMs_19/TOTs_19
fsilt <-silts_19/TOTs_19

Rrw1=mehg_19$wn1*a1*d1/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs1= Pmehgs_19$sn1*a1*0.05/10^6
Rrds1=Pmehgs_19$dsn1*a1*0.05/10^6
Rros1=Pmehgs_19$osn1*a1*0.05/10^6

Rrw2=mehg_19$wn2*a2*d2/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs2=Pmehgs_19$sn2*a2*0.05/10^6
Rrds2=Pmehgs_19$dsn2*a2*0.05/10^6
Rros2=Pmehgs_19$osn2*a2*0.05/10^6

Rrw3=mehg_19$wn3*a3*d3/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs3=Pmehgs_19$sn3*a3*0.05/10^6
Rrds3=Pmehgs_19$dsn3*a3*0.05/10^6
Rros3=Pmehgs_19$osn3*a3*0.05/10^6

Rrw4=mehg_19$wn4*a4*d4/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs4=Pmehgs_19$sn4*a4*0.05/10^6
Rrds4=Pmehgs_19$dsn4*a4*0.05/10^6
Rros4=Pmehgs_19$osn4*a4*0.05/10^6

Rrw5=mehg_19$wn5*a5*d5/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs5=Pmehgs_19$sn5*a5*0.05/10^6
Rrds5=Pmehgs_19$dsn5*a5*0.05/10^6
Rros5=Pmehgs_19$osn5*a5*0.05/10^6

Rrw6=mehg_19$wc6*a6*d6/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs6=Pmehgs_19$sc6*a6*0.05/10^6
Rrds6=Pmehgs_19$dsc6*a6*0.05/10^6
Rros6=Pmehgs_19$osc6*a6*0.05/10^6

Rrw7=mehg_19$wc7*a7*d7/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs7=Pmehgs_19$sc7*a7*0.05/10^6
Rrds7=Pmehgs_19$dsc7*a7*0.05/10^6
Rros7=Pmehgs_19$osc7*a7*0.05/10^6

Rrw8=mehg_19$ws8*a8*d8/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs8=Pmehgs_19$ss8*a8*0.05/10^6
Rrds8=Pmehgs_19$dss8*a8*0.05/10^6
Rros8=Pmehgs_19$oss8*a8*0.05/10^6

Rrw9=mehg_19$ws9*a9*d9/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs9=Pmehgs_19$ss9*a9*0.05/10^6
Rrds9=Pmehgs_19$dss9*a9*0.05/10^6
Rros9=Pmehgs_19$oss9*a9*0.05/10^6

Rrw10=mehg_19$ws10*a10*d10/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs10=Pmehgs_19$ss10*a10*0.05/10^6
Rrds10=Pmehgs_19$dss10*a10*0.05/10^6
Rros10=Pmehgs_19$oss10*a10*0.05/10^6

RrW<-Rrw1+Rrw2+Rrw3+Rrw4+Rrw5+Rrw6+Rrw7+Rrw8+Rrw9+Rrw10
RrS<-Rrs1+Rrs2+Rrs3+Rrs4+Rrs5+Rrs6+Rrs7+Rrs8+Rrs9+Rrs10
RrDS<-Rrds1+Rrds2+Rrds3+Rrds4+Rrds5+Rrds6+Rrds7+Rrds8+Rrds9+Rrds10
RrOS<-Rros1+Rros2+Rros3+Rros4+Rros5+Rros6+Rros7+Rros8+Rros9+Rros10

RESERV<-data.frame(RrW,RrS,RrDS, RrOS)
write.table(RESERV,file='RESERV_MeHg_19.txt')

RrW_all<-cbind(Rrw1,Rrw2,Rrw3,Rrw4,Rrw5,Rrw6,Rrw7,Rrw8,Rrw9,Rrw10)
RrS_all<-cbind(Rrs1,Rrs2,Rrs3,Rrs4,Rrs5,Rrs6,Rrs7,Rrs8,Rrs9,Rrs10)
RrDS_all<-cbind(Rrds1,Rrds2,Rrds3,Rrds4,Rrds5,Rrds6,Rrds7,Rrds8,Rrds9,Rrds10)
RrOS_all<-cbind(Rros1,Rros2,Rros3,Rros4,Rros5,Rros6,Rros7,Rros8,Rros9,Rros10)

write.table(RrW_all,file='RrW_all_2019_mehg.txt')
write.table(RrS_all,file='RrS_all_2019_mehg.txt')
write.table(RrDS_all,file='RrDS_all_2019_mehg.txt')
write.table(RrOS_all,file='RrOS_all_2019_mehg.txt')

#SEDmehg*solid_sed -> ng/g
SEDmehg_sed1   <-SEDmehg_19$sn1; SEDmehg_dsed1 <-SEDmehg_19$dsn1 
SEDmehg_sed2   <-SEDmehg_19$sn2; SEDmehg_dsed2 <-SEDmehg_19$dsn2 
SEDmehg_sed3   <-SEDmehg_19$sn3; SEDmehg_dsed3 <-SEDmehg_19$dsn3   
SEDmehg_sed4   <-SEDmehg_19$sn4; SEDmehg_dsed4 <-SEDmehg_19$dsn4 
SEDmehg_sed5   <-SEDmehg_19$sn5; SEDmehg_dsed5 <-SEDmehg_19$dsn5 
SEDmehg_sed6   <-SEDmehg_19$sc6; SEDmehg_dsed6 <-SEDmehg_19$dsc6
SEDmehg_sed7   <-SEDmehg_19$sc7; SEDmehg_dsed7 <-SEDmehg_19$dsc7
SEDmehg_sed8   <-SEDmehg_19$ss8; SEDmehg_dsed8 <-SEDmehg_19$dss8
SEDmehg_sed9   <-SEDmehg_19$ss9; SEDmehg_dsed9 <-SEDmehg_19$dss9
SEDmehg_sed10   <-SEDmehg_19$ss10; SEDmehg_dsed10 <-SEDmehg_19$dss10

# Hg sediment 
HgT_sed1_ngm3 <- solids_sed1   *SEDmehg_sed1  #  ng/g*g/m3 -> ng/m3
HgT_sed2_ngm3 <- solids_sed2   *SEDmehg_sed2  #  ng/g*g/m3 -> ng/m3
HgT_sed3_ngm3 <- solids_sed3   *SEDmehg_sed3  #  ng/g*g/m3 -> ng/m3
HgT_sed4_ngm3 <- solids_sed4   *SEDmehg_sed4  #  ng/g*g/m3 -> ng/m3
HgT_sed5_ngm3 <- solids_sed5   *SEDmehg_sed5  #  ng/g*g/m3 -> ng/m3
HgT_sed6_ngm3 <- solids_sed6   *SEDmehg_sed6  #  ng/g*g/m3 -> ng/m3
HgT_sed7_ngm3 <- solids_sed7   *SEDmehg_sed7  #  ng/g*g/m3 -> ng/m3
HgT_sed8_ngm3 <- solids_sed8   *SEDmehg_sed8  #  ng/g*g/m3 -> ng/m3
HgT_sed9_ngm3 <- solids_sed9   *SEDmehg_sed9  #  ng/g*g/m3 -> ng/m3
HgT_sed10_ngm3 <- solids_sed10 *SEDmehg_sed10  #  ng/g*g/m3 -> ng/m3
# Hg deep sediment 
HgT_dsed1_ngm3 <- solids_dsed1   *SEDmehg_dsed1  #  ng/g*g/m3 -> ng/m3
HgT_dsed2_ngm3 <- solids_dsed2   *SEDmehg_dsed2  #  ng/g*g/m3 -> ng/m3
HgT_dsed3_ngm3 <- solids_dsed3   *SEDmehg_dsed3  #  ng/g*g/m3 -> ng/m3
HgT_dsed4_ngm3 <- solids_dsed4   *SEDmehg_dsed4  #  ng/g*g/m3 -> ng/m3
HgT_dsed5_ngm3 <- solids_dsed5   *SEDmehg_dsed5  #  ng/g*g/m3 -> ng/m3
HgT_dsed6_ngm3 <- solids_dsed6   *SEDmehg_dsed6  #  ng/g*g/m3 -> ng/m3
HgT_dsed7_ngm3 <- solids_dsed7   *SEDmehg_dsed7  #  ng/g*g/m3 -> ng/m3
HgT_dsed8_ngm3 <- solids_dsed8   *SEDmehg_dsed8  #  ng/g*g/m3 -> ng/m3
HgT_dsed9_ngm3 <- solids_dsed9   *SEDmehg_dsed9  #  ng/g*g/m3 -> ng/m3
HgT_dsed10_ngm3 <- solids_dsed10 *SEDmehg_dsed10  #  ng/g*g/m3 -> ng/m3

HgT_netdepo_sed1_g_y<-HgT_sed1_ngm3/10^9 *netdepo_sed1/10^2 *a1  #ng m3/10^9 =g/m3*cmy/100 = m/y * m
HgT_netdepo_sed2_g_y<-HgT_sed2_ngm3/10^9*netdepo_sed2/10^2  *a2
HgT_netdepo_sed3_g_y<-HgT_sed3_ngm3/10^9*netdepo_sed3/10^2  *a3
HgT_netdepo_sed4_g_y<-HgT_sed4_ngm3/10^9*netdepo_sed4/10^2  *a4
HgT_netdepo_sed5_g_y<-HgT_sed5_ngm3/10^9*netdepo_sed5/10^2  *a5 
HgT_netdepo_sed6_g_y<-HgT_sed6_ngm3/10^9*netdepo_sed6/10^2  *a6
HgT_netdepo_sed7_g_y<-HgT_sed7_ngm3/10^9*netdepo_sed7/10^2  *a7
HgT_netdepo_sed8_g_y<-HgT_sed8_ngm3/10^9*netdepo_sed8/10^2  *a8
HgT_netdepo_sed9_g_y<-HgT_sed9_ngm3/10^9*netdepo_sed9/10^2  *a9
HgT_netdepo_sed10_g_y<-HgT_sed10_ngm3/10^9*netdepo_sed10/10^2 *a10


plot(HgT_netdepo_sed1_g_y)


HgT_burial_sed1_g_y<-HgT_dsed1_ngm3/10^9 *burial_sed1/10^2 *a1
HgT_burial_sed2_g_y<-HgT_dsed2_ngm3/10^9*burial_sed2/10^2  *a2
HgT_burial_sed3_g_y<-HgT_dsed3_ngm3/10^9*burial_sed3/10^2  *a3
HgT_burial_sed4_g_y<-HgT_dsed4_ngm3/10^9*burial_sed4/10^2  *a4
HgT_burial_sed5_g_y<-HgT_dsed5_ngm3/10^9*burial_sed5/10^2  *a5 
HgT_burial_sed6_g_y<-HgT_dsed6_ngm3/10^9*burial_sed6/10^2  *a6
HgT_burial_sed7_g_y<-HgT_dsed7_ngm3/10^9*burial_sed7/10^2  *a7
HgT_burial_sed8_g_y<-HgT_dsed8_ngm3/10^9*burial_sed8/10^2  *a8
HgT_burial_sed9_g_y<-HgT_dsed9_ngm3/10^9*burial_sed9/10^2  *a9
HgT_burial_sed10_g_y<-HgT_dsed10_ngm3/10^9*burial_sed10/10^2 *a10


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

str(depo_media1)

depo1_Phg_ug_m2_d<-depo_media1*Pmehgs_19$wn1        #m/day *ug/m3 = ug m2 d-1 
depo2_Phg_ug_m2_d<-depo_media2*Pmehgs_19$wn2        
depo3_Phg_ug_m2_d<-depo_media3*Pmehgs_19$wn3        # 
depo4_Phg_ug_m2_d<-depo_media4*Pmehgs_19$wn4         
depo5_Phg_ug_m2_d<-depo_media5*Pmehgs_19$wn5 
depo6_Phg_ug_m2_d<-depo_media6*Pmehgs_19$wc6  
depo7_Phg_ug_m2_d<-depo_media7*Pmehgs_19$wc7      
depo8_Phg_ug_m2_d<-depo_media8*Pmehgs_19$ws8 
depo9_Phg_ug_m2_d<-depo_media9*Pmehgs_19$ws9  
depo10_Phg_ug_m2_d<-depo_media10*Pmehgs_19$ws10    

depo1_hg_ug_m2_d  <-(SEDmehg_19$wn1*TOTs_19$wn1*depo_media1)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo2_hg_ug_m2_d  <-(SEDmehg_19$wn2*TOTs_19$wn2*depo_media2)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo3_hg_ug_m2_d  <-(SEDmehg_19$wn3*TOTs_19$wn3*depo_media3)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo4_hg_ug_m2_d  <-(SEDmehg_19$wn4*TOTs_19$wn4*depo_media4)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo5_hg_ug_m2_d  <-(SEDmehg_19$wn5*TOTs_19$wn5*depo_media5)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo6_hg_ug_m2_d  <-(SEDmehg_19$wc6*TOTs_19$wc6*depo_media6)/1000   #ng g * g/m3 * m d-1 -> 
depo7_hg_ug_m2_d  <-(SEDmehg_19$wc7*TOTs_19$wc7*depo_media7)/1000   #ng g * g/m3 * m d-1  
depo8_hg_ug_m2_d  <-(SEDmehg_19$ws8*TOTs_19$ws8*depo_media8)/1000   #ng g * g/m3 * m d-1
depo9_hg_ug_m2_d  <-(SEDmehg_19$ws9*TOTs_19$ws9*depo_media9)/1000   #ng g * g/m3 * m d-1 
depo10_hg_ug_m2_d <-(SEDmehg_19$ws10*TOTs_19$ws10*depo_media10)/1000   #ng g * g/m3 * m d-1 

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


res1_g_m2_d<-res_media1 * solids_sed1      #m/day * g/m3 --> gm2d
res2_g_m2_d<-res_media2 * solids_sed2      #m/day * g/m3
res3_g_m2_d<-res_media3 * solids_sed3      # 
res4_g_m2_d<-res_media4 * solids_sed4     
res5_g_m2_d<-res_media5 * solids_sed5      
res6_g_m2_d<-res_media6 * solids_sed6     
res7_g_m2_d<-res_media7 * solids_sed7     
res8_g_m2_d<-res_media8 * solids_sed8      #1/day * g/m3
res9_g_m2_d<-res_media9 * solids_sed9      #1/day * g/m3
res10_g_m2_d<-res_media10 * solids_sed10      #1/day * g/m3

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

res1_Phg_ug_m2_d<-res1_g_m2_d*SEDmehg_19$sn1/10^3   #g m-2 d * ng g-1   = ng m-2 d
res2_Phg_ug_m2_d<-res2_g_m2_d*SEDmehg_19$sn2/10^3 
res3_Phg_ug_m2_d<-res3_g_m2_d*SEDmehg_19$sn3/10^3   ## kg/y*ug/kg--> ug/y 
res4_Phg_ug_m2_d<-res4_g_m2_d*SEDmehg_19$sn4/10^3 
res5_Phg_ug_m2_d<-res5_g_m2_d*SEDmehg_19$sn5/10^3 
res6_Phg_ug_m2_d<-res6_g_m2_d*SEDmehg_19$sc6/10^3 
res7_Phg_ug_m2_d<-res7_g_m2_d*SEDmehg_19$sc7/10^3 
res8_Phg_ug_m2_d<-res8_g_m2_d*SEDmehg_19$ss8/10^3 
res9_Phg_ug_m2_d<-res9_g_m2_d*SEDmehg_19$ss9/10^3 
res10_Phg_ug_m2_d<-res10_g_m2_d*SEDmehg_19$ss10/10^3 


res1_hg_ug_m2_d<-res_media1*Pmehgs_19$sn1  #m d-1 * ug m-1   = ug m-2 d
res2_hg_ug_m2_d<-res_media2*Pmehgs_19$sn2    #m d-1 * ug m-1   = ug m-2 d
res3_hg_ug_m2_d<-res_media3*Pmehgs_19$sn3   #m d-1 * ug m-1   = ug m-2 d
res4_hg_ug_m2_d<-res_media4*Pmehgs_19$sn4  #m d-1 * ug m-1   = ug m-2 d
res5_hg_ug_m2_d<-res_media5*Pmehgs_19$sn5   #m d-1 * ug m-1   = ug m-2 d
res6_hg_ug_m2_d<-res_media6*Pmehgs_19$sc6   #m d-1 * ug m-1   = ug m-2 d
res7_hg_ug_m2_d<-res_media7*Pmehgs_19$sc7   #m d-1 * ug m-1   = ug m-2 d
res8_hg_ug_m2_d<-res_media8*Pmehgs_19$ss8   #m d-1 * ug m-1   = ug m-2 d
res9_hg_ug_m2_d<-res_media9*Pmehgs_19$ss9   #m d-1 * ug m-1   = ug m-2 d
res10_hg_ug_m2_d<-res_media10*Pmehgs_19$ss10  #m d-1 * ug m-1   = ug m-2 d

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


b1<-(depo1_Phg_ug_m2_d-res1_Phg_ug_m2_d)*a1/10^9
bb1<-(depo1_hg_ug_m2_d-res1_hg_ug_m2_d)*a1/10^9

b2<-(depo2_Phg_ug_m2_d-res2_Phg_ug_m2_d)*a2/10^9
bb2<-(depo2_hg_ug_m2_d-res2_hg_ug_m2_d)*a2/10^9

b3<-(depo3_Phg_ug_m2_d-res3_Phg_ug_m2_d)*a3/10^9
bb3<-(depo3_hg_ug_m2_d-res3_hg_ug_m2_d)*a3/10^9

b4<-(depo4_Phg_ug_m2_d-res4_Phg_ug_m2_d)*a4/10^9
bb4<-(depo4_hg_ug_m2_d-res4_hg_ug_m2_d)*a4/10^9

b5<-(depo1_Phg_ug_m2_d-res1_Phg_ug_m2_d)*a5/10^9
bb5<-(depo1_hg_ug_m2_d-res1_hg_ug_m2_d)*a5/10^9

b6<-(depo6_Phg_ug_m2_d-res6_Phg_ug_m2_d)*a6/10^9
bb6<-(depo6_hg_ug_m2_d-res6_hg_ug_m2_d)*a6/10^9

b7<-(depo6_Phg_ug_m2_d-res6_Phg_ug_m2_d)*a7/10^9
bb7<-(depo6_hg_ug_m2_d-res6_hg_ug_m2_d)*a7/10^9

b8<-(depo6_Phg_ug_m2_d-res6_Phg_ug_m2_d)*a8/10^9
bb8<-(depo6_hg_ug_m2_d-res6_hg_ug_m2_d)*a8/10^9

b9<-(depo6_Phg_ug_m2_d-res6_Phg_ug_m2_d)*a9/10^9
bb9<-(depo6_hg_ug_m2_d-res6_hg_ug_m2_d)*a9/10^9

b10<-(depo6_Phg_ug_m2_d-res6_Phg_ug_m2_d)*a10/10^9
bb10<-(depo6_hg_ug_m2_d-res6_hg_ug_m2_d)*a10/10^9


plot(bb7)
plot(b2)

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

b1b<- (depo1b_Phg_ug_d-res1b_Phg_ug_d)/10^6  # mg d-1
bb1c<-(depo1c_hg_ug_d-res1c_hg_ug_d)/10^6  

b2b<- (depo2b_Phg_ug_d-res2b_Phg_ug_d)/10^6  # mg d-1
bb2c<-(depo2c_hg_ug_d-res2c_hg_ug_d)/10^6  

b3b<- (depo3b_Phg_ug_d-res3b_Phg_ug_d)/10^6  # mg d-1
bb3c<-(depo3c_hg_ug_d-res3c_hg_ug_d)/10^6  

b4b<- (depo4b_Phg_ug_d-res4b_Phg_ug_d)/10^6  # mg d-1
bb4c<-(depo4c_hg_ug_d-res4c_hg_ug_d)/10^6  

b5b<- (depo5b_Phg_ug_d-res5b_Phg_ug_d)/10^6  # mg d-1
bb5c<-(depo5c_hg_ug_d-res5c_hg_ug_d)/10^6  

b6b<- (depo6b_Phg_ug_d-res6b_Phg_ug_d)/10^6  # mg d-1
bb6c<-(depo6c_hg_ug_d-res6c_hg_ug_d)/10^6  

b7b<- (depo7b_Phg_ug_d-res7b_Phg_ug_d)/10^6  # mg d-1
bb7c<-(depo7c_hg_ug_d-res7c_hg_ug_d)/10^6  

b8b<- (depo8b_Phg_ug_d-res8b_Phg_ug_d)/10^6  # mg d-1
bb8c<-(depo8c_hg_ug_d-res8c_hg_ug_d)/10^6  

b9b<- (depo9b_Phg_ug_d-res9b_Phg_ug_d)/10^6  # mg d-1
bb9c<-(depo9c_hg_ug_d-res9c_hg_ug_d)/10^6  

b10b<- (depo10b_Phg_ug_d-res10b_Phg_ug_d)/10^6  # g d-1
bb10c<-(depo10c_hg_ug_d-res10c_hg_ug_d)/10^6  

netto1<-(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10)*365
netto2<-(bb1+bb2+bb3+bb4+bb5+bb6+bb7+bb8+bb9+bb10)*365
netto3<-(b1b+b2b+b3b+b4b+b5b+b6b+b7b+b8b+b9b+b10b)*365/10^3
netto4<-(bb1c+bb2c+bb3c+bb4c+bb5c+bb6c+bb7c+bb8c+bb9c+bb10c)*365/10^3

str(netto1)

plot(netto1, type='l')
plot(netto2, type='l')

time.steps <- TOTs[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate

TOT_buried_mehg_kgy<-(HgT_burial_sed1_g_y+HgT_burial_sed2_g_y+HgT_burial_sed3_g_y+
                   HgT_burial_sed4_g_y+HgT_burial_sed5_g_y+
                   HgT_burial_sed6_g_y+HgT_burial_sed7_g_y+
                   HgT_burial_sed8_g_y+HgT_burial_sed9_g_y+HgT_burial_sed10_g_y)/1000


#diff_mehg_kgy<-diffusion1_kg_y+diffusion2_kg_y+diffusion3_kg_y+diffusion4_kg_y+diffusion5_kg_y+
 # diffusion6_kg_y+diffusion7_kg_y+diffusion8_kg_y+diffusion9_kg_y+diffusion10_kg_y

NET_deposited_mehg<-(HgT_netdepo_sed1_g_y+HgT_netdepo_sed2_g_y+HgT_netdepo_sed3_g_y+
                  HgT_netdepo_sed4_g_y+HgT_netdepo_sed5_g_y+
                  HgT_netdepo_sed6_g_y+HgT_netdepo_sed7_g_y+
                  HgT_netdepo_sed8_g_y+HgT_netdepo_sed9_g_y+HgT_netdepo_sed10_g_y)/1000

plot(depo1_Phg_kg_y-res1_Phg_kg_y,type='l',col='blue')
par(new=T)
plot(Hg_netdepo1_kgy, type='l',col='red', ylim=c(0,100))

drydensnord<-1270

tail(HgT_netdepo_sed4_g_y)

netdepo1_kgy<-netdepo_sed1/10^2*a1*drydensnord

Hg_netdepo1_kgy<-netdepo1_kgy*SEDmehg$wn1/10^9

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

Hg_res_tot<-rowMeans(Hg_res)
Hg_depo_tot<-rowMeans(Hg_depo)

Hg_res_totB<-rowMeans(Hg_resB)*365/10^9
Hg_depo_totB<-rowMeans(Hg_depoB)*365/10^9

Hg_res_totC<-rowMeans(Hg_resC)*365/10^9
Hg_depo_totC<-rowMeans(Hg_depoC)*365/10^9


mhg_perc<-SEDmehg[,2:22]/SEDhg[,2:22]*100

Hg_res_tot<-rowMeans(Hg_res)
Hg_depo_tot<-rowMeans(Hg_depo)

sed_bal<-data.frame(NET_deposited_mehg, TOT_buried_mehg_kgy, Hg_res_tot,Hg_depo_tot, 
                    Hg_res_totB,Hg_depo_totB, Hg_res_totC,Hg_depo_totC, 
                    netto1,netto2,netto3,netto4)

write.table(sed_bal,'sed_bal_mehg_19.txt')
#write.table(Hg_depo,'Hg_depo_mehg.txt')
#write.table(Hg_res,'Hg_res_mehg.txt')
#write.table(mhg_perc,'mhg_perc_mehg.txt')

str(NET_deposited_mehg)
str(TOT_buried_mehg_kgy)
str(Hg_res_tot)


plot(Hg_depo_tot,col='blue' ,type='l', ylim=c(0,40000))
par(new=T)
plot(Hg_res_tot,col='red', type='l',ylim=c(0,40000))

NEt_Net<-Hg_depo_tot-Hg_res_tot

plot(NEt_Net,col='hotpink',type='l',  ylim=c(0,8))


