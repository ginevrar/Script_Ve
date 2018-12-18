# total output from run 1900-2100 ---> 1:2427
setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')

# reading output concentrations - hg and solids
hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
			 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10', 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

burial<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

bulkD<-read.csv("Sediment_Bulk_Density.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(bulkD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
 
RESUS_silt<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
 
RESUS_POM<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
                
DEPO_silt<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 
 
DEPO_POM<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

# aree box                
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07; a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07
aree<-c(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
                     
ds1<-DEPO_silt$wn1*silts$wn1*a1;     dp1<-DEPO_POM$wn1 *POMs$wn1 *a1    #[m d-1]*[g m-3]*[m-2] = [g d-1]
ds2<-DEPO_silt$wn2*silts$wn2*a2;     dp2<-DEPO_POM$wn2 *POMs$wn2 *a2    #[m d-1]*[g m-3]*[m-2] = [g d-1]
ds3<-DEPO_silt$wn3*silts$wn3*a3;     dp3<-DEPO_POM$wn3 *POMs$wn3 *a3    #[m d-1]*[g m-3]*[m-3] = [g d-1]
ds4<-DEPO_silt$wn4*silts$wn4*a4;     dp4<-DEPO_POM$wn4 *POMs$wn4 *a4    #[m d-1]*[g m-3]*[m-4] = [g d-1]
ds5<-DEPO_silt$wn5*silts$wn5*a5;     dp5<-DEPO_POM$wn5 *POMs$wn5 *a5    #[m d-1]*[g m-3]*[m-5] = [g d-1]
ds6<-DEPO_silt$wc6*silts$wc6*a6;     dp6<-DEPO_POM$wc6 *POMs$wc6 *a6    #[m d-1]*[g m-3]*[m-6] = [g d-1]
ds7<-DEPO_silt$wc7*silts$wc7*a7;     dp7<-DEPO_POM$wc7 *POMs$wc7 *a7    #[m d-1]*[g m-3]*[m-6] = [g d-1]
ds8<-DEPO_silt$ws8*silts$ws8*a8;     dp8<-DEPO_POM$ws8 *POMs$ws8 *a8    #[m d-1]*[g m-3]*[m-6] = [g d-1]
ds9<-DEPO_silt$ws9*silts$ws9*a9;     dp9<-DEPO_POM$ws9 *POMs$ws9 *a9    #[m d-1]*[g m-3]*[m-6] = [g d-1]
ds10<-DEPO_silt$ws10*silts$ws10*a10; dp10<-DEPO_POM$ws10 *POMs$ws10 *a10   #[m d-1]*[g m-3]*[m-6] = [g d-1]

td1<-ds1+dp1; td2<-ds2+dp2; td3<-ds3+dp3; td4<-ds4+dp4; td5<-ds5+dp5
td6<-ds6+dp6; td7<-ds7+dp7; td8<-ds8+dp8; td9<-ds9+dp9; td10<-ds10+dp10

rs1<-RESUS_silt$sn1*silts$sn1*a1; 	  rp1<-RESUS_POM$sn1 *POMs$sn1 *a1   	 #[m d-1]*[g m-3]*[m-2] = [g d-1]
rs2<-RESUS_silt$sn2*silts$sn2*a2;	    rp2<-RESUS_POM$sn2 *POMs$sn2 *a2    	 #[m d-1]*[g m-3]*[m-2] = [g d-1]
rs3<-RESUS_silt$sn3*silts$sn3*a3; 	  rp3<-RESUS_POM$sn3 *POMs$sn3 *a3   	 #[m d-1]*[g m-3]*[m-3] = [g d-1]
rs4<-RESUS_silt$sn4*silts$sn4*a4;	    rp4<-RESUS_POM$sn4 *POMs$sn4 *a4   	 #[m d-1]*[g m-3]*[m-4] = [g d-1]
rs5<-RESUS_silt$sn5*silts$sn5*a5;  	  rp5<-RESUS_POM$sn5 *POMs$sn5 *a5   	 #[m d-1]*[g m-3]*[m-5] = [g d-1]
rs6<-RESUS_silt$sc6*silts$sc6*a6; 	  rp6<-RESUS_POM$sc6 *POMs$sc6 *a6   	 #[m d-1]*[g m-3]*[m-6] = [g d-1]
rs7<-RESUS_silt$sc7*silts$sc7*a7;  	  rp7<-RESUS_POM$sc7 *POMs$sc7 *a7   	 #[m d-1]*[g m-3]*[m-6] = [g d-1]
rs8<-RESUS_silt$ss8*silts$ss8*a8; 	  rp8<-RESUS_POM$ss8 *POMs$ss8 *a8       #[m d-1]*[g m-3]*[m-6] = [g d-1]
rs9<-RESUS_silt$ss9*silts$ss9*a9; 	  rp9<-RESUS_POM$ss9 *POMs$ss9 *a9   	 #[m d-1]*[g m-3]*[m-6] = [g d-1]
rs10<-RESUS_silt$ss10*silts$ss10*a10; rp10<-RESUS_POM$ss10 *POMs$ss10 *a10   #[m d-1]*[g m-3]*[m-6] = [g d-1]

tr1<-rs1+rp1; tr2<-rs2+rp2; tr3<-rs3+rp3; tr4<-rs4+rp4; tr5<-rs5+rp5
tr6<-rs6+rp6; tr7<-rs7+rp7; tr8<-rs8+rp8; tr9<-rs9+rp9; tr10<-rs10+rp10

hgdep1<-td1*SEDhg$wn1*365/10^12	  #[g d-1]*[ng g] = [ng d-1]*365/10^12 = [kg y-1]
hgdep2<-td2*SEDhg$wn2*365/10^12
hgdep3<-td3*SEDhg$wn3*365/10^12
hgdep4<-td4*SEDhg$wn4*365/10^12	
hgdep5<-td5*SEDhg$wn5*365/10^12	
hgdep6<-td6*SEDhg$wc6*365/10^12	
hgdep7<-td7*SEDhg$wc7*365/10^12	
hgdep8<-td8*SEDhg$ws8*365/10^12	
hgdep9<-td9*SEDhg$ws9*365/10^12	
hgdep10<-td10*SEDhg$ws10*365/10^12	

hgres1 <-tr1*SEDhg$sn1*365/10^12	  #[g d-1]*[ng g] = [ng d-1]*365/10^12 = [kg y-1]
hgres2 <-tr2*SEDhg$sn2*365/10^12	
hgres3 <-tr3*SEDhg$sn3*365/10^12	
hgres4 <-tr4*SEDhg$sn4*365/10^12	
hgres5 <-tr5*SEDhg$sn5*365/10^12	
hgres6 <-tr6*SEDhg$sc6*365/10^12	
hgres7 <-tr7*SEDhg$sc7*365/10^12	
hgres8 <-tr8*SEDhg$ss8*365/10^12	
hgres9 <-tr9*SEDhg$ss9*365/10^12	
hgres10<-tr10*SEDhg$ss10*365/10^102	

net1<-hgdep1-hgres1; net2<-hgdep2-hgres2; net3<-hgdep3-hgres3; net4<-hgdep4-hgres4; net5<-hgdep5-hgres5
net6<-hgdep6-hgres6; net7<-hgdep7-hgres7; net8<-hgdep8-hgres8; net9<-hgdep9-hgres9; net10<-hgdep10-hgres10

plot(hgres6)
plot(hgdep6)


sed_bal1<-td1-tr1; sed_bal2<-td2-tr2; sed_bal3<-td3-tr3; sed_bal4<-td4-tr4; sed_bal5<-td5-tr5
sed_bal6<-td6-tr6; sed_bal7<-td7-tr7; sed_bal8<-td8-tr8; sed_bal9<-td9-tr9; sed_bal10<-td10-tr10


plot(td6)
plot(tr6)

plot(net1, col=1,type='l',ylim=c(0,25000))
par(new=T)
plot(net2, col=2,type='l',ylim=c(0,25000))
par(new=T)
plot(net3, col=3,type='l',ylim=c(0,25000))
par(new=T)
plot(net4, col=4,type='l',ylim=c(0,25000))
par(new=T)
plot(net5, col=5,type='l',ylim=c(0,25000))
par(new=T)
plot(net6, col=6,type='l',ylim=c(0,25000))
par(new=T)
plot(net7, col=7,type='l',ylim=c(0,25000))
par(new=T)
plot(net8, col=8,type='l',ylim=c(0,25000))
par(new=T)
plot(net9, col=9,type='l',ylim=c(0,25000))
par(new=T)
plot(net10, col=10,type='l',ylim=c(0,25000))





plot(sed_bal1, col=1,type='l')
par(new=T)
plot(sed_bal2, col=2,type='l',ylim=c(0,25000))
par(new=T)
plot(sed_bal3, col=3,type='l',ylim=c(0,25000))
par(new=T)
plot(sed_bal4, col=4,type='l',ylim=c(0,25000))
par(new=T)
plot(sed_bal5, col=5,type='l',ylim=c(0,25000))
par(new=T)
plot(sed_bal6, col=6,type='l')
par(new=T)
plot(sed_bal7, col=7,type='l',ylim=c(0,25000))
par(new=T)
plot(sed_bal8, col=8,type='l',ylim=c(0,25000))
par(new=T)
plot(sed_bal9, col=9,type='l',ylim=c(0,25000))
par(new=T)
plot(sed_bal10, col=10,type='l',ylim=c(0,25000))
