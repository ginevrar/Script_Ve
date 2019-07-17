setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\Reference_OK\\ref2')     #sim_cl
 setwd('D:\\Lunga')     #sim_cl

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


Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 


SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
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
fPOM  <-POMs/(TOTs)
fsilt <-silts/(TOTs)

fPOM2  <-POMs/(POMs+silts)
fsilt2 <-silts/(POMs+silts)


plot(fPOM$wn1,type='l')
plot(fsilt$sn1,type='l')

POM_depo_m_h<-5.0112/24   #depo m h-1
silt_depo_m_h<-8.919936/24  

depo_media1<- (POM_depo_m_h *fPOM$wn1) + (silt_depo_m_h*fsilt$wn1) #m/h
depo_media2<- (POM_depo_m_h *fPOM$wn2) + (silt_depo_m_h*fsilt$wn2)  
depo_media3<- (POM_depo_m_h *fPOM$wn3) + (silt_depo_m_h*fsilt$wn3) 
depo_media4<- (POM_depo_m_h *fPOM$wn4) + (silt_depo_m_h*fsilt$wn4)  
depo_media5<- (POM_depo_m_h *fPOM$wn5) + (silt_depo_m_h*fsilt$wn5)  
depo_media6<- (POM_depo_m_h *fPOM$wc6) + (silt_depo_m_h*fsilt$wc6) 
depo_media7<- (POM_depo_m_h *fPOM$wc7) + (silt_depo_m_h*fsilt$wc7) #
depo_media8<- (POM_depo_m_h *fPOM$ws8) + (silt_depo_m_h*fsilt$ws8) #
depo_media9<- (POM_depo_m_h *fPOM$ws9) + (silt_depo_m_h*fsilt$ws9) #
depo_media10<-(POM_depo_m_h*fPOM$ws10) + (silt_depo_m_h*fsilt$ws10) #

depo1_Phg_ug_m2_h<-depo_media1*Phgs$wn1        #m/day *ug/m3 = ug m2 d-1 
depo2_Phg_ug_m2_h<-depo_media2*Phgs$wn2        
depo3_Phg_ug_m2_h<-depo_media3*Phgs$wn3        # 
depo4_Phg_ug_m2_h<-depo_media4*Phgs$wn4         
depo5_Phg_ug_m2_h<-depo_media5*Phgs$wn5 
depo6_Phg_ug_m2_h<-depo_media6*Phgs$wc6  
depo7_Phg_ug_m2_h<-depo_media7*Phgs$wc7      
depo8_Phg_ug_m2_h<-depo_media8*Phgs$ws8 
depo9_Phg_ug_m2_h<-depo_media9*Phgs$ws9  
depo10_Phg_ug_m2_h<-depo_media10*Phgs$ws10    

depo1_Phg_kg_y<-depo1_Phg_ug_m2_h*a1/10^9*365*24
depo2_Phg_kg_y<-depo2_Phg_ug_m2_h*a2/10^9*365*24
depo3_Phg_kg_y<-depo3_Phg_ug_m2_h*a3/10^9*365*24
depo4_Phg_kg_y<-depo4_Phg_ug_m2_h*a4/10^9*365*24
depo5_Phg_kg_y<-depo5_Phg_ug_m2_h*a5/10^9*365*24
depo6_Phg_kg_y<-depo6_Phg_ug_m2_h*a6/10^9*365*24
depo7_Phg_kg_y<-depo7_Phg_ug_m2_h*a7/10^9*365*24
depo8_Phg_kg_y<-depo8_Phg_ug_m2_h*a8/10^9*365*24
depo9_Phg_kg_y<-depo9_Phg_ug_m2_h*a9/10^9*365*24
depo10_Phg_kg_y<-depo10_Phg_ug_m2_h*a10/10^9*365*24

