#setwd('C:\\Users\\Acer\\Desktop\\last\\NAOH_iniz6')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')     #sim_cl
atm_hg0<-read.table('atm_hg.txt',header = FALSE, sep = "", quote = "\"'",
dec = ".")    #g/m3

y<-seq(1900,2100)

atm_hg0<-data.frame(y,atm_hg0)

#setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\long_long')     #sim_cl
setwd('G:\\Il mio Drive\\CL_10\\out')
hg0<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

time.steps <- hg0[,1]; time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

hg0_95<-hg0[878071:887414,1:11]
hg0_19<-hg0[1102481:1111824,1:11]
hg0_10<-hg0[91244:100359,1:11]
hg0_70<-hg0[644318:653661,1:11]


str(hg0_95)

rdate[878072]    # inizio 1995
rdate[887414]    # fine 1995

rdate[1102481]   # inizio 1995
rdate[1111824]   # inizio 1995

rdate[644318]   # "1970-01-01"
rdate[653661]   # "1970-12-31"

rdate[91244]     # "1910-01-01"
rdate[100359]    # "1910-12-31"

rdate10<-rdate[91244:100359]     #2019
rdate70<-rdate[644318:653661]     #2019
rdate95<-rdate[878071:887414]       #1995
rdate19<-rdate[1102481:1111824]     #2019

 
 
