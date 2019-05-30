setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\Reference_OK\\year')     #sim_cl
#setwd('D:\\Ref_long_long')     #sim_cl

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


write.table(rdate,'rdate.txt')

a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

Model_aree<-c(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
Model_area<-sum(Model_aree)
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71		

solids_sed1  <-silts$sn1+POMs$sn1;   solids_dsed1  <-silts$dsn1+POMs$dsn1;    ## solidi
solids_sed2  <-silts$sn2+POMs$sn2;   solids_dsed2  <-silts$dsn2+POMs$dsn2;    
solids_sed3  <-silts$sn3+POMs$sn3;   solids_dsed3  <-silts$dsn3+POMs$dsn3; 
solids_sed4  <-silts$sn4+POMs$sn4;   solids_dsed4  <-silts$dsn4+POMs$dsn4;   
solids_sed5  <-silts$sn5+POMs$sn5;   solids_dsed5  <-silts$dsn5+POMs$dsn5;  
solids_sed6  <-silts$sc6+POMs$sc6;   solids_dsed6  <-silts$dsc6+POMs$dsc6;       
solids_sed7  <-silts$sc7+POMs$sc7;   solids_dsed7  <-silts$dsc7+POMs$dsc7;     
solids_sed8  <-silts$ss8+POMs$ss8;   solids_dsed8  <-silts$dss8+POMs$dss8;   
solids_sed9  <-silts$ss9+POMs$ss9;   solids_dsed9  <-silts$dss9+POMs$dss9;    
solids_sed10  <-silts$ss10+POMs$ss10; solids_dsed10  <-silts$dss10+POMs$dss10;  


solids_sed1  <-TOTs$sn1;     solids_dsed1  <-TOTs$dsn1  
solids_sed2  <-TOTs$sn2;    solids_dsed2  <-TOTs$dsn2 
solids_sed3  <-TOTs$sn3;    solids_dsed3  <-TOTs$dsn3 
solids_sed4  <-TOTs$sn4;    solids_dsed4  <-TOTs$dsn4    
solids_sed5  <-TOTs$sn5;    solids_dsed5  <-TOTs$dsn5   
solids_sed6  <-TOTs$sc6;    solids_dsed6  <-TOTs$dsc6       
solids_sed7  <-TOTs$sc7;    solids_dsed7  <-TOTs$dsc7     
solids_sed8  <-TOTs$ss8;    solids_dsed8  <-TOTs$dss8   
solids_sed9  <-TOTs$ss9;    solids_dsed9  <-TOTs$dss9    
solids_sed10  <-TOTs$ss10;  solids_dsed10  <-TOTs$dss10  

#fraction of POM
fPOM  <-POMs/(POMs+silts)
fsilt <-silts/(POMs+silts)

POM_depo1_m_day<-POM_depos$wn1#d1   #depo m#day 
silt_depo1_m_day<-silt_depos$wn1
POM_depo2_m_day<-POM_depos$wn2
silt_depo2_m_day<-silt_depos$wn2
POM_depo3_m_day<-POM_depos$wn3#d3  
silt_depo3_m_day<-silt_depos$wn3#d3 #
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

plot(depo1_Phg_ug_m2_d,type='l', ylim=c(0,700))
par(new=T)
plot(res1_Phg_ug_m2_d,type='l', ylim=c(0,700), col=2)


plot(depo1_Phg_ug_m2_d-res1_Phg_ug_m2_d)


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

Depo_ugd<-cbind(depo1b_Phg_ug_d,depo2b_Phg_ug_d,depo3b_Phg_ug_d,depo4b_Phg_ug_d,depo5b_Phg_ug_d,
               depo6b_Phg_ug_d,depo7b_Phg_ug_d,depo8b_Phg_ug_d, depo9b_Phg_ug_d,depo10b_Phg_ug_d)

Depo_kgy<-cbind(depo1_Phg_kg_y,depo2_Phg_kg_y,depo3_Phg_kg_y,depo4_Phg_kg_y,depo5_Phg_kg_y,
               depo6_Phg_kg_y,depo7_Phg_kg_y,depo8_Phg_kg_y, depo9_Phg_kg_y,depo10_Phg_kg_y)


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

res1_g_m2_d<-res_media1 * solids_sed1#/0.6 #$sn1      #m/day * g/m3 --> gm2d
res2_g_m2_d<-res_media2 * solids_sed2#/0.6 #$sn2      #m/day * g/m3
res3_g_m2_d<-res_media3 * solids_sed3##/0.6 #$sn3      # 
res4_g_m2_d<-res_media4 * solids_sed4#/0.6 #$sn4     
res5_g_m2_d<-res_media5 * solids_sed5#/0.6 #$sn5      
res6_g_m2_d<-res_media6 * solids_sed6##/0.6 #$sc6     
res7_g_m2_d<-res_media7 * solids_sed7#/0.6 #$sc7     
res8_g_m2_d<-res_media8 * solids_sed8#/0.6 #$ss8      #1/day * g/m3
res9_g_m2_d<-res_media9 * solids_sed9#/0.6 #$ss9      #1/day * g/m3
res10_g_m2_d<-res_media10 * solids_sed10#/0.6 #$ss10      #1/day * g/m3

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

res1_Phg_ug_m2_d<-res_media1*Phgs$sn1#/0.6 #$sn1   #m d-1 * ug m-3   = ug m-2 d
res2_Phg_ug_m2_d<-res_media2*Phgs$sn2#/0.6 #$sn2     #m d-1 * ug m-3   = ug m-2 d
res3_Phg_ug_m2_d<-res_media3*Phgs$sn3##/0.6 #$sn3    #m d-1 * ug m-3   = ug m-2 d
res4_Phg_ug_m2_d<-res_media4*Phgs$sn4#/0.6 #$sn4   #m d-1 * ug m-3   = ug m-2 d
res5_Phg_ug_m2_d<-res_media5*Phgs$sn5#/0.6 #$sn5    #m d-1 * ug m-3   = ug m-2 d
res6_Phg_ug_m2_d<-res_media6*Phgs$sc6#/0.6 #$sc6   #m d-3 * ug m-1   = ug m-2 d
res7_Phg_ug_m2_d<-res_media7*Phgs$sc7#/0.6 #$sc7    #m d-1 * ug m-3   = ug m-2 d
res8_Phg_ug_m2_d<-res_media8*Phgs$ss8#/0.6 #$ss8    #m d-1 * ug m-3   = ug m-2 d
res9_Phg_ug_m2_d<-res_media9*Phgs$ss9#/0.6 #$ss9#m d-1 * ug m-3   = ug m-2 d
res10_Phg_ug_m2_d<-res_media10*Phgs$ss10#/0.6 #$ss10   #m d-1 * ug m-3   = ug m-2 d

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


REs_ugd<-cbind(res1b_Phg_ug_d,res2b_Phg_ug_d,res3b_Phg_ug_d,res4b_Phg_ug_d,res5b_Phg_ug_d,
               res6b_Phg_ug_d,res7b_Phg_ug_d,res8b_Phg_ug_d, res9b_Phg_ug_d,res10b_Phg_ug_d)

REs_kgy<-cbind(res1_Phg_kg_y,res2_Phg_kg_y,res3_Phg_kg_y,res4_Phg_kg_y,res5_Phg_kg_y,
               res6_Phg_kg_y,res7_Phg_kg_y,res8_Phg_kg_y, res9_Phg_kg_y,res10_Phg_kg_y)


Depo_ugd<-cbind(depo1b_Phg_ug_d,depo2b_Phg_ug_d,depo3b_Phg_ug_d,depo4b_Phg_ug_d,depo5b_Phg_ug_d,
                depo6b_Phg_ug_d,depo7b_Phg_ug_d,depo8b_Phg_ug_d, depo9b_Phg_ug_d,depo10b_Phg_ug_d)

Depo_kgy<-cbind(depo1_Phg_kg_y,depo2_Phg_kg_y,depo3_Phg_kg_y,depo4_Phg_kg_y,depo5_Phg_kg_y,
                depo6_Phg_kg_y,depo7_Phg_kg_y,depo8_Phg_kg_y, depo9_Phg_kg_y,depo10_Phg_kg_y)

n<-(Depo_kgy-REs_kgy)
n<-(Depo_ugd-REs_ugd)*365/10^9


plot(rdate,(Depo_kgy[,1]-REs_kgy[,1]), type='l')
plot(rdate,(Depo_kgy[,2]-REs_kgy[,2]), type='l')
plot(rdate,(Depo_kgy[,3]-REs_kgy[,3]), type='l')
plot(rdate,(Depo_kgy[,4]-REs_kgy[,4]), type='l')
plot(rdate,(Depo_kgy[,5]-REs_kgy[,5]), type='l')
plot(rdate,(Depo_kgy[,6]-REs_kgy[,6]), type='l')
 # abline(h=0)
plot(rdate,(Depo_kgy[,7]-REs_kgy[,7]), type='l')
plot(rdate,(Depo_kgy[,8]-REs_kgy[,8]), type='l')
plot(rdate,(Depo_kgy[,9]-REs_kgy[,9]), type='l')
plot(rdate,(Depo_kgy[,10]-REs_kgy[,10]), type='l')

ninini<-rowSums(n)
plot(rdate,ninini, type='l')



vvvv1<-(depo1_Phg_ug_m2_d-res1_Phg_ug_m2_d)*a1
vvvv2<-(depo2_Phg_ug_m2_d-res2_Phg_ug_m2_d)*a2
vvvv3<-(depo3_Phg_ug_m2_d-res3_Phg_ug_m2_d)*a3
vvvv4<-(depo4_Phg_ug_m2_d-res4_Phg_ug_m2_d)*a4
vvvv5<-(depo5_Phg_ug_m2_d-res5_Phg_ug_m2_d)*a5
vvvv6<-(depo6_Phg_ug_m2_d-res6_Phg_ug_m2_d)*a6
vvvv7<-(depo7_Phg_ug_m2_d-res7_Phg_ug_m2_d)*a7
vvvv8<-(depo8_Phg_ug_m2_d-res8_Phg_ug_m2_d)*a8
vvvv9<-(depo9_Phg_ug_m2_d-res9_Phg_ug_m2_d)*a9
vvvv10<-(depo10_Phg_ug_m2_d-res10_Phg_ug_m2_d)*a10

plot(vvvv1/10^9)
plot(vvvv2/10^9)
plot(vvvv3/10^9)
plot(vvvv4/10^9)



plot(depo1_Phg_ug_m2_d-res1_Phg_ug_m2_d)
plot(vvvv3[1431:1442]/10^9*365)

m1<-mean(vvvv1[1431:1442]/10^9)
m2<-mean(vvvv2[1431:1442]/10^9)
m3<-mean(vvvv3[1431:1442]/10^9)
m4<-mean(vvvv4[1431:1442]/10^9)
m5<-mean(vvvv5[1431:1442]/10^9)
m6<-mean(vvvv6[1431:1442]/10^9)
m7<-mean(vvvv7[1431:1442]/10^9)
m8<-mean(vvvv8[1431:1442]/10^9)
m9<-mean(vvvv9[1431:1442]/10^9)
m10<-mean(vvvv10[1431:1442]/10^9)

(m1+m2+m3+m4+m5+m6+m7+m8+m9+m10)*365

netttttttoo<-(vvvv1+vvvv2+vvvv3+vvvv4+vvvv5+vvvv6+vvvv7+vvvv8+vvvv9+vvvv10)/10^9*365  #ug d-1 -->/10^9*365 

  plot(netttttttoo)#

plot(depo1_Phg_ug_m2_d-res1_Phg_ug_m2_d)
plot(depo2_Phg_ug_m2_d-res2_Phg_ug_m2_d)
plot(depo3_Phg_ug_m2_d-res3_Phg_ug_m2_d)
plot(depo4_Phg_ug_m2_d-res4_Phg_ug_m2_d)
plot(depo5_Phg_ug_m2_d-res5_Phg_ug_m2_d)
plot(depo6_Phg_ug_m2_d-res6_Phg_ug_m2_d)
plot(depo7_Phg_ug_m2_d-res7_Phg_ug_m2_d)
plot(depo8_Phg_ug_m2_d-res8_Phg_ug_m2_d)
plot(depo9_Phg_ug_m2_d-res9_Phg_ug_m2_d)
plot(depo10_Phg_ug_m2_d-res10_Phg_ug_m2_d)

















ugd<-cbind(Depo_ugd,REs_ugd)
kgy<-cbind(Depo_kgy,REs_kgy)
write.table(ugd,file='Dep_res_ugd_allbasin.txt')
write.table(kgy,file='Dep_res_kgy_allbasin.txt')

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

b3b <-(depo3b_Phg_ug_d-res3b_Phg_ug_d)/10^6  # g d-1
bb3c<-(depo3c_hg_ug_d-res3c_hg_ug_d)/10^6  

b4b <-(depo4b_Phg_ug_d-res4b_Phg_ug_d)/10^6  # g d-1
bb4c<-(depo4c_hg_ug_d-res4c_hg_ug_d)/10^6  

b5b <-(depo5b_Phg_ug_d-res5b_Phg_ug_d)/10^6  #g d-1
bb5c<-(depo5c_hg_ug_d-res5c_hg_ug_d)/10^6  

b6b <-(depo6b_Phg_ug_d-res6b_Phg_ug_d)/10^6  # g d-1
bb6c<-(depo6c_hg_ug_d-res6c_hg_ug_d)/10^6  

b7b<- (depo7b_Phg_ug_d-res7b_Phg_ug_d)/10^6  # g d-1
bb7c<-(depo7c_hg_ug_d-res7c_hg_ug_d)/10^6  

b8b <-(depo8b_Phg_ug_d-res8b_Phg_ug_d)/10^6  # g d-1
bb8c<-(depo8c_hg_ug_d-res8c_hg_ug_d)/10^6  

b9b <-(depo9b_Phg_ug_d-res9b_Phg_ug_d)/10^6  # g d-1
bb9c<-(depo9c_hg_ug_d-res9c_hg_ug_d)/10^6  

b10b <-(depo10b_Phg_ug_d-res10b_Phg_ug_d)/10^6  # g d-1
bb10c<-(depo10c_hg_ug_d-res10c_hg_ug_d)/10^6  

plot(bb7)
plot(b2)

netto1<-(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10)*365/10^9   #kgy
netto2<-(bb1+bb2+bb3+bb4+bb5+bb6+bb7+bb8+bb9+bb10)/10^9*365

netto3<-(b1b+b2b+b3b+b4b+b5b+b6b+b7b+b8b+b9b+b10b)/10^3*365
netto4<-(bb1c+bb2c+bb3c+bb4c+bb5c+bb6c+bb7c+bb8c+bb9c+bb10c)*365/10^3

risospensione_ug_m2_d<-data.frame(res1_hg_ug_m2_d,res2_hg_ug_m2_d,res3_hg_ug_m2_d,res4_hg_ug_m2_d,res5_hg_ug_m2_d,
                                  res6_hg_ug_m2_d,res7_hg_ug_m2_d,res8_hg_ug_m2_d,res9_hg_ug_m2_d,res10_hg_ug_m2_d)

depo_ug_m2_d<-data.frame(depo1_Phg_ug_m2_d,depo2_Phg_ug_m2_d,depo3_Phg_ug_m2_d,depo4_Phg_ug_m2_d,depo5_Phg_ug_m2_d,
                         depo6_Phg_ug_m2_d,depo7_Phg_ug_m2_d,depo8_Phg_ug_m2_d,depo9_Phg_ug_m2_d,depo10_Phg_ug_m2_d)

write.table(risospensione_ug_m2_d, file='risospensione_ug_m2_d.txt')   # g d-1
write.table(depo_ug_m2_d, file='depo_ug_m2_d.txt')   # g d-1


alll_bal<-data.frame(bb1c,bb2c,bb3c,bb4c,bb5c,bb6c,bb7c,bb8c,bb9c,bb10c)/1000
alll_bal*365


write.table(alll_bal, file='alll_bal.txt')   # g d-1

plot(netto3, type='l')
plot(netto4, type='l')

plot(depo1_Phg_kg_y-res1_Phg_kg_y,type='l',col='blue')
plot(depo2_Phg_kg_y-res2_Phg_kg_y,type='l',col='blue')


Hg_depo<-cbind(depo1_Phg_kg_y,depo2_Phg_kg_y,depo3_Phg_kg_y,depo4_Phg_kg_y,
               depo5_Phg_kg_y,depo6_Phg_kg_y,depo7_Phg_kg_y,depo8_Phg_kg_y,
               depo9_Phg_kg_y,depo10_Phg_kg_y)

Hg_depoB<-cbind(depo1b_Phg_ug_d,depo2b_Phg_ug_d,depo3b_Phg_ug_d,depo4b_Phg_ug_d,depo5b_Phg_ug_d,
                depo6b_Phg_ug_d,depo7b_Phg_ug_d,depo8b_Phg_ug_d,depo9b_Phg_ug_d,depo10b_Phg_ug_d)

#Hg_depoC<-cbind(depo1c_hg_ug_d,depo2c_hg_ug_d,depo3c_hg_ug_d,depo4c_hg_ug_d,depo5c_hg_ug_d,
        #        depo6c_hg_ug_d,depo7c_hg_ug_d,depo8c_hg_ug_d,depo9c_hg_ug_d,depo10c_hg_ug_d)

Hg_res<-cbind(res1_Phg_kg_y,res2_Phg_kg_y,res3_Phg_kg_y,res4_Phg_kg_y,res5_Phg_kg_y,
              res6_Phg_kg_y,res7_Phg_kg_y,res8_Phg_kg_y,res9_Phg_kg_y,res10_Phg_kg_y)

Hg_resB<-cbind(res1b_Phg_ug_d,res2b_Phg_ug_d,res3b_Phg_ug_d,res4b_Phg_ug_d,res5b_Phg_ug_d,
               res6b_Phg_ug_d,res7b_Phg_ug_d,res8b_Phg_ug_d,res9b_Phg_ug_d,res10b_Phg_ug_d)

Hg_resC<-cbind(res1c_hg_ug_d,res2c_hg_ug_d,res3c_hg_ug_d,res4c_hg_ug_d,res5c_hg_ug_d,
               res6c_hg_ug_d,res7c_hg_ug_d,res8c_hg_ug_d,res9c_hg_ug_d,res10c_hg_ug_d)

Hg_res_tot<-rowSums(Hg_res)
Hg_depo_tot<-rowSums(Hg_depo)

Hg_res_totB<-rowSums(Hg_resB)*365/10^9
Hg_depo_totB<-rowSums(Hg_depoB)*365/10^9

Hg_res_totC<-rowSums(Hg_resC)*365/10^9
Hg_depo_totC<-rowSums(Hg_depoC)*365/10^9

sed_bal<-data.frame(Hg_res_tot,Hg_depo_tot,Hg_res_totB,Hg_depo_totB,Hg_res_totC,Hg_depo_totC, 
                     netto1,netto2,netto3,netto4)


plot(Hg_depo_tot, type='l')
par(new=T)
plot(Hg_depo_totB, type='l', col=2)
par(new=T)
plot(Hg_depo_totC, type='l', col=3)

plot(Hg_res_tot, type='l')
par(new=T)
plot(Hg_res_totB, type='l', col=2)
par(new=T)
plot(Hg_res_totC, type='l', col=3)

write.table(sed_bal,'sed_balb.txt')

net1_allbox<-Hg_depo-Hg_res  #.kgy
net1B_allbox<-Hg_depoB-Hg_resB  #.ugd

rowSums(net1_allbox)

write.table(net1_allbox,'net1_allbox.txt')
write.table(net1B_allbox,'net1B_allbox.txt')
write.table(net1C_allbox,'net1C_allbox.txt')

head(rowSums(net1C_allbox/10^9*365))

NEt_Net<-Hg_depo_tot-Hg_res_tot

plot(net1_allbox$depo1_Phg_kg_y)

str(net1_allbox)

plot(rdate,Hg_depo_tot,col='blue' ,type='l', ylim=c(-1000,12000))
par(new=T)
plot(rdate,Hg_res_tot,col='red', type='l',ylim=c(-1000,12000))
par(new=T)
plot(rdate,NEt_Net,col='hotpink',type='l',ylim=c(-1000,12000))


df_sed<-cbind(Hg_depo_tot,Hg_res_tot,NEt_Net)
write.table(df_sed,'sedimenti_budget.txt')


par(mfrow=c(1,1))
head(NEt_Net,50)

plot(NEt_Net,col='hotpink',type='b',  ylim=c(0,2000))
plot(NEt_Net,col='hotpink',type='b')

NEt_Net_media<-tapply(NEt_Net[2:692041], rep(1:(length(NEt_Net[2:692041])/8760),each = 8760),mean)
NET_deposited_media<-tapply(NET_deposited[2:692041], rep(1:(length(NET_deposited[2:692041])/8760),each = 8760),mean)

plot(NEt_Net_media,col='hotpink',type='b',  ylim=c(0,2000))





netto1[1431:1442]
netto2[1431:1442]*365
netto1[1431:1442]
netto1[1431:1442]
