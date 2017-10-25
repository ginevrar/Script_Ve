setwd('C:/Users/Ginevra/Dropbox/2017_Venice/114/noRES')

hg0<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

evasion<-read.csv("Volatilization_Loss_Rate.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(evasion)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

plot(evasion$wn1)
plot(evasion$wc6)
#VOLATILIZZAZIONE
H<-7.1*10^-3     # Henry's Law constant  
R<-8.206*10^-5   # Universal Gas constant  8.206??0-5 atm/molar-K
Tk<-288.15       # 15^C
divisore<-H/(R*Tk)

kvol_1_day<-evasion[,2:11]  # kvol tutti i water box
hg0_w<-hg0[,2:11]  # kvol tutti i water box

pr<-kvol_1_day*hg0_w    #ug m3 d
str(hg0_w)
str(pr)

plot(hg0_w$wn1/200.59*1000)

hg0_g_m3<-hg0_w/10^6

atm_hg0<-4E-9

skvol<-kvol_1_day*(hg0_g_m3 - (atm_hg0/divisore))   #gm2d
tot_vol_m3<-6.33E+08
area<-4.12E+08
area_MGL<-1.6*10^8

#g/y
volat_g_y<-skvol*tot_vol_m3*365;
volat_g_y<-rowSums(volat_g_y)
plot(volat_g_y[3:2124]/1000)    # circa 20 kg/y = 100 mol/y
                                #MGL circa 14 mol/y
mean(volat_g_y[3:2124]/1000)

8.2/200.59*1000
40/area
14/area_MGL

volat1_mol_y<-volat_g_y/(200.59); plot(volat1_mol_y, type="l")

plot(head(hg0_g_m3,24), col="blue", lwd=2)
par(new=TRUE)
plot(head(skvol,24), type="l")
par(new=TRUE)
plot(head(kvol_1_day,24), type="l", col='red')

#VOLATILIZZAZIONE2

vvol_gm3_day<-kvol_1_day*hg0_g_m3
vvol_g_day<-vvol_gm3_day*tot_vol_m3
vvol_g_y<-rowSums(vvol_g_day*365)
vvol_kg_y<-vvol_g_y/1000
plot(vvol_kg_y)

#VOLATILIZZAZIONE3
vvol2_gm3_day<-kvol_1_day
vvol2_g_day<-vvol2_gm3_day*tot_vol_m3
vvol2_kg_y<-rowSums(vvol2_g_day*365)/1000

mean(volat_g_y[1000:2414]/1000); #kg y 
mean(vvol_kg_y[1000:2414]);  #kg y 
mean(vvol2_g_y[1000:2414]/1000) #kg y 

VV<-data.frame(volat_g_y/1000,vvol_kg_y,vvol2_kg_y)
names(VV)<-c('v1','v2','v3')
write.table(VV,'volat.txt')

head(VV$v1)
head(VV$v2)
head(VV$v3)

kvol1_1_day<-evasion$wn1  # kvol ogni sim
kvol2_1_day<-evasion$wn2  # kvol ogni sim
kvol3_1_day<-evasion$wn3  # kvol ogni sim
kvol4_1_day<-evasion$wn4  # kvol ogni sim
kvol5_1_day<-evasion$wn5  # kvol ogni sim
kvol6_1_day<-evasion$wc6  # kvol ogni sim
kvol7_1_day<-evasion$wc7  # kvol ogni sim
kvol8_1_day<-evasion$ws8  # kvol ogni sim
kvol9_1_day<-evasion$ws9  # kvol ogni sim
kvol10_1_day<-evasion$ws10  # kvol ogni sim

plot(kvol1_1_day, type='l', col=1, ylim=c(0,3))
par(new=T)
plot(kvol2_1_day, type='l', col=2, ylim=c(0,3))
par(new=T)
plot(kvol3_1_day, type='l', col=3, ylim=c(0,3))
plot(kvol10_1_day, type='l')

hg0_b1<-hg0$wn1    # hg0 ngL
hg0_b2<-hg0$wn2    # hg0 ngL
hg0_b3<-hg0$wn3    # hg0 ngL
hg0_b4<-hg0$wn4    # hg0 ngL
hg0_b5<-hg0$wn5    # hg0 ngL
hg0_b6<-hg0$wc6    # hg0 ngL
hg0_b7<-hg0$wc7    # hg0 ngL
hg0_b8<-hg0$ws8    # hg0 ngL
hg0_b9<-hg0$ws9    # hg0 ngL
hg0_b10<-hg0$ws10    # hg0 ngL
