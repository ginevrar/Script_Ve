setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\')     #sim_cl
IN<-read.table('tot_input_short.txt')
tot_in<-IN$tt
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\REference_OK\\year')     #sim_cl

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10',
             'vosn1','vosn2','vosn3','vosn4','vosn5','vosc6','vosc7','voss8','voss9','voss10')

hg0<-read.csv('Elemental_Hg.csv', skip=1)
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
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

reservoir_hg0_w1<-a1*d1*hg0$wn1/10^9  # .hg (ug m-3) * (m3) /10^9 = kg
reservoir_hg0_w2<-a2*d2*hg0$wn2/10^9
reservoir_hg0_w3<-a3*d3*hg0$wn3/10^9
reservoir_hg0_w4<-a4*d4*hg0$wn4/10^9
reservoir_hg0_w5<-a5*d5*hg0$wn5/10^9
reservoir_hg0_w6<-a6*d6*hg0$wc6/10^9
reservoir_hg0_w7<-a7*d7*hg0$wc7/10^9
reservoir_hg0_w8<-a8*d8*hg0$ws8/10^9
reservoir_hg0_w9<-a9*d9*hg0$ws9/10^9
reservoir_hg0_w10<-a10*d10*hg0$ws10/10^9

total_reservoir_W<-(reservoir_hg_w1+reservoir_hg_w2+reservoir_hg_w3+reservoir_hg_w4+
                     reservoir_hg_w5+reservoir_hg_w6+reservoir_hg_w7+reservoir_hg_w8+reservoir_hg_w9+reservoir_hg_w10)
 

total_reservoir_W_mehg<-(reservoir_mehg_w1+reservoir_mehg_w2+reservoir_mehg_w3+reservoir_mehg_w4+
                       reservoir_mehg_w5+reservoir_mehg_w6+reservoir_mehg_w7+reservoir_mehg_w8+reservoir_mehg_w9+reservoir_mehg_w10)



total_reservoir_W_hg0<-(reservoir_hg0_w1+reservoir_hg0_w2+reservoir_hg0_w3+reservoir_hg0_w4+
                           reservoir_hg0_w5+reservoir_hg0_w6+reservoir_hg0_w7+reservoir_hg0_w8+reservoir_hg0_w9+reservoir_hg0_w10)



write.table(total_reservoir_W, file='total_reservoir_W.txt')
write.table(total_reservoir_W_mehg, file='total_reservoir_W_mehg.txt')
write.table(total_reservoir_W_hg0, file='total_reservoir_W_hg0.txt')
write.table(total_reservoir_Sed, file='total_reservoir_Sed.txt')


total_reservoir_Sed[121]

all_reservoir_W<-cbind(reservoir_hg_w1,reservoir_hg_w2,reservoir_hg_w3,reservoir_hg_w4,
                       reservoir_hg_w5,reservoir_hg_w6,reservoir_hg_w7,reservoir_hg_w8,reservoir_hg_w9,reservoir_hg_w10)

all_reservoir_W_hg0<-cbind(reservoir_hg0_w1,reservoir_hg0_w2,reservoir_hg0_w3,reservoir_hg0_w4,
                       reservoir_hg0_w5,reservoir_hg0_w6,reservoir_hg0_w7,reservoir_hg0_w8,reservoir_hg0_w9,reservoir_hg0_w10)

all_reservoir_W_mehg<-cbind(reservoir_mehg_w1,reservoir_mehg_w2,reservoir_mehg_w3,reservoir_mehg_w4,
                            reservoir_mehg_w5,reservoir_mehg_w6,reservoir_mehg_w7,reservoir_mehg_w8,reservoir_mehg_w9,reservoir_mehg_w10)

write.table(all_reservoir_W,'all_reservoir_W.txt')
write.table(all_reservoir_W_mehg,'all_reservoir_W_mehg.txt')
write.table(all_reservoir_W_hg0,'all_reservoir_W_hg0.txt')

rdate[121]

