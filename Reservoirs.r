##
# 
#Venice water and sediment reservoirs
# 
# 50 t in sediments (Critto et al?)
setwd('C:/Users/Ginevra/Desktop/venice_long_run/run15')

#Leggi model output
hgD<-read.csv("Dissolved_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
hgT<-read.csv("Total_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hgT)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

solids<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solids)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

Phg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

Pmehg<-read.csv("Total_Sorbed_Methyl_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Pmehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
summary(Phg)
summary(Pmehg)
# Pmehg ng/g

DOChg<-read.csv("DOC_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DOChg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

mehgD<-read.csv("Dissolved_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(mehgD)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

DOCmehg<-read.csv("DOC_Sorbed_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DOCmehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
hg0<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

dhg0<-read.csv("Dissolved_Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(dhg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
				  
DOChg0<-read.csv("DOC_Sorbed_Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DOChg0)<-cc('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

mehgT<-read.csv("Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(mehgT)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
str(mehgT)
solids<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(solids)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
				  
Temp<-read.csv("Segment_Temperature.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Temp)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
str(Temp)

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

v1<-4.32E+07
v2<-3.53E+07
v3<-3.13E+07
v4<-8.90E+06
v5<-2.22E+07
v6<-5.43E+07
v7<-1.15E+08
v8<-3.17E+07
v9<-2.95E+07
v10<-4.06E+07

# Hg SED ng g
hgSED_box1<-mean(hgT$sn1[591:602])
hgSED_box2<-mean(hgT$sn2[591:602]),
hgSED_box3<-mean(hgT$sn3[591:602]),
hgSED_box4<-mean(hgT$sn4[591:602]),
hgSED_box5<-mean(hgT$sn5[591:602]),
hgSED_box6<-mean(hgT$sc6[591:602]),
hgSED_box7<-mean(hgT$sc7[591:602]),
hgSED_box8<-mean(hgT$ss8[591:602]),
hgSED_box9<-mean(hgT$ss9[591:602]),
hgSED_box10<-mean(hgT$ss1[591:602])

hgSED_SD_box1<-sd(hgT$sn1[591:602]),
hgSED_SD_box2<-sd(hgT$sn2[591:602]),
hgSED_SD_box3<-sd(hgT$sn3[591:602]),
hgSED_SD_box4<-sd(hgT$sn4[591:602]),
hgSED_SD_box5<-sd(hgT$sn5[591:602]),
hgSED_SD_box6<-sd(hgT$sc6[591:602]),
hgSED_SD_box7<-sd(hgT$sc7[591:602]),
hgSED_SD_box8<-sd(hgT$ss8[591:602]),
hgSED_SD_box9<-sd(hgT$ss9[591:602])
hgSED_SD_box10<-sd(hgT$ss1[591:602])			 
		
# solidi g m3		
solids_sed_box1<-solids$sn1[591:602]
solids_sed_box2<-solids$sn2[591:602]
solids_sed_box3<-solids$sn3[591:602]
solids_sed_box4<-solids$sn4[591:602]
solids_sed_box5<-solids$sn5[591:602]
solids_sed_box6<-solids$sc6[591:602]
solids_sed_box7<-solids$sc7[591:602]
solids_sed_box8<-solids$ss8[591:602]
solids_sed_box9<-solids$ss9[591:602]
solids_sed_box10<-solids$ss10[591:602]

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
		
hgSED_g_box1 <-hgSED_ngm3_box1 *v1/10^9		
hgSED_g_box2 <-hgSED_ngm3_box2 *v2/10^9		
hgSED_g_box3 <-hgSED_ngm3_box3 *v3/10^9		
hgSED_g_box4 <-hgSED_ngm3_box4 *v4/10^9		
hgSED_g_box5 <-hgSED_ngm3_box5 *v5/10^9		
hgSED_g_box6 <-hgSED_ngm3_box6 *v6/10^9		
hgSED_g_box7 <-hgSED_ngm3_box7 *v7/10^9		
hgSED_g_box8 <-hgSED_ngm3_box8 *v8/10^9		
hgSED_g_box9 <-hgSED_ngm3_box9 *v9/10^9		
hgSED_g_box10 <-hgSED_ngm3_box10*v10/10^9		
		
		
TOT_Hg_Sed_g <-(hgSED_g_box1+hgSED_g_box2+hgSED_g_box3+hgSED_g_box4+hgSED_g_box5+
			  hgSED_g_box6+hgSED_g_box7+hgSED_g_box8+hgSED_g_box9+hgSED_g_box10)


 ## ------ HgD reservoir
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
