f_box2<-0.458421978				
f_box5<-0.062621404			
f_box6<-0.220793636
f_box8<-0.170567015
f_box9<-0.087595967

anno<-seq(1900,2100)
tot_riv<-seq(37000,30000, length.out = 201)*1000     #kg/y circa 30.000.000
#*1000 da t a kg, 33451 t nel 1999 (collavini et al.)

tot_riv_kgd<-tot_riv/365

df_r1<-data.frame(anno,tot_riv)
df_r<-data.frame(anno,tot_riv_kgd)

df_r1[100,]

s2<-tot_riv*0.9*f_box2/365             #silt box 2     !!kg/d
s5<-tot_riv*0.9*f_box5/365      #silt box 5
s6<-tot_riv*0.9*f_box6/365     #silt box 2 
s8<-tot_riv*0.9*f_box8/365        #silt box 2 
s9<-tot_riv*0.9*f_box9/365        #silt box 2 

silt<-data.frame(anno,s2,s5,s6,s8,s9)   #silt daily load
sil_in<-sum(silt[1,2:6])
sil_fin<-sum(silt[100,2:6])

str(silt[100,1])


p2<-tot_riv*0.1*f_box2/365  
p5<-tot_riv*0.1*f_box5/365 
p6<-tot_riv*0.1*f_box6/365  
p8<-tot_riv*0.1*f_box8/365   
p9<-tot_riv*0.1*f_box9/365  

pom<-data.frame(anno,p2,p5,p6,p8,p9)


tot_fin<-pom_fin+sil_fin
tot_in<-pom_in+sil_in
(tot_in-tot_fin)/tot_in*100


pom_fin/sil_fin*100

riv_mult<-c(1.021276596,0.805920444,0.782608696, 1.184458834,0.919148936,1.013506013,0.866975023,
            0.853654024,0.820351526,0.935800185,1.598519889,1.197779833)

library(tidyverse)
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

ladata<-seq(as.Date('1900-01-01'),by='months',length=2412)
ladataOK<-format(ladata, "%m-%d-%Y")

silt_input<-data.frame(ladataOK,silt_box2,silt_box5,silt_box6,silt_box8,silt_box9)

write.table(silt_input,file='silt_input.txt')

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

pom_input<-data.frame(ladataOK,pom_box2,pom_box5,pom_box6,pom_box8,pom_box9)


write.table(pom_input,file='pom_input.txt')



getwd()


