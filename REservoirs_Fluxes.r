 
  setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10')     #sim_cl
  setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\REference_OK')     #sim_cl
  
 hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  hg<-hg[1:2412,]

  time.steps <- hg$time;time.steps3 <- time.steps*24*3600;
  TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
  rdate<-as.Date(TEMPO, tz= "GMT", format="%Y");head(rdate)
  rdate[2412]
  
  
  SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')#ng/g

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
TOTs<-TOTs[2:2412,]

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
silts<-silts[2:2412,]

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
POMs<-POMs[2:2412,]

sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
sands<-sands[2:2412,]

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
Phgs<-Phgs[2:2412,]

DEPO_silt<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
DEPO_silt<-DEPO_silt[1:2412,]

DEPO_POM<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
DEPO_POM<-DEPO_POM[1:2412,]

DEPO_sand<-read.csv("Sand_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_sand)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10', 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
DEPO_sand<-DEPO_sand[1:2412,]

RESUS_silt<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                      'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
RESUS_silt<-RESUS_silt[1:2412,]

RESUS_POM<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
RESUS_POM<-RESUS_POM[1:2412,]

RESUS_sand<-read.csv("Sand_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_sand)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',	'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               	  	'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
               # aree box
RESUS_sand<-RESUS_sand[1:2412,]


a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07; a9<-2.95E+07;a10<-4.06E+07
area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10

AT<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10

#d1<-1.26;  d3<-3.35;d5<-1.03; d6<-1.64; d7<-1.84;   d10<-1.71
# d2<-0.78; d4<-0.64; d8<-1 #d8<-0.89;d9<-1 #d9<-0.69;

d1<-1; d2<-1; d3<-1; d4<-1; d5<-1; d6<-1; d7<-1; d8<-1; d9<-1; d10<-1

#fsilt=silts/TOTs;fPOM=POMs/TOTs;fsand=sands/TOTs

ksilt<-1.5*10^5; kpom<-2*10^5; kdoc<-10000
partden1=1+0.000001*((ksilt*silts)+(sands)+(kpom*POMs)+(kdoc*3.19))
faq=1./partden1
fsilt=(0.000001*ksilt*silts)/partden1
fsand=(0.000001*1*sands)/partden1
fpom= (0.000001*kpom*POMs)/partden1
fdoc=(0.000001*kdoc*3.19)/partden1
head(fsilt+fpom+fsand+faq+fdoc)


fsilt+fpom+fsand+faq+fdoc

fsiltp <-fsilt/(fsilt+fpom+fsand)
fpomp <- fpom /(fsilt+fpom+fsand)
fsandp <-fsand/(fsilt+fpom+fsand)

fsiltp+fpomp+fsandp

head(hg$wn1)

head(reservoir_hgp_w1/10^6, 250)
rdate[1190]
silts[4,]
silts[1190,]
POMs[1,]
silts[1190,]

head(silts)

plot(head(reservoir_hgp_w1/10^6, 250),type='l')



head(fpom$wn1)

reservoir_hg_w1 <- a1*d1 * hg$wn1      # ug/m3(w+s) *vol(m3) = ug(hg)
reservoir_hg_w2 <- a2*d2 * hg$wn2
reservoir_hg_w3 <- a3*d3 * hg$wn3
reservoir_hg_w4 <- a4*d4 * hg$wn4
reservoir_hg_w5 <- a5*d5 * hg$wn5
reservoir_hg_w6 <- a6*d6 * hg$wc6
reservoir_hg_w7 <- a7*d7 * hg$wc7
reservoir_hg_w8 <- a8*d8 * hg$ws8
reservoir_hg_w9 <- a9*d9 * hg$ws9
reservoir_hg_w10<- a10*d10* hg$ws10

tail(hg$ws10)

reservoir_hgp_w1 <- a1*d1 *Phgs$wn1    # ug/m3(w+s) *vol(m3) = ug(hg)
reservoir_hgp_w2 <- a2*d2 *Phgs$wn2
reservoir_hgp_w3 <- a3*d3 *Phgs$wn3
reservoir_hgp_w4 <- a4*d4 *Phgs$wn4
reservoir_hgp_w5 <- a5*d5 *Phgs$wn5
reservoir_hgp_w6 <- a6*d6 *Phgs$wc6
reservoir_hgp_w7 <- a7*d7 *Phgs$wc7
reservoir_hgp_w8 <- a8*d8 *Phgs$ws8
reservoir_hgp_w9 <- a9*d9 *Phgs$ws9
reservoir_hgp_w10<- a10*d10 *Phgs$ws10

head(hg$wn1)
head(Phgs$wn1)
head(reservoir_hgp_w10)

hgsilt_w1<-reservoir_hgp_w1*fsiltp$wn1    ##  ug(hg) adsorbito al silt
hgsilt_w2<-reservoir_hgp_w2*fsiltp$wn2
hgsilt_w3<-reservoir_hgp_w3*fsiltp$wn3
hgsilt_w4<-reservoir_hgp_w4*fsiltp$wn4
hgsilt_w5<-reservoir_hgp_w5*fsiltp$wn5
hgsilt_w6<-reservoir_hgp_w6*fsiltp$wc6
hgsilt_w7<-reservoir_hgp_w7*fsiltp$wc7
hgsilt_w8<-reservoir_hgp_w8*fsiltp$ws8
hgsilt_w9<-reservoir_hgp_w9*fsiltp$ws9
hgsilt_w10<-reservoir_hgp_w10*fsiltp$ws10

hgpom_w1<-reservoir_hgp_w1*fpomp$wn1      ## ug(hg) adsorbito al pom
hgpom_w2<-reservoir_hgp_w2*fpomp$wn2
hgpom_w3<-reservoir_hgp_w3*fpomp$wn3
hgpom_w4<-reservoir_hgp_w4*fpomp$wn4
hgpom_w5<-reservoir_hgp_w5*fpomp$wn5
hgpom_w6<-reservoir_hgp_w6*fpomp$wc6
hgpom_w7<-reservoir_hgp_w7*fpomp$wc7
hgpom_w8<-reservoir_hgp_w8*fpomp$ws8
hgpom_w9<-reservoir_hgp_w9*fpomp$ws9
hgpom_w10<-reservoir_hgp_w10*fpomp$ws10

hgsand_w1<-reservoir_hgp_w1*fsandp$wn1    ## ug(hg)  adsorbito a sabbie
hgsand_w2<-reservoir_hgp_w2*fsandp$wn2
hgsand_w3<-reservoir_hgp_w3*fsandp$wn3
hgsand_w4<-reservoir_hgp_w4*fsandp$wn4
hgsand_w5<-reservoir_hgp_w5*fsandp$wn5
hgsand_w6<-reservoir_hgp_w6*fsandp$wc6
hgsand_w7<-reservoir_hgp_w7*fsandp$wc7
hgsand_w8<-reservoir_hgp_w8*fsandp$ws8
hgsand_w9<-reservoir_hgp_w9*fsandp$ws9
hgsand_w10<-reservoir_hgp_w10*fsandp$ws10

resw1<-hgsilt_w1+hgsand_w1+hgpom_w1
plot(rdate, reservoir_hgp_w1/10^9, ylim=c(0,5), type='l')
par(new=T)
plot(rdate, rr/10^9, ylim=c(0,5), col=2, type='l',lty=2)

hgaq_w1<-reservoir_hg_w1*faq$wn1  ##ug(hg)  adsorbito a sabbie
hgaq_w2<-reservoir_hg_w2*faq$wn2
hgaq_w3<-reservoir_hg_w3*faq$wn3
hgaq_w4<-reservoir_hg_w4*faq$wn4
hgaq_w5<-reservoir_hg_w5*faq$wn5
hgaq_w6<-reservoir_hg_w6*faq$wc6
hgaq_w7<-reservoir_hg_w7*faq$wc7
hgaq_w8<-reservoir_hg_w8*faq$ws8
hgaq_w9<-reservoir_hg_w9*faq$ws9
hgaq_w10<-reservoir_hg_w10*faq$ws10

hgdoc_w1<-reservoir_hg_w1*fdoc$wn1    ##ug(hg)  adsorbito a sabbie
hgdoc_w2<-reservoir_hg_w2*fdoc$wn2
hgdoc_w3<-reservoir_hg_w3*fdoc$wn3
hgdoc_w4<-reservoir_hg_w4*fdoc$wn4
hgdoc_w5<-reservoir_hg_w5*fdoc$wn5
hgdoc_w6<-reservoir_hg_w6*fdoc$wc6
hgdoc_w7<-reservoir_hg_w7*fdoc$wc7
hgdoc_w8<-reservoir_hg_w8*fdoc$ws8
hgdoc_w9<-reservoir_hg_w9*fdoc$ws9
hgdoc_w10<-reservoir_hg_w10*fdoc$ws10

# Deposition rate Deposition for Hg in silt
Fds1 <- hgsilt_w1 * (DEPO_silt$wn1/d1)/(86400)     # ug(hg) * 1 d-1 --> ug s-1
Fds2 <- hgsilt_w2 * (DEPO_silt$wn2/d2)/(86400)
Fds3 <- hgsilt_w3 * (DEPO_silt$wn3/d3)/(86400)
Fds4 <- hgsilt_w4 * (DEPO_silt$wn4/d4)/(86400)
Fds5 <- hgsilt_w5 * (DEPO_silt$wn5/d5)/(86400)
Fds6 <- hgsilt_w6 * (DEPO_silt$wc6/d6)/(86400)
Fds7 <- hgsilt_w7 * (DEPO_silt$wc7/d7)/(86400)
Fds8 <- hgsilt_w8 * (DEPO_silt$ws8/d8)/(86400)
Fds9 <- hgsilt_w9 * (DEPO_silt$ws9/d9)/(86400)
Fds10<- hgsilt_w10* (DEPO_silt$ws10/d10)/(86400)


#hh<-Phgs$wn1*fsiltp$wn1           
#hh2<-Phgs$wn1*fsandp$wn1           
#hh3<-Phgs$wn1*fpomp$wn1           

#f <- function(x,y,a) {ww=(x*y*a)
#print(ww)}


#integrate(f(hh,DEPO_silt$wn1,a1), lower = 1.26,upper = 0)

#plot(rdate, hgsilt_w1, ylim=c(0,3*10^9), type='l')
#par(new=T)
#plot(rdate, hgaq_w10, ylim=c(0,3*10^9), col=2, type='l',lty=2)

#head(hgsilt_w1)
#head(hgsilt_w1)*27
#head(DEPO_silt$wn1)
#depo silt = 27 m/d
#head((DEPO_silt$wn2/d2))   #m/d scende di 27 m/d, 1/

#head(Fds1)

# Deposition rate for Hg in sand
Fdsa1 <-hgsand_w1 * (DEPO_sand$wn1/d1)/86400   #ug(hg) * 1 d-1 --> ug d-1/86400 == ug s-1
Fdsa2 <-hgsand_w2 * (DEPO_sand$wn2/d2)/86400
Fdsa3 <-hgsand_w3 * (DEPO_sand$wn3/d3)/86400
Fdsa4 <-hgsand_w4 * (DEPO_sand$wn4/d4)/86400
Fdsa5 <-hgsand_w5 * (DEPO_sand$wn5/d5)/86400
Fdsa6 <-hgsand_w6 * (DEPO_sand$wc6/d6)/86400
Fdsa7 <-hgsand_w7 * (DEPO_sand$wc7/d7)/86400
Fdsa8 <-hgsand_w8 * (DEPO_sand$ws8/d8)/86400
Fdsa9 <-hgsand_w9 * (DEPO_sand$ws9/d9)/86400
Fdsa10<-hgsand_w10* (DEPO_sand$ws10/d10)/86400

head(hgpom_w1/10^6)

Fdp1
# Deposition rate kg(hg-pom)
Fdp1 <-hgpom_w1* (DEPO_POM$wn1/d1)/86400
Fdp2 <-hgpom_w2* (DEPO_POM$wn2/d2)/86400
Fdp3 <-hgpom_w3* (DEPO_POM$wn3/d3)/86400    #ug(hg) * 1 d-1 --> ug d-1/86400 == ug s-1
Fdp4 <-hgpom_w4* (DEPO_POM$wn4/d4)/86400
Fdp5 <-hgpom_w5* (DEPO_POM$wn5/d5)/86400
Fdp6 <-hgpom_w6* (DEPO_POM$wc6/d6)/86400
Fdp7 <-hgpom_w7* (DEPO_POM$wc7/d7)/86400
Fdp8 <-hgpom_w8* (DEPO_POM$ws8/d8)/86400
Fdp9 <-hgpom_w9* (DEPO_POM$ws9/d9)/86400
Fdp10<-hgpom_w10* (DEPO_POM$ws10/d10)/86400

reservoir_hgp_s1<-a1*0.05*Phgs$sn1       # ug/m3(w+s)*vol(m3)/10^3 = ug(hg)
reservoir_hgp_s2<-a2*0.05*Phgs$sn2
reservoir_hgp_s3<-a3*0.05*Phgs$sn3
reservoir_hgp_s4<-a4*0.05*Phgs$sn4
reservoir_hgp_s5<-a5*0.05*Phgs$sn5
reservoir_hgp_s6<-a6*0.05*Phgs$sc6
reservoir_hgp_s7<-a7*0.05*Phgs$sc7
reservoir_hgp_s8<-a8*0.05*Phgs$ss8
reservoir_hgp_s9<-a9*0.05*Phgs$ss9
reservoir_hgp_s10<-a10*0.05*Phgs$ss10

head(reservoir_hgp_s1); head(reservoir_hgp_w1)

reservoir_hg_s1 <- a1*0.05 * hg$sn1 *TOTs$sn1/10^3       #ng(hg)/g(s) *g(s)/m3(w+s)*vol(m3) = ng(hg)/10^3 = ug(hg)
reservoir_hg_s2 <- a2*0.05 * hg$sn2 *TOTs$sn2/10^3
reservoir_hg_s3 <- a3*0.05 * hg$sn3 *TOTs$sn3/10^3
reservoir_hg_s4 <- a4*0.05 * hg$sn4 *TOTs$sn4/10^3
reservoir_hg_s5 <- a5*0.05 * hg$sn5 *TOTs$sn5/10^3
reservoir_hg_s6 <- a6*0.05 * hg$sc6 *TOTs$sc6/10^3
reservoir_hg_s7 <- a7*0.05 * hg$sc7 *TOTs$sc7/10^3
reservoir_hg_s8 <- a8*0.05 * hg$ss8 *TOTs$ss8/10^3
reservoir_hg_s9 <- a9*0.05 * hg$ss9 *TOTs$ss9/10^3
reservoir_hg_s10<-a10*0.05 * hg$ss10 *TOTs$ss10/10^3

hgsilt_s1 <-reservoir_hgp_s1 * fsiltp$sn1     # ug(hg-silt) in sediment
hgsilt_s2 <-reservoir_hgp_s2 * fsiltp$sn2
hgsilt_s3 <-reservoir_hgp_s3 * fsiltp$sn3
hgsilt_s4 <-reservoir_hgp_s4 * fsiltp$sn4
hgsilt_s5 <-reservoir_hgp_s5 * fsiltp$sn5
hgsilt_s6 <-reservoir_hgp_s6 * fsiltp$sc6
hgsilt_s7 <-reservoir_hgp_s7 * fsiltp$sc7
hgsilt_s8 <-reservoir_hgp_s8 * fsiltp$ss8
hgsilt_s9 <-reservoir_hgp_s9 * fsiltp$ss9
hgsilt_s10<-reservoir_hgp_s10* fsiltp$ss10

hgpom_s1 <-reservoir_hgp_s1 * fpomp$sn1
hgpom_s2 <-reservoir_hgp_s2 * fpomp$sn2
hgpom_s3 <-reservoir_hgp_s3 * fpomp$sn3
hgpom_s4 <-reservoir_hgp_s4 * fpomp$sn4
hgpom_s5 <-reservoir_hgp_s5 * fpomp$sn5
hgpom_s6 <-reservoir_hgp_s6 * fpomp$sc6
hgpom_s7 <-reservoir_hgp_s7 * fpomp$sc7
hgpom_s8 <-reservoir_hgp_s8 * fpomp$ss8
hgpom_s9 <-reservoir_hgp_s9 * fpomp$ss9
hgpom_s10<-reservoir_hgp_s10* fpomp$ss10

hgsand_s1 <-reservoir_hgp_s1 * fsandp$sn1
hgsand_s2 <-reservoir_hgp_s2 * fsandp$sn2
hgsand_s3 <-reservoir_hgp_s3 * fsandp$sn3
hgsand_s4 <-reservoir_hgp_s4 * fsandp$sn4
hgsand_s5 <-reservoir_hgp_s5 * fsandp$sn5
hgsand_s6 <-reservoir_hgp_s6 * fsandp$sc6
hgsand_s7 <-reservoir_hgp_s7 * fsandp$sc7
hgsand_s8 <-reservoir_hgp_s8 * fsandp$ss8
hgsand_s9 <-reservoir_hgp_s9 * fsandp$ss9
hgsand_s10<-reservoir_hgp_s10* fsandp$ss10

hgaq_s1 <-reservoir_hg_s1 * faq$sn1
hgaq_s2 <-reservoir_hg_s2 * faq$sn2
hgaq_s3 <-reservoir_hg_s3 * faq$sn3
hgaq_s4 <-reservoir_hg_s4 * faq$sn4
hgaq_s5 <-reservoir_hg_s5 * faq$sn5
hgaq_s6 <-reservoir_hg_s6 * faq$sc6
hgaq_s7 <-reservoir_hg_s7 * faq$sc7
hgaq_s8 <-reservoir_hg_s8 * faq$ss8
hgaq_s9 <-reservoir_hg_s9 * faq$ss9
hgaq_s10<-reservoir_hg_s10* faq$ss10

hgdoc_s1 <-reservoir_hg_s1 * fdoc$sn1
hgdoc_s2 <-reservoir_hg_s2 * fdoc$sn2
hgdoc_s3 <-reservoir_hg_s3 * fdoc$sn3
hgdoc_s4 <-reservoir_hg_s4 * fdoc$sn4
hgdoc_s5 <-reservoir_hg_s5 * fdoc$sn5
hgdoc_s6 <-reservoir_hg_s6 * fdoc$sc6
hgdoc_s7 <-reservoir_hg_s7 * fdoc$sc7
hgdoc_s8 <-reservoir_hg_s8 * fdoc$ss8
hgdoc_s9 <-reservoir_hg_s9 * fdoc$ss9
hgdoc_s10<-reservoir_hg_s10* fdoc$ss10

hg_silt_sed<-cbind(hgsilt_s1,hgsilt_s2,hgsilt_s3,hgsilt_s4,hgsilt_s5,hgsilt_s6,hgsilt_s7,hgsilt_s8,hgsilt_s9,hgsilt_s10)
hg_silt_wat<-cbind(hgsilt_w1,hgsilt_w2,hgsilt_w3,hgsilt_w4,hgsilt_w5,hgsilt_w6,hgsilt_w7,hgsilt_w8,hgsilt_w9,hgsilt_w10)

hg_pom_sed<-cbind(hgpom_s1,hgpom_s2,hgpom_s3,hgpom_s4,hgpom_s5,hgpom_s6,hgpom_s7,hgpom_s8,hgpom_s9,hgpom_s10)
hg_pom_wat<-cbind(hgpom_w1,hgpom_w2,hgpom_w3,hgpom_w4,hgpom_w5,hgpom_w6,hgpom_w7,hgpom_w8,hgpom_w9,hgpom_w10)

hg_sand_sed<-cbind(hgsand_s1,hgsand_s2,hgsand_s3,hgsand_s4,hgsand_s5,hgsand_s6,hgsand_s7,hgsand_s8,hgsand_s9,hgsand_s10)
hg_sand_wat<-cbind(hgsand_w1,hgsand_w2,hgsand_w3,hgsand_w4,hgsand_w5,hgsand_w6,hgsand_w7,hgsand_w8,hgsand_w9,hgsand_w10)

hg_doc_wat<-cbind(hgdoc_w1,hgdoc_w2,hgdoc_w3,hgdoc_w4,hgdoc_w5,hgdoc_w6,hgdoc_w7,hgdoc_w8,hgdoc_w9,hgdoc_w10)
hg_doc_sed<-cbind(hgdoc_s1,hgdoc_s2,hgdoc_s3,hgdoc_s4,hgdoc_s5,hgdoc_s6,hgdoc_s7,hgdoc_s8,hgdoc_s9,hgdoc_s10)

hg_aq_wat<-cbind(hgaq_w1,hgaq_w2,hgaq_w3,hgaq_w4,hgaq_w5,hgaq_w6,hgaq_w7,hgaq_w8,hgaq_w9,hgaq_w10)
hg_aq_sed<-cbind(hgaq_s1,hgaq_s2,hgaq_s3,hgaq_s4,hgaq_s5,hgaq_s6,hgaq_s7,hgaq_s8,hgaq_s9,hgaq_s10)

hg_silt_sed_tot<-rowSums(hg_silt_sed); hg_silt_wat_tot<-rowSums(hg_silt_wat)
hg_pom_sed_tot <-rowSums(hg_pom_sed) ; hg_pom_wat_tot <-rowSums(hg_pom_wat)
hg_sand_sed_tot<-rowSums(hg_sand_sed); hg_sand_wat_tot<-rowSums(hg_sand_wat)
hg_doc_sed_tot <-rowSums(hg_doc_sed) ; hg_doc_wat_tot <-rowSums(hg_doc_wat)
hg_aq_sed_tot<-rowSums(hg_aq_sed);hg_aq_wat_tot<-rowSums(hg_aq_wat)

w_reser<-cbind(reservoir_hg_w1,reservoir_hg_w2,reservoir_hg_w3,reservoir_hg_w4,reservoir_hg_w5,
               reservoir_hg_w6,reservoir_hg_w7, reservoir_hg_w8, reservoir_hg_w9, reservoir_hg_w10)

s_reser<-cbind(reservoir_hg_s1,reservoir_hg_s2,reservoir_hg_s3,reservoir_hg_s4,reservoir_hg_s5,
               reservoir_hg_s6,reservoir_hg_s7, reservoir_hg_s8, reservoir_hg_s9, reservoir_hg_s10)

tot_w_reser1<-rowSums(w_reser/10^9)   #ug(hg)/10^9 = kg(hg)
tot_s_reser9<-rowSums(s_reser/10^9)

plot(tot_w_reser)
plot(tot_w_reser1[1:201])
tot_w_reser_media
(tot_w_reser1[72])
(tot_s_reser[72])
rdate[72]

tot_s_reser[20]
tot_w_reser[1]
plot(tot_w_reser1[1:40])

win.graph()
plot(tot_s_reser1[1:39], col='grey', pch=19, ylim=c(2035,2120), main='Sediment Hg')
par(new=T)
plot(tot_s_reser2[1:39], col=2, pch=19, ylim=c(2035,2120))
par(new=T)
plot(tot_s_reser3[1:39], col=3, pch=19, ylim=c(2035,2120))
par(new=T)
plot(tot_s_reser4[1:39], col=4, pch=19, ylim=c(2035,2120))   # bound 20 m s-1
par(new=T)
plot(tot_s_reser5[1:39], col=5, pch=19, ylim=c(2035,2120))    # bound 15 m s-1
par(new=T)
plot(tot_s_reser6[1:468], col=6, pch=19, ylim=c(2035,2120))    # bound 15 m s-1
par(new=T)
plot(tot_s_reser7[1:468], col=3, pch=19, ylim=c(2035,2120))    # bound 20 m s-1
par(new=T)
plot(tot_s_reser8[1:468], col=1, pch=19, ylim=c(2035,2120))    # bound 20 m s-1
par(new=T)
plot(tot_s_reser9[1:468], col=7, pch=19, ylim=c(2035,2120))    # bound 20 m s-1


head(tot_s_reser)
head(tot_w_reser)
head(RESUS_silt$sn1, 60)

plot(hg_wat_reservoir)
plot(hg_reserv_s)

tot_s_reser*(6*10^-7/0.05)*365           # kg y-1 
tot_w_reser*(2/1.2)          # kg y-1 

png('Hg_reservoirs_part2.png')
par(mfrow=c(1,2))
plot(rdate,hg_silt_wat_tot/10^9, ylim=c(0,60),type='l',lwd=2, col='brown', ylab='kg(hg)',
     main='Hg partitioning in water')
par(new=T)
plot(rdate,tot_w_reser, ylim=c(0,60),type='l',lwd=1.5, col='black',ylab='')
par(new=T)
plot(rdate,hg_pom_wat_tot/10^9, ylim=c(0,60),type='l',lwd=2, col='darkgreen',ylab='')
par(new=T)
plot(rdate,hg_sand_wat_tot/10^9, ylim=c(0,60),type='l',lwd=2, col='yellow',ylab='')
par(new=T)
plot(rdate,hg_aq_wat_tot/10^9, ylim=c(0,60),type='l',lwd=2, col='cyan',ylab='',lty=2)
par(new=T)
plot(rdate,hg_doc_wat_tot/10^9, ylim=c(0,60),type='l',lwd=2, col='cyan3',ylab='',lty=4)

plot(rdate,hg_silt_sed_tot/10^9, ylim=c(0,3*10^4),type='l',lwd=2, col='brown', ylab='kg(hg)',
     main='Hg partitioning in sediment')
par(new=T)
plot(rdate,tot_s_reser, ylim=c(0,3*10^4),type='l',lwd=2, col='black',ylab='')
par(new=T)
plot(rdate,hg_pom_sed_tot/10^9, ylim=c(0,3*10^4),type='l',lwd=2, col='darkgreen',ylab='')
par(new=T)
plot(rdate,hg_sand_sed_tot/10^9, ylim=c(0,3*10^4),type='l',lwd=2, col='yellow',ylab='')
par(new=T)
plot(rdate,hg_aq_sed_tot/10^9, ylim=c(0,3*10^4),type='l',lwd=2, col='cyan',ylab='',lty=2)
par(new=T)
plot(rdate,hg_doc_sed_tot/10^9, ylim=c(0,3*10^4),type='l',lwd=2, col='cyan3',ylab='',lty=4)
dev.off()

# Resuspension of Hg in silt
Frs1 <-hgsilt_s1*RESUS_silt$sn1/0.05/86400   # ug * m d-1 /m --> ug d-1 /86400 = ug s-1
Frs2 <-hgsilt_s2*RESUS_silt$sn2/0.05/86400
Frs3 <-hgsilt_s3*RESUS_silt$sn3/0.05/86400
Frs4 <-hgsilt_s4*RESUS_silt$sn4/0.05/86400
Frs5 <-hgsilt_s5*RESUS_silt$sn5/0.05/86400
Frs6 <-hgsilt_s6*RESUS_silt$sc6/0.05/86400
Frs7 <-hgsilt_s7*RESUS_silt$sc7/0.05/86400
Frs8 <-hgsilt_s8*RESUS_silt$ss8/0.05/86400
Frs9 <-hgsilt_s9*RESUS_silt$ss9/0.05/86400
Frs10<-hgsilt_s10*RESUS_silt$ss10/0.05/86400

Frsa1<-hgsand_s1*RESUS_sand$sn1/0.05/86400        #   # ug * m d-1 /m --> ug d-1 /86400 = ug s-1
Frsa2<-hgsand_s2*RESUS_sand$sn2/0.05/86400        
Frsa3<-hgsand_s3*RESUS_sand$sn3/0.05/86400        
Frsa4<-hgsand_s4*RESUS_sand$sn4/0.05/86400        
Frsa5<-hgsand_s5*RESUS_sand$sn5/0.05/86400        
Frsa6<-hgsand_s6*RESUS_sand$sc6/0.05/86400        
Frsa7<-hgsand_s7*RESUS_sand$sc7/0.05/86400        
Frsa8<-hgsand_s8*RESUS_sand$ss8/0.05/86400        
Frsa9<-hgsand_s9*RESUS_sand$ss9/0.05/86400         
Frsa10<-hgsand_s10*RESUS_sand$ss10/0.05/86400

# Flux for Hg in POM
Frp1 <-hgpom_s1*RESUS_POM$sn1/0.05/86400        #   ug * m d-1/m/86400 --> ug s-1
Frp2 <-hgpom_s2*RESUS_POM$sn2/0.05/86400
Frp3 <-hgpom_s3*RESUS_POM$sn3/0.05/86400
Frp4 <-hgpom_s4*RESUS_POM$sn4/0.05/86400
Frp5 <-hgpom_s5*RESUS_POM$sn5/0.05/86400        
Frp6 <-hgpom_s6*RESUS_POM$sc6/0.05/86400      
Frp7 <-hgpom_s7*RESUS_POM$sc7/0.05/86400        
Frp8 <-hgpom_s8*RESUS_POM$ss8/0.05/86400        
Frp9 <-hgpom_s9*RESUS_POM$ss9/0.05/86400        
Frp10<-hgpom_s10*RESUS_POM$ss10/0.05/86400     

Fdsilt=cbind(Fds1,Fds2,Fds3,Fds4,Fds5,Fds6,Fds7,Fds8,Fds9,Fds10)
Fdsand=cbind(Fdsa1,Fdsa2,Fdsa3,Fdsa4,Fdsa5,Fdsa6,Fdsa7,Fdsa8,Fdsa9,Fdsa10)
Fdpom=cbind(Fdp1,Fdp2,Fdp3,Fdp4,Fdp5,Fdp6,Fdp7,Fdp8,Fdp9,Fdp10)

Frsilt=cbind(Frs1,Frs2,Frs3,Frs4,Frs5,Frs6,Frs7,Frs8,Frs9,Frs10)
Frsand=cbind(Frsa1,Frsa2,Frsa3,Frsa4,Frsa5,Frsa6,Frsa7,Frsa8,Frsa9,Frsa10)
Frpom=cbind(Frp1,Frp2,Frp3,Frp4,Frp5,Frp6,Frp7,Frp8,Frp9,Frp10)

Fdsilt_tot=rowSums(Fdsilt);Fdsand_tot=rowSums(Fdsand);Fdpom_tot=rowSums(Fdpom)
Frsilt_tot=rowSums(Frsilt);Frsand_tot=rowSums(Frsand);Frpom_tot=rowSums(Frpom)

net_tot_silt=Fdsilt_tot-Frsilt_tot    #ug s-1
net_tot_sand=Fdsand_tot-Frsand_tot    #ug s-1
net_tot_pom=Fdpom_tot-Frpom_tot       #ug s-1

net_tot_silt_mean<-tapply(net_tot_silt, rep(1:(length(net_tot_silt)/12),each = 12),mean)
net_tot_sand_mean<-tapply(net_tot_sand, rep(1:(length(net_tot_sand)/12),each = 12),mean)
net_tot_pom_mean <-tapply(net_tot_pom, rep(1:(length(net_tot_pom)/12),each = 12),mean)

plot(net_tot_silt, type='l')
plot(net_tot_silt_mean, type='l',col=2)

plot(rdate,net_tot_pom, type='l')
  abline(v=rdate[1034], col=2)
  
  rdate[1034]
plot(net_tot_pom_mean, type='l',col=2)

plot(net_tot_sand, type='l')   #ug s-1
plot(net_tot_sand_mean, type='l',col=2)

dd<-(Fdsilt_tot+Fdsand_tot+Fdpom_tot)*86400                                  #ug s-1  -> ug d-1
rr<-(Frsilt_tot+Frsand_tot+Frpom_tot)*86400                                  #ug s-1  -> ug d-1

nn<-(net_tot_sand_mean+net_tot_silt_mean+net_tot_pom_mean)*86400              #ug s-1  -> ug d-1

rr_tot_mean <-tapply(rr, rep(1:(length(rr)/12),each = 12),mean)
dd_tot_mean <-tapply(dd, rep(1:(length(dd)/12),each = 12),mean)
 
par(mfrow=c(1,1))
plot((nn/10^9)*365,col=1,type='l', ylim=c(-15000,15000)) # ug d-1  -> kg y-1
par(new=T)
plot(rr_tot_mean/10^9*365,col=2,ylim=c(-15000,15000),type='l')
par(new=T)
plot(dd_tot_mean/10^9*365,col=3,type='l', ylim=c(-15000,15000))




head(rr_tot_mean/10^9*365)
head(dd_tot_mean/10^9*365) #kg y-1
head(nn/10^9*365,30)
 
res_kgy<-rr_tot_mean/10^9*365
dep_kgy<-dd_tot_mean/10^9*365
dep_kgy-res_kgy

diff1<-tot_w_reser_m[2]-tot_w_reser_m[1];head(diff1)

179.891031/AT


rese
head(tot_w_reser,35) #kg


str(nn)
str(rr)
str(dd)


diffes=(Fdsilt-Frsilt)    #Deposizione netta hg-silt,  in ug s-1
#plot(diffes[,1])
#plot(diffes[,2])
#plot(diffes[,3])
#plot(diffes[,4])
##plot(diffes[,5])
#plot(diffes[,6])
#plot(diffes[,7])
#plot(diffes[,8])
#plot(diffes[,9])
#plot(diffes[,10])

D1 = Fds1 + Fdsa1 + Fdp1
D2 = Fds2 + Fdsa2 + Fdp2
D3 = Fds3 + Fdsa3 + Fdp3
D4 = Fds4 + Fdsa4 + Fdp4
D5 = Fds5 + Fdsa5 + Fdp5
D6 = Fds6 + Fdsa6 + Fdp6
D7 = Fds7 + Fdsa7 + Fdp7
D8 = Fds8 + Fdsa8 + Fdp8
D9 = Fds9 + Fdsa9 + Fdp9
D10= Fds10+ Fdsa10+ Fdp10

R1 = Frs1 + Frsa1 + Frp1
R2 = Frs2 + Frsa2 + Frp2
R3 = Frs3 + Frsa3 + Frp3
R4 = Frs4 + Frsa4 + Frp4
R5 = Frs5 + Frsa5 + Frp5
R6 = Frs6 + Frsa6 + Frp6
R7 = Frs7 + Frsa7 + Frp7
R8 = Frs8 + Frsa8 + Frp8
R9 = Frs9 + Frsa9 + Frp9
R10= Frs10+ Frsa10+ Frp10

TotD<-(D1+D2+D3+D4+D5+D6+D7+D8+D9+D10)
TotR<-R1+R2+R3+R4+R5+R6+R7+R8+R9+R10

N1<-D1-R1;N2<-D2-R2;N3<-D3-R3;N4<-D4-R4;N5<-D5-R5;
N6<-D6-R6;N7<-D7-R7; N8<-D8-R8;N9<-D9-R9; N10<-D10-R10

Ntot<-(N1+N2+N3+N4+N5+N6+N7+N8+N9+N10)*86400/10^9

hg_sed_reservoir<-hg_silt_sed_tot+hg_pom_sed_tot+hg_sand_sed_tot+hg_doc_sed_tot+hg_aq_sed_tot
hg_wat_reservoir<-hg_silt_wat_tot+hg_pom_wat_tot+hg_sand_wat_tot+hg_doc_wat_tot+hg_aq_wat_tot


hg_sed_reservoir_media<-tapply(hg_sed_reservoir, rep(1:(length(hg_sed_reservoir)/12),each = 12),mean)
hg_wat_reservoir_media<-tapply(hg_wat_reservoir, rep(1:(length(hg_wat_reservoir)/12),each = 12),mean)


plot(hg_wat_reservoir_media)


rr_tot_mean


RR_m<-(rr_tot_mean/10^9)*365
DD_m<-(dd_tot_mean/10^9)*365

tot_w_reser_m<-tapply(tot_w_reser, rep(1:(length(tot_w_reser)/12),each = 12),mean)
tot_s_reser_m<-tapply(tot_s_reser, rep(1:(length(tot_s_reser)/12),each = 12),mean)
Net_kgy<-(nn/10^9)*365

reserv_flux<-cbind(RR_m,DD_m,Net_kgy,tot_s_reser_m,tot_w_reser_m)
write.table(reserv_flux, file='reserv_flux.txt')

head(Net_kgy, 60)
head(RR_m, 60)
head(DD_m, 60)
head(Net_kgy, 60)
head(Net_kgy2)


head(TotD*365)
head(hg_sed_reservoir/10^9)
head(TotR*365)

NEt<-(TotD-TotR)*86400/10^9     #kg d
plot(rdate,NEt)
par(new=T)
plot(rdate,Ntot)


head(NEt)

head(Ntot)

Net_kgy2<-NEt*365
plot(Net_kgy)
plot(Net_kgy2)

str(Net_kgy)
str(Net_kgy2)

summary(Net_kgy)


head(hg_wat_reservoir/10^9)
head(NEt,12)
head(Net_kgy)
 write.table(Net_kgy,"Net_hgSed_kgy.txt");
#write.table(Net_kgy2,"Net_hgSed_kgy_long.txt");

str(Net_kgy)
str(Net_kgy2)

summary(Net_kgy)
summary(Net_kgy2)



plot(Net_kgy)

plot(TotD,ylim=c(0,1000000), type='l')
par(new=T)
plot(TotR,ylim=c(0,1000000), type='l',col=2)





