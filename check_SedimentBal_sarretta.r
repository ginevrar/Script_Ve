# total output from run 1900-2100 ---> 1:2427
# runs 63d/63e 
# 1997        [1167:1178] # 2010        [1323:1334]
# 2050        [1804:1815] # 2001 - 2003 [1215:1250]
#
setwd('C:/Users/Acer/Dropbox/fin92b/mehg4/oksolid41n')
setwd('C:/Users/gi/Dropbox/fin92b/mehg4/oksolid19')
setwd('C:/Users/gi/Desktop/ba6')

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
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

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
		
#fraction of POM
fPOM  <-POMs/TOTs
fsilt <-silts/TOTs

mean(fPOM$sn1[241:1467]);mean(fPOM$sn2[241:1467]);mean(fPOM$sn3[241:1467]);mean(fPOM$sn4[241:1467])
mean(fPOM$sn5[241:1467]);mean(fPOM$sc6[241:1467]);mean(fPOM$sc7[241:1467]);mean(fPOM$ss8[241:1467])
mean(fPOM$ss9[241:1467]);mean(fPOM$ss10[241:1467])

png('POM_fraction__oks238ba5d.png')
plot(fPOM$sn1[241:1467], ylim=c(0,0.2),col=1, type = 'l', lty=1,lwd=2)
par(new=T)
plot(fPOM$sn2[241:1467], ylim=c(0,0.2),col=2, type = 'l', lty=2,lwd=1.9)
par(new=T)
plot(fPOM$sn3[241:1467], ylim=c(0,0.2),col=3,type = 'l', lty=3,lwd=2)
par(new=T)
plot(fPOM$sn4[241:1467], ylim=c(0,0.2),col=4,type = 'l', lty=4,lwd=1.5)
par(new=T)
plot(fPOM$sn5[241:1467], ylim=c(0,0.2),col=5,type = 'l', lty=5,lwd=2)
par(new=T)
plot(fPOM$sc6[241:1467], ylim=c(0,0.2),col=6,type = 'l', lty=2,lwd=1.6)
par(new=T)
plot(fPOM$sc7[241:1467], ylim=c(0,0.2),col=7,type = 'l', lty=1,lwd=2)
par(new=T)
plot(fPOM$ss8[241:1467], ylim=c(0,0.2),col=8,type = 'l', lty=3,lwd=1.3)
par(new=T)
plot(fPOM$ss9[241:1467], ylim=c(0,0.2),col=9,type = 'l', lty=4,lwd=1.7)
par(new=T)
plot(fPOM$ss10[241:1467], ylim=c(0,0.2),col=10,type = 'l', lty=5,lwd=1.8)
legend(10,0.2,  legend = c('b1','b2','b3','b4','b5','b6','b7','b8','b9','b10'),
       col=c(1,2,3,4,5,6,7,8,9,10),pch=19)
dev.off()

;mean(fPOM$sn3[241:1467]);mean(fPOM$sn4[241:1467])
mean(fPOM$sn5[241:1467]);mean(fPOM$sc6[241:1467]);mean(fPOM$sc7[241:1467]);mean(fPOM$ss8[241:1467])
mean(fPOM$ss9[241:1467]);mean(fPOM$ss10[241:1467])


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


#DIFFUSION 
Diffusion_coeff<-10^-9             #m2/s
DF<-Diffusion_coeff*60*60*24       #m2/day  
  
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
 
a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07
a9<-2.95E+07;a10<-4.06E+07

TOT_buried<-HgT_burial_sed1_g_y+HgT_burial_sed2_g_y+HgT_burial_sed3_g_y+HgT_burial_sed4_g_y+HgT_burial_sed5_g_y
			HgT_burial_sed6_g_y+HgT_burial_sed7_g_y+HgT_burial_sed8_g_y+HgT_burial_sed9_g_y+HgT_burial_sed10_g_y

d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71		
			
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

depo1_Phg_ug_m3_d<-depo_media1*Phgs$wn1        #1/day *ng/m3
depo1_Phg_g_d <-(depo1_Phg_ug_m3_d*a1*d1)/10^6
depo1_Phg_kg_y <-depo1_Phg_g_d*365/1000
#depo1_Phg_mol_d <-depo1_Phg_g_d/200.59
#depo_Phg_kmol_y <-(depo_Phg_mol_d/1000)*365
#plot(depo_Phg_kmol_y)

depo2_Phg_ug_m3_d<-depo_media2*Phgs$wn2        #1/day *ng/m3
depo2_Phg_g_d <-(depo2_Phg_ug_m3_d*a2*d2)/10^6
depo2_Phg_kg_y <-depo2_Phg_g_d*365/1000

depo3_Phg_ug_m3_d<-depo_media3*Phgs$wn3        #1/day *ng/m3
depo3_Phg_g_d <-(depo3_Phg_ug_m3_d*a3*d3)/10^6
depo3_Phg_kg_y <-depo3_Phg_g_d*365/1000

