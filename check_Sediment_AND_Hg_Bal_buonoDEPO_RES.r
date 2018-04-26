# total output from run 1900-2100 ---> 1:2427
# runs 63d/63e 
# 1997        [1167:1178]
# 2010        [1323:1334]
# 2050        [1804:1815]
# 2001 - 2003 [1215:1250]

setwd('C:/Users/Ginevra/Dropbox/2017_Venice/114/Buona/buona')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

hgD<-read.csv('Dissolved_Divalent_Hg.csv', skip=1)
names(hgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

hgDOC<-read.csv('DOC_Sorbed_Divalent_Hg.csv', skip=1)
names(hgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
			 
SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')   #ng/g
			 
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
	
#aree e profonditÃ boxes	
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07;a4<-8.90E+06; a5<-2.22E+07; 
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

area<-cbind(0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)

d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; 
d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71		
	
#  solids in sediments
  solids_sed1  <-TOTs$sn1;   solids_dsed1  <-TOTs$dsn1;    
  solids_sed2  <-TOTs$sn2;   solids_dsed2  <-TOTs$dsn2;    
  solids_sed3  <-TOTs$sn3;   solids_dsed3  <-TOTs$dsn3; 
  solids_sed4  <-TOTs$sn4;   solids_dsed4  <-TOTs$dsn4;   
  solids_sed5  <-TOTs$sn5;   solids_dsed5  <-TOTs$dsn5;  
  solids_sed6  <-TOTs$sc6;   solids_dsed6  <-TOTs$dsc6;       
  solids_sed7  <-TOTs$sc7;   solids_dsed7  <-TOTs$dsc7;     
  solids_sed8  <-TOTs$ss8;   solids_dsed8  <-TOTs$dss8;   
  solids_sed9  <-TOTs$ss9;   solids_dsed9  <-TOTs$dss9;    
  solids_sed10  <-TOTs$ss10; solids_dsed10  <-TOTs$dss10;     
  
  fPOM<-POMs/TOTs; fsilt<-silts/TOTs
  
  kd_POM<-10^6
  kd_silt<-10^5
  
  POMs_kgL<-POMs[2:2428,]/10^6   #mgL/10^6 -> kgL
  silts_kgL<-silts[2:2428,]/10^6 
  hgCl_gm3<-hgD[2:2428,]/10^6   #ngL/10^6 ->mgL 
  
  hgPOM_gm3<-hgCl_gm3*POMs_kgL*kd_POM   #2427 
  hgsilt_gm3<-hgCl_gm3*silts_kgL*kd_silt
  
  hgPOM_ngL<-  hgPOM_gm3*10^6
  hgsilt_ngL<-  hgsilt_gm3*10^6
  
  str(hgsilt_ngL)
  str(hgPOM_ngL$wn1)
str(Phgs)

hgPOM_ngL$wn1[2:10]+hgsilt_ngL$wn1[2:10]
Phgs$wn1[2:10]

Box1_Hg_g_m3_d<-(hgPOM_gm3$wn1*POM_depo1_1_day[2:2428])+(hgsilt_gm3$wn1*silt_depo1_1_day[2:2428])

Box1_Hg_g_d<-Box1_Hg_g_m3_d*a1*d1  #g/d

plot(Box1_Hg_g_m3_d)
Box1_Hg_kg_y<-Box1_Hg_g_d/1000*365

head(Box1_Hg_kg_y)
plot(Box1_Hg_kg_y)

# net depo and Burial 
burial1_sed1 <-burial$sn1;    burial_deepsed1 <-burial$dsn1  #cm/y
burial1_sed2 <-burial$sn2;    burial_deepsed2 <-burial$dsn2  #cm/y
burial1_sed3 <-burial$sn3;    burial_deepsed3 <-burial$dsn3  #cm/y
burial1_sed4 <-burial$sn4;    burial_deepsed4 <-burial$dsn4  #cm/y
burial1_sed5 <-burial$sn5;    burial_deepsed5 <-burial$dsn5  #cm/y
burial1_sed6 <-burial$sc6;    burial_deepsed6 <-burial$dsc6  #cm/y
burial1_sed7 <-burial$sc7;    burial_deepsed7 <-burial$dsc7 #cm/y
burial1_sed8 <-burial$ss8;    burial_deepsed8 <-burial$dss8  #cm/y
burial1_sed9 <-burial$ss9;    burial_deepsed9 <-burial$dss9  #cm/y
burial1_sed10 <-burial$ss10;  burial_deepsed10 <-burial$dss10  #cm/y
  
burial1_cmy<-data.frame(burial1_sed1,burial1_sed2,burial1_sed3,burial1_sed4,burial1_sed5,
						burial1_sed6, burial1_sed7,burial1_sed8,burial1_sed9, burial1_sed10)  
						 
Burial_deep_cmy<-data.frame(burial_deepsed1,burial_deepsed2,burial_deepsed3,burial_deepsed4, burial_deepsed5,
						burial_deepsed6, burial_deepsed7,burial_deepsed8,burial_deepsed9, burial_deepsed10)  
 

summary(Burial_deep_cmy)
str(burial1_cmy)
			
POM_depo1_1_day<-POM_depos$wn1/d1   #depo m/day * depth(m) --> 1/day (0.003 /d)
silt_depo1_1_day<-silt_depos$wn1/d1 # depo silt m/day  (0.014 /d) 
POM_depo2_1_day<-POM_depos$wn2/d2  
silt_depo2_1_day<-silt_depos$wn2/d2  # 
POM_depo3_1_day<-POM_depos$wn3/d3  #depo m/day * depth(m) --> 1/day (0.003 /d)
silt_depo3_1_day<-silt_depos$wn3/d3 # depo silt m/day  (0.014 /d) 
POM_depo4_1_day<-POM_depos$wn4/d4  
silt_depo4_1_day<-silt_depos$wn4/d4
POM_depo5_1_day<-POM_depos$wn5/d5
silt_depo5_1_day<-silt_depos$wn5/d5
POM_depo6_1_day<-POM_depos$wc6/d6
silt_depo6_1_day<-silt_depos$wc6/d6
POM_depo7_1_day<-POM_depos$wc7/d7
silt_depo7_1_day<-silt_depos$wc7/d7
POM_depo8_1_day<-POM_depos$ws8/d8
silt_depo8_1_day<-silt_depos$ws8/d8
 POM_depo9_1_day<-POM_depos$ws9/d9
silt_depo9_1_day<-silt_depos$ws9/d9
POM_depo10_1_day<-POM_depos$ws10/d10
silt_depo10_1_day<-silt_depos$ws10/d10

depo_media1<- (POM_depo1_1_day *fPOM$wn1) + (silt_depo1_1_day*fsilt$wn1) #1/day
depo_media2<- (POM_depo2_1_day *fPOM$wn2) + (silt_depo2_1_day*fsilt$wn2) #1/day
depo_media3<- (POM_depo3_1_day *fPOM$wn3) + (silt_depo3_1_day*fsilt$wn3) #1/day
depo_media4<- (POM_depo4_1_day *fPOM$wn4) + (silt_depo4_1_day*fsilt$wn4) #1/day
depo_media5<- (POM_depo5_1_day *fPOM$wn5) + (silt_depo5_1_day*fsilt$wn5) #1/day
depo_media6<- (POM_depo6_1_day *fPOM$wc6) + (silt_depo6_1_day*fsilt$wc6) #1/day
depo_media7<- (POM_depo7_1_day *fPOM$wc7) + (silt_depo7_1_day*fsilt$wc7) #1/day
depo_media8<- (POM_depo8_1_day *fPOM$ws8) + (silt_depo8_1_day*fsilt$ws8) #1/day
depo_media9<- (POM_depo9_1_day *fPOM$ws9) + (silt_depo9_1_day*fsilt$ws9) #1/day
depo_media10<-(POM_depo10_1_day*fPOM$ws10)+ (silt_depo10_1_day*fsilt$ws10) #1/day

#####SOLO SOLIDI 
vd<-10 #m/d

depo_ugm2_d<-vd*Phgs   # m/d* ug m3  -> ugm3d
depo_ug_y<-depo_ugm2_d*area*365
depo_kg_y<-depo_ug_y/10^9

depo_kg_y_Hg1<-depo_ugm2_d$wn1*a1*365/10^9
depo_kg_y_Hg2<-depo_ugm2_d$wn2*a2*365/10^9
depo_kg_y_Hg3<-depo_ugm2_d$wn3*a3*365/10^9
depo_kg_y_Hg4<-depo_ugm2_d$wn4*a4*365/10^9
depo_kg_y_Hg5<-depo_ugm2_d$wn5*a5*365/10^9
depo_kg_y_Hg6<-depo_ugm2_d$wc6*a6*365/10^9
depo_kg_y_Hg7<-depo_ugm2_d$wc7*a7*365/10^9
depo_kg_y_Hg8<-depo_ugm2_d$ws8*a8*365/10^9
depo_kg_y_Hg9<-depo_ugm2_d$ws9*a9*365/10^9
depo_kg_y_Hg10<-depo_ugm2_d$ws10*a10*365/10^9


head(depo_kg_y_Hg1)


depo1_g_m3_d<-depo_media1 * TOTs$wn1        #1/day * g/m3
depo1_g_y <-(depo1_g_m3_d*a1*d1)*365
depo1_kg_y <-depo1_g_y/1000
depo1_Phg_ug_y<-depo1_kg_y* SEDhg$wn1 
depo1_Phg_kg_y<-depo1_Phg_ug_y/10^9

head(depo1_Phg_kg_y)

kg_Phg_b1<-(Phgs$wn1*a1*d1/10^9)             ### or ug 
depo1b_Phg_kg_y<-kg_Phg_b1*(depo_media1*365)

kg_Phg_b2<-(Phgs$wn2*a2*d2/10^9)             ### or ug 
depo2b_Phg_kg_y<-kg_Phg_b2*(depo_media2*365)

kg_Phg_b3<-(Phgs$wn3*a3*d3/10^9)             ### or ug 
depo3b_Phg_kg_y<-kg_Phg_b3*(depo_media3*365)

kg_Phg_b4<-(Phgs$wn4*a4*d4/10^9)             ### or ug 
depo4b_Phg_kg_y<-kg_Phg_b4*(depo_media4*365)

kg_Phg_b5<-(Phgs$wn5*a5*d5/10^9)             ### or ug 
depo5b_Phg_kg_y<-kg_Phg_b5*(depo_media5*365)

kg_Phg_b6<-(Phgs$wc6*a6*d6/10^9)             ### or ug 
depo6b_Phg_kg_y<-kg_Phg_b6*(depo_media6*365)

kg_Phg_b7<-(Phgs$wc7*a7*d7/10^9)             ### or ug 
depo7b_Phg_kg_y<-kg_Phg_b7*(depo_media7*365)

kg_Phg_b8<-(Phgs$ws8*a8*d8/10^9)             ### or ug 
depo8b_Phg_kg_y<-kg_Phg_b8*(depo_media8*365)

kg_Phg_b9<-(Phgs$ws9*a9*d9/10^9)             ### or ug 
depo9b_Phg_kg_y<-kg_Phg_b9*(depo_media9*365)

kg_Phg_b10<-(Phgs$ws10*a10*d10/10^9)             ### or ug 
depo10b_Phg_kg_y<-kg_Phg_b10*(depo_media10*365)


Phg_TOT_pool_kg<-(kg_Phg_b1+kg_Phg_b2+kg_Phg_b3+kg_Phg_b4+kg_Phg_b5+
                   kg_Phg_b6+kg_Phg_b7+kg_Phg_b8+kg_Phg_b9+kg_Phg_b10)

kg_Phg_depoTOT<-(depo1b_Phg_kg_y+depo2b_Phg_kg_y+depo3b_Phg_kg_y+depo4b_Phg_kg_y+depo5b_Phg_kg_y+
                   depo6b_Phg_kg_y+depo7b_Phg_kg_y+depo8b_Phg_kg_y+depo9b_Phg_kg_y+depo10b_Phg_kg_y)

Hg_depo1_g_m3_d<-depo_media1 * SEDhg$wn1 * TOTs$wn1    #ng m3 d
Hg_depo1_ng_y<- (Hg_depo1_g_m3_d*a1*d1)*365   #ng y
Hg_depo1_kg_y <-Hg_depo1_ng_y/10^12

depo2_g_m3_d<-depo_media2 * TOTs$wn2       #1/day * g/m3
depo2_g_y <-(depo2_g_m3_d*a2*d2)*365
depo2_kg_y <-depo2_kg_y/1000
depo2_Phg_ug_y<-depo2_kg_y* SEDhg$wn2 
depo2_Phg_kg_y<-depo2_Phg_ug_y/10^9

str(Phgs$wn2); str(SEDhg$wn2/1000)

SEDhg$wn2/1000*TOTs$wn2

Hg_depo2_g_m3_d<-depo_media2 * SEDhg$wn2 * TOTs$wn2    #ng m3 d
Hg_depo2_ng_y<- (Hg_depo2_g_m3_d*a2*d2)*365   #ng y
Hg_depo2_kg_y <-Hg_depo2_ng_y/10^12

depo3_g_m3_d<-depo_media3 * TOTs$wn3       #1/day * g/m3
depo3_g_y <-(depo3_g_m3_d*a3*d3)*365
depo3_kg_y <-depo3_g_y/1000
depo3_Phg_ug_y<-depo3_kg_y* SEDhg$wn3 
depo3_Phg_kg_y<-depo3_Phg_ug_y/10^9

Hg_depo3_g_m3_d<-depo_media3 * SEDhg$wn3* TOTs$wn3    #ng m3 d
Hg_depo3_ng_y<- (Hg_depo3_g_m3_d*a3*d3)*365   #ng y
Hg_depo3_kg_y <-Hg_depo3_ng_y/10^12

depo4_g_m3_d<-depo_media4 * TOTs$wn4       #1/day * g/m3
depo4_g_y <-(depo4_g_m3_d*a4*d4)*365
depo4_kg_y <-depo4_g_y/1000
depo4_Phg_ug_y<-depo4_kg_y* SEDhg$wn4 
depo4_Phg_kg_y<-depo4_Phg_ug_y/10^9

Hg_depo4_g_m3_d<-depo_media4 * SEDhg$wn4* TOTs$wn4    #ng m3 d
Hg_depo4_ng_y<- (Hg_depo4_g_m3_d*a4*d4)*365   #ng y
Hg_depo4_kg_y <-Hg_depo4_ng_y/10^12

depo5_g_m3_d<-depo_media5 * TOTs$wn5       #1/day * g/m3
depo5_g_y <-(depo5_g_m3_d*a5*d5)*365
depo5_kg_y <-depo5_g_y/1000
depo5_Phg_kg_y<-depo5_kg_y*SEDhg$wn5/10^9   #kg/y * ug/kg -> ug/y

Hg_depo5_g_m3_d<-depo_media5 * SEDhg$wn5* TOTs$wn5    #ng m3 d
Hg_depo5_ng_y<- (Hg_depo5_g_m3_d*a5*d5)*365   #ng y
Hg_depo5_kg_y <-Hg_depo5_ng_y/10^12

depo6_g_m3_d<-depo_media6 * TOTs$wc6       #1/day * g/m3
depo6_g_y <-(depo6_g_m3_d*a6*d6)*365
depo6_kg_y <-depo6_g_y/1000
depo6_Phg_kg_y<-depo6_kg_y*SEDhg$wc6/10^9   #kg/y * ug/kg -> ug/y

Hg_depo6_g_m3_d<-depo_media6 * SEDhg$wc6* TOTs$wc6    #ng m3 d
Hg_depo6_ng_y<- (Hg_depo6_g_m3_d*a6*d6)*365   #ng y
Hg_depo6_kg_y <-Hg_depo6_ng_y/10^12

depo7_g_m3_d<-depo_media7 * TOTs$wc7       #1/day * g/m3
depo7_g_y <-(depo7_g_m3_d*a7*d7)*365
depo7_kg_y <-depo7_g_y/1000

Hg_depo7_g_m3_d<-depo_media7 * SEDhg$wc7* TOTs$wc7    #ng m3 d
Hg_depo7_ng_y<- (Hg_depo7_g_m3_d*a7*d7)*365   #ng y
Hg_depo7_kg_y <-Hg_depo7_ng_y/10^12

depo8_g_m3_d<-depo_media8 * TOTs$ws8       #1/day * g/m3
depo8_g_y <-(depo8_g_m3_d*a8*d8)*365
depo8_kg_y <-depo8_g_y/1000
depo8_Phg_kg_y<-depo8_kg_y*SEDhg$ws8/10^9   #kg/y * ug/kg -> ug/y

Hg_depo8_g_m3_d<-depo_media8 * SEDhg$ws8* TOTs$ws8    #ng m3 d
Hg_depo8_ng_y<- (Hg_depo8_g_m3_d*a8*d8)*365   #ng y
Hg_depo8_kg_y <-Hg_depo8_ng_y/10^12

depo9_g_m3_d<-depo_media9 * TOTs$ws9       #1/day * g/m3
depo9_g_y <-(depo9_g_m3_d*a9*d9)*365
depo9_kg_y <-depo9_g_y/1000
depo9_Phg_kg_y<-depo9_kg_y*SEDhg$ws9/10^9   #kg/y * ug/kg -> ug/y

Hg_depo9_g_m3_d<-depo_media9 * SEDhg$ws9* TOTs$ws9    #ng m3 d
Hg_depo9_ng_y<- (Hg_depo9_g_m3_d*a6*d9)*365   #ng y
Hg_depo9_kg_y <-Hg_depo9_ng_y/10^12

depo10_g_m3_d<-depo_media10 * TOTs$ws10       #1/day * g/m3
depo10_g_y <-(depo10_g_m3_d*a10*d10)*365
depo10_kg_y <-depo10_g_y/1000
depo10_Phg_kg_y<-depo10_kg_y*SEDhg$ws10/10^9   #kg/y * ug/kg -> ug/y

Hg_depo10_g_m3_d<-depo_media10 * SEDhg$ws10* TOTs$ws10    #ng m3 d
Hg_depo10_ng_y<- (Hg_depo10_g_m3_d*a10*d10)*365   #ng y
Hg_depo10_kg_y <-Hg_depo10_ng_y/10^12

#____________RISOSPENSIONE___________________
res_media1<- POM_res$sn1 #m/day
res_media2<- POM_res$sn2   #m/day
res_media3<- POM_res$sn3 #m/day
res_media4<- POM_res$sn4  #m/day
res_media5<- POM_res$sn5    
res_media6<- POM_res$sc6  
res_media7<- POM_res$sc7  
res_media8<- POM_res$ss8 # 
res_media9<- POM_res$ss9 # 
res_media10<-POM_res$ss10 # 

res1_g_m2_d<-res_media1 * solids_sed1      #m/day * g/m3 --> gm2d
res1_g_y <-(res1_g_m2_d*a1)*365
res1_kg_y <-res1_g_y/1000
res1_Phg_kg_y<-res1_kg_y*SEDhg$sn1/10^9    # kg/y * ug/kg ->ug/y

Hg_res1_g_m2_d<-res_media1 * SEDhg$sn1 * solids_sed1  #ng m2 d
Hg_res1_ng_y<- (Hg_res1_g_m2_d*a1)*365   #ng y
Hg_res1_kg_y <-Hg_res1_ng_y/10^12

plot(Hg_res1_kg_y, col='red')
par(new=T)
plot(Hg_depo1_kg_y, col='blue')
head(Hg_res1_kg_y)

res2_g_m2_d<-res_media2 * solids_sed2      #1/day * g/m3
res2_g_y <-(res2_g_m2_d*a2)*365
res2_kg_y <-res2_g_y/1000
res2_Phg_kg_y<-res2_kg_y*SEDhg$sn2/10^9  

Hg_res2_g_m2_d<-res_media2 * SEDhg$sn2 * solids_sed2  #ng m2 d
Hg_res2_ng_y<- (Hg_res2_g_m2_d*a2)*365   #ng y
Hg_res2_kg_y <-Hg_res2_ng_y/10^12

res3_g_m2_d<-res_media3 * solids_sed3      #1/day * g/m3
res3_g_y <-(res3_g_m2_d*a3)*365
res3_kg_y <-res3_g_y/1000
res3_Phg_kg_y<-res3_kg_y*SEDhg$sn3/10^9   ## kg/y*ug/kg--> ug/y 

Hg_res3_g_m2_d<-res_media3 * SEDhg$sn3 * solids_sed3  #ng m2 d
Hg_res3_ng_y<- (Hg_res3_g_m2_d*a3)*365   #ng y
Hg_res3_kg_y <-Hg_res3_ng_y/10^12

res4_g_m2_d<-res_media4 * solids_sed4     #1/day * g/m3
res4_g_y <-(res4_g_m2_d*a4)*365
res4_kg_y <-res4_g_y/1000
res4_Phg_kg_y<-res4_kg_y*SEDhg$sn4/10^9 

Hg_res4_g_m2_d<-res_media4 * SEDhg$sn4 * solids_sed4  #ng m2 d
Hg_res4_ng_y<- (Hg_res4_g_m2_d*a4)*365   #ng y
Hg_res4_kg_y <-Hg_res4_ng_y/10^12

res5_g_m2_d<-res_media5 * solids_sed5      #1/day * g/m3
res5_g_y <-(res5_g_m2_d*a5)*365
res5_kg_y <-res5_g_y/1000
res5_Phg_kg_y<-res5_kg_y*SEDhg$sn5/10^9 

Hg_res5_g_m2_d<-res_media5 * SEDhg$sn5 * solids_sed5  #ng m2 d
Hg_res5_ng_y<- (Hg_res5_g_m2_d*a5)*365   #ng y
Hg_res5_kg_y <-Hg_res5_ng_y/10^12

res6_g_m2_d<-res_media6 * solids_sed6     #1/day * g/m3
res6_g_y <-(res6_g_m2_d*a6)*365
res6_kg_y <-res6_g_y/1000
res6_Phg_kg_y<-res6_kg_y*SEDhg$sc6/10^9 

Hg_res6_g_m2_d<-res_media6 * SEDhg$sc6 * solids_sed6  #ng m2 d
Hg_res6_ng_y<- (Hg_res6_g_m2_d*a6)*365   #ng y
Hg_res6_kg_y <-Hg_res6_ng_y/10^12

res7_g_m2_d<-res_media7 * solids_sed7      #1/day * g/m3
res7_g_y <-(res7_g_m2_d*a7)*365
res7_kg_y <-res7_g_y/1000
res7_Phg_kg_y<-res7_kg_y*SEDhg$sc7/10^9 

Hg_res7_g_m2_d<-res_media7 * SEDhg$sc7 * solids_sed7  #ng m2 d
Hg_res7_ng_y<- (Hg_res7_g_m2_d*a7)*365   #ng y
Hg_res7_kg_y <-Hg_res7_ng_y/10^12

res8_g_m2_d<-res_media8 * solids_sed8      #1/day * g/m3
res8_g_y <-(res8_g_m2_d*a8)*365
res8_kg_y <-res8_g_y/1000
res8_Phg_kg_y<-res8_kg_y*SEDhg$ss8/10^9 

Hg_res8_g_m2_d<-res_media8 * SEDhg$ss8 * solids_sed8  #ng m2 d
Hg_res8_ng_y<- (Hg_res8_g_m2_d*a8)*365   #ng y
Hg_res8_kg_y <-Hg_res8_ng_y/10^12

res9_g_m2_d<-res_media9 * solids_sed9      #1/day * g/m3
res9_g_y <-(res9_g_m2_d*a9)*365
res9_kg_y <-res9_g_y/1000
res9_Phg_kg_y<-res9_kg_y*SEDhg$ss9/10^9 

Hg_res9_g_m2_d<-res_media9 * SEDhg$ss9 * solids_sed9  #ng m2 d
Hg_res9_ng_y<- (Hg_res9_g_m2_d*a9)*365   #ng y
Hg_res9_kg_y <-Hg_res9_ng_y/10^12

res10_g_m2_d<-res_media10 * solids_sed10      #1/day * g/m3
res10_g_y <-(res10_g_m2_d*a10)*365
res10_kg_y <-res10_g_y/1000
res10_Phg_kg_y<-res10_kg_y*SEDhg$ss10/10^9

Hg_res10_g_m2_d<-res_media10 * SEDhg$ss10 * solids_sed10  #ng m2 d
Hg_res10_ng_y<- (Hg_res10_g_m2_d*a10)*365   #ng y
Hg_res10_kg_y <-Hg_res10_ng_y/10^12

Hg_depo_tot<-(depo1_Phg_kg_y+depo2_Phg_kg_y+depo3_Phg_kg_y+depo4_Phg_kg_y+depo5_Phg_kg_y+
                 depo6_Phg_kg_y+depo7_Phg_kg_y+depo8_Phg_kg_y+depo9_Phg_kg_y+depo10_Phg_kg_y)
              	  
Hg_depo_tot2<-(Hg_depo1_kg_y +Hg_depo2_kg_y+Hg_depo3_kg_y+Hg_depo4_kg_y+Hg_depo5_kg_y+
			  Hg_depo6_kg_y+Hg_depo7_kg_y+Hg_depo8_kg_y+Hg_depo9_kg_y+Hg_depo10_kg_y)
			  
head(depo1_Phg_kg_y)
head(depo2_Phg_kg_y)
head(depo3_Phg_kg_y)

Hg_res_tot<-(res1_Phg_kg_y+res2_Phg_kg_y+res3_Phg_kg_y+res4_Phg_kg_y+res5_Phg_kg_y+
                 res6_Phg_kg_y+res7_Phg_kg_y+res8_Phg_kg_y+res9_Phg_kg_y+res10_Phg_kg_y)

Hg_res_tot2<-(Hg_res1_kg_y+Hg_res2_kg_y+Hg_res3_kg_y+Hg_res4_kg_y+Hg_res5_kg_y+
               Hg_res6_kg_y+Hg_res7_kg_y+Hg_res8_kg_y+Hg_res9_kg_y+Hg_res10_kg_y)

sed_bal<-data.frame(Hg_res_tot,Hg_res_tot2, kg_Phg_depoTOT, Hg_depo_tot,Hg_depo_tot2)

s_bal<-data.frame(Hg_res_tot,kg_Phg_depoTOT, burial1_cmy)
write.table(s_bal,'sed_bal2.txt')

head(Hg_res4_kg_y)


tail(kg_Phg_depoTOT)

png('depores_iniz_kgy.png')
par(mfrow=c(2,1))
plot(Hg_res_tot[2:600], type='l',lty=2, main='Res')
plot(kg_Phg_depoTOT[2:600], type='l',lty=2,  main='Depo')
dev.off()

png('depores_fine_kgy.png')
par(mfrow=c(2,1))
plot(Hg_res_tot[600:2000], type='l',lty=2, main='Res')
plot(kg_Phg_depoTOT[600:2000], type='l',lty=2, main='Depo')
dev.off()