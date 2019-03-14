setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')
setwd('C:/Users/gi/Dropbox/NNN61/')
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\year')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')				 

TOTs<-read.csv("Total_Solids.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(TOTs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
               'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
               'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')	

Phgs<-read.csv("Total_Sorbed_Divalent_Hg.csv", header=FALSE, skip = 1,sep = ",", dec=".")
names(Phgs)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10','sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10',
               'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10','osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

time.steps <- TOTs[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1901-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

reservoir_hg_w1<-a1*d1*hg$wn1/10^9  # .hg (ug m-3) * (m3) /10^9 = kg
reservoir_hg_w2<-a2*d2*hg$wn2/10^9
reservoir_hg_w3<-a3*d3*hg$wn3/10^9
reservoir_hg_w4<-a4*d4*hg$wn4/10^9
reservoir_hg_w5<-a5*d5*hg$wn5/10^9
reservoir_hg_w6<-a6*d6*hg$wc6/10^9
reservoir_hg_w7<-a7*d7*hg$wc7/10^9
reservoir_hg_w8<-a8*d8*hg$ws8/10^9
reservoir_hg_w9<-a9*d9*hg$ws9/10^9
reservoir_hg_w10<-a10*d10*hg$ws10/10^9

reservoir_hg_s1<-a1*0.05*Phgs$sn1/10^9    #ug m-3 * m3/10^9 = kg
reservoir_hg_s2<-a2*0.05*Phgs$sn2/10^9
reservoir_hg_s3<-a3*0.05*Phgs$sn3/10^9
reservoir_hg_s4<-a4*0.05*Phgs$sn4/10^9
reservoir_hg_s5<-a5*0.05*Phgs$sn5/10^9
reservoir_hg_s6<-a6*0.05*Phgs$sc6/10^9
reservoir_hg_s7<-a7*0.05*Phgs$sc7/10^9
reservoir_hg_s8<-a8*0.05*Phgs$ss8/10^9
reservoir_hg_s9<-a9*0.05*Phgs$ss9/10^9
reservoir_hg_s10<-a10*0.05*Phgs$ss10/10^9


total_reservoir_W<-c(reservoir_hg_w1+reservoir_hg_w2+reservoir_hg_w3+reservoir_hg_w4+
  reservoir_hg_w5+reservoir_hg_w6+reservoir_hg_w7+reservoir_hg_w8+reservoir_hg_w9+reservoir_hg_w10)

total_reservoir_Sed<-c(reservoir_hg_s1+reservoir_hg_s2+reservoir_hg_s3+reservoir_hg_s4+
  reservoir_hg_s5+reservoir_hg_s6+reservoir_hg_s7+reservoir_hg_s8+reservoir_hg_s9+reservoir_hg_s10)

total_reservoir_Sed_media<-tapply(total_reservoir_Sed[1:2412], 
                            rep(1:(length(total_reservoir_Sed[1:2412])/12),each = 12),mean)


total_reservoir_W_media<-tapply(total_reservoir_W[1:2412], 
                                  rep(1:(length(total_reservoir_W[1:2412])/12),each = 12),mean)


write.table(total_reservoir_W, file='total_reservoir_W.txt')
write.table(total_reservoir_Sed, file='total_reservoir_Sed.txt')


#total_reservoir_Sed_media[2]-total_reservoir_Sed_media[1]+


ax<-seq(1900,2100)
plot(ax,dep_net,type='l', col='orange',lwd=2)
abline(h=0)
abline(v=1970)

plot(total_reservoir_Sed,type='l', col='brown',lwd=2, yaxt='n')
par(new=T)
plot(total_reservoir_W,type='l', col='blue')
abline(v=rdate[1020])

head(total_reservoir_Sed)
str(total_reservoir_Sed)