depo4_Phg_ug_m3_d<-depo_media4*Phgs$wn4        #1/day *ng/m3
depo4_Phg_g_d <-(depo4_Phg_ug_m3_d*a4*d4)/10^6
depo4_Phg_kg_y <-depo4_Phg_g_d*365/1000

depo5_Phg_ug_m3_d<-depo_media5*Phgs$wn5        #1/day *ng/m3
depo5_Phg_g_d <-(depo5_Phg_ug_m3_d*a5*d5)/10^6
depo5_Phg_kg_y <-depo5_Phg_g_d*365/1000
 
depo6_Phg_ug_m3_d<-depo_media6*Phgs$wc6        #1/day *ng/m3
depo6_Phg_g_d <-(depo6_Phg_ug_m3_d*a6*d6)/10^6
depo6_Phg_kg_y <-depo6_Phg_g_d*365/1000 

depo7_Phg_ug_m3_d<-depo_media7*Phgs$wc7        #1/day *ng/m3
depo7_Phg_g_d <-(depo7_Phg_ug_m3_d*a7*d7)/10^6
depo7_Phg_kg_y <-depo7_Phg_g_d*365/1000 

depo8_Phg_ug_m3_d<-depo_media8*Phgs$ws8        #1/day *ng/m3
depo8_Phg_g_d <-(depo8_Phg_ug_m3_d*a8*d8)/10^6
depo8_Phg_kg_y <-depo8_Phg_g_d*365/1000 

depo9_Phg_ug_m3_d<-depo_media9*Phgs$ws9       #1/day *ng/m3
depo9_Phg_g_d <-(depo9_Phg_ug_m3_d*a9*d9)/10^6
depo9_Phg_kg_y <-depo9_Phg_g_d*365/1000 

depo10_Phg_ug_m3_d<-depo_media10*Phgs$ws10       #1/day *ng/m3
depo10_Phg_g_d <-(depo10_Phg_ug_m3_d*a10*d10)/10^6
depo10_Phg_kg_y <-depo10_Phg_g_d*365/1000 


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

depo9_kg_y*SEDhg$ws9/10^6   ## kg/y*ug/kg--> ug/y 

depo10_g_m3_d<-depo_media10 * TOTs$ws10       #1/day * g/m3
depo10_g_y <-(depo10_g_m3_d*a10*d10)*365
depo10_kg_y <-depo10_g_y/1000

POM_res1_m_day<-POM_res$sn1      #
silt_res1_m_day<-silt_res$sn1 #...�.. 
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

res1_g_m2_d<-res_media1 * solids_sed1      #m/day * g/m3 --> gm2d
res1_g_y <-(res1_g_m2_d*a1)*365
res1_kg_y <-res1_g_y/1000
res1_Phg_kg_y<-res1_kg_y*SEDhg$sn1/10^6 

res2_g_m2_d<-res_media2 * solids_sed2      #1/day * g/m3
res2_g_y <-(res2_g_m2_d*a2)*365
res2_kg_y <-res2_g_y/1000
res2_Phg_kg_y<-res2_kg_y*SEDhg$sn2/10^6 

res3_g_m2_d<-res_media3 * solids_sed3      #1/day * g/m3
res3_g_y <-(res3_g_m2_d*a3)*365
res3_kg_y <-res3_g_y/1000
res3_Phg_kg_y<-res3_kg_y*SEDhg$sn3/10^6   ## kg/y*ug/kg--> ug/y 

res4_g_m2_d<-res_media4 * solids_sed4     #1/day * g/m3
res4_g_y <-(res4_g_m2_d*a4)*365
res4_kg_y <-res4_g_y/1000
res4_Phg_kg_y<-res4_kg_y*SEDhg$sn4/10^6 

res5_g_m2_d<-res_media5 * solids_sed5      #1/day * g/m3
res5_g_y <-(res5_g_m2_d*a5)*365
res5_kg_y <-res5_g_y/1000
res5_Phg_kg_y<-res5_kg_y*SEDhg$sn5/10^6 

res6_g_m2_d<-res_media6 * solids_sed6     #1/day * g/m3
res6_g_y <-(res6_g_m2_d*a6)*365
res6_kg_y <-res6_g_y/1000
res6_Phg_kg_y<-res6_kg_y*SEDhg$sc6/10^6 

res7_g_m2_d<-res_media7 * solids_sed7      #1/day * g/m3
res7_g_y <-(res7_g_m2_d*a7)*365
res7_kg_y <-res7_g_y/1000
res7_Phg_kg_y<-res7_kg_y*SEDhg$sc7/10^6 

res8_g_m2_d<-res_media8 * solids_sed8      #1/day * g/m3
res8_g_y <-(res8_g_m2_d*a8)*365
res8_kg_y <-res8_g_y/1000
res8_Phg_kg_y<-res8_kg_y*SEDhg$ss8/10^6 

res9_g_m2_d<-res_media9 * solids_sed9      #1/day * g/m3
res9_g_y <-(res9_g_m2_d*a9)*365
res9_kg_y <-res9_g_y/1000
res9_Phg_kg_y<-res9_kg_y*SEDhg$ss9/10^6 

