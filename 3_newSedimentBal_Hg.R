# total output from run 1900-2100 ---> 1:2427
# runs 63d/63e 
# 1997        [1167:1178]; # 2010        [1323:1334]
# 2050        [1804:1815]; # 2001 - 2003 [1215:1250]
# 2017 [1431:1443]

setwd('C:/Users/Ginevra/Dropbox/2017_Venice/114/g919')
setwd('C:/Users/gi/Desktop/finaleRITAMRE/nuoviin2')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

burial<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
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

bulkD<-read.csv("Sediment_Bulk_Density.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(bulkD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

aree<-data.frame(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)

solids_sed1  <-TOTs$sn1;   solids_dsed1  <-TOTs$dsn1;    #g/m3 
solids_sed2  <-TOTs$sn2;   solids_dsed2  <-TOTs$dsn2;    
solids_sed3  <-TOTs$sn3;   solids_dsed3  <-TOTs$dsn3; 
solids_sed4  <-TOTs$sn4;   solids_dsed4  <-TOTs$dsn4;   
solids_sed5  <-TOTs$sn5;   solids_dsed5  <-TOTs$dsn5;  
solids_sed6  <-TOTs$sc6;   solids_dsed6  <-TOTs$dsc6;       
solids_sed7  <-TOTs$sc7;   solids_dsed7  <-TOTs$dsc7;     
solids_sed8  <-TOTs$ss8;   solids_dsed8  <-TOTs$dss8;   
solids_sed9  <-TOTs$ss9;   solids_dsed9  <-TOTs$dss9;    
solids_sed10  <-TOTs$ss10; solids_dsed10  <-TOTs$dss10;  

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

SEDhg_sed1   <-SEDhg$sn1; SEDhg_dsed1   <-SEDhg$dsn1 
SEDhg_sed2   <-SEDhg$sn2; SEDhg_dsed2   <-SEDhg$dsn2 
SEDhg_sed3   <-SEDhg$sn3; SEDhg_dsed3   <-SEDhg$dsn3   
SEDhg_sed4   <-SEDhg$sn4; SEDhg_dsed4   <-SEDhg$dsn4 
SEDhg_sed5   <-SEDhg$sn5; SEDhg_dsed5   <-SEDhg$dsn5 
SEDhg_sed6   <-SEDhg$sc6; SEDhg_dsed6   <-SEDhg$dsc6
SEDhg_sed7   <-SEDhg$sc7; SEDhg_dsed7   <-SEDhg$dsc7
SEDhg_sed8   <-SEDhg$ss8; SEDhg_dsed8   <-SEDhg$dss8
SEDhg_sed9   <-SEDhg$ss9; SEDhg_dsed9   <-SEDhg$dss9
SEDhg_sed10   <-SEDhg$ss10; SEDhg_dsed10   <-SEDhg$dss10


NET_DEPO_cmy_df<-data.frame(netdepo_sed1,netdepo_sed2,netdepo_sed3,netdepo_sed4,netdepo_sed5,
                            netdepo_sed6, netdepo_sed7,netdepo_sed8,netdepo_sed9, netdepo_sed10)  

Solidi_df<-data.frame(solids_sed1,solids_sed2,solids_sed3,solids_sed4,solids_sed5,
                      solids_sed6, solids_sed7,solids_sed8,solids_sed9, solids_sed10)  

Hg_sed_df_ngg<-data.frame(SEDhg_sed1,SEDhg_sed2,SEDhg_sed3,SEDhg_sed4,SEDhg_sed5,
                          SEDhg_sed6, SEDhg_sed7,SEDhg_sed8,SEDhg_sed9, SEDhg_sed10)  

BURIAL_cmy<-data.frame(burial_sed1,burial_sed2,burial_sed3,burial_sed4, burial_sed5,
                       burial_sed6, burial_sed7,burial_sed8,burial_sed9, burial_sed10)  

# net depo* soilds 10-2 m/y * g/m3 ->10-2g/m2y 
#Depo_sed_g_m2y<- (NET_DEPO_cmy_df*Solidi_df)/10^2

Depo1_sed_g_m2y<-(netdepo_sed1*solids_sed1)/10^2
Depo2_sed_g_m2y<-(netdepo_sed2*solids_sed2)/10^2
Depo3_sed_g_m2y<-(netdepo_sed3*solids_sed3)/10^2
Depo4_sed_g_m2y<-(netdepo_sed4*solids_sed4)/10^2
Depo5_sed_g_m2y<-(netdepo_sed5*solids_sed5)/10^2
Depo6_sed_g_m2y<-(netdepo_sed6*solids_sed6)/10^2
Depo7_sed_g_m2y<-(netdepo_sed7*solids_sed7)/10^2
Depo8_sed_g_m2y<-(netdepo_sed8*solids_sed8)/10^2
Depo9_sed_g_m2y<-(netdepo_sed9*solids_sed9)/10^2
Depo10_sed_g_m2y<-(netdepo_sed10*solids_sed10)/10^2


Hg_depo1_kg_y<-(Depo1_sed_g_m2y*SEDhg_sed1)*a1/10^12
plot(Hg_depo1_kg_y)
Hg_depo2_kg_y<-(Depo2_sed_g_m2y*SEDhg_sed2)*a2/10^12
Hg_depo3_kg_y<-(Depo3_sed_g_m2y*SEDhg_sed3)*a3/10^12
Hg_depo4_kg_y<-(Depo4_sed_g_m2y*SEDhg_sed4)*a4/10^12
Hg_depo5_kg_y<-(Depo5_sed_g_m2y*SEDhg_sed5)*a5/10^12
Hg_depo6_kg_y<-(Depo6_sed_g_m2y*SEDhg_sed6)*a6/10^12
Hg_depo7_kg_y<-(Depo7_sed_g_m2y*SEDhg_sed7)*a7/10^12
Hg_depo8_kg_y<-(Depo8_sed_g_m2y*SEDhg_sed8)*a8/10^12
Hg_depo9_kg_y<-(Depo9_sed_g_m2y*SEDhg_sed9)*a9/10^12
Hg_depo10_kg_y<-(Depo10_sed_g_m2y*SEDhg_sed10)*a10/10^12
# ng/g
Hg_depo_ng_m2_y<-Depo_sed_g_m2y*Hg_sed_df_ngg
# 2001: 1227

a<-mean(Hg_depo1_kg_y[1431:1443])
b<-mean(Hg_depo2_kg_y[1431:1443])
c<-mean(Hg_depo3_kg_y[1431:1443])
d<-mean(Hg_depo4_kg_y[1431:1443])
e<-mean(Hg_depo5_kg_y[1431:1443])
ff<-mean(Hg_depo6_kg_y[1431:1443])
g<-mean(Hg_depo7_kg_y[1431:1443])
h<-mean(Hg_depo8_kg_y[1431:1443])
i<-mean(Hg_depo9_kg_y[1431:1443])
l<-mean(Hg_depo10_kg_y[1431:1443])

a+b+c+d+e+ff+g+h+i+l

depo_tot_2014<-cbind(a,b,c,d,e,ff,g,h,i)
depo_tutto_2014<-cbind(rowSums(depo_tot_2014),depo_tot_2014)
depo_tutto_Hg<-cbind(Hg_depo1_kg_y, Hg_depo2_kg_y, Hg_depo3_kg_y,Hg_depo4_kg_y,
                  Hg_depo5_kg_y,Hg_depo6_kg_y,Hg_depo7_kg_y,Hg_depo8_kg_y,
                  Hg_depo9_kg_y,Hg_depo10_kg_y)

depo_tutto_sed_ty<-cbind((Depo1_sed_g_m2y*a1/10^6),(Depo2_sed_g_m2y*a2/10^6),
                      (Depo3_sed_g_m2y*a3/10^6),(Depo4_sed_g_m2y*a4/10^6),
                      (Depo5_sed_g_m2y*a5/10^6),(Depo6_sed_g_m2y*a6/10^6),
                      (Depo7_sed_g_m2y*a7/10^6),(Depo8_sed_g_m2y*a8/10^6),
                      (Depo9_sed_g_m2y*a9/10^6),(Depo10_sed_g_m2y*a10/10^6))
plot((Depo7_sed_g_m2y*a1/10^6))

sed_bal<-data.frame(depo_tutto_Hg)

write.table(sed_bal,'sed_balHg.txt')
write.table(depo_tutto_2014,'depo2014.txt')
write.table(depo_tutto_sed_ty,'sedBal.txt')
