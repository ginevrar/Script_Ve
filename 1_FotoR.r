
area<-411900000  #m2

#setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\New_Sim\\Reference_OK')     #sim_cl
#setwd('D:\\Ref_long_long')     #sim_cl

phRed<-read.csv("Photo_Reduction_Divalent_Hg.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(phRed)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

phDem<-read.csv("Photo_Reduction_Divalent_Hg.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(phDem)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10',
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')


hg0<-read.csv('Elemental_Hg.csv', skip=1)
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')


mehg<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
# aree boxes
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07;a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07
# depths boxes
d1=1.26;d2=0.78;d3=3.35;d4=0.64;d5=1.03;d6=1.64;d7=1.84; d8=0.89;d9=0.69;d10=1.71
 

time.steps <- hg[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
tail(rdate)

hgII <- hg-(mehg+hg0)

#str(hg_19)
phOX<-phRed/1.5*5.7

fotoridotto1   <-phRed[1:2427,]*hgII[1:2427,]    #ug m-3 * d-1 
fotoossidato1  <-phOX[1:2427,]*hg0[1:2427,]
fotodemetilato1<-phDem[1:2427,]*mehg[1:2427,]
phDem2<-phRed/(1.5*0.03)

plot(phDem$wn1)
plot(phDem2$wn1)

colMeans(fotoridotto1[1430:1441,2:11])
colMeans(fotoossidato1[1430:1441,2:11])
colMeans(fotodemetilato1[1430:1441,2:11])

rdate[1430:1441]

fotoridotto   <-phRed[433904:437497,]*hgII[433904:437497,]   #ug m-3 * d-1 
fotoossidato  <-phOX[433904:437497,]*hg0[433904:437497,]
fotodemetilato<-phDem[433904:437497,]*mehg[433904:437497,]

plot(fotoridotto$wn1,type='l')
plot(phOX$wn1,type='l')
plot(phDem$wn1,type='l')

colMeans(fotoossidato)
colMeans(fotodemetilato)
colMeans(fotoridotto)

plot(fotoossidato$wn1,type='l')
plot(fotodemetilato$wn1,type='l')
plot(fotoridotto$wn1,type='l')


df_phR<-data.frame(rdate,fotoridotto,fotoossidato,fotodemetilato)

write.table(df_phR,'Fotoreazioni.txt')

str(phRed)
str(hgII)

