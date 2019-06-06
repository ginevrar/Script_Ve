setwd('C:\\Users\\gi\\Desktop\\2155')
#setwd('C:\\Users\\gi\\Desktop\\NNN14')
#setwd('F:\\2128')
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\REference_OK\\')     #sim_cl

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

time.steps <- hg$time;time.steps3 <- time.steps*24*3600;
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y");head(rdate)

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10', 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

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


time.steps <- hg[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
tail(rdate)

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


differenze_NOBurial<-data.frame(diffHgps1,diffHgps2,diffHgps3,diffHgps4,diffHgps5,diffHgps6,diffHgps7,diffHgps8,diffHgps9,diffHgps10)
write.table(differenze_NOBurial,'differenze_NOBurial.txt')

bur1 <- (Phgs$sn1*(burial$sn1/100)/10^6)*a1    # ug m3 * m y-1 /10^6 = g y-1
bur2 <- (Phgs$sn2*(burial$sn2/100)/10^6)*a2
bur3 <- (Phgs$sn3*(burial$sn3/100)/10^6)*a3
bur4 <- (Phgs$sn4*(burial$sn4/100)/10^6)*a4
bur5 <- (Phgs$sn5*(burial$sn5/100)/10^6)*a5
bur6 <- (Phgs$sc6*(burial$sc6/100)/10^6)*a6
bur7 <- (Phgs$sc7*(burial$sc7/100)/10^6)*a7
bur8 <- (Phgs$ss8*(burial$ss8/100)/10^6)*a8
bur9 <- (Phgs$ss9*(burial$ss9/100)/10^6)*a9
bur10 <- (Phgs$ss10*(burial$ss10/100)/10^6)*a10

Burial<-data.frame(bur1,bur2,bur3,bur4,bur5,bur6,bur7,bur8,bur9,bur10)
write.table(Burial,'Burial.txt')

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

head(net_dep1_hg_kgy)
head(net_dep3_hg_kgy)
head(net_dep4_hg_kgy)
head(net_dep5_hg_kgy)
head(net_dep6_hg_kgy)
head(net_dep7_hg_kgy)

net_all<-cbind(net_dep1_hg_kgy,net_dep2_hg_kgy,net_dep3_hg_kgy,net_dep4_hg_kgy,net_dep5_hg_kgy,
net_dep6_hg_kgy,net_dep7_hg_kgy,net_dep8_hg_kgy,net_dep9_hg_kgy,net_dep10_hg_kgy)

net_sum<-rowSums(net_all)

rdate[242:253]

net_dep1_hg_kgy[22]

sum(net_sum[242:253])
sum(net_sum[142:253])
rdate[242:253]

rdate[22]

par(mfrow=c(1,1))
plot(net_sum)
max(net_sum,na.rm = T)
head(net_sum,20)

net_sum[12]; rdate[12]
net_sum[24]; rdate[24]
net_sum[72] ; rdate[72]
net_sum[97] ; rdate[97]
net_sum[240] ; rdate[240]

write.table(net_sum,file='Sed_bal.txt')

diffHgTs1[2]

diffHgps1[2]

diffHgD<-diffHgTs1-diffHgps1
