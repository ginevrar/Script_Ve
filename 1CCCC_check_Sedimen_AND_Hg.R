##92.4% of re-suspension (1.13 10^12 g year?1)
# occurs in the northern basin and 7.6% from the southern basin (9.27 10^10 g year?1).

setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61/')
setwd('C:/Users/gi/Dropbox/NNN61/annuale_piuRES')
setwd('C:/Users/Acer/Dropbox/NNN61/')
setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')

hg<-read.csv('Total_Hg.csv', skip=1,header=FALSE)
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
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10') #ng/g

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
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
#ng /L or ug /m3
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
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

silt_res<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

sand_res<-read.csv("Sand_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sand_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

sand_depos<-read.csv("Sand_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sand_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

#fraction of POM
fPOM  <-POMs/TOTs; fsilt <-silts/TOTs
POM_perc<-POMs/TOTs*100

time.steps <- hg$time;time.steps3 <- time.steps*24*3600; 
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

#area ans depths
a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07
a9<-2.95E+07;a10<-4.06E+07
area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71

# DEPOSITION VELOCITIES # m d-1 / m --> 1 d-1  # depo silt m/day  (0.014 /d)
#depo m/day * depth(m) --> 1/day (0.003 /d)
POM_depo1_1_day<-POM_depos$wn1/d1; POM_depo2_1_day<-POM_depos$wn2/d2
POM_depo3_1_day<-POM_depos$wn3/d3; POM_depo4_1_day<-POM_depos$wn4/d4
POM_depo5_1_day<-POM_depos$wn5/d5; POM_depo6_1_day<-POM_depos$wc6/d6
POM_depo7_1_day<-POM_depos$wc7/d7; POM_depo8_1_day<-POM_depos$ws8/d8
POM_depo9_1_day<-POM_depos$ws9/d9; POM_depo10_1_day<-POM_depos$ws10/d10
# depo silt m/day
silt_depo1_1_day<-silt_depos$wn1/d1; silt_depo2_1_day<-silt_depos$wn2/d2  #
silt_depo3_1_day<-silt_depos$wn3/d3; silt_depo4_1_day<-silt_depos$wn4/d4
silt_depo5_1_day<-silt_depos$wn5/d5; silt_depo6_1_day<-silt_depos$wc6/d6
silt_depo7_1_day<-silt_depos$wc7/d7; silt_depo8_1_day<-silt_depos$ws8/d8
silt_depo9_1_day<-silt_depos$ws9/d9; silt_depo10_1_day<-silt_depos$ws10/d10

sand_depo1_1_day<-sand_depos$wn1/d1; sand_depo2_1_day<-sand_depos$wn2/d2
sand_depo3_1_day<-sand_depos$wn3/d3; sand_depo4_1_day<-sand_depos$wn4/d4
sand_depo5_1_day<-sand_depos$wn5/d5; sand_depo6_1_day<-sand_depos$wc6/d6
sand_depo7_1_day<-sand_depos$wc7/d7; sand_depo8_1_day<-sand_depos$ws8/d8
sand_depo9_1_day<-sand_depos$ws9/d9; sand_depo10_1_day<-sand_depos$ws10/d10
#---------- Rapporto tra le Kd e hg-----------------
kdsilt<-1.5*10^5; kdPOM<-2*10^5; kdsand<-1
kdtot<-kdPOM+kdsilt+kdsand
fhgPOM<-(kdPOM/kdtot); fhgsilt<-(kdsilt/kdtot); fhgsand<-(kdsand/kdtot)
#--------------------------------------------------
##
hgpom_dep1 <-POM_depo1_1_day *Phgs$wn1*fhgPOM*d1   #1/day *ug/m3*m = ug/m2d
hgpom_dep2<- POM_depo2_1_day *Phgs$wn2*fhgPOM*d2
hgpom_dep3<- POM_depo3_1_day *Phgs$wn3*fhgPOM*d3
hgpom_dep4<- POM_depo4_1_day *Phgs$wn4*fhgPOM*d4
hgpom_dep5<- POM_depo5_1_day *Phgs$wn5*fhgPOM*d5
hgpom_dep6<- POM_depo6_1_day *Phgs$wc6*fhgPOM*d6
hgpom_dep7<- POM_depo7_1_day *Phgs$wc7*fhgPOM*d7
hgpom_dep8<- POM_depo8_1_day *Phgs$ws8*fhgPOM*d8
hgpom_dep9<- POM_depo9_1_day *Phgs$ws9*fhgPOM*d9
hgpom_dep10<- POM_depo10_1_day *Phgs$ws10*fhgPOM*d10

hgsand_dep1 <-sand_depo1_1_day *Phgs$wn1*fhgsand*d1  #1/day *ug/m3*m = ug/m2d
hgsand_dep2<- sand_depo2_1_day *Phgs$wn2*fhgsand*d2
hgsand_dep3<- sand_depo3_1_day *Phgs$wn3*fhgsand*d3
hgsand_dep4<- sand_depo4_1_day *Phgs$wn4*fhgsand*d4
hgsand_dep5<- sand_depo5_1_day *Phgs$wn5*fhgsand*d5
hgsand_dep6<- sand_depo6_1_day *Phgs$wc6*fhgsand*d6
hgsand_dep7<- sand_depo7_1_day *Phgs$wc7*fhgsand*d7
hgsand_dep8<- sand_depo8_1_day *Phgs$ws8*fhgsand*d8
hgsand_dep9<- sand_depo9_1_day *Phgs$ws9*fhgsand*d9
hgsand_dep10<- sand_depo10_1_day *Phgs$ws10*fhgsand*d10

hgsilt_dep1<-silt_depo1_1_day *Phgs$wn1*fhgsilt*d1 #1/day *ug/m3*m = ug/m2d
hgsilt_dep2<- silt_depo2_1_day *Phgs$wn2*fhgsilt*d2
hgsilt_dep3<- silt_depo3_1_day *Phgs$wn3*fhgsilt*d3
hgsilt_dep4<- silt_depo4_1_day *Phgs$wn4*fhgsilt*d4
hgsilt_dep5<- silt_depo5_1_day *Phgs$wn5*fhgsilt*d5
hgsilt_dep6<- silt_depo6_1_day *Phgs$wc6*fhgsilt*d6
hgsilt_dep7<- silt_depo7_1_day *Phgs$wc7*fhgsilt*d7
hgsilt_dep8<- silt_depo8_1_day *Phgs$ws8*fhgsilt*d8
hgsilt_dep9<- silt_depo9_1_day *Phgs$ws9*fhgsilt *d9
hgsilt_dep10<- silt_depo10_1_day *Phgs$ws10*fhgsilt*d10

hgpom_dep1b <-POM_depo1_1_day *POMs$wn1*SEDhg$wn1*fhgPOM*d1/1000   #m/day*ng/m3*m*g/m3  = ug/m2d
hgpom_dep2b<- POM_depo2_1_day *POMs$wn2*SEDhg$wn2*fhgPOM*d2/1000
hgpom_dep3b<- POM_depo3_1_day *POMs$wn3*SEDhg$wn3*fhgPOM*d3/1000
hgpom_dep4b<- POM_depo3_1_day *POMs$wn4*SEDhg$wn4*fhgPOM*d4/1000
hgpom_dep5b<- POM_depo5_1_day *POMs$wn5*SEDhg$wn5*fhgPOM*d5/1000
hgpom_dep6b<- POM_depo6_1_day *POMs$wc6*SEDhg$wc6*fhgPOM*d6/1000
hgpom_dep7b<- POM_depo7_1_day *POMs$wc7*SEDhg$wc7*fhgPOM*d7/1000
hgpom_dep8b<- POM_depo8_1_day *POMs$ws8*SEDhg$ws8*fhgPOM*d8/1000
hgpom_dep9b<- POM_depo9_1_day *POMs$ws9*SEDhg$ws9*fhgPOM*d9/1000
hgpom_dep10b<- POM_depo10_1_day *POMs$ws10*SEDhg$ws10*fhgPOM*d10/1000

hgsilt_dep1b <-silt_depo1_1_day *silts$wn1*SEDhg$wn1*fhgsilt*d1/1000  #m/day *ng/m3*m*g/m3  = ug/m2d
hgsilt_dep2b<- silt_depo2_1_day *silts$wn2*SEDhg$wn2*fhgsilt*d2/1000
hgsilt_dep3b<- silt_depo3_1_day *silts$wn3*SEDhg$wn3*fhgsilt*d3/1000
hgsilt_dep4b<- silt_depo3_1_day *silts$wn4*SEDhg$wn4*fhgsilt*d4/1000
hgsilt_dep5b<- silt_depo5_1_day *silts$wn5*SEDhg$wn5*fhgsilt*d5/1000
hgsilt_dep6b<- silt_depo6_1_day *silts$wc6*SEDhg$wc6*fhgsilt*d6/1000
hgsilt_dep7b<- silt_depo7_1_day *silts$wc7*SEDhg$wc7*fhgsilt*d7/1000
hgsilt_dep8b<- silt_depo8_1_day *silts$ws8*SEDhg$ws8*fhgsilt*d8/1000
hgsilt_dep9b<- silt_depo9_1_day *silts$ws9*SEDhg$ws9*fhgsilt*d9/1000
hgsilt_dep10b<- silt_depo10_1_day *silts$ws10*SEDhg$ws10*fhgsilt*d10/1000

hgsand_dep1b <-sand_depo1_1_day *sands$wn1*SEDhg$wn1*fhgsand*d1/1000 #m/day *ng/m3*m*g/m3 /1000= ug/m2d
hgsand_dep2b<- sand_depo2_1_day *sands$wn2*SEDhg$wn2*fhgsand*d2/1000
hgsand_dep3b<- sand_depo3_1_day *sands$wn3*SEDhg$wn3*fhgsand*d3/1000
hgsand_dep4b<- sand_depo3_1_day *sands$wn4*SEDhg$wn4*fhgsand*d4/1000
hgsand_dep5b<- sand_depo5_1_day *sands$wn5*SEDhg$wn5*fhgsand*d5/1000
hgsand_dep6b<- sand_depo6_1_day *sands$wc6*SEDhg$wc6*fhgsand*d6/1000
hgsand_dep7b<- sand_depo7_1_day *sands$wc7*SEDhg$wc7*fhgsand*d7/1000
hgsand_dep8b<- sand_depo8_1_day *sands$ws8*SEDhg$ws8*fhgsand*d8/1000
hgsand_dep9b<- sand_depo9_1_day *sands$ws9*SEDhg$ws9*fhgsand*d9/1000
hgsand_dep10b<- sand_depo10_1_day *sands$ws10*SEDhg$ws10*fhgsand*d10/1000

head(silt_depo1_1_day*Phgs$wn1*fhgsilt*d1*365/10^9*a1)

#----------- RESUSpeNSION VELOCITIES  #res m/day
POM_res1_m_day<-POM_res$sn1; silt_res1_m_day<-silt_res$sn1;sand_res1_m_day<-sand_res$sn1
POM_res2_m_day<-POM_res$sn2 ;silt_res2_m_day<-silt_res$sn2;sand_res2_m_day<-sand_res$sn2
POM_res3_m_day<-POM_res$sn3; silt_res3_m_day<-silt_res$sn3;sand_res3_m_day<-sand_res$sn3
POM_res4_m_day<-POM_res$sn4; silt_res4_m_day<-silt_res$sn4;sand_res4_m_day<-sand_res$sn4
POM_res5_m_day<-POM_res$sn5; silt_res5_m_day<-silt_res$sn5;sand_res5_m_day<-sand_res$sn5
POM_res6_m_day<-POM_res$sc6; silt_res6_m_day<-silt_res$sc6;sand_res6_m_day<-sand_res$sc6
POM_res7_m_day<-POM_res$sc7; silt_res7_m_day<-silt_res$sc7;sand_res7_m_day<-sand_res$sc7
POM_res8_m_day<-POM_res$ss8; silt_res8_m_day<-silt_res$ss8;sand_res8_m_day<-sand_res$ss8
POM_res9_m_day<-POM_res$ss9; silt_res9_m_day<-silt_res$ss9;sand_res9_m_day<-sand_res$ss9
POM_res10_m_day<-POM_res$ss10; silt_res10_m_day<-silt_res$ss10;sand_res10_m_day<-sand_res$ss10
#-----------RESUSpeNSION RAtes
#hgpom_res1<- POM_res1_m_day*Phgs$sn1*fPOM$sn1  #m/day *ug/m3 = ug/m2d
#hgpom_res1*365/10^9*a1
#hgpom_res2<- POM_res2_m_day*Phgs$sn2*fhgPOM
#hgpom_res3<- POM_res3_m_day*Phgs$sn3*fhgPOM
#hgpom_res4<- POM_res4_m_day*Phgs$sn4*fhgPOM
#hgpom_res5<- POM_res5_m_day*Phgs$sn5*fhgPOM
#hgpom_res6<- POM_res6_m_day*Phgs$sc6*fhgPOM
#hgpom_res7<- POM_res7_m_day*Phgs$sc7*fhgPOM
#hgpom_res8<- POM_res8_m_day*Phgs$ss8*fhgPOM
#hgpom_res9<- POM_res9_m_day*Phgs$ss9*fhgPOM
#hgpom_res10<- POM_res10_m_day*Phgs$ss10*fhgPOM

#   [ng m-2 d-1] =  [ m d-1] * [g m-3] * [ng g-1]  /1000 = ug m2d
hgpom_res1 <- POM_res1_m_day*POMs$sn1*fhgPOM*SEDhg$sn1/1000
hgpom_res2 <- POM_res2_m_day*POMs$sn2*fhgPOM*SEDhg$sn2/1000
hgpom_res3 <- POM_res3_m_day*POMs$sn3*fhgPOM*SEDhg$sn3/1000
hgpom_res4 <- POM_res4_m_day*POMs$sn4*fhgPOM*SEDhg$sn4/1000
hgpom_res5 <- POM_res5_m_day*POMs$sn5*fhgPOM*SEDhg$sn5/1000
hgpom_res6 <- POM_res6_m_day*POMs$sc6*fhgPOM*SEDhg$sc6/1000
hgpom_res7 <- POM_res7_m_day*POMs$sc7*fhgPOM*SEDhg$sc7/1000
hgpom_res8 <- POM_res8_m_day*POMs$ss8*fhgPOM*SEDhg$ss8/1000
hgpom_res9 <- POM_res9_m_day*POMs$ss9*fhgPOM *SEDhg$ss9/1000
hgpom_res10<- POM_res10_m_day*POMs$ss10*fhgPOM*SEDhg$ss10/1000

#hgpom_res1b <- POM_res1_m_day*POMs$sn1*fPOM$sn1*SEDhg$sn1/1000

hgsilt_res1<- silt_res1_m_day*silts$sn1*fhgsilt*SEDhg$sn1/1000
hgsilt_res2<- silt_res2_m_day*silts$sn2*fhgsilt*SEDhg$sn2/1000
hgsilt_res3<- silt_res3_m_day*silts$sn3*fhgsilt*SEDhg$sn3/1000
hgsilt_res4<- silt_res4_m_day*silts$sn4*fhgsilt*SEDhg$sn4/1000
hgsilt_res5<- silt_res5_m_day*silts$sn5*fhgsilt*SEDhg$sn5/1000
hgsilt_res6<- silt_res6_m_day*silts$sc6*fhgsilt*SEDhg$sc6/1000
hgsilt_res7<- silt_res7_m_day*silts$sc7*fhgsilt*SEDhg$sc7/1000
hgsilt_res8<- silt_res8_m_day*silts$ss8*fhgsilt*SEDhg$ss8/1000
hgsilt_res9<- silt_res9_m_day*silts$ss9*fhgsilt*SEDhg$ss9/1000
hgsilt_res10<- silt_res10_m_day*silts$ss10*fhgsilt*SEDhg$ss10/1000
#hgsilt_res1b<- silt_res1_m_day*silts$sn1*fsilt$sn1*SEDhg$sn1/1000
#hgsilt_res1c<- silt_res1_m_day*Phgs$sn1*fsilt$sn1

hgsand_res1<- sand_res1_m_day*sands$sn1*fhgsand*SEDhg$sn1/1000
hgsand_res2<- sand_res2_m_day*sands$sn2*fhgsand*SEDhg$sn2/1000
hgsand_res3<- sand_res3_m_day*sands$sn3*fhgsand*SEDhg$sn3/1000
hgsand_res4<- sand_res4_m_day*sands$sn4*fhgsand*SEDhg$sn4/1000
hgsand_res5<- sand_res5_m_day*sands$sn5*fhgsand*SEDhg$sn5/1000
hgsand_res6<- sand_res6_m_day*sands$sc6*fhgsand*SEDhg$sc6/1000
hgsand_res7<- sand_res7_m_day*sands$sc7*fhgsand*SEDhg$sc7/1000
hgsand_res8<- sand_res8_m_day*sands$ss8*fhgsand*SEDhg$ss8/1000
hgsand_res9<- sand_res9_m_day*sands$ss9*fhgsand*SEDhg$ss9/1000
hgsand_res10<- sand_res10_m_day*sands$ss10*fhgsand*SEDhg$ss10/1000
#depo ug/m2d  - res ug/m2d
hgbal_1 <-(hgpom_dep1-hgpom_res1) + (hgsilt_dep1-hgsilt_res1)+(hgsand_dep1-hgsand_res1)#ug/m2d
hgbal_2 <-(hgpom_dep2-hgpom_res2) + (hgsilt_dep2-hgsilt_res2)+(hgsand_dep2-hgsand_res2)#ug/m2d
hgbal_3 <-(hgpom_dep3-hgpom_res3) + (hgsilt_dep3-hgsilt_res3)+(hgsand_dep3-hgsand_res3)#ug/m2d
hgbal_4 <-(hgpom_dep4-hgpom_res4) + (hgsilt_dep4-hgsilt_res4)+(hgsand_dep4-hgsand_res4)#ug/m2d
hgbal_5 <-(hgpom_dep5-hgpom_res5) + (hgsilt_dep5-hgsilt_res5)+(hgsand_dep5-hgsand_res5)#ug/m2d
hgbal_6 <-(hgpom_dep6-hgpom_res6) + (hgsilt_dep6-hgsilt_res6)+(hgsand_dep6-hgsand_res6)#ug/m2d
hgbal_7 <-(hgpom_dep7-hgpom_res7) + (hgsilt_dep7-hgsilt_res7)+(hgsand_dep7-hgsand_res7)#ug/m2d
hgbal_8 <-(hgpom_dep8-hgpom_res8) + (hgsilt_dep8-hgsilt_res8)+(hgsand_dep8-hgsand_res8)#ug/m2d
hgbal_9 <-(hgpom_dep9-hgpom_res9) + (hgsilt_dep9-hgsilt_res9)+(hgsand_dep9-hgsand_res9)#ug/m2d
hgbal_10 <-(hgpom_dep10-hgpom_res10) + (hgsilt_dep10-hgsilt_res10)+(hgsand_dep10-hgsand_res10)#ug/m2d
# hgbal_n [ug m2d] * [m2] = hgbal [ug d-1]
hgbal<- (hgbal_1*a1)+(hgbal_2*a2)+(hgbal_3*a3)+(hgbal_4*a4)+(hgbal_5*a5)+(hgbal_6*a6)+
        (hgbal_7*a7)+(hgbal_8+a8)+(hgbal_9*a9)+(hgbal_10*a10)

#depo ug/m2d  - res ug/m2d
hgbal_1b <-(hgpom_dep1b-hgpom_res1) + (hgsilt_dep1b-hgsilt_res1)+(hgsand_dep1b-hgsand_res1)#ug/m2d
hgbal_2b <-(hgpom_dep2b-hgpom_res2) + (hgsilt_dep2b-hgsilt_res2)+(hgsand_dep2b-hgsand_res2)#ug/m2d
hgbal_3b <-(hgpom_dep3b-hgpom_res3) + (hgsilt_dep3b-hgsilt_res3)+(hgsand_dep3b-hgsand_res3)#ug/m2d
hgbal_4b <-(hgpom_dep4b-hgpom_res4) + (hgsilt_dep4b-hgsilt_res4)+(hgsand_dep4b-hgsand_res4)#ug/m2d
hgbal_5b <-(hgpom_dep5b-hgpom_res5) + (hgsilt_dep5b-hgsilt_res5)+(hgsand_dep5b-hgsand_res5)#ug/m2d
hgbal_6b <-(hgpom_dep6b-hgpom_res6) + (hgsilt_dep6b-hgsilt_res6)+(hgsand_dep6b-hgsand_res6)#ug/m2d
hgbal_7b <-(hgpom_dep7b-hgpom_res7) + (hgsilt_dep7b-hgsilt_res7)+(hgsand_dep7b-hgsand_res7)#ug/m2d
hgbal_8b <-(hgpom_dep8b-hgpom_res8) + (hgsilt_dep8b-hgsilt_res8)+(hgsand_dep8b-hgsand_res8)#ug/m2d
hgbal_9b <-(hgpom_dep9b-hgpom_res9) + (hgsilt_dep9b-hgsilt_res9)+(hgsand_dep9b-hgsand_res9)#ug/m2d
hgbal_10b <-(hgpom_dep10b-hgpom_res10) + (hgsilt_dep10b-hgsilt_res10)+(hgsand_dep10b-hgsand_res10)#ug/m2d

win.graph()
par(mfrow=c(2,5))
plot(hgbal_1b, type='l')
plot(hgbal_2b, type='l')
plot(hgbal_3b, type='l')
plot(hgbal_4b, type='l')
plot(hgbal_5b, type='l')
plot(hgbal_6b, type='l')
plot(hgbal_7b, type='l')
plot(hgbal_8b, type='l')
plot(hgbal_9b, type='l')
plot(hgbal_10b, type='l')

# hgbal_n [ug m2d] * [m2] = hgbal [ug d-1]
hgbalb<- ((hgbal_1b*a1)+(hgbal_2b*a2)+(hgbal_3b*a3)+(hgbal_4*a4)+
          (hgbal_5b*a5)+(hgbal_6b*a6)+
  (hgbal_7b*a7)+(hgbal_8b+a8)+(hgbal_9b*a9)+(hgbal_10b*a10))*30

# hgbal [ug d-1] sum every year [ugy-1]
bilancio_hgugy<-tapply(hgbalb[2:2413],
       rep(1:(length(hgbalb[1:2413])/12),each = 12),sum)

bilancio_hg<-bilancio_hgugy/10^9 #[ugy-1]/10^9 kgy-1
head(bilancio_hg)

hgbal_kgyb<-hgbalb/10^9*365

plot(hgbal_kgy/area*10^3)  # meno di un g/ m2 y in media

plot(hgbal_kgyb, type='l')  # meno di un g/ m2 y in media

str(hgbal_kgyb)
head(hgbal_kgyb)
(hgbal_kgyb)

plot(evasione_kg_y_media/area*10^3)

hg_All_bal<- cbind((hgbal_1*a1),(hgbal_2*a2),(hgbal_3*a3),
                   (hgbal_4*a4),(hgbal_5*a5),(hgbal_6*a6),
  (hgbal_7*a7),(hgbal_8+a8),(hgbal_9*a9),(hgbal_10*a10))  # ug d


restot1<-(hgpom_res1+hgsilt_res1+hgsand_res1)*a1
restot2<-(hgpom_res2+hgsilt_res2+hgsand_res2)*a2
restot3<-(hgpom_res3+hgsilt_res3+hgsand_res3)*a3
restot4<-(hgpom_res4+hgsilt_res4+hgsand_res4)*a4
restot5<-(hgpom_res5+hgsilt_res5+hgsand_res5)*a5
restot6<-(hgpom_res6+hgsilt_res6+hgsand_res6)*a6
restot7<-(hgpom_res7+hgsilt_res7+hgsand_res7)*a7
restot8<-(hgpom_res8+hgsilt_res8+hgsand_res8)*a8
restot9<-(hgpom_res9+hgsilt_res9+hgsand_res9)*a9
restot10<-(hgpom_res10+hgsilt_res10-hgsand_res10)*a10

deptot1 <-(hgpom_dep1b + hgsilt_dep1b + hgsand_dep1b)*a1
deptot2 <-(hgpom_dep2b + hgsilt_dep2b + hgsand_dep2b)*a2
deptot3 <-(hgpom_dep3b + hgsilt_dep3b + hgsand_dep3b)*a3
deptot4 <-(hgpom_dep4b + hgsilt_dep4b + hgsand_dep4b)*a4
deptot5 <-(hgpom_dep5b + hgsilt_dep5b + hgsand_dep5b)*a5
deptot6 <-(hgpom_dep6b + hgsilt_dep6b + hgsand_dep6b)*a6
deptot7 <-(hgpom_dep7b + hgsilt_dep7b + hgsand_dep7b)*a7
deptot8 <-(hgpom_dep8b + hgsilt_dep8b + hgsand_dep8b)*a8
deptot9 <-(hgpom_dep9b + hgsilt_dep9b + hgsand_dep9b)*a9
deptot10<-(hgpom_dep10b+ hgsilt_dep10b+ hgsand_dep10)*a10

plot(restot10,deptot10)

restot_sum<-restot1+restot2+restot3+restot4+restot5+restot6+restot7+restot8+
  restot9+restot10


deptot_sum<-deptot1+deptot2+deptot3+deptot4+deptot5+deptot6+deptot7+deptot8+
  deptot9+deptot10

restot_all<-cbind(restot1,restot2,restot3,restot4,restot5,restot6,restot7,restot8,
  restot9,restot10)


deptot_all<-cbind(deptot1,deptot2,deptot3,deptot4,deptot5,deptot6,deptot7,deptot8,
                  deptot9,deptot10)

head(restot_sum*365/10^9)
head(deptot_sum*365/10^9)

diff<-(deptot_sum-restot_sum)*365/10^9
head(diff,200)
  
tail(rdate[1:10499])

diff_1900<-(deptot_sum[1:10499]-restot_sum[1:10499])*365/10^9
  
(deptot_sum[2:12]*365/10^9)
str(restot_sum)

tail(rdate[11])

par(mfrow=c(1,2))
plot(restot_sum*365/10^9, main='1910 - Res Hg kgy')
plot(deptot_sum*365/10^9, main='1910 - DEp Hg kgy')

plot(deptot_all[,6]*365/10^9, main='1910 - DEp Hg kgy')
plot(restot_all[,6]*365/10^9, main='1910 - DEp Hg kgy')

head(restot_all[,6]*365/10^9)
head(deptot_all[,6]*365/10^9)
head(deptot_all[,3]*365/10^9)
head(deptot_all[,1]*365/10^9)

bilancio_hg_10
plot(hgres, col='#E28DA8', type='l', lwd=3)
plot(hgbal_2, col='#E28DA8', type='l', lwd=3)
plot(hgbal_3, col='#E28DA8', type='l', lwd=3)
plot(hgbal_4, col='#E28DA8', type='l', lwd=3)
plot(hgbal_5, col='#E28DA8', type='l', lwd=3)
plot(hgbal_6, col='#E28DA8', type='l', lwd=3)


plot(cumsum(hgbal_kgy), col='#B9FF73',type='l', lwd=3)
axis(side = 4, at=suss)
suss<-seq(150,-350, -50)

write.table(Net_kgy,file='Net_hgSed_kgy.txt')
write.table(hgbal,file='hgbal.txt')   #[ug d-1]

time.steps <- hg[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y");rdate[1239:1251]

win.graph()
plot(rdate,Tot_Depo_hg_kgy, col='blue',type='l')#ylim = c(-60866.52,14891))
par(new=T)
plot(rdate,-Tot_res_hg, col='orange',type='l')
par(new=T)
plot(rdate,Net, col='darkgrey',type='l', ylim = c(-60866.52,14891))


win.graph()
plot(rdate,Tot_Depo_hg, col='blue',type='l', ylim = c(0,60866.52))
par(new=T)
plot(rdate,Tot_res_hg, col='orange',type='l', ylim = c(0,60866.52))
