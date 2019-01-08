setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61/')

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

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
TOTs<-TOTs[1:2412,]

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
silts<-silts[1:2412,]

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
POMs<-POMs[1:2412,]

sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
sands<-sands[1:2412,]

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
Phgs<-Phgs[1:2412,]

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
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71

#fsilt=silts/TOTs;fPOM=POMs/TOTs;fsand=sands/TOTs

ksilt<-1.5*10^5; kpom<-2*10^5; kdoc<-10000
partden1=1+0.000001*((ksilt*silts)+(sands)+(kpom*POMs)+(kdoc*3.19))
faq=1./partden1
fsilt=(0.000001*ksilt*silts)/partden1
fsand=(0.000001*1*sands)/partden1
fpom= (0.000001*kpom*POMs)/partden1
fdoc=(0.000001*kdoc*3.19)/partden1
head(fsilt+fpom+fsand+faq+fdoc)

head(fsilt$wn1)
head(fsand$wn1)
head(fpom$wn1)

reservoir_hg_w1<-a1*d1*hg$wn1/10^9     # ng/L(w+s) or ug/m3(w+s) *vol(m3) = kg(hg)
reservoir_hg_w2<-a2*d2*hg$wn2/10^9
reservoir_hg_w3<-a3*d3*hg$wn3/10^9
reservoir_hg_w4<-a4*d4*hg$wn4/10^9
reservoir_hg_w5<-a5*d5*hg$wn5/10^9
reservoir_hg_w6<-a6*d6*hg$wc6/10^9
reservoir_hg_w7<-a7*d7*hg$wc7/10^9
reservoir_hg_w8<-a8*d8*hg$ws8/10^9
reservoir_hg_w9<-a9*d9*hg$ws9/10^9
reservoir_hg_w10<-a10*d10*hg$ws10/10^9

reservoir_hgp_w1<-a1*d1*Phgs$wn1/10^9     # ng/L(w+s) or ug/m3(w+s) *vol(m3) = kg(hg)
reservoir_hgp_w2<-a2*d2*Phgs$wn2/10^9
reservoir_hgp_w3<-a3*d3*Phgs$wn3/10^9
reservoir_hgp_w4<-a4*d4*Phgs$wn4/10^9
reservoir_hgp_w5<-a5*d5*Phgs$wn5/10^9
reservoir_hgp_w6<-a6*d6*Phgs$wc6/10^9
reservoir_hgp_w7<-a7*d7*Phgs$wc7/10^9
reservoir_hgp_w8<-a8*d8*Phgs$ws8/10^9
reservoir_hgp_w9<-a9*d9*Phgs$ws9/10^9
reservoir_hgp_w10<-a10*d10*Phgs$ws10/10^9

hgsilt_w1<-reservoir_hg_w1*fsilt$wn1    ##kg(hg)
hgsilt_w2<-reservoir_hg_w2*fsilt$wn2
hgsilt_w3<-reservoir_hg_w3*fsilt$wn3
hgsilt_w4<-reservoir_hg_w4*fsilt$wn4
hgsilt_w5<-reservoir_hg_w5*fsilt$wn5
hgsilt_w6<-reservoir_hg_w6*fsilt$wc6
hgsilt_w7<-reservoir_hg_w7*fsilt$wc7
hgsilt_w8<-reservoir_hg_w8*fsilt$ws8
hgsilt_w9<-reservoir_hg_w9*fsilt$ws9
hgsilt_w10<-reservoir_hg_w10*fsilt$ws10

hgpom_w1<-reservoir_hg_w1*fpom$wn1     ##kg(hg)
hgpom_w2<-reservoir_hg_w2*fpom$wn2
hgpom_w3<-reservoir_hg_w3*fpom$wn3
hgpom_w4<-reservoir_hg_w4*fpom$wn4
hgpom_w5<-reservoir_hg_w5*fpom$wn5
hgpom_w6<-reservoir_hg_w6*fpom$wc6
hgpom_w7<-reservoir_hg_w7*fpom$wc7
hgpom_w8<-reservoir_hg_w8*fpom$ws8
hgpom_w9<-reservoir_hg_w9*fpom$ws9
hgpom_w10<-reservoir_hg_w10*fpom$ws10

