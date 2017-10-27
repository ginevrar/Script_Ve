
setwd('C:/Users/Ginevra/Dropbox/2017_Venice/115')
setwd('C:/Users/gi/Dropbox/2017_Venice/114/Buona/curr')


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

area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; 
d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71	

prof_med<-mean(d1,d2,d3,d4,d5,d6,d7,d8,d9,d10)

hgT_w<-hgT[,2:11]; str(hgT_w)
hgT_w_tot<-rowSums(hgT_w)

Phg_w<-Phgs[,2:11]; str(Phgs)
Phg_w_tot<-rowSums(Phg_w)

hg0_w<-hg0[,2:11]; str(hg0_w)
hg0_w_tot<-rowSums(hg0_w)

head(hgT_w_tot)
head(Phg_w_tot)

bo  <- 2.7E-3* (11.9701*60*60*24) #mc d * ngL -> ug/d
bo2 <- bo*365/10^9


15.64

plot(Phg_w_tot, ylim=c(0,30))

hgT_w_tot_g_m3 <-hgT_w_tot/10^6
hg0_w_tot_g_m3 <-hg0_w_tot/10^6
Phg_w_tot_g_m3 <-Phg_w_tot/10^6

hgT_w_tot_kg<-(hgT_w_tot_g_m3*area*prof_med)/1000
hg0_w_tot_kg<-(hg0_w_tot_g_m3*area*prof_med)/1000
Phg_w_tot_kg<-(Phg_w_tot_g_m3*area*prof_med)/1000

head(hgT_w_tot_kg)
head(hg0_w_tot_kg)
head(Phg_w_tot_kg)

  
hgT_sed1<-hgT[,12:21]; str(hgT_sed1)

