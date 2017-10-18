# total output from run 1900-2100 ---> 1:2427
# runs 63d/63e 
# 1997        [1167:1178]
# 2010        [1323:1334]
# 2050        [1804:1815]
# 2001 - 2003 [1215:1250]

setwd('C:/Users/Ginevra/Dropbox/2017_Venice/111')
hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
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
	
  fPOM  <-POMs/TOTs
  fsilt <-silts/TOTs  
  
#aree e profondit√ boxes	
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07;a4<-8.90E+06; a5<-2.22E+07; 
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71		
	
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
  
# net depo and Burial 
netdepo_sed1 <-burial$sn1;    burial_sed1 <-burial$dsn1  #cm/y
netdepo_sed2 <-burial$sn2;    burial_sed2 <-burial$dsn2  #cm/y
netdepo_sed3 <-burial$sn3;    burial_sed3 <-burial$dsn3  #cm/y
netdepo_sed4 <-burial$sn4;    burial_sed4 <-burial$dsn4  #cm/y
netdepo_sed5 <-burial$sn5;    burial_sed5 <-burial$dsn5  #cm/y
netdepo_sed6 <-burial$sc6;    burial_sed6 <-burial$dsc6  #cm/y
netdepo_sed7 <-burial$sc7;    burial_sed7 <-burial$dsc7 #cm/y
netdepo_sed8 <-burial$ss8;    burial_sed8 <-burial$dss8  #cm/y
netdepo_sed9 <-burial$ss9;    burial_sed9 <-burial$dss9  #cm/y
netdepo_sed10 <-burial$ss10;  burial_sed10 <-burial$dss10  #cm/y
  
NET_DEPO_cmy<-data.frame(netdepo_sed1,netdepo_sed2,netdepo_sed3,netdepo_sed4,netdepo_sed5,
						netdepo_sed6, netdepo_sed7,netdepo_sed8,netdepo_sed9, netdepo_sed10)  
						 
BURIAL_cmy<-data.frame(burial_sed1,burial_sed2,burial_sed3,burial_sed4, burial_sed5,
						burial_sed6, burial_sed7,burial_sed8,burial_sed9, burial_sed10)  
 
tail(BURIAL_cmy)

summary(BURIAL_cmy)
str(NET_DEPO_cmy)
			
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
depo1_g_m3_d<-depo_media1 * TOTs$wn1        #1/day * g/m3
depo1_g_y <-(depo1_g_m3_d*a1*d1)*365
depo1_kg_y <-depo1_g_y/1000

depo2_g_m3_d<-depo_media2 * TOTs$wn2       #1/day * g/m3
depo2_g_y <-(depo2_g_m3_d*a2*d2)*365
depo2_kg_y <-depo2_g_y/1000

depo3_g_m3_d<-depo_media3 * TOTs$wn3       #1/day * g/m3
depo3_g_y <-(depo3_g_m3_d*a3*d3)*365
depo3_kg_y <-depo3_g_y/1000

depo4_g_m3_d<-depo_media4 * TOTs$wn4       #1/day * g/m3
depo4_g_y <-(depo4_g_m3_d*a4*d4)*365
depo4_kg_y <-depo4_g_y/1000

depo5_g_m3_d<-depo_media5 * TOTs$wn5       #1/day * g/m3
depo5_g_y <-(depo5_g_m3_d*a5*d5)*365
depo5_kg_y <-depo5_g_y/1000

depo6_g_m3_d<-depo_media6 * TOTs$wc6       #1/day * g/m3
depo6_g_y <-(depo6_g_m3_d*a6*d6)*365
depo6_kg_y <-depo6_g_y/1000

depo7_g_m3_d<-depo_media7 * TOTs$wc7       #1/day * g/m3
depo7_g_y <-(depo7_g_m3_d*a7*d7)*365
depo7_kg_y <-depo7_g_y/1000

depo8_g_m3_d<-depo_media8 * TOTs$ws8       #1/day * g/m3
depo8_g_y <-(depo8_g_m3_d*a8*d8)*365
depo8_kg_y <-depo8_g_y/1000

depo9_g_m3_d<-depo_media9 * TOTs$ws9       #1/day * g/m3
depo9_g_y <-(depo9_g_m3_d*a9*d9)*365
depo9_kg_y <-depo9_g_y/1000

depo10_g_m3_d<-depo_media10 * TOTs$ws10       #1/day * g/m3
depo10_g_y <-(depo10_g_m3_d*a10*d10)*365
depo10_kg_y <-depo10_g_y/1000