hgsand_w1<-reservoir_hg_w1*fsand$wn1    ##kg(hg)
hgsand_w2<-reservoir_hg_w2*fsand$wn2
hgsand_w3<-reservoir_hg_w3*fsand$wn3
hgsand_w4<-reservoir_hg_w4*fsand$wn4
hgsand_w5<-reservoir_hg_w5*fsand$wn5
hgsand_w6<-reservoir_hg_w6*fsand$wc6
hgsand_w7<-reservoir_hg_w7*fsand$wc7
hgsand_w8<-reservoir_hg_w8*fsand$ws8
hgsand_w9<-reservoir_hg_w9*fsand$ws9
hgsand_w10<-reservoir_hg_w10*fsand$ws10

Fds1<-hgsilt_w1*DEPO_silt$wn1     # Flux for Hg in silt, ##kg(hg) * m d-1 --> kg d
Fds2<-hgsilt_w2*DEPO_silt$wn2
Fds3<-hgsilt_w3*DEPO_silt$wn3
Fds4<-hgsilt_w4*DEPO_silt$wn4
Fds5<-hgsilt_w5*DEPO_silt$wn5
Fds6<-hgsilt_w6*DEPO_silt$wc6
Fds7<-hgsilt_w7*DEPO_silt$wc7
Fds8<-hgsilt_w8*DEPO_silt$ws8
Fds9<-hgsilt_w9*DEPO_silt$ws9
Fds10<-hgsilt_w10*DEPO_silt$ws10

Fdsa1<-hgsand_w1*DEPO_sand$wn1
Fdsa2<-hgsand_w2*DEPO_sand$wn2
Fdsa3<-hgsand_w3*DEPO_sand$wn3     # Flux for Hg in sand,
Fdsa4<-hgsand_w4*DEPO_sand$wn4     #
Fdsa5<-hgsand_w5*DEPO_sand$wn5     # Flux for Hg in sand,
Fdsa6<-hgsand_w6*DEPO_sand$wc6     # Flux for Hg in sand,
Fdsa7<-hgsand_w7*DEPO_sand$wc7     # Flux for Hg in sand,
Fdsa8<-hgsand_w8*DEPO_sand$ws8     # Flux for Hg in sand,
Fdsa9<-hgsand_w9*DEPO_sand$ws9
Fdsa10<-hgsand_w10*DEPO_sand$ws10

Fdp1<-hgpom_w1*DEPO_POM$wn1
Fdp2<-hgpom_w2*DEPO_POM$wn2
Fdp3<-hgpom_w3*DEPO_POM$wn3     # Flux
Fdp4<-hgpom_w4*DEPO_POM$wn4
Fdp5<-hgpom_w5*DEPO_POM$wn5
Fdp6<-hgpom_w6*DEPO_POM$wc6
Fdp7<-hgpom_w7*DEPO_POM$wc7
Fdp8<-hgpom_w8*DEPO_POM$ws8
Fdp9<-hgpom_w9*DEPO_POM$ws9
Fdp10<-hgpom_w10*DEPO_POM$ws10

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

reservoir_hgp_s1<-a1*d1*Phgs$sn1/10^9     # ng/L(w+s) or ug/m3(w+s)*vol(m3)/10^9 = kg(hg)
reservoir_hgp_s2<-a2*d2*Phgs$sn2/10^9
reservoir_hgp_s3<-a3*d3*Phgs$sn3/10^9
reservoir_hgp_s4<-a4*d4*Phgs$sn4/10^9
reservoir_hgp_s5<-a5*d5*Phgs$sn5/10^9
reservoir_hgp_s6<-a6*d6*Phgs$sc6/10^9
reservoir_hgp_s7<-a7*d7*Phgs$sc7/10^9
reservoir_hgp_s8<-a8*d8*Phgs$ss8/10^9
reservoir_hgp_s9<-a9*d9*Phgs$ss9/10^9
reservoir_hgp_s10<-a10*d10*Phgs$ss10/10^9

