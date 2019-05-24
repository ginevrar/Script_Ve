setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')
setwd('C:/Users/gi/Dropbox/NNN61/')
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10',
             'vosn1','vosn2','vosn3','vosn4','vosn5','vosc6','vosc7','voss8','voss9','voss10')
mehg<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10',
             'vosn1','vosn2','vosn3','vosn4','vosn5','vosc6','vosc7','voss8','voss9','voss10')

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10',
               'vosn1','vosn2','vosn3','vosn4','vosn5','vosc6','vosc7','voss8','voss9','voss10')

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10',
               'vosn1','vosn2','vosn3','vosn4','vosn5','vosc6','vosc7','voss8','voss9','voss10')

Pmehgs<-read.csv("Total_Sorbed_Methyl_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Pmehgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10',
               'vosn1','vosn2','vosn3','vosn4','vosn5','vosc6','vosc7','voss8','voss9','voss10')

time.steps <- TOTs[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1901-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07; a9<-2.95E+07;a10<-4.06E+07
area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10
d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71

reservoir_hg_w1<-a1*d1*hg$wn1/10^9  # .hg (ug m-3) * (m3) /10^9 = kg
reservoir_hg_w2<-a2*d2*hg$wn2/10^9
reservoir_hg_w3<-a3*d3*hg$wn3/10^9
reservoir_hg_w4<-a4*d4*hg$wn4/10^9
reservoir_hg_w5<-a5*d5*hg$wn5/10^9
reservoir_hg_w6<-a6*d6*hg$wc6/10^9
reservoir_hg_w7<-a7*d7*hg$wc7/10^9
reservoir_hg_w8<-a8*d8*hg$ws8/10^9
reservoir_hg_w9<-a9*d9*hg$ws9/10^9
reservoir_hg_w10<-a10*d10*hg$ws10/10^9

reservoir_hg_s1<-a1*0.05*Phgs$sn1/10^9    #ug m-3 * m3/10^9 = kg
reservoir_hg_s2<-a2*0.05*Phgs$sn2/10^9
reservoir_hg_s3<-a3*0.05*Phgs$sn3/10^9
reservoir_hg_s4<-a4*0.05*Phgs$sn4/10^9
reservoir_hg_s5<-a5*0.05*Phgs$sn5/10^9
reservoir_hg_s6<-a6*0.05*Phgs$sc6/10^9
reservoir_hg_s7<-a7*0.05*Phgs$sc7/10^9
reservoir_hg_s8<-a8*0.05*Phgs$ss8/10^9
reservoir_hg_s9<-a9*0.05*Phgs$ss9/10^9
reservoir_hg_s10<-a10*0.05*Phgs$ss10/10^9

reservoir_hg_ds1<-a1*0.05*Phgs$dsn1/10^9    #ug m-3 * m3/10^9 = kg
reservoir_hg_ds2<-a2*0.05*Phgs$dsn2/10^9
reservoir_hg_ds3<-a3*0.05*Phgs$dsn3/10^9
reservoir_hg_ds4<-a4*0.05*Phgs$dsn4/10^9
reservoir_hg_ds5<-a5*0.05*Phgs$dsn5/10^9
reservoir_hg_ds6<-a6*0.05*Phgs$dsc6/10^9
reservoir_hg_ds7<-a7*0.05*Phgs$dsc7/10^9
reservoir_hg_ds8<-a8*0.05*Phgs$dss8/10^9
reservoir_hg_ds9<-a9*0.05*Phgs$dss9/10^9
reservoir_hg_ds10<-a10*0.05*Phgs$dss10/10^9


reservoir_hg_os1<-a1*0.1*Phgs$osn1/10^9    #ug m-3 * m3/10^9 = kg
reservoir_hg_os2<-a2*0.1*Phgs$osn2/10^9
reservoir_hg_os3<-a3*0.1*Phgs$osn3/10^9
reservoir_hg_os4<-a4*0.1*Phgs$osn4/10^9
reservoir_hg_os5<-a5*0.1*Phgs$osn5/10^9
reservoir_hg_os6<-a6*0.1*Phgs$osc6/10^9
reservoir_hg_os7<-a7*0.1*Phgs$osc7/10^9
reservoir_hg_os8<-a8*0.1*Phgs$oss8/10^9
reservoir_hg_os9<-a9*0.1*Phgs$oss9/10^9
reservoir_hg_os10<-a10*0.1*Phgs$oss10/10^9


reservoir_hg_vos1<-a1*0.1*Phgs$vosn1/10^9    #ug m-3 * m3/10^9 = kg
reservoir_hg_vos2<-a2*0.1*Phgs$vosn2/10^9
reservoir_hg_vos3<-a3*0.1*Phgs$vosn3/10^9
reservoir_hg_vos4<-a4*0.1*Phgs$vosn4/10^9
reservoir_hg_vos5<-a5*0.1*Phgs$vosn5/10^9
reservoir_hg_vos6<-a6*0.1*Phgs$vosc6/10^9
reservoir_hg_vos7<-a7*0.1*Phgs$vosc7/10^9
reservoir_hg_vos8<-a8*0.1*Phgs$voss8/10^9
reservoir_hg_vos9<-a9*0.1*Phgs$voss9/10^9
reservoir_hg_vos10<-a10*0.1*Phgs$voss10/10^9


reservoir_mehg_w1<-a1*d1*mehg$wn1/10^9  # .mehg (ug m-3) * (m3) /10^9 = kg
reservoir_mehg_w2<-a2*d2*mehg$wn2/10^9
reservoir_mehg_w3<-a3*d3*mehg$wn3/10^9
reservoir_mehg_w4<-a4*d4*mehg$wn4/10^9
reservoir_mehg_w5<-a5*d5*mehg$wn5/10^9
reservoir_mehg_w6<-a6*d6*mehg$wc6/10^9
reservoir_mehg_w7<-a7*d7*mehg$wc7/10^9
reservoir_mehg_w8<-a8*d8*mehg$ws8/10^9
reservoir_mehg_w9<-a9*d9*mehg$ws9/10^9
reservoir_mehg_w10<-a10*d10*mehg$ws10/10^9

reservoir_mehg_s1<-a1*0.05*Pmehgs$sn1/10^9    #ug m-3 * m3/10^9 = kg
reservoir_mehg_s2<-a2*0.05*Pmehgs$sn2/10^9
reservoir_mehg_s3<-a3*0.05*Pmehgs$sn3/10^9
reservoir_mehg_s4<-a4*0.05*Pmehgs$sn4/10^9
reservoir_mehg_s5<-a5*0.05*Pmehgs$sn5/10^9
reservoir_mehg_s6<-a6*0.05*Pmehgs$sc6/10^9
reservoir_mehg_s7<-a7*0.05*Pmehgs$sc7/10^9
reservoir_mehg_s8<-a8*0.05*Pmehgs$ss8/10^9
reservoir_mehg_s9<-a9*0.05*Pmehgs$ss9/10^9
reservoir_mehg_s10<-a10*0.05*Pmehgs$ss10/10^9

reservoir_mehg_ds1<-a1*0.05*Pmehgs$dsn1/10^9    #ug m-3 * m3/10^9 = kg
reservoir_mehg_ds2<-a2*0.05*Pmehgs$dsn2/10^9
reservoir_mehg_ds3<-a3*0.05*Pmehgs$dsn3/10^9
reservoir_mehg_ds4<-a4*0.05*Pmehgs$dsn4/10^9
reservoir_mehg_ds5<-a5*0.05*Pmehgs$dsn5/10^9
reservoir_mehg_ds6<-a6*0.05*Pmehgs$dsc6/10^9
reservoir_mehg_ds7<-a7*0.05*Pmehgs$dsc7/10^9
reservoir_mehg_ds8<-a8*0.05*Pmehgs$dss8/10^9
reservoir_mehg_ds9<-a9*0.05*Pmehgs$dss9/10^9
reservoir_mehg_ds10<-a10*0.05*Pmehgs$dss10/10^9


reservoir_mehg_os1<-a1*0.1*Pmehgs$osn1/10^9    #ug m-3 * m3/10^9 = kg
reservoir_mehg_os2<-a2*0.1*Pmehgs$osn2/10^9
reservoir_mehg_os3<-a3*0.1*Pmehgs$osn3/10^9
reservoir_mehg_os4<-a4*0.1*Pmehgs$osn4/10^9
reservoir_mehg_os5<-a5*0.1*Pmehgs$osn5/10^9
reservoir_mehg_os6<-a6*0.1*Pmehgs$osc6/10^9
reservoir_mehg_os7<-a7*0.1*Pmehgs$osc7/10^9
reservoir_mehg_os8<-a8*0.1*Pmehgs$oss8/10^9
reservoir_mehg_os9<-a9*0.1*Pmehgs$oss9/10^9
reservoir_mehg_os10<-a10*0.1*Pmehgs$oss10/10^9


reservoir_mehg_vos1<-a1*0.1*Pmehgs$vosn1/10^9    #ug m-3 * m3/10^9 = kg
reservoir_mehg_vos2<-a2*0.1*Pmehgs$vosn2/10^9
reservoir_mehg_vos3<-a3*0.1*Pmehgs$vosn3/10^9
reservoir_mehg_vos4<-a4*0.1*Pmehgs$vosn4/10^9
reservoir_mehg_vos5<-a5*0.1*Pmehgs$vosn5/10^9
reservoir_mehg_vos6<-a6*0.1*Pmehgs$vosc6/10^9
reservoir_mehg_vos7<-a7*0.1*Pmehgs$vosc7/10^9
reservoir_mehg_vos8<-a8*0.1*Pmehgs$voss8/10^9
reservoir_mehg_vos9<-a9*0.1*Pmehgs$voss9/10^9
reservoir_mehg_vos10<-a10*0.1*Pmehgs$voss10/10^9


total_reservoir_W<-c(reservoir_hg_w1+reservoir_hg_w2+reservoir_hg_w3+reservoir_hg_w4+
                     reservoir_hg_w5+reservoir_hg_w6+reservoir_hg_w7+reservoir_hg_w8+reservoir_hg_w9+reservoir_hg_w10)
 

total_reservoir_W_mehg<-c(reservoir_mehg_w1+reservoir_mehg_w2+reservoir_mehg_w3+reservoir_mehg_w4+
                       reservoir_mehg_w5+reservoir_mehg_w6+reservoir_mehg_w7+reservoir_mehg_w8+reservoir_mehg_w9+reservoir_mehg_w10)


rdate[121]

total_reservoir_W[122]-total_reservoir_W[121]    # differenza 2020 - 2019 in kg
total_reservoir_W_mehg[122]-total_reservoir_W_mehg[121]

reservoir_mehg_w1[122]-reservoir_mehg_w1[121]
reservoir_mehg_w2[122]-reservoir_mehg_w2[121]
reservoir_mehg_w3[122]-reservoir_mehg_w3[121]
reservoir_mehg_w4[122]-reservoir_mehg_w4[121]
reservoir_mehg_w5[122]-reservoir_mehg_w5[121]
reservoir_mehg_w6[122]-reservoir_mehg_w6[121]
reservoir_mehg_w7[122]-reservoir_mehg_w7[121]
reservoir_mehg_w8[122]-reservoir_mehg_w8[121]
reservoir_mehg_w9[122]-reservoir_mehg_w9[121]
reservoir_mehg_w10[122]-reservoir_mehg_w10[121]


reservoir_hg_w1[122]-reservoir_hg_w1[121]
reservoir_hg_w2[122]-reservoir_hg_w2[121]
reservoir_hg_w3[122]-reservoir_hg_w3[121]
reservoir_hg_w4[122]-reservoir_hg_w4[121]
reservoir_hg_w5[122]-reservoir_hg_w5[121]
reservoir_hg_w6[122]-reservoir_hg_w6[121]
reservoir_hg_w7[122]-reservoir_hg_w7[121]
reservoir_hg_w8[122]-reservoir_hg_w8[121]
reservoir_hg_w9[122]-reservoir_hg_w9[121]
reservoir_hg_w10[122]-reservoir_hg_w10[121]



total_reservoir_Sed<-c(reservoir_hg_s1+reservoir_hg_s2+reservoir_hg_s3+reservoir_hg_s4+
                       reservoir_hg_s5+reservoir_hg_s6+reservoir_hg_s7+reservoir_hg_s8+reservoir_hg_s9+reservoir_hg_s10)

total_reservoir_dsed<-c(reservoir_hg_ds1+reservoir_hg_ds2+reservoir_hg_ds3+reservoir_hg_ds4+reservoir_hg_ds5+
                        reservoir_hg_ds6+reservoir_hg_ds7+reservoir_hg_ds8+reservoir_hg_ds9+reservoir_hg_ds10)

total_reservoir_osed<-c(reservoir_hg_os1+reservoir_hg_os2+reservoir_hg_os3+reservoir_hg_os4+reservoir_hg_os5+
                        reservoir_hg_os6+reservoir_hg_os7+reservoir_hg_os8+reservoir_hg_os9+reservoir_hg_os10)
 
total_reservoir_vosed<-c(reservoir_hg_vos1+reservoir_hg_vos2+reservoir_hg_vos3+reservoir_hg_vos4+reservoir_hg_vos5+
                        reservoir_hg_vos6+reservoir_hg_vos7+reservoir_hg_vos8+reservoir_hg_vos9+reservoir_hg_vos10)


TOT_SED<-total_reservoir_Sed+total_reservoir_dsed+total_reservoir_osed+total_reservoir_vosed

total_reservoir_W<-c(NA,total_reservoir_W)
RESERV<-data.frame(rdate,TOT_SED,total_reservoir_Sed,total_reservoir_W)

total_reservoir_W_mehg<-c(reservoir_mehg_w1+reservoir_mehg_w2+reservoir_mehg_w3+reservoir_mehg_w4+
                            reservoir_mehg_w5+reservoir_mehg_w6+reservoir_mehg_w7+reservoir_mehg_w8+reservoir_mehg_w9+reservoir_mehg_w10)

total_reservoir_Sed_mehg<-c(reservoir_mehg_s1+reservoir_mehg_s2+reservoir_mehg_s3+reservoir_mehg_s4+
                              reservoir_mehg_s5+reservoir_mehg_s6+reservoir_mehg_s7+reservoir_mehg_s8+reservoir_mehg_s9+reservoir_mehg_s10)

total_reservoir_dsed_mehg<-c(reservoir_mehg_ds1+reservoir_mehg_ds2+reservoir_mehg_ds3+reservoir_mehg_ds4+reservoir_mehg_ds5+
                               reservoir_mehg_ds6+reservoir_mehg_ds7+reservoir_mehg_ds8+reservoir_mehg_ds9+reservoir_mehg_ds10)

total_reservoir_osed_mehg<-c(reservoir_mehg_os1+reservoir_mehg_os2+reservoir_mehg_os3+reservoir_mehg_os4+reservoir_mehg_os5+
                               reservoir_mehg_os6+reservoir_mehg_os7+reservoir_mehg_os8+reservoir_mehg_os9+reservoir_mehg_os10)

total_reservoir_vosed_mehg<-c(reservoir_mehg_vos1+reservoir_mehg_vos2+reservoir_mehg_vos3+reservoir_mehg_vos4+reservoir_mehg_vos5+
                                reservoir_mehg_vos6+reservoir_mehg_vos7+reservoir_mehg_vos8+reservoir_mehg_vos9+reservoir_mehg_vos10)


TOT_SED_mehg<-total_reservoir_Sed_mehg+total_reservoir_dsed_mehg+total_reservoir_osed_mehg+total_reservoir_vosed_mehg

total_reservoir_W_mehg<-c(NA,total_reservoir_W_mehg)
RESERV_mehg<-data.frame(rdate,TOT_SED_mehg,total_reservoir_Sed_mehg,total_reservoir_W_mehg)


RESERV[120,]
RESERV_mehg[120,]

  
total_reservoir_Sed_media<-tapply(total_reservoir_Sed[1:2412], 
                            rep(1:(length(total_reservoir_Sed[1:2412])/12),each = 12),mean)


total_reservoir_W_media<-tapply(total_reservoir_W[1:2412], 
                                  rep(1:(length(total_reservoir_W[1:2412])/12),each = 12),mean)


write.table(total_reservoir_W, file='total_reservoir_W.txt')
write.table(total_reservoir_Sed, file='total_reservoir_Sed.txt')


#total_reservoir_Sed_media[2]-total_reservoir_Sed_media[1]+


ax<-seq(1900,2100)
plot(ax,dep_net,type='l', col='orange',lwd=2)
abline(h=0)
abline(v=1970)

plot(total_reservoir_Sed,type='l', col='brown',lwd=2, yaxt='n')
par(new=T)
plot(total_reservoir_W,type='l', col='blue')
abline(v=rdate[1020])

head(total_reservoir_Sed)
str(total_reservoir_Sed)
