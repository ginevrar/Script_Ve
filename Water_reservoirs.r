
setwd('C:/Users/Ginevra/Dropbox/2017_Venice/114/Buona/buona')


hgT<-read.csv("Total_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hgT)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10'        )

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hg0<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07;a4<-8.90E+06; a5<-2.22E+07; 
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

area_t<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10

d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; 
d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71	

prof_med<-mean(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10)

hgT_w<-hgT[,2:11]; str(hgT_w)
hgT_w_tot<-rowSums(hgT_w)

Phg_w<-Phgs[,2:11]; str(Phgs)
Phg_w_tot<-rowSums(Phg_w)

hgT_w_g_m3<-hgT_w/10^6
Phg_w_g_m3<-Phg_w/10^6

hgT_w_kg_b1<-(hgT_w_g_m3$wn1*a1*d1)/10^3
hgT_w_kg_b2<-(hgT_w_g_m3$wn2*a2*d2)/10^3
hgT_w_kg_b3<-(hgT_w_g_m3$wn3*a3*d3)/10^3
hgT_w_kg_b4<-(hgT_w_g_m3$wn4*a4*d4)/10^3
hgT_w_kg_b5<-(hgT_w_g_m3$wn5*a5*d5)/10^3
hgT_w_kg_b6<-(hgT_w_g_m3$wc6*a6*d6)/10^3
hgT_w_kg_b7<-(hgT_w_g_m3$wc7*a7*d7)/10^3
hgT_w_kg_b8<-(hgT_w_g_m3$ws8*a8*d8)/10^3
hgT_w_kg_b9<-(hgT_w_g_m3$ws9*a9*d9)/10^3
hgT_w_kg_b10<-(hgT_w_g_m3$ws10*a10*d10)/10^3

head(hgT_w_kg_b1,13)
head(hgT_w_kg_b2,13)
head(hgT_w_kg_b3,13)
head(hgT_w_kg_b4,13)
head(hgT_w_kg_b5,13)
head(hgT_w_kg_b6,13)
head(hgT_w_kg_b7,13)
head(hgT_w_kg_b8,13)
head(hgT_w_kg_b9,13)
head(hgT_w_kg_b10,13)

head(hgT_w_TOT_kg,13)
hgT_w_TOT_kg<-hgT_w_kg_b1 +hgT_w_kg_b2+hgT_w_kg_b3+hgT_w_kg_b4+hgT_w_kg_b5+hgT_w_kg_b6+
             hgT_w_kg_b7+hgT_w_kg_b8+hgT_w_kg_b9+hgT_w_kg_b10

PHg_w_kg_b1<-(Phg_w_g_m3$wn1*a1*d1)/10^3
PHg_w_kg_b2<-(Phg_w_g_m3$wn2*a2*d2)/10^3
PHg_w_kg_b3<-(Phg_w_g_m3$wn3*a3*d3)/10^3
PHg_w_kg_b4<-(Phg_w_g_m3$wn4*a4*d4)/10^3
PHg_w_kg_b5<-(Phg_w_g_m3$wn5*a5*d5)/10^3
PHg_w_kg_b6<-(Phg_w_g_m3$wc6*a6*d6)/10^3
PHg_w_kg_b7<-(Phg_w_g_m3$wc7*a7*d7)/10^3
PHg_w_kg_b8<-(Phg_w_g_m3$ws8*a8*d8)/10^3
PHg_w_kg_b9<-(Phg_w_g_m3$ws9*a9*d9)/10^3
PHg_w_kg_b10<-(Phg_w_g_m3$ws10*a10*d10)/10^3

PHg_w_TOT_kg<-PHg_w_kg_b1 +PHg_w_kg_b2+PHg_w_kg_b3+PHg_w_kg_b4+PHg_w_kg_b5+PHg_w_kg_b6+
  PHg_w_kg_b7+PHg_w_kg_b8+PHg_w_kg_b9+PHg_w_kg_b10

head(PHg_w_TOT_kg,13)

head(PHg_w_kg_b1,13)
head(PHg_w_kg_b2,13)
head(PHg_w_kg_b3,13)
head(PHg_w_kg_b4,13)
head(PHg_w_kg_b5,13)
head(PHg_w_kg_b6,13)
head(PHg_w_kg_b7,13)
head(PHg_w_kg_b8,13)
head(PHg_w_kg_b9,13)
head(PHg_w_kg_b10,13)

hg0_w<-hg0[,2:11]; str(hg0_w)
hg0_w_tot<-rowSums(hg0_w)

head(hgT_w_tot)
head(Phg_w_tot)

bo  <- 2.7E-3* (11.9701*60*60*24) #mc d * ngL -> ug/d
bo2 <- bo*365/10^9

plot(Phg_w_tot, ylim=c(0,30))

hgT_w_tot_g_m3 <-hgT_w_tot/10^6
hg0_w_tot_g_m3 <-hg0_w_tot/10^6
Phg_w_tot_g_m3 <-Phg_w_tot/10^6

hgT_w_tot_kg<-(hgT_w_tot_g_m3*area_t*prof_med)/1000
hg0_w_tot_kg<-(hg0_w_tot_g_m3*area_t*prof_med)/1000
Phg_w_tot_kg<-(Phg_w_tot_g_m3*area_t*prof_med)/1000

head(hgT_w_tot_kg)
head(hg0_w_tot_kg)
head(Phg_w_tot_kg)

hgT_sed1<-hgT[,12:21]; str(hgT_sed1)




plot(hgT_w_kg_b1, type='l', col=1, ylim=c(0,15))
par(new=T)
plot(hgT_w_kg_b2, type='l', col=2, ylim=c(0,15))
par(new=T)
plot(hgT_w_kg_b3,type='l', col=3, ylim=c(0,15))
par(new=T)
plot(hgT_w_kg_b4,type='l', col=4, ylim=c(0,15))
par(new=T)
plot(hgT_w_kg_b5,type='l', col=5, ylim=c(0,15))
par(new=T)
plot(hgT_w_kg_b6,type='l', col=6, ylim=c(0,15))
par(new=T)
plot(hgT_w_kg_b7,type='l', col=7, ylim=c(0,15))
par(new=T)
plot(hgT_w_kg_b8,type='l', col=8, ylim=c(0,15))
par(new=T)
plot(hgT_w_kg_b9,type='l', col=9, ylim=c(0,15))
par(new=T)
plot(hgT_w_kg_b10,type='l', col=10, ylim=c(0,15))