reservoir_hg_s1<-a1*d1*hg$sn1*TOTs$sn1/10^9     # ng/g *g/m3(w+s)*vol(m3)/10^9 = kg(hg)
reservoir_hg_s2<-a2*d2*hg$sn2*TOTs$sn2/10^9
reservoir_hg_s3<-a3*d3*hg$sn3*TOTs$sn3/10^9
reservoir_hg_s4<-a4*d4*hg$sn4*TOTs$sn4/10^9
reservoir_hg_s5<-a5*d5*hg$sn5*TOTs$sn5/10^9
reservoir_hg_s6<-a6*d6*hg$sc6*TOTs$sc6/10^9
reservoir_hg_s7<-a7*d7*hg$sc7*TOTs$sc7/10^9
reservoir_hg_s8<-a8*d8*hg$ss8*TOTs$ss8/10^9
reservoir_hg_s9<-a9*d9*hg$ss9*TOTs$ss9/10^9
reservoir_hg_s10<-a10*d10*hg$ss10*TOTs$ss10/10^9

hgsilt_s1<-reservoir_hg_s1*fsilt$sn1
hgsilt_s2<-reservoir_hg_s2*fsilt$sn2
hgsilt_s3<-reservoir_hg_s3*fsilt$sn3
hgsilt_s4<-reservoir_hg_s4*fsilt$sn4
hgsilt_s5<-reservoir_hg_s5*fsilt$sn5
hgsilt_s6<-reservoir_hg_s6*fsilt$sc6
hgsilt_s7<-reservoir_hg_s7*fsilt$sc7
hgsilt_s8<-reservoir_hg_s8*fsilt$ss8
hgsilt_s9<-reservoir_hg_s9*fsilt$ss9
hgsilt_s10<-reservoir_hg_s10*fsilt$ss10

hgom_s1<-reservoir_hg_s1*fpom$sn1
hgom_s2<-reservoir_hg_s2*fpom$sn2
hgom_s3<-reservoir_hg_s3*fpom$sn3
hgom_s4<-reservoir_hg_s4*fpom$sn4
hgom_s5<-reservoir_hg_s5*fpom$sn5
hgom_s6<-reservoir_hg_s6*fpom$sc6
hgom_s7<-reservoir_hg_s7*fpom$sc7
hgom_s8<-reservoir_hg_s8*fpom$ss8
hgom_s9<-reservoir_hg_s9*fpom$ss9
hgom_s10<-reservoir_hg_s10*fpom$ss10

hgsand_s1<-reservoir_hg_s1*fsand$sn1
hgsand_s2<-reservoir_hg_s2*fsand$sn2
hgsand_s3<-reservoir_hg_s3*fsand$sn3
hgsand_s4<-reservoir_hg_s4*fsand$sn4
hgsand_s5<-reservoir_hg_s5*fsand$sn5
hgsand_s6<-reservoir_hg_s6*fsand$sc6
hgsand_s7<-reservoir_hg_s7*fsand$sc7
hgsand_s8<-reservoir_hg_s8*fsand$ss8
hgsand_s9<-reservoir_hg_s9*fsand$ss9
hgsand_s10<-reservoir_hg_s10*fsand$ss10

Frs1<-hgsilt_s1*RESUS_silt$sn1     # Flux for Hg in silt, ng/l or ug/m3*m d-1 --> ugm2d
Frs2<-hgsilt_s2*RESUS_silt$sn2     # Flux for Hg in silt, ng/l or ug/m3*m d-1 --> ugm2d
Frs3<-hgsilt_s3*RESUS_silt$sn3     # Flux for Hg in silt, ng/l or ug/m3*m d-1 --> ugm2d
Frs4<-hgsilt_s4*RESUS_silt$sn4     # Flux for Hg in silt, ng/l or ug/m3*m d-1 --> ugm2d
Frs5<-hgsilt_s5*RESUS_silt$sn5     # Flux for Hg in silt, ng/l or ug/m3*m d-1 --> ugm2d
Frs6<-hgsilt_s6*RESUS_silt$sc6     # Flux for Hg in silt, ng/l or ug/m3*m d-1 --> ugm2d
Frs7<-hgsilt_s7*RESUS_silt$sc7     # Flux for Hg in silt, ng/l or ug/m3*m d-1 --> ugm2d
Frs8<-hgsilt_s8*RESUS_silt$ss8     # Flux for Hg in silt, ng/l or ug/m3*m d-1 --> ugm2d
Frs9<-hgsilt_s9*RESUS_silt$ss9     # Flux for Hg in silt, ng/l or ug/m3*m d-1 --> ugm2d
Frs10<-hgsilt_s10*RESUS_silt$ss10     # Flux for Hg in silt, ng/l or ug/m3*m d-1 --> ugm2d

