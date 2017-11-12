##
##
# 
#Venice water and sediment reservoirs
# 
# 50 t in sediments (Critto et al?)
setwd('C:/Users/Ginevra/Dropbox/2017_Venice/114/g920')
setwd('C:/Users/gi/Desktop/finaleRITAMRE/nuoviin2')

#Leggi model output
hg<-read.csv("Dissolved_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hg<-hg[2:1214]

hgT<-read.csv("Total_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hgT)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
hgT<-hgT[2:1214]

solids<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solids)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
solids<-solids[2:1214]

Phg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
Phg<-Phg[2:1214]
Pmehg<-read.csv("Total_Sorbed_Methyl_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Pmehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

Pmehg<-Pmehg[2:1214]

DOChg<-read.csv("DOC_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DOChg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 DOChg<-DOChg[2:1214]

mehgD<-read.csv("Dissolved_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(mehgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
                
mehgD<-mehgD[2:1214]

DOCmehg<-read.csv("DOC_Sorbed_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DOCmehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
DOCmehg<-DOCmehg[2:1214]

hg0<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
        'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
        'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
        'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
hg0<-hg0[2:1214]
dhg0<-read.csv("Dissolved_Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(dhg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
      'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
      'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
      'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
dhg0<-dhg0[2:1214]

DOChg0<-read.csv("DOC_Sorbed_Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DOChg0)<-cc('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
DOChg0<-DOChg0[2:1214]

mehgT<-read.csv("Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(mehgT)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
mehgT<-mehgT[2:1214]

solids<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solids)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
solids<-solids[2:1214]

Temp<-read.csv("Segment_Temperature.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Temp)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')


burial<-read.csv('Sediment_Burial_Velocity.csv', skip=1)
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
burial<-burial[2:1214]
burial$dsn4
hgII<-(hg+DOChg0+DOChg)
mehgdiss<-(mehgD+DOCmehg)


kg_hg_b1<-(hgT$wn1*a1*d1/10^9)   

### or ug 

kg_phg_b1<-(Phgs$wn1*a1*d1/10^9)         ### or ug 
kg_phg_b1*(vd/a1)


plot(kg_hg_b1)


a1<- 4.32E+07
a2<- 3.53E+07
a3<- 3.13E+07
a4<- 8.90E+06
a5<- 2.22E+07
a6<- 5.43E+07
a7<- 1.15E+08
a8<- 3.17E+07
a9<- 2.95E+07
a10<- 4.06E+07

vs1<-4.32E+07*0.03
vs2<-3.53E+07*0.03
vs3<-3.13E+07*0.03
vs4<-8.90E+06*0.03
vs5<-2.22E+07*0.03
vs6<-5.43E+07*0.03
vs7<-1.15E+08*0.03
vs8<-3.17E+07*0.03
vs9<-2.95E+07*0.03
vs10<-4.06E+07*0.03

vds1<-4.32E+07*0.05
vds2<-3.53E+07*0.05
vds3<-3.13E+07*0.05
vds4<-8.90E+06*0.05
vds5<-2.22E+07*0.05
vds6<-5.43E+07*0.05
vds7<-1.15E+08*0.05
vds8<-3.17E+07*0.05
vds9<-2.95E+07*0.05
vds10<-4.06E+07*0.05
vos1<-4.32E+07*0.08
vos2<-3.53E+07*0.08
vos3<-3.13E+07*0.08
vos4<-8.90E+06*0.08
vos5<-2.22E+07*0.08
vos6<-5.43E+07*0.08
vos7<-1.15E+08*0.08
vos8<-3.17E+07*0.08
vos9<-2.95E+07*0.08
vos10<-4.06E+07*0.08
# Hg SED ng g
hgSED_box1<-hgT$sn1
hgSED_box2<-hgT$sn2
hgSED_box3<-hgT$sn3
hgSED_box4<-hgT$sn4
hgSED_box5<-hgT$sn5
hgSED_box6<-hgT$sc6
hgSED_box7<-hgT$sc7
hgSED_box8<-hgT$ss8
hgSED_box9<-hgT$ss9
hgSED_box10<-hgT$ss1

hgSED_SD_box1<-sd(hgT$sn1[1167: 1179])
hgSED_SD_box2<-sd(hgT$sn2[1167: 1179])
hgSED_SD_box3<-sd(hgT$sn3[1167: 1179])
hgSED_SD_box4<-sd(hgT$sn4[1167: 1179])
hgSED_SD_box5<-sd(hgT$sn5[1167: 1179])
hgSED_SD_box6<-sd(hgT$sc6[1167: 1179])
hgSED_SD_box7<-sd(hgT$sc7[1167: 1179])
hgSED_SD_box8<-sd(hgT$ss8[1167: 1179])
hgSED_SD_box9<-sd(hgT$ss9[1167: 1179])
hgSED_SD_box10<-sd(hgT$ss1[1167: 1179])			 

# solidi g m3		
solids_sed_box1<-solids$sn1
solids_sed_box2<-solids$sn2
solids_sed_box3<-solids$sn3
solids_sed_box4<-solids$sn4
solids_sed_box5<-solids$sn5
solids_sed_box6<-solids$sc6
solids_sed_box7<-solids$sc7
solids_sed_box8<-solids$ss8
solids_sed_box9<-solids$ss9
solids_sed_box10<-solids$ss10

hgSED_ngm3_box1<-hgSED_box1*solids_sed_box1
hgSED_ngm3_box2<-hgSED_box2*solids_sed_box2
hgSED_ngm3_box3<-hgSED_box3*solids_sed_box3
hgSED_ngm3_box4<-hgSED_box4*solids_sed_box4
hgSED_ngm3_box5<-hgSED_box5*solids_sed_box5
hgSED_ngm3_box6<-hgSED_box6*solids_sed_box6
hgSED_ngm3_box7<-hgSED_box7*solids_sed_box7
hgSED_ngm3_box8<-hgSED_box8*solids_sed_box8
hgSED_ngm3_box9<-hgSED_box9*solids_sed_box9
hgSED_ngm3_box10<-hgSED_box10*solids_sed_box10

hgSED_g_box1 <-hgSED_ngm3_box1 *vs1/10^9		
hgSED_g_box2 <-hgSED_ngm3_box2 *vs2/10^9		
hgSED_g_box3 <-hgSED_ngm3_box3 *vs3/10^9		
hgSED_g_box4 <-hgSED_ngm3_box4 *vs4/10^9		
hgSED_g_box5 <-hgSED_ngm3_box5 *vs5/10^9		
hgSED_g_box6 <-hgSED_ngm3_box6 *vs6/10^9		
hgSED_g_box7 <-hgSED_ngm3_box7 *vs7/10^9		
hgSED_g_box8 <-hgSED_ngm3_box8 *vs8/10^9		
hgSED_g_box9 <-hgSED_ngm3_box9 *vs9/10^9		
hgSED_g_box10 <-hgSED_ngm3_box10*vs10/10^9		



hgSED_deep_box1<-hgT$dsn1
hgSED_deep_box2<-hgT$dsn2
hgSED_deep_box3<-hgT$dsn3
hgSED_deep_box4<-hgT$dsn4
hgSED_deep_box5<-hgT$dsn5
hgSED_deep_box6<-hgT$dsc6
hgSED_deep_box7<-hgT$dsc7
hgSED_deep_box8<-hgT$dss8
hgSED_deep_box9<-hgT$dss9
hgSED_deep_box10<-hgT$dss10			 

# solidi g m3		
solids_deep_sed_box1<-solids$dsn1
solids_deep_sed_box2<-solids$dsn2 
solids_deep_sed_box3<-solids$dsn3 
solids_deep_sed_box4<-solids$dsn4 
solids_deep_sed_box5<-solids$dsn5 
solids_deep_sed_box6<-solids$dsc6 
solids_deep_sed_box7<-solids$dsc7 
solids_deep_sed_box8<-solids$dss8 
solids_deep_sed_box9<-solids$dss9 
solids_deep_sed_box10<-solids$dss10 

hgSED_deep_ngm3_box1<-hgSED_deep_box1*solids_deep_sed_box1
hgSED_deep_ngm3_box2<-hgSED_deep_box2*solids_deep_sed_box2
hgSED_deep_ngm3_box3<-hgSED_deep_box3*solids_deep_sed_box3
hgSED_deep_ngm3_box4<-hgSED_deep_box4*solids_deep_sed_box4
hgSED_deep_ngm3_box5<-hgSED_deep_box5*solids_deep_sed_box5
hgSED_deep_ngm3_box6<-hgSED_deep_box6*solids_deep_sed_box6
hgSED_deep_ngm3_box7<-hgSED_deep_box7*solids_deep_sed_box7
hgSED_deep_ngm3_box8<-hgSED_deep_box8*solids_deep_sed_box8
hgSED_deep_ngm3_box9<-hgSED_deep_box9*solids_deep_sed_box9
hgSED_deep_ngm3_box10<-hgSED_deep_box10*solids_deep_sed_box10

str(solids_deep_sed_box10)

hgSED_deep_g_box1 <-hgSED_deep_ngm3_box1 *vds1/10^9		
hgSED_deep_g_box2 <-hgSED_deep_ngm3_box2 *vds2/10^9		
hgSED_deep_g_box3 <-hgSED_deep_ngm3_box3 *vds3/10^9		
hgSED_deep_g_box4 <-hgSED_deep_ngm3_box4 *vds4/10^9		
hgSED_deep_g_box5 <-hgSED_deep_ngm3_box5 *vds5/10^9		
hgSED_deep_g_box6 <-hgSED_deep_ngm3_box6 *vds6/10^9		
hgSED_deep_g_box7 <-hgSED_deep_ngm3_box7 *vds7/10^9		
hgSED_deep_g_box8 <-hgSED_deep_ngm3_box8 *vds8/10^9		
hgSED_deep_g_box9 <-hgSED_deep_ngm3_box9 *vds9/10^9		
hgSED_deep_g_box10 <-hgSED_deep_ngm3_box10*vds10/10^9		


hgSED_old_box1<-hgT$osn1
hgSED_old_box2<-hgT$osn2
hgSED_old_box3<-hgT$osn3
hgSED_old_box4<-hgT$osn4
hgSED_old_box5<-hgT$osn5
hgSED_old_box6<-hgT$dsc6
hgSED_old_box7<-hgT$dsc7
hgSED_old_box8<-hgT$dss8
hgSED_old_box9<-hgT$dss9
hgSED_old_box10<-hgT$dss10			 

# solidi g m3		
solids_old_sed_box1<-solids$osn1
solids_old_sed_box2<-solids$osn2 
solids_old_sed_box3<-solids$osn3 
solids_old_sed_box4<-solids$osn4 
solids_old_sed_box5<-solids$osn5 
solids_old_sed_box6<-solids$dsc6 
solids_old_sed_box7<-solids$dsc7 
solids_old_sed_box8<-solids$dss8 
solids_old_sed_box9<-solids$dss9 
solids_old_sed_box10<-solids$dss10 

hgSED_old_ngm3_box1<-hgSED_old_box1*solids_old_sed_box1
hgSED_old_ngm3_box2<-hgSED_old_box2*solids_old_sed_box2
hgSED_old_ngm3_box3<-hgSED_old_box3*solids_old_sed_box3
hgSED_old_ngm3_box4<-hgSED_old_box4*solids_old_sed_box4
hgSED_old_ngm3_box5<-hgSED_old_box5*solids_old_sed_box5
hgSED_old_ngm3_box6<-hgSED_old_box6*solids_old_sed_box6
hgSED_old_ngm3_box7<-hgSED_old_box7*solids_old_sed_box7
hgSED_old_ngm3_box8<-hgSED_old_box8*solids_old_sed_box8
hgSED_old_ngm3_box9<-hgSED_old_box9*solids_old_sed_box9
hgSED_old_ngm3_box10<-hgSED_old_box10*solids_old_sed_box10

hgSED_old_g_box1 <-hgSED_old_ngm3_box1 *vos1/10^9		
hgSED_old_g_box2 <-hgSED_old_ngm3_box2 *vos2/10^9		
hgSED_old_g_box3 <-hgSED_old_ngm3_box3 *vos3/10^9		
hgSED_old_g_box4 <-hgSED_old_ngm3_box4 *vos4/10^9		
hgSED_old_g_box5 <-hgSED_old_ngm3_box5 *vos5/10^9		
hgSED_old_g_box6 <-hgSED_old_ngm3_box6 *vos6/10^9		
hgSED_old_g_box7 <-hgSED_old_ngm3_box7 *vos7/10^9		
hgSED_old_g_box8 <-hgSED_old_ngm3_box8 *vos8/10^9		
hgSED_old_g_box9 <-hgSED_old_ngm3_box9 *vos9/10^9		
hgSED_old_g_box10 <-hgSED_old_ngm3_box10*vos10/10^9		


#2001 - 2010 hg$wn1[1215:1335]
#2001 - 2010 hg$wn1[1215:1335]
1215-(12*4)
TOT_Hg_Sed_g <-(mean(hgSED_g_box1[1167:1179])+mean(hgSED_g_box2[1167: 1179])+mean(hgSED_g_box3[1167: 1179])+mean(hgSED_g_box4[1167: 1179])+mean(hgSED_g_box5[1167: 1179])+
                  mean(hgSED_g_box6[1167:1179])+mean(hgSED_g_box7[1167: 1179])+mean(hgSED_g_box8[1167: 1179])+mean(hgSED_g_box9[1167: 1179])+mean(hgSED_g_box10[1167: 1179]))

TOT_Hg_Sed_deep_g <-(mean(hgSED_deep_g_box1[1167:1179])+mean(hgSED_deep_g_box2[1167: 1179])+mean(hgSED_deep_g_box3[1167: 1179])+mean(hgSED_deep_g_box4[1167: 1179])+mean(hgSED_deep_g_box5[1167: 1179])+
                       mean(hgSED_deep_g_box6[1167: 1179])+mean(hgSED_deep_g_box7[1167: 1179])+mean(hgSED_deep_g_box8[1167: 1179])+mean(hgSED_deep_g_box9[1167: 1179])+mean(hgSED_deep_g_box10[1167: 1179]))

TOT_Hg_Sed_old_g <-(mean(hgSED_old_g_box1[1167:1179])+mean(hgSED_old_g_box2[1167: 1179])+mean(hgSED_old_g_box3[1167: 1179])+mean(hgSED_old_g_box4[1167: 1179])+mean(hgSED_old_g_box5[1167: 1179])+
                      mean(hgSED_old_g_box6[1167:1179])+mean(hgSED_old_g_box7[1167: 1179])+mean(hgSED_old_g_box8[1167: 1179])+mean(hgSED_old_g_box9[1167: 1179])+mean(hgSED_old_g_box10[1167: 1179]))

TOT_Hg_Sed_ton<-TOT_Hg_Sed_g/10^6
TOT_Hg_Sed_deep_ton<-TOT_Hg_Sed_deep_g/10^6
TOT_Hg_Sed_old_ton<-TOT_Hg_Sed_old_g/10^6

TOT_Hg_Sed_deep_ton
TOT_Hg_Sed_deep_ton + TOT_Hg_Sed_ton +TOT_Hg_Sed_old_ton

buried_g_m2_y_box1<-(burial$osn1/100 * hgSED_old_ngm3_box1)/10^9 #m y-1 * ng m-3
buried_g_m2_y_box2<-(burial$osn2/100 * hgSED_old_ngm3_box2)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box3<-(burial$osn3/100 * hgSED_old_ngm3_box3)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box4<-(burial$osn4/100 * hgSED_old_ngm3_box4)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box5<-(burial$osn5/100 * hgSED_old_ngm3_box5)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box6<-(burial$osc6/100 * hgSED_old_ngm3_box6)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box7<-(burial$osc7/100 * hgSED_old_ngm3_box7)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box8<-(burial$oss8/100 * hgSED_old_ngm3_box8)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box9<-(burial$oss9/100 * hgSED_old_ngm3_box9)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box10<-(burial$oss10/100 * hgSED_old_ngm3_box10)/10^9 #m y-1 * ng m-3

buried_TOT_box1<-cumsum(buried_g_m2_y_box1/12*a1)   # g/mese
buried_TOT_box2<-cumsum(buried_g_m2_y_box2/12*a2)
buried_TOT_box3<-cumsum(buried_g_m2_y_box3/12*a3)
buried_TOT_box4<-cumsum(buried_g_m2_y_box4/12*a4)
buried_TOT_box5<-cumsum(buried_g_m2_y_box5/12*a5)
buried_TOT_box6<-cumsum(buried_g_m2_y_box6/12*a6)
buried_TOT_box7<-cumsum(buried_g_m2_y_box7/12*a7)
buried_TOT_box8<-cumsum(buried_g_m2_y_box8/12*a8)
buried_TOT_box9<-cumsum(buried_g_m2_y_box9/12*a9)
buried_TOT_box10<-cumsum(buried_g_m2_y_box10/12*a10)

TOTAL_buried_g<-buried_TOT_box1[1214]+buried_TOT_box2[1214]+buried_TOT_box3[1214]+buried_TOT_box4[1214]+
  buried_TOT_box5[1214]+buried_TOT_box6[1214]+buried_TOT_box7[1214]+buried_TOT_box8[1214]+buried_TOT_box9[1214]+buried_TOT_box10[1214]

TOTAL_buried_t<-TOTAL_buried_g/10^6
TOTAL_buried_t


plot(buried_g_m2_y_box3)

