
anno<-seq(1900,2100)

s2<-seq(24766.56, 2.36E+4, length.out = 201)  #silt box 2  kg / d
s5<-seq(9525.6, 9070, length.out = 201)  #silt box 2 
s6<-seq(17781.12, 14500, length.out = 201)  #silt box 2 
s8<-seq(2222.64, 1810, length.out = 201)  #silt box 2 
s9<-seq(13335.84, 12700, length.out = 201)  #silt box 2 

silt<-data.frame(anno,s2,s5,s6,s8,s9)

p2<-seq(10614.24,10100, length.out = 201) 
p5<-seq(4082.4,3890, length.out = 201) 
p6<-seq(7620.48,7260, length.out = 201) 
p8<-seq(952.6,778, length.out = 201) 
p9<-seq(5715.36,5440, length.out = 201) 

3.53808E+4-(3.53808E+4*30/100)
13608-(13608*.3)
25401.6-(25401.6*0.3)
3175.2-(3175.2*0.3)
19051.2-(19051.2*0.3)

15163.2-(15163.2*.3)
5832-(5832*0.3)
10886.4-(10886.4*0.3)
1360.8-(1360.8*0.3)
8164.8-(8164.8*.3)
pom<-data.frame(anno,p2,p5,p6,p8,p9)

ss<-rowSums(silt[110,2:6])*365/1000
pp<-rowSums(pom[110,2:6])*365/1000
anno[110]


riv_mult<-c(1.021276596,0.805920444,0.782608696, 1.184458834,0.919148936,1.013506013,0.866975023,
            0.853654024,0.820351526,0.935800185,1.598519889,1.197779833)


dfs2<-silt %>%
  rowwise() %>%                       # for each row
  mutate(x = list(s2 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
yy<-as.numeric(as.character(unlist(dfs2[1])))
silt_box2<-as.numeric(as.character(unlist(dfs2[7])))

dfs5<-silt %>%
  rowwise() %>%                       # for each row
  mutate(x = list(s5 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
silt_box5<-as.numeric(as.character(unlist(dfs5[7])))

dfs6<-silt %>%
  rowwise() %>%                       # for each row
  mutate(x = list(s6 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
silt_box6<-as.numeric(as.character(unlist(dfs6[7])))

dfs8<-silt %>%
  rowwise() %>%                       # for each row
  mutate(x = list(s8 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
silt_box8<-as.numeric(as.character(unlist(dfs8[7])))

dfs9<-silt %>%
  rowwise() %>%                       # for each row
  mutate(x = list(s9 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
silt_box9<-as.numeric(as.character(unlist(dfs9[7])))


dfp2<-pom %>%
  rowwise() %>%                       # for each row
  mutate(x = list(p2 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
yy<-as.numeric(as.character(unlist(dfp2[1])))
pom_box2<-as.numeric(as.character(unlist(dfp2[7])))

dfp5<-pom %>%
  rowwise() %>%                       # for each row
  mutate(x = list(p5 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
pom_box5<-as.numeric(as.character(unlist(dfp5[7])))

dfp6<-pom %>%
  rowwise() %>%                       # for each row
  mutate(x = list(p6 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
pom_box6<-as.numeric(as.character(unlist(dfp6[7])))

dfp8<-pom %>%
  rowwise() %>%                       # for each row
  mutate(x = list(p8 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
pom_box8<-as.numeric(as.character(unlist(dfp8[7])))

dfp9<-pom %>%
  rowwise() %>%                       # for each row
  mutate(x = list(p9 * riv_mult)) %>%    # multiply value in BOX1 with mul and save results as a list
  unnest()                            # unnest data
pom_box9<-as.numeric(as.character(unlist(dfp9[7])))

ladata<-seq(as.Date('1900-01-01'),by='months',length=2412)
ladataOK<-format(ladata, "%m-%d-%Y")

pom_input<-data.frame(ladataOK,pom_box2,pom_box5,pom_box6,pom_box8,pom_box9)
silt_input<-data.frame(ladataOK,silt_box2,silt_box5,silt_box6,silt_box8,silt_box9)

write.table(pom_input,file='pom_input.txt')
write.table(silt_input,file='silt_input.txt')




monthly_riv_mehg<-data.frame(ladataOK,monthly_riv[2:6]*5/(365*100))



win.graph()

plot(ladata[1:24],silt_box2[1:24], type='l',col='orange', ylim=c(0,100000))
par(new=T)
plot(ladata,tot_depo, type='l',col='cyan3', ylim=c(0,700))
par(new=T)
plot(ladata,tot_ind, type='l',col='grey40', ylim=c(0,700))
par(new=T)
plot(ladata,tot_riv, type='l',col='royalblue', ylim=c(0,700))



getwd()

