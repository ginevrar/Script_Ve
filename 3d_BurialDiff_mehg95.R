
mehgD<-read.csv("Dissolved_Methyl_Hg.csv", skip = 1,header=FALSE, sep = ",", dec=".")
names(mehgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

mehgD_10<-mehgD[91244:100359,1:21]
mehgD_70<-mehgD[644318:653661,1:21]
mehgD_95<-mehgD[878071:887414,1:21]
mehgD_19<-mehgD[1102481:1111824,1:21]
mehgD<-NA

DOCmehg<-read.csv("DOC_Sorbed_Methyl_Hg.csv", header=FALSE, skip =1, sep = ",", dec=".")
names(DOCmehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

DOCmehg_10<-DOCmehg[91244:100359,1:21]
DOCmehg_70<-DOCmehg[644318:653661,1:21]
DOCmehg_95<-DOCmehg[878071:887414,1:21]
DOCmehg_19<-DOCmehg[1102481:1111824,1:21]

 DOCmehg<-NA


porosity<-bulkD_19[12:21]-TOTs_19[12:21]/10^6         #compute porosity
#DIFFUSION 
Diffusion_coeff<-2*10^-9             #m2/s
DF<-Diffusion_coeff*60*60*24       #m2/day  
#     ng/L to g/m3 = mgL

diss_mehg<-mehgD_19+DOCmehg_19 ; str(diss_mehg);tail(diss_mehg)
diss_mehg     # ngL diss hg  Bottom water

diss_mehg_gm3<-diss_mehg/10^6 

PWhg1_ngL<-diss_mehg$sn1; PWhg2_ngL<-diss_mehg$sn2; 
PWhg3_ngL<-diss_mehg$sn3; PWhg4_ngL<-diss_mehg$sn4; 
PWhg5_ngL<-diss_mehg$sn5; PWhg6_ngL<-diss_mehg$sc6; 
PWhg7_ngL<-diss_mehg$sc7; PWhg8_ngL<-diss_mehg$ss8; 
PWhg9_ngL<-diss_mehg$ss9; PWhg10_ngL<-diss_mehg$ss10; 

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
term21<-(PWhg1_gm3/porosity$sn1)-(diss_mehg_gm3$wn1)       # g/m3
diffusion1_g_day<-term11*term21;      
diffusion1_kg_y<-diffusion1_g_day*365/1000

term12<-(DF*a2*porosity$sn2)/(0.05/porosity$sn2)  # m2/day*m2/m -->m3/day
term22<-(PWhg1_gm3/porosity$sn2)-(diss_mehg_gm3$wn2)       # g/m3
diffusion2_g_day<-term12*term22;      
diffusion2_kg_y<-diffusion2_g_day*365/1000

term13<-(DF*a3*porosity$sn3)/(0.05/porosity$sn3)  # m2/day*m2/m -->m3/day
term23<-(PWhg3_gm3/porosity$sn3)-(diss_mehg_gm3$wn3)       # g/m3
diffusion3_g_day<-term13*term23;      
diffusion3_kg_y<-diffusion3_g_day*365/1000

term14<-(DF*a4*porosity$sn4)/(0.05/porosity$sn4)  # m2/day*m2/m -->m3/day
term24<-(PWhg4_gm3/porosity$sn4)-(diss_mehg_gm3$wn4)       # g/m3
diffusion4_g_day<-term14*term24;      
diffusion4_kg_y<-diffusion4_g_day*365/1000

term15<-(DF*a5*porosity$sn5)/(0.05/porosity$sn5)  # m2/day*m2/m -->m3/day
term25<-(PWhg5_gm3/porosity$sn5)-(diss_mehg_gm3$wn5)       # g/m3
diffusion5_g_day<-term15*term25;      
diffusion5_kg_y<-diffusion5_g_day*365/1000

term16<-(DF*a6*porosity$sc6)/(0.05/porosity$sc6)  # m2/day*m2/m -->m3/day
term26<-(PWhg6_gm3/porosity$sc6)-(diss_mehg_gm3$wc6)       # g/m3
diffusion6_g_day<-term16*term26;      
diffusion6_kg_y<-diffusion6_g_day*365/1000

term17<-(DF*a7*porosity$sc7)/(0.05/porosity$sc7)  # m2/day*m2/m -->m3/day
term27<-(PWhg7_gm3/porosity$sc7)-(diss_mehg_gm3$wc7)       # g/m3
diffusion7_g_day<-term17*term27;      
diffusion7_kg_y<-diffusion7_g_day*365/1000

term18<-(DF*a8*porosity$ss8)/(0.05/porosity$ss8)  # m2/day*m2/m -->m3/day
term28<-(PWhg8_gm3/porosity$ss8)-(diss_mehg_gm3$ws8)       # g/m3
diffusion8_g_day<-term18*term28;      
diffusion8_kg_y<-diffusion8_g_day*365/1000

term19<-(DF*a9*porosity$ss9)/(0.05/porosity$ss9)  # m2/day*m2/m -->m3/day
term29<-(PWhg9_gm3/porosity$ss9)-(diss_mehg_gm3$ws9)       # g/m3
diffusion9_g_day<-term19*term29;      
diffusion9_kg_y<-diffusion9_g_day*365/1000

term10<-(DF*a10*porosity$ss10)/(0.05/porosity$ss10)  # m2/day*m2/m -->m3/day
term20<-(PWhg10_gm3/porosity$ss10)-(diss_mehg_gm3$ws10)       # g/m3
diffusion10_g_day<-term10*term20;      
diffusion10_kg_y<-diffusion10_g_day*365/1000

diff_MEHg_kgy<-diffusion1_kg_y+diffusion2_kg_y+diffusion3_kg_y+diffusion4_kg_y+diffusion5_kg_y+
  diffusion6_kg_y+diffusion7_kg_y+diffusion8_kg_y+diffusion9_kg_y+diffusion10_kg_y

NET_deposited<-(HgT_netdepo_sed1_g_y+HgT_netdepo_sed2_g_y+HgT_netdepo_sed3_g_y+
                  HgT_netdepo_sed4_g_y+HgT_netdepo_sed5_g_y+
                  HgT_netdepo_sed6_g_y+HgT_netdepo_sed7_g_y+
                  HgT_netdepo_sed8_g_y+HgT_netdepo_sed9_g_y+HgT_netdepo_sed10_g_y)/1000

dfffff<-data.frame(diff_MEHg_kgy)

write.table(dfffff,'Diff_mehg_19.txt')