evasion<-read.csv("Volatilization_Loss_Rate.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(evasion)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
 


evasion_10<-evasion[ 91244:100359,1:11]
evasion_70<-evasion[644318:653661,1:11]
evasion_95<-evasion[878071:887414,1:11]
evasion_19<-evasion[1102481:1111824,1:11]

evasion<-NA

phRed<-read.csv("Photo_Reduction_Divalent_Hg.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(phRed)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

phRed_10<-phRed[ 91244:100359,1:11]
phRed_70<-phRed[644318:653661,1:11]
phRed_95<-phRed[878071:887414,1:11]
phRed_19<-phRed[1102481:1111824,1:11]

phRed<-NA

# aree boxes
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07;a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07
# depths boxes
d1=1.26;d2=0.78;d3=3.35;d4=0.64;d5=1.03;d6=1.64;d7=1.84; d8=0.89;d9=0.69;d10=1.71

atm_hg0_10<-atm_hg0$V1[11]
atm_hg0_70<-atm_hg0$V1[71]
atm_hg0_95<-atm_hg0$V1[97]
atm_hg0_19<-atm_hg0$V1[120]


hgII_19 <- hg_19[,1:21]-(mehg_19+hg0_19)

#str(hg_19)
phOX_19<-phRed_19/1.5*5.7
phDem_19<-phRed_19/1.5*0.03
  
fotoridotto   <-phRed_19*hgII_19[,1:11]    #ug m-3 * d-1 
fotoossidato  <-phOX_19*hg0_19[,1:11]
fotodemetilato<-phDem_19*mehg_19[,1:11]

plot(rdate19,fotoridotto$wn1,type='l')
plot(phOX_19$wn1,type='l')
plot(phDem_19$wn1,type='l')

colMeans(fotoossidato)
colMeans(fotodemetilato)
colMeans(fotoridotto)

plot(fotoossidato$wn1,type='l')
plot(fotodemetilato$wn1,type='l')
plot(fotoridotto$wn1,type='l')

#VOLATILIZZAZIONE
H<-7.1*10^-3     # Henry's Law constant
R<-8.206*10^-5   # Universal Gas constant  8.206??0-5 atm/molar-K
Tk<-288.15       # 15^C
divisore<-H/(R*Tk)

kvol_1_day<-evasion_19[,2:11]  # kvol tutti i water box
hg0_w<-hg0_19[,2:11]           # hg0 ngL water box
pr<-kvol_1_day*hg0_w        #ug m3 d
hg0_g_m3<-hg0_w/10^6

plot(hg0_w$wn5)
summary(hg0_w$wn5)#ng/L   0.12 - 0.9 adriatco
summary(hg0_w$wc6); summary(hg0_w$wc7)        #kotnik

Vw1<-5.46E+7;Vw2<-2.74E+7;Vw3<-1.05E+8;Vw4<-5.7E+6;Vw5<-2.29E+7;Vw6<-8.9E+7;Vw7<-2.11E+8;Vw8<-2.82E+7;Vw9<-2.04E+7;Vw10<-6.95E+7
tot_vol_m3<-Vw1+Vw2 +Vw3+Vw4+Vw5+Vw6+Vw7+Vw8+Vw9+Vw10

kvol1_1_day<-evasion_19$wn1  # kvol ogni box
kvol2_1_day<-evasion_19$wn2  # kvol ogni sim
kvol3_1_day<-evasion_19$wn3  # kvol ogni sim
kvol4_1_day<-evasion_19$wn4  # kvol ogni sim
kvol5_1_day<-evasion_19$wn5  # kvol ogni sim
kvol6_1_day<-evasion_19$wc6  # kvol ogni sim
kvol7_1_day<-evasion_19$wc7  # kvol ogni sim
kvol8_1_day<-evasion_19$ws8  # kvol ogni sim
kvol9_1_day<-evasion_19$ws9  # kvol ogni sim
kvol10_1_day<-evasion_19$ws10  # kvol ogni sim

hg0_b1_19<-hg0_19$wn1    # hg0 ngL
hg0_b2_19<-hg0_19$wn2    # hg0 ngL
hg0_b3_19<-hg0_19$wn3    # hg0 ngL
hg0_b4_19<-hg0_19$wn4    # hg0 ngL
hg0_b5_19<-hg0_19$wn5    # hg0 ngL
hg0_b6_19<-hg0_19$wc6    # hg0 ngL
hg0_b7_19<-hg0_19$wc7    # hg0 ngL
hg0_b8_19<-hg0_19$ws8    # hg0 ngL
hg0_b9_19<-hg0_19$ws9    # hg0 ngL
hg0_b10_19<-hg0_19$ws10    # hg0 ngL

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
WWW_df<-cbind(WOL1,WOL2,WOL3,WOL4,WOL5,WOL6,WOL7,WOL8,WOL9,WOL10)

colMeans(WWW_df)

## Metodo 2
skvol1<-kvol1_1_day*(hg0_g_m3$wn1 - (atm_hg0_19/divisore))   #gm3d
skvol2<-kvol2_1_day*(hg0_g_m3$wn2 - (atm_hg0_19/divisore))   #gm3d
skvol3<-kvol3_1_day*(hg0_g_m3$wn3 - (atm_hg0_19/divisore))
skvol4<-kvol4_1_day*(hg0_g_m3$wn4 - (atm_hg0_19/divisore))
skvol5<-kvol5_1_day*(hg0_g_m3$wn5 - (atm_hg0_19/divisore))
skvol6<-kvol6_1_day*(hg0_g_m3$wc6 - (atm_hg0_19/divisore))
skvol7<-kvol7_1_day*(hg0_g_m3$wc7 - (atm_hg0_19/divisore))
skvol8<-kvol8_1_day*(hg0_g_m3$ws8 - (atm_hg0_19/divisore))
skvol9<-kvol9_1_day*(hg0_g_m3$ws9 - (atm_hg0_19/divisore))
skvol10<-kvol10_1_day*(hg0_g_m3$ws10 - (atm_hg0_19/divisore))

volat_kg_d_1<-skvol1*Vw1/10^3; volat_kg_d_2<-skvol6*Vw2/10^3; # evasione kg/d  -- skvol * volume /10^3
volat_kg_d_3<-skvol2*Vw3/10^3; volat_kg_d_4<-skvol7*Vw4/10^3;
volat_kg_d_5<-skvol3*Vw5/10^3; volat_kg_d_6<-skvol8*Vw6/10^3;
volat_kg_d_7<-skvol4*Vw7/10^3; volat_kg_d_8<-skvol9*Vw8/10^3;
volat_kg_d_9<-skvol5*Vw9/10^3; volat_kg_d_19<-skvol10*Vw10/10^3;

volat_kg_d<- volat_kg_d_1+volat_kg_d_2+volat_kg_d_3+volat_kg_d_4+volat_kg_d_5+
volat_kg_d_6+volat_kg_d_7+volat_kg_d_8+volat_kg_d_9+volat_kg_d_19

volat_kg_y<-volat_kg_d*365
plot(rdate70,volat_kg_y)
volat1_kmol_y<-volat_kg_y/(200.59); 
plot(volat1_kmol_y$V1)

# VOLATILIZZAZIONE Metodo 3
vvol2_gm3_day<-kvol_1_day
vvol2_g_day<-vvol2_gm3_day
vvol2_kg_y<-rowSums(vvol2_g_day*365)*tot_vol_m3/1000

volat_kg_y<-data.frame(WWW_kgy, volat_kg_y,vvol2_kg_y)

plot(WWW_kgy)
plot(volat_kg_y$volat_kg_y)

mean(WWW_kgy)
mean(volat_kg_y$volat_kg_y)
plot(volat_kg_y$volat_kg_y)
getwd()
##if (length(hg0$wn1) == 9344 ) {
  
#  vola_media<-tapply(volat_kg_y[2:2413,], rep(1:(length(volat_kg_y[2:2413,])/12),each = 12),mean)
#  WWW_media<-tapply(WWW_kgy[2:2413], rep(1:(length(WWW_kgy[2:2413])/12),each = 12),mean)
#vol2bo_media<-tapply(vvol2_kg_y[2:2413], rep(1:(length(vvol2_kg_y[2:2413])/12),each = 12),mean)
  
#} else if (length(hg0$wn1) > 206 & length(hg0$wn1)< 2450) {
  
#vola_media<-tapply(volat_kg_y[2:2413,], rep(1:(length(volat_kg_y[2:2413,])/12),each = 12),mean)
#WWW_media<-tapply(WWW_kgy[2:2413], rep(1:(length(WWW_kgy[2:2413])/12),each = 12),mean)
#vol2bo_media<-tapply(vvol2_kg_y[2:2413], rep(1:(length(vvol2_kg_y[2:2413])/12),each = 12),mean)

#} else if (length(hg0$wn1) > 2450 & length(hg0$wn1)< 762120) {
  
#vola_media<-tapply(volat_kg_y[2:147461], rep(1:(length(volat_kg_y[2:147461])/365),each = 365),mean)
#WWW_media<-tapply(WWW_kgy[2:147461], rep(1:(length(WWW_kgy[2:147461])/365),each = 365),mean)
#data_media<-tapply(rdate[2:147461], rep(1:(length(rdate[2:147461])/365),each = 365),mean)
#vol2bo_media<-tapply(vvol2_kg_y[2:147461], rep(1:(length(vvol2_kg_y[2:147461])/12),each = 12),mean)
#dfff<-data.frame(rdate2,WWW_media, vola_media,vol2bo_media)

#} else if (length(hg0$wn1) < 206) {
  
##vola_media<-volat_kg_y[2:203,]
#WWW_media<-WWW_kgy[2:203]
#vol2bo_media<-vvol2_kg_y[2:203]
#dfff<-data.frame(rdate[2:203],WWW_media, vola_media,vol2bo_media)

#} else if (length(hg0$wn1) > 760000) { 
  
#  vola_media<-tapply(volat_kg_y[2:762121], rep(1:(length(volat_kg_y[2:762121])/8760),each = 8760),mean)
 # WWW_media<-tapply(WWW_kgy[2:762121], rep(1:(length(WWW_kgy[2:762121])/8760),each = 8760),mean)
 # data_media<-tapply(rdate[2:762121], rep(1:(length(rdate[2:762121])/8760),each = 8760),mean)
 # vol2bo_media<-tapply(vvol2_kg_y[2:762121], rep(1:(length(vvol2_kg_y[2:762121])/8760),each = 8760),mean)
 # dfff<-data.frame(rdate2,WWW_media, vola_media,vol2bo_media)
#}

##str(vola_media)
#str(WWW_media)

#plot(WWW_media, type='l', ylim=c(0,120))
#par(new=T)
#plot(vola_media$V1, type='l', ylim=c(0,120), col=2)
#par(new=T)
#plot(vol2bo_media, type='l', ylim=c(0,120), col=2)

write.table(dfff,'volatilizzazz_19.txt')

  colMeans(dfff)

# circa 20 kg/y = 100 mol/y # MGL circa 14 mol/y

  write.table(burial_19[,1:10],file='Burial_19.txt')
  