POM_res1_m_day<-POM_res$sn1      #
silt_res1_m_day<-silt_res$sn1 #...√†... 
POM_res2_m_day<-POM_res$sn2  
silt_res2_m_day<-silt_res$sn2 # 
POM_res3_m_day<-POM_res$sn3  #res m/day * depth(m) --> 1/day (0.003 /d)
silt_res3_m_day<-silt_res$sn3# res silt m/day  (0.014 /d) 
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

res_media1<- (POM_res1_m_day *fPOM$wn1) + (silt_res1_m_day*fsilt$wn1) #1/day
res_media2<- (POM_res2_m_day *fPOM$wn2) + (silt_res2_m_day*fsilt$wn2) #1/day
res_media3<- (POM_res3_m_day *fPOM$wn3) + (silt_res3_m_day*fsilt$wn3) #1/day
res_media4<- (POM_res4_m_day *fPOM$wn4) + (silt_res4_m_day*fsilt$wn4) #1/day
res_media5<- (POM_res5_m_day *fPOM$wn5) + (silt_res5_m_day*fsilt$wn5) #1/day
res_media6<- (POM_res6_m_day *fPOM$wc6) + (silt_res6_m_day*fsilt$wc6) #1/day
res_media7<- (POM_res7_m_day *fPOM$wc7) + (silt_res7_m_day*fsilt$wc7) #1/day
res_media8<- (POM_res8_m_day *fPOM$ws8) + (silt_res8_m_day*fsilt$ws8) #1/day
res_media9<- (POM_res9_m_day *fPOM$ws9) + (silt_res9_m_day*fsilt$ws9) #1/day
res_media10<-(POM_res10_m_day*fPOM$ws10)+ (silt_res10_m_day*fsilt$ws10) #1/day

###RISOSPENSIONE kg y
res1_g_m2_d<-res_media1 * solids_sed1      #m/day * g/m3 --> gm2d
res1_g_y <-(res1_g_m2_d*a1)*365
res1_kg_y <-res1_g_y/1000

res2_g_m2_d<-res_media2 * solids_sed2      #1/day * g/m3
res2_g_y <-(res2_g_m2_d*a2)*365
res2_kg_y <-res2_g_y/1000

res3_g_m2_d<-res_media3 * solids_sed3      #1/day * g/m3
res3_g_y <-(res3_g_m2_d*a3)*365
res3_kg_y <-res3_g_y/1000

res4_g_m2_d<-res_media4 * solids_sed4     #1/day * g/m3
res4_g_y <-(res4_g_m2_d*a4)*365
res4_kg_y <-res4_g_y/1000

res5_g_m2_d<-res_media5 * solids_sed5      #1/day * g/m3
res5_g_y <-(res5_g_m2_d*a5)*365
res5_kg_y <-res5_g_y/1000

res6_g_m2_d<-res_media6 * solids_sed6     #1/day * g/m3
res6_g_y <-(res6_g_m2_d*a6)*365
res6_kg_y <-res6_g_y/1000

res7_g_m2_d<-res_media7 * solids_sed7      #1/day * g/m3
res7_g_y <-(res7_g_m2_d*a7)*365
res7_kg_y <-res7_g_y/1000

res8_g_m2_d<-res_media8 * solids_sed8      #1/day * g/m3
res8_g_y <-(res8_g_m2_d*a8)*365
res8_kg_y <-res8_g_y/1000

res9_g_m2_d<-res_media9 * solids_sed9      #1/day * g/m3
res9_g_y <-(res9_g_m2_d*a9)*365
res9_kg_y <-res9_g_y/1000

res10_g_m2_d<-res_media10 * solids_sed10      #1/day * g/m3
res10_g_y <-(res10_g_m2_d*a10)*365
res10_kg_y <-res10_g_y/1000

##92.4% of re-suspension (1.13 10^12 g year ) 
# occurs in the northern basin and 7.6% from the southern basin (9.27 10^10 g year).

depo_all<-cbind(depo1_kg_y,depo2_kg_y,depo3_kg_y,depo4_kg_y,depo5_kg_y,depo6_kg_y,depo7_kg_y,depo8_kg_y,depo9_kg_y,depo10_kg_y)
res_all<-cbind(res1_kg_y,res2_kg_y,res3_kg_y,res4_kg_y,res5_kg_y,res6_kg_y,res7_kg_y,res8_kg_y,res9_kg_y,res10_kg_y)

depo_tot_kgy<-rowSums(depo_all)
res_tot_kgy<-rowSums(res_all)

bal1<-depo1_kg_y-res1_kg_y
bal2<-depo2_kg_y-res2_kg_y
bal3<-depo3_kg_y-res3_kg_y
bal4<-depo4_kg_y-res4_kg_y
bal5<-depo5_kg_y-res5_kg_y
bal6<-depo6_kg_y-res6_kg_y
bal7<-depo7_kg_y-res7_kg_y
bal8<-depo8_kg_y-res8_kg_y
bal9<-depo9_kg_y-res9_kg_y
bal10<-depo10_kg_y-res10_kg_y

