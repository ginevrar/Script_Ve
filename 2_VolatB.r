#setwd('C:\\Users\\Acer\\Desktop\\last\\NAOH_iniz6')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')     #sim_cl
atm_hg0<-read.table('atm_hg.txt')    #g/m3

setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\long_long')     #sim_cl

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
d1=1.26;d2=0.78;d3=3.35;d4=0.64;d5=1.03;d6=1.64;d7=1.84; d8=0.89;d9=0.69;d10=1.71

time.steps <- hg[,1]; time.steps3 <- time.steps*24*3600
time.st_media<-tapply(time.steps3[2:147461], rep(1:(length(time.steps3[2:147461])/365),each = 365),mean)
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO2 <- as.POSIXct(time.st_media, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate2<-as.Date(TEMPO2, tz= "GMT", format="%Y")
 
tail(rdate)
str(rdate)

library(tidyverse)
mult<-rep(1,8760)
atm_hg0<-atm_hg0 %>%
  rowwise() %>%                     # for each row
  mutate(x = list(V1 * mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
atm_hg0<-as.numeric(atm_hg0$V1)

atm_hg0[1:768944]

#VOLATILIZZAZIONE
H<-7.1*10^-3     # Henry's Law constant
R<-8.206*10^-5   # Universal Gas constant  8.206??0-5 atm/molar-K
Tk<-288.15       # 15^C
divisore<-H/(R*Tk)

kvol_1_day<-evasion[,2:11]  # kvol tutti i water box
hg0_w<-hg0[,2:11]           # hg0 ngL water box
pr<-kvol_1_day*hg0_w        #ug m3 d
hg0_g_m3<-hg0_w/10^6

plot(hg0_w$wn5)
summary(hg0_w$wn5)#ng/L   0.12 - 0.9 adriatco
summary(hg0_w$wc6); summary(hg0_w$wc7)        #kotnik

Vw1<-5.46E+7;Vw2<-2.74E+7;Vw3<-1.05E+8;Vw4<-5.7E+6;Vw5<-2.29E+7;Vw6<-8.9E+7;Vw7<-2.11E+8;Vw8<-2.82E+7;Vw9<-2.04E+7;Vw10<-6.95E+7;

kvol1_1_day<-evasion$wn1  # kvol ogni box
kvol2_1_day<-evasion$wn2  # kvol ogni sim
kvol3_1_day<-evasion$wn3  # kvol ogni sim
kvol4_1_day<-evasion$wn4  # kvol ogni sim
kvol5_1_day<-evasion$wn5  # kvol ogni sim
kvol6_1_day<-evasion$wc6  # kvol ogni sim
kvol7_1_day<-evasion$wc7  # kvol ogni sim
kvol8_1_day<-evasion$ws8  # kvol ogni sim
kvol9_1_day<-evasion$ws9  # kvol ogni sim
kvol10_1_day<-evasion$ws10  # kvol ogni sim

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

## Metodo 1   #ug m3 d /10^9 *365 --> kg y-1
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
WWW_kgy<-WOL1+WOL2+WOL3+WOL4+WOL5+WOL6+WOL7+WOL8+WOL9+WOL10

## Metodo 2
skvol1<-kvol1_1_day*(hg0_g_m3$wn1[2:202] - (atm_hg0/divisore))   #gm3d
skvol2<-kvol2_1_day*(hg0_g_m3$wn2[2:202] - (atm_hg0/divisore))   #gm3d
skvol3<-kvol3_1_day*(hg0_g_m3$wn3[2:202] - (atm_hg0/divisore))
skvol4<-kvol4_1_day*(hg0_g_m3$wn4[2:202] - (atm_hg0/divisore))
skvol5<-kvol5_1_day*(hg0_g_m3$wn5[2:202] - (atm_hg0/divisore))
skvol6<-kvol6_1_day*(hg0_g_m3$wc6[2:202] - (atm_hg0/divisore))
skvol7<-kvol7_1_day*(hg0_g_m3$wc7[2:202] - (atm_hg0/divisore))
skvol8<-kvol8_1_day*(hg0_g_m3$ws8[2:202] - (atm_hg0/divisore))
skvol9<-kvol9_1_day*(hg0_g_m3$ws9[2:202] - (atm_hg0/divisore))
skvol10<-kvol10_1_day*(hg0_g_m3$ws10[2:202] - (atm_hg0/divisore))

volat_kg_d_1<-skvol1*Vw1/10^3; volat_kg_d_2<-skvol6*Vw2/10^3; # evasione kg/d  -- skvol * volume /10^3
volat_kg_d_3<-skvol2*Vw3/10^3; volat_kg_d_4<-skvol7*Vw4/10^3;
volat_kg_d_5<-skvol3*Vw5/10^3; volat_kg_d_6<-skvol8*Vw6/10^3;
volat_kg_d_7<-skvol4*Vw7/10^3; volat_kg_d_8<-skvol9*Vw8/10^3;
volat_kg_d_9<-skvol5*Vw9/10^3; volat_kg_d_10<-skvol10*Vw10/10^3;

volat_kg_d<- volat_kg_d_1+volat_kg_d_2+volat_kg_d_3+volat_kg_d_4+volat_kg_d_5+
volat_kg_d_6+volat_kg_d_7+volat_kg_d_8+volat_kg_d_9+volat_kg_d_10

volat_kg_y<-volat_kg_d*365
plot(volat_kg_y)
volat1_kmol_y<-volat_kg_y/(200.59); 
plot(volat1_kmol_y$V1)

# VOLATILIZZAZIONE Metodo 3
vvol2_gm3_day<-kvol_1_day
vvol2_g_day<-vvol2_gm3_day
vvol2_kg_y<-rowSums(vvol2_g_day*365)*tot_vol_m3/1000


if (length(hg0$wn1) > 206 & length(hg0$wn1)< 2450) {
  
vola_media<-tapply(volat_kg_y[2:2413,], rep(1:(length(volat_kg_y[2:2413,])/12),each = 12),mean)
WWW_media<-tapply(WWW_kgy[2:2413], rep(1:(length(WWW_kgy[2:2413])/12),each = 12),mean)
vol2bo_media<-tapply(vvol2_kg_y[2:2413], rep(1:(length(vvol2_kg_y[2:2413])/12),each = 12),mean)

} else if (length(hg0$wn1) > 2450 & length(hg0$wn1)< 762120) {
  
vola_media<-tapply(volat_kg_y[2:147461], rep(1:(length(volat_kg_y[2:147461])/365),each = 365),mean)
WWW_media<-tapply(WWW_kgy[2:147461], rep(1:(length(WWW_kgy[2:147461])/365),each = 365),mean)
data_media<-tapply(rdate[2:147461], rep(1:(length(rdate[2:147461])/365),each = 365),mean)
vol2bo_media<-tapply(vvol2_kg_y[2:147461], rep(1:(length(vvol2_kg_y[2:147461])/12),each = 12),mean)
dfff<-data.frame(rdate2,WWW_media, vola_media,vol2bo_media)

} else if (length(hg0$wn1) < 206) {
  
vola_media<-volat_kg_y[2:203,]
WWW_media<-WWW_kgy[2:203]
vol2bo_media<-vvol2_kg_y[2:203]
dfff<-data.frame(rdate[2:203],WWW_media, vola_media,vol2bo_media)

} else if (length(hg0$wn1) > 760000) { 
  
  vola_media<-tapply(volat_kg_y[2:762121], rep(1:(length(volat_kg_y[2:762121])/8760),each = 8760),mean)
  WWW_media<-tapply(WWW_kgy[2:762121], rep(1:(length(WWW_kgy[2:762121])/8760),each = 8760),mean)
  data_media<-tapply(rdate[2:762121], rep(1:(length(rdate[2:762121])/8760),each = 8760),mean)
  vol2bo_media<-tapply(vvol2_kg_y[2:762121], rep(1:(length(vvol2_kg_y[2:762121])/8760),each = 8760),mean)
  dfff<-data.frame(rdate2,WWW_media, vola_media,vol2bo_media)
}

str(vola_media)
str(WWW_media)

plot(WWW_media, type='l', ylim=c(0,120))
par(new=T)
plot(vola_media$V1, type='l', ylim=c(0,120), col=2)
par(new=T)
plot(vol2bo_media, type='l', ylim=c(0,120), col=2)

write.table(dfff,'volatilizzazz.txt')


# circa 20 kg/y = 100 mol/y # MGL circa 14 mol/y

mean(VV$vola[1431:1443])
8.2/200.59*1000
50/area
14/area_MGL

plot(vola, type='l')

24*365

768944/8760

8760*87.779
