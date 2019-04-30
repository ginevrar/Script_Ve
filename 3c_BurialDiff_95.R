
#TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
#names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
 ##              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
 #              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
 #              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
#TOTs_10<-TOTs[91244:100359,1:11]
#TOTs_70<-TOTs[644318:653661,1:11]
#TOTs_10<-TOTs[878071:887414,1:11]
#TOTs_19<-TOTs[1102481:1111824,1:11]

bulkD<-read.csv("Sediment_Bulk_Density.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(bulkD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
bulkD_10<-bulkD[91244:100359,1:21]
bulkD_70<-bulkD[644318:653661,1:21]
bulkD_10<-bulkD[878071:887414,1:21]
bulkD_19<-bulkD[1102481:1111824,1:21]
str(bulkD_19)


bulkD<-NA

burial<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

burial_10<-burial[91244:100359,12:31]
burial_70<-burial[644318:653661,12:31]
burial_10<-burial[878071:887414,12:31]
burial_19<-burial[1102481:1111824,12:31]

hgD<-read.csv("Dissolved_Divalent_Hg.csv", skip = 1,header=FALSE, sep = ",", dec=".")
names(hgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

hgD_10<-hgD[91244:100359,1:21]
hgD_70<-hgD[644318:653661,1:21]
hgD_10<-hgD[878071:887414,1:21]
hgD_19<-hgD[1102481:1111824,1:21]

DOChg<-read.csv("DOC_Sorbed_Divalent_Hg.csv", header=FALSE, skip =1, sep = ",", dec=".")
names(DOChg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

DOChg_10<-DOChg[91244:100359,1:21]
DOChg_70<-DOChg[644318:653661,1:21]
DOChg_10<-DOChg[878071:887414,1:21]
DOChg_19<-DOChg[1102481:1111824,1:21]

burial<-NA
hgD<-NA
DOChg<-NA

hg0<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')		

hg0_10<-hg0[91244:100359,1:21]
hg0_70<-hg0[644318:653661,1:21]
hg0_95<-hg0[878071:887414,1:21]
hg0_19<-hg0[1102481:1111824,1:21]

hg0<-NA

100359-91244

porosity<-bulkD_19[12:21]-TOTs_19[12:21]/10^6         #compute porosity
#DIFFUSION 
Diffusion_coeff<-2*10^-9             #m2/s
DF<-Diffusion_coeff*60*60*24       #m2/day  
#     ng/L to g/m3 = mgL

diss_hg<-hgD_19+DOChg_19+hg0_19; str(diss_hg);tail(diss_hg)

diss_hg     # ngL diss hg  Bottom water
str(DOChg_19)
diss_hg_gm3<-diss_hg/10^6 

PWhg1_ngL<-diss_hg$sn1; PWhg2_ngL<-diss_hg$sn2; 
PWhg3_ngL<-diss_hg$sn3; PWhg4_ngL<-diss_hg$sn4; 
PWhg5_ngL<-diss_hg$sn5; PWhg6_ngL<-diss_hg$sc6; 
PWhg7_ngL<-diss_hg$sc7; PWhg8_ngL<-diss_hg$ss8; 
PWhg9_ngL<-diss_hg$ss9; PWhg10_ngL<-diss_hg$ss10; 

Sed1_g <-TOTs_19$sn1*a1*0.05; Sed2_g <-TOTs_19$sn2*a2*0.05;  # g m3 * m2 * m 
Sed3_g <-TOTs_19$sn3*a3*0.05; Sed4_g <-TOTs_19$sn4*a4*0.05;  
Sed5_g <-TOTs_19$sn5*a5*0.05; Sed6_g <-TOTs_19$sc6*a6*0.05;
Sed7_g <-TOTs_19$sc7*a7*0.05; Sed8_g <-TOTs_19$ss8*a8*0.05;
Sed9_g <-TOTs_19$ss9*a9*0.05; Sed10_g <-TOTs_19$ss10*a10*0.05;

m3_sed1  <-Sed1_g/(2.6*10^6); m3_sed2  <-Sed2_g/(2.6*10^6); 
m3_sed3  <-Sed3_g/(2.6*10^6); m3_sed4  <-Sed4_g/(2.6*10^6); 
m3_sed5  <-Sed5_g/(2.6*10^6); m3_sed6  <-Sed6_g/(2.6*10^6); 
m3_sed7  <-Sed7_g/(2.6*10^6); m3_sed8  <-Sed8_g/(2.6*10^6); 
m3_sed9  <-Sed9_g/(2.6*10^6); m3_sed10  <-Sed10_g/(2.6*10^6); 

m3_PW1   <-(a1*0.05)-m3_sed1;  m3_PW2 <-(a2*0.05)-m3_sed2; 
m3_PW3   <-(a3*0.05)-m3_sed3;  m3_PW4 <-(a4*0.05)-m3_sed4; 
m3_PW5   <-(a5*0.05)-m3_sed5;  m3_PW6 <-(a6*0.05)-m3_sed6; 
m3_PW7   <-(a7*0.05)-m3_sed7;  m3_PW8 <-(a8*0.05)-m3_sed8;  
m3_PW9   <-(a9*0.05)-m3_sed9;  m3_PW10<-(a10*0.05)-m3_sed10;  

poreW<-data.frame(m3_PW1,m3_PW2,m3_PW3,m3_PW4,m3_PW5,m3_PW6,m3_PW7,m3_PW8,m3_PW9,m3_PW10)
poreW_L<-poreW*1000
names(poreW_L)<-c('pw1','pw2','pw3','pw4','pw5','pw6','pw7','pw8','pw9','pw10')
head(poreW_L)
m3_PW1/(a1*0.05)

PWhg1_gm3<-PWhg1_ngL*poreW_L$pw1/(a1*0.05*10^9)
PWhg2_gm3<-PWhg2_ngL*poreW_L$pw2/(a2*0.05*10^9)
PWhg3_gm3<-PWhg3_ngL*poreW_L$pw3/(a3*0.05*10^9)
PWhg4_gm3<-PWhg4_ngL*poreW_L$pw4/(a4*0.05*10^9)
PWhg5_gm3<-PWhg5_ngL*poreW_L$pw5/(a5*0.05*10^9)
PWhg6_gm3<-PWhg6_ngL*poreW_L$pw6/(a6*0.05*10^9)
PWhg7_gm3<-PWhg7_ngL*poreW_L$pw7/(a7*0.05*10^9)
PWhg8_gm3<-PWhg8_ngL*poreW_L$pw8/(a8*0.05*10^9)
PWhg9_gm3<-PWhg9_ngL*poreW_L$pw9/(a9*0.05*10^9)
PWhg10_gm3<-PWhg10_ngL*poreW_L$pw10/(a10*0.05*10^9)

term11<-(DF*a1*porosity$sn1)/(0.05/porosity$sn1)  # m2/day*m2/m -->m3/day
term21<-(PWhg1_gm3/porosity$sn1)-(diss_hg_gm3$wn1)       # g/m3
diffusion1_g_day<-term11*term21;      
diffusion1_kg_y<-diffusion1_g_day*365/1000

term12<-(DF*a2*porosity$sn2)/(0.05/porosity$sn2)  # m2/day*m2/m -->m3/day
term22<-(PWhg1_gm3/porosity$sn2)-(diss_hg_gm3$wn2)       # g/m3
diffusion2_g_day<-term12*term22;      
diffusion2_kg_y<-diffusion2_g_day*365/1000

term13<-(DF*a3*porosity$sn3)/(0.05/porosity$sn3)  # m2/day*m2/m -->m3/day
term23<-(PWhg3_gm3/porosity$sn3)-(diss_hg_gm3$wn3)       # g/m3
diffusion3_g_day<-term13*term23;      
diffusion3_kg_y<-diffusion3_g_day*365/1000

term14<-(DF*a4*porosity$sn4)/(0.05/porosity$sn4)  # m2/day*m2/m -->m3/day
term24<-(PWhg4_gm3/porosity$sn4)-(diss_hg_gm3$wn4)       # g/m3
diffusion4_g_day<-term14*term24;      
diffusion4_kg_y<-diffusion4_g_day*365/1000

term15<-(DF*a5*porosity$sn5)/(0.05/porosity$sn5)  # m2/day*m2/m -->m3/day
term25<-(PWhg5_gm3/porosity$sn5)-(diss_hg_gm3$wn5)       # g/m3
diffusion5_g_day<-term15*term25;      
diffusion5_kg_y<-diffusion5_g_day*365/1000

term16<-(DF*a6*porosity$sc6)/(0.05/porosity$sc6)  # m2/day*m2/m -->m3/day
term26<-(PWhg6_gm3/porosity$sc6)-(diss_hg_gm3$wc6)       # g/m3
diffusion6_g_day<-term16*term26;      
diffusion6_kg_y<-diffusion6_g_day*365/1000

term17<-(DF*a7*porosity$sc7)/(0.05/porosity$sc7)  # m2/day*m2/m -->m3/day
term27<-(PWhg7_gm3/porosity$sc7)-(diss_hg_gm3$wc7)       # g/m3
diffusion7_g_day<-term17*term27;      
diffusion7_kg_y<-diffusion7_g_day*365/1000

term18<-(DF*a8*porosity$ss8)/(0.05/porosity$ss8)  # m2/day*m2/m -->m3/day
term28<-(PWhg8_gm3/porosity$ss8)-(diss_hg_gm3$ws8)       # g/m3
diffusion8_g_day<-term18*term28;      
diffusion8_kg_y<-diffusion8_g_day*365/1000

term19<-(DF*a9*porosity$ss9)/(0.05/porosity$ss9)  # m2/day*m2/m -->m3/day
term29<-(PWhg9_gm3/porosity$ss9)-(diss_hg_gm3$ws9)       # g/m3
diffusion9_g_day<-term19*term29;      
diffusion9_kg_y<-diffusion9_g_day*365/1000

term10<-(DF*a10*porosity$ss10)/(0.05/porosity$ss10)  # m2/day*m2/m -->m3/day
term20<-(PWhg10_gm3/porosity$ss10)-(diss_hg_gm3$ws10)       # g/m3
diffusion10_g_day<-term10*term20;      
diffusion10_kg_y<-diffusion10_g_day*365/1000

# Hg sediment 
HgT_sed1_ngm3 <- solids_sed1   *SEDhg_sed1  #  ng/g*g/m3 -> ng/m3
HgT_sed2_ngm3 <- solids_sed2   *SEDhg_sed2  #  ng/g*g/m3 -> ng/m3
HgT_sed3_ngm3 <- solids_sed3   *SEDhg_sed3  #  ng/g*g/m3 -> ng/m3
HgT_sed4_ngm3 <- solids_sed4   *SEDhg_sed4  #  ng/g*g/m3 -> ng/m3
HgT_sed5_ngm3 <- solids_sed5   *SEDhg_sed5  #  ng/g*g/m3 -> ng/m3
HgT_sed6_ngm3 <- solids_sed6   *SEDhg_sed6  #  ng/g*g/m3 -> ng/m3
HgT_sed7_ngm3 <- solids_sed7   *SEDhg_sed7  #  ng/g*g/m3 -> ng/m3
HgT_sed8_ngm3 <- solids_sed8   *SEDhg_sed8  #  ng/g*g/m3 -> ng/m3
HgT_sed9_ngm3 <- solids_sed9   *SEDhg_sed9  #  ng/g*g/m3 -> ng/m3
HgT_sed10_ngm3 <- solids_sed10 *SEDhg_sed10  #  ng/g*g/m3 -> ng/m3
# Hg deep sediment 
HgT_dsed1_ngm3 <- solids_dsed1   *SEDhg_dsed1  #  ng/g*g/m3 -> ng/m3
HgT_dsed2_ngm3 <- solids_dsed2   *SEDhg_dsed2  #  ng/g*g/m3 -> ng/m3
HgT_dsed3_ngm3 <- solids_dsed3   *SEDhg_dsed3  #  ng/g*g/m3 -> ng/m3
HgT_dsed4_ngm3 <- solids_dsed4   *SEDhg_dsed4  #  ng/g*g/m3 -> ng/m3
HgT_dsed5_ngm3 <- solids_dsed5   *SEDhg_dsed5  #  ng/g*g/m3 -> ng/m3
HgT_dsed6_ngm3 <- solids_dsed6   *SEDhg_dsed6  #  ng/g*g/m3 -> ng/m3
HgT_dsed7_ngm3 <- solids_dsed7   *SEDhg_dsed7  #  ng/g*g/m3 -> ng/m3
HgT_dsed8_ngm3 <- solids_dsed8   *SEDhg_dsed8  #  ng/g*g/m3 -> ng/m3
HgT_dsed9_ngm3 <- solids_dsed9   *SEDhg_dsed9  #  ng/g*g/m3 -> ng/m3
HgT_dsed10_ngm3 <- solids_dsed10 *SEDhg_dsed10  #  ng/g*g/m3 -> ng/m3

netdepo_sed1 <-burial_19$sn1;    burial_sed1 <-burial_19$dsn1  #cm/y
netdepo_sed2 <-burial_19$sn2;    burial_sed2 <-burial_19$dsn2  #cm/y
netdepo_sed3 <-burial_19$sn3;    burial_sed3 <-burial_19$dsn3  #cm/y
netdepo_sed4 <-burial_19$sn4;    burial_sed4 <-burial_19$dsn4  #cm/y
netdepo_sed5 <-burial_19$sn5;    burial_sed5 <-burial_19$dsn5  #cm/y
netdepo_sed6 <-burial_19$sc6;    burial_sed6 <-burial_19$dsc6  #cm/y
netdepo_sed7 <-burial_19$sc7;    burial_sed7 <-burial_19$dsc7 #cm/y
netdepo_sed8 <-burial_19$ss8;    burial_sed8 <-burial_19$dss8  #cm/y
netdepo_sed9 <-burial_19$ss9;    burial_sed9 <-burial_19$dss9  #cm/y
netdepo_sed10 <-burial_19$ss10;  burial_sed10 <-burial_19$dss10  #cm/y

NET_DEPO_cmy<-data.frame(netdepo_sed1,netdepo_sed2,netdepo_sed3,netdepo_sed4,netdepo_sed5,
                         netdepo_sed6, netdepo_sed7,netdepo_sed8,netdepo_sed9, netdepo_sed10)  

BURIAL_cmy<-data.frame(burial_sed1,burial_sed2,burial_sed3,burial_sed4, burial_sed5,
                       burial_sed6, burial_sed7,burial_sed8,burial_sed9, burial_sed10)  

HgT_netdepo_sed1_g_y<-HgT_sed1_ngm3/10^9*netdepo_sed1/10^2 *a1  #ng m3/10^9 =g/m3*cmy/100 = m/y * m
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


TOT_buried_kgy<-(HgT_burial_sed1_g_y+HgT_burial_sed2_g_y+HgT_burial_sed3_g_y+
                HgT_burial_sed4_g_y+HgT_burial_sed5_g_y+
                HgT_burial_sed6_g_y+HgT_burial_sed7_g_y+
                HgT_burial_sed8_g_y+HgT_burial_sed9_g_y+HgT_burial_sed10_g_y)/1000


diff_Hg_kgy<-diffusion1_kg_y+diffusion2_kg_y+diffusion3_kg_y+diffusion4_kg_y+diffusion5_kg_y+
  diffusion6_kg_y+diffusion7_kg_y+diffusion8_kg_y+diffusion9_kg_y+diffusion10_kg_y

NET_deposited<-(HgT_netdepo_sed1_g_y+HgT_netdepo_sed2_g_y+HgT_netdepo_sed3_g_y+
                  HgT_netdepo_sed4_g_y+HgT_netdepo_sed5_g_y+
                  HgT_netdepo_sed6_g_y+HgT_netdepo_sed7_g_y+
                  HgT_netdepo_sed8_g_y+HgT_netdepo_sed9_g_y+HgT_netdepo_sed10_g_y)

/1000


diff_Hg_kgy<-data.frame(diffusion1_kg_y,diffusion2_kg_y,diffusion3_kg_y,diffusion4_kg_y,diffusion5_kg_y,
  diffusion6_kg_y,diffusion7_kg_y,diffusion8_kg_y,diffusion9_kg_y,diffusion10_kg_y)

colMeans(diff_Hg_kgy)

dfffff<-data.frame(NET_deposited,TOT_buried_kgy,diff_Hg_kgy)

write.table(dfffff,'Dep_burial_diff_19.txt')

mean(HgT_netdepo_sed1_g_y/1000)
mean(HgT_netdepo_sed2_g_y/1000)
mean(HgT_netdepo_sed3_g_y/1000)
mean(HgT_netdepo_sed4_g_y/1000)
mean(HgT_netdepo_sed5_g_y/1000)
mean(HgT_netdepo_sed6_g_y/1000)
mean(HgT_netdepo_sed7_g_y/1000)
mean(HgT_netdepo_sed8_g_y/1000)
mean(HgT_netdepo_sed9_g_y/1000)
mean(HgT_netdepo_sed10_g_y/1000)

drydensnord<-1270

plot(HgT_netdepo_sed1_g_y)
mean(NET_deposited)
