setwd('C:/Users/gi/Dropbox/Cloro_Soda_Ve')
setwd('C:/Users/Acer/Desktop/Future_emissions')

 hgL<-read.csv('Hgind_load.csv')
str(hgL)
depoo<-read.csv('scenari_DEP_ok.csv', sep=';', header=T)

plot(hgL$year,hgL$Cl2, type='l')
abline(v=1970)
par(new=T)
plot(hgL$year,r, type='l')

setwd('C:\\Users\\gi\\Dropbox\\sim_NaOH')
 
hgL<-read.csv('Hgind_load.csv', sep=';', header=T)
str(hgL)

#setwd('C:\\Users\\gi\\Dropbox\\sim_cl')
setwd('C:\\Users\\Acer\\Desktop\\New_sim')     #sim_cl
 
years    <-seq(1900,2100)  # sequence of 200 elements (years)
area     <-4.12E+08   # surface area of the site (m2)  - to compute rates 
area_km2 <-4.12E+02   # surface area of the site (km2) - to compute rates 

years    <-seq(1900,2100)  # sequence of 200 elements (years)
area     <-4.12E+08   # surface area of the site (m2)  - to compute rates 
area_km2 <-4.12E+02   # surface area of the site (km2) - to compute rates 

#--------DEPOSIZIONE ATMOSFERICA ----------------------------
## Function that creates a vector of 47 elements decreasing by 1.5% at each step
## this is to simulate the decrease of atmospheric deposition observed in Europe from 1999 (Colette et al., 2016) 
## starting from the value measured in the study area in 1999 (11.7 kg y-1,Rossini et al., 2005) 
## and projecting the trend to the future (2100) up to a limit value of 5.9 (2045)

n=rep(NA, 46)   # preallocate
n[1]=11.7
for(i in 2: 46){
  n[i] = n[i-1]-((n[i-1]*1.5)/100)
}

years[138]
#------- Serie DEPOSIZIONE ATMOSFERICA ----------------------------
de<-rep(3,201)     #depoo$atm_dep_Cl[1:201] 
str(de)
dep<-data.frame(years[1:201],de)
names(dep)<-c('year','de')

de2<-rep(3,201)#depoo$dep_zeroEm[100:201]
de3<-rep(3,201)#depoo$Hg_control[100:201]
de4<-rep(3,201)#depoo$Hg_const[100:201]
de5<-rep(3,201)#depoo$A1B1[100:201]

de_s2<-c(de[1:99],de2)
de_s3<-c(de[1:99],de3)
de_s4<-c(de[1:99],de4)
de_s5<-c(de[1:99],de5)

dev.new()
plot(years,de, type='l', ylim=c(0,80))
par(new=T)
plot(years,de_s2, type='l', lty=2,col=3, ylim=c(0,80))

abline(v=1999)
abline(h=11.7)

dep_g_km2_y<-de/area_km2*1000
de2_g_km2_y<-de_s2/area_km2*1000
de3_g_km2_y<-de_s3/area_km2*1000
de4_g_km2_y<-de_s4/area_km2*1000
de5_g_km2_y<-de_s5/area_km2*1000

years[99]
years[120]

#------- Serie RIVER LOAD ----------------------------

##  Function that creates a vector of 100 elements decreasing by 1.5% at each step -
#   this is for river load, based on analogy with atm. depo
#   river load in Venice for 2001 is ~13 kg y-1 (Bloom et al., 2004)

m=rep(NA,45)   # preallocate
m[1]=13.2
for(i in 2:45){
  m[i] = m[i-1]-((m[i-1]*1.5)/100)
}

y<-seq(2001,2045,length.out = 45); data.frame(y,m)

# 6.7 kg y-1 for rivers is calculated form background concentrations and SPM load
ri<-c(rep(6.7,40), seq(7,30,length.out = 10), seq(31,140, length.out = 20),
      seq(150,120,-5),seq(120,40, length.out = 13), 
      seq(40,14, length.out = 12), m, rep(6.7,54))       ### più basso, max 140

riv_mehg<-ri*1.7/100
riv_mehg<-data.frame(years,riv_mehg)
riv<-data.frame(years,ri)

plot(riv$years, riv$ri, type = 'l')
abline(v=1970, col=2)

