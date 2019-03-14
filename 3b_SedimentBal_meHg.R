# total output from run 1900-2100 ---> 1:2427
# runs 63d/63e 
# 1997        [1167:1178]
# 2010        [1323:1334]
# 2050        [1804:1815]
# 2001 - 2003 [1215:1250]

setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')     #sim_cl
hg<-read.csv('Methyl_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
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

burial<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

Phgs<-read.csv("Total_Sorbed_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
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

bulkD<-read.csv("Sediment_Bulk_Density.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(bulkD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

hgD<-read.csv("Dissolved_Divalent_Hg.csv", skip = 1,header=FALSE, sep = ",", dec=".")
names(hgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

DOChg<-read.csv("DOC_Sorbed_Divalent_Hg.csv", header=FALSE, skip =1, sep = ",", dec=".")
names(DOChg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

hg0<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

Model_area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71		

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

porosity<-bulkD-TOTs/10^6         #compute porosity
Diffusion_coeff<-10^-9             #m2/s
DF<-Diffusion_coeff*60*60*24       #m2/day
#     ng/L to g/m3 = mgL

diss_hg<-hgD+DOChg+hg0; str(diss_hg);tail(diss_hg)
diss_hg     # ngL diss hg  Bottom water

diss_hg_gm3<-diss_hg/10^6 

PWhg1_ngL<-diss_hg$sn1; PWhg2_ngL<-diss_hg$sn2; 
PWhg3_ngL<-diss_hg$sn3; PWhg4_ngL<-diss_hg$sn4; 
PWhg5_ngL<-diss_hg$sn5; PWhg6_ngL<-diss_hg$sc6; 
PWhg7_ngL<-diss_hg$sc7; PWhg8_ngL<-diss_hg$ss8; 
PWhg9_ngL<-diss_hg$ss9; PWhg10_ngL<-diss_hg$ss10; 

Sed1_g <-TOTs$sn1*a1*0.05; Sed2_g <-TOTs$sn2*a2*0.05;  # g m3 * m2 * m 
Sed3_g <-TOTs$sn3*a3*0.05; Sed4_g <-TOTs$sn4*a4*0.05;  
Sed5_g <-TOTs$sn5*a5*0.05; Sed6_g <-TOTs$sc6*a6*0.05;
Sed7_g <-TOTs$sc7*a7*0.05; Sed8_g <-TOTs$ss8*a8*0.05;
Sed9_g <-TOTs$ss9*a9*0.05; Sed10_g <-TOTs$ss10*a10*0.05;

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

#fraction of POM
fPOM  <-POMs/TOTs
fsilt <-silts/TOTs

#DIFFUSION 
Diffusion_coeff<-2*10^-9             #m2/s
DF<-Diffusion_coeff*60*60*24       #m2/day  

#SEDmehg*solid_sed -> ng/g
SEDmehg_sed1   <-SEDmehg$sn1; SEDmehg_dsed1   <-SEDmehg$dsn1 
SEDmehg_sed2   <-SEDmehg$sn2; SEDmehg_dsed2   <-SEDmehg$dsn2 
SEDmehg_sed3   <-SEDmehg$sn3; SEDmehg_dsed3   <-SEDmehg$dsn3   
SEDmehg_sed4   <-SEDmehg$sn4; SEDmehg_dsed4   <-SEDmehg$dsn4 
SEDmehg_sed5   <-SEDmehg$sn5; SEDmehg_dsed5   <-SEDmehg$dsn5 
SEDmehg_sed6   <-SEDmehg$sc6; SEDmehg_dsed6   <-SEDmehg$dsc6
SEDmehg_sed7   <-SEDmehg$sc7; SEDmehg_dsed7   <-SEDmehg$dsc7
SEDmehg_sed8   <-SEDmehg$ss8; SEDmehg_dsed8   <-SEDmehg$dss8
SEDmehg_sed9   <-SEDmehg$ss9; SEDmehg_dsed9   <-SEDmehg$dss9
SEDmehg_sed10   <-SEDmehg$ss10; SEDmehg_dsed10   <-SEDmehg$dss10

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

depo1_Phg_ug_m2_d<-depo_media1*Phgs$wn1        #m/day *ug/m3 = ug m2 d-1 
depo2_Phg_ug_m2_d<-depo_media2*Phgs$wn2        
depo3_Phg_ug_m2_d<-depo_media3*Phgs$wn3        # 
depo4_Phg_ug_m2_d<-depo_media4*Phgs$wn4         
depo5_Phg_ug_m2_d<-depo_media5*Phgs$wn5 
depo6_Phg_ug_m2_d<-depo_media6*Phgs$wc6  
depo7_Phg_ug_m2_d<-depo_media7*Phgs$wc7      
depo8_Phg_ug_m2_d<-depo_media8*Phgs$ws8 
depo9_Phg_ug_m2_d<-depo_media9*Phgs$ws9  
depo10_Phg_ug_m2_d<-depo_media10*Phgs$ws10    

depo1_hg_ug_m2_d  <-(SEDmehg$wn1*TOTs$wn1*depo_media1)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo2_hg_ug_m2_d  <-(SEDmehg$wn2*TOTs$wn2*depo_media2)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo3_hg_ug_m2_d  <-(SEDmehg$wn3*TOTs$wn3*depo_media3)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo4_hg_ug_m2_d  <-(SEDmehg$wn4*TOTs$wn4*depo_media4)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo5_hg_ug_m2_d  <-(SEDmehg$wn5*TOTs$wn5*depo_media5)/1000   #ng g * g/m3 * m d-1 -> ug m2 d-1 
depo6_hg_ug_m2_d  <-(SEDmehg$wc6*TOTs$wc6*depo_media6)/1000   #ng g * g/m3 * m d-1 -> 
depo7_hg_ug_m2_d  <-(SEDmehg$wc7*TOTs$wc7*depo_media7)/1000   #ng g * g/m3 * m d-1  
depo8_hg_ug_m2_d  <-(SEDmehg$ws8*TOTs$ws8*depo_media8)/1000   #ng g * g/m3 * m d-1
depo9_hg_ug_m2_d  <-(SEDmehg$ws9*TOTs$ws9*depo_media9)/1000   #ng g * g/m3 * m d-1 
depo10_hg_ug_m2_d  <-(SEDmehg$ws10*TOTs$ws10*depo_media10)/1000   #ng g * g/m3 * m d-1 

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

res1_Phg_ug_m2_d<-res1_g_m2_d*SEDmehg$sn1/10^3   #g m-2 d * ng g-1   = ng m-2 d
res2_Phg_ug_m2_d<-res2_g_m2_d*SEDmehg$sn2/10^3 
res3_Phg_ug_m2_d<-res3_g_m2_d*SEDmehg$sn3/10^3   ## kg/y*ug/kg--> ug/y 
res4_Phg_ug_m2_d<-res4_g_m2_d*SEDmehg$sn4/10^3 
res5_Phg_ug_m2_d<-res5_g_m2_d*SEDmehg$sn5/10^3 
res6_Phg_ug_m2_d<-res6_g_m2_d*SEDmehg$sc6/10^3 
res7_Phg_ug_m2_d<-res7_g_m2_d*SEDmehg$sc7/10^3 
res8_Phg_ug_m2_d<-res8_g_m2_d*SEDmehg$ss8/10^3 
res9_Phg_ug_m2_d<-res9_g_m2_d*SEDmehg$ss9/10^3 
res10_Phg_ug_m2_d<-res10_g_m2_d*SEDmehg$ss10/10^3 


res1_hg_ug_m2_d<-res_media1*Phgs$sn1  #m d-1 * ug m-1   = ug m-2 d
res2_hg_ug_m2_d<-res_media2*Phgs$sn2    #m d-1 * ug m-1   = ug m-2 d
res3_hg_ug_m2_d<-res_media3*Phgs$sn3   #m d-1 * ug m-1   = ug m-2 d
res4_hg_ug_m2_d<-res_media4*Phgs$sn4  #m d-1 * ug m-1   = ug m-2 d
res5_hg_ug_m2_d<-res_media5*Phgs$sn5   #m d-1 * ug m-1   = ug m-2 d
res6_hg_ug_m2_d<-res_media6*Phgs$sc6   #m d-1 * ug m-1   = ug m-2 d
res7_hg_ug_m2_d<-res_media7*Phgs$sc7   #m d-1 * ug m-1   = ug m-2 d
res8_hg_ug_m2_d<-res_media8*Phgs$ss8   #m d-1 * ug m-1   = ug m-2 d
res9_hg_ug_m2_d<-res_media9*Phgs$ss9   #m d-1 * ug m-1   = ug m-2 d
res10_hg_ug_m2_d<-res_media10*Phgs$ss10  #m d-1 * ug m-1   = ug m-2 d

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

netto1<-(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10)*365
netto2<-(bb1+bb2+bb3+bb4+bb5+bb6+bb7+bb8+bb9+bb10)*365

plot(netto1, type='l')
plot(netto2, type='l')

time.steps <- TOTs[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate

TOT_buried_kgy<-(HgT_burial_sed1_g_y+HgT_burial_sed2_g_y+HgT_burial_sed3_g_y+
                   HgT_burial_sed4_g_y+HgT_burial_sed5_g_y+
                   HgT_burial_sed6_g_y+HgT_burial_sed7_g_y+
                   HgT_burial_sed8_g_y+HgT_burial_sed9_g_y+HgT_burial_sed10_g_y)/1000


diff_Hg_kgy<-diffusion1_kg_y+diffusion2_kg_y+diffusion3_kg_y+diffusion4_kg_y+diffusion5_kg_y+
  diffusion6_kg_y+diffusion7_kg_y+diffusion8_kg_y+diffusion9_kg_y+diffusion10_kg_y

NET_deposited<-(HgT_netdepo_sed1_g_y+HgT_netdepo_sed2_g_y+HgT_netdepo_sed3_g_y+
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

Hg_res<-cbind(res1_Phg_kg_y,res2_Phg_kg_y,res3_Phg_kg_y,res4_Phg_kg_y,res5_Phg_kg_y,
              res6_Phg_kg_y,res7_Phg_kg_y,res8_Phg_kg_y,res9_Phg_kg_y,res10_Phg_kg_y)

mhg_perc<-SEDmehg[,2:22]/SEDhg[,2:22]*100

Hg_res_tot<-rowMeans(Hg_res)
Hg_depo_tot<-rowMeans(Hg_depo)

sed_bal<-data.frame(NET_deposited, TOT_buried_kgy, Hg_res_tot,Hg_depo_tot, netto1,netto2,diff_Hg_kgy)

write.table(sed_bal,'sed_bal_mehg.txt')
write.table(Hg_depo,'Hg_depo_mehg.txt')
write.table(Hg_res,'Hg_res_mehg.txt')
write.table(mhg_perc,'mhg_perc_mehg.txt')



plot(Hg_depo_tot,col='blue' ,type='b', ylim=c(0,40000))
par(new=T)
plot(Hg_res_tot,col='red', type='b',ylim=c(0,40000))

NEt_Net<-Hg_depo_tot-Hg_res_tot

plot(NEt_Net,col='hotpink',type='b',  ylim=c(0,80))