total_reservoir_W[122,]-total_reservoir_W[121,]    # differenza 2020 - 2019 in kg
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

total_reservoir_Sed[121]
total_reservoir_vosed[121]
rdate[121]

total_reservoir_Sed<-c(reservoir_hg_s1+reservoir_hg_s2+reservoir_hg_s3+reservoir_hg_s4+
                       reservoir_hg_s5+reservoir_hg_s6+reservoir_hg_s7+reservoir_hg_s8+reservoir_hg_s9+reservoir_hg_s10)

total_reservoir_dsed<-c(reservoir_hg_ds1+reservoir_hg_ds2+reservoir_hg_ds3+reservoir_hg_ds4+reservoir_hg_ds5+
                        reservoir_hg_ds6+reservoir_hg_ds7+reservoir_hg_ds8+reservoir_hg_ds9+reservoir_hg_ds10)

total_reservoir_osed<-c(reservoir_hg_os1+reservoir_hg_os2+reservoir_hg_os3+reservoir_hg_os4+reservoir_hg_os5+
                        reservoir_hg_os6+reservoir_hg_os7+reservoir_hg_os8+reservoir_hg_os9+reservoir_hg_os10)
 
total_reservoir_vosed<-c(reservoir_hg_vos1+reservoir_hg_vos2+reservoir_hg_vos3+reservoir_hg_vos4+reservoir_hg_vos5+
                        reservoir_hg_vos6+reservoir_hg_vos7+reservoir_hg_vos8+reservoir_hg_vos9+reservoir_hg_vos10)

TOT_SED<-total_reservoir_Sed+total_reservoir_dsed+total_reservoir_osed+total_reservoir_vosed

tot_ddeeps<-TOT_SED-total_reservoir_Sed

years<-seq(1900,2100)
plot(years,TOT_SED[1:201]/10^3)

title(bquote(atop("first line", "second line" ~ x ^ 2)))

par(mfrow=c(3,2))
plot(years,total_reservoir_W[1:201], type='l',lwd=2, col='blue', ylab='kg',
     main=expression(paste('Hg'[T]~'water reservoir')))
plot(years,total_reservoir_W_mehg [1:201], type='l',lwd=2, ylab='kg',col='blue',main=expression(paste('MeHg'[T]~'water reservoir')))
plot(years,total_reservoir_Sed[1:201], type='l',lwd=2, ylab='kg', col='darkgoldenrod')
title(bquote(atop("Hg"[T]~"surface sediment reservoir", "(0 - 5 cm)")))

plot(years,total_reservoir_Sed_mehg[1:201], type='l',lwd=2,  ylab='kg',col='darkgoldenrod')
title(bquote(atop("MeHg"[T]~"surface sediment reservoir", "(0 - 5 cm)")))

plot(years,tot_ddeeps[1:201], type='l',lwd=2, ylab='kg',col='brown')
title(bquote(atop("Hg"[T]~"deep sediment reservoir", "(5 - 30 cm)")))

plot(years,tot_ddeeps_mehg[1:201], type='l',lwd=2,ylab='kg', col='brown') #,main=expression(paste('MeHg'[T]~'water reservoir')))
title(bquote(atop("MeHg"[T]~"deep sediment reservoir", "(5 - 30 cm)")))



H_resus<-c(rdate[81], rdate[104],  rdate[104],rdate[81])
Eutrop<-c(rdate[81], rdate[92],  rdate[92],rdate[81])

yy1<-c(0,0,22000,22000)

ff<-data.frame(rdate[1:201],total_reservoir_W[1:201])
ff2<-data.frame(rdate[1:201],total_reservoir_Sed[1:201])

max(ff2[2,])
str(ff2)

ff2$total_reservoir_Sed.1.201.==21967.76
export<-(dfff2$hg_outflow_kg_y_media+dfff2$Disper_tot_kgy_media)
export_mhg<-(dfff2$hg_outflow_kg_y_media_mhg+dfff2$Disper_tot_kgy_media_mhg)