res10_g_m2_d<-res_media10 * solids_sed10      #1/day * g/m3
res10_g_y <-(res10_g_m2_d*a10)*365
res10_kg_y <-res10_g_y/1000
res10_Phg_kg_y<-res10_kg_y*SEDhg$ss10/10^6 

##92.4% of re-suspension (1.13 10^12 g year?1) 
# oba5durs in the northern basin and 7.6% from the southern basin (9.27 10^10 g year?1).

depo_tot<-depo1_kg_y+depo2_kg_y+depo3_kg_y+depo4_kg_y+depo5_kg_y+depo6_kg_y+depo7_kg_y+depo8_kg_y+depo9_kg_y+depo10_kg_y
res_tot<-res1_kg_y+res2_kg_y+res3_kg_y+res4_kg_y+res5_kg_y+res6_kg_y+res7_kg_y+res8_kg_y+res9_kg_y+res10_kg_y

res_tot*10^3-depo_tot*10^3

depo_tot[2:1167]

plot(depo_tot[1200:1334])
plot(res_tot[1200:1334])
bal1<-depo1_kg_y-res1_kg_y

par(mfrow=c(2,5))
plot(res1_kg_y[1200:1334])
plot(res2_kg_y[1200:1334])
plot(res3_kg_y[1200:1334])
plot(res4_kg_y[1200:1334])
plot(res5_kg_y[1200:1334])
plot(res6_kg_y[1200:1334])
plot(res7_kg_y[1200:1334])
plot(res8_kg_y[1200:1334])
plot(res9_kg_y[1200:1334])
plot(res10_kg_y[1200:1334])

summary(res1_kg_y[1200:1334]+res2_kg_y[1200:1334]+res3_kg_y[1200:1334]+
  res4_kg_y[1200:1334]+res5_kg_y[1200:1334]+res6_kg_y[1200:1334])

summary(res6_kg_y[1200:1334])

res_tot*1000
depo_tot*1000