Frsa1<-hgsand_s1*RESUS_sand$sn1     # Flux for Hg in sand, ng/l or ug/m3*m d-1 --> ugm2d
Frsa2<-hgsand_s2*RESUS_sand$sn2     # Flux for Hg in sand, ng/l or ug/m3*m d-1 --> ugm2d
Frsa3<-hgsand_s3*RESUS_sand$sn3     # Flux for Hg in sand, ng/l or ug/m3*m d-1 --> ugm2d
Frsa4<-hgsand_s4*RESUS_sand$sn4     # Flux for Hg in sand, ng/l or ug/m3*m d-1 --> ugm2d
Frsa5<-hgsand_s5*RESUS_sand$sn5     # Flux for Hg in sand, ng/l or ug/m3*m d-1 --> ugm2d
Frsa6<-hgsand_s6*RESUS_sand$sc6     # Flux for Hg in sand, ng/l or ug/m3*m d-1 --> ugm2d
Frsa7<-hgsand_s7*RESUS_sand$sc7     # Flux for Hg in sand, ng/l or ug/m3*m d-1 --> ugm2d
Frsa8<-hgsand_s8*RESUS_sand$ss8     # Flux for Hg in sand, ng/l or ug/m3*m d-1 --> ugm2d
Frsa9<-hgsand_s9*RESUS_sand$ss9     # Flux for Hg in sand, ng/l or ug/m3*m d-1 --> ugm2d
Frsa10<-hgsand_s10*RESUS_sand$ss10     # Flux for Hg in sand, ng/l or ug/m3*m d-1 --> ugm2d

Frp1<-hgpom_s1*RESUS_POM$sn1     # Flux for Hg in POM, ng/l or ug/m3*m d-1 --> ugm2d
Frp2<-hgpom_s2*RESUS_POM$sn2     # Flux for Hg in POM, ng/l or ug/m3*m d-1 --> ugm2d
Frp3<-hgpom_s3*RESUS_POM$sn3     # Flux for Hg in POM, ng/l or ug/m3*m d-1 --> ugm2d
Frp4<-hgpom_s4*RESUS_POM$sn4     # Flux for Hg in POM, ng/l or ug/m3*m d-1 --> ugm2d
Frp5<-hgpom_s5*RESUS_POM$sn5     # Flux for Hg in POM, ng/l or ug/m3*m d-1 --> ugm2d
Frp6<-hgpom_s6*RESUS_POM$sc6     # Flux for Hg in POM, ng/l or ug/m3*m d-1 --> ugm2d
Frp7<-hgpom_s7*RESUS_POM$sc7     # Flux for Hg in POM, ng/l or ug/m3*m d-1 --> ugm2d
Frp8<-hgpom_s8*RESUS_POM$ss8     # Flux for Hg in POM, ng/l or ug/m3*m d-1 --> ugm2d
Frp9<-hgpom_s9*RESUS_POM$ss9     # Flux for Hg in POM, ng/l or ug/m3*m d-1 --> ugm2d
Frp10<-hgpom_s10*RESUS_POM$ss10     # Flux for Hg in POM, ng/l or ug/m3*m d-1 --> ugm2d

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

TotD<-D1+D2+D3+D4+D5+D6+D7+D8+D9+D10
TotR<-R1+R2+R3+R4+R5+R6+R7+R8+R9+R10

head(TotD)
head(TotR)

plot(TotD,ylim=c(0,15000))
par(new=T)
plot(TotR,ylim=c(0,15000),col=2)

plot(Fds1-Frs1)
plot(Fds6-Frs6)
plot(Fdp6-Frp6)
