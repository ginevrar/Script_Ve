
setwd('C:/Users/Ginevra/Dropbox/2017_Venice/114/noRES')
hgT<-read.csv('Total_Hg.csv', skip=1)
names(hgT)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
			 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
			 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 #ng/g  			 
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
			 
POM_res<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
			 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')		
  
silt_res<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(silt_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
			 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')	
			 
hgDOC<-read.csv('DOC_Sorbed_Divalent_Hg.csv', header=FALSE, skip = 1,sep = ",", dec=".")
  names(hgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
			 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')	
hgD<-read.csv('Dissolved_Divalent_Hg.csv', header=FALSE, skip = 1,sep = ",", dec=".")

names(hgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
			 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')	

#aree e profonditÃ boxes	
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07;a4<-8.90E+06; a5<-2.22E+07; 
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

area<-cbind(0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)

d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; 
d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71	

v1<-a1*d1; v2<-a2*d2; v3<-a3*d3; v4<-a4*d4; v5<-a5*d5; v6<-a6*d6;
v7<-a7*d7; v8<-a8*d8; v9<-a9*d9; v10<-a10*d10; 

fPOM<-POMs/TOTs; fsilt<-silts/TOTs

POM_res_m_day<-POM_res     
silt_res_m_day<-silt_res

res_media<- (POM_res_m_day *fPOM) + (silt_res_m_day*fsilt) #m/day
Phgres_ugm2d<-res_media * Phgs ## m/d*ug m3 -> ug m2 d
 
Phgres1_g_d<-(Phgres_ugm2d$wn1*a1)/10^6
Phgres1_kg_y<-Phgres1_g_d*365/1000