dfff2
plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, col='blue', ylab='kg',ylim=c(0,50),xlab=' ',yaxt='n',
     main=expression(paste('Hg'[T]~'water reservoir')))
ax<-seq(0,50,by=10)
axis(side=2,at=ax, las=2)
par(new=T)
plot(-export+WWW2,type='l',lwd=2, col='blue', ylab='',ylim=c(0,450),xlab=' ',yaxt='n')
par(new=T)

yy1<-c(0,0,1600,1600)

out<--export[1:201]+WWW2[1:201]

png('Reservoirs_tutto2.png',
    width = 21, height = 13,res=300,units = "cm")     # width = 32, height = 18,res=400,
 
par(mfrow=c(2,3),mar=c(3,4,2.5,1.5), cex=0.7,
    oma=c(0,1,3,1), bty='n', mgp=c(2.3,.8,0))

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in[1:201], type='l',lwd=3, col='dimgrey', 
     ylab=expression(paste('kg y'^-1)),ylim=c(0,1600),xlab=' ',yaxt='n',
     main=expression(paste(' ')))
abline(v=rdate[72])
par(new=T)
plot(rdate[1:201],-export[1:201]+WWW2[1:201], type='l',lwd=3, col='slateblue1', 
     ylab=' ',ylim=c(0,1600),xlab=' ',yaxt='n',
     main=expression(paste('Hg'[T]~'inputs and outputs')))
legend(rdate[120], 1600, col=c('dimgrey','slateblue1' ),legend=c('Inputs','Outputs'), bty='n',pch=19)
ax<-seq(0,1500,by=500)
axis(side=2,at=ax, las=2)

plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, col='blue', ylab='kg',ylim=c(0,50),xlab=' ',yaxt='n',
     main=expression(paste('Hg'[T]~'water reservoir')))
ax<-seq(0,50,by=10)
axis(side=2,at=ax, las=2)
#abline(v=rdate[72])
#abline(v=rdate[81])

#abline(v=rdate[73])
yy1<-c(0,0,22000,22000)
plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,22000), yaxt='n',
     ylab=' ',xlab=' ', col='darkgoldenrod')
title(bquote(atop("Hg"[T]~"sediment reservoir")))
#abline(v=rdate[83],col=2)

#title(bquote(atop("Hg"[T]~"sediment", "reservoir (0 - 5 cm)")))
ax<-seq(0,22000,by=4000)
axis(side=2,at=ax, las=2)
par(new=T)
plot(rdate[1:201],tot_ddeeps[1:201], type='l',lwd=2, ylab=' ',xlab=' ', ylim=c(0,22000),yaxt='n',col='brown')
text(rdate[40],19000,'surface \n sediment \n (0 - 5 cm)', col='darkgoldenrod', cex=0.8) 
text(rdate[150],17000,'subsurface \n sediment \n (6 - 30 cm)', col='brown', cex=0.8) 

ax<-seq(0,22000,by=4000)
axis(side=2,at=ax, las=2)

tot_in_mhg<-IN$riv_mehg.riv_mehg+(IN$ind3*1/100)

(export[72]-export[121])/export[121]*100

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in_mhg[1:201], type='l',lwd=3, col='dimgrey',
     ylab=expression(paste('kg y'^-1)),ylim=c(0,20),xlab=' ',yaxt='n',
     main=expression(paste('MeHg'[T]~'inputs and outputs')))
par(new=T)
plot(rdate[1:201],-export_mhg[1:201], type='l',lwd=3, col='slateblue1', 
     ylab=' ',ylim=c(0,20),xlab=' ',yaxt='n',
     main=expression(paste(' ')))
#legend(rdate[130], 14, col=c('dimgrey','slateblue1' ),legend=c('Inputs','Outputs'))
legend(rdate[120], 20, col=c('dimgrey','slateblue1' ),legend=c('Inputs','Outputs'), bty='n',pch=19)
ax<-seq(0,20,by=5)
axis(side=2,at=ax, las=2)


plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],total_reservoir_W_mehg [1:201],ylim=c(0,0.4), type='l',yaxt='n',
     lwd=2, ylab='kg',xlab=' ',col='blue',main=expression(paste('MeHg'[T]~'water reservoir')))
ax<-seq(0,.40,by=.2)
axis(side=2,at=ax, las=2)

yy2<-c(0,0,22000,22000)
#plot(rdate[1:201],export_mhg[1:201]/export_mhg[121])
#abline(v=rdate[70])
plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy2, col='#68676733',border = NA)
polygon(Eutrop,yy2, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],total_reservoir_Sed_mehg[1:201], type='l',lwd=2, ylim=c(0,30),xlab=' ',yaxt='n',
     ylab='kg', col='darkgoldenrod')
text(rdate[40],24,'surface \n sediment \n (0 - 5 cm)', col='darkgoldenrod', cex=0.8) 
text(rdate[145],18,'subsurface \n sediment \n (6 - 30 cm)', col='brown', cex=0.8) 
title(bquote(atop("MeHg"[T]~"sediment reservoir")))
ax<-seq(0,30,by=10)
axis(side=2,at=ax, las=2)
par(new=T)
plot(years,tot_ddeeps_mehg[1:201], type='l',lwd=2,ylab='kg',ylim=c(0,30),yaxt='n',xaxt='n',
     xlab=' ', col='brown') #,main=expression(paste('MeHg'[T]~'water reservoir')))
dev.off()



rdate[92]
rdate[104]
(total_reservoir_Sed_mehg[92]-total_reservoir_Sed_mehg[104])/total_reservoir_Sed_mehg[92]
(total_reservoir_Sed[92]-total_reservoir_Sed[104])/total_reservoir_Sed[92]

(total_reservoir_Sed_mehg[92]-total_reservoir_Sed_mehg[104])
(total_reservoir_Sed[92]-total_reservoir_Sed[104])

yy1<-c(0,0,10,10)
plot(rdate[1:201],total_reservoir_dsed_mehg[1:201], type='l')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],total_reservoir_osed_mehg[1:201], col='brown', type='l')
par(new=T)
plot(rdate[1:201],total_reservoir_vosed_mehg[1:201], col='blue', type='l')


plot(rdate,(hg_outflow_kg_y_mhg+ Disper_tot_kgy_mhg))
polygon(H_resus,yy, col='#68676733',border = NA)
polygon(Eutrop,yy, col='#3a871f66',border = NA)

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


total_reservoir_W[121]
total_reservoir_vosed_mehg[121]

total_reservoir_vosed_mehg<-c(reservoir_mehg_vos1+reservoir_mehg_vos2+reservoir_mehg_vos3+reservoir_mehg_vos4+reservoir_mehg_vos5+
                                reservoir_mehg_vos6+reservoir_mehg_vos7+reservoir_mehg_vos8+reservoir_mehg_vos9+reservoir_mehg_vos10)

tot_ddeeps_mehg<-total_reservoir_dsed_mehg+total_reservoir_osed_mehg+total_reservoir_vosed_mehg

TOT_SED_mehg<-total_reservoir_Sed_mehg+total_reservoir_dsed_mehg+total_reservoir_osed_mehg+total_reservoir_vosed_mehg

total_reservoir_W_mehg<-c(NA,total_reservoir_W_mehg)
RESERV_mehg<-data.frame(rdate,TOT_SED_mehg,total_reservoir_Sed_mehg,total_reservoir_W_mehg)

total_reservoir_dsed_mehg[121]
RESERV[121,]/1000
RESERV_mehg[121,]

colMeans(RESERV[1431:1442,])
colMeans(RESERV_mehg[1431:1442,])

  rdate[120]

total_reservoir_Sed_media<-tapply(total_reservoir_Sed[1:2412], 
                            rep(1:(length(total_reservoir_Sed[1:2412])/12),each = 12),mean)