depo1b_Phg_ug_h<-depo1_Phg_ug_m2_h*a1
depo2b_Phg_ug_h<-depo2_Phg_ug_m2_h*a2
depo3b_Phg_ug_h<-depo3_Phg_ug_m2_h*a3
depo4b_Phg_ug_h<-depo4_Phg_ug_m2_h*a4
depo5b_Phg_ug_h<-depo5_Phg_ug_m2_h*a5
depo6b_Phg_ug_h<-depo6_Phg_ug_m2_h*a6
depo7b_Phg_ug_h<-depo7_Phg_ug_m2_h*a7
depo8b_Phg_ug_h<-depo8_Phg_ug_m2_h*a8
depo9b_Phg_ug_h<-depo9_Phg_ug_m2_h*a9
depo10b_Phg_ug_h<-depo10_Phg_ug_m2_h*a10

DEP_ugh<-cbind(depo1b_Phg_ug_h,depo2b_Phg_ug_h,depo3b_Phg_ug_h,depo4b_Phg_ug_h,depo5b_Phg_ug_h,
               depo6b_Phg_ug_h,depo7b_Phg_ug_h,depo8b_Phg_ug_h, depo9b_Phg_ug_h,depo10b_Phg_ug_h)
 
DEP_ugh_all<-rowSums(DEP_ugh)

DEP_kgh<-sum(DEP_ugh_all[175530:184340])/10^9   #kg h-1
DEP_kgd<-DEP_kgh*24; DEP_kgd


Depo_kgy<-cbind(depo1_Phg_kg_y,depo2_Phg_kg_y,depo3_Phg_kg_y,depo4_Phg_kg_y,depo5_Phg_kg_y,
               depo6_Phg_kg_y,depo7_Phg_kg_y,depo8_Phg_kg_y, depo9_Phg_kg_y,depo10_Phg_kg_y)


POM_res1_m_h<-POM_res$sn1/24      #
silt_res1_m_h<-silt_res$sn1/24 
POM_res2_m_h<-POM_res$sn2/24  
silt_res2_m_h<-silt_res$sn2/24 # 
POM_res3_m_h<-POM_res$sn3/24      #res m/day * 
silt_res3_m_h<-silt_res$sn3/24#  
POM_res4_m_h<-POM_res$sn4/24
silt_res4_m_h<-silt_res$sn4/24
POM_res5_m_h<-POM_res$sn5/24
silt_res5_m_h<-silt_res$sn5/24
POM_res6_m_h<-POM_res$sc6/24
silt_res6_m_h<-silt_res$sc6/24
POM_res7_m_h<-POM_res$sc7/24
silt_res7_m_h<-silt_res$sc7/24
POM_res8_m_h<-POM_res$ss8/24
silt_res8_m_h<-silt_res$ss8/24
POM_res9_m_h<-POM_res$ss9/24
silt_res9_m_h<-silt_res$ss9/24
POM_res10_m_h<-POM_res$ss10/24
silt_res10_m_h<-silt_res$ss10/24

res_media1<- (POM_res1_m_h *fPOM$sn1) + (silt_res1_m_h*fsilt$sn1) #m/h
res_media1B<- (POM_res1_m_h *fPOM2$sn1) + (silt_res1_m_h*fsilt2$sn1) #m/h
res_media2<- (POM_res2_m_h *fPOM$sn2) + (silt_res2_m_h*fsilt$sn2) #
res_media3<- (POM_res3_m_h *fPOM$sn3) + (silt_res3_m_h*fsilt$sn3) 
res_media4<- (POM_res4_m_h *fPOM$sn4) + (silt_res4_m_h*fsilt$sn4) 
res_media5<- (POM_res5_m_h *fPOM$sn5) + (silt_res5_m_h*fsilt$sn5) 
res_media6<- (POM_res6_m_h *fPOM$sc6) + (silt_res6_m_h*fsilt$sc6) 
res_media7<- (POM_res7_m_h *fPOM$sc7) + (silt_res7_m_h*fsilt$sc7) 
res_media8<- (POM_res8_m_h *fPOM$ss8) + (silt_res8_m_h*fsilt$ss8) 
res_media9<- (POM_res9_m_h *fPOM$ss9) + (silt_res9_m_h*fsilt$ss9) 
res_media10<-(POM_res10_m_h*fPOM$ss10)+ (silt_res10_m_h*fsilt$ss10) 

