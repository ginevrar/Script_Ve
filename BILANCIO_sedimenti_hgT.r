# total output from run 1900-2100 ---> 1:2427
setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61/piuresIN')

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

sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
							                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
							                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
							                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

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

DEPO_sand<-read.csv("Sand_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_sand)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
								      'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
								      'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
								      'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

RESUS_sand<-read.csv("Sand_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_sand)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
										'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
										'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
										'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
# aree box
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07; a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07
aree<-c(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
#---------- Rapporto tra le Kd e hg-----------------
kdsilt<-1.5*10^5; kdPOM<-2*10^5; kdsand<-1
kdtot<-kdPOM+kdsilt+kdsand
fhgPOM<-(kdPOM/kdtot); fhgsilt<-(kdsilt/kdtot); fhgsand<-(kdsand/kdtot)

p<-POMs$wn1*SEDhg$wn1
s<-silts$wn1*SEDhg$wn1
z<-p+s
w<-TOTs$wn1*SEDhg$wn1

plot(z, type='l')
par(new=T)
plot(w, type='l', col='red',lty=2)

# POM DEPOSITION [m d-1]*[g m-3] --> [g m-2 d]
POM_dep1 <-DEPO_POM$wn1*POMs$wn1;     #POM_dep1b<-(DEPO_POM$wn1)*POMs$wn1*5.46E+7/1.2600; 

plot(POM_dep1, ylim=c(0,200), type='l')
par(new=T)
plot(POM_res1,ylim=c(0,200), type='l',col=2,lty=2)

plot(POMs$wn2, type='l')

POM_dep2<-DEPO_POM$wn2*POMs$wn2; POM_dep3<-DEPO_POM$wn3*POMs$wn3; POM_dep4<-DEPO_POM$wn4*POMs$wn4;POM_dep5<-DEPO_POM$wn5*POMs$wn5
POM_dep6<-DEPO_POM$wc6*POMs$wc6; POM_dep7<-DEPO_POM$wc7*POMs$wc7; POM_dep8<-DEPO_POM$ws8*POMs$ws8;POM_dep9<-DEPO_POM$ws9*POMs$ws9; POM_dep10<-DEPO_POM$ws10*POMs$ws10
# silt DEPOSITION [m d-1]*[g m-3] --> [g m-2 d]
silt_dep1<-DEPO_silt$wn1*silts$wn1; silt_dep2<-DEPO_silt$wn2*silts$wn2; silt_dep3<-DEPO_silt$wn3*silts$wn3; silt_dep4<-DEPO_silt$wn4*silts$wn4;silt_dep5<-DEPO_silt$wn5*silts$wn5
silt_dep6<-DEPO_silt$wc6*silts$wc6;  silt_dep7<-DEPO_silt$wc7*silts$wc7; silt_dep8<-DEPO_silt$ws8*silts$ws8;silt_dep9<-DEPO_silt$ws9*silts$ws9; silt_dep10<-DEPO_silt$ws10*silts$ws10
# sand DEPOSITION [m d-1]*[g m-3] --> [g m-2 d]
sand_dep1<-DEPO_sand$wn1*sands$wn1; sand_dep2<-DEPO_sand$wn2*sands$wn2; sand_dep3<-DEPO_sand$wn3*sands$wn3; sand_dep4<-DEPO_sand$wn4*sands$wn4; sand_dep5<-DEPO_sand$wn5*sands$wn5
sand_dep6<-DEPO_sand$wc6*sands$wc6; sand_dep7<-DEPO_sand$wc7*sands$wc7; sand_dep8<-DEPO_sand$ws8*sands$ws8; sand_dep9<-DEPO_sand$ws9*sands$ws9; sand_dep10<-DEPO_sand$ws10*sands$ws10
# POM RESUSPENSION [m d-1]*[g m-3] --> [g m-2 d]
POM_res1<-RESUS_POM$sn1*POMs$sn1; POM_res2<-RESUS_POM$sn2*POMs$sn2; POM_res3<-RESUS_POM$sn3*POMs$sn3; POM_res4<-RESUS_POM$sn4*POMs$sn4;POM_res5<-RESUS_POM$sn5*POMs$sn5
POM_res6<-RESUS_POM$sc6*POMs$sc6; POM_res7<-RESUS_POM$sc7*POMs$sc7; POM_res8<-RESUS_POM$ss8*POMs$ss8; POM_res9<-RESUS_POM$ss9*POMs$ss9; POM_res10<-RESUS_POM$ss10*POMs$ss10
# silt RESUSPENSION [m d-1]*[g m-3] --> [g m-2 d]
silt_res1<-RESUS_silt$sn1*silts$sn1; silt_res2<-RESUS_silt$sn2*silts$sn2; silt_res3<-RESUS_silt$sn3*silts$sn3; silt_res4<-RESUS_silt$sn4*silts$sn4;silt_res5<-RESUS_silt$sn5*silts$sn5
silt_res6<-RESUS_silt$sc6*silts$sc6;silt_res7<-RESUS_silt$sc7*silts$sc7; silt_res8<-RESUS_silt$ss8*silts$ss8;silt_res9<-RESUS_silt$ss9*silts$ss9; silt_res10<-RESUS_silt$ss10*silts$ss10


head(DEPO_silt$wn1)
head(silts$wn1)

head(silts$sn1)
head(RESUS_silt$sn1)
plot(RESUS_silt$sn1)

plot(head(silts$sn1,35), ylim=c(830142.9,834142.9))
par(new=T)                    
plot(head(silts$dsn1,35),pch=19, ylim=c(830142.9,834142.9))
par(new=T)                    
plot(head(silts$osn1,35),pch=19, ylim=c(830142.9,834142.9))

head(silt_dep1)
head(silt_res1)


plot(silt_dep6)
plot(silt_res6)

head(POMs$wn1)
head(DEPO_POM$wn1)
head(POM_dep1)
head(POM_res1)


# sand RESUSPENSION [m d-1]*[g m-3] --> [g m-2 d]
sand_res1<-RESUS_sand$sn1*sands$sn1; sand_res2<-RESUS_sand$sn2*sands$sn2; sand_res3<-RESUS_sand$sn3*sands$sn3; sand_res4<-RESUS_sand$sn4*sands$sn4;sand_res5<-RESUS_sand$sn5*sands$sn5
sand_res6<-RESUS_sand$sc6*sands$sc6;sand_res7<-RESUS_sand$sc7*sands$sc7; sand_res8<-RESUS_sand$ss8*sands$ss8;sand_res9<-RESUS_sand$ss9*sands$ss9; sand_res10<-RESUS_sand$ss10*sands$ss10

# Hg-POM DEPOSITION [g m-2 d]*[ng g-1]*m2  --> [ng d]
Hg_depo1_pom<- POM_dep1*SEDhg$wn1*a1*fhgPOM; Hg_depo2_pom<-POM_dep2*SEDhg$wn2*a2*fhgPOM; Hg_depo3_pom<-POM_dep3*SEDhg$wn3*a3*fhgPOM; Hg_depo4_pom<-POM_dep4*SEDhg$wn4*a4*fhgPOM; Hg_depo5_pom<-POM_dep5*SEDhg$wn5*a5*fhgPOM;
Hg_depo6_pom<- POM_dep6*SEDhg$wc6*a6*fhgPOM; Hg_depo7_pom<-POM_dep7*SEDhg$wc7*a7*fhgPOM; Hg_depo8_pom<-POM_dep8*SEDhg$ws8*a8*fhgPOM; Hg_depo9_pom<-POM_dep9*SEDhg$ws9*a9*fhgPOM; Hg_depo10_pom<-POM_dep10*SEDhg$ws10*a10*fhgPOM;

# Hg-silt DEPOSITION [g m-2 d]*[ng g-1]*m2  --> [ng d]
Hg_depo1_silt<-silt_dep1*SEDhg$wn1*a1*fhgsilt; Hg_depo2_silt<-silt_dep2*SEDhg$wn2*a2*fhgsilt; Hg_depo3_silt<-silt_dep3*SEDhg$wn3*a3*fhgsilt; Hg_depo4_silt<-silt_dep4*SEDhg$wn4*a4*fhgsilt;Hg_depo5_silt<-silt_dep5*SEDhg$wn5*a5*fhgsilt;
Hg_depo6_silt<-silt_dep6*SEDhg$wc6*a6*fhgsilt; Hg_depo7_silt<- silt_dep7*SEDhg$wc7*a7*fhgsilt; Hg_depo8_silt<-silt_dep8*SEDhg$ws8*a8*fhgsilt;Hg_depo9_silt<-silt_dep9*SEDhg$ws9*a9*fhgsilt;Hg_depo10_silt<-silt_dep10*SEDhg$ws10*a10*fhgsilt;

# Hg-sand DEPOSITION [g m-2 d]*[ng g-1]*m2  --> [ng d]
Hg_depo1_sand<-sand_dep1*SEDhg$wn1*a1*fhgsand; Hg_depo2_sand<-sand_dep2*SEDhg$wn2*a2*fhgsand; Hg_depo3_sand<-sand_dep3*SEDhg$wn3*a3*fhgsand; Hg_depo4_sand<-sand_dep4*SEDhg$wn4*a4*fhgsand; Hg_depo5_sand<-sand_dep5*SEDhg$wn5*a5*fhgsand;
Hg_depo6_sand<-sand_dep6*SEDhg$wc6*a6*fhgsand; Hg_depo7_sand<-sand_dep7*SEDhg$wc7*a7*fhgsand; Hg_depo8_sand<-sand_dep8*SEDhg$ws8*a8*fhgsand; Hg_depo9_sand<-sand_dep9*SEDhg$ws9*a9*fhgsand; Hg_depo10_sand<-sand_dep10*SEDhg$ws10*a10*fhgsand;

# Hg-POM RESUSPENSION [g m-2 d]*[ng g-1]*m2  --> [ng d]
Hg_res1_pom<-POM_res1*SEDhg$sn1*a1*fhgPOM; Hg_res2_pom<-POM_res2*SEDhg$sn2*a2*fhgPOM; Hg_res3_pom<-POM_res3*SEDhg$sn3*a3*fhgPOM; Hg_res4_pom<-POM_res4*SEDhg$sn4*a4*fhgPOM; Hg_res5_pom<-POM_res5*SEDhg$sn5*a5*fhgPOM;
Hg_res6_pom<-POM_res6*SEDhg$sc6*a6*fhgPOM; Hg_res7_pom<-POM_res7*SEDhg$sc7*a7*fhgPOM; Hg_res8_pom<-POM_res8*SEDhg$ss8*a8*fhgPOM; Hg_res9_pom<-POM_res9*SEDhg$ss9*a9*fhgPOM; Hg_res10_pom<-POM_res10*SEDhg$ss10*a10*fhgPOM;

# Hg-silt RESUSPENSION [g m-2 d]*[ng g-1]*m2  --> [ng d]
Hg_res1_silt<-silt_res1*SEDhg$sn1*a1*fhgsilt; Hg_res2_silt<-silt_res2*SEDhg$sn2*a2*fhgsilt; Hg_res3_silt<-silt_res3*SEDhg$sn3*a3*fhgsilt; Hg_res4_silt<-silt_res4*SEDhg$sn4*a4*fhgsilt;Hg_res5_silt<-silt_res5*SEDhg$sn5*a5*fhgsilt;
Hg_res6_silt<-silt_res6*SEDhg$sc6*a6*fhgsilt; Hg_res7_silt<- silt_res7*SEDhg$sc7*a7*fhgsilt; Hg_res8_silt<-silt_res8*SEDhg$ss8*a8*fhgsilt;Hg_res9_silt<-silt_res9*SEDhg$ss9*a9*fhgsilt;Hg_res10_silt<-silt_res10*SEDhg$ss10*a10*fhgsilt;

# Hg-sand RESUSPENSION [g m-2 d]*[ng g-1]*m2  --> [ng d]
Hg_res1_sand<-sand_res1*SEDhg$sn1*a1*fhgsand; Hg_res2_sand<-sand_res2*SEDhg$sn2*a2*fhgsand; Hg_res3_sand<-sand_res3*SEDhg$sn3*a3*fhgsand; Hg_res4_sand<-sand_res4*SEDhg$sn4*a4*fhgsand;Hg_res5_sand<-sand_res5*SEDhg$sn5*a5*fhgsand;
Hg_res6_sand<-sand_res6*SEDhg$sc6*a6*fhgsand; Hg_res7_sand<- sand_res7*SEDhg$sc7*a7*fhgsand; Hg_res8_sand<-sand_res8*SEDhg$ss8*a8*fhgsand;Hg_res9_sand<-sand_res9*SEDhg$ss9*a9*fhgsand;Hg_res10_sand<-sand_res10*SEDhg$ss10*a10*fhgsand;

net_solid1<- POM_dep1 + silt_dep1 - POM_res1-silt_res1 				#[g m-2 d]
net_solid2<- POM_dep2  +silt_dep2 - POM_res2-silt_res2 				#[g m-2 d]
net_solid3<- POM_dep3 + silt_dep3 - POM_res3-silt_res3 				#[g m-2 d]
net_solid4<- POM_dep4 + silt_dep4 - POM_res4-silt_res4 				#[g m-2 d]
net_solid5<- POM_dep5 + silt_dep5 - POM_res5-silt_res5				#[g m-2 d]
net_solid6<- POM_dep6 + silt_dep6 - POM_res6-silt_res6 				#[g m-2 d]
net_solid7<- POM_dep7 + silt_dep7 - POM_res7-silt_res7 				#[g m-2 d]
net_solid8<- POM_dep8 + silt_dep8 - POM_res8-silt_res8 				#[g m-2 d]
net_solid9<- POM_dep9 + silt_dep9 - POM_res9-silt_res9 				#[g m-2 d]
net_solid10<- POM_dep10 + silt_dep10-POM_res10-silt_res10 				#[g m-2 d]

net_solid1<- POM_dep1 + silt_dep1 + sand_dep1 - POM_res1 - silt_res1 - sand_res1				#[g m-2 d]
net_solid2<- POM_dep2  +silt_dep2 + sand_dep2 - POM_res2 - silt_res2 	- sand_res2			#[g m-2 d]
net_solid3<- POM_dep3 + silt_dep3 + sand_dep3 - POM_res3 - silt_res3 - sand_res3				#[g m-2 d]
net_solid4<- POM_dep4 + silt_dep4 + sand_dep4 - POM_res4 - silt_res4 - sand_res4				#[g m-2 d]
net_solid5<- POM_dep5 + silt_dep5 + sand_dep5 - POM_res5 - silt_res5	- sand_res5			#[g m-2 d]
net_solid6<- POM_dep6 + silt_dep6 + sand_dep6 - POM_res6 - silt_res6 - sand_res6				#[g m-2 d]
net_solid7<- POM_dep7 + silt_dep7 + sand_dep7 - POM_res7 - silt_res7 - sand_res7				#[g m-2 d]
net_solid8<- POM_dep8 + silt_dep8 + sand_dep8 - POM_res8 - silt_res8 - sand_res8				#[g m-2 d]
net_solid9<- POM_dep9 + silt_dep9 + sand_dep9 - POM_res9 - silt_res9 - sand_res9				#[g m-2 d]
net_solid10<- POM_dep10 + silt_dep10 + sand_dep10 -POM_res10-silt_res10 - sand_res10				#[g m-2 d]

net_hg1  <-(Hg_depo1_pom + Hg_depo1_silt + Hg_depo1_sand - Hg_res1_pom - Hg_res1_silt - Hg_res1_sand)/10^12   # [ng d-1] --> [kg d-1]
net_hg2  <-(Hg_depo2_pom + Hg_depo2_silt + Hg_depo1_sand - Hg_res2_pom - Hg_res2_silt - Hg_res2_sand)/10^12 #[ng d-1]
net_hg3  <-(Hg_depo3_pom + Hg_depo3_silt + Hg_depo1_sand - Hg_res3_pom - Hg_res3_silt - Hg_res3_sand)/10^12 #[ng d-1]
net_hg4  <-(Hg_depo4_pom + Hg_depo4_silt + Hg_depo1_sand - Hg_res4_pom - Hg_res4_silt - Hg_res4_sand)/10^12 #[ng d-1]
net_hg5  <-(Hg_depo5_pom + Hg_depo5_silt + Hg_depo1_sand - Hg_res5_pom - Hg_res5_silt - Hg_res5_sand)/10^12 #[ng d-1]
net_hg6  <-(Hg_depo6_pom + Hg_depo6_silt + Hg_depo1_sand - Hg_res6_pom - Hg_res6_silt - Hg_res6_sand)/10^12 #[ng d-1]
net_hg7  <-(Hg_depo7_pom + Hg_depo7_silt + Hg_depo1_sand - Hg_res7_pom - Hg_res7_silt - Hg_res7_sand)/10^12 #[ng d-1]
net_hg8  <-(Hg_depo8_pom + Hg_depo8_silt + Hg_depo1_sand - Hg_res8_pom - Hg_res8_silt - Hg_res8_sand)/10^12#[ng d-1]
net_hg9  <-(Hg_depo9_pom + Hg_depo9_silt + Hg_depo1_sand - Hg_res9_pom - Hg_res9_silt - Hg_res9_sand)/10^12 #[ng d-1]
net_hg10<-(Hg_depo10_pom + Hg_depo10_silt+ Hg_depo1_sand - Hg_res10_pom- Hg_res10_silt - Hg_res10_sand)/10^12 #[ng d-1]

tot_depo_hgPOM<-(Hg_depo1_pom+Hg_depo2_pom+Hg_depo3_pom+Hg_depo4_pom+Hg_depo5_pom+Hg_depo6_pom+
                 Hg_depo7_pom+Hg_depo8_pom+Hg_depo9_pom+Hg_depo10_pom)/10^12*365

tot_depo_hgsilt<-(Hg_depo1_silt+Hg_depo2_silt+Hg_depo3_silt+Hg_depo4_silt+Hg_depo5_silt+Hg_depo6_silt+
                 Hg_depo7_silt+Hg_depo8_silt+Hg_depo9_silt+Hg_depo10_silt)/10^12*365

tot_depo_hgsand<-(Hg_depo1_sand+Hg_depo2_sand+Hg_depo3_sand+Hg_depo4_sand+Hg_depo5_sand+Hg_depo6_sand+
									Hg_depo7_sand+Hg_depo8_sand+Hg_depo9_sand+Hg_depo10_sand)/10^12*365

tot_res_hgPOM<- (Hg_res1_pom+Hg_res2_pom+Hg_res3_pom+Hg_res4_pom+Hg_res5_pom+Hg_res6_pom+
                Hg_res7_pom+Hg_res8_pom+Hg_res9_pom+Hg_res10_pom)/10^12*365

tot_res_hgsilt<-(Hg_res1_silt+Hg_res2_silt+Hg_res3_silt+Hg_res4_silt+Hg_res5_silt+Hg_res6_silt+
                Hg_res7_silt+Hg_res8_silt+Hg_res9_silt+Hg_res10_silt)/10^12*365

tot_res_hgsand<-(Hg_res1_sand+Hg_res2_sand+Hg_res3_sand+Hg_res4_sand+Hg_res5_sand+Hg_res6_sand+
							   Hg_res7_sand+Hg_res8_sand+Hg_res9_sand+Hg_res10_sand)/10^12*365

TOTD<- tot_depo_hgsand + tot_depo_hgsilt + tot_depo_hgPOM
TOTR<- tot_res_hgsand  + tot_res_hgsilt  + tot_res_hgPOM

plot(TOTD)
plot(TOTR)

#tot_res_hg<- POM_res1+silt_res1+POM_res2+silt_res2+POM_res3+silt_res3+POM_res4+silt_res4+POM_res5+silt_res5+
#            POM_res6+silt_res6+POM_res7+silt_res7+POM_res8+silt_res8+POM_res9+silt_res9+POM_res10+silt_res10

win.graph()
par(mfrow=c(1,3))
plot(tot_depo_hgPOM/1000, col='cyan', type='l',ylim=c(0,200))
par(new=T)
plot(tot_depo_hgsilt/1000, col='darkgoldenrod', type='l',ylim=c(0,200))

plot(tot_res_hgPOM/1000, col='darkgreen',type='l',ylim=c(0,10))
par(new=T)
plot(tot_res_hgsilt/1000, col='orange',type='l',ylim=c(0,10))

win.graph()
par(mfrow=c(2,5), mar=c(2,4,2,4.5))
plot(net_hg1,type='l', col=1, ylab='kg d-1')
par(new=T)
plot(net_solid1,type='l', col='grey',ylab=' ', yaxt='n', lty=2)
y1<-seq(0,1710, by=300)
axis(4,y1)
mtext('g m-2 d',4)

plot(net_hg2,type='l', col=1, ylab='kg d-1')
par(new=T)
plot(net_solid2,type='l', col='grey',ylab=' ', yaxt='n')
y1<-seq(0,1710, by=300)
axis(4,y1)
mtext('g m-2 d',4)

plot(net_hg3,type='l', col=1, ylab='kg d-1')
par(new=T)
plot(net_solid3,type='l', col='grey',ylab=' ', yaxt='n')
y1<-seq(0,1710, by=300)
axis(4,y1)
mtext('g m-2 d',4)

plot(net_hg4,type='l', col=1, ylab='kg d-1')
par(new=T)
plot(net_solid4,type='l', col='grey',ylab=' ', yaxt='n')
y1<-seq(0,1710, by=300)
axis(4,y1)
mtext('g m-2 d',4)

plot(net_hg5,type='l', col=1, ylab='kg d-1')
par(new=T)
plot(net_solid5,type='l', col='grey',ylab=' ', yaxt='n')
y1<-seq(0,1710, by=300)
axis(4,y1)
mtext('g m-2 d',4)

plot(net_hg6,type='l', col=1, ylab='kg d-1')
par(new=T)
plot(net_solid6,type='l', col='grey',ylab=' ', yaxt='n')
y1<-seq(0,1710, by=300)
axis(4,y1)
mtext('g m-2 d',4)

plot(net_hg7,type='l', col=1, ylab='kg d-1')
par(new=T)
plot(net_solid7,type='l', col='grey',ylab=' ', yaxt='n')
y1<-seq(0,1710, by=300)
axis(4,y1)
mtext('g m-2 d',4)

plot(net_hg8,type='l', col=1, ylab='kg d-1')
par(new=T)
plot(net_solid8,type='l', col='grey',ylab=' ', yaxt='n')
y1<-seq(0,1710, by=300)
axis(4,y1)
mtext('g m-2 d',4)

plot(net_hg9,type='l', col=1, ylab='kg d-1')
par(new=T)
plot(net_solid9,type='l', col='grey',ylab=' ', yaxt='n')
y1<-seq(0,1710, by=300)
axis(4,y1)
mtext('g m-2 d',4)

plot(net_hg10,type='l', col=1, ylab='kg d-1')
par(new=T)
plot(net_solid10,type='l', col='grey',ylab=' ', yaxt='n')
y1<-seq(0,1710, by=300)
axis(4,y1)
mtext('g m-2 d',4)

# Net Hg flux from [kg d-1] to [kg y-1]
net_hg1_kg_y <-net_hg1*365; net_hg2_kg_y <-net_hg2*365
net_hg3_kg_y <-net_hg3*365; net_hg4_kg_y <-net_hg4*365
net_hg5_kg_y <-net_hg5*365; net_hg6_kg_y <-net_hg6*365
net_hg7_kg_y <-net_hg7*365; net_hg8_kg_y <-net_hg8*365
net_hg9_kg_y <-net_hg9*365; net_hg10_kg_y <-net_hg10*365



Net_hg_flux<-net_hg1_kg_y+net_hg2_kg_y+net_hg3_kg_y+net_hg4_kg_y+net_hg5_kg_y+net_hg6_kg_y+net_hg7_kg_y+net_hg8_kg_y+net_hg9_kg_y+net_hg10_kg_y

plot(Net_hg_flux,type='l')

plot(tot_depo_hg,col='blue', type='l', ylim=c(-300,20000))
par(new=T)
plot(tot_res_hg, col='red',type='l',ylim=c(-300,20000))

# concentrazioni Hg     [ng g-1]
SEDhg_sed1 <-SEDhg$sn1; SEDhg_dsed1 <-SEDhg$dsn1; SEDhg_sed2  <-SEDhg$sn2; SEDhg_dsed2 <-SEDhg$dsn2
SEDhg_sed3 <-SEDhg$sn3; SEDhg_dsed3 <-SEDhg$dsn3; SEDhg_sed4  <-SEDhg$sn4; SEDhg_dsed4 <-SEDhg$dsn4
SEDhg_sed5 <-SEDhg$sn5; SEDhg_dsed5 <-SEDhg$dsn5; SEDhg_sed6  <-SEDhg$sc6; SEDhg_dsed6 <-SEDhg$dsc6
SEDhg_sed7 <-SEDhg$sc7; SEDhg_dsed7 <-SEDhg$dsc7; SEDhg_sed8  <-SEDhg$ss8; SEDhg_dsed8 <-SEDhg$dss8
SEDhg_sed9 <-SEDhg$ss9; SEDhg_dsed9 <-SEDhg$dss9; SEDhg_sed10 <-SEDhg$ss10; SEDhg_dsed10 <-SEDhg$dss10


#net depo* soilds 10-2   m/y * g/m3 ->10-2g/m2y
#Depo_sed_g_m2y<- (NET_DEPO_cmy_df*Solidi_df)/10^2

Depo1_sed_g_m2y<-(netdepo_sed1/10^2*solids_sed1)
Depo2_sed_g_m2y<-(netdepo_sed2/10^2*solids_sed2)
Depo3_sed_g_m2y<-(netdepo_sed3/10^2*solids_sed3)
Depo4_sed_g_m2y<-(netdepo_sed4/10^2*solids_sed4)
Depo5_sed_g_m2y<-(netdepo_sed5/10^2*solids_sed5)
Depo6_sed_g_m2y<-(netdepo_sed6/10^2*solids_sed6)
Depo7_sed_g_m2y<-(netdepo_sed7/10^2*solids_sed7)
Depo8_sed_g_m2y<-(netdepo_sed8/10^2*solids_sed8)
Depo9_sed_g_m2y<-(netdepo_sed9/10^2*solids_sed9)
Depo10_sed_g_m2y<-(netdepo_sed10/10^2*solids_sed10)



a+b+c+d+e+ff+g+h+i+l

depo_tot_2019<-cbind(a,b,c,d,e,ff,g,h,i)
depo_tutto_2019<-cbind(rowSums(depo_tot_2019),depo_tot_2019)
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

write.table(Net_hg_flux,'Net_hg_flux.txt')
write.table(depo_tutto_2014,'depo2019.txt')
write.table(depo_tutto_sed_ty,'sedBal.txt')