total_reservoir_W_media<-tapply(total_reservoir_W[1:2412], 
                                  rep(1:(length(total_reservoir_W[1:2412])/12),each = 12),mean)




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


yy1<-c(0,0,1600,1600)
tot_out<-(-export[1:201]+WWW2[1:201])
png('TOt_inANDOUT_piuSED.png',
    width = 13, height = 13,res=300,units = "cm")     # width = 32, height = 18,res=400,
par(mfrow=c(1,1),mar=c(3,4,0.5,1.5), cex=0.7,
    oma=c(0,2.5,0.1,2.5), bty='n', mgp=c(2.3,.8,0))

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in[1:201], type='l',lwd=2, col='#663756', xaxt='n',
     ylab=expression(paste('kg y'^-1)),ylim=c(0,1600),xlab=' ',yaxt='n',
     main=expression(paste(' ')), cex.lab=1.52)
text(rdate[35],1200,'Inputs', col='#663756', cex=2)

ax<-seq(0,1500,by=500)
axis(side=2,at=ax, las=2, col='#663756',cex.axis=2)
par(new=T)
plot(rdate[1:201],-export[1:201]+WWW2[1:201], type='l',lwd=2, col='#DD65B0', 
     ylab=' ',ylim=c(0,500),xlab=' ',yaxt='n',cex.axis=2)
legend(rdate[120], 1600, col=c('dimgrey','slateblue1' ),legend=c('Inputs','Outputs'), bty='n',pch=19)
text(rdate[130],375,'Outputs', col='#DD65B0', cex=2)
ax<-seq(0,500,by=100)
axis(side=4,at=ax, las=2,  col='#DD65B0', cex.axis=2)
par(new=T)
plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2,lty=2, 
     col='#696969', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
text(rdate[160],14000,'Sediment \n Reservoir', col='#696969', cex=1.62)
dev.off()


getwd()


tot_out<-(-export[1:201]+WWW2[1:201])
png('TOt_inANDOUT_piuWater.png',
    width = 21, height = 13,res=300,units = "cm")     # width = 32, height = 18,res=400,
par(mfrow=c(1,1),mar=c(3,4,2.5,1.5), cex=0.7,
    oma=c(0,2.5,3,2.5), bty='n', mgp=c(2.3,.8,0))

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in[1:201], type='l',lwd=2, col='#663756', cex.axis=2,
     ylab=expression(paste('kg y'^-1)),ylim=c(0,1600),xlab=' ',yaxt='n',
     main=expression(paste(' ')), cex.lab=1.52)
text(rdate[35],1200,'Inputs', col='#663756', cex=2)

ax<-seq(0,1500,by=500)
axis(side=2,at=ax, las=2, col='#663756',cex.axis=2)
par(new=T)
plot(rdate[1:201],-export[1:201]+WWW2[1:201], type='l',lwd=2, col='#DD65B0', 
     ylab=' ',ylim=c(0,500),xlab=' ',yaxt='n',xaxt='n')
 
text(rdate[120],375,'Outputs', col='#DD65B0', cex=2)
ax<-seq(0,500,by=100)
axis(side=4,at=ax, las=2,  col='#DD65B0', cex.axis=2)
par(new=T)
plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2,lty=2, 
     col='#696969', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
text(rdate[140],20,'Water Reservoir', col='#696969', cex=1.62)

dev.off()

png('TOt_inANDOUT_piuWater2.png',
    width = 13, height = 13,res=300,units = "cm")     # width = 32, height = 18,res=400,
par(mfrow=c(1,1),mar=c(3,4,0.5,1.5), cex=0.7,
    oma=c(0,2.5,0.1,2.5), bty='n', mgp=c(2.3,.8,0))

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in[1:201], type='l',lwd=2, col='#663756', cex.axis=2,
     ylab='',ylim=c(0,1600),xlab=' ',yaxt='n',
     main=expression(paste(' ')), cex.lab=1.52)
text(rdate[35],1200,'Inputs', col='#663756', cex=2)

