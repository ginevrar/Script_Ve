
years    <-seq(1900,2100)  # sequence of 200 elements (years)
area     <-4.12E+08   # surface area of the site (m2)  - to compute rates 
area_km2 <-4.12E+02   # surface area of the site (km2) - to compute rates 


## Function that creates a vector of 100 elements decreasing by 1.5% at each step
## this is to simulate the decrease of atmospheric deposition observed in Europe from 1999 (Colette et al., 2016) 
## starting from the value measured in the study area in 1999 (11.7 kg y-1,Rossini et al., 2005) 
## and projecting the trend to the future (2100)

n=rep(NA,101)   # preallocate
n[1]=11.7
for(i in 2:101){
  n[i] = n[i-1]-((n[i-1]*1.5)/100)
}

de<-c(rep(7.8,40), rep(9.4,10), rep(23.4, 10), rep(30, 30), seq(30,11.7, length.out = 10),n) # create a series
dep<-data.frame(years[1:201],de)    
dep[100,]
dep[118,]

mul_d<-de/9.049025
hg0_air<-1.6*mul_d
plot(hg0_air, type='l')

getwd()
write.table(hg0_air,'hg0_time.txt')

dep_g_km2_y<-de/area_km2*100

##  Function that creates a vector of 100 elements decreasing by 1.5% at each step -
#   this is for river load, based on analogy with atm. depo
#   river load in Venice for 1999 is ~24 kg y-1 (Collavini et al., 2005)

m=rep(NA,101)   # preallocate
m[1]=24
for(i in 2:101){
  m[i] = m[i-1]-((m[i-1]*1.5)/100)
}

y<-seq(1999,2100,length.out = 101)

data.frame(y,m)

# 6.7 kg y-1 is calculated form background concentrations and SPM load

ri<-c(rep(6.7,40), seq(7,30,length.out = 10), seq(31,200, length.out = 20),
      seq(200,180,-5),seq(160,50, length.out = 15), 
      seq(46.0,24, length.out = 10), m)
riv<-data.frame(years[1:201],ri)


ri2<-c(rep(6.7,40), seq(7,30,length.out = 10), seq(31,200, length.out = 20), seq(200,160,length.out =5),
       seq(150,50, length.out = 15), seq(46.0,24, length.out = 10), m)

plot(ri, type='l')
par(new=T)
plot(ri, type='l', col=2, lty=2)

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

ci<-c(rep(3,40),rep(5,10), rep(7,10),rep(10,30), rep(12,16),rep(5,15), rep(3,80)) 
cit<-data.frame(years[1:201],ci)
str(cit)

#ind<-c(rep(0,20), seq(21,60,length.out = 20), seq(60,200,length.out = 10),rep(600, 10), seq(500,300,length.out = 30),
  #     seq(100,10,length.out =  16),seq(10,2,length.out =  15), rep(0,80))

ind<-c(rep(0,20), seq(21,60,length.out = 20), seq(63,200,length.out = 10),
        seq(220,800,length.out = 10), seq(860,1000,length.out = 10),seq(1000,650,length.out = 10),
        seq(640,100,length.out = 10), seq(95,10,length.out =  16),seq(10,2,length.out =  15), rep(0,80))
indus<-data.frame(years[1:201],ind)

plot(years, ind, type='l')
abline(h=36)
tt<- de+ri+ci+ind
t_cum<-cumsum(tt)/1000

tott<-data.frame(years,de,ri2,ci,ind, tt, t_cum)
tott[106,]

plot(years[1:106],t_cum[1:106])
plot(years,ri, type='l') 
plot(years,ci, type='l') 
plot(years,ind, type='l') 



#::::::::::::: ripartizione input fra i box :::::::::::::::::::::::::::::::::::::

area <-4.119E+08
aree<-c(4.350E+07,3.530E+07,3.130E+07,	8.900E+06,	2.220E+07,
        5.430E+07,1.146E+08,3.170E+07,	2.950E+07,	4.060E+07)

dep$BOX1 <-dep$de*(aree[1]/area)
dep$BOX2 <-dep$de*(aree[2]/area)
dep$BOX3 <-dep$de*(aree[3]/area)
dep$BOX4 <-dep$de*(aree[4]/area)
dep$BOX5 <-dep$de*(aree[5]/area)
dep$BOX6 <-dep$de*(aree[6]/area)
dep$BOX7 <-dep$de*(aree[7]/area)
dep$BOX8 <-dep$de*(aree[8]/area)
dep$BOX9 <-dep$de*(aree[9]/area)
dep$BOX10 <-dep$de*(aree[10]/area)

#aaaaa<-(dep$BOX1+dep$BOX2+dep$BOX3+dep$BOX4+dep$BOX5+dep$BOX6+dep$BOX7+dep$BOX8+dep$BOX9+dep$BOX10)


cit$BOX3<-cit$ci*0.33
cit$BOX5<-cit$ci*0.33
cit$BOX6<-cit$ci*0.33


## mancano years 1901; 1905(?)

mul_atm<-c(1.050000716,1.00454523,1.195454451,1.404547776,0.963636566,0.99545477,
           0.700000477,0.836363752,1.077272098,1.018182512,0.790908267,0.949999284)

riv_mult<-c(1.021276596,0.805920444,0.782608696, 1.184458834,0.919148936,1.013506013,0.866975023,
            0.853654024,0.820351526,0.935800185,1.598519889,1.197779833)

cit_mult<-rep(1,12)

