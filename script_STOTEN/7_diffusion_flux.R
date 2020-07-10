setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\REference_OK\\')     #sim_cl

Ec<- 2*10^(-9)    # Diffusion coefficient, m2 s-1 
por<-0.6
L<-5/100

# f <- (Ec * A *por)/ L/por *(grad)
Lex<-L#/por

hgdiss<-read.csv('Dissolved_Divalent_Hg.csv', skip=1)
names(hgdiss)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hgDOC<-read.csv('DOC_Sorbed_Divalent_Hg.csv', skip=1)
names(hgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hg0<-read.csv('Elemental_Hg.csv', skip=1)
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

mehgdiss<-read.csv('Dissolved_Methyl_Hg.csv', skip=1)
names(mehgdiss)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

mehgDOC<-read.csv('DOC_Sorbed_Methyl_Hg.csv', skip=1)
names(mehgDOC)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                  'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                  'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                  'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')


mhgd<-mehgdiss + mehgDOC
hgd<-hgdiss + hgDOC 

time.steps <- mehgDOC[,1]; time.steps3 <- time.steps*24*3600
time.st_media<-tapply(time.steps3[2:147461], rep(1:(length(time.steps3[2:147461])/365),each = 365),mean)
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO2 <- as.POSIXct(time.st_media, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

grad1 <- (hgd$sn1/por - hgd$wn1)
grad2 <- (hgd$sn2/por - hgd$wn2)
grad3 <- (hgd$sn3/por - hgd$wn3)
grad4 <- (hgd$sn4/por - hgd$wn4)
grad5 <- (hgd$sn5/por - hgd$wn5)
grad6 <- (hgd$sc6/por - hgd$wc6)
grad7 <- (hgd$sc7/por - hgd$wc7)
grad8 <- (hgd$ss8/por - hgd$ws8)
grad9 <- (hgd$ss9/por - hgd$ws9)
grad10<- (hgd$ss10/por - hgd$ws10)

grad1_mhgd <- (mhgd$sn1/por - mhgd$wn1)
grad2_mhgd <- (mhgd$sn2/por - mhgd$wn2)
grad3_mhgd <- (mhgd$sn3/por - mhgd$wn3)
grad4_mhgd <- (mhgd$sn4/por - mhgd$wn4)
grad5_mhgd <- (mhgd$sn5/por - mhgd$wn5)
grad6_mhgd <- (mhgd$sc6/por - mhgd$wc6)
grad7_mhgd <- (mhgd$sc7/por - mhgd$wc7)
grad8_mhgd <- (mhgd$ss8/por - mhgd$ws8)
grad9_mhgd <- (mhgd$ss9/por - mhgd$ws9)
grad10_mhgd <- (mhgd$ss10/por - mhgd$ws10)


fd<- (Ec*por)/Lex   # m2 s-1 * m-1 <- m s-1

flux1<--fd*a1*(grad1)     ## m s-1 * m2 * ug m3 <- ug s-1 
flux2<--fd*a2*(grad2)     ## ug s-1 
flux3<--fd*a3*(grad3)     ## ug s-1 
flux4<--fd*a4*(grad4)     ## ug s-1 
flux5<--fd*a5*(grad5)     ## ug s-1 
flux6<--fd*a6*(grad6)     ## ug s-1 
flux7<--fd*a7*(grad7)     ## ug s-1 
flux8<--fd*a8*(grad8)     ## ug s-1 
flux9<--fd*a9*(grad9)     ## ug s-1 
flux10<--fd*a10*(grad10)     ## ug s-1   # negative flux : to the water

fd1_kgy<-(flux1*31536000)/10^9   ## ug m-3 s-1 
fd2_kgy<-(flux2*31536000)/10^9   ## ug m-3 s-1 
fd3_kgy<-(flux3*31536000)/10^9   ## ug m-3 s-1 
fd4_kgy<-(flux4*31536000)/10^9   ## ug m-3 s-1 
fd5_kgy<-(flux5*31536000)/10^9   ## ug m-3 s-1 
fd6_kgy<-(flux6*31536000)/10^9   ## ug m-3 s-1 
fd7_kgy<-(flux7*31536000)/10^9   ## ug m-3 s-1 
fd8_kgy<-(flux8*31536000)/10^9   ## ug m-3 s-1 
fd9_kgy<-(flux9*31536000)/10^9   ## ug m-3 s-1 
fd10_kgy<-(flux10*31536000)/10^9   ## ug m-3 s-1 


flux1_mhgd <- fd*a1*(grad1_mhgd)     ## ug s-1 
flux2_mhgd <- fd*a2*(grad2_mhgd)     ## ug s-1 
flux3_mhgd <- fd*a3*(grad3_mhgd)     ## ug s-1 
flux4_mhgd <- fd*a4*(grad4_mhgd)     ## ug s-1 
flux5_mhgd <- fd*a5*(grad5_mhgd)     ## ug s-1 
flux6_mhgd <- fd*a6*(grad6_mhgd)     ## ug s-1 
flux7_mhgd <- fd*a7*(grad7_mhgd)     ## ug s-1 
flux8_mhgd <- fd*a8*(grad8_mhgd)     ## ug s-1 
flux9_mhgd <- fd*a9*(grad9_mhgd)     ## ug s-1 
flux10_mhgd<- fd*a10*(grad10_mhgd)     ## ug s-1 

fd1_kgy_mhgd<-(flux1_mhgd*31536000)/10^9   ## ug m-3 s-1 
fd2_kgy_mhgd<-(flux2_mhgd*31536000)/10^9   ## ug m-3 s-1 
fd3_kgy_mhgd<-(flux3_mhgd*31536000)/10^9   ## ug m-3 s-1 
fd4_kgy_mhgd<-(flux4_mhgd*31536000)/10^9   ## ug m-3 s-1 
fd5_kgy_mhgd<-(flux5_mhgd*31536000)/10^9   ## ug m-3 s-1 
fd6_kgy_mhgd<-(flux6_mhgd*31536000)/10^9   ## ug m-3 s-1 
fd7_kgy_mhgd<-(flux7_mhgd*31536000)/10^9   ## ug m-3 s-1 
fd8_kgy_mhgd<-(flux8_mhgd*31536000)/10^9   ## ug m-3 s-1 
fd9_kgy_mhgd<-(flux9_mhgd*31536000)/10^9   ## ug m-3 s-1 
fd10_kgy_mhgd<-(flux10_mhgd*31536000)/10^9   ## ug m-3 s-1 



tot_flux2<- 

tot_flux<- fd1_kgy+fd2_kgy+fd3_kgy+fd4_kgy+fd5_kgy+fd6_kgy+fd7_kgy+fd8_kgy+fd9_kgy+fd10_kgy

tot_flux_mhgd<- fd1_kgy_mhgd+fd2_kgy_mhgd+fd3_kgy_mhgd+fd4_kgy_mhgd+fd5_kgy_mhgd+
               fd6_kgy_mhgd+fd7_kgy_mhgd+fd8_kgy_mhgd+fd9_kgy_mhgd+fd10_kgy_mhgd

tot_flux_all<-data.frame(rdate,fd1_kgy,fd2_kgy,fd3_kgy,fd4_kgy,fd5_kgy,fd6_kgy,fd7_kgy,fd8_kgy,fd9_kgy,fd10_kgy)
tot_flux_mhgd_all<-data.frame(rdate,fd1_kgy_mhgd,fd2_kgy_mhgd,fd3_kgy_mhgd,fd4_kgy_mhgd,fd5_kgy_mhgd,
  fd6_kgy_mhgd,fd7_kgy_mhgd,fd8_kgy_mhgd,fd9_kgy_mhgd,fd10_kgy_mhgd)

tot_flux_mhgd_all[121,]
tot_flux_all[121,]


colMeans(tot_flux_mhgd_all[1431:1442,2:11])
colMeans(tot_flux_all[1431:1442,2:11])

plot(tot_flux)
write.table(tot_flux, file<-'diffusion_flux.txt')
write.table(tot_flux_mhgd, file<-'diffusion_flux_mehg.txt')
# f <- (Ec * A *por)/ L/por *(grad)
  
tot_flux_media<-tapply(tot_flux[2:2413], 
                            rep(1:(length(tot_flux[2:2413])/12),each <- 12),mean)


tot_flux_mhgd_media<-tapply(tot_flux_mhgd[2:2413], 
                       rep(1:(length(tot_flux_mhgd[2:2413])/12),each <- 12),mean)
getwd()
write.table(tot_flux_media, file<-'diffusion_flux_med.txt')
write.table(tot_flux_mhgd_media, file<-'diffusion_flux_mehg_med.txt')

tot_flux_mhgd_media[121,]
tot_flux_media[121,]