ax<-seq(0,1600,by=400)
axis(side=2,at=ax, las=2, col='#663756',cex.axis=2)
par(new=T)
plot(rdate[1:201],-export[1:201]+WWW2[1:201], type='l',lwd=2, col='#DD65B0', 
     ylab=' ',ylim=c(0,500),xlab=' ',yaxt='n',xaxt='n')

text(rdate[130],375,'Outputs', col='#DD65B0', cex=2)
ax<-seq(0,500,by=100)
axis(side=4,at=ax, las=2,  col='#DD65B0', cex.axis=2)
par(new=T)
plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2,lty=2, 
     col='#696969', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
text(rdate[150],20,'Water Reservoir', col='#696969', cex=1.62)

dev.off()







plot(rdate[1:201],total_reservoir_W[1:201], type='l',lwd=2, col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],total_reservoir_W_mehg [1:201],ylim=c(0,0.4), type='l',yaxt='n',
     lwd=2, ylab='kg',xlab=' ',col='blue',main=expression(paste('MeHg'[T]~'water reservoir')))
ax<-seq(0,.40,by=.2)
axis(side=2,at=ax, las=2)


png('SedRes_IN_OUT__mahg.png',
    width = 13, height = 13,res=300,units = "cm")     # width = 32, height = 18,res=400,
par(mfrow=c(1,1),mar=c(3,4,0.5,1.5), cex=0.7,
    oma=c(0,2.5,0.1,2.5), bty='n', mgp=c(2.3,.8,0))

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in_mhg[1:201], type='l',lwd=2, col='#663756', cex.axis=2,
     ylab='',ylim=c(0,20),xlab=' ',yaxt='n',
     main=expression(paste(' ')), cex.lab=1.52)
text(rdate[35],16,'Inputs', col='#663756', cex=2)

ax<-seq(0,20,by=5)
axis(side=2,at=ax, las=2, col='#663756',cex.axis=2)
par(new=T)
plot(rdate[1:201],-export_mhg[1:201], type='l',lwd=2, col='#DD65B0', 
     ylab=' ',ylim=c(0,3),xlab=' ',yaxt='n',xaxt='n')

text(rdate[130],2.4,'Outputs', col='#DD65B0', cex=2)
ax<-seq(0,3,by=.5)
axis(side=4,at=ax, las=2,  col='#DD65B0', cex.axis=2)
par(new=T)
plot(rdate[1:201],total_reservoir_Sed_mehg[1:201], type='l',lwd=2,lty=2, 
     col='#696969', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
text(rdate[150],14,'Sediment \n Reservoir', col='#696969', cex=1.62)

dev.off()


png('WaterRes_IN_OUT__mahg.png',
    width = 13, height = 13,res=300,units = "cm")     # width = 32, height = 18,res=400,
par(mfrow=c(1,1),mar=c(3,4,0.5,1.5), cex=0.7,
    oma=c(0,2.5,0.1,2.5), bty='n', mgp=c(2.3,.8,0))

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in_mhg[1:201], type='l',lwd=2, col='#663756', cex.axis=2,
     ylab='',ylim=c(0,20),xlab=' ',yaxt='n',
     main=expression(paste(' ')), cex.lab=1.52)
text(rdate[35],16,'Inputs', col='#663756', cex=2)

ax<-seq(0,20,by=5)
axis(side=2,at=ax, las=2, col='#663756',cex.axis=2)
par(new=T)
plot(rdate[1:201],-export_mhg[1:201], type='l',lwd=2, col='#DD65B0', 
     ylab=' ',ylim=c(0,3),xlab=' ',yaxt='n',xaxt='n')

