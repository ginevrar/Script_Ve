setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')     #sim_cl
atm_hg0<-read.table('C:\\Users\\gi\\Dropbox\\atm_hg.txt')    #g/m3

#setwd('C:\\Users\\Acer\\Desktop\\last\\NAOH_iniz6')     #sim_cl
#setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\Reference_OK\\year')     #sim_cl
# setwd('D:\\Ref_long_long')     #sim_cl

setwd('C:\\Users\\Acer\\Desktop\\New_SIM\\Referece_NewPOM') #\\
setwd('C:\\Users\\Acer\\Desktop\\New_SIM\\Referece_NewPOM\\year')
 setwd('C:\\Users\\gi\\Dropbox\\REference_OK\\year')     #sim_cl
#setwd('C:\\Users\\Acer\\Desktop\\New_SIM\\Referece_NewPOM') #\\year
#setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\Reference_OK\\')     #sim_cl
 
#???setwd('D:\\Ref_long_long')     #sim_cl   # 2019: rdate[433904:437497]

310*12

hg0<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

evasion<-read.csv("Volatilization_Loss_Rate.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(evasion)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
# aree boxes
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07;a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07
# depths boxes
d1<-1.26;d2<-0.78;d3<-3.35;d4<-0.64;d5<-1.03;d6<-1.64;d7<-1.84; d8<-0.89;d9<-0.69;d10<-1.71

time.steps <- evasion[,1]
time.steps3 <- time.steps*24*3600
time.st_media<-tapply(time.steps3[2:147461], rep(1:(length(time.steps3[2:147461])/365),each = 365),mean)

TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO2 <- as.POSIXct(time.st_media, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate2<-as.Date(TEMPO2, tz= "GMT", format="%Y")
tail(rdate)
tail(rdate2)

#VOLATILIZZAZIONE
H<-7.1*10^-3     # Henry's Law constant
R<-8.206*10^-5   # Universal Gas constant  8.206??0-5 atm/molar-K
Tk<-288.15       # 15^C
divisore<-H/(R*Tk)

kvol_1_day<-evasion[,2:11]  # kvol tutti i water box
hg0_w<-hg0[,2:11]           # hg0 ngL water box
plot(rdate[1:13],kvol_1_day$wn1[1:13], type='l')
pr<-kvol_1_day*hg0_w    #ug m3 d

Vw1<-5.46E+7;Vw2<-2.74E+7;Vw3<-1.05E+8;Vw4<-5.7E+6;Vw5<-2.29E+7;Vw6<-8.9E+7;Vw7<-2.11E+8;Vw8<-2.82E+7;Vw9<-2.04E+7;Vw10<-6.95E+7;
WOL1<-(pr$wn1*Vw1)/10^9*365
WOL2<-(pr$wn2*Vw2)/10^9*365
WOL3<-(pr$wn3*Vw3)/10^9*365
WOL4<-(pr$wn4*Vw4)/10^9*365
WOL5<-(pr$wn5*Vw5)/10^9*365
WOL6<-(pr$wc6*Vw6)/10^9*365
WOL7<-(pr$wc7*Vw7)/10^9*365
WOL8<-(pr$ws8*Vw8)/10^9*365
WOL9<-(pr$ws9*Vw9)/10^9*365
WOL10<-(pr$ws10*Vw10)/10^9*365


WWW<-WOL1+WOL2+WOL3+WOL4+WOL5+WOL6+WOL7+WOL8+WOL9+WOL10
WWW_all<-cbind(WOL1,WOL2,WOL3,WOL4,WOL5,WOL6,WOL7,WOL8,WOL9,WOL10)


colMeans(WWW_all[1431:1442,])
mean(WWW[1431:1442])

plot(WWW)

str(hg0_w)
plot(hg0_w$wn5)
mean(hg0_w$wn5[1431:1442])#ng/L   0.12 - 0.9 adriatco
mean(hg0_w$wc6[1431:1443])         #kotnik
mean(hg0_w$wc7[1431:1443])
(hg0_w$wc7[1431:1443])

plot((hg0_w$wc6[2:2428]/hg$wc6)*100, type='l')
plot((hg0_w$wn1[2:2428]/hg$wn1)*100)

str(hg$wn5)
str(hg$wn5)

plot(hg0_w$wn1/200.59*1000)
tail(hg0_w$wn1)
hg0_g_m3<-hg0_w/10^6

mul_atm<-rep(1,12)
library(tidyverse)

atm_hg0<-atm_hg0 %>%
  rowwise() %>%                       # for each row
  mutate(x = list(V1 * mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
atm_hg0<-as.numeric(as.character(unlist(atm_hg0[1])))

tot_vol_m3<-6.33E+08
area<-4.12E+08
area_MGL<-1.6*10^8


plot(skvol$wn1)
#g/y
volat_gm3_y<-skvol*365;
volat_gm3_y<-rowSums(volat_gm3_y)
plot(volat_gm3_y[3:2124]/1000)
volat_kg_y<-tot_vol_m3*volat_gm3_y/1000


volat1_mol_y<-volat_g_y/(200.59); plot(volat1_mol_y, type="l")

plot(head(hg0_g_m3,24), col="blue", lwd=2)
par(new=TRUE)
plot(head(skvol,24), type="l")
par(new=TRUE)
plot(head(kvol_1_day,24), type="l", col='red')

#VOLATILIZZAZIONE2

vvol_gm3_day<-kvol_1_day*hg0_g_m3
vvol_g_day<-vvol_gm3_day*tot_vol_m3
vvol_g_y<-rowSums(vvol_g_day*365)
vvol_kg_y<-vvol_g_y/1000
plot(volat_g_y)
0.14/1.26
0.14/.78

str(kvol_1_day)
#VOLATILIZZAZIONE3

vvol2_gm3_day<-kvol_1_day
vvol2_g_day<-vvol2_gm3_day
vvol2_kg_y<-rowSums(vvol2_g_day*365)*tot_vol_m3/1000

 mean(vvol_kg_y[1000:2414]);  #kg y

kvol1_1_day<-evasion$wn1  # kvol ogni sim
kvol2_1_day<-evasion$wn2  # kvol ogni sim
kvol3_1_day<-evasion$wn3  # kvol ogni sim
kvol4_1_day<-evasion$wn4  # kvol ogni sim
kvol5_1_day<-evasion$wn5  # kvol ogni sim
kvol6_1_day<-evasion$wc6  # kvol ogni sim
kvol7_1_day<-evasion$wc7  # kvol ogni sim
kvol8_1_day<-evasion$ws8  # kvol ogni sim
kvol9_1_day<-evasion$ws9  # kvol ogni sim
kvol10_1_day<-evasion$ws10  # kvol ogni sim

plot(kvol1_1_day, type='l', col=1, ylim=c(0,3))
par(new=T)
plot(kvol2_1_day, type='l', col=2, ylim=c(0,3))
par(new=T)
plot(kvol3_1_day, type='l', col=3, ylim=c(0,3))
plot(kvol10_1_day, type='l')

hg0_b1<-hg0$wn1    # hg0 ngL
hg0_b2<-hg0$wn2    # hg0 ngL
hg0_b3<-hg0$wn3    # hg0 ngL
hg0_b4<-hg0$wn4    # hg0 ngL
hg0_b5<-hg0$wn5    # hg0 ngL
hg0_b6<-hg0$wc6    # hg0 ngL
hg0_b7<-hg0$wc7    # hg0 ngL
hg0_b8<-hg0$ws8    # hg0 ngL
hg0_b9<-hg0$ws9    # hg0 ngL
hg0_b10<-hg0$ws10    # hg0 ngL

skvol1<-kvol1_1_day*(hg0_g_m3$wn1 - (atm_hg0/divisore))   #gm3d
skvol2<-kvol2_1_day*(hg0_g_m3$wn2 - (atm_hg0/divisore))   #gm3d
skvol3<-kvol3_1_day*(hg0_g_m3$wn3 - (atm_hg0/divisore))   #gm3d
skvol4<-kvol4_1_day*(hg0_g_m3$wn4 - (atm_hg0/divisore))   #gm3d
skvol5<-kvol5_1_day*(hg0_g_m3$wn5 - (atm_hg0/divisore))   #gm3d
skvol6<-kvol6_1_day*(hg0_g_m3$wc6 - (atm_hg0/divisore))   #gm3d
skvol7<-kvol7_1_day*(hg0_g_m3$wc7 - (atm_hg0/divisore))   #gm3d
skvol8<-kvol8_1_day*(hg0_g_m3$ws8 - (atm_hg0/divisore))   #gm3d
skvol9<-kvol9_1_day*(hg0_g_m3$ws9 - (atm_hg0/divisore))   #gm3d
skvol10<-kvol10_1_day*(hg0_g_m3$ws10 - (atm_hg0/divisore))   #gm3d

volat1_g_y<-skvol1*365*a1*d1;
volat1_kg_y<-volat1_g_y/1000

volat2_g_y<-skvol2*365*a2*d2;
volat2_kg_y<-volat2_g_y/1000

volat3_g_y<-skvol3*365*a3*d3;
volat3_kg_y<-volat3_g_y/1000

volat4_g_y<-skvol4*365*a4*d4;
volat4_kg_y<-volat4_g_y/1000

volat5_g_y<-skvol5*365*a5*d5;
volat5_kg_y<-volat5_g_y/1000

volat6_g_y<-skvol6*365*a6*d6;
volat6_kg_y<-volat6_g_y/1000

volat7_g_y<-skvol7*365*a7*d7;
volat7_kg_y<-volat7_g_y/1000

volat8_g_y<-skvol8*365*a8*d8;
volat8_kg_y<-volat8_g_y/1000

volat9_g_y<-skvol9*365*a9*d9;
volat9_kg_y<-volat9_g_y/1000

volat10_g_y<-skvol10*365*a10*d10;
volat10_kg_y<-volat10_g_y/1000

vola_vola<-cbind(volat1_kg_y,volat2_kg_y,volat3_kg_y,volat4_kg_y,
                 volat5_kg_y,volat6_kg_y,volat7_kg_y,volat8_kg_y,
                 volat9_kg_y,volat10_kg_y)

vola<-rowSums(vola_vola)
vola_media<-tapply(vola[2:2413], rep(1:(length(vola[2:2413])/12),each = 12),mean)
plot(vola_media)
vola_media<-tapply(vola[2:147461], rep(1:(length(vola[2:147461])/365),each = 365),mean)

WWW_media<-tapply(WWW[2:147461], rep(1:(length(WWW[2:147461])/365),each = 365),mean)
data_media<-tapply(rdate[2:147461], rep(1:(length(rdate[2:147461])/365),each = 365),mean)

rdate[1431:1442]

vol_2019<-(WWW[1431:1442]); plot(vol_2019)

plot(WWW_media, type='l', ylim=c(0,120))
par(new=T)
plot(vola_media, type='l', ylim=c(0,120), col=2)

as.date(data_media)
dfff<-data.frame(rdate2,WWW_media, vola_media)
dfff2<-data.frame(rdate,WWW, vola)

write.table(dfff,'volatilizzazz.txt')
write.table(dfff2,'volatilizzazz2.txt')

tassi_medi<-tapply(dfff2[2:2413,2:3], rep(1:(length(dfff2[2:2413,2:3])/12),each = 12),mean)

colMeans(dfff2[1431:1442,2:3])



plot(WWW,type='l')
abline(h=0,col=2)
plot(vola,type='l')
abline(h=0,col=2)

# circa 20 kg/y = 100 mol/y # MGL circa 14 mol/y
rdate[1431:1443]
(dfff2[1430:1442,])
mean(dfff2$WWW[1430:1442])
mean(dfff2$vola[1430:1442])


8.2/200.59*1000

kgm2y<-vola/area       #0 -20 ng m2 h
uggh<-kgm2y/(365*24) *10^9     #0 -20 ng m2 h
ngm2h<-uggh*10^3
plot(ngm2h)
ngm2h_media<-tapply(ngm2h[2:2413], rep(1:(length(ngm2h[2:2413])/12),each = 12),mean)

plot(ngm2h_media)

