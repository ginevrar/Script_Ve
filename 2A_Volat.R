setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')

hg0<-read.csv("Elemental_Hg.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(hg0)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

evasion<-read.csv("Volatilization_Loss_Rate.csv", header=FALSE, skip = 1, sep = ",", dec=".")
names(evasion)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')     
               
# aree e depths boxes 
a1<-4.32E+07; a2<-3.53E+07; a3<-3.13E+07; a4<-8.90E+06; a5<-2.22E+07;a6<-5.43E+07; a7<-1.15E+08; a8<-3.17E+07; a9<-2.95E+07; a10<-4.06E+07
d1=1.26;d2=0.78;d3=3.35;d4=0.64;d5=1.03;d6=1.64;d7=1.84; d8=0.89;d9=0.69;d10=1.71
v1=a1*d1; v2=a2*d2; v3=a3*d3; v4=a4*d4; v5=a5*d5; v6=a6*d6; v7=a7*d7; v8=a8*d8; v9=a9*d9; v10=a10*d10
time.steps <- hg[,1]; time.steps3 <- time.steps*24*3600; TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01"); rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

# evasion [d-1] * [ug m-3] * [m3]-->ug d*365/10^9 -->kg y

volat1  <- (evasion$wn1*hg0$wn1*v1*365)/10^9;  volat2  <- (evasion$wn2*hg0$wn2*v2*365)/10^9
volat3  <- (evasion$wn3*hg0$wn3*v3*365)/10^9;  volat4  <- (evasion$wn4*hg0$wn4*v4*365)/10^9
volat5  <- (evasion$wn5*hg0$wn5*v5*365)/10^9;  volat6  <- (evasion$wn6*hg0$wc6*v6*365)/10^9
volat7  <- (evasion$wn7*hg0$wc7*v7*365)/10^9;  volat8  <- (evasion$wn8*hg0$ws8*v8*365)/10^9
volat9  <- (evasion$wn9*hg0$ws9*v9*365)/10^9; volat10 <- (evasion$wn10*hg0$ws10*v10*365)/10^9


vol<-cbind(volat1,volat2,volat3,volat4,volat5,volat6,volat7,volat8,volat9,volat10)
tot_vol<-rowSums(vol)

write.table(tot_vol,'volat.txt')

