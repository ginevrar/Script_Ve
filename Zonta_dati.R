setwd('L:/Il mio Drive/MERCURIO/Venezia/')

dati<-read.csv('QSEV_data.csv', sep=';', header=T, dec='.',as.is=T)
dati$Fe<-as.numeric(dati$Fe);dati$Hg<-as.numeric(dati$Hg)
dati$layer<-as.factor(dati$layer);dati$OC<-as.numeric(dati$OC)
dati$Coarse_sand<-as.numeric(dati$Coarse_sand);dati$Medium_sand<-as.numeric(dati$Medium_sand)
dati$Fine_sand<-as.numeric(dati$Fine_sand);dati$Very_fine_sand<-as.numeric(dati$Very_fine_sand)
dati$Coarse_silt<-as.numeric(dati$Coarse_silt);dati$Medium_silt<-as.numeric(dati$Medium_silt)
dati$Fine_silt<-as.numeric(dati$Fine_silt);dati$Very_fine_silt<-as.numeric(dati$Very_fine_silt)
dati$Coarse_clay<-as.numeric(dati$Coarse_clay);dati$Fine_clay<-as.numeric(dati$Fine_clay)
str(dati)

y<-c(-2.5,-7.5,-15,-25,-40)
library(dplyr)

st1<-filter(dati,Site_num ==1)
st2<-filter(dati,Site_num ==2)
st3<-filter(dati,Site_num ==3)
st4<-filter(dati,Site_num ==4)


plot(st1$Hg,y, type='b', xlim=c(0,1.2), col=1)
par(new=T)
plot(st2$Hg,y, type='b', xlim=c(0,1.2), col=2)
par(new=T)
plot(st3$Hg,y, type='b', xlim=c(0,1.2), col=3)
par(new=T)
plot(st4$Hg,y, type='b', xlim=c(0,1.2), col=4)


