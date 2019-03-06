setwd('C:/Users/Acer/Dropbox/NewVenice21')
setwd('C:\\Users\\Acer\\Desktop\\last\\NAOH')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\last\\NAOH_iniz10')     #sim_cl

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')     #ng/g

burial<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

#ng /L or ug /m3
silts<-read.csv("Silts_Fines.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silts)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POMs<-read.csv("Organic_Matter.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POMs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POM_depos<-read.csv("POM_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                    'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                    'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                    'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

silt_depos<-read.csv("Silt_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                     'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                     'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                     'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

POM_res<-read.csv("POM_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(POM_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

silt_res<-read.csv("Silt_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(silt_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

sand_res<-read.csv("Sand_Res_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sand_res)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

sand_depos<-read.csv("Sand_Dep_Vel.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sand_depos)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                     'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                     'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                     'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')


buriedhg_mgm2d<-(SEDhg*(burial/100)*TOTs)    ## ng g-1 * m y-1 * g m-3  = ng m-2 y-1


sed_b1<-(buriedhg_mgm2d$sn1*a1)/10^12
sed_b2<-(buriedhg_mgm2d$sn2*a2)/10^12
sed_b3<-(buriedhg_mgm2d$sn3*a3)/10^12
sed_b4<-(buriedhg_mgm2d$sn4*a4)/10^12
sed_b5<-(buriedhg_mgm2d$sn5*a5)/10^12
sed_b6<-(buriedhg_mgm2d$sc6*a6)/10^12
sed_b7<-(buriedhg_mgm2d$sc7*a7)/10^12
sed_b8<-(buriedhg_mgm2d$ss8*a8)/10^12
sed_b9<-(buriedhg_mgm2d$ss9*a9)/10^12
sed_b10<-(buriedhg_mgm2d$ss10*a10)/10^12


TOT_burialHg<-sed_b1+sed_b2+sed_b3+sed_b4+sed_b5+sed_b6+sed_b7+sed_b8+sed_b9+sed_b10
plot(TOT_burialHg)
head(TOT_burialHg)

bur_media1<-tapply(sed_b1[3:2414], rep(1:(length(sed_b1[3:2414])/12),each = 12),mean)
bur_media2<-tapply(sed_b2[3:2414], rep(1:(length(sed_b1[3:2414])/12),each = 12),mean)
bur_media3<-tapply(sed_b3[3:2414], rep(1:(length(sed_b1[3:2414])/12),each = 12),mean)
bur_media4<-tapply(sed_b4[3:2414], rep(1:(length(sed_b1[3:2414])/12),each = 12),mean)
bur_media5<-tapply(sed_b5[3:2414], rep(1:(length(sed_b1[3:2414])/12),each = 12),mean)
bur_media6<-tapply(sed_b6[3:2414], rep(1:(length(sed_b1[3:2414])/12),each = 12),mean)
bur_media7<-tapply(sed_b7[3:2414], rep(1:(length(sed_b1[3:2414])/12),each = 12),mean)
bur_media8<-tapply(sed_b8[3:2414], rep(1:(length(sed_b1[3:2414])/12),each = 12),mean)
bur_media9<-tapply(sed_b9[3:2414], rep(1:(length(sed_b1[3:2414])/12),each = 12),mean)
bur_media10<-tapply(sed_b10[3:2414], rep(1:(length(sed_b1[3:2414])/12),each = 12),mean)


tot_bur_media<-bur_media1+bur_media2+bur_media3+bur_media4+bur_media5+bur_media6+bur_media7+bur_media8+bur_media9+bur_media10
tot_bur_media

hgSilt<-silts*SEDhg 
hgPOM<- POMs*SEDhg 

VDSw<-silt_depos* hgSilt  #. Vd (m d-1)* silt (g m-3) * hg (ng g-1) = g m-2 d-1
VRSs<-silt_res *hgSilt

VDSw1<-POM_depos* hgPOM  #. Vd (m d-1)* silt (g m-3) * hg (ng g-1) = g m-2 d-1
VRSs1<-POM_res *hgPOM

B1<-a1*(VDSw$wn1-VRSs$sn1)/10^12
B11<-a1*(VDSw1$wn1-VRSs1$sn1)/10^12
t1<-B1+B11

bal_media1<-tapply(t1[3:2414], rep(1:(length(t1[3:2414])/12),each = 12),mean)



  bal_media1*365



89156791*0.00014031

652.9097 *22
89525806*0.00014031
plot(B1)