time.steps <- TOTs[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate
## sFRISO ET AL 2005
b6_depo_1989<-c(65,140)   #kg DW m2y
b7_depo_1989<-41   #kg DW m2y

b6_depo_1999<-c(760,721)   #kg DW m2y
b7_depo_1999<-228   #kg DW m2y


b5_depo_2014_gm2d<-c(83,950,371) 
b5_depo_2014 <-b5_depo_2014_gm2d*365/1000   #kg DW m2y
b6_depo_2014_gm2d<-c(667,147,1584)   #kg DW m2y
b6_depo_2014 <-b6_depo_2014_gm2d*365/1000   #kg DW m2y

png('DEPO_kgm2y_fin92b__oks238ba5d.png',width = 950, height = 530, units = "px")
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
plot(rdate,depo6_kg_y/a6, ylim=c(0,800), type='l') 
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
  
  
  png('DEPO_vs_Sarretta_fin92b__oks238ba5d.png',width = 950, height = 530, units = "px")
  par(mfrow=c(2,5))
  plot(netdepo_sed1, type='l',ylim=c(-1.6,1.6), col='#313695', lwd=2)
  par(new=T)
  boxplot(sar_b2,ylim=c(-1.6,1.6), xaxt='n', xlim=c(0,2), col='#31369555')
  
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

TOTs<-POMs+silts+sands
POM_perc<-POMs/TOTs*100


POC_perc<-POM_perc/1.88


poc1 <-rep('NA',length(rdate));poc2 <-rep('NA',length(rdate))
poc3 <-rep('NA',length(rdate)); poc4 <-rep('NA',length(rdate))
poc5 <-rep('NA',length(rdate)); poc6 <-rep('NA',length(rdate))
poc7 <-rep('NA',length(rdate));poc8 <-rep('NA',length(rdate))
poc9 <-rep('NA',length(rdate)); poc10 <-rep('NA',length(rdate))

poc1[1306:1308]<-c(2.1, 1.9, 2.5)
poc2[1306:1308]<-c(2.7, 3.0, 3.0)
poc3[1306:1308]<-c(1, 1.8, 1.6)
poc4[1306:1308]<-c(1.6, 1.5, 1.6)
poc5[1306:1308]<-c(1.5, 1.8, 1.8)
poc6[1306:1308]<-c(1.7, 1.9, 2.0)
poc7[1306:1308]<-c(1.8,2.2,2.9)
poc8[1306:1308]<-c(7.2,7.4,8.5)
poc9[1306:1308]<-c(1.7,2.0,1.8)
poc10[1306:1308]<-c(1.6,1.6,1.4)

png('POC_perc_fin92b__oks238ba5d.png',width = 950, height = 530, units = "px")
par(mfrow=c(2,5))
plot(rdate[480:1440],POC_perc$sn1[480:1440],col='#313695',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$dsn1[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$osn1[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],poc1[480:1440],col=c('#313695','grey60','black'),
     type='p', lwd=2, cex=2, 
     lty=2,ylim=c(0,10))

plot(rdate[480:1440],POC_perc$sn2[480:1440],col='#4575b4',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$dsn2[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$osn2[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],poc2[480:1440],col=c('#4575b4','grey60','black'),
     type='p', lwd=2, cex=2, 
     lty=2,ylim=c(0,10))

plot(rdate[480:1440],POC_perc$sn4[480:1440],col='#abd9e9',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$dsn4[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$osn4[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],poc4[480:1440],col=c('#abd9e9','grey60','black'),
     type='p', lwd=2, cex=2, 
     lty=2,ylim=c(0,10))

plot(rdate[480:1440],POC_perc$sn3[480:1440],col='#DDF26B',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$dsn3[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$osn3[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],poc3[480:1440],col=c('#DDF26B','grey60','black'),
     type='p', lwd=2, cex=2, 
     lty=2,ylim=c(0,10))

plot(rdate[480:1440],POC_perc$sn5[480:1440],col='#e5e572',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$dsn5[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$osn5[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],poc5[480:1440],col=c('#e5e572','grey60','black'),
     type='p', lwd=2, cex=2, 
     lty=2,ylim=c(0,10))

plot(rdate[480:1440],POC_perc$sc6[480:1440],col='#fed976',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$dsc6[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$osc6[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],poc6[480:1440],col=c('#fed976','grey60','black'),
     type='p', lwd=2, cex=2, 
     lty=2,ylim=c(0,10))

plot(rdate[480:1440],POC_perc$sc7[480:1440],col='#f79220',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$dsc7[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$osc7[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],poc7[480:1440],col=c('#f79220','grey60','black'),
     type='p', lwd=2, cex=2, 
     lty=2,ylim=c(0,10))

plot(rdate[480:1440],POC_perc$ss8[480:1440],col='#f46d43',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$dss8[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$oss8[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],poc8[480:1440],col=c('#f46d43','grey60','black'),
     type='p', lwd=2, cex=2, 
     lty=2,ylim=c(0,10))

plot(rdate[480:1440],POC_perc$ss9[480:1440],col='#d73027',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$dss9[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$oss9[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],poc9[480:1440],col=c('#d73027','grey60','black'),
     type='p', lwd=2, cex=2, 
     lty=2,ylim=c(0,10))

plot(rdate[480:1440],POC_perc$ss10[480:1440],col='#a50028',type='l', lwd=2, ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$dss10[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],POC_perc$oss10[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
par(new=T)
plot(rdate[480:1440],poc10[480:1440],col=c('#a50028','grey60','black'),
     type='p', lwd=2, cex=2, 
     lty=2,ylim=c(0,10))
dev.off()
=======
  POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
    names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
    
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
  		
  #fraction of POM
  fPOM  <-POMs/TOTs
  fsilt <-silts/TOTs
  
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
    
  plot(solids_sed1)
  plot(solids_sed2)
  plot(solids_sed7)
  plot(solids_sed8)
  plot(solids_sed9)
  
      
  #DIFFUSION 
  Diffusion_coeff<-10^-9             #m2/s
  DF<-Diffusion_coeff*60*60*24       #m2/day  
    
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
   
  a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07
  a9<-2.95E+07;a10<-4.06E+07
  
  TOT_buried<-HgT_burial_sed1_g_y+HgT_burial_sed2_g_y+HgT_burial_sed3_g_y+HgT_burial_sed4_g_y+HgT_burial_sed5_g_y
  			HgT_burial_sed6_g_y+HgT_burial_sed7_g_y+HgT_burial_sed8_g_y+HgT_burial_sed9_g_y+HgT_burial_sed10_g_y
  
  d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71		
  			
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
  
  depo1_Phg_ug_m3_d<-depo_media1*Phgs$wn1        #1/day *ng/m3
  depo1_Phg_g_d <-(depo1_Phg_ug_m3_d*a1*d1)/10^6
  depo1_Phg_kg_y <-depo1_Phg_g_d*365/1000
  #depo1_Phg_mol_d <-depo1_Phg_g_d/200.59
  #depo_Phg_kmol_y <-(depo_Phg_mol_d/1000)*365
  #plot(depo_Phg_kmol_y)
  
  depo2_Phg_ug_m3_d<-depo_media2*Phgs$wn2        #1/day *ng/m3
  depo2_Phg_g_d <-(depo2_Phg_ug_m3_d*a2*d2)/10^6
  depo2_Phg_kg_y <-depo2_Phg_g_d*365/1000
  
  depo3_Phg_ug_m3_d<-depo_media3*Phgs$wn3        #1/day *ng/m3
  depo3_Phg_g_d <-(depo3_Phg_ug_m3_d*a3*d3)/10^6
  depo3_Phg_kg_y <-depo3_Phg_g_d*365/1000
  
  depo4_Phg_ug_m3_d<-depo_media4*Phgs$wn4        #1/day *ng/m3
  depo4_Phg_g_d <-(depo4_Phg_ug_m3_d*a4*d4)/10^6
  depo4_Phg_kg_y <-depo4_Phg_g_d*365/1000
  
  depo5_Phg_ug_m3_d<-depo_media5*Phgs$wn5        #1/day *ng/m3
  depo5_Phg_g_d <-(depo5_Phg_ug_m3_d*a5*d5)/10^6
  depo5_Phg_kg_y <-depo5_Phg_g_d*365/1000
   
  depo6_Phg_ug_m3_d<-depo_media6*Phgs$wc6        #1/day *ng/m3
  depo6_Phg_g_d <-(depo6_Phg_ug_m3_d*a6*d6)/10^6
  depo6_Phg_kg_y <-depo6_Phg_g_d*365/1000 
  
  depo7_Phg_ug_m3_d<-depo_media7*Phgs$wc7        #1/day *ng/m3
  depo7_Phg_g_d <-(depo7_Phg_ug_m3_d*a7*d7)/10^6
  depo7_Phg_kg_y <-depo7_Phg_g_d*365/1000 
  
  depo8_Phg_ug_m3_d<-depo_media8*Phgs$ws8        #1/day *ng/m3
  depo8_Phg_g_d <-(depo8_Phg_ug_m3_d*a8*d8)/10^6
  depo8_Phg_kg_y <-depo8_Phg_g_d*365/1000 
  
  depo9_Phg_ug_m3_d<-depo_media9*Phgs$ws9       #1/day *ng/m3
  depo9_Phg_g_d <-(depo9_Phg_ug_m3_d*a9*d9)/10^6
  depo9_Phg_kg_y <-depo9_Phg_g_d*365/1000 
  
  depo10_Phg_ug_m3_d<-depo_media10*Phgs$ws10       #1/day *ng/m3
  depo10_Phg_g_d <-(depo10_Phg_ug_m3_d*a10*d10)/10^6
  depo10_Phg_kg_y <-depo10_Phg_g_d*365/1000 
  
  
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
  
  depo9_kg_y*SEDhg$ws9/10^6   ## kg/y*ug/kg--> ug/y 
  
  depo10_g_m3_d<-depo_media10 * TOTs$ws10       #1/day * g/m3
  depo10_g_y <-(depo10_g_m3_d*a10*d10)*365
  depo10_kg_y <-depo10_g_y/1000
  
  POM_res1_m_day<-POM_res$sn1      #
  silt_res1_m_day<-silt_res$sn1 #...�.. 
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
  
  res1_g_m2_d<-res_media1 * solids_sed1      #m/day * g/m3 --> gm2d
  res1_g_y <-(res1_g_m2_d*a1)*365
  res1_kg_y <-res1_g_y/1000
  res1_Phg_kg_y<-res1_kg_y*SEDhg$sn1/10^6 
  
  res2_g_m2_d<-res_media2 * solids_sed2      #1/day * g/m3
  res2_g_y <-(res2_g_m2_d*a2)*365
  res2_kg_y <-res2_g_y/1000
  res2_Phg_kg_y<-res2_kg_y*SEDhg$sn2/10^6 
  
  res3_g_m2_d<-res_media3 * solids_sed3      #1/day * g/m3
  res3_g_y <-(res3_g_m2_d*a3)*365
  res3_kg_y <-res3_g_y/1000
  res3_Phg_kg_y<-res3_kg_y*SEDhg$sn3/10^6   ## kg/y*ug/kg--> ug/y 
  
  res4_g_m2_d<-res_media4 * solids_sed4     #1/day * g/m3
  res4_g_y <-(res4_g_m2_d*a4)*365
  res4_kg_y <-res4_g_y/1000
  res4_Phg_kg_y<-res4_kg_y*SEDhg$sn4/10^6 
  
  res5_g_m2_d<-res_media5 * solids_sed5      #1/day * g/m3
  res5_g_y <-(res5_g_m2_d*a5)*365
  res5_kg_y <-res5_g_y/1000
  res5_Phg_kg_y<-res5_kg_y*SEDhg$sn5/10^6 
  
  res6_g_m2_d<-res_media6 * solids_sed6     #1/day * g/m3
  res6_g_y <-(res6_g_m2_d*a6)*365
  res6_kg_y <-res6_g_y/1000
  res6_Phg_kg_y<-res6_kg_y*SEDhg$sc6/10^6 
  
  res7_g_m2_d<-res_media7 * solids_sed7      #1/day * g/m3
  res7_g_y <-(res7_g_m2_d*a7)*365
  res7_kg_y <-res7_g_y/1000
  res7_Phg_kg_y<-res7_kg_y*SEDhg$sc7/10^6 
  
  res8_g_m2_d<-res_media8 * solids_sed8      #1/day * g/m3
  res8_g_y <-(res8_g_m2_d*a8)*365
  res8_kg_y <-res8_g_y/1000
  res8_Phg_kg_y<-res8_kg_y*SEDhg$ss8/10^6 
  
  res9_g_m2_d<-res_media9 * solids_sed9      #1/day * g/m3
  res9_g_y <-(res9_g_m2_d*a9)*365
  res9_kg_y <-res9_g_y/1000
  res9_Phg_kg_y<-res9_kg_y*SEDhg$ss9/10^6 
  
  res10_g_m2_d<-res_media10 * solids_sed10      #1/day * g/m3
  res10_g_y <-(res10_g_m2_d*a10)*365
  res10_kg_y <-res10_g_y/1000
  res10_Phg_kg_y<-res10_kg_y*SEDhg$ss10/10^6 
  
  ##92.4% of re-suspension (1.13 10^12 g year?1) 
  # oddurs in the northern basin and 7.6% from the southern basin (9.27 10^10 g year?1).
  
  depo_tot<-depo1_kg_y+depo2_kg_y+depo3_kg_y+depo4_kg_y+depo5_kg_y+depo6_kg_y+depo7_kg_y+depo8_kg_y+depo9_kg_y+depo10_kg_y
  res_tot<-res1_kg_y+res2_kg_y+res3_kg_y+res4_kg_y+res5_kg_y+res6_kg_y+res7_kg_y+res8_kg_y+res9_kg_y+res10_kg_y
  
  res_tot*10^3-depo_tot*10^3
  
  depo_tot[2:1167]
  
  plot(depo_tot[1200:1334])
  plot(res_tot[1200:1334])
  bal1<-depo1_kg_y-res1_kg_y
  
  par(mfrow=c(2,5))
  plot(res1_kg_y[1200:1334])
  plot(res2_kg_y[1200:1334])
  plot(res3_kg_y[1200:1334])
  plot(res4_kg_y[1200:1334])
  plot(res5_kg_y[1200:1334])
  plot(res6_kg_y[1200:1334])
  plot(res7_kg_y[1200:1334])
  plot(res8_kg_y[1200:1334])
  plot(res9_kg_y[1200:1334])
  plot(res10_kg_y[1200:1334])
  
  summary(res1_kg_y[1200:1334]+res2_kg_y[1200:1334]+res3_kg_y[1200:1334]+
    res4_kg_y[1200:1334]+res5_kg_y[1200:1334]+res6_kg_y[1200:1334])
  
  summary(res6_kg_y[1200:1334])
  
  res_tot*1000
  depo_tot*1000
  
  time.steps <- TOTs[,1]
  time.steps3 <- time.steps*24*3600
  TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
  TEMPO[1:10]
  rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
  rdate
  ## sFRISO ET AL 2005
  b6_depo_1989<-c(65,140)   #kg DW m2y
  b7_depo_1989<-41   #kg DW m2y
  
  b6_depo_1999<-c(760,721)   #kg DW m2y
  b7_depo_1999<-228   #kg DW m2y
  
  
  b5_depo_2014_gm2d<-c(83,950,371) 
  b5_depo_2014 <-b5_depo_2014_gm2d*365/1000   #kg DW m2y
  b6_depo_2014_gm2d<-c(667,147,1584)   #kg DW m2y
  b6_depo_2014 <-b6_depo_2014_gm2d*365/1000   #kg DW m2y
  
  png('DEPO_kgm2y_fin92b__oks238ba5d.png',width = 950, height = 530, units = "px")
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
  plot(rdate,depo6_kg_y/a6, ylim=c(0,800), type='l') 
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

  png('DEPO_NET_fin92b__oks238ba5d.png',
      width = 30, height = 20, units = "cm", res=300)
  par(mfrow=c(2,5),mar=c(3,1,1,1), oma=c(0,6,3,1), bty='n')
  plot(rdate[241:1467], netdepo_sed1[241:1467], type='l',ylim=c(-0.3,0.6),
       ylab='', cex.axis=1.6,main='Box 1',
       col='#313695', lwd=2)
  abline(h=0, lty=3)
  #abline(v=rdate[1080], lty=3)
  mtext('cm/y', side = 2, line=2.6, cex=1.2)
  
  plot(rdate[241:1467],netdepo_sed2[241:1467], ylim=c(-0.3,0.6),
       type='l', col='#4575b4', lwd=2,
       ylab='', cex.axis=1.6,main='Box 2')
  abline(h=0, lty=3)
  
  plot(rdate[241:1467],netdepo_sed4[241:1467],
       ylim=c(-0.3,0.6),  type='l', 
       ylab='', cex.axis=1.6,main='Box 4',
       col='#abd9e9', lwd=2)
  abline(h=0, lty=3)
  
  plot(rdate[241:1467],netdepo_sed3[241:1467],
       ylab='', cex.axis=1.6,main='Box 3',
       ylim=c(-0.3,0.6), type='l', col='#DDF26B', lwd=2)
  abline(h=0, lty=3)
  
  plot(rdate[241:1467],netdepo_sed5[241:1467],
       ylim=c(-0.3,0.6), type='l', col='#e5e572', 
       ylab='', cex.axis=1.6,main='Box 5',lwd=2)
  abline(h=0, lty=3)
  
  plot(rdate[241:1467],netdepo_sed6[241:1467], type='l', 
       ylim=c(-0.3,0.6), col='#fed976', lwd=2,
       ylab='', cex.axis=1.6,main='Box 6')
  abline(h=0, lty=3)
  mtext('cm/y', side = 2, line=2.6, cex=1.2)
  
  plot(rdate[241:1467],netdepo_sed7[241:1467],
       ylim=c(-0.3,0.6),type='l', col='#f79220',
       ylab='', cex.axis=1.6,main='Box 7',lwd=2)
  abline(h=0, lty=3)
  
  plot(rdate[241:1467],netdepo_sed8[241:1467],ylim=c(-0.3,0.6),
       type='l', col='#f46d43', lwd=2,
       ylab='', cex.axis=1.6,main='Box 8')
  abline(h=0, lty=3)
  
  plot(rdate[241:1467],netdepo_sed9[241:1467],
       ylim=c(-0.3,0.6),type='l', col='#d73027', 
       ylab='', cex.axis=1.6,main='Box 9',lwd=2)
  abline(h=0, lty=3)
  
  plot(rdate[241:1467],netdepo_sed10[241:1467],
       ylim=c(-0.3,0.6), type='l', col='#a50028',
       ylab='', cex.axis=1.6,main='Box 10',lwd=2)
  abline(h=0, lty=3)
  dev.off()
  
  TOTs<-POMs+silts+sands
  POM_perc<-POMs/TOTs*100
  
  png('solids_sed_conc_fin92b__oks6_38ba5d.png',width = 21, height = 29,
      units = "cm", res=400)
  par(mfrow=c(10,3),mar=c(1,1,1,1),
      oma=c(2.3,5.3,1.5,0), bty='n')
  plot(rdate,POMs$sn1/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
  mtext('layer A',side=3, lty=.6)
  par(new=T)
  plot(rdate,silts$sn1/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$sn1/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$sn1/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  mtext(text='box1',side=2, line=2.7, las=2)
  
  plot(rdate,POMs$dsn1/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
  mtext('layer B',side=3, lty=.6)
  par(new=T)
  plot(rdate,silts$dsn1/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$dsn1/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$dsn1/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  
  plot(rdate, POMs$osn1/10^3,col='green',type='l', lwd=2, lty=2,ylim=c(0,1500))
  mtext('layer C',side=3, lty=.6)
  par(new=T)
  plot(rdate, silts$osn1/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$osn1/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$osn1/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$sn2/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$sn2/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$sn2/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$sn2/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  mtext(text='box2',side=2, line=2.7, las=2)
  
  plot(rdate,POMs$dsn2/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$dsn2/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$dsn2/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$dsn2/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$osn2/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate, silts$osn2/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$osn2/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$osn2/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  
  plot(rdate,POMs$sn4/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$sn4/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$sn4/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$sn4/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  mtext(text='box4',side=2, line=2.7, las=2)
  
  plot(rdate,POMs$dsn4/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$dsn4/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$dsn4/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$dsn4/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$osn4/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate, silts$osn4/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$osn4/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$osn4/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$sn3/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$sn3/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$sn3/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$sn3/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  mtext(text='box3',side=2, line=2.7, las=2)
  
  plot(rdate,POMs$dsn3/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$dsn3/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$dsn3/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$dsn3/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$osn3/10^3,col='green',main=' ',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate, silts$osn3/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$osn3/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$osn3/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$sn5/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$sn5/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$sn5/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$sn5/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  mtext(text='box5',side=2, line=2.7, las=2)
  
  plot(rdate,POMs$dsn5/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$dsn5/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$dsn5/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$dsn5/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$osn5/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate, silts$osn5/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$osn5/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$osn5/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$sc6/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$sc6/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$sc6/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$sc6/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  mtext(text='box6',side=2, line=2.7, las=2)
  
  plot(rdate,POMs$dsc6/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$dsc6/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$dsc6/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$dsc6/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$osc6/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate, silts$osc6/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$osc6/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$osc6/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$sc7/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$sc7/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$sc7/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$sc7/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  mtext(text='box7',side=2, line=2.7, las=2)
  
  plot(rdate,POMs$dsc7/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$dsc7/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$dsc7/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$dsc7/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$osc7/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate, silts$osc7/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$osc7/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$osc7/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  
  plot(rdate,POMs$ss8/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$ss8/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$ss8/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$ss8/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  mtext(text='box8',side=2, line=2.7, las=2)
  
  plot(rdate,POMs$dss8/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$dss8/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$dss8/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$dss8/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$oss8/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate, silts$oss8/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$oss8/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$oss8/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$ss9/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$ss9/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$ss9/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$ss9/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  mtext(text='box9',side=2, line=2.7, las=2)
  
  plot(rdate,POMs$dss9/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$dss9/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$dss9/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$dss9/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$oss9/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate, silts$oss9/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$oss9/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$oss9/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  
  plot(rdate,POMs$ss10/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$ss10/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$ss10/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$ss10/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  mtext(text='box10',side=2, line=2.7, las=2)
  
  plot(rdate,POMs$dss10/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,silts$dss10/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$dss10/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$dss10/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  
  plot(rdate,POMs$oss10/10^3,col='green',main='',type='l', lwd=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate, silts$oss10/10^3,col='#6d3504',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,sands$oss10/10^3,col='goldenrod',type='l', lwd=2, lty=2,ylim=c(0,1500))
  par(new=T)
  plot(rdate,TOTs$oss10/10^3,col='black',type='l', lwd=2, lty=1,ylim=c(0,1500))
  dev.off()
  
  POC_perc<-POM_perc/1.77
  
  
  poc1 <-rep('NA',length(rdate));poc2 <-rep('NA',length(rdate))
  poc3 <-rep('NA',length(rdate)); poc4 <-rep('NA',length(rdate))
  poc5 <-rep('NA',length(rdate)); poc6 <-rep('NA',length(rdate))
  poc7 <-rep('NA',length(rdate));poc8 <-rep('NA',length(rdate))
  poc9 <-rep('NA',length(rdate)); poc10 <-rep('NA',length(rdate))
  
  poc1[1306:1308]<-c(2.1, 1.9, 2.5)
  poc2[1306:1308]<-c(2.7, 3.0, 3.0)
  poc3[1306:1308]<-c(1, 1.8, 1.6)
  poc4[1306:1308]<-c(1.6, 1.5, 1.6)
  poc5[1306:1308]<-c(1.5, 1.8, 1.8)
  poc6[1306:1308]<-c(1.7, 1.9, 2.0)
  poc7[1306:1308]<-c(1.8,2.2,2.9)
  poc8[1306:1308]<-c(7.2,7.4,8.5)
  poc9[1306:1308]<-c(1.7,2.0,1.8)
  poc10[1306:1308]<-c(1.6,1.6,1.4)
  
  png('POC_perc_fin92b__oks238ba5d.png',width = 950, height = 530, units = "px")
  par(mfrow=c(2,5))
  plot(rdate[480:1440],POC_perc$sn1[480:1440],col='#313695',type='l', lwd=2, ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$dsn1[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$osn1[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],poc1[480:1440],col=c('#313695','grey60','black'),
       type='p', lwd=2, cex=2, 
       lty=2,ylim=c(0,10))
  
  plot(rdate[480:1440],POC_perc$sn2[480:1440],col='#4575b4',type='l', lwd=2, ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$dsn2[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$osn2[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],poc2[480:1440],col=c('#4575b4','grey60','black'),
       type='p', lwd=2, cex=2, 
       lty=2,ylim=c(0,10))
  
  plot(rdate[480:1440],POC_perc$sn4[480:1440],col='#abd9e9',type='l', lwd=2, ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$dsn4[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$osn4[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],poc4[480:1440],col=c('#abd9e9','grey60','black'),
       type='p', lwd=2, cex=2, 
       lty=2,ylim=c(0,10))
  
  plot(rdate[480:1440],POC_perc$sn3[480:1440],col='#DDF26B',type='l', lwd=2, ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$dsn3[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$osn3[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],poc3[480:1440],col=c('#DDF26B','grey60','black'),
       type='p', lwd=2, cex=2, 
       lty=2,ylim=c(0,10))
  
  plot(rdate[480:1440],POC_perc$sn5[480:1440],col='#e5e572',type='l', lwd=2, ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$dsn5[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$osn5[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],poc5[480:1440],col=c('#e5e572','grey60','black'),
       type='p', lwd=2, cex=2, 
       lty=2,ylim=c(0,10))
  
  plot(rdate[480:1440],POC_perc$sc6[480:1440],col='#fed976',type='l', lwd=2, ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$dsc6[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$osc6[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],poc6[480:1440],col=c('#fed976','grey60','black'),
       type='p', lwd=2, cex=2, 
       lty=2,ylim=c(0,10))
  
  plot(rdate[480:1440],POC_perc$sc7[480:1440],col='#f79220',type='l', lwd=2, ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$dsc7[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$osc7[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],poc7[480:1440],col=c('#f79220','grey60','black'),
       type='p', lwd=2, cex=2, 
       lty=2,ylim=c(0,10))
  
  plot(rdate[480:1440],POC_perc$ss8[480:1440],col='#f46d43',type='l', lwd=2, ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$dss8[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$oss8[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],poc8[480:1440],col=c('#f46d43','grey60','black'),
       type='p', lwd=2, cex=2, 
       lty=2,ylim=c(0,10))
  
  plot(rdate[480:1440],POC_perc$ss9[480:1440],col='#d73027',type='l', lwd=2, ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$dss9[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$oss9[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],poc9[480:1440],col=c('#d73027','grey60','black'),
       type='p', lwd=2, cex=2, 
       lty=2,ylim=c(0,10))
  
  plot(rdate[480:1440],POC_perc$ss10[480:1440],col='#a50028',type='l', lwd=2, ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$dss10[480:1440],col='grey60',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],POC_perc$oss10[480:1440],col='black',type='l', lwd=2, lty=2,ylim=c(0,10))
  par(new=T)
  plot(rdate[480:1440],poc10[480:1440],col=c('#a50028','grey60','black'),
       type='p', lwd=2, cex=2, 
       lty=2,ylim=c(0,10))
  dev.off()

  