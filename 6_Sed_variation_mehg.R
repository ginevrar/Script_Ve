setwd('C:\\Users\\gi\\Desktop\\2155')
#setwd('C:\\Users\\gi\\Desktop\\NNN14')
#setwd('F:\\2128')
 
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')

mehg<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

time.steps <- hg$time;time.steps3 <- time.steps*24*3600;
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y");head(rdate)

TOT<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOT)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9',
               'dss10', 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

Pmehgs<-read.csv("Total_Sorbed_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Pmehgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

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

reservoir_mehgp_s1<-(a1*0.05*Pmehgs$sn1[2:202])/10^6       # ug/m3(w+s)*vol(m3)/10^6 = g(hg)
reservoir_mehgp_s2<-(a2*0.05*Pmehgs$sn2[2:202])/10^6
reservoir_mehgp_s3<-(a3*0.05*Pmehgs$sn3[2:202])/10^6
reservoir_mehgp_s4<-(a4*0.05*Pmehgs$sn4[2:202])/10^6
reservoir_mehgp_s5<-(a5*0.05*Pmehgs$sn5[2:202])/10^6
reservoir_mehgp_s6<-(a6*0.05*Pmehgs$sc6[2:202])/10^6
reservoir_mehgp_s7<-(a7*0.05*Pmehgs$sc7[2:202])/10^6
reservoir_mehgp_s8<-(a8*0.05*Pmehgs$ss8[2:202])/10^6
reservoir_mehgp_s9<-(a9*0.05*Pmehgs$ss9[2:202])/10^6
reservoir_mehgp_s10<-(a10*0.05*Pmehgs$ss10[2:202])/10^6   # con Phg = 1327071.6; con SEDhg =1330108.1

head(reservoir_mehgp_s1); head(reservoir_hg_s1)

str(hg);str(TOTs)

reservoir_mehg_s1 <- (a1*0.05 * mehg$sn1[2:202] *TOTs$sn1[2:202])/10^9   #ng(mehg)/g(s) *g(s)/m3(w+s)*vol(m3) = ng(mehg)/10^9 = g(mehg)
reservoir_mehg_s2 <- (a2*0.05 * mehg$sn2[2:202] *TOTs$sn2[2:202])/10^9
reservoir_mehg_s3 <- (a3*0.05 * mehg$sn3[2:202] *TOTs$sn3[2:202])/10^9
reservoir_mehg_s4 <- (a4*0.05 * mehg$sn4[2:202] *TOTs$sn4[2:202])/10^9
reservoir_mehg_s5 <- (a5*0.05 * mehg$sn5[2:202] *TOTs$sn5[2:202])/10^9
reservoir_mehg_s6 <- (a6*0.05 * mehg$sc6[2:202] *TOTs$sc6[2:202])/10^9
reservoir_mehg_s7 <- (a7*0.05 * mehg$sc7[2:202] *TOTs$sc7[2:202])/10^9
reservoir_mehg_s8 <- (a8*0.05 * mehg$ss8[2:202] *TOTs$ss8[2:202])/10^9
reservoir_mehg_s9 <- (a9*0.05 * mehg$ss9[2:202] *TOTs$ss9[2:202])/10^9
reservoir_mehg_s10<- (a10*0.05* mehg$ss10[2:202] *TOTs$ss10[2:202])/10^9

diffMeHgps1<-c(NA,diff(reservoir_mehgp_s1, differences = 1))
diffMeHgps2<-c(NA,diff(reservoir_mehgp_s2, differences = 1))
diffMeHgps3<-c(NA,diff(reservoir_mehgp_s3, differences = 1))
diffMeHgps4<-c(NA,diff(reservoir_mehgp_s4, differences = 1))
diffMeHgps5<-c(NA,diff(reservoir_mehgp_s5, differences = 1))
diffMeHgps6<-c(NA,diff(reservoir_mehgp_s6, differences = 1))
diffMeHgps7<-c(NA,diff(reservoir_mehgp_s7, differences = 1))
diffMeHgps8<-c(NA,diff(reservoir_mehgp_s8, differences = 1))
diffMeHgps9<-c(NA,diff(reservoir_mehgp_s9, differences = 1))
diffMeHgps10<-c(NA,diff(reservoir_mehgp_s10, differences = 1))

diffMeHgs1<-c(NA,diff(reservoir_mehg_s1, differences = 1))
diffMeHgs2<-c(NA,diff(reservoir_mehg_s2, differences = 1))
diffMeHgs3<-c(NA,diff(reservoir_mehg_s3, differences = 1))
diffMeHgs4<-c(NA,diff(reservoir_mehg_s4, differences = 1))
diffMeHgs5<-c(NA,diff(reservoir_mehg_s5, differences = 1))
diffMeHgs6<-c(NA,diff(reservoir_mehg_s6, differences = 1))
diffMeHgs7<-c(NA,diff(reservoir_mehg_s7, differences = 1))
diffMeHgs8<-c(NA,diff(reservoir_mehg_s8, differences = 1))
diffMeHgs9<-c(NA,diff(reservoir_mehg_s9, differences = 1))
diffMeHgs10<-c(NA,diff(reservoir_mehg_s10, differences = 1))

bur1 <- (Pmehgs$sn1[2:202]*(burial$sn1[2:202]/100)/10^6)*a1    # ug m3 * m y-1 /10^6 *m2= g y-1
bur2 <- (Pmehgs$sn2[2:202]*(burial$sn2[2:202]/100)/10^6)*a2
bur3 <- (Pmehgs$sn3[2:202]*(burial$sn3[2:202]/100)/10^6)*a3
bur4 <- (Pmehgs$sn4[2:202]*(burial$sn4[2:202]/100)/10^6)*a4
bur5 <- (Pmehgs$sn5[2:202]*(burial$sn5[2:202]/100)/10^6)*a5
bur6 <- (Pmehgs$sc6[2:202]*(burial$sc6[2:202]/100)/10^6)*a6
bur7 <- (Pmehgs$sc7[2:202]*(burial$sc7[2:202]/100)/10^6)*a7
bur8 <- (Pmehgs$ss8[2:202]*(burial$ss8[2:202]/100)/10^6)*a8
bur9 <- (Pmehgs$ss9[2:202]*(burial$ss9[2:202]/100)/10^6)*a9
bur10 <- (Pmehgs$ss10[2:202]*(burial$ss10[2:202]/100)/10^6)*a10

plot(bur5)

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


net_dep1_mehg_kgy<-(diffMeHgps1 + bur1_pos)/1000
net_dep2_mehg_kgy<-(diffMeHgps2 + bur2_pos)/1000
net_dep3_mehg_kgy<-(diffMeHgps3 + bur3_pos)/1000
net_dep4_mehg_kgy<-(diffMeHgps4 + bur4_pos)/1000
net_dep5_mehg_kgy<-(diffMeHgps5 + bur5_pos)/1000
net_dep6_mehg_kgy<-(diffMeHgps6 + bur6_pos)/1000
net_dep7_mehg_kgy<-(diffMeHgps7 + bur7_pos)/1000
net_dep8_mehg_kgy<-(diffMeHgps8 + bur8_pos)/1000
net_dep9_mehg_kgy<-(diffMeHgps9 + bur9_pos)/1000
net_dep10_mehg_kgy<-(diffMeHgps10 + bur10_pos)/1000

head(net_dep1_mehg_kgy)
head(net_dep3_mehg_kgy)
head(net_dep4_mehg_kgy)
head(net_dep5_mehg_kgy)
head(net_dep6_mehg_kgy)
head(net_dep7_mehg_kgy)

net_all<-cbind(net_dep1_mehg_kgy,net_dep2_mehg_kgy,net_dep3_mehg_kgy,net_dep4_mehg_kgy,net_dep5_mehg_kgy,
net_dep6_mehg_kgy,net_dep7_mehg_kgy,net_dep8_mehg_kgy,net_dep9_mehg_kgy,net_dep10_mehg_kgy)

net_sum<-rowSums(net_all)


net_dep1_mehg_kgy[22]

sum(net_sum[242:253])
sum(net_sum[142:253])
rdate[242:253]

rdate[22]

par(mfrow=c(1,1))
plot(net_sum)
max(net_sum,na.rm = T)
head(net_sum,20)
net_sum[121];
net_sum[120]; rdate[12]
net_sum[24]; rdate[24]
net_sum[72] ; rdate[72]
net_sum[97] ; rdate[97]
net_sum[240] ; rdate[240]

write.table(net_sum,file='Sed_bal_mehg.txt')
getwd()
diffHgTs1[2]

diffHgps1[2]

diffHgD<-diffHgTs1-diffHgps1