### più alto, max 200
#ri2<-c(rep(6.7,40), seq(7,30,length.out = 10), seq(31,200, length.out = 20), seq(200,160,length.out =5),
#      seq(150,50, length.out = 15), seq(46.0,24, length.out = 10), m) 

plot(years,ri, type='l', ylim=c(0,140))
par(new=T)
plot(riv_mehg, type='l', col=2, lty=2,ylim=c(0,140))

riv[71,]
riv[90,]
riv[101,]
riv[102,]

ef_1970 <-c(10,5,	14)
ef_1980 <-c(5,7,2)
ef_1990 <-c(2,2,3)
ef_2000 <-c(1,1,2)
ef_2008 <-c(1,1,1)

plot(years[70:90],ri[70:90])

riv[71,]
riv[81,]

###  ---- fraction river da Zuliani et al 2005 --------
f_box2<-0.458421978				
f_box5<-0.062621404			
f_box6<-0.220793636
f_box8<-0.170567015
f_box9<-0.087595967

riv$BOX2 = riv$ri*f_box2 #0.26
riv$BOX5 = riv$ri*f_box5 #0.15
riv$BOX6 = riv$ri*f_box6 #0.34
riv$BOX8 = riv$ri*f_box8 #0.14
riv$BOX9 = riv$ri*f_box9 #0.11


riv$BOX2[120]
riv$BOX5[120]
riv$BOX6[120]
riv$BOX8[120]
riv$BOX9[120]

plot(riv$BOX2)
plot(riv$BOX6)


ci<-c(rep(3,40),rep(5,10), rep(7,10),rep(10,30), rep(12,16),rep(5,15), rep(3,80)) 
cit<-data.frame(years[1:201],ci)
str(cit)

#ind<-c(rep(0,20), seq(21,60,length.out = 20), seq(60,200,length.out = 10),rep(600, 10), seq(500,300,length.out = 30),
#     seq(100,10,length.out =  16),seq(10,2,length.out =  15), rep(0,80))

ind<-hgL$Cl2
plot(ind)

ind2<-ind[1:201]
indus<-data.frame(years[1:201],ind2[1:201])
names(indus)<-c('year','ind2')
ind_mehg<-ind2*1/100

str(indus)
str(cit)
indus_mehg<-data.frame(years[1:201],ind_mehg)

ind3<-rep(1000,201)#ind2+ind_mehg

plot(years, ind2, type='l')
abline(h=36)


ind2[120]
cit[120,]

plot(years, ind_mehg, type='l')

tt<- de+ri+ci+ind3+riv_mehg$riv_mehg
t_cum<-cumsum(tt)/1000


tott<-data.frame(years,de,ri,riv_mehg$riv_mehg,ci,ind3, tt, t_cum)
str(tott)

write.table(tott, file='tot_input_short.txt')


tott[100,]
tott[106,]

plot(years[1:106],t_cum[1:106])
plot(years,ri, type='l') 
plot(years,ci, type='l') 
plot(years,ind[1:201], type='l') 
ind<-ind[1:201]
#::::::::::::: ripar
#::::::::::::: ripartizione input fra i box :::::::::::::::::::::::::::::::::::::

area <-4.119E+08
aree<-c(4.350E+07,3.530E+07,3.130E+07,	8.900E+06,	2.220E+07,
        5.430E+07,1.146E+08,3.170E+07,	2.950E+07,	4.060E+07)

dep<-data.frame(years[1:201],de)
cit<-data.frame(years[1:201],ci)

dep$BOX1 <-de*(aree[1]/area)
dep$BOX2 <-de*(aree[2]/area)
dep$BOX3 <-de*(aree[3]/area)
dep$BOX4 <-de*(aree[4]/area)
dep$BOX5 <-de*(aree[5]/area)
dep$BOX6 <-de*(aree[6]/area)
dep$BOX7 <-de*(aree[7]/area)
dep$BOX8 <-de*(aree[8]/area)
dep$BOX9 <-de*(aree[9]/area)
dep$BOX10 <-de*(aree[10]/area)

#aaaaa<-(dep$BOX1+dep$BOX2+dep$BOX3+dep$BOX4+dep$BOX5+dep$BOX6+dep$BOX7+dep$BOX8+dep$BOX9+dep$BOX10)

