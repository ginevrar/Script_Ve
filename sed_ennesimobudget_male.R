##92.4% of re-suspension (1.13 10^12 g year?1)
# occurs in the northern basin and 7.6% from the southern basin (9.27 10^10 g year?1).

#da output n n 242 strano (21^ anno)

#setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')
#setwd('C:/Users/Acer/Dropbox/NNN61/MenoDep4/bobo')
#setwd('C:\\Users\\Acer\\Dropbox\\NNN61\\PiuRes12\\d')    #')annuale
setwd('C:/Users/Acer/Dropbox/NewVenice20/l')
setwd('C:\\Users\\Acer\\Desktop\\last\\CL')     #sim_cl
hg<-read.csv('Total_Hg.csv', skip=1,header=FALSE)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

SEDhg<-read.csv("Total_Sorbed_Divalent_Hg_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(SEDhg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10') #ng/g

burial<-read.csv("Sediment_Burial_Velocity.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(burial)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

sands<-read.csv("Sands.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(sands)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
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

#fraction of POM
fPOM  <-POMs/TOTs; fsilt <-silts/TOTs
POM_perc<-POMs/TOTs*100

ksilt<-1.5*10^5; kpom<-2*10^5; kdoc<-10000

partden1=1+(0.000001*((ksilt*silts)+(sands)+(kpom*POMs)+(kdoc*3.19)))
faq=1./partden1
fsilt=(0.000001*ksilt*silts)/partden1
fsand=(0.000001*1*sands)/partden1
fpom= (0.000001*kpom*POMs)/partden1
fdoc=(0.000001*kdoc*3.19)/partden1


head(fsilt+fpom+fsand+faq+fdoc)

fsilt+fpom+fdoc+faq+fsand


fsiltp <-fsilt/(fsilt+fpom+fsand)
fpomp <- fpom /(fsilt+fpom+fsand)
fsandp <-fsand/(fsilt+fpom+fsand)

fsiltp+fpomp+fsandp

time.steps <- hg$time;time.steps3 <- time.steps*24*3600; 
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

#area ans depths
a1<-4.32E+07;a2<-3.53E+07;a3<-3.13E+07;a4<-8.90E+06;a5<-2.22E+07;a6<-5.43E+07;a7<-1.15E+08;a8<-3.17E+07
a9<-2.95E+07;a10<-4.06E+07
area<-a1+a2+a3+a4+a5+a6+a7+a8+a9+a10
d1<-1.26; d2<-.78; d3<-3.35; d4<-.64; d5<-1.03; d6<-1.64; d7<-1.84; d8<-0.89; d9<-0.69; d10<-1.71

# DEPOSITION VELOCITIES # m d-1  
POM_depo1_m_day<-POM_depos$wn1; POM_depo2_m_day<-POM_depos$wn2  #depo POM m/day
POM_depo3_m_day<-POM_depos$wn3; POM_depo4_m_day<-POM_depos$wn4
POM_depo5_m_day<-POM_depos$wn5; POM_depo6_m_day<-POM_depos$wc6
POM_depo7_m_day<-POM_depos$wc7; POM_depo8_m_day<-POM_depos$ws8
POM_depo9_m_day<-POM_depos$ws9; POM_depo10_m_day<-POM_depos$ws10
 
silt_depo1_m_day<-silt_depos$wn1; silt_depo2_m_day<-silt_depos$wn2  #depo silt m/day
silt_depo3_m_day<-silt_depos$wn3; silt_depo4_m_day<-silt_depos$wn4
silt_depo5_m_day<-silt_depos$wn5; silt_depo6_m_day<-silt_depos$wc6
silt_depo7_m_day<-silt_depos$wc7; silt_depo8_m_day<-silt_depos$ws8
silt_depo9_m_day<-silt_depos$ws9; silt_depo10_m_day<-silt_depos$ws10

sand_depo1_m_day<-sand_depos$wn1; sand_depo2_m_day<-sand_depos$wn2 #depo sand m/day
sand_depo3_m_day<-sand_depos$wn3; sand_depo4_m_day<-sand_depos$wn4
sand_depo5_m_day<-sand_depos$wn5; sand_depo6_m_day<-sand_depos$wc6
sand_depo7_m_day<-sand_depos$wc7; sand_depo8_m_day<-sand_depos$ws8
sand_depo9_m_day<-sand_depos$ws9; sand_depo10_m_day<-sand_depos$ws10

#--------------------------------------------------burial
##
hgpom_dep1 <-(POM_depo1_m_day *Phgs$wn1)/10^3  #m/day *ug/m3 = ug/m2d
hgpom_dep2<- (POM_depo2_m_day *Phgs$wn2)/10^3
hgpom_dep3<- (POM_depo3_m_day *Phgs$wn3)/10^3
hgpom_dep4<- (POM_depo4_m_day *Phgs$wn4)/10^3
hgpom_dep5<- (POM_depo5_m_day *Phgs$wn5)/10^3
hgpom_dep6<- (POM_depo6_m_day *Phgs$wc6)/10^3
hgpom_dep7<- (POM_depo7_m_day *Phgs$wc7)/10^3
hgpom_dep8<- (POM_depo8_m_day *Phgs$ws8)/10^3
hgpom_dep9<- (POM_depo9_m_day *Phgs$ws9)/10^3
hgpom_dep10<- (POM_depo10_m_day *Phgs$ws10)/10^3


hgpom_dep1c<- ((POM_depo1_m_day/d1) *hg$wn1*fpom$wn1 *d1)/10^3        #1/day *ug/m3*m3/10^3 = mg/d 
hgpom_dep2c<- ((POM_depo2_m_day/d2) *hg$wn2*fpom$wn2 *d2)/10^3      
hgpom_dep3c<- ((POM_depo3_m_day/d3) *hg$wn3*fpom$wn3 *d3)/10^3       
hgpom_dep4c<- ((POM_depo4_m_day/d4) *hg$wn4*fpom$wn4 *d4)/10^3      
hgpom_dep5c<- ((POM_depo5_m_day/d5) *hg$wn5*fpom$wn5 *d5)/10^3   
hgpom_dep6c<- ((POM_depo6_m_day/d6) *hg$wc6*fpom$wc6 *d6)/10^3       
hgpom_dep7c<- ((POM_depo7_m_day/d7) *hg$wc7*fpom$wc7 *d7)/10^3
hgpom_dep8c<- ((POM_depo8_m_day/d8) *hg$ws8*fpom$ws8 *d8)/10^3
hgpom_dep9c<- ((POM_depo9_m_day/d9) *hg$ws9*fpom$ws9 *d9)/10^3
hgpom_dep10c<- ((POM_depo10_m_day/d10) *hg$ws10*fpom$ws10 *d10)/10^3

plot(hgpom_dep1c)
plot(hgpom_dep1*a1/10^9)

TOT_depC<-(hgpom_dep1c+hgpom_dep2c+hgpom_dep3c+hgpom_dep4c+hgpom_dep5c+hgpom_dep6c+
hgpom_dep7c+hgpom_dep8c+hgpom_dep9c+hgpom_dep10c)*365

plot(Phgs$wn1,type='l', ylim=c(0,40))
par(new=T)
plot(Phgs$wn1*fpomp$wn1,type='l', ylim=c(0,40), col='darkgreen')
par(new=T)
plot(Phgs$wn1*fsiltp$wn1,type='l', ylim=c(0,40), col='blue')
par(new=T)
plot(Phgs$wn1*fsandp$wn1,type='l', ylim=c(0,40), col='yellow')

zz<-(Phgs$wc6*fpomp$wc6)+(Phgs$wc6*fsiltp$wc6)+(Phgs$wc6*fsandp$wc6)
plot(Phgs$wc6, type='l')
par(new=T)
plot(zz, col=2, type='l')

head(Phgs$wc6, 255)
head(fpomp$wc6, 255)
plot(head(Phgs$wc6, 255),type='l')
plot(head(Phgs$wn2, 255),type='l')
plot(head(Phgs$wn3, 255),type='l')


hgsand_dep1 <-(sand_depo1_m_day *Phgs$wn1)/10^3    #1/day *ug/m3*m = ug/m2d
hgsand_dep2<- (sand_depo2_m_day *Phgs$wn2)/10^3 
hgsand_dep3<- (sand_depo3_m_day *Phgs$wn3)/10^3 
hgsand_dep4<- (sand_depo4_m_day *Phgs$wn4)/10^3
hgsand_dep5<- (sand_depo5_m_day *Phgs$wn5)/10^3
hgsand_dep6<- (sand_depo6_m_day *Phgs$wc6)/10^3
hgsand_dep7<- (sand_depo7_m_day *Phgs$wc7)/10^3
hgsand_dep8<- (sand_depo8_m_day *Phgs$ws8)/10^3
hgsand_dep9<- (sand_depo9_m_day *Phgs$ws9)/10^3
hgsand_dep10<- (sand_depo10_m_day *Phgs$ws10)/10^3

hgsilt_dep1<- (silt_depo1_m_day *Phgs$wn1)/10^3   #1/day *ug/m3*m = ug/m2d
hgsilt_dep2<- (silt_depo2_m_day *Phgs$wn2)/10^3
hgsilt_dep3<- (silt_depo3_m_day *Phgs$wn3)/10^3
hgsilt_dep4<- (silt_depo4_m_day *Phgs$wn4)/10^3 
hgsilt_dep5<- (silt_depo5_m_day *Phgs$wn5)/10^3
hgsilt_dep6<- (silt_depo6_m_day *Phgs$wc6)/10^3
hgsilt_dep7<- (silt_depo7_m_day *Phgs$wc7)/10^3
hgsilt_dep8<- (silt_depo8_m_day *Phgs$ws8)/10^3
hgsilt_dep9<- (silt_depo9_m_day *Phgs$ws9)/10^3
hgsilt_dep10<- (silt_depo10_m_day *Phgs$ws10)/10^3

plot(hgpom_dep1b*a1/10^9)

hgpom_dep1b <-(POM_depo1_m_day *POMs$wn1*SEDhg$wn1)/10^6   #m/day*ng/m3*m*g/m3  = mg/m2d
hgpom_dep2b<- (POM_depo2_m_day *POMs$wn2*SEDhg$wn2)/10^6
hgpom_dep3b<- (POM_depo3_m_day *POMs$wn3*SEDhg$wn3)/10^6
hgpom_dep4b<- (POM_depo3_m_day *POMs$wn4*SEDhg$wn4)/10^6
hgpom_dep5b<- (POM_depo5_m_day *POMs$wn5*SEDhg$wn5)/10^6
hgpom_dep6b<- (POM_depo6_m_day *POMs$wc6*SEDhg$wc6)/10^6
hgpom_dep7b<- (POM_depo7_m_day *POMs$wc7*SEDhg$wc7)/10^6
hgpom_dep8b<- (POM_depo8_m_day *POMs$ws8*SEDhg$ws8)/10^6
hgpom_dep9b<- (POM_depo9_m_day *POMs$ws9*SEDhg$ws9)/10^6
hgpom_dep10b<- (POM_depo10_m_day *POMs$ws10*SEDhg$ws10)/10^6

plot(hgpom_dep6b)
head(hgpom_dep6b)

head(POMs$wc6)
head(SEDhg$wc6)

hgsilt_dep1b <-(silt_depo1_m_day *silts$wn1*SEDhg$wn1)/10^6  #m/day *ng/g*m*g/m3  = mg/m2d
hgsilt_dep2b<- (silt_depo2_m_day *silts$wn2*SEDhg$wn2)/10^6
hgsilt_dep3b<- (silt_depo3_m_day *silts$wn3*SEDhg$wn3)/10^6
hgsilt_dep4b<- (silt_depo3_m_day *silts$wn4*SEDhg$wn4)/10^6
hgsilt_dep5b<- (silt_depo5_m_day *silts$wn5*SEDhg$wn5)/10^6
hgsilt_dep6b<- (silt_depo6_m_day *silts$wc6*SEDhg$wc6)/10^6
hgsilt_dep7b<- (silt_depo7_m_day *silts$wc7*SEDhg$wc7)/10^6
hgsilt_dep8b<- (silt_depo8_m_day *silts$ws8*SEDhg$ws8)/10^6
hgsilt_dep9b<- (silt_depo9_m_day *silts$ws9*SEDhg$ws9)/10^6
hgsilt_dep10b<- (silt_depo10_m_day *silts$ws10*SEDhg$ws10)/10^6

hgsand_dep1b <-(sand_depo1_m_day *sands$wn1*SEDhg$wn1)/10^6 #m/day *ng/m3*m*g/m3 /10^6= mg/m2d
hgsand_dep2b<- (sand_depo2_m_day *sands$wn2*SEDhg$wn2)/10^6
hgsand_dep3b<- (sand_depo3_m_day *sands$wn3*SEDhg$wn3)/10^6
hgsand_dep4b<- (sand_depo3_m_day *sands$wn4*SEDhg$wn4)/10^6
hgsand_dep5b<- (sand_depo5_m_day *sands$wn5*SEDhg$wn5)/10^6
hgsand_dep6b<- (sand_depo6_m_day *sands$wc6*SEDhg$wc6)/10^6
hgsand_dep7b<- (sand_depo7_m_day *sands$wc7*SEDhg$wc7)/10^6
hgsand_dep8b<- sand_depo8_m_day *sands$ws8*SEDhg$ws8/10^6
hgsand_dep9b<- sand_depo9_m_day *sands$ws9*SEDhg$ws9/10^6
hgsand_dep10b<- sand_depo10_m_day *sands$ws10*SEDhg$ws10/10^6

head(silt_depo1_1_day*Phgs$wn1*fhgsilt*d1*365/10^9*a1)


hgsilt_dep1c<- ((silt_depo1_m_day/d1) *hg$wn1*fsilt$wn1*d1)/10^3        #1/day *ug/m3*m = ug/m2d 
hgsilt_dep2c<- ((silt_depo2_m_day/d2) *hg$wn2*fsilt$wn2*d2)/10^3   
hgsilt_dep3c<- ((silt_depo3_m_day/d3) *hg$wn3*fsilt$wn3*d3)/10^3    
hgsilt_dep4c<- ((silt_depo4_m_day/d4) *hg$wn4*fsilt$wn4*d4)/10^3      
hgsilt_dep5c<- ((silt_depo5_m_day/d5) *hg$wn5*fsilt$wn5*d5)/10^3   
hgsilt_dep6c<- ((silt_depo6_m_day/d6) *hg$wc6*fsilt$wc6*d6)/10^3      
hgsilt_dep7c<- ((silt_depo7_m_day/d7) *hg$wc7*fsilt$wc7*d7)/10^3
hgsilt_dep8c<- ((silt_depo8_m_day/d8) *hg$ws8*fsilt$ws8*d8)/10^3
hgsilt_dep9c<- ((silt_depo9_m_day/d9) *hg$ws9*fsilt$ws9*d9)/10^3
hgsilt_dep10c<- ((silt_depo10_m_day/d10) *hg$ws10*fsilt$ws10*d10)/10^3


TOT_depsiltC<-(hgsilt_dep1c+hgsilt_dep2c+hgsilt_dep3c+hgsilt_dep4c+hgsilt_dep5c+hgsilt_dep6c+
             hgsilt_dep7c+hgsilt_dep8c+hgsilt_dep9c+hgsilt_dep10c)

plot(TOT_depC+TOT_depsiltC)


plot(hgsilt_dep1b*a1/10^9)    #ug/m2d
plot(hgsilt_dep1c)    #kg d

#----------- RESUSpeNSION VELOCITIES  #res m/day
POM_res1_m_day<-POM_res$sn1; silt_res1_m_day<-silt_res$sn1;sand_res1_m_day<-sand_res$sn1
POM_res2_m_day<-POM_res$sn2 ;silt_res2_m_day<-silt_res$sn2;sand_res2_m_day<-sand_res$sn2
POM_res3_m_day<-POM_res$sn3; silt_res3_m_day<-silt_res$sn3;sand_res3_m_day<-sand_res$sn3
POM_res4_m_day<-POM_res$sn4; silt_res4_m_day<-silt_res$sn4;sand_res4_m_day<-sand_res$sn4
POM_res5_m_day<-POM_res$sn5; silt_res5_m_day<-silt_res$sn5;sand_res5_m_day<-sand_res$sn5
POM_res6_m_day<-POM_res$sc6; silt_res6_m_day<-silt_res$sc6;sand_res6_m_day<-sand_res$sc6
POM_res7_m_day<-POM_res$sc7; silt_res7_m_day<-silt_res$sc7;sand_res7_m_day<-sand_res$sc7
POM_res8_m_day<-POM_res$ss8; silt_res8_m_day<-silt_res$ss8;sand_res8_m_day<-sand_res$ss8
POM_res9_m_day<-POM_res$ss9; silt_res9_m_day<-silt_res$ss9;sand_res9_m_day<-sand_res$ss9
POM_res10_m_day<-POM_res$ss10; silt_res10_m_day<-silt_res$ss10;sand_res10_m_day<-sand_res$ss10
#-----------RESUSpeNSION RAtes
#hgpom_res1<- POM_res1_m_day*Phgs$sn1*fPOM$sn1  #m/day *ug/m3 = ug/m2d
#hgpom_res1*365/10^9*a1
#hgpom_res2<- POM_res2_m_day*Phgs$sn2*fhgPOM
#hgpom_res3<- POM_res3_m_day*Phgs$sn3*fhgPOM
#hgpom_res4<- POM_res4_m_day*Phgs$sn4*fhgPOM
#hgpom_res5<- POM_res5_m_day*Phgs$sn5*fhgPOM
#hgpom_res6<- POM_res6_m_day*Phgs$sc6*fhgPOM
#hgpom_res7<- POM_res7_m_day*Phgs$sc7*fhgPOM
#hgpom_res8<- POM_res8_m_day*Phgs$ss8*fhgPOM
#hgpom_res9<- POM_res9_m_day*Phgs$ss9*fhgPOM
#hgpom_res10<- POM_res10_m_day*Phgs$ss10*fhgPOM

#   [ng m-2 d-1] =  [ m d-1] * [g m-3] * [ng g-1]  /10^6 = mg m2d
hgpom_res1 <- (POM_res1_m_day*POMs$sn1*SEDhg$sn1)/10^6
hgpom_res2 <- (POM_res2_m_day*POMs$sn2*SEDhg$sn2)/10^6
hgpom_res3 <-(POM_res3_m_day*POMs$sn3*SEDhg$sn3)/10^6
hgpom_res4 <- (POM_res4_m_day*POMs$sn4*SEDhg$sn4)/10^6
hgpom_res5 <- (POM_res5_m_day*POMs$sn5*SEDhg$sn5)/10^6
hgpom_res6 <- (POM_res6_m_day*POMs$sc6*SEDhg$sc6)/10^6
hgpom_res7 <- (POM_res7_m_day*POMs$sc7*SEDhg$sc7)/10^6
hgpom_res8 <- (POM_res8_m_day*POMs$ss8*SEDhg$ss8)/10^6
hgpom_res9 <- (POM_res9_m_day*POMs$ss9*SEDhg$ss9)/10^6
hgpom_res10<- (POM_res10_m_day*POMs$ss10*SEDhg$ss10)/10^6

#hgpom_res1b <- POM_res1_m_day*POMs$sn1*fPOM$sn1*SEDhg$sn1/10^6

hgsilt_res1<- (silt_res1_m_day*silts$sn1*SEDhg$sn1)/10^6
hgsilt_res2<- (silt_res2_m_day*silts$sn2*SEDhg$sn2)/10^6
hgsilt_res3<- (silt_res3_m_day*silts$sn3*SEDhg$sn3)/10^6
hgsilt_res4<- (silt_res4_m_day*silts$sn4*SEDhg$sn4)/10^6
hgsilt_res5<- (silt_res5_m_day*silts$sn5*SEDhg$sn5)/10^6
hgsilt_res6<- (silt_res6_m_day*silts$sc6*SEDhg$sc6)/10^6
hgsilt_res7<- (silt_res7_m_day*silts$sc7*SEDhg$sc7)/10^6
hgsilt_res8<- (silt_res8_m_day*silts$ss8*SEDhg$ss8)/10^6
hgsilt_res9<- (silt_res9_m_day*silts$ss9*SEDhg$ss9)/10^6
hgsilt_res10<- (silt_res10_m_day*silts$ss10*SEDhg$ss10)/10^6
#hgsilt_res1b<- silt_res1_m_day*silts$sn1*fsilt$sn1*SEDhg$sn1/10^6
#hgsilt_res1c<- silt_res1_m_day*Phgs$sn1*fsilt$sn1


TOT_ressiltC<-(hgsilt_res1+hgsilt_res2+hgsilt_res3+hgsilt_res4+hgsilt_res5+hgsilt_res6+
                 hgsilt_res7+hgsilt_res8+hgsilt_res9+hgsilt_res10)

TOT_depsiltC<-(hgsilt_dep1c+hgsilt_dep2c+hgsilt_dep3c+hgsilt_dep4c+hgsilt_dep5c+hgsilt_dep6c+
                 hgsilt_dep7c+hgsilt_dep8c+hgsilt_dep9c+hgsilt_dep10c)


hgsand_res1<- sand_res1_m_day*sands$sn1*SEDhg$sn1/10^6
hgsand_res2<- sand_res2_m_day*sands$sn2*SEDhg$sn2/10^6
hgsand_res3<- sand_res3_m_day*sands$sn3*SEDhg$sn3/10^6
hgsand_res4<- sand_res4_m_day*sands$sn4*SEDhg$sn4/10^6
hgsand_res5<- sand_res5_m_day*sands$sn5*SEDhg$sn5/10^6
hgsand_res6<- sand_res6_m_day*sands$sc6*SEDhg$sc6/10^6
hgsand_res7<- sand_res7_m_day*sands$sc7*SEDhg$sc7/10^6
hgsand_res8<- sand_res8_m_day*sands$ss8*SEDhg$ss8/10^6
hgsand_res9<- sand_res9_m_day*sands$ss9*SEDhg$ss9/10^6
hgsand_res10<- sand_res10_m_day*sands$ss10*SEDhg$ss10/10^6

#depo ug/m2d  - res ug/m2d
hgbal_1 <-(hgpom_dep1c-hgpom_res1) + (hgsilt_dep1c-hgsilt_res1)+(hgsand_dep1-hgsand_res1)   #mg/m2d
hgbal_2 <-(hgpom_dep2c-hgpom_res2) + (hgsilt_dep2c-hgsilt_res2)+(hgsand_dep2-hgsand_res2)    #mg/m2d
hgbal_3 <-(hgpom_dep3c-hgpom_res3) + (hgsilt_dep3c-hgsilt_res3)+(hgsand_dep3-hgsand_res3)#ug/m2d
hgbal_4 <-(hgpom_dep4c-hgpom_res4) + (hgsilt_dep4c-hgsilt_res4)+(hgsand_dep4-hgsand_res4)#ug/m2d
hgbal_5 <-(hgpom_dep5c-hgpom_res5) + (hgsilt_dep5c-hgsilt_res5)+(hgsand_dep5-hgsand_res5)#ug/m2d
hgbal_6 <-(hgpom_dep6c-hgpom_res6) + (hgsilt_dep6c-hgsilt_res6)+(hgsand_dep6-hgsand_res6)#ug/m2d
hgbal_7 <-(hgpom_dep7c-hgpom_res7) + (hgsilt_dep7c-hgsilt_res7)+(hgsand_dep7-hgsand_res7)#ug/m2d
hgbal_8 <-(hgpom_dep8c-hgpom_res8) + (hgsilt_dep8c-hgsilt_res8)+(hgsand_dep8-hgsand_res8)#ug/m2d
hgbal_9 <-(hgpom_dep9c-hgpom_res9) + (hgsilt_dep9c-hgsilt_res9)+(hgsand_dep9-hgsand_res9)#ug/m2d
hgbal_10 <-(hgpom_dep10c-hgpom_res10) + (hgsilt_dep10c-hgsilt_res10)+(hgsand_dep10-hgsand_res10)#ug/m2d
# hgbal_n [ug m2d] * [m2] = hgbal [ug d-1]



#depo ug/m2d  - res ug/m2d
hgbal_1b <-(hgpom_dep1b-hgpom_res1) + (hgsilt_dep1b-hgsilt_res1)+(hgsand_dep1b-hgsand_res1) #mg/m2d
hgbal_2b <-(hgpom_dep2b-hgpom_res2) + (hgsilt_dep2b-hgsilt_res2)+(hgsand_dep2b-hgsand_res2) #mg/m2d
hgbal_3b <-(hgpom_dep3b-hgpom_res3) + (hgsilt_dep3b-hgsilt_res3)+(hgsand_dep3b-hgsand_res3) 
hgbal_4b <-(hgpom_dep4b-hgpom_res4) + (hgsilt_dep4b-hgsilt_res4)+(hgsand_dep4b-hgsand_res4) 
hgbal_5b <-(hgpom_dep5b-hgpom_res5) + (hgsilt_dep5b-hgsilt_res5)+(hgsand_dep5b-hgsand_res5) 
hgbal_6b <-(hgpom_dep6b-hgpom_res6) + (hgsilt_dep6b-hgsilt_res6)+(hgsand_dep6b-hgsand_res6) 
hgbal_7b <-(hgpom_dep7b-hgpom_res7) + (hgsilt_dep7b-hgsilt_res7)+(hgsand_dep7b-hgsand_res7) 
hgbal_8b <-(hgpom_dep8b-hgpom_res8) + (hgsilt_dep8b-hgsilt_res8)+(hgsand_dep8b-hgsand_res8) 
hgbal_9b <-(hgpom_dep9b-hgpom_res9) + (hgsilt_dep9b-hgsilt_res9)+(hgsand_dep9b-hgsand_res9) 
hgbal_10b <-(hgpom_dep10b-hgpom_res10) + (hgsilt_dep10b-hgsilt_res10)+(hgsand_dep10b-hgsand_res10) 


win.graph()
par(mfrow=c(2,5))
plot(hgbal_1b, type='l')
plot(hgbal_2b, type='l')
plot(hgbal_3b, type='l')
plot(hgbal_4b, type='l')
plot(hgbal_5b, type='l')
plot(hgbal_6b, type='l')
plot(hgbal_7b, type='l')
plot(hgbal_8b, type='l')
plot(hgbal_9b, type='l')
plot(hgbal_10b, type='l')

hgbal<- ((hgbal_1*a1)+(hgbal_2*a2)+(hgbal_3*a3)+(hgbal_4*a4)+(hgbal_5*a5)+(hgbal_6*a6)+
           (hgbal_7*a7)+(hgbal_8+a8)+(hgbal_9*a9)+(hgbal_10*a10))*365/10^6  #mg d  *365/10^6 =kg/d
plot(hgbal)


# hgbalb:  [mg m2d] * [m2] = hgbal [mg d-1] /10^6 = kgd

hgbalb<- ((hgbal_1b*a1)+(hgbal_2b*a2)+(hgbal_3b*a3)+(hgbal_4*a4)+
            (hgbal_5b*a5)+(hgbal_6b*a6)+
            (hgbal_7b*a7)+(hgbal_8b+a8)+(hgbal_9b*a9)+(hgbal_10b*a10))/10^6

plot(hgbal)
par(new=T)
plot(hgbalb, col=2)

head(hgbalb)

hgbal_kgy<-(hgbal/10^9)*365
hgbalb_kgy<-hgbalb*365

head(hgbal_kgy, 250)
head(hgbalb_kgy)

plot(hgbal_kgy, type='l')
abline(h=0, col=2)
str(hgbal_kgy)

hgbal_kgy_mean<-tapply(hgbal_kgy[1:2424], rep(1:(length(hgbal_kgy[1:2424])/12),each = 12),mean)

plot(hgbal_kgy_mean[1:200], type='l')

head(hgbal_kgy_mean,80)

abline(v=21, col=2)
dev.off()

max(hgbal_kgy_mean)
min(hgbal_kgy_mean)

tot_w_reser[3]
tot_w_reser[2]









