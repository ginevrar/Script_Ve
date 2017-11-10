setwd('C:/Users/gi/Dropbox/2017_Venice/114/Buona/buona7s3')

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')

			 burial<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
 			 
silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')
  
POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		 
			 
POM_depos<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		
  
silt_depos<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(silt_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')	

POM_res<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')		
  
silt_res<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
  names(silt_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10')				 
	
#aree e profondita' boxes	
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07;a4<-8.90E+06; a5<-2.22E+07; 
a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07

area<-cbind(0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)

d1<-1.26; d2<-0.78; d3<-3.35; d4<-0.64; d5<-1.03; 
d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71		

POMres1_g_m2_d<-POM_res$sn1 * POMs$sn1      #m/day * g/m3 --> gm2d
POM_res1_kg_d <-(POMres1_g_m2_d*a1)/1000

siltres1_g_m2_d<-silt_res$sn1 * silts$sn1      #m/day * g/m3 --> gm2d
silt_res1_kg_d <-(siltres1_g_m2_d*a1)/1000

a<-(silt_depos$wn1 * silts$wn1) + (POM_depos$wn1 * POMs$wn1) 
b<-(silt_res$sn1 * silts$sn1) + (POM_res$sn1 * POMs$sn1)
Ws1<-(a-b)/(TOTs$sn1) #m/d
wsk<-(wws*TOTs$sn1)/(TOTs$dsn1) #m/y

cc<-(a*a1)-(b*a1) 
bb<-TOTs$sn1*a1*0.03
bb-cc

par(mfrow=c(1,1))

png('bur.png',res=300,
    width = 20, height = 14, units = "cm")
par(mfrow=c(3,3))
wws<-(Ws1*365)    # m/y
plot(wws,ylim=c(-0.05,0.15), type='l',col=1, lty=2)    # cm/y
par(new=T)
plot(burial$sn1, ylim=c(-0.05,0.15), type='l',col='gray50')
par(new=T)
plot(burial$dsn1, ylim=c(-0.05,0.05), type='l',col=3)
par(new=T)
plot(wsk*2, ylim=c(-0.05,0.05), type='l',col='darkgreen',lty=2)

#differenza calcoli - -modello dovuta a trasporto orizzontale
burial$sn1
### box2 
POMres2_g_m2_d<-POM_res$sn2 * POMs$sn2      #m/day * g/m3 --> gm2d
POM_res2_kg_d <-(POMres2_g_m2_d*a2)/1000

siltres2_g_m2_d<-silt_res$sn2 * silts$sn2      #m/day * g/m3 --> gm2d
silt_res2_kg_d <-(siltres2_g_m2_d*a2)/1000

a<-(silt_depos$wn2 * silts$wn2) + (POM_depos$wn2 * POMs$wn2) 
b<-(silt_res$sn2 * silts$sn2) + (POM_res$sn2 * POMs$sn2)
Ws2<-(a-b)/(TOTs$sn2) #m/d

x<-(a*a2)-(b*a2)
#plot(x, type='l',col=1)
#par(new=T)
#plot(TOTs$sn2, type='l',col=2)

wws2<-(Ws2*365)    # m/y
wsk2<-(wws2*TOTs$sn2)/(TOTs$dsn2) #m/y

plot(wws2,ylim=c(-0.1,0.1), type='l',lty=2,col=1)    # cm/y
par(new=T)
plot(burial$sn2, ylim=c(-0.1,0.1), type='l',col='gray50')
par(new=T)
plot(burial$dsn2, ylim=c(-0.1,0.1), type='l',col=3)
par(new=T)
plot(wsk2, ylim=c(-0.1,0.1), type='l',col='darkgreen', lty=2)

## box 3  
POMres3_g_m2_d<-POM_res$sn3 * POMs$sn3      #m/day * g/m3 --> gm2d
POM_res3_kg_d <-(POMres2_g_m2_d*a3)/1000

siltres3_g_m2_d<-silt_res$sn3 * silts$sn3      #m/day * g/m3 --> gm2d
silt_res3_kg_d <-(siltres2_g_m2_d*a3)/1000

a<-(silt_depos$wn3 * silts$wn3) + (POM_depos$wn3 * POMs$wn3) 
b<-(silt_res$sn3 * silts$sn3) + (POM_res$sn3 * POMs$sn3)
Ws3<-(a-b)/(TOTs$sn3) #m/d

wws3<-(Ws3*365)    # m/y
wsk3<-(wws3*TOTs$sn3)/(TOTs$dsn3) #m/y

plot(wws3*10,ylim=c(0,0.4), type='l',lty=2,col=1)    # cm/y
par(new=T)
plot(burial$sn3, ylim=c(0,.4), type='l',col='gray50')
par(new=T)
plot(burial$dsn3, ylim=c(0,.4), type='l',col=3)
par(new=T)
plot(wsk3*10, ylim=c(0,.4), type='l',col='darkgreen', lty=2)


## box 4  
POMres4_g_m2_d<-POM_res$sn4 * POMs$sn4      #m/day * g/m3 --> gm2d
POM_res4_kg_d <-(POMres2_g_m2_d*a4)/1000

siltres4_g_m2_d<-silt_res$sn4 * silts$sn4      #m/day * g/m3 --> gm2d
silt_res4_kg_d <-(siltres2_g_m2_d*a4)/1000

a<-(silt_depos$wn4 * silts$wn4) + (POM_depos$wn4 * POMs$wn4) 
b<-(silt_res$sn4 * silts$sn4) + (POM_res$sn4 * POMs$sn4)
Ws4<-(a-b)/(TOTs$sn4) #m/d


wws4<-(Ws4*365)    # m/y
wsk4<-(wws4*TOTs$sn4)/(TOTs$dsn4) #m/y

plot(wws4*5,ylim=c(0,0.2), type='l',lty=2,col=1)    # cm/y
par(new=T)
plot(burial$sn4, ylim=c(0,.2), type='l',col='gray50')
par(new=T)
plot(burial$dsn4, ylim=c(0,.2), type='l',col=3)
par(new=T)
plot(wsk4*5, ylim=c(0,.2), type='l',col='darkgreen', lty=2)



## box 5  
POMres5_g_m2_d<-POM_res$sn5 * POMs$sn5      #m/day * g/m3 --> gm2d
POM_res5_kg_d <-(POMres2_g_m2_d*a5)/1000

siltres5_g_m2_d<-silt_res$sn5 * silts$sn5      #m/day * g/m3 --> gm2d
silt_res5_kg_d <-(siltres2_g_m2_d*a5)/1000

a<-(silt_depos$wn5 * silts$wn5) + (POM_depos$wn5 * POMs$wn5) 
b<-(silt_res$sn5 * silts$sn5) + (POM_res$sn5 * POMs$sn5)
Ws5<-(a-b)/(TOTs$sn5) #m/d

wws5<-(Ws5*365)    # m/y
wsk5<-(wws5*TOTs$sn5)/(TOTs$dsn5) #m/y

plot(wws5*5,ylim=c(-0.1,0.5), type='l',lty=2,col=1)    # cm/y
par(new=T)
plot(burial$sn5, ylim=c(-0.1,.5), type='l',col='gray50')
par(new=T)
plot(burial$dsn5, ylim=c(-0.1,.5), type='l',col=3)
par(new=T)
plot(wsk5*5, ylim=c(-0.1,.5), type='l',col='darkgreen', lty=2)

## box 6  
POMres6_g_m2_d<-POM_res$sc6 * POMs$sc6      #m/day * g/m3 --> gm2d
POM_res6_kg_d <-(POMres2_g_m2_d*a6)/1000

siltres6_g_m2_d<-silt_res$sc6 * silts$sc6      #m/day * g/m3 --> gm2d
silt_res6_kg_d <-(siltres2_g_m2_d*a6)/1000

a<-(silt_depos$wc6 * silts$wc6) + (POM_depos$wc6 * POMs$wc6) 
b<-(silt_res$sc6 * (silts$sc6*10)) + (POM_res$sc6 * (POMs$sc6*10))
Ws6<-(a-b)/(TOTs$sc6) #m/d

#box 6 pom res 9.5*10-5
#      silt res 3*10-5
# in imple tutti e due 3-5

wws6<-(Ws6*365)    # m/y
wsk6<-(wws6*TOTs$sc6)/(TOTs$dsc6) #m/y

plot(wws6*5,ylim=c(-0.5,0.6), type='l',lty=2,col=1)    # cm/y
par(new=T)
plot(burial$sc6, ylim=c(-0.5,0.6), type='l',col='gray60')
par(new=T)
plot(burial$dsc6, ylim=c(-0.5,0.6), type='l',col=3)
par(new=T)
plot(wsk6*5, ylim=c(-0.5,0.6), type='l',col='darkgreen', lty=2)

## box 7  
POMres7_g_m2_d<-POM_res$sc7 * POMs$sc7      #m/day * g/m3 --> gm2d
POM_res7_kg_d <-(POMres2_g_m2_d*a7)/1000

siltres7_g_m2_d<-silt_res$sc7 * silts$sc7      #m/day * g/m3 --> gm2d
silt_res7_kg_d <-(siltres2_g_m2_d*a7)/1000


a<-(silt_depos$wc7 * silts$wc7) + (POM_depos$wc7 * POMs$wc7) 
b<-(silt_res$sc7 * silts$sc7) + (POM_res$sc7 * POMs$sc7)
Ws7<-(a-b)/(silts$sc7) #m/d

plot(a)
plot(b)

summary((a-b))
head(a)

tail(b)
tail(a)

#box 7 pom res 9.5*10-5
#      silt res 3*10-5
# in imple tutti e due 3-5
wws7<-(Ws7*365)    # m/y
wsk7<-(wws7*TOTs$sc7)/(TOTs$dsc7) #m/y

plot(wws7,ylim=c(-0.1,0.1), type='l',lty=2,col=1)    # cm/y
par(new=T)
plot(burial$sc7, ylim=c(-0.1,0.1), type='l',col='gray70')
abline(h=0)
par(new=T)
plot(burial$dsc7, ylim=c(-0.1,.1), type='l',col=3)
par(new=T)
plot(wsk7*5, ylim=c(-0.1,.1), type='l',col='darkgreen', lty=2)


dev.off()













































































###----
res1_kgd<-silt_res1_kg_d+POM_res1_kg_d

POMdep1_g_m2_d<-POM_depos$wn1 * POMs$wn1      #m/day * g/m3 (mgL) --> gm2d
POM_dep1_kg_d <-(POMdep1_g_m2_d*a1)/1000

siltdep1_g_m2_d<-silt_depos$wn1 * silts$wn1      #m/day * g/m3 --> gm2d
silt_dep1_kg_d <-(siltdep1_g_m2_d*a1)/1000

dep1_kgd<-POM_dep1_kg_d+silt_dep1_kg_d

b1_net=dep1_kgd-res1_kgd
b1_net2=burial$sn1

str(b1_net) # kg/d
summary(b1_net[10:2428]) # kg/d

head(res1_kgd)
head(POMdep1_g_m2_d)

bo1<-siltdep1_g_m2_d/(2.6*1000) #depo1 md
bo12<-bo1*365/100     #depo1 cm/y

ba1<-siltres1_g_m2_d/(2.6*1000) #depo1 md
ba12<-ba1*365/100

bal1<-bo12-ba12

par(mfrow=c(2,1))
plot(b1_net[10:2428], type='l', col='blue')
plot(b1_net2[10:2428], type='l', col='red')

plot(bo12, type='l', col='blue', ylim=c(0,0.1))
par(new=T)
plot(b1_net2, type='l', col='red', ylim=c(0,0.1))
par(new=T)
plot(bal1, type='l', col='orange', ylim=c(0,0.1))

plot(b1_net, type='l', col='red')

#kg di sedimento 

## sed dens ps =  2.6 g cm???3  2600 kg/m3
##

ps<-2.6 #g cm-3

POMs$sn1           # g/m3 * m2 --> gm2d
POM_res1_kg_d <-(POMres1_g_m2_d*a1)/1000



plot(burial$sc7, type='l', col='blue')

#   burial (cm y-1)*

