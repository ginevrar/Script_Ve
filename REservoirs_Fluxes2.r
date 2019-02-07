#setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61/')
#setwd('C:/Users/Acer/Dropbox/NNN61/')
#setwd('C:/Users/Acer/Dropbox/NewVenice20/f')
#setwd('C:/Users/Acer/Dropbox/Venice_Ultime/')
#setwd('G:/Il mio Drive/MERCURIO/Venezia/2017_Venice/eccola14_newInp_max4700') #5_newInp
# setwd('C:/Users/Acer/Desktop/baba/Buona_tutteMALE/double_in/MMM40')
# setwd('C:/Users/Acer/Dropbox/NewVenice20/z1')
# setwd('C:/Users/Acer/Desktop/g')
setwd('C:/Users/gi/Dropbox/NewVenice20/z9')


hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
  hg<-hg[2:2413,]

  time.steps <- hg$time;time.steps3 <- time.steps*24*3600;
  TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
  rdate<-as.Date(TEMPO, tz= "GMT", format="%Y");head(rdate)
  rdate[2412]

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10', 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
TOTs<-TOTs[2:2413,]

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
silts<-silts[2:2413,]

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
POMs<-POMs[2:2413,]

sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
sands<-sands[2:2413,]

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
Phgs<-Phgs[2:2413,]

DEPO_silt<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
DEPO_silt<-DEPO_silt[2:2413,]

DEPO_POM<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
DEPO_POM<-DEPO_POM[2:2413,]