res1_Phg_ug_m2_h<-res_media1*Phgs$sn1 #/0.6 #$sn1   #m h-1 * ug m-3   = ug m-2 d
res2_Phg_ug_m2_h<-res_media2*Phgs$sn2 #/0.6 #$sn2      
res3_Phg_ug_m2_h<-res_media3*Phgs$sn3 ##/0.6 #$sn3   
res4_Phg_ug_m2_h<-res_media4*Phgs$sn4#/0.6 #$sn4   
res5_Phg_ug_m2_h<-res_media5*Phgs$sn5#/0.6 #$sn5     
res6_Phg_ug_m2_h<-res_media6*Phgs$sc6#/0.6 #$sc6    
res7_Phg_ug_m2_h<-res_media7*Phgs$sc7#/0.6 #$sc7     
res8_Phg_ug_m2_h<-res_media8*Phgs$ss8#/0.6 #$ss8     
res9_Phg_ug_m2_h<-res_media9*Phgs$ss9#/0.6 #$ss9#m d-1 * 
res10_Phg_ug_m2_h<-res_media10*Phgs$ss10#/0.6 #$ss10    

res1B_Phg_ug_m2_h<-(silt_res1_m_h*SEDhg$sn1*silts$sn1)+(POM_res1_m_h*SEDhg$sn1*POMs$sn1)
res1C_Phg_ug_m2_h<- res_media1B*SEDhg$sn1*TOTs$sn1/10^3  # m h-1*ng g-1*g m-3  = ng m-2 h-1
res1D_Phg_ug_m2_h<- res_media1B*SEDhg$sn1*TOTs$sn1
res1E_Phg_ug_m2_h<- res_media1*SEDhg$sn1*(silts$sn1+POMs$sn1)
res1_Phg_ug_m2_hxx<-res_media1B*Phgs$sn1 #/0.6 #$sn1   #m h-1 * ug m-3   = ug m-2 d

head(res1B_Phg_ug_m2_h)
head(res1C_Phg_ug_m2_h)
head(res1D_Phg_ug_m2_h)
head(res1E_Phg_ug_m2_h)
head(res1_Phg_ug_m2_hxx)

#/0.6 #$sn1   #m h-1 * ug m-3   = ug m-2 d

res1_Phg_ug_m2_h

REs_ugd<-cbind(res1_Phg_ug_m2_h,res2_Phg_ug_m2_h,res3_Phg_ug_m2_h,res4b_Phg_ug_d,res5b_Phg_ug_d,
               res6b_Phg_ug_d,res7b_Phg_ug_d,res8b_Phg_ug_d, res9b_Phg_ug_d,res10b_Phg_ug_d)

tail(rdate[175530:184340])  ## Annno 1920

res1_Phg_ug_h<-res1_Phg_ug_m2_h*a1 
res2_Phg_ug_h<-res2_Phg_ug_m2_h*a2 
res3_Phg_ug_h<-res3_Phg_ug_m2_h*a3 
res4_Phg_ug_h<-res4_Phg_ug_m2_h*a4 
res5_Phg_ug_h<-res5_Phg_ug_m2_h*a5 
res6_Phg_ug_h<-res6_Phg_ug_m2_h*a6 
res7_Phg_ug_h<-res7_Phg_ug_m2_h*a7
res8_Phg_ug_h<-res8_Phg_ug_m2_h*a8
res9_Phg_ug_h<-res9_Phg_ug_m2_h*a9
res10_Phg_ug_h<-res10_Phg_ug_m2_h*a10

REs_ugh<-cbind(res1_Phg_ug_h,res2_Phg_ug_h,res3_Phg_ug_h,res4_Phg_ug_h,res5_Phg_ug_h,
               res6_Phg_ug_h,res7_Phg_ug_h,res8_Phg_ug_h, res9_Phg_ug_h,res10_Phg_ug_h)

REs_ugh_all<-rowSums(REs_ugh)

REs_kgh<-sum(REs_ugh_all[175530:184340])/10^9   #kg h-1
REs_kgd<-REs_kgh*24; REs_kgd

DEP_kgd-REs_kgd

a<-(rowSums(DEP_ugh-REs_ugh)/10^9)   # kg h-1)
plot(rdate,a*365*24,type='l')

a*365*24

0.05*24*365