netdepo1kg<-netdepo_sed1/100*a1*(solids_sed1/10^3)     #cm y /100 *m2 --> m3/y *drydens (kg m3) --> kgy
netdepo2kg<-netdepo_sed2/100*a2*(solids_sed2/10^3)  
netdepo3kg<-netdepo_sed3/100*a3*(solids_sed3/10^3)  
netdepo4kg<-netdepo_sed4/100*a4*(solids_sed4/10^3)  
netdepo5kg<-netdepo_sed5/100*a5*(solids_sed5/10^3)   
netdepo6kg<-netdepo_sed6/100*a6*(solids_sed6/10^3)   
netdepo7kg<-netdepo_sed7/100*a7*(solids_sed7/10^3)  
netdepo8kg<-netdepo_sed8/100*a8*(solids_sed8/10^3)   
netdepo9kg<-netdepo_sed9/100*a9*(solids_sed9/10^3)   
netdepo10kg<-netdepo_sed10/100*a10*(solids_sed10/10^3)   


png('sed_bal.png',width = 30, height = 20, res=300,units = "cm")
par(mfrow=c(2,5))
plot(bal1[200:2428], type='l',ylim=c(-10000000,100000000), col=1)
par(new=T)
plot(netdepo1kg[200:2428],type='l',ylim=c(-10000000,100000000), col=2)

plot(bal2[200:2428],type='l',ylim=c(-1000000000,1000000000), col=1)
par(new=T)
plot(netdepo2kg[200:2428],type='l',ylim=c(-1000000000,1000000000), col=2)
plot(bal3[200:2428],type='l',ylim=c(-1000000000,1000000000), col=1)
par(new=T)
plot(netdepo3kg[200:2428],type='l',ylim=c(-1000000000,1000000000), col=2)
plot(bal4[200:2428],type='l',ylim=c(-1000000000,1000000000), col=1)
par(new=T)
plot(netdepo4kg[200:2428],type='l',ylim=c(-1000000000,1000000000), col=2)
plot(bal5[200:2428],type='l',ylim=c(-1000000000,1000000000), col=1)
par(new=T)
plot(netdepo5kg[200:2428],type='l',ylim=c(-1000000000,1000000000), col=2)
plot(bal6[200:2428],type='l',ylim=c(-1000000000,1000000000), col=1)
par(new=T)
plot(netdepo6kg[200:2428],type='l',ylim=c(-1000000000,1000000000), col=2)
plot(bal7[200:2428],type='l',ylim=c(-1000000000,1000000000), col=1)
par(new=T)
plot(netdepo7kg[200:2428],type='l', col=2)
plot(bal8[200:2428],type='l',ylim=c(-1000000000,1000000000), col=1)
par(new=T)
plot(netdepo8kg[200:2428],type='l',ylim=c(-1000000000,1000000000), col=2)
plot(bal9[200:2428],type='l',ylim=c(-1000000000,1000000000), col=1)
par(new=T)
plot(netdepo9kg[200:2428],type='l',ylim=c(-1000000000,1000000000), col=2)
plot(bal10[200:2428],type='l',ylim=c(-1000000000,1000000000), col=1)
par(new=T)
plot(netdepo10kg[200:2428],type='l',ylim=c(-1000000000,1000000000), col=2)
dev.off()

## sFRISO ET AL 2005
b6_depo_1989<-c(65,140)   #kg DW m2y
b7_depo_1989<-41   #kg DW m2y

b6_depo_1999<-c(760,721)   #kg DW m2y
b7_depo_1999<-228   #kg DW m2y

b5_depo_2014_gm2d<-c(83,950,371) 
b5_depo_2014 <-b5_depo_2014_gm2d*365/1000    #kg DW m2y
b6_depo_2014_gm2d<-c(667,147,1584)           #kg DW m2y
b6_depo_2014 <-b6_depo_2014_gm2d*365/1000    #kg DW m2y


png('DEPO_kgm2y.png',width = 950, height = 530, units = "px")
par(mfrow=c(2,5))
plot(depo1_kg_y/a1, type='l')     # 1989 - 1990: 113 g m 2 day-1 (st.A) - 2609 g m 2 day 1 (st.D)
plot(depo2_kg_y/a2, type='l') 
plot(depo3_kg_y/a3, type='l') 

plot(depo4_kg_y/a4, type='l') 
plot(depo5_kg_y/a5, type='l',ylim=c(0,350)) 
par(new=T)
boxplot(b5_depo_2014, xaxt='n',
        xlim=c(0,2),at=c(1.1),
        boxwex=.06, ylim=c(0,350))