DEPO_sand<-read.csv("Sand_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_sand)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10', 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
DEPO_sand<-DEPO_sand[2:2413,]

RESUS_silt<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                      'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
RESUS_silt<-RESUS_silt[2:2413,]

RESUS_POM<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
RESUS_POM<-RESUS_POM[2:2413,]

RESUS_sand<-read.csv("Sand_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_sand)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',	'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               	  	'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
               # aree box
RESUS_sand<-RESUS_sand[2:2413,]


a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07; a9<-2.95E+07;a10<-4.06E+07
area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71

max(RESUS_silt, na.rm=T)

plot(DEPO_sand$wc6)
plot(DEPO_POM$wc6)

reservoir_hg_w1 <- a1*d1 * hg$wn1/10^6     # ug/m3(w+s) *vol(m3) = ug(hg)/10^6 = g(hg)
reservoir_hg_w2 <- a2*d2 * hg$wn2/10^6
reservoir_hg_w3 <- a3*d3 * hg$wn3/10^6
reservoir_hg_w4 <- a4*d4 * hg$wn4/10^6
reservoir_hg_w5 <- a5*d5 * hg$wn5/10^6
reservoir_hg_w6 <- a6*d6 * hg$wc6/10^6
reservoir_hg_w7 <- a7*d7 * hg$wc7/10^6
reservoir_hg_w8 <- a8*d8 * hg$ws8/10^6
reservoir_hg_w9 <- a9*d9 * hg$ws9/10^6
reservoir_hg_w10<- a10*d10* hg$ws10/10^6

tail(hg$ws10)

reservoir_hgp_w1 <- a1*d1 *Phgs$wn1/10^6    # ug/m3(w+s) *vol(m3) = ug(hg)/10^6 = g(hg)
reservoir_hgp_w2 <- a2*d2 *Phgs$wn2/10^6
reservoir_hgp_w3 <- a3*d3 *Phgs$wn3/10^6
reservoir_hgp_w4 <- a4*d4 *Phgs$wn4/10^6
reservoir_hgp_w5 <- a5*d5 *Phgs$wn5/10^6
reservoir_hgp_w6 <- a6*d6 *Phgs$wc6/10^6
reservoir_hgp_w7 <- a7*d7 *Phgs$wc7/10^6
reservoir_hgp_w8 <- a8*d8 *Phgs$ws8/10^6
reservoir_hgp_w9 <- a9*d9 *Phgs$ws9/10^6
reservoir_hgp_w10<- a10*d10 *Phgs$ws10/10^6

head(hg$wn1)
head(Phgs$wn1)

 #fsilt=silts/TOTs;fPOM=POMs/TOTs;fsand=sands/TOTs
plot(RESUS_POM$sc6)


ksilt<-1.5*10^5; kpom<-2*10^5; kdoc<-10000
partden1=1+0.000001*((ksilt*silts)+(sands)+(kpom*POMs)+(kdoc*3.19))
faq=1./partden1
fsilt=(0.000001*ksilt*silts)/partden1
fsand=(0.000001*1*sands)/partden1
fpom= (0.000001*kpom*POMs)/partden1
fdoc=(0.000001*kdoc*3.19)/partden1
head(fsilt+fpom+fsand+faq+fdoc)

fsiltp <-fsilt/(fsilt+fpom+fsand)
fpomp <- fpom /(fsilt+fpom+fsand)
fsandp <-fsand/(fsilt+fpom+fsand)

tail(fsiltp$wn1+fpomp$wn1+fsandp$wn1)

hgsilt_w1 <-reservoir_hgp_w1 *fsiltp$wn1    ##  g(hg) adsorbito al silt
hgsilt_w2 <-reservoir_hgp_w2 *fsiltp$wn2
hgsilt_w3 <-reservoir_hgp_w3 *fsiltp$wn3
hgsilt_w4 <-reservoir_hgp_w4 *fsiltp$wn4
hgsilt_w5 <-reservoir_hgp_w5 *fsiltp$wn5
hgsilt_w6 <-reservoir_hgp_w6 *fsiltp$wc6
hgsilt_w7 <-reservoir_hgp_w7 *fsiltp$wc7
hgsilt_w8 <-reservoir_hgp_w8 *fsiltp$ws8
hgsilt_w9 <-reservoir_hgp_w9 *fsiltp$ws9
hgsilt_w10<-reservoir_hgp_w10*fsiltp$ws10

hgpom_w1<-reservoir_hgp_w1*fpomp$wn1      ## g(hg) adsorbito al pom
hgpom_w2<-reservoir_hgp_w2*fpomp$wn2
hgpom_w3<-reservoir_hgp_w3*fpomp$wn3
hgpom_w4<-reservoir_hgp_w4*fpomp$wn4
hgpom_w5<-reservoir_hgp_w5*fpomp$wn5
hgpom_w6<-reservoir_hgp_w6*fpomp$wc6
hgpom_w7<-reservoir_hgp_w7*fpomp$wc7
hgpom_w8<-reservoir_hgp_w8*fpomp$ws8
hgpom_w9<-reservoir_hgp_w9*fpomp$ws9
hgpom_w10<-reservoir_hgp_w10*fpomp$ws10

hgsand_w1<-reservoir_hgp_w1*fsandp$wn1    ## g(hg)  adsorbito a sabbie
hgsand_w2<-reservoir_hgp_w2*fsandp$wn2
hgsand_w3<-reservoir_hgp_w3*fsandp$wn3
hgsand_w4<-reservoir_hgp_w4*fsandp$wn4
hgsand_w5<-reservoir_hgp_w5*fsandp$wn5
hgsand_w6<-reservoir_hgp_w6*fsandp$wc6
hgsand_w7<-reservoir_hgp_w7*fsandp$wc7
hgsand_w8<-reservoir_hgp_w8*fsandp$ws8
hgsand_w9<-reservoir_hgp_w9*fsandp$ws9
hgsand_w10<-reservoir_hgp_w10*fsandp$ws10


plot(rdate, reservoir_hgp_w1/10^3, type='l')

hgaq_w1<-reservoir_hg_w1*faq$wn1  ##g(hg)  adsorbito a sabbie
hgaq_w2<-reservoir_hg_w2*faq$wn2
hgaq_w3<-reservoir_hg_w3*faq$wn3
hgaq_w4<-reservoir_hg_w4*faq$wn4
hgaq_w5<-reservoir_hg_w5*faq$wn5
hgaq_w6<-reservoir_hg_w6*faq$wc6
hgaq_w7<-reservoir_hg_w7*faq$wc7
hgaq_w8<-reservoir_hg_w8*faq$ws8
hgaq_w9<-reservoir_hg_w9*faq$ws9
hgaq_w10<-reservoir_hg_w10*faq$ws10

hgdoc_w1<-reservoir_hg_w1*fdoc$wn1    ##g(hg)  adsorbito a sabbie
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
# g(hg) * 1 d-1 --> ug d-1


w_reser<-cbind(reservoir_hg_w1,reservoir_hg_w2,reservoir_hg_w3,reservoir_hg_w4,reservoir_hg_w5,
               reservoir_hg_w6,reservoir_hg_w7, reservoir_hg_w8, reservoir_hg_w9, reservoir_hg_w10)   # grams
tot_w_reser<-rowSums(w_reser/10^3)  #kg


##----------------------- RESERVOIR SEDIEMNTI (g) ----------------------- 

reservoir_hgp_s1<-a1*0.05*Phgs$sn1/10^6       # ug/m3(w+s)*vol(m3)/10^6 = g(hg)
reservoir_hgp_s2<-a2*0.05*Phgs$sn2/10^6
reservoir_hgp_s3<-a3*0.05*Phgs$sn3/10^6
reservoir_hgp_s4<-a4*0.05*Phgs$sn4/10^6
reservoir_hgp_s5<-a5*0.05*Phgs$sn5/10^6
reservoir_hgp_s6<-a6*0.05*Phgs$sc6/10^6
reservoir_hgp_s7<-a7*0.05*Phgs$sc7/10^6
reservoir_hgp_s8<-a8*0.05*Phgs$ss8/10^6
reservoir_hgp_s9<-a9*0.05*Phgs$ss9/10^6
reservoir_hgp_s10<-a10*0.05*Phgs$ss10/10^6   # con Phg = 1327071.6; con SEDhg =1330108.1

head(reservoir_hgp_s1); head(reservoir_hg_s1)


reservoir_hg_s1 <- a1*0.05 * hg$sn1 *TOTs$sn1/10^9   #ng(hg)/g(s) *g(s)/m3(w+s)*vol(m3) = ng(hg)/10^9 = g(hg)
reservoir_hg_s2 <- a2*0.05 * hg$sn2 *TOTs$sn2/10^9
reservoir_hg_s3 <- a3*0.05 * hg$sn3 *TOTs$sn3/10^9
reservoir_hg_s4 <- a4*0.05 * hg$sn4 *TOTs$sn4/10^9
reservoir_hg_s5 <- a5*0.05 * hg$sn5 *TOTs$sn5/10^9
reservoir_hg_s6 <- a6*0.05 * hg$sc6 *TOTs$sc6/10^9
reservoir_hg_s7 <- a7*0.05 * hg$sc7 *TOTs$sc7/10^9
reservoir_hg_s8 <- a8*0.05 * hg$ss8 *TOTs$ss8/10^9
reservoir_hg_s9 <- a9*0.05 * hg$ss9 *TOTs$ss9/10^9
reservoir_hg_s10<- a10*0.05* hg$ss10 *TOTs$ss10/10^9

hgsilt_s1 <-reservoir_hgp_s1 * fsiltp$sn1   # g(hg-silt) in sediment
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

4.094147e-07   # fsand pos [997]
1060857.5      #hg
1060857.5*4.094147e-07
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

s_reser<-cbind(reservoir_hg_s1,reservoir_hg_s2,reservoir_hg_s3,reservoir_hg_s4,reservoir_hg_s5,
               reservoir_hg_s6,reservoir_hg_s7, reservoir_hg_s8, reservoir_hg_s9, reservoir_hg_s10)   # grams
tot_s_reser<-rowSums(s_reser/10^6)  #tons


head(tot_s_reser,45)

png('Reservoir_ok.png')
par(mfrow=c(1,2))
plot(tot_w_reser, main='Hg water reservoir - kg', type='l', lwd=2,col='blue')
plot(tot_s_reser, main='Hg sediment reservoir - ton',type='l',lwd=2, col='orange')
dev.off()
###------------------ CALCOLO FLUSSI -----------
# Flussi deposizione in [g d-1]  || Emili et al. 1.3 - 2.7 [mg m-2 y-1] at MGL

##Fds1 <- hgsilt_w1 * (DEPO_silt$wn1/d1)        # g d-1

Fds1b <- hgsilt_w1/a1 * (DEPO_silt$wn1/d1)        # g m2 d-1
Fds2b <- hgsilt_w2/a2 * (DEPO_silt$wn2/d2)
Fds3b <- hgsilt_w3/a3 * (DEPO_silt$wn3/d3)
Fds4b <- hgsilt_w4/a4 * (DEPO_silt$wn4/d4)
Fds5b <- hgsilt_w5/a5 * (DEPO_silt$wn5/d5)
Fds6b <- hgsilt_w6/a6 * (DEPO_silt$wc6/d6)
Fds7b <- hgsilt_w7/a7 * (DEPO_silt$wc7/d7)
Fds8b <- hgsilt_w8/a8 * (DEPO_silt$ws8/d8)
Fds9b <- hgsilt_w9/a9 * (DEPO_silt$ws9/d9)
Fds10b<- hgsilt_w10/a10* (DEPO_silt$ws10/d10)

fds1_mg_m2y<-Fds1b*365*1000                 #flussi nostri alti 10 - 800 mg/m2y
fdp1_mg_m2y<-Fdp1b*365*1000                  
fd1<-fdp1_mg_m2y+fds1_mg_m2y        # adesso meglio, da 3 a 38  || Emili et al. 1.3 - 2.7 [mg m-2 y-1] at MGL
summary(fd1)          #mg/m2y

fds2_mg_m2y<-Fds2b*365*1000                
fdp2_mg_m2y<-Fdp2b*365*1000                
fd2<-fdp2_mg_m2y+fds2_mg_m2y
summary(fd2)

fds3_mg_m2y<-Fds3b*365*1000             
fdp3_mg_m2y<-Fdp3b*365*1000             
fd3<-fdp3_mg_m2y+fds3_mg_m2y
summary(fd3)

fds4_mg_m2y<-Fds4b*365*1000                
fdp4_mg_m2y<-Fdp4b*365*1000               
fd4<-fdp4_mg_m2y+fds4_mg_m2y
summary(fd4)


fd1[1300]
rdate[1300]
win.graph()
plot(fd1_mg_m2y)


# Deposition rate for Hg in sand  = ZERO
 Fdsa1 <-hgsand_w1 * (DEPO_sand$wn1) #g(hg) * 1 d-1 --> g d-1
Fdsa2 <-hgsand_w2 * (DEPO_sand$wn2)
Fdsa3 <-hgsand_w3 * (DEPO_sand$wn3)
Fdsa4 <-hgsand_w4 * (DEPO_sand$wn4)
Fdsa5 <-hgsand_w5 * (DEPO_sand$wn5)
Fdsa6 <-hgsand_w6 * (DEPO_sand$wc6)
Fdsa7 <-hgsand_w7 * (DEPO_sand$wc7)
Fdsa8 <-hgsand_w8 * (DEPO_sand$ws8)
Fdsa9 <-hgsand_w9 * (DEPO_sand$ws9)
Fdsa10<-hgsand_w10* (DEPO_sand$ws10)

# Deposition rate g(hg-pom) * m d-1## 
#Fdp1 <-hgpom_w1* (DEPO_POM$wn1) #g d-1

Fdp1b <-hgpom_w1/a1*(DEPO_POM$wn1/d1)           # g m2 d-1
Fdp2b <-hgpom_w2/a2 *(DEPO_POM$wn2/d2)
Fdp3b <-hgpom_w3/a3 *(DEPO_POM$wn3/d3)     
Fdp4b <-hgpom_w4/a4 *(DEPO_POM$wn4/d4)
Fdp5b <-hgpom_w5/a5 *(DEPO_POM$wn5/d5) 
Fdp6b <-hgpom_w6/a6 *(DEPO_POM$wc6/d6) 
Fdp7b <-hgpom_w7/a7 *(DEPO_POM$wc7/d7) 
Fdp8b <-hgpom_w8/a8 *(DEPO_POM$ws8/d8) 
Fdp9b <-hgpom_w9/a9 *(DEPO_POM$ws9/d9) 
Fdp10b<-hgpom_w10/a10* (DEPO_POM$ws10/d10) 


# Resuspension of Hg in silt
Frs1 <-hgsilt_s1/a1*(RESUS_silt$sn1/0.05)   #g / m2 * d-1  --> g m-2 d-1 
Frs2 <-hgsilt_s2/a2*(RESUS_silt$sn2/0.05) 
Frs3 <-hgsilt_s3/a3*(RESUS_silt$sn3/0.05)
Frs4 <-hgsilt_s4/a4*(RESUS_silt$sn4/0.05)
Frs5 <-hgsilt_s5/a5*(RESUS_silt$sn5/0.05)
Frs6 <-hgsilt_s6/a6*(RESUS_silt$sc6/0.05)
Frs7 <-hgsilt_s7/a7*(RESUS_silt$sc7/0.05)
Frs8 <-hgsilt_s8/a8*(RESUS_silt$ss8/0.05)
Frs9 <-hgsilt_s9/a9*(RESUS_silt$ss9/0.05)
Frs10<-hgsilt_s10/a10*(RESUS_silt$ss10/0.05)

Frsa1<-hgsand_s1*RESUS_sand$sn1/0.05       #   # ug * m d-1 /m --> ug d-1 /86400 = ug s-1
Frsa2<-hgsand_s2*RESUS_sand$sn2/0.05/86400        #
Frsa3<-hgsand_s3*RESUS_sand$sn3/0.05/86400        #
Frsa4<-hgsand_s4*RESUS_sand$sn4/0.05/86400        #
Frsa5<-hgsand_s5*RESUS_sand$sn5/0.05/86400        #
Frsa6<-hgsand_s6*RESUS_sand$sc6/0.05/86400        #
Frsa7<-hgsand_s7*RESUS_sand$sc7/0.05/86400        #
Frsa8<-hgsand_s8*RESUS_sand$ss8/0.05/86400        #
Frsa9<-hgsand_s9*RESUS_sand$ss9/0.05/86400        #
Frsa10<-hgsand_s10*RESUS_sand$ss10/0.05/86400

# Flux for Hg in POM
Frp1 <-hgpom_s1/a1*(RESUS_POM$sn1/0.05)        #   #g / m2 * d-1  --> g m-2 d-1 
Frp2 <-hgpom_s2/a2*(RESUS_POM$sn2/0.05)
Frp3 <-hgpom_s3/a3*(RESUS_POM$sn3/0.05)
Frp4 <-hgpom_s4/a4*(RESUS_POM$sn4/0.05)
Frp5 <-hgpom_s5/a5*(RESUS_POM$sn5/0.05)        #
Frp6 <-hgpom_s6/a6*(RESUS_POM$sc6/0.05)        #
Frp7 <-hgpom_s7/a7*(RESUS_POM$sc7/0.05)        #
Frp8 <-hgpom_s8/a8*(RESUS_POM$ss8/0.05)        #
Frp9 <-hgpom_s9/a9*(RESUS_POM$ss9/0.05)        #
Frp10<-hgpom_s10/a10*(RESUS_POM$ss10/0.05)     #

Fdsilt=cbind(Fds1b*a1,Fds2b*a2,Fds3b*a3,Fds4b*a4,Fds5b*a5,Fds6b*a6,Fds7b*a7,Fds8b*a8,Fds9b*a9,Fds10b*a10)    # g d
Fdsand=cbind(Fdsa1,Fdsa2,Fdsa3,Fdsa4,Fdsa5,Fdsa6,Fdsa7,Fdsa8,Fdsa9,Fdsa10)
Fdpom=cbind(Fdp1b*a1,Fdp2b*a2,Fdp3b*a3,Fdp4b*a4,Fdp5b*a5,Fdp6b*a6,Fdp7b*a7,Fdp8b*a8,Fdp9b*a9,Fdp10b*a10)

Frsilt=cbind(Frs1*a1,Frs2*a2,Frs3*a3,Frs4*a4,Frs5*a5,Frs6*a6,Frs7*a7,Frs8*a8,Frs9*a9,Frs10*a10) # g d
Frsand=cbind(Frsa1,Frsa2,Frsa3,Frsa4,Frsa5,Frsa6,Frsa7,Frsa8,Frsa9,Frsa10)
Frpom=cbind(Frp1*a1,Frp2*a2,Frp3*a3,Frp4*a4,Frp5*a5,Frp6*a6,Frp7*a7,Frp8*a8,Frp9*a9,Frp10*a10)


silt_bal<-rowSums(Fdsilt-Frsilt)*365/1000
pom_bal<-rowSums(Fdpom-Frpom)*365/1000
 
plot(silt_bal+pom_bal)
plot(Bil2)
 
Bil1<-(Fds1b+Fdp1b-Frs1-Frp1)*a1*365/10^3         ## g d-1 
Bil2<-(Fds2b+Fdp2b-Frs2-Frp2)*a2*365/10^3      
Bil3<-(Fds3b+Fdp3b-Frs3-Frp3)*a3*365/10^3   
Bil4<-(Fds4b+Fdp4b-Frs4-Frp4)*a4*365/10^3     
Bil5<-(Fds5b+Fdp5b-Frs5-Frp5)*a5*365/10^3     #  
Bil6<-(Fds6b+Fdp6b-Frs6-Frp6)*a6*365/10^3    # 
Bil7<-(Fds7b+Fdp7b-Frs7-Frp7)*a7*365/10^3    
Bil8<-(Fds8b+Fdp8b-Frs8-Frp8)*a8*365/10^3  
Bil9<-(Fds9b+Fdp9b-Frs9-Frp9)*a9*365/10^3    
Bil10<-(Fds10b+Fdp10b-Frs10-Frp10)*a10*365/10^3  

Bilt<-(Bil1+Bil2+Bil3+Bil4+Bil5+Bil6+Bil7+Bil8+Bil9+Bil10)  #kg y-1
plot(Bilt)
head(Bilt)

head(Bil7)

Fdsilt_tot=rowSums(Fdsilt);Fdsand_tot=rowSums(Fdsand);Fdpom_tot=rowSums(Fdpom)
Frsilt_tot=rowSums(Frsilt);Frsand_tot=rowSums(Frsand);Frpom_tot=rowSums(Frpom)

net_tot_silt=Fdsilt_tot-Frsilt_tot    # g d-1
net_tot_sand=Fdsand_tot-Frsand_tot    # g d-1
net_tot_pom=Fdpom_tot-Frpom_tot       # g d-1

net_tot_silt_mean<-tapply(net_tot_silt, rep(1:(length(net_tot_silt)/12),each = 12),mean)
net_tot_sand_mean<-tapply(net_tot_sand, rep(1:(length(net_tot_sand)/12),each = 12),mean)
net_tot_pom_mean <-tapply(net_tot_pom, rep(1:(length(net_tot_pom)/12),each = 12),mean)

plot(net_tot_silt, type='l')
plot(net_tot_silt_mean, type='l',col=2)

plot(net_tot_pom, type='l')
plot(net_tot_pom_mean, type='l',col=2)

plot(net_tot_sand, type='l')   #ug s-1
plot(net_tot_sand_mean, type='l',col=2)

dd<-(Fdsilt_tot+Fdsand_tot+Fdpom_tot)*365                                  #g d-1  -> g y-1
rr<-(Frsilt_tot+Frsand_tot+Frpom_tot)*365                                 

nn<-(net_tot_sand_mean+net_tot_silt_mean+net_tot_pom_mean)*365    # g y-1         

rr_tot_mean <-tapply(rr, rep(1:(length(rr)/12),each = 12),mean)
dd_tot_mean <-tapply(dd, rep(1:(length(dd)/12),each = 12),mean)

nn2<-dd_tot_mean-rr_tot_mean    #uguale ad nn

ax<-seq(1:201)

png('Dep_res.png')
plot(ax,nn/10^3,col=1,type='l',ylim=c(-6000,20000)) # g y-1  -> kg y-1
par(new=T)
plot(ax,rr_tot_mean/10^3,col=2,ylim=c(-6000,20000),type='l')
par(new=T)
plot(ax,dd_tot_mean/10^3,col=3,type='l', ylim=c(-6000,20000))
dev.off()

head(nn/10^9); head(rr/10^9); head(dd/10^9)
max(nn/10^3)
str(nn)
str(rr)
str(dd)

D1 = (Fds1b + Fdsa1 + Fdp1b)*a1
D2 = (Fds2b + Fdsa2 + Fdp2b)*a2
D3 = (Fds3b + Fdsa3 + Fdp3b)*a3
D4 = (Fds4b + Fdsa4 + Fdp4b)*a4
D5 = (Fds5b + Fdsa5 + Fdp5b)*a5
D6 = (Fds6b + Fdsa6 + Fdp6b)*a6
D7 = (Fds7b + Fdsa7 + Fdp7b)*a7
D8 = (Fds8b + Fdsa8 + Fdp8b)*a8
D9 = (Fds9b + Fdsa9 + Fdp9b)*a9
D10= (Fds10b+ Fdsa10+ Fdp10b)*a10

R1 = (Frs1 + Frsa1 + Frp1)*a1
R2 = (Frs2 + Frsa2 + Frp2)*a2
R3 = (Frs3 + Frsa3 + Frp3)*a3
R4 = (Frs4 + Frsa4 + Frp4)*a4
R5 = (Frs5 + Frsa5 + Frp5)*a5
R6 = (Frs6 + Frsa6 + Frp6)*a6
R7 = (Frs7 + Frsa7 + Frp7)*a7
R8 = (Frs8 + Frsa8 + Frp8)*a8
R9 = (Frs9 + Frsa9 + Frp9)*a9
R10= (Frs10+ Frsa10+ Frp10)*a10    #g d 

TotD<-(D1+D2+D3+D4+D5+D6+D7+D8+D9+D10)   #g d 
TotR<-R1+R2+R3+R4+R5+R6+R7+R8+R9+R10

N1<-D1-R1;N2<-D2-R2;N3<-D3-R3;N4<-D4-R4;N5<-D5-R5;
N6<-D6-R6;N7<-D7-R7; N8<-D8-R8;N9<-D9-R9; N10<-D10-R10

Ntot<-(N1+N2+N3+N4+N5+N6+N7+N8+N9+N10)*365/1000

hg_sed_reservoir<-hg_silt_sed_tot+hg_pom_sed_tot+hg_sand_sed_tot+hg_doc_sed_tot+hg_aq_sed_tot
hg_wat_reservoir<-hg_silt_wat_tot+hg_pom_wat_tot+hg_sand_wat_tot+hg_doc_wat_tot+hg_aq_wat_tot   #grams

head(TotD*365)
head(TotR*365)

NEt<-(TotD-TotR)*365/1000     #kg d

plot(rdate,NEt)
par(new=T)
plot(rdate,Ntot)

Net_kgy<-NEt

head(hg_wat_reservoir/10^3)  # kg
head(NEt,12)
str(Net_kgy)


tapply(net_tot_silt, rep(1:(length(net_tot_silt)/12),each = 12),mean)


Net_kgyMEDIA<-tapply(Net_kgy, rep(1:(length(Net_kgy)/12),each = 12),mean)

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

head(hg_sed_reservoir/10^9)
head(tot_s_reser)
plot(hg_wat_reservoir/10^3, main='Hg water kg')   #grams to kg
plot(hg_reserv_s)

png('Hg_reservoirs_part3.png')
par(mfrow=c(1,2))
plot(rdate,hg_silt_wat_tot/10^3, ylim=c(0,60),type='l',lwd=2, col='brown', ylab='kg(hg)',
     main='Hg partitioning in water')
par(new=T)
plot(rdate,hg_pom_wat_tot/10^3, ylim=c(0,60),type='l',lwd=2, col='darkgreen',ylab='')
par(new=T)
plot(rdate,hg_sand_wat_tot/10^3, ylim=c(0,60),type='l',lwd=2, col='yellow',ylab='')
par(new=T)
plot(rdate,hg_aq_wat_tot/10^3, ylim=c(0,60),type='l',lwd=2, col='cyan',ylab='',lty=2)
par(new=T)
plot(rdate,hg_doc_wat_tot/10^3, ylim=c(0,60),type='l',lwd=2, col='cyan3',ylab='',lty=4)
par(new=T)
plot(rdate,hg_wat_reservoir/10^3, ylim=c(0,60),type='l',lwd=2, col='black',ylab='',lty=4)

plot(rdate,hg_silt_sed_tot/10^3, ylim=c(0,5*10^4),type='l',lwd=2, col='brown', ylab='kg(hg)',
     main='Hg partitioning in sediment')
par(new=T)
plot(rdate,hg_pom_sed_tot/10^3, ylim=c(0,5*10^4),type='l',lwd=2, col='darkgreen',ylab='')
par(new=T)
plot(rdate,hg_sand_sed_tot/10^3, ylim=c(0,5*10^4),type='l',lwd=2, col='yellow',ylab='')
par(new=T)
plot(rdate,hg_aq_sed_tot/10^3, ylim=c(0,5*10^4),type='l',lwd=2, col='cyan',ylab='',lty=2)
par(new=T)
plot(rdate,hg_doc_sed_tot/10^3, ylim=c(0,5*10^4),type='l',lwd=2, col='cyan3',ylab='',lty=4)
par(new=T)
plot(rdate,hg_sed_reservoir/10^3, ylim=c(0,5*10^4),type='l',lwd=2, col='black',ylab='',lty=4)
dev.off()

write.table(Net_kgy,"Net_hgSed_kgy.txt");

head(Net_kgy)
summary(Net_kgy)
summary(Bilt)

summary(Net_kgyMEDIA)

plot(Net_kgyMEDIA)

head(Net_kgyMEDIA,40)
