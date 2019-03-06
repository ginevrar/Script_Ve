setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\b')     #sim_cl

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\sZeroEM')     #sim_cl
hg_ze<-read.csv('Total_Hg.csv', skip=1)
names(hg_ze)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')


setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\sHgCont')     #sim_ hg control - reduction
hg_hr<-read.csv('Total_Hg.csv', skip=1)
names(hg_hr)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\sHgConst')     #sim_ hg constatn k 
hg_hk<-read.csv('Total_Hg.csv', skip=1)
names(hg_hk)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')


setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\sA1B1')     #sim_ hg constatn k 
hg_A1B<-read.csv('Total_Hg.csv', skip=1)
names(hg_A1B)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')


plot(hg$wn1[1500:2500],type='l', ylim=c(2,15))
par(new=T)
plot(hg_ze$wn1[1500:2500],type='l', col='green', ylim=c(2,15))
par(new=T)
plot(hg_hr$wn1[1500:2500],type='l', col='cyan3', ylim=c(2,15))
par(new=T)
plot(hg_hk$wn1[1500:2500],type='l', col='yellow', ylim=c(2,15))
par(new=T)
plot(hg_A1B$wn1[1500:2500],type='l', col='red', ylim=c(2,15))


plot(hg$wn2[1500:2500],type='l', ylim=c(2,15))
par(new=T)
plot(hg_ze$wn2[1500:2500],type='l', col='green', ylim=c(2,15))
par(new=T)
plot(hg_hr$wn2[1500:2500],type='l', col='cyan3', ylim=c(2,15))
par(new=T)
plot(hg_hk$wn2[1500:2500],type='l', col='yellow', ylim=c(2,15))
par(new=T)
plot(hg_A1B$wn2[1500:2500],type='l', col='red', ylim=c(2,15))

plot(hg$wc6[1500:2500],type='l', ylim=c(2,15))
par(new=T)
plot(hg_ze$wc6[1500:2500],type='l', col='green', ylim=c(2,15))
par(new=T)
plot(hg_hr$wc6[1500:2500],type='l', col='cyan3', ylim=c(2,15))
par(new=T)
plot(hg_hk$wc6[1500:2500],type='l', col='yellow', ylim=c(2,15))
par(new=T)
plot(hg_A1B$wc6[1500:2500],type='l', col='red', ylim=c(2,15))



plot(hg$sn1[1500:2500],type='l', ylim=c(10,1000))
par(new=T)
plot(hg_ze$sn1[1500:2500],type='l', col='green', ylim=c(10,1000))
par(new=T)
plot(hg_hr$sn1[1500:2500],type='l', col='cyan3', ylim=c(10,1000))
par(new=T)
plot(hg_hk$sn1[1500:2500],type='l', col='yellow',ylim=c(10,1000))
par(new=T)
plot(hg_A1B$sn1[1500:2500],type='l', col='red', ylim=c(10,1000))


plot(hg$sn2[1500:2500],type='l', ylim=c(2,1500))
par(new=T)
plot(hg_ze$sn2[1500:2500],type='l', col='green', ylim=c(2,1500))
par(new=T)
plot(hg_hr$sn2[1500:2500],type='l', col='cyan3', ylim=c(2,1500))
par(new=T)
plot(hg_hk$sn2[1500:2500],type='l', col='yellow', ylim=c(2,1500))
par(new=T)
plot(hg_A1B$sn2[1500:2500],type='l', col='red', ylim=c(2,1500))

plot(hg$sc6[1500:2500],type='l', ylim=c(2,1500))
par(new=T)
plot(hg_ze$sc6[1500:2500],type='l', col='green', ylim=c(2,1500))
par(new=T)
plot(hg_hr$sc6[1500:2500],type='l', col='cyan3', ylim=c(2,1500))
par(new=T)
plot(hg_hk$sc6[1500:2500],type='l', col='yellow', ylim=c(2,1500))
par(new=T)
plot(hg_A1B$sc6[1500:2500],type='l', col='red', ylim=c(2,1500))


tail(hg)
 319.3765 296.5656 110.8579 244.5005 205.7636 178.7810 135.3409 112.6003 106.2637 56.3406
 tail(hg_ze)
 
 318.1617 295.5039 110.7159 243.9688 205.3206 178.5524 134.7765 112.4240 105.9113 56.35368 
 
 tail(hg_hr)
 325.5773 302.1864 112.7095 249.7608 209.7342 182.6122 137.3472 116.3724 110.0706 57.81689
 
 tail(hg_hk)
 337.2917 312.8448 116.5099 260.3895 217.6587 190.5059 140.9433 124.1989 117.7064 61.00734 
 
 tail(hg_A1B)
 351.6683 325.9287 121.2551 273.6234 227.4782 200.3397 145.3208 133.9592 127.1561 65.02450
