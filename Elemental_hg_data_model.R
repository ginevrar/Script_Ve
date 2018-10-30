setwd('G:/il mio Drive/MERCURIO/Hg_Literature_observtions')
hg0d<-read.table('hg0Conc_MEdsea.txt',header=T)      

setwd('C:/Users/Acer/Desktop/baba/buona/double_in/MMM98')
Vol3<-read.csv("Volatilization_Loss_rate.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Vol3)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hgo3<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hgo3)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

library(dplyr)
ionio<-filter(hg0d, basin=='Ionio')
sicily<-filter(hg0d, basin=='Sicily')
Otr<-filter(hg0d, basin=='Otr')
Ad<-filter(hg0d, basin=='Ad')
Nad<-filter(hg0d, basin=='NAd')
Wmed<-filter(hg0d, basin=='Wmed')
Emed<-filter(hg0d, basin=='Emed')
Tirreno<-filter(hg0d, basin=='Tirreno')
MGL<-filter(hg0d, basin=='Marano-Grado_Lagoon')
Arcachon_Bay<-filter(hg0d, basin=='Arcachon_Bay')
Thau_Lagoon<-filter(hg0d, basin=='Thau_Lagoon')

b1_hg0<-hgo3$wn1[1419:1430]*1000  #1419:1430 2018  ||  1335:1346 
b2_hg0<-hgo3$wn2[1419:1430]*1000
b3_hg0<-hgo3$wn3[1419:1430]*1000
b4_hg0<-hgo3$wn4[1419:1430]*1000
b5_hg0<-hgo3$wn5[1419:1430]*1000
b6_hg0<-hgo3$wc6[1419:1430]*1000
b7_hg0<-hgo3$wc7[1419:1430]*1000
b8_hg0<-hgo3$ws8[1419:1430]*1000
b9_hg0<-hgo3$ws9[1419:1430]*1000
b10_hg0<-hgo3$ws10[1419:1430]*1000

v1<-54600000; v2<-27400000; v3<-105000000;v4<-5700000;v5<-22900000;v6<-89000000;v7<-211000000;v8<-28200000;v9<-20400000;v10<-69500000
v1L<-v1*1000; v2L<-v2*1000; v3L<-v3*1000;v4L<-v4*1000;v5L<-v5*1000;v6L<-v6*1000;v7L<-v7*1000;v8L<-v8*1000;v9L<-v9*1000;v10L<-v10*1000
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03;d6<-1.64; d7<-1.84; d8<-0.89;d9<-0.69; d10<-1.71
a1<-v1/d1; a2<-v2/d2; a3<-v3/d3;a4<-v4/d4; a5<-v5/d5;a6<-v6/d6; a7<-v7/d7; a8<-v8/d8;a9<-v9/d9; a10<-v10/d10

b1_vol<-hgo3$wn1[1419:1430]*Vol3$wn1[1419:1430]*v1L/(a1*24) # ng L-1 *L* d-1 /(m2 * 24)-> ng /m2 h
b2_vol<-hgo3$wn2[1419:1430]*Vol3$wn2[1419:1430]*v2L/(a2*24) 
b3_vol<-hgo3$wn3[1419:1430]*Vol3$wn3[1419:1430]*v3L/(a3*24)  
b4_vol<-hgo3$wn4[1419:1430]*Vol3$wn4[1419:1430]*v4L/(a4*24) 
b5_vol<-hgo3$wn5[1419:1430]*Vol3$wn5[1419:1430]*v5L/(a5*24)  
b6_vol<-hgo3$wc6[1419:1430]*Vol3$wc6[1419:1430]*v6L/(a6*24)  
b7_vol<-hgo3$wc7[1419:1430]*Vol3$wc7[1419:1430]*v7L/(a7*24)  
b8_vol<-hgo3$ws8[1419:1430]*Vol3$ws8[1419:1430]*v8L/(a8*24)  
b9_vol<-hgo3$ws9[1419:1430]*Vol3$ws9[1419:1430]*v9L/(a9*24)  
b10_vol<-hgo3$ws10[1419:1430]*Vol3$ws10[1419:1430]*v10L/(a10*24) 

names=c('W Med', 'Tirrenian','Sicily',
        'Ionian','E Med','Otranto','Adriatic','N Adriatic',
        'Arcachon Bay','Marano Grado Lagoon','Thau Lagoon',
        'VE North','VE C-North','VE C-South','VE South')

names2=c('W Med', 'Tirrenian','Sicily',
        'Ionian','E Med','Otranto','Adriatic','N Adriatic',
        'VE North','VE C-North','VE C-South','VE South')


mod_hg0_nord<-c(b1_hg0,b2_hg0,b4_hg0)
mod_hg0_cnord<-c(b3_hg0,b5_hg0,b6_hg0)
mod_hg0_csud<-c(b7_hg0)
mod_hg0_sud<-c(b8_hg0,b9_hg0,b10_hg0)

mod_vol_nord<-c(b1_vol,b2_vol,b4_vol)
mod_vol_cnord<-c(b3_vol,b5_vol,b6_vol)
mod_vol_csud<-c(b7_vol)
mod_vol_sud<-c(b8_vol,b9_vol,b10_vol)

png('elemental_hg_conc_andFluxes.png', width =56, height = 30 , res=300, units='cm')
  par(mfrow=c(2,1), bty='n', cex.axis=1.3, cex.lab=1.3)
boxplot(Wmed$Hg0_pgL, Tirreno$Hg0_pgL, sicily$Hg0_pgL, ionio$Hg0_pgL,Emed$Hg0_pgL, Otr$Hg0_pgL,
        Ad$Hg0_pgL,Nad$Hg0_pgL,Arcachon_Bay$Hg0_pgL,MGL$Hg0_pgL,Thau_Lagoon$Hg0_pgL,
        mod_hg0_nord,mod_hg0_cnord,mod_hg0_csud,mod_hg0_sud, ylim=c(0,400),
        ylab=c('pg l-1'), main='Hg0 concentrations',  
      names=F,
        col=c('#BCBCBC66','#BCBCBC66','#BCBCBC66','#BCBCBC66','#BCBCBC66','#BCBCBC66',
              '#BCBCBC88','#BCBCBC66','#4C4C4C66','#4C4C4C66','#4C4C4C66',
              '#4575b477','#e5e57277','#f7922077','#a5002877'))
text(1, 300, 'Western \n Mediterranean Sea', cex=1.2)
text(2, 300, 'Tyrrhenian \n Sea', cex=1.2)
text(3, 300, 'Sicily \n Strait', cex=1.2)
text(4, 300, 'Ionian \n Sea', cex=1.2)
text(5, 300, 'Estern \n Mediterranean Sea', cex=1.2)
text(6, 300, 'Otranto \n Strait', cex=1.2)
text(7, 300, 'Adriatic \n Sea', cex=1.2)
text(8, 300, 'Nothern Adriatic \n Sea', cex=1.2)
text(9, 300, 'Arcachon \n Bay', cex=1.2)
text(10,300, 'Marano Grado \n Lagoon', cex=1.2)
text(11, 300, 'Thau \n Lagoon', cex=1.2)
text(11.9, 300, 'Venice Lagoon \n North \n (model)', cex=1.2)
text(13.05, 300, 'Venice Lagoon \n C-North \n (model)', cex=1.2)
text(14.1, 300, 'Venice Lagoon \n C-South \n (model)', cex=1.2)
text(15.2, 300, 'Venice Lagoon \n South \n (model)', cex=1.2)
#dev.off()
#png('elemental_hg_fluxeszz.png', width =36, height = 20 , res=300, units='cm')
boxplot(Wmed$Flusso,Tirreno$Flusso, sicily$Flusso,ionio$Flusso,Emed$Flusso,
        Otr$Flusso,Ad$Flusso,Nad$Flusso,NA, NA, NA, 
        mod_vol_nord, mod_vol_cnord, mod_vol_csud, mod_vol_sud, ylim=c(0,50), 
        col=c('#BCBCBC66','#BCBCBC66','#BCBCBC66','#BCBCBC66','#BCBCBC66','#BCBCBC66',
              '#BCBCBC88','#BCBCBC66','#4C4C4C66','#4C4C4C66','#4C4C4C66',
              '#4575b477','#e5e57277','#f7922077','#a5002877'),names=F,  
        ylab=c('ng m-2 d-1'), main='Hg0 evasion fluxes')
text(1, 45, 'Western \n Mediterranean Sea', cex=1.2)
text(2, 45, 'Tyrrhenian \n Sea', cex=1.2)
text(3, 45, 'Sicily \n Strait', cex=1.2)
text(4, 45, 'Ionian \n Sea', cex=1.2)
text(5, 45, 'Estern \n Mediterranean Sea', cex=1.2)
text(6, 45, 'Otranto \n Strait', cex=1.2)
text(7, 45, 'Adriatic \n Sea', cex=1.2)
text(8, 45, 'Nothern Adriatic \n Sea', cex=1.2)
text(9, 45, 'Arcachon \n Bay', cex=1.2)
text(10,45, 'Marano Grado \n Lagoon', cex=1.2)
text(11, 45, 'Thau \n Lagoon', cex=1.2)
text(11.9, 45, 'Venice Lagoon \n North \n (model)', cex=1.2)
text(13.05, 45, 'Venice Lagoon \n C-North \n (model)', cex=1.2)
text(14.1, 45, 'Venice Lagoon \n C-South \n (model)', cex=1.2)
text(15.2, 45, 'Venice Lagoon \n South \n (model)', cex=1.2)
dev.off()

summary(b6_hg0);summary(b6_vol)
#
#
#
## MM18        MAx vol= 185.52 ng m-2 d-1   hg0=5003.5  pgL
## MM19        MAx vol= 211.95 ng m-2 d-1   hg0=4599.9  pgL
## MM19bis     MAx vol= 234.62 ng m-2 d-1   hg0=5109.3  pgL
## MM19tris    MAx vol= 213.44 ng m-2 d-1   hg0=4595.0  pgL
## MM19quatris MAx vol= 187.82 ng m-2 d-1   hg0=4033.0  pgL
## MM20        MAx vol= 216.00 ng m-2 d-1   hg0=4626.7  pgL
## MM20bis     MAx vol= 216.00 ng m-2 d-1   hg0=4626.7  pgL

summary(hg0d$Hg0_pgL/1000)

time.steps <- hgo3$time
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
rdate
str(rdate)
rdate[1323:1334]

plot(rdate, hgo3$wn3*1000, type='l', col='blue')
plot(rdate, hgo3$wn2*1000, type='l', col='blue')
plot(rdate, hgo3$wn1*1000, type='l', col='blue')
plot(rdate, hgo3$wn4*1000, type='l', col='blue')
abline(v=rdate[1323])

plot(rdate[1419:1430], hgo3$wn1[1419:1430]*1000, type='l')
hgo3$wn2[1419:1430]
