##
##
# 
#Venice water and sediment reservoirs
# 
# 50 t in sediments (Critto et al?)
setwd('C:/Users/Ginevra/Desktop/venice_long_run/run22')

#Leggi model output
hg<-read.csv("Dissolved_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
hg<-hg[2:1214]

hgT<-read.csv("Total_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hgT)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
hgT<-hgT[2:1214]
solids<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solids)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
solids<-solids[2:1214]

Phg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
Phg<-Phg[2:1214]
Pmehg<-read.csv("Total_Sorbed_Methyl_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Pmehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
Pmehg<-Pmehg[2:1214]

DOChg<-read.csv("DOC_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DOChg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
DOChg<-DOChg[2:1214]

mehgD<-read.csv("Dissolved_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(mehgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
mehgD<-mehgD[2:1214]

DOCmehg<-read.csv("DOC_Sorbed_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DOCmehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
DOCmehg<-DOCmehg[2:1214]

hg0<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
hg0<-hg0[2:1214]
dhg0<-read.csv("Dissolved_Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(dhg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
dhg0<-dhg0[2:1214]

DOChg0<-read.csv("DOC_Sorbed_Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DOChg0)<-cc('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
DOChg0<-DOChg0[2:1214]

mehgT<-read.csv("Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(mehgT)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
mehgT<-mehgT[2:1214]

solids<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solids)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
solids<-solids[2:1214]

Temp<-read.csv("Segment_Temperature.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Temp)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')


burial<-read.csv('Sediment_Burial_Velocity.csv', skip=1)
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
burial<-burial[2:1214]
burial$dsn4
hgII<-(hg+DOChg0+DOChg)
mehgdiss<-(mehgD+DOCmehg)

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

vds1<-4.32E+07*0.07
vds2<-3.53E+07*0.07
vds3<-3.13E+07*0.07
vds4<-8.90E+06*0.07
vds5<-2.22E+07*0.07
vds6<-5.43E+07*0.07
vds7<-1.15E+08*0.07
vds8<-3.17E+07*0.07
vds9<-2.95E+07*0.07
vds10<-4.06E+07*0.07

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

hgSED_SD_box1<-sd(hgT$sn1[591:602])
hgSED_SD_box2<-sd(hgT$sn2[591:602])
hgSED_SD_box3<-sd(hgT$sn3[591:602])
hgSED_SD_box4<-sd(hgT$sn4[591:602])
hgSED_SD_box5<-sd(hgT$sn5[591:602])
hgSED_SD_box6<-sd(hgT$sc6[591:602])
hgSED_SD_box7<-sd(hgT$sc7[591:602])
hgSED_SD_box8<-sd(hgT$ss8[591:602])
hgSED_SD_box9<-sd(hgT$ss9[591:602])
hgSED_SD_box10<-sd(hgT$ss1[591:602])			 

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


TOT_Hg_Sed_g <-(mean(hgSED_g_box1[591:602])+mean(hgSED_g_box2[591:602])+mean(hgSED_g_box3[591:602])+mean(hgSED_g_box4[591:602])+mean(hgSED_g_box5[591:602])+
                mean(hgSED_g_box6[591:602])+mean(hgSED_g_box7[591:602])+mean(hgSED_g_box8[591:602])+mean(hgSED_g_box9[591:602])+mean(hgSED_g_box10[591:602]))

TOT_Hg_Sed_ton<-TOT_Hg_Sed_g/10^6

TOT_Hg_Sed_ton

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

str(hgSED_deep_ngm3_box10)

TOT_Hg_Sed_deep_g <-(mean(hgSED_deep_g_box1[591:602])+mean(hgSED_deep_g_box2[591:602])+mean(hgSED_deep_g_box3[591:602])+mean(hgSED_deep_g_box4[591:602])+mean(hgSED_deep_g_box5[591:602])+
                  mean(hgSED_deep_g_box6[591:602])+mean(hgSED_deep_g_box7[591:602])+mean(hgSED_deep_g_box8[591:602])+mean(hgSED_deep_g_box9[591:602])+mean(hgSED_deep_g_box10[591:602]))

TOT_Hg_Sed_deep_ton<-TOT_Hg_Sed_deep_g/10^6

TOT_Hg_Sed_deep_ton
TOT_Hg_Sed_deep_ton + TOT_Hg_Sed_ton

buried_g_m2_y_box1<-(burial$dsn1/100 * hgSED_deep_ngm3_box1)/10^9 #m y-1 * ng m-3
buried_g_m2_y_box2<-(burial$dsn2/100 * hgSED_deep_ngm3_box2)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box3<-(burial$dsn3/100 * hgSED_deep_ngm3_box3)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box4<-(burial$dsn4/100 * hgSED_deep_ngm3_box4)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box5<-(burial$dsn5/100 * hgSED_deep_ngm3_box5)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box6<-(burial$dsc6/100 * hgSED_deep_ngm3_box6)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box7<-(burial$dsc7/100 * hgSED_deep_ngm3_box7)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box8<-(burial$dss8/100 * hgSED_deep_ngm3_box8)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box9<-(burial$dss9/100 * hgSED_deep_ngm3_box9)/10^9  #m y-1 * ng m-3
buried_g_m2_y_box10<-(burial$dss10/100 * hgSED_deep_ngm3_box10)/10^9 #m y-1 * ng m-3

str(hgSED_deep_ngm3_box10)
str(burial$dsn1)


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


#  ------ HgD reservoir
a<-sum(OL_hgd*OL_v_l)/10^15
b<-sum(OL_datihg*OL_v_l)/10^15
(b-a)/b*100      # OL error +2%

c<-sum(SOL_hgd*SOL_v_l)/10^15
d<-sum(SOL_datihg*SOL_v_l)/10^15
(d-c)/d*100     # SOL error -9%

e<-sum(AOL_hgd*AOL_v_l)/10^15
f<-sum(AOL_datihg*AOL_v_l)/10^15
(f-e)/f*100    # AOL error -4%
(a+c+e)   #tot HgD kmol
(b+d+f)-(a+c+e) #data - model reservoir
(f-e)/((b+d+f)-(a+c+e))
(a+c+e)*200.59/10^3  
#-----------314   kmols missing 

#  ------ MeHgD reservoir
a1<-sum(OL_mehgd*OL_v)/10^12
b1<-sum(OL_datimehg*OL_v)/10^12
(b1-a1)/b1*100      # OL error +13%

c1<-sum(SOL_mehgd*SOL_v)/10^12
d1<-sum(SOL_datimehg*SOL_v)/10^12
(d1-c1)/d1*100     # SOL error +23%

e1<-sum(AOL_mehgd*AOL_v)/10^12
f1<-sum(AOL_datimehg*AOL_v)/10^12
(f1-e1)/f1*100    # AOL error +1.5%

(a1+c1+e1)/(a+c+e)*100  # ------ MeHg%
(a1+c1+e1) # ------ tot MehgD kmol
(b1+d1+f1)-(a1+c1+e1) #data - model reservoir
(a1+c1+e1)*215/10^3 #------ tot MehgD tons
#  ------ HgT reservoir
g<-sum(OL_hgt_pM*OL_v_l)/10^15
h<-sum(SOL_hgt_pM*SOL_v)/10^12
i<-sum(AOL_hgt_pM*AOL_v)/10^12
i
(g+h+i)   #--------tot Hgt kmol
(g+h+i)*200.59/10^3   #--------tot Hgt kmol
i/(g+h+i) 

mean(AOL_hgt_pM)
#  ------ MeHgT reservoir
g1<-sum(OL_mehgt_pM *OL_v)/10^12
h1<-sum(SOL_mehgt*SOL_v)/10^12
i1<-sum(AOL_mehgt*AOL_v)/10^12

mean(AOL_mehgt)

g1+h1+i1  #tot Mehg kmol
(g1+h1+i1)/(g+h+i)*100   # ------ MeHg%
(g1+h1+i1)*200.59/10^3 

Phg$Sed1[1968]/100
Phg$Sed1[1968]/100/hgT$Sed1[1968]*100
Phg$Sed2[1968]/100/hgT$Sed2[1968]

#  ------ Hg0 reservoir
a0<-sum(OL_hg0_pM*OL_v_l)/10^15

b0<-sum(SOL_hg0_pM*SOL_v_l)/10^15
 
c0<-sum(AOL_hg0_pM*AOL_v_l)/10^15
a0; b0; c0 
#  ------ SED HgT reservoir
##-----SEDIMENT conc
hgT_fine<-hgT[1968, 1:13]
b<-mean(hgT_fine$Sed1/200.59*1000);b  #ng/g
c<-mean(hgT_fine$Sed2/200.59*1000);c

mehgT_fine<-mehgT[1968, 1:13]
d<-mean(mehgT_fine$Sed1/200.59*1000);d
e<-mean(mehgT_fine$Sed2/200.59*1000);e

sed_hg_pmol_g<-data.frame(b,c)
names(sed_hg_pmol_g)<-c('surface','subsurface')

sed_mehg_pmol_g<-data.frame(d,e)
names(sed_mehg_pmol_g)<-c('surface','subsurface')
sed_hg_pmol_g
sed_mehg_pmol_g

sed_mehg_pmol_g/sed_hg_pmol_g*100



solids_sed<-data.frame(solids$Sed1[1968],solids$Sed2[1968]) #g/m3

sed_hg_pmol_m3<-sed_hg_pmol_g*solids_sed
sed_mehg_pmol_m3<-sed_mehg_pmol_g*solids_sed

Vol_Sed1_m3<-8.8*10^9
Vol_Sed2_m3<-2*10^10
Vol_Sed_m3<-data.frame(Vol_Sed1_m3,Vol_Sed2_m3)

sed_hg_pmols<-sed_hg_pmol_m3*Vol_Sed_m3
sed_hg_kmols<-sed_hg_pmols/10^15
##-----SEDIMENT HgT reservoir
rowSums(sed_hg_kmols)
rowSums(sed_hg_kmols)*200.59/1000

sed_mehg_pmols<-sed_mehg_pmol_m3*Vol_Sed_m3
sed_mehg_kmols<-sed_mehg_pmols/10^15
rowSums(sed_mehg_kmols)##-----SEDIMENT MeHgT reservoir
rowSums(sed_mehg_kmols)*215/1000
