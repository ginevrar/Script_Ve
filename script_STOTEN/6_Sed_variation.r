setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\REference_OK\\year')     #sim_cl

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')


str(hg)
time.steps <- hg$time;time.steps3 <- time.steps*24*3600;
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y");head(rdate)

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")

names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

str(Phgs)

DEPO_silt<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

DEPO_POM<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

DEPO_sand<-read.csv("Sand_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(DEPO_sand)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10', 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

RESUS_silt<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_silt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                     'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

RESUS_POM<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(RESUS_POM)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

burial<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',	'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                     'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
# aree box

a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07; a9<-2.95E+07;a10<-4.06E+07
area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71

reservoir_hgp_s1<-(a1*0.05*Phgs$sn1[2:202])/10^6       # ug/m3(w+s)*vol(m3)/10^6 = g(hg)
reservoir_hgp_s2<-(a2*0.05*Phgs$sn2[2:202])/10^6
reservoir_hgp_s3<-(a3*0.05*Phgs$sn3[2:202])/10^6
reservoir_hgp_s4<-(a4*0.05*Phgs$sn4[2:202])/10^6
reservoir_hgp_s5<-(a5*0.05*Phgs$sn5[2:202])/10^6
reservoir_hgp_s6<-(a6*0.05*Phgs$sc6[2:202])/10^6
reservoir_hgp_s7<-(a7*0.05*Phgs$sc7[2:202])/10^6
reservoir_hgp_s8<-(a8*0.05*Phgs$ss8[2:202])/10^6
reservoir_hgp_s9<-(a9*0.05*Phgs$ss9[2:202])/10^6
reservoir_hgp_s10<-(a10*0.05*Phgs$ss10[2:202])/10^6   # con Phg = 1327071.6; con SEDhg =1330108.1

head(reservoir_hgp_s1); head(reservoir_hg_s1); str(hg);str(TOTs)

reservoir_hg_s1 <- (a1*0.05 * hg$sn1[2:202] *TOTs$sn1[2:202])/10^9   #ng(hg)/g(s) *g(s)/m3(w+s)*vol(m3) = ng(hg)/10^9 = g(hg)
reservoir_hg_s2 <- (a2*0.05 * hg$sn2[2:202] *TOTs$sn2[2:202])/10^9
reservoir_hg_s3 <- (a3*0.05 * hg$sn3[2:202] *TOTs$sn3[2:202])/10^9
reservoir_hg_s4 <- (a4*0.05 * hg$sn4[2:202] *TOTs$sn4[2:202])/10^9
reservoir_hg_s5 <- (a5*0.05 * hg$sn5[2:202] *TOTs$sn5[2:202])/10^9
reservoir_hg_s6 <- (a6*0.05 * hg$sc6[2:202] *TOTs$sc6[2:202])/10^9
reservoir_hg_s7 <- (a7*0.05 * hg$sc7[2:202] *TOTs$sc7[2:202])/10^9
reservoir_hg_s8 <- (a8*0.05 * hg$ss8[2:202] *TOTs$ss8[2:202])/10^9
reservoir_hg_s9 <- (a9*0.05 * hg$ss9[2:202] *TOTs$ss9[2:202])/10^9
reservoir_hg_s10<- (a10*0.05* hg$ss10[2:202] *TOTs$ss10[2:202])/10^9

diffHgps1<-c(NA,diff(reservoir_hgp_s1, differences = 1))
diffHgps2<-c(NA,diff(reservoir_hgp_s2, differences = 1))
diffHgps3<-c(NA,diff(reservoir_hgp_s3, differences = 1))
diffHgps4<-c(NA,diff(reservoir_hgp_s4, differences = 1))
diffHgps5<-c(NA,diff(reservoir_hgp_s5, differences = 1))
diffHgps6<-c(NA,diff(reservoir_hgp_s6, differences = 1))
diffHgps7<-c(NA,diff(reservoir_hgp_s7, differences = 1))
diffHgps8<-c(NA,diff(reservoir_hgp_s8, differences = 1))
diffHgps9<-c(NA,diff(reservoir_hgp_s9, differences = 1))
diffHgps10<-c(NA,diff(reservoir_hgp_s10, differences = 1))

diffHgTs1<-c(NA,diff(reservoir_hg_s1, differences = 1))
diffHgTs2<-c(NA,diff(reservoir_hg_s2, differences = 1))
diffHgTs3<-c(NA,diff(reservoir_hg_s3, differences = 1))
diffHgTs4<-c(NA,diff(reservoir_hg_s4, differences = 1))
diffHgTs5<-c(NA,diff(reservoir_hg_s5, differences = 1))
diffHgTs6<-c(NA,diff(reservoir_hg_s6, differences = 1))
diffHgTs7<-c(NA,diff(reservoir_hg_s7, differences = 1))
diffHgTs8<-c(NA,diff(reservoir_hg_s8, differences = 1))
diffHgTs9<-c(NA,diff(reservoir_hg_s9, differences = 1))
diffHgTs10<-c(NA,diff(reservoir_hg_s10, differences = 1))

bur1 <- (Phgs$sn1[2:202]*(burial$sn1[2:202]/100)/10^6)*a1    # ug m3 * m y-1 /10^6 *m2= g y-1
bur2 <- (Phgs$sn2[2:202]*(burial$sn2[2:202]/100)/10^6)*a2
bur3 <- (Phgs$sn3[2:202]*(burial$sn3[2:202]/100)/10^6)*a3
bur4 <- (Phgs$sn4[2:202]*(burial$sn4[2:202]/100)/10^6)*a4
bur5 <- (Phgs$sn5[2:202]*(burial$sn5[2:202]/100)/10^6)*a5
bur6 <- (Phgs$sc6[2:202]*(burial$sc6[2:202]/100)/10^6)*a6
bur7 <- (Phgs$sc7[2:202]*(burial$sc7[2:202]/100)/10^6)*a7
bur8 <- (Phgs$ss8[2:202]*(burial$ss8[2:202]/100)/10^6)*a8
bur9 <- (Phgs$ss9[2:202]*(burial$ss9[2:202]/100)/10^6)*a9
bur10 <- (Phgs$ss10[2:202]*(burial$ss10[2:202]/100)/10^6)*a10

bur1_pos<-(bur1>0)*bur1
bur2_pos<-(bur2>0)*bur2
bur3_pos<-(bur3>0)*bur3
bur4_pos<-(bur4>0)*bur4
bur5_pos<-(bur5>0)*bur5
bur6_pos<-(bur6>0)*bur6
bur7_pos<-(bur7>0)*bur7
bur8_pos<-(bur8>0)*bur8
bur9_pos<-(bur9>0)*bur9
bur10_pos<-(bur10>0)*bur10

net_dep1_hg_kgy<-(diffHgps1 + bur1_pos)/1000
net_dep2_hg_kgy<-(diffHgps2 + bur2_pos)/1000
net_dep3_hg_kgy<-(diffHgps3 + bur3_pos)/1000
net_dep4_hg_kgy<-(diffHgps4 + bur4_pos)/1000
net_dep5_hg_kgy<-(diffHgps5 + bur5_pos)/1000
net_dep6_hg_kgy<-(diffHgps6 + bur6_pos)/1000
net_dep7_hg_kgy<-(diffHgps7 + bur7_pos)/1000
net_dep8_hg_kgy<-(diffHgps8 + bur8_pos)/1000
net_dep9_hg_kgy<-(diffHgps9 + bur9_pos)/1000
net_dep10_hg_kgy<-(diffHgps10 + bur10_pos)/1000

net_dep1_hgT_kgy<-(diffHgTs1 + bur1_pos)/1000
net_dep2_hgT_kgy<-(diffHgTs2 + bur2_pos)/1000
net_dep3_hgT_kgy<-(diffHgTs3 + bur3_pos)/1000
net_dep4_hgT_kgy<-(diffHgTs4 + bur4_pos)/1000
net_dep5_hgT_kgy<-(diffHgTs5 + bur5_pos)/1000
net_dep6_hgT_kgy<-(diffHgTs6 + bur6_pos)/1000
net_dep7_hgT_kgy<-(diffHgTs7 + bur7_pos)/1000
net_dep8_hgT_kgy<-(diffHgTs8 + bur8_pos)/1000
net_dep9_hgT_kgy<-(diffHgTs9 + bur9_pos)/1000
net_dep10_hgT_kgy<-(diffHgTs10 + bur10_pos)/1000

head(net_dep1_hg_kgy)
head(net_dep3_hg_kgy)
head(net_dep4_hg_kgy)
head(net_dep5_hg_kgy)
head(net_dep6_hg_kgy)
head(net_dep7_hg_kgy)

net_all<-cbind(years,net_dep1_hg_kgy,net_dep2_hg_kgy,net_dep3_hg_kgy,net_dep4_hg_kgy,net_dep5_hg_kgy,
net_dep6_hg_kgy,net_dep7_hg_kgy,net_dep8_hg_kgy,net_dep9_hg_kgy,net_dep10_hg_kgy)

netT_all<-cbind(years,net_dep1_hgT_kgy,net_dep2_hgT_kgy,net_dep3_hgT_kgy,net_dep4_hgT_kgy,net_dep5_hgT_kgy,
               net_dep6_hgT_kgy,net_dep7_hgT_kgy,net_dep8_hgT_kgy,net_dep9_hgT_kgy,net_dep10_hgT_kgy)

net_all[121,];netT_all[121,]
net_all[120,];netT_all[120,]

net_sum<-rowSums(net_all)
netT_sum<-rowSums(netT_all)

rowSums(netT_all[121,])

netT_all[121,]
net_dep1_hg_kgy[22]

sum(net_sum[242:253])
sum(net_sum[142:253])
rdate[242:253]

rdate[121]

par(mfrow=c(1,1))
plot(net_sum)
max(net_sum,na.rm = T)
head(net_sum,20)

net_sum[12]; rdate[12]
net_sum[24]; rdate[24]
net_sum[72] ; rdate[72]
net_sum[97] ; rdate[97]
net_sum[240] ; rdate[240]

burial_tot<-(bur1+bur2+bur3+bur4+bur5+bur6+bur7+bur8+bur9+bur10)/1000

write.table(net_sum,file='Sed_bal_bydifference2.txt')
write.table(burial_tot,file='Burial2.txt')
getwd()
diffHgTs1[2]

diffHgps1[2]

diffHgD<-diffHgTs1-diffHgps1

Rrw1=hg$wn1*a1*d1/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs1=Phgs$sn1*a1*0.05/10^6
Rrds1=Phgs$dsn1*a1*0.05/10^6
Rros1=Phgs$osn1*a1*0.05/10^6

Rrw2=hg$wn2*a2*d2/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs2=Phgs$sn2*a2*0.05/10^6
Rrds2=Phgs$dsn2*a2*0.05/10^6
Rros2=Phgs$osn2*a2*0.05/10^6

Rrw3=hg$wn3*a3*d3/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs3=Phgs$sn3*a3*0.05/10^6
Rrds3=Phgs$dsn3*a3*0.05/10^6
Rros3=Phgs$osn3*a3*0.05/10^6

Rrw4=hg$wn4*a4*d4/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs4=Phgs$sn4*a4*0.05/10^6
Rrds4=Phgs$dsn4*a4*0.05/10^6
Rros4=Phgs$osn4*a4*0.05/10^6

Rrw5=hg$wn5*a5*d5/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs5=Phgs$sn5*a5*0.05/10^6
Rrds5=Phgs$dsn5*a5*0.05/10^6
Rros5=Phgs$osn5*a5*0.05/10^6

Rrw6=hg$wc6*a6*d6/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs6=Phgs$sc6*a6*0.05/10^6
Rrds6=Phgs$dsc6*a6*0.05/10^6
Rros6=Phgs$osc6*a6*0.05/10^6

Rrw7=hg$wc7*a7*d7/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs7=Phgs$sc7*a7*0.05/10^6
Rrds7=Phgs$dsc7*a7*0.05/10^6
Rros7=Phgs$osc7*a7*0.05/10^6

Rrw8=hg$ws8*a8*d8/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs8=Phgs$ss8*a8*0.05/10^6
Rrds8=Phgs$dss8*a8*0.05/10^6
Rros8=Phgs$oss8*a8*0.05/10^6

Rrw9=hg$ws9*a9*d9/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs9=Phgs$ss9*a9*0.05/10^6
Rrds9=Phgs$dss9*a9*0.05/10^6
Rros9=Phgs$oss9*a9*0.05/10^6

Rrw10=hg$ws10*a10*d10/10^6     # ug m-3 * m3 = ug//10^6 = g
Rrs10=Phgs$ss10*a10*0.05/10^6
Rrds10=Phgs$dss10*a10*0.05/10^6
Rros10=Phgs$oss10*a10*0.05/10^6

RrW<-Rrw1+Rrw2+Rrw3+Rrw4+Rrw5+Rrw6+Rrw7+Rrw8+Rrw9+Rrw10
RrS<-Rrs1+Rrs2+Rrs3+Rrs4+Rrs5+Rrs6+Rrs7+Rrs8+Rrs9+Rrs10
RrDS<-Rrds1+Rrds2+Rrds3+Rrds4+Rrds5+Rrds6+Rrds7+Rrds8+Rrds9+Rrds10
RrOS<-Rros1+Rros2+Rros3+Rros4+Rros5+Rros6+Rros7+Rros8+Rros9+Rros10

RESERV<-data.frame(RrW,RrS[2:204],RrDS[2:204], RrOS[2:204])
write.table(RESERV,file='RESERV_g.txt')
str(RrW);str(RrS);str(RrDS)

reservoir_hg_w1 <- (a1*d1 * hg$wn1[2:202])/10^9   #ng(hg)/g(w) *g(w)/m3(w+w)*vol(m3) = ng(hg)/10^9 = g(hg)
reservoir_hg_w2 <- (a2*d2 * hg$wn2[2:202])/10^9
reservoir_hg_w3 <- (a3*d3 * hg$wn3[2:202])/10^9
reservoir_hg_w4 <- (a4*d4 * hg$wn4[2:202])/10^9
reservoir_hg_w5 <- (a5*d5 * hg$wn5[2:202])/10^9
reservoir_hg_w6 <- (a6*d6 * hg$wc6[2:202])/10^9
reservoir_hg_w7 <- (a7*d7 * hg$wc7[2:202])/10^9
reservoir_hg_w8 <- (a8*d8 * hg$ws8[2:202])/10^9
reservoir_hg_w9 <- (a9*d9 * hg$ws9[2:202])/10^9
reservoir_hg_w10<- (a10*d10* hg$ws10[2:202])/10^9


diffHgTw1<-c(NA,diff(reservoir_hg_w1, differences = 1))
diffHgTw2<-c(NA,diff(reservoir_hg_w2, differences = 1))
diffHgTw3<-c(NA,diff(reservoir_hg_w3, differences = 1))
diffHgTw4<-c(NA,diff(reservoir_hg_w4, differences = 1))
diffHgTw5<-c(NA,diff(reservoir_hg_w5, differences = 1))
diffHgTw6<-c(NA,diff(reservoir_hg_w6, differences = 1))
diffHgTw7<-c(NA,diff(reservoir_hg_w7, differences = 1))
diffHgTw8<-c(NA,diff(reservoir_hg_w8, differences = 1))
diffHgTw9<-c(NA,diff(reservoir_hg_w9, differences = 1))
diffHgTw10<-c(NA,diff(reservoir_hg_w10, differences = 1))

years<-seq(1900,2100)
#water diff in g
wdi<-data.frame(years,diffHgTw1,diffHgTw2,diffHgTw3,diffHgTw4,diffHgTw5,diffHgTw6,diffHgTw7,diffHgTw8,diffHgTw9,diffHgTw10)
wdi[120,]
plot(wdi$years, rowSums(wdi[2:11]), ylim=c(-0.1,0.1))

plot(diffHgTw1)
plot(diffHgTw2)
plot(diffHgTw3)
plot(diffHgTw4)
plot(diffHgTw5)
plot(diffHgTw6)
