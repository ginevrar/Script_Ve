setwd('G:/Il mio Drive/MERCURIO/Venezia')
#dep<-read.table('atmo_input.txt', header=T)
#riv<-read.table('riv_input.txt', header=T)
#cit<-read.table('city_input.txt', header=T)
#indus<-read.table('margh_input.txt', header=T)

anno<-seq(1900,2100)
##  FUnzione che creas una serie di 100 elementi con decremento del 1.5% 
n=rep(NA,101)   # preallocate
n[1]=11.7
for(i in 2:101){
  n[i] = n[i-1]-((n[i-1]*1.5)/100)
 }
n

de<-c(rep(7.8,40), rep(9.4,10), rep(23.4, 10), rep(18.8, 30), seq(18,11.7, length.out = 10),n) 
dep<-data.frame(anno[1:201],de)    

##  FUnzione che creas una serie di 100 elementi con decremento del 1.5% (dal 1999 al 2100)
m=rep(NA,101)   # preallocate
m[1]=24
for(i in 2:101){
  m[i] = m[i-1]-((m[i-1]*1.5)/100)
}
m       

ri<-c(rep(6.7,40), rep(6.7,10), seq(11,20, 1), rep(30, 30), seq(27,24, length.out = 10), m)
riv<-data.frame(anno[1:201],ri)

riv$BOX2 = riv$ri*0.26
riv$BOX5 = riv$ri*0.15
riv$BOX6 = riv$ri*0.34
riv$BOX8 = riv$ri*0.14
riv$BOX9 = riv$ri*0.11


ci<-c(rep(2,40),rep(4,10), rep(6,10),rep(10,30), rep(12,16),rep(5,15), rep(0,80)) 
cit<-data.frame(anno[1:201],ci)
str(cit)


ind<-c(rep(0,20), seq(21,40,1), rep(140, 10),rep(600, 10), seq(500,300,length.out = 30),
         seq(100,10,length.out =  16),seq(10,2,length.out =  15), rep(0,80))
indus<-data.frame(anno[1:201],ind)

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


## mancano anno 1901; 1905(?)

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

monthly_riv_mehg2<-data.frame(ladataOK,monthly_riv[2:6]*4/(365*100))

monthly_riv_mehg[2,2]
monthly_riv_mehg2[2,2]  #! per usare 4% moltiplico load *0.79 

TOT<-tot_city+tot_depo+tot_ind+tot_riv
  
plot(ladata,TOT, type='l', ylim=c(0,700))
par(new=T)
plot(ladata,tot_city, type='l',col='orange', ylim=c(0,700))
par(new=T)
plot(ladata,tot_depo, type='l',col='cyan3', ylim=c(0,700))
par(new=T)
plot(ladata,tot_ind, type='l',col='grey40', ylim=c(0,700))
par(new=T)
plot(ladata,tot_riv, type='l',col='royalblue', ylim=c(0,700))


write.table(all_input,file='all_input_hgII.txt')
write.table(monthly_riv_mehg,file='monthly_riv_mehg.txt')

getwd()






write.table(ladataOK,file='ladataOK.txt')



tail(ladata)
str(monthly_riv)






### ----- oppure ---------------------------------------
#f = function(x,y) x*y
#f = Vectorize(f)

#df %>%
#  mutate(x = list(f(BOX1, mul_atm))) %>%    
#  unnest()