plot(dep$BOX1)

cit$BOX3<-cit$ci*0.33
cit$BOX5<-cit$ci*0.33
cit$BOX6<-cit$ci*0.33

## mancano years 1901; 1905(?)

mul_atm<-rep(1,12)

riv_mult<-rep(1,12)

cit_mult<-rep(1,12)

library(tidyverse)
river_mhg<-riv_mehg %>%
  rowwise() %>%                       # for each row
  mutate(x = list(riv_mehg * cit_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
  river_mhg<-as.numeric(as.character(unlist(river_mhg[2])))
 

if6<-indus %>%
  rowwise() %>%                       # for each row
  mutate(x = list(ind2 * cit_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
yy<-as.numeric(as.character(unlist(if6[1])))
b6i<-as.numeric(as.character(unlist(if6[3])))
tot_ind = b6i

if6_mehg<-indus_mehg %>%
  rowwise() %>%                       # for each row
  mutate(x = list(ind_mehg * cit_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
yy<-as.numeric(as.character(unlist(if6_mehg[1])))
b6i_mehg<-as.numeric(as.character(unlist(if6_mehg[3])))
tot_ind_mehg = b6i_mehg

cf3<-cit %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX3 * cit_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
yy<-as.numeric(as.character(unlist(cf3[1])))
b3c<-as.numeric(as.character(unlist(cf3[5])))

cf5<-cit %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX5 * cit_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
yy<-as.numeric(as.character(unlist(cf5[1])))
b5c<-as.numeric(as.character(unlist(cf5[5])))

cf6<-cit %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX6 * cit_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
yy<-as.numeric(as.character(unlist(cf6[1])))
b6c<-as.numeric(as.character(unlist(cf6[5])))


dum<-cit %>%
  rowwise() %>%                       # for each row
  mutate(x = list(ci * cit_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
tot_city<-as.numeric(as.character(unlist(dum[5])))

df1<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX1 * cit_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
yy<-as.numeric(as.character(unlist(df1[1])))
b1<-as.numeric(as.character(unlist(df1[13])))

df2<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX2* mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b2<-as.numeric(as.character(unlist(df2[13])))

df3<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX3* mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b3<-as.numeric(as.character(unlist(df3[13])))

df4<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX4* mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b4<-as.numeric(as.character(unlist(df4[13])))

df5<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX5* mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b5<-as.numeric(as.character(unlist(df5[13])))

df6<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX6* mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b6<-as.numeric(as.character(unlist(df6[13])))

df7<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX7* mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b7<-as.numeric(as.character(unlist(df7[13])))

df8<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX8* mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b8<-as.numeric(as.character(unlist(df8[13])))

df9<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX9* mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b9<-as.numeric(as.character(unlist(df9[13])))

df10<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX10* mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b10<-as.numeric(as.character(unlist(df10[13])))


dffff<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(de* mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
tot_depo<-as.numeric(as.character(unlist(dffff[13])))

##::::::::::::::::::::::::::::  RIVERS :::::::::::::::::::::::::::::::::::::::::::::::::::::::

rf2<-riv %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX2 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
yy<-as.numeric(as.character(unlist(rf2[1])))
b2r<-as.numeric(as.character(unlist(rf2[8])))

rf5<-riv %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX5 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b5r<-as.numeric(as.character(unlist(rf5[8])))

rf6<-riv %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX6 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b6r<-as.numeric(as.character(unlist(rf6[8])))

rf8<-riv %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX8 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b8r<-as.numeric(as.character(unlist(rf8[8])))

rf9<-riv %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX9 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
b9r<-as.numeric(as.character(unlist(rf9[8])))

rvvvf<-riv %>%
  rowwise() %>%                       # for each row
  mutate(x = list(ri * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
tot_riv<-as.numeric(as.character(unlist(rvvvf[8])))


##:::::::::::::::::::::::::::: New Data Frame :::::::::::::::::::::::::::::::::::::::::::::::::::::::

monthly_dep<-data.frame(yy,b1, b2, b3, b4, b5, b6, b7, b8, b9, b10)
monthly_riv<-data.frame(yy,b2r, b5r, b6r, b8r, b9r)
monthly_cit<-data.frame(yy,b3c,b5c,b6c)
monthy_ind<-data.frame(yy,b6i)

plot(b6i[1:2412])

write.table(monthly_dep,file='monthly_dep.txt')
write.table(monthly_riv,file='monthly_riv.txt')
write.table(monthly_cit,file='monthly_city.txt')
write.table(monthy_ind,file='monthy_ind.txt')

in1 <-(monthly_dep$b1)/365   # kg / y to kg/d
in2 <-(monthly_dep$b2 + monthly_riv$b2r)/365
in3 <-(monthly_dep$b3 + monthly_cit$b3c)/365
in4 <-(monthly_dep$b4)/365
in5 <-(monthly_dep$b5 + monthly_riv$b5r + monthly_cit$b5c)/365
in6 <-(monthly_dep$b6 + monthly_riv$b6r + monthly_cit$b6c+monthy_ind$b6i)/365
in7 <-(monthly_dep$b7)/365
in8 <-(monthly_dep$b8 + monthly_riv$b8r)/365
in9 <-(monthly_dep$b9 + monthly_riv$b9r)/365
in10<-(monthly_dep$b10)/365
str(monthly_riv)
ladata<-seq(as.Date('1900-01-01'),by='months',length=2412)
ladataOK<-format(ladata, "%m-%d-%Y")

all_input<-data.frame(ladataOK,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10)
monthly_riv_mehg<-data.frame(ladataOK,monthly_riv[2:6]*1.7/(365*100))       #kg y to kg d
plot(monthly_riv_mehg$b6r, type='l')

monthly_riv_mehg$b6r<-monthly_riv_mehg$b6r+(b6i_mehg/365)

#dep_g_km2_y<-tot_depo/area_km2*100


monthly_riv_mehg/(monthly_riv/365)


TOT<-tot_city+tot_depo+tot_ind+tot_riv
Input_long<-data.frame(tot_city,tot_depo,tot_ind,tot_riv,river_mhg,b6i_mehg)
write.table(Input_long, file='Input_long.txt')


png('Hg_input_VE2_Cl2bbcd.png', units='cm', height = 31,  width = 31, res=300)
tutt<-data.frame((tott[2]), (tott[3]+tott[4]),
                 (tott[5]),(tott[6]))

rownames(tutt)<-years
tutt<-as.matrix(tutt); tutt<-t(tutt)


par(cex.axis=1.4, cex.lab=1.4, bty='none', mfrow=c(2,2), cex.main=1.4, mar=c(4.2, 4.5, 4.1, 2.1))
#plot(ladata,TOT, type='l', ylim=c(0,1500), xlab='',ylab='kg y-1', 
#    main='Hg inputs to the Venice Lagoon')
#par(new=T)
#png('Hg_input_VE2_BBBB.png', units='cm', height = 31,  width = 31, res=300)


tutt<-data.frame((tott[2]), (tott[3]+tott[4]),
                 (tott[5]),(tott[6]))
rownames(tutt)<-years
rdate[,1:30]
tutt1<-rowMeans(tutt[1:30,])
tutt2<-rowMeans(tutt[31:70,])
tutt3<-rowMeans(tutt[71:90,])
tutt4<-rowMeans(tutt[91:120,])
tutt5<-rowMeans(tutt[122:201,])

tutt_frame<-data.frame(tutt1,tutt2,tutt3,tutt4,tutt5)
tutt_mat<-as.matrix(tutt_frame); tutt<-t(tutt_frame)

TOT<-rowSums(tutt_frame)
names(tutt_mat)<-c('1900-1929','1930-1969','1970-1991','1990-2019','2020-2100')
par(cex.axis=1.4, cex.lab=1.4, bty='none', mfrow=c(2,2), cex.main=1.4)
 
barplot(tutt_mat, beside=F, width = 10,legend.text=F,
        border = NA, col=c('cyan3','royalblue','orange',
                           'grey40'),
        main='Hg inputs to the Venice Lagoon')
text(40,1500,'A', cex=2.5)
mtext(text=expression(paste('kg y'^-1)),side=2,  line=2.5, cex=1.3)
legend(1300,1500,col=c('cyan3','royalblue','orange','grey40'),cex=1.6,
       legend=c('Atmosphere','Rivers','City','Industrial'), 
       pch=15, bty='n')

perC<-tot_city/TOT*100
perA<-tot_depo/TOT*100
perI<-tot_ind/TOT*100
perR<-tot_riv/TOT*100

perctutt<-data.frame((tutt_mat[1,1:4]/TOT*100), ((tutt_mat[2,1:4])/TOT[7]*100),
                     (tutt_mat[3,1:4]/TOT[7]*100),(tutt_mat[4,1:4]/TOT[7]*100))
rownames(perctutt)<-years
perctutt<-as.matrix(perctutt); perctutt<-t(perctutt)

barplot(perctutt, beside=F, width = 10,space=1,legend.text=F,ylim=c(0,110),
        border = NA, col=c('cyan3','royalblue','orange',
                           'grey40'),
        main='Hg inputs to the Venice Lagoon')
mtext(text=expression(paste('%')),side=2,  line=2.5, cex=1.3)
text(10,105,'B', cex=2.5)

str(perA)

#perctutt<-data.frame(tott[2], tott[3]+tott[4],tott[5],tott[6])
#rownames(perctutt)<-years
#perctutt<-as.matrix(perctutt); perctutt<-t(perctutt)


#plot(ladata,tot_city, type='l',col='orange',ylab='',xlab='', yaxt='n',xaxt='n', lwd=2, ylim=c(0,1500))
#par(new=T)
#plot(ladata,tot_depo, type='l',col='cyan3',ylab='',xlab='', yaxt='n',xaxt='n', lwd=2, ylim=c(0,1500))
##par(new=T)
#plot(ladata,tot_ind, type='l',col='grey40', ylab='',xlab='', yaxt='n',xaxt='n', lwd=2,ylim=c(0,1500))
#par(new=T)
##plot(ladata,tot_riv, type='l',col='royalblue',ylab='',xlab='',  yaxt='n',xaxt='n', lwd=2,ylim=c(0,1500))
##legend(4900, 1500, col=c(1,'grey40', 'royalblue','cyan3','orange'),pch=19, bty='n',cex=1.4,
#      legend=c('Total load','Industrial load','River load','Atmospheric deposition','City load'))

#barplot(ladata,tot_city/TOT*100, type='l',col='orange',ylab='%',xlab='', lwd=2,
# ylim=c(0,100))
#par(new=T)
#plot(ladata,tot_depo/TOT*100, type='l',col='cyan3',ylab='',xlab='', yaxt='n', lwd=2,
#    xaxt='n', ylim=c(0,100))
#par(new=T)
#plot(ladata,tot_ind/TOT*100, type='l',col='grey40', ylab='',xlab='',  lwd=2,
#    yaxt='n',xaxt='n',ylim=c(0,100))
#par(new=T)
#plot(ladata,tot_riv/TOT*100, type='l',col='royalblue',ylab='',xlab='',  lwd=2,
#    yaxt='n',xaxt='n',ylim=c(0,100))
 
#legend(4900, 100, col=c(1,'grey40', 'royalblue','cyan3','orange'),pch=19, bty='n',cex=1.4,
#      legend=c('Total load','Industrial load','River load','Atmospheric deposition','City load'))

#r<-c(1,2,15,25) #observational range for atmospheric deposition rate
r<-c(1,2,10,15,25,30,50) #observational range for atmospheric deposition rate

ef_2008

 #dev.new()
boxplot(r, ylim=c(1,56), col='grey80', ylab='', xlab='', 
        boxwex=1.2, main='Atmospheric Hg deposition rate')
text(0.92,10.5,'range for marine areas \n from GEOS-Chem model \n (UNEP, 2013)' , cex=1.2)
#text(.9,17,''  , cex=1.2)
#text(.7,15.5,'' , cex=1.2)
#text(1.035,14,'', cex=1.2)
par(new=T)
plot(years,de2_g_km2_y, type='l', ylim=c(1,56),lwd=2,lty=1, col='#117733', xlab='year',ylab=' ')  ## range 2 - 25 g km-2 y-1 over marine areas (UNEP, 2013)
text(years[185],11,'Zero \n Emissions' , cex=1.3,col='#117733')
par(new=T)
plot(years,de3_g_km2_y, type='l', ylim=c(1,56),lwd=2, lty=1,col='#0b70a3', xlab='year',ylab=' ')  ## range 2 - 25 g km-2 y-1 over marine areas (UNEP, 2013)
text(years[185],19,'Emissions \n Control' , cex=1.3,col='#0b70a3')
par(new=T)
plot(years,de4_g_km2_y, type='l', ylim=c(1,56),lwd=2,lty=1, col='#DDCC77', xlab='year',ylab=' ')  ## range 2 - 25 g km-2 y-1 over marine areas (UNEP, 2013)
text(years[185],33,'Constant \n Emissions' , cex=1.3,col='#cebb5a')
par(new=T)
plot(years,de5_g_km2_y, type='l', ylim=c(1,56),lwd=2,lty=1, col='#882255', xlab='year',
     ylab='')  ## range 2 - 25 g km-2 y-1 over marine areas (UNEP, 2013)
text(years[162],42,'A1B1' , cex=1.2,col='#882255')
par(new=T)
plot(years,dep_g_km2_y, type='l', ylim=c(1,56),lwd=2.5, col='cyan3', xlab='year',ylab=' ')  ## range 2 - 25 g km-2 y-1 over marine areas (UNEP, 2013)
#text(18,5,'input for \n the Venice lagoon', cex=1.2)
text(years[185],24,'Reference' , cex=1.3,col='cyan3')
text(years[10],56,'C', cex=2.5)
mtext(text=expression(paste('g km'^-2*' y'^-1)),side=2,  line=2.5, cex=1.3)
text(years[162],55,'Scenarios of \n Hg deposition \n (Chen et al., 2018)' , cex=1.2)


plot(ladata,tot_riv/13.2, type='l', col='#4169E1', lwd=3,xlab='year',
     main='River Hg load \n enrichment factor relative to 2008', ylab=' ', ylim=c(0,15)) 
text(ladata[30],15,'D', cex=2.5)
par(new=T)
boxplot(ef_1970,ef_1980,ef_1990,ef_2000, ef_2008, ylim=c(0,15),xaxt='n',col='grey80',
        at=c(71,85,93,100,108), xlim=c(1,201), boxwex=3.5,
        range = T, outline=T)
mtext(text=expression(paste('Enrichment Factor')), side=2,  line=2.5, cex=1.3)
dev.off()

write.table(all_input,file='all_input_hgII_noSeason.txt')
write.table(monthly_riv_mehg,file='monthly_riv_mehg_noSeason.txt')

getwd()

all_input_mean<-tapply(all_input[1:2412,], rep(1:(length(all_input[1:2412,1])/12), each=12), mean)


b1inM<-tapply(all_input[1:2412,2], rep(1:(2412/12),each = 12),mean)
b2inM<-tapply(all_input[1:2412,3], rep(1:(2412/12),each = 12),mean)
b3inM<-tapply(all_input[1:2412,4], rep(1:(2412/12),each = 12),mean)
b4inM<-tapply(all_input[1:2412,5], rep(1:(2412/12),each = 12),mean)
b5inM<-tapply(all_input[1:2412,6], rep(1:(2412/12),each = 12),mean)
b6inM<-tapply(all_input[1:2412,7], rep(1:(2412/12),each = 12),mean)
b7inM<-tapply(all_input[1:2412,8], rep(1:(2412/12),each = 12),mean)
b8inM<-tapply(all_input[1:2412,9], rep(1:(2412/12),each = 12),mean)
b9inM<-tapply(all_input[1:2412,10], rep(1:(2412/12),each = 12),mean)
b10inM<-tapply(all_input[1:2412,11], rep(1:(2412/12),each = 12),mean)

in_short_hgII<-cbind(b1inM,b2inM,b3inM,b4inM,b5inM,b6inM,b7inM,b8inM,b9inM,b10inM)
write.table(in_short_hgII, file='in_short_hgII.txt')

tot_in<-data.frame(ladataOK,cumsum(TOT/12))
names(tot_in)<-c('data','tot')
xx<-tot_in[1261,]
xx$tot/1000

plot(ind)
write.table(ladataOK,file='ladataOK.txt')

monthly_riv_mehg

tail(ladata)
str(monthly_riv)






### ----- oppure ---------------------------------------
#f = function(x,y) x*y
#f = Vectorize(f)

#df %>%
#  mutate(x = list(f(BOX1, mul_atm))) %>%    
#  unnest()