text(rdate[130],2.4,'Outputs', col='#DD65B0', cex=2)
ax<-seq(0,3,by=.5)
axis(side=4,at=ax, las=2,  col='#DD65B0', cex.axis=2)
par(new=T)
plot(rdate[1:201],total_reservoir_W_mehg[1:201], type='l',lwd=2,lty=2, 
     col='#696969', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
text(rdate[150],.20,'Water Reservoir', col='#696969', cex=1.62)

dev.off()


png('SoloIN_mahg.png',
    width = 13, height = 13,res=300,units = "cm")     # width = 32, height = 18,res=400,
par(mfrow=c(1,1),mar=c(3,4,0.5,1.5), cex=0.7,
    oma=c(0,2.5,0.1,2.5), bty='n', mgp=c(2.3,.8,0))

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in_mhg[1:201], type='l',lwd=2, col='#663756', cex.axis=2,
     ylab='',ylim=c(0,20),xlab=' ',yaxt='n',
     main=expression(paste(' ')), cex.lab=1.52)
text(rdate[35],16,'Inputs', col='#663756', cex=2)

ax<-seq(0,20,by=5)
axis(side=2,at=ax, las=2, col='#663756',cex.axis=2)
dev.off()

png('SoloIN_OUT_mahg.png',
    width = 13, height = 13,res=300,units = "cm")     # width = 32, height = 18,res=400,
par(mfrow=c(1,1),mar=c(3,4,0.5,1.5), cex=0.7,
    oma=c(0,2.5,0.1,2.5), bty='n', mgp=c(2.3,.8,0))

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in_mhg[1:201], type='l',lwd=2, col='#663756', cex.axis=2,
     ylab='',ylim=c(0,20),xlab=' ',yaxt='n',
     main=expression(paste(' ')), cex.lab=1.52)
text(rdate[35],16,'Inputs', col='#663756', cex=2)

ax<-seq(0,20,by=5)
axis(side=2,at=ax, las=2, col='#663756',cex.axis=2)
par(new=T)
plot(rdate[1:201],-export_mhg[1:201], type='l',lwd=2, col='#DD65B0', 
     ylab=' ',ylim=c(0,3),xlab=' ',yaxt='n',xaxt='n')

text(rdate[130],2.4,'Outputs', col='#DD65B0', cex=2)
ax<-seq(0,3,by=.5)
axis(side=4,at=ax, las=2,  col='#DD65B0', cex.axis=2)
dev.off()


png('SoloIN.png',
    width = 13, height = 13,res=300,units = "cm")     # width = 32, height = 18,res=400,
par(mfrow=c(1,1),mar=c(3,4,0.5,1.5), cex=0.7,
    oma=c(0,2.5,0.1,2.5), bty='n', mgp=c(2.3,.8,0))

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in[1:201], type='l',lwd=2, col='#663756', cex.axis=2,
     ylab='',ylim=c(0,1600),xlab=' ',yaxt='n',
     main=expression(paste(' ')), cex.lab=1.52)
text(rdate[35],1200,'Inputs', col='#663756', cex=2)

ax<-seq(0,1600,by=400)
axis(side=2,at=ax, las=2, col='#663756',cex.axis=2)
dev.off()



png('SoloIN.png',
    width = 13, height = 13,res=300,units = "cm")     # width = 32, height = 18,res=400,
par(mfrow=c(1,1),mar=c(3,4,0.5,1.5), cex=0.7,
    oma=c(0,2.5,0.1,2.5), bty='n', mgp=c(2.3,.8,0))

plot(rdate[1:201],total_reservoir_Sed[1:201], type='l',lwd=2, ylim=c(0,1600),
     col='#68676700', ylab=' ',yaxt='n',xaxt='n',xlab=' ')
polygon(H_resus,yy1, col='#68676733',border = NA)
polygon(Eutrop,yy1, col='#3a871f66',border = NA)
par(new=T)
plot(rdate[1:201],tot_in[1:201], type='l',lwd=2, col='#663756', cex.axis=2,
     ylab='',ylim=c(0,1600),xlab=' ',yaxt='n',
     main=expression(paste(' ')), cex.lab=1.52)
text(rdate[35],1200,'Inputs', col='#663756', cex=2)

ax<-seq(0,1600,by=400)
axis(side=2,at=ax, las=2, col='#663756',cex.axis=2)
dev.off()