if6<-indus %>%
  rowwise() %>%                       # for each row
  mutate(x = list(ind * cit_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
yy<-as.numeric(as.character(unlist(if6[1])))
b6i<-as.numeric(as.character(unlist(if6[3])))
tot_ind = b6i


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


library(tidyverse)

df1<-dep %>%
  rowwise() %>%                       # for each row
  mutate(x = list(BOX1 * mul_atm)) %>%    # multiply value in BOX1 with mul and save results as a list
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

write.table(monthly_dep,file='monthly_dep.txt')
write.table(monthly_riv,file='monthly_riv.txt')
write.table(monthly_cit,file='monthly_city.txt')


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

ladata<-seq(as.Date('1900-01-01'),by='months',length=2412)
ladataOK<-format(ladata, "%m-%d-%Y")

all_input<-data.frame(ladataOK,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10)

monthly_riv_mehg<-data.frame(ladataOK,monthly_riv[2:6]*5/(365*100))

dep_g_km2_y<-tot_depo/area_km2*100


TOT<-tot_city+tot_depo+tot_ind+tot_riv

png('Hg_input_VE_.png', units='cm', height = 31,  width = 31, res=300)

par(cex.axis=1.4, cex.lab=1.4, bty='none', mfrow=c(2,2), cex.main=1.4)
plot(ladata,TOT, type='l', ylim=c(0,1500), xlab='',ylab='kg y-1', 
     main='Hg inputs to the Venice Lagoon')
par(new=T)
plot(ladata,tot_city, type='l',col='orange',ylab='',xlab='', yaxt='n',xaxt='n', ylim=c(0,1500))
par(new=T)
plot(ladata,tot_depo, type='l',col='cyan3',ylab='',xlab='', yaxt='n',xaxt='n', ylim=c(0,1500))
par(new=T)
plot(ladata,tot_ind, type='l',col='grey40', ylab='',xlab='', yaxt='n',xaxt='n',ylim=c(0,1500))
par(new=T)
plot(ladata,tot_riv, type='l',col='royalblue',ylab='',xlab='',  yaxt='n',xaxt='n',ylim=c(0,1500))
legend(4900, 1500, col=c(1,'grey40', 'royalblue','cyan3','orange'),pch=19, bty='n',cex=1.4,
       legend=c('Total load','Industrial load','River load','Atmospheric deposition','City load'))
text(ladata[30],1500,'A', cex=2.5)

#plot(ladata,TOT/TOT*100, type='l', ylim=c(0,100), xlab='',ylab='kg y-1', 
#     )
#par(new=T)
plot(ladata,tot_city/TOT*100, type='l',col='orange',ylab='%',xlab='', 
     ylim=c(0,100), main='Hg inputs to the Venice Lagoon')
par(new=T)
plot(ladata,tot_depo/TOT*100, type='l',col='cyan3',ylab='',xlab='', yaxt='n',
     xaxt='n', ylim=c(0,100))
par(new=T)
plot(ladata,tot_ind/TOT*100, type='l',col='grey40', ylab='',xlab='', 
     yaxt='n',xaxt='n',ylim=c(0,100))
par(new=T)
plot(ladata,tot_riv/TOT*100, type='l',col='royalblue',ylab='',xlab='', 
     yaxt='n',xaxt='n',ylim=c(0,100))
#legend(4900, 100, col=c(1,'grey40', 'royalblue','cyan3','orange'),pch=19, bty='n',cex=1.4,
 #      legend=c('Total load','Industrial load','River load','Atmospheric deposition','City load'))
text(ladata[30],100,'B', cex=2.5)

r<-c(1,2,15,25) #observational range for atmospheric deposition rate


plot(ladata,tot_riv/20.947747, type='l', col='#4169E1',
     main='River load \n enrichment factor relative to 2008', ylab='EF',ylim=c(0,15)) 
text(ladata[30],15,'C', cex=2.5)
par(new=T)
boxplot(ef_1970,ef_1980,ef_1990,ef_2000,  ylim=c(0,15),xaxt='n',col='grey80',
        at=c(71,81,91,102), xlim=c(1,201), boxwex=3.5,
        range = T, outline=T)


boxplot(r, ylim=c(1,26), col='grey80', ylab='', xlab='', 
        boxwex=1.2, main='Atmospheric deposition rate')
text(1,18,'range for marine areas \n from global models \n ensemble (UNEP, 2013)', cex=1.2)
par(new=T)
plot(ladata,dep_g_km2_y, type='l', ylim=c(1,26),lwd=2, col='cyan3', xlab='year',ylab='g km-2 y-1')  ## range 2 - 25 g km-2 y-1 over marine areas (UNEP, 2013)
text(18,5,'input for \n the Venice lagoon', cex=1.2)
text(ladata[30],26,'D', cex=2.5)

#text(93,16, '', cex=1.2)
#text(103,14,'', cex=1.2)
dev.off()

write.table(all_input,file='all_input_hgII.txt')
write.table(monthly_riv_mehg,file='monthly_riv_mehg.txt')

getwd()


tot_in<-data.frame(ladataOK,cumsum(TOT/12))
names(tot_in)<-c('data','tot')
xx<-tot_in[1261,]
xx$tot/1000

write.table(ladataOK,file='ladataOK.txt')



tail(ladata)
str(monthly_riv)






### ----- oppure ---------------------------------------
#f = function(x,y) x*y
#f = Vectorize(f)

#df %>%
#  mutate(x = list(f(BOX1, mul_atm))) %>%    
#  unnest()