plot(depo6_kg_y/a6, ylim=c(0,800), type='l') 
par(new=T)
boxplot(b6_depo_1989,b6_depo_1999,b6_depo_2014, xaxt='n',
        xlim=c(0,2),at=c(0.6,0.9,1.1),
        boxwex=.06, ylim=c(0,800))

plot(depo7_kg_y/a7, ylim=c(0,750), type='l') 
par(new=T)
boxplot(b7_depo_1989,b7_depo_1999, xaxt='n', xlim=c(0,2),at=c(0.6,0.8),
        boxwex=.06, ylim=c(0,750))
plot(depo8_kg_y/a8, type='l') 
plot(depo9_kg_y/a9, type='l') 
plot(depo10_kg_y/a10, type='l') 
dev.off()

summary(BURIAL_cmy)

sar_b1<-c(-0.3125, 0.3125)
sar_b2<-c(-0.3125, 0.3125)
sar_b3<-c(-0.3125, 0.3125)
sar_b4<-c(-0.3125, 0.3125)
sar_b5<-c(-0.3125, 0.3125)
sar_b6<-c(-1.5625,-0.3125)
sar_b7<-c(-1.5625,-0.3125)
sar_b8<-c(-0.3125, 0.3125)
sar_b9<-c(-0.3125, 0.3125)
sar_b10<-c(-1.5625,-0.3125)


png('DEPO_vs_Sarretta.png',width = 950, height = 530, units = "px")
par(mfrow=c(2,5))
plot(netdepo_sed1, type='l',ylim=c(-1.6,1.6), col='#313695', lwd=2)
par(new=T)
boxplot(sar_b1,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2), col='#31369555')

plot(netdepo_sed2, ylim=c(-1.6,1.6),type='l', col='#4575b4', lwd=2)
par(new=T)
boxplot(sar_b2,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2), col='#4575b455')

plot(netdepo_sed4,ylim=c(-1.6,1.6),  type='l', col='#abd9e9', lwd=2)
par(new=T)
boxplot(sar_b4,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2), col='#abd9e955')

plot(netdepo_sed3,ylim=c(-1.6,1.6), type='l', col='#DDF26B', lwd=2)
par(new=T)
boxplot(sar_b3,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2),col='#DDF26B55')

plot(netdepo_sed5, ylim=c(-1.6,1.6), type='l', col='#e5e572', lwd=2)
par(new=T)
boxplot(sar_b5,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2), col='#e5e57255')

plot(netdepo_sed6, type='l', ylim=c(-1.6,1.6), col='#fed976', lwd=2)
par(new=T)
boxplot(sar_b6,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2), col='#fed97655')

plot(netdepo_sed7, ylim=c(-1.6,1.6),type='l', col='#f79220', lwd=2)
par(new=T)
boxplot(sar_b7,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2), col='#f7922055')

plot(netdepo_sed8,ylim=c(-1.6,1.6), type='l', col='#f46d43', lwd=2)
par(new=T)
boxplot(sar_b8,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2), col='#f46d4355')

plot(netdepo_sed9, ylim=c(-1.6,1.6),type='l', col='#d73027', lwd=2)
par(new=T)
boxplot(sar_b9,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2), col='#d7302755')

plot(netdepo_sed10,ylim=c(-1.6,1.6), type='l', col='#a50028', lwd=2)
par(new=T)
boxplot(sar_b10,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2), col='#a5002855')
dev.off()
  

png('Net_DEPO_Res.png',width = 30, height = 20, res=300,units = "cm")
par(mfrow=c(2,5))
plot(depo1_kg_y-res1_kg_y, type='l')
plot(depo2_kg_y-res2_kg_y, type='l')
plot(depo3_kg_y-res3_kg_y, type='l')
plot(depo4_kg_y-res4_kg_y, type='l')
plot(depo5_kg_y-res5_kg_y, type='l')
plot(depo6_kg_y-res6_kg_y, type='l')
plot(depo7_kg_y-res7_kg_y, type='l')
plot(depo8_kg_y-res8_kg_y, type='l')
plot(depo9_kg_y-res9_kg_y, type='l')
plot(depo10_kg_y-res10_kg_y, type='l')
dev.off()


TOT_buried<-HgT_burial_sed1_g_y+HgT_burial_sed2_g_y+HgT_burial_sed3_g_y+HgT_burial_sed4_g_y+HgT_burial_sed5_g_y
			HgT_burial_sed6_g_y+HgT_burial_sed7_g_y+HgT_burial_sed8_g_y+HgT_burial_sed9_g_y+HgT_burial_sed10_g_y

#DIFFUSION 
Diffusion_coeff<-10^-9             #m2/s
DF<-Diffusion_coeff*60*60*24       #m2/day  
