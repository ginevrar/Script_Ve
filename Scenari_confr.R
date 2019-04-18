#setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\b')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\')

hg<-read.csv('Total_Hg.csv', skip=1)
names(hg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
mehg<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
#setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\b')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10b\\')

hgb<-read.csv('Total_Hg.csv', skip=1)
names(hgb)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

#setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\sZeroEM')     #sim_cl
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\ZeroEm')

hg_ze<-read.csv('Total_Hg.csv', skip=1)
names(hg_ze)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
             'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
             'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
             'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

mehg_ze<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg_ze)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
#setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\sHgCont')     #sim_ hg control - reduction
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\HgContr')

hg_contr<-read.csv('Total_Hg.csv', skip=1)
names(hg_contr)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

mehg_contr<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg_contr)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
#setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\sHgConst')     #sim_ hg constatn k 
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\ConstEm')

hg_hk<-read.csv('Total_Hg.csv', skip=1)
names(hg_hk)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')
mehg_hk<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg_hk)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                   'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                   'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                   'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

#setwd('C:\\Users\\Acer\\Desktop\\last\\kd_max\\NB_naoh6\\sA1B1')     #sim_ hg constatn k 
setwd('C:\\Users\\Acer\\Desktop\\last\\CL_10\\A1B1')

hg_A1B<-read.csv('Total_Hg.csv', skip=1)
names(hg_A1B)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

mehg_A1B<-read.csv('Methyl_Hg.csv', skip=1)
names(mehg_A1B)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                 'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                 'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                 'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

time.steps <- hg_contr[,1]; time.steps3 <- time.steps*24*3600
time.st_media<-tapply(time.steps3[2:147461], rep(1:(length(time.steps3[2:147461])/365),each = 365),mean)
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO2 <- as.POSIXct(time.st_media, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")

rdate[1382]

# ----- SCENARIO Hg Control Emissions -----------------------------------------------------------------------------------------------

diff_hg_contr1_sed_mhg<-mean((mehg$sn1[2403:2414] - mehg_contr$sn1[2403:2414])/mehg$sn1[2403:2414])*100
diff_hg_contr2_sed_mhg<-mean((mehg$sn2[2403:2414] - mehg_contr$sn2[2403:2414])/mehg$sn2[2403:2414])*100
diff_hg_contr3_sed_mhg<-mean((mehg$sn3[2403:2414] - mehg_contr$sn3[2403:2414])/mehg$sn3[2403:2414])*100
diff_hg_contr4_sed_mhg<-mean((mehg$sn4[2403:2414] - mehg_contr$sn4[2403:2414])/mehg$sn4[2403:2414])*100
diff_hg_contr5_sed_mhg<-mean((mehg$sn5[2403:2414] - mehg_contr$sn5[2403:2414])/mehg$sn5[2403:2414])*100
diff_hg_contr6_sed_mhg<-mean((mehg$sc6[2403:2414] - mehg_contr$sc6[2403:2414])/mehg$sc6[2403:2414])*100
diff_hg_contr7_sed_mhg<-mean((mehg$sc7[2403:2414] - mehg_contr$sc7[2403:2414])/mehg$sc7[2403:2414])*100
diff_hg_contr8_sed_mhg<-mean((mehg$ss8[2403:2414] - mehg_contr$ss8[2403:2414])/mehg$ss8[2403:2414])*100
diff_hg_contr9_sed_mhg<-mean((mehg$ss9[2403:2414] - mehg_contr$ss9[2403:2414])/mehg$ss9[2403:2414])*100
diff_hg_contr10_sed_mhg<-mean((mehg$ss10[2403:2414] - mehg_contr$ss10[2403:2414])/mehg$ss10[2403:2414])*100

diff_hg_contr_sed_mhg<-cbind(diff_hg_contr1_sed_mhg,diff_hg_contr2_sed_mhg,diff_hg_contr3_sed_mhg,diff_hg_contr4_sed_mhg,diff_hg_contr5_sed_mhg,
                          diff_hg_contr6_sed_mhg,diff_hg_contr7_sed_mhg,diff_hg_contr8_sed_mhg,diff_hg_contr9_sed_mhg,diff_hg_contr10_sed_mhg)

mean(diff_hg_contr_sed_mhg)

diff_hg_contr1_wat_mhg<-mean((mehg$wn1[2403:2414] - mehg_contr$wn1[2403:2414])/mehg$wn1[2403:2414])*100
diff_hg_contr2_wat_mhg<-mean((mehg$wn2[2403:2414] - mehg_contr$wn2[2403:2414])/mehg$wn2[2403:2414])*100
diff_hg_contr3_wat_mhg<-mean((mehg$wn3[2403:2414] - mehg_contr$wn3[2403:2414])/mehg$wn3[2403:2414])*100
diff_hg_contr4_wat_mhg<-mean((mehg$wn4[2403:2414] - mehg_contr$wn4[2403:2414])/mehg$wn4[2403:2414])*100
diff_hg_contr5_wat_mhg<-mean((mehg$wn5[2403:2414] - mehg_contr$wn5[2403:2414])/mehg$wn5[2403:2414])*100
diff_hg_contr6_wat_mhg<-mean((mehg$wc6[2403:2414] - mehg_contr$wc6[2403:2414])/mehg$wc6[2403:2414])*100
diff_hg_contr7_wat_mhg<-mean((mehg$wc7[2403:2414] - mehg_contr$wc7[2403:2414])/mehg$wc7[2403:2414])*100
diff_hg_contr8_wat_mhg<-mean((mehg$ws8[2403:2414] - mehg_contr$ws8[2403:2414])/mehg$ws8[2403:2414])*100
diff_hg_contr9_wat_mhg<-mean((mehg$ws9[2403:2414] - mehg_contr$ws9[2403:2414])/mehg$ws9[2403:2414])*100
diff_hg_contr10_wat_mhg<-mean((mehg$ws10[2403:2414] - mehg_contr$ws10[2403:2414])/mehg$ws10[2403:2414])*100

diff_hg_contr_wat_mhg<-cbind(diff_hg_contr1_wat_mhg,diff_hg_contr2_wat_mhg,diff_hg_contr3_wat_mhg,diff_hg_contr4_wat_mhg,diff_hg_contr5_wat_mhg,
                          diff_hg_contr6_wat_mhg,diff_hg_contr7_wat_mhg,diff_hg_contr8_wat_mhg,diff_hg_contr9_wat_mhg,diff_hg_contr10_wat_mhg)

mean(diff_hg_contr_wat_mhg)


diff_hg_contr1_sed<-mean((hg$sn1[2403:2414] - hg_contr$sn1[2403:2414])/hg$sn1[2403:2414])*100
diff_hg_contr2_sed<-mean((hg$sn2[2403:2414] - hg_contr$sn2[2403:2414])/hg$sn2[2403:2414])*100
diff_hg_contr3_sed<-mean((hg$sn3[2403:2414] - hg_contr$sn3[2403:2414])/hg$sn3[2403:2414])*100
diff_hg_contr4_sed<-mean((hg$sn4[2403:2414] - hg_contr$sn4[2403:2414])/hg$sn4[2403:2414])*100
diff_hg_contr5_sed<-mean((hg$sn5[2403:2414] - hg_contr$sn5[2403:2414])/hg$sn5[2403:2414])*100
diff_hg_contr6_sed<-mean((hg$sc6[2403:2414] - hg_contr$sc6[2403:2414])/hg$sc6[2403:2414])*100
diff_hg_contr7_sed<-mean((hg$sc7[2403:2414] - hg_contr$sc7[2403:2414])/hg$sc7[2403:2414])*100
diff_hg_contr8_sed<-mean((hg$ss8[2403:2414] - hg_contr$ss8[2403:2414])/hg$ss8[2403:2414])*100
diff_hg_contr9_sed<-mean((hg$ss9[2403:2414] - hg_contr$ss9[2403:2414])/hg$ss9[2403:2414])*100
diff_hg_contr10_sed<-mean((hg$ss10[2403:2414] - hg_contr$ss10[2403:2414])/hg$ss10[2403:2414])*100

diff_hg_contr_sed<-cbind(diff_hg_contr1_sed,diff_hg_contr2_sed,diff_hg_contr3_sed,diff_hg_contr4_sed,diff_hg_contr5_sed,
                      diff_hg_contr6_sed,diff_hg_contr7_sed,diff_hg_contr8_sed,diff_hg_contr9_sed,diff_hg_contr10_sed)

mean(diff_hg_contr_sed)

diff_hg_contr1_wat_hg<-mean((hg$wn1[2403:2414] - hg_contr$wn1[2403:2414])/hg$wn1[2403:2414])*100
diff_hg_contr2_wat_hg<-mean((hg$wn2[2403:2414] - hg_contr$wn2[2403:2414])/hg$wn2[2403:2414])*100
diff_hg_contr3_wat_hg<-mean((hg$wn3[2403:2414] - hg_contr$wn3[2403:2414])/hg$wn3[2403:2414])*100
diff_hg_contr4_wat_hg<-mean((hg$wn4[2403:2414] - hg_contr$wn4[2403:2414])/hg$wn4[2403:2414])*100
diff_hg_contr5_wat_hg<-mean((hg$wn5[2403:2414] - hg_contr$wn5[2403:2414])/hg$wn5[2403:2414])*100
diff_hg_contr6_wat_hg<-mean((hg$wc6[2403:2414] - hg_contr$wc6[2403:2414])/hg$wc6[2403:2414])*100
diff_hg_contr7_wat_hg<-mean((hg$wc7[2403:2414] - hg_contr$wc7[2403:2414])/hg$wc7[2403:2414])*100
diff_hg_contr8_wat_hg<-mean((hg$ws8[2403:2414] - hg_contr$ws8[2403:2414])/hg$ws8[2403:2414])*100
diff_hg_contr9_wat_hg<-mean((hg$ws9[2403:2414] - hg_contr$ws9[2403:2414])/hg$ws9[2403:2414])*100
diff_hg_contr10_wat_hg<-mean((hg$ws10[2403:2414] - hg_contr$ws10[2403:2414])/hg$ws10[2403:2414])*100

diff_hg_contr_wat_hg<-cbind(diff_hg_contr1_wat_hg,diff_hg_contr2_wat_hg,diff_hg_contr3_wat_hg,diff_hg_contr4_wat_hg,diff_hg_contr5_wat_hg,
                         diff_hg_contr6_wat_hg,diff_hg_contr7_wat_hg,diff_hg_contr8_wat_hg,diff_hg_contr9_wat_hg,diff_hg_contr10_wat_hg)

mean(diff_hg_contr_wat_hg)


# ----- SCENARIO Konstant Emissions -----------------------------------------------------------------------------------------------

diff_hg_hk1_sed_mhg<-mean((mehg$sn1[2403:2414] - mehg_hk$sn1[2403:2414])/mehg$sn1[2403:2414])*100
diff_hg_hk2_sed_mhg<-mean((mehg$sn2[2403:2414] - mehg_hk$sn2[2403:2414])/mehg$sn2[2403:2414])*100
diff_hg_hk3_sed_mhg<-mean((mehg$sn3[2403:2414] - mehg_hk$sn3[2403:2414])/mehg$sn3[2403:2414])*100
diff_hg_hk4_sed_mhg<-mean((mehg$sn4[2403:2414] - mehg_hk$sn4[2403:2414])/mehg$sn4[2403:2414])*100
diff_hg_hk5_sed_mhg<-mean((mehg$sn5[2403:2414] - mehg_hk$sn5[2403:2414])/mehg$sn5[2403:2414])*100
diff_hg_hk6_sed_mhg<-mean((mehg$sc6[2403:2414] - mehg_hk$sc6[2403:2414])/mehg$sc6[2403:2414])*100
diff_hg_hk7_sed_mhg<-mean((mehg$sc7[2403:2414] - mehg_hk$sc7[2403:2414])/mehg$sc7[2403:2414])*100
diff_hg_hk8_sed_mhg<-mean((mehg$ss8[2403:2414] - mehg_hk$ss8[2403:2414])/mehg$ss8[2403:2414])*100
diff_hg_hk9_sed_mhg<-mean((mehg$ss9[2403:2414] - mehg_hk$ss9[2403:2414])/mehg$ss9[2403:2414])*100
diff_hg_hk10_sed_mhg<-mean((mehg$ss10[2403:2414] - mehg_hk$ss10[2403:2414])/mehg$ss10[2403:2414])*100

diff_hg_hk_sed_mhg<-cbind(diff_hg_hk1_sed_mhg,diff_hg_hk2_sed_mhg,diff_hg_hk3_sed_mhg,diff_hg_hk4_sed_mhg,diff_hg_hk5_sed_mhg,
                      diff_hg_hk6_sed_mhg,diff_hg_hk7_sed_mhg,diff_hg_hk8_sed_mhg,diff_hg_hk9_sed_mhg,diff_hg_hk10_sed_mhg)

mean(diff_hg_hk_sed_mhg)

diff_hg_hk1_wat_mhg<-mean((mehg$wn1[2403:2414] - mehg_hk$wn1[2403:2414])/mehg$wn1[2403:2414])*100
diff_hg_hk2_wat_mhg<-mean((mehg$wn2[2403:2414] - mehg_hk$wn2[2403:2414])/mehg$wn2[2403:2414])*100
diff_hg_hk3_wat_mhg<-mean((mehg$wn3[2403:2414] - mehg_hk$wn3[2403:2414])/mehg$wn3[2403:2414])*100
diff_hg_hk4_wat_mhg<-mean((mehg$wn4[2403:2414] - mehg_hk$wn4[2403:2414])/mehg$wn4[2403:2414])*100
diff_hg_hk5_wat_mhg<-mean((mehg$wn5[2403:2414] - mehg_hk$wn5[2403:2414])/mehg$wn5[2403:2414])*100
diff_hg_hk6_wat_mhg<-mean((mehg$wc6[2403:2414] - mehg_hk$wc6[2403:2414])/mehg$wc6[2403:2414])*100
diff_hg_hk7_wat_mhg<-mean((mehg$wc7[2403:2414] - mehg_hk$wc7[2403:2414])/mehg$wc7[2403:2414])*100
diff_hg_hk8_wat_mhg<-mean((mehg$ws8[2403:2414] - mehg_hk$ws8[2403:2414])/mehg$ws8[2403:2414])*100
diff_hg_hk9_wat_mhg<-mean((mehg$ws9[2403:2414] - mehg_hk$ws9[2403:2414])/mehg$ws9[2403:2414])*100
diff_hg_hk10_wat_mhg<-mean((mehg$ws10[2403:2414] - mehg_hk$ws10[2403:2414])/mehg$ws10[2403:2414])*100

diff_hg_hk_wat_mhg<-cbind(diff_hg_hk1_wat_mhg,diff_hg_hk2_wat_mhg,diff_hg_hk3_wat_mhg,diff_hg_hk4_wat_mhg,diff_hg_hk5_wat_mhg,
                          diff_hg_hk6_wat_mhg,diff_hg_hk7_wat_mhg,diff_hg_hk8_wat_mhg,diff_hg_hk9_wat_mhg,diff_hg_hk10_wat_mhg)

mean(diff_hg_hk_wat_mhg)


diff_hg_hk1_sed<-mean((hg$sn1[2403:2414] - hg_hk$sn1[2403:2414])/hg$sn1[2403:2414])*100
diff_hg_hk2_sed<-mean((hg$sn2[2403:2414] - hg_hk$sn2[2403:2414])/hg$sn2[2403:2414])*100
diff_hg_hk3_sed<-mean((hg$sn3[2403:2414] - hg_hk$sn3[2403:2414])/hg$sn3[2403:2414])*100
diff_hg_hk4_sed<-mean((hg$sn4[2403:2414] - hg_hk$sn4[2403:2414])/hg$sn4[2403:2414])*100
diff_hg_hk5_sed<-mean((hg$sn5[2403:2414] - hg_hk$sn5[2403:2414])/hg$sn5[2403:2414])*100
diff_hg_hk6_sed<-mean((hg$sc6[2403:2414] - hg_hk$sc6[2403:2414])/hg$sc6[2403:2414])*100
diff_hg_hk7_sed<-mean((hg$sc7[2403:2414] - hg_hk$sc7[2403:2414])/hg$sc7[2403:2414])*100
diff_hg_hk8_sed<-mean((hg$ss8[2403:2414] - hg_hk$ss8[2403:2414])/hg$ss8[2403:2414])*100
diff_hg_hk9_sed<-mean((hg$ss9[2403:2414] - hg_hk$ss9[2403:2414])/hg$ss9[2403:2414])*100
diff_hg_hk10_sed<-mean((hg$ss10[2403:2414] - hg_hk$ss10[2403:2414])/hg$ss10[2403:2414])*100

diff_hg_hk_sed<-cbind(diff_hg_hk1_sed,diff_hg_hk2_sed,diff_hg_hk3_sed,diff_hg_hk4_sed,diff_hg_hk5_sed,
                      diff_hg_hk6_sed,diff_hg_hk7_sed,diff_hg_hk8_sed,diff_hg_hk9_sed,diff_hg_hk10_sed)

mean(diff_hg_hk_sed)

diff_hg_hk1_wat_hg<-mean((hg$wn1[2403:2414] - hg_hk$wn1[2403:2414])/hg$wn1[2403:2414])*100
diff_hg_hk2_wat_hg<-mean((hg$wn2[2403:2414] - hg_hk$wn2[2403:2414])/hg$wn2[2403:2414])*100
diff_hg_hk3_wat_hg<-mean((hg$wn3[2403:2414] - hg_hk$wn3[2403:2414])/hg$wn3[2403:2414])*100
diff_hg_hk4_wat_hg<-mean((hg$wn4[2403:2414] - hg_hk$wn4[2403:2414])/hg$wn4[2403:2414])*100
diff_hg_hk5_wat_hg<-mean((hg$wn5[2403:2414] - hg_hk$wn5[2403:2414])/hg$wn5[2403:2414])*100
diff_hg_hk6_wat_hg<-mean((hg$wc6[2403:2414] - hg_hk$wc6[2403:2414])/hg$wc6[2403:2414])*100
diff_hg_hk7_wat_hg<-mean((hg$wc7[2403:2414] - hg_hk$wc7[2403:2414])/hg$wc7[2403:2414])*100
diff_hg_hk8_wat_hg<-mean((hg$ws8[2403:2414] - hg_hk$ws8[2403:2414])/hg$ws8[2403:2414])*100
diff_hg_hk9_wat_hg<-mean((hg$ws9[2403:2414] - hg_hk$ws9[2403:2414])/hg$ws9[2403:2414])*100
diff_hg_hk10_wat_hg<-mean((hg$ws10[2403:2414] - hg_hk$ws10[2403:2414])/hg$ws10[2403:2414])*100

diff_hg_hk_wat_hg<-cbind(diff_hg_hk1_wat_hg,diff_hg_hk2_wat_hg,diff_hg_hk3_wat_hg,diff_hg_hk4_wat_hg,diff_hg_hk5_wat_hg,
                         diff_hg_hk6_wat_hg,diff_hg_hk7_wat_hg,diff_hg_hk8_wat_hg,diff_hg_hk9_wat_hg,diff_hg_hk10_wat_hg)

mean(diff_hg_hk_wat_hg)

# ----- SCENARIO ZERO Emissions -----------------------------------------------------------------------------------------------

diff_hg_ze1_sed_mhg<-mean((mehg$sn1[2403:2414] - mehg_ze$sn1[2403:2414])/mehg$sn1[2403:2414])*100
diff_hg_ze2_sed_mhg<-mean((mehg$sn2[2403:2414] - mehg_ze$sn2[2403:2414])/mehg$sn2[2403:2414])*100
diff_hg_ze3_sed_mhg<-mean((mehg$sn3[2403:2414] - mehg_ze$sn3[2403:2414])/mehg$sn3[2403:2414])*100
diff_hg_ze4_sed_mhg<-mean((mehg$sn4[2403:2414] - mehg_ze$sn4[2403:2414])/mehg$sn4[2403:2414])*100
diff_hg_ze5_sed_mhg<-mean((mehg$sn5[2403:2414] - mehg_ze$sn5[2403:2414])/mehg$sn5[2403:2414])*100
diff_hg_ze6_sed_mhg<-mean((mehg$sc6[2403:2414] - mehg_ze$sc6[2403:2414])/mehg$sc6[2403:2414])*100
diff_hg_ze7_sed_mhg<-mean((mehg$sc7[2403:2414] - mehg_ze$sc7[2403:2414])/mehg$sc7[2403:2414])*100
diff_hg_ze8_sed_mhg<-mean((mehg$ss8[2403:2414] - mehg_ze$ss8[2403:2414])/mehg$ss8[2403:2414])*100
diff_hg_ze9_sed_mhg<-mean((mehg$ss9[2403:2414] - mehg_ze$ss9[2403:2414])/mehg$ss9[2403:2414])*100
diff_hg_ze10_sed_mhg<-mean((mehg$ss10[2403:2414] - mehg_ze$ss10[2403:2414])/mehg$ss10[2403:2414])*100

diff_hg_ze_sed<-cbind(diff_hg_ze1_sed_mhg,diff_hg_ze2_sed_mhg,diff_hg_ze3_sed_mhg,diff_hg_ze4_sed_mhg,diff_hg_ze5_sed_mhg,
                    diff_hg_ze6_sed_mhg,diff_hg_ze7_sed_mhg,diff_hg_ze8_sed_mhg,diff_hg_ze9_sed_mhg,diff_hg_ze10_sed_mhg)

mean(diff_hg_ze_sed)

diff_hg_ze1_wat_mhg<-mean((mehg$wn1[2403:2414] - mehg_ze$wn1[2403:2414])/mehg$wn1[2403:2414])*100
diff_hg_ze2_wat_mhg<-mean((mehg$wn2[2403:2414] - mehg_ze$wn2[2403:2414])/mehg$wn2[2403:2414])*100
diff_hg_ze3_wat_mhg<-mean((mehg$wn3[2403:2414] - mehg_ze$wn3[2403:2414])/mehg$wn3[2403:2414])*100
diff_hg_ze4_wat_mhg<-mean((mehg$wn4[2403:2414] - mehg_ze$wn4[2403:2414])/mehg$wn4[2403:2414])*100
diff_hg_ze5_wat_mhg<-mean((mehg$wn5[2403:2414] - mehg_ze$wn5[2403:2414])/mehg$wn5[2403:2414])*100
diff_hg_ze6_wat_mhg<-mean((mehg$wc6[2403:2414] - mehg_ze$wc6[2403:2414])/mehg$wc6[2403:2414])*100
diff_hg_ze7_wat_mhg<-mean((mehg$wc7[2403:2414] - mehg_ze$wc7[2403:2414])/mehg$wc7[2403:2414])*100
diff_hg_ze8_wat_mhg<-mean((mehg$ws8[2403:2414] - mehg_ze$ws8[2403:2414])/mehg$ws8[2403:2414])*100
diff_hg_ze9_wat_mhg<-mean((mehg$ws9[2403:2414] - mehg_ze$ws9[2403:2414])/mehg$ws9[2403:2414])*100
diff_hg_ze10_wat_mhg<-mean((mehg$ws10[2403:2414] - mehg_ze$ws10[2403:2414])/mehg$ws10[2403:2414])*100

diff_hg_ze_wat_mhg<-cbind(diff_hg_ze1_wat_mhg,diff_hg_ze2_wat_mhg,diff_hg_ze3_wat_mhg,diff_hg_ze4_wat_mhg,diff_hg_ze5_wat_mhg,
                        diff_hg_ze6_wat_mhg,diff_hg_ze7_wat_mhg,diff_hg_ze8_wat_mhg,diff_hg_ze9_wat_mhg,diff_hg_ze10_wat_mhg)

mean(diff_hg_ze_wat_mhg)


diff_hg_ze1_sed<-mean((hg$sn1[2403:2414] - hg_ze$sn1[2403:2414])/hg$sn1[2403:2414])*100
diff_hg_ze2_sed<-mean((hg$sn2[2403:2414] - hg_ze$sn2[2403:2414])/hg$sn2[2403:2414])*100
diff_hg_ze3_sed<-mean((hg$sn3[2403:2414] - hg_ze$sn3[2403:2414])/hg$sn3[2403:2414])*100
diff_hg_ze4_sed<-mean((hg$sn4[2403:2414] - hg_ze$sn4[2403:2414])/hg$sn4[2403:2414])*100
diff_hg_ze5_sed<-mean((hg$sn5[2403:2414] - hg_ze$sn5[2403:2414])/hg$sn5[2403:2414])*100
diff_hg_ze6_sed<-mean((hg$sc6[2403:2414] - hg_ze$sc6[2403:2414])/hg$sc6[2403:2414])*100
diff_hg_ze7_sed<-mean((hg$sc7[2403:2414] - hg_ze$sc7[2403:2414])/hg$sc7[2403:2414])*100
diff_hg_ze8_sed<-mean((hg$ss8[2403:2414] - hg_ze$ss8[2403:2414])/hg$ss8[2403:2414])*100
diff_hg_ze9_sed<-mean((hg$ss9[2403:2414] - hg_ze$ss9[2403:2414])/hg$ss9[2403:2414])*100
diff_hg_ze10_sed<-mean((hg$ss10[2403:2414] - hg_ze$ss10[2403:2414])/hg$ss10[2403:2414])*100

diff_hg_ze_sed<-cbind(diff_hg_ze1_sed,diff_hg_ze2_sed,diff_hg_ze3_sed,diff_hg_ze4_sed,diff_hg_ze5_sed,
                    diff_hg_ze6_sed,diff_hg_ze7_sed,diff_hg_ze8_sed,diff_hg_ze9_sed,diff_hg_ze10_sed)

mean(diff_hg_ze_sed)

diff_hg_ze1_wat_hg<-mean((hg$wn1[2403:2414] - hg_ze$wn1[2403:2414])/hg$wn1[2403:2414])*100
diff_hg_ze2_wat_hg<-mean((hg$wn2[2403:2414] - hg_ze$wn2[2403:2414])/hg$wn2[2403:2414])*100
diff_hg_ze3_wat_hg<-mean((hg$wn3[2403:2414] - hg_ze$wn3[2403:2414])/hg$wn3[2403:2414])*100
diff_hg_ze4_wat_hg<-mean((hg$wn4[2403:2414] - hg_ze$wn4[2403:2414])/hg$wn4[2403:2414])*100
diff_hg_ze5_wat_hg<-mean((hg$wn5[2403:2414] - hg_ze$wn5[2403:2414])/hg$wn5[2403:2414])*100
diff_hg_ze6_wat_hg<-mean((hg$wc6[2403:2414] - hg_ze$wc6[2403:2414])/hg$wc6[2403:2414])*100
diff_hg_ze7_wat_hg<-mean((hg$wc7[2403:2414] - hg_ze$wc7[2403:2414])/hg$wc7[2403:2414])*100
diff_hg_ze8_wat_hg<-mean((hg$ws8[2403:2414] - hg_ze$ws8[2403:2414])/hg$ws8[2403:2414])*100
diff_hg_ze9_wat_hg<-mean((hg$ws9[2403:2414] - hg_ze$ws9[2403:2414])/hg$ws9[2403:2414])*100
diff_hg_ze10_wat_hg<-mean((hg$ws10[2403:2414] - hg_ze$ws10[2403:2414])/hg$ws10[2403:2414])*100

diff_hg_ze_wat_hg<-cbind(diff_hg_ze1_wat_hg,diff_hg_ze2_wat_hg,diff_hg_ze3_wat_hg,diff_hg_ze4_wat_hg,diff_hg_ze5_wat_hg,
                       diff_hg_ze6_wat_hg,diff_hg_ze7_wat_hg,diff_hg_ze8_wat_hg,diff_hg_ze9_wat_hg,diff_hg_ze10_wat_hg)

mean(diff_hg_ze_wat_hg)
# ----- SCENARIO A1B1 -----------------------------------------------------------------------------------------------
diff_a1B1_sed_mhg<-mean((mehg$sn1[2403:2414] - mehg_A1B$sn1[2403:2414])/mehg$sn1[2403:2414])*100
diff_a1B2_sed_mhg<-mean((mehg$sn2[2403:2414] - mehg_A1B$sn2[2403:2414])/mehg$sn2[2403:2414])*100
diff_a1B3_sed_mhg<-mean((mehg$sn3[2403:2414] - mehg_A1B$sn3[2403:2414])/mehg$sn3[2403:2414])*100
diff_a1B4_sed_mhg<-mean((mehg$sn4[2403:2414] - mehg_A1B$sn4[2403:2414])/mehg$sn4[2403:2414])*100
diff_a1B5_sed_mhg<-mean((mehg$sn5[2403:2414] - mehg_A1B$sn5[2403:2414])/mehg$sn5[2403:2414])*100
diff_a1B6_sed_mhg<-mean((mehg$sc6[2403:2414] - mehg_A1B$sc6[2403:2414])/mehg$sc6[2403:2414])*100
diff_a1B7_sed_mhg<-mean((mehg$sc7[2403:2414] - mehg_A1B$sc7[2403:2414])/mehg$sc7[2403:2414])*100
diff_a1B8_sed_mhg<-mean((mehg$ss8[2403:2414] - mehg_A1B$ss8[2403:2414])/mehg$ss8[2403:2414])*100
diff_a1B9_sed_mhg<-mean((mehg$ss9[2403:2414] - mehg_A1B$ss9[2403:2414])/mehg$ss9[2403:2414])*100
diff_a1B10_sed_mhg<-mean((mehg$ss10[2403:2414] - mehg_A1B$ss10[2403:2414])/mehg$ss10[2403:2414])*100

diff_a1B_sed<-cbind(diff_a1B1_sed,diff_a1B2_sed,diff_a1B3_sed,diff_a1B4_sed,diff_a1B5_sed,
                    diff_a1B6_sed,diff_a1B7_sed,diff_a1B8_sed,diff_a1B9_sed,diff_a1B10_sed)

mean(diff_a1B_sed)

diff_a1B1_wat_mhg<-mean((mehg$wn1[2403:2414] - mehg_A1B$wn1[2403:2414])/mehg$wn1[2403:2414])*100
diff_a1B2_wat_mhg<-mean((mehg$wn2[2403:2414] - mehg_A1B$wn2[2403:2414])/mehg$wn2[2403:2414])*100
diff_a1B3_wat_mhg<-mean((mehg$wn3[2403:2414] - mehg_A1B$wn3[2403:2414])/mehg$wn3[2403:2414])*100
diff_a1B4_wat_mhg<-mean((mehg$wn4[2403:2414] - mehg_A1B$wn4[2403:2414])/mehg$wn4[2403:2414])*100
diff_a1B5_wat_mhg<-mean((mehg$wn5[2403:2414] - mehg_A1B$wn5[2403:2414])/mehg$wn5[2403:2414])*100
diff_a1B6_wat_mhg<-mean((mehg$wc6[2403:2414] - mehg_A1B$wc6[2403:2414])/mehg$wc6[2403:2414])*100
diff_a1B7_wat_mhg<-mean((mehg$wc7[2403:2414] - mehg_A1B$wc7[2403:2414])/mehg$wc7[2403:2414])*100
diff_a1B8_wat_mhg<-mean((mehg$ws8[2403:2414] - mehg_A1B$ws8[2403:2414])/mehg$ws8[2403:2414])*100
diff_a1B9_wat_mhg<-mean((mehg$ws9[2403:2414] - mehg_A1B$ws9[2403:2414])/mehg$ws9[2403:2414])*100
diff_a1B10_wat_mhg<-mean((mehg$ws10[2403:2414] - mehg_A1B$ws10[2403:2414])/mehg$ws10[2403:2414])*100

diff_a1B_wat_mhg<-cbind(diff_a1B1_wat_mhg,diff_a1B2_wat_mhg,diff_a1B3_wat_mhg,diff_a1B4_wat_mhg,diff_a1B5_wat_mhg,
                    diff_a1B6_wat_mhg,diff_a1B7_wat_mhg,diff_a1B8_wat_mhg,diff_a1B9_wat_mhg,diff_a1B10_wat_mhg)

mean(diff_a1B_wat_mhg)


diff_a1B1_sed<-mean((hg$sn1[2403:2414] - hg_A1B$sn1[2403:2414])/hg$sn1[2403:2414])*100
diff_a1B2_sed<-mean((hg$sn2[2403:2414] - hg_A1B$sn2[2403:2414])/hg$sn2[2403:2414])*100
diff_a1B3_sed<-mean((hg$sn3[2403:2414] - hg_A1B$sn3[2403:2414])/hg$sn3[2403:2414])*100
diff_a1B4_sed<-mean((hg$sn4[2403:2414] - hg_A1B$sn4[2403:2414])/hg$sn4[2403:2414])*100
diff_a1B5_sed<-mean((hg$sn5[2403:2414] - hg_A1B$sn5[2403:2414])/hg$sn5[2403:2414])*100
diff_a1B6_sed<-mean((hg$sc6[2403:2414] - hg_A1B$sc6[2403:2414])/hg$sc6[2403:2414])*100
diff_a1B7_sed<-mean((hg$sc7[2403:2414] - hg_A1B$sc7[2403:2414])/hg$sc7[2403:2414])*100
diff_a1B8_sed<-mean((hg$ss8[2403:2414] - hg_A1B$ss8[2403:2414])/hg$ss8[2403:2414])*100
diff_a1B9_sed<-mean((hg$ss9[2403:2414] - hg_A1B$ss9[2403:2414])/hg$ss9[2403:2414])*100
diff_a1B10_sed<-mean((hg$ss10[2403:2414] - hg_A1B$ss10[2403:2414])/hg$ss10[2403:2414])*100

diff_a1B_sed<-cbind(diff_a1B1_sed,diff_a1B2_sed,diff_a1B3_sed,diff_a1B4_sed,diff_a1B5_sed,
                    diff_a1B6_sed,diff_a1B7_sed,diff_a1B8_sed,diff_a1B9_sed,diff_a1B10_sed)

mean(diff_a1B_sed)

diff_a1B1_wat_hg<-mean((hg$wn1[2403:2414] - hg_A1B$wn1[2403:2414])/hg$wn1[2403:2414])*100
diff_a1B2_wat_hg<-mean((hg$wn2[2403:2414] - hg_A1B$wn2[2403:2414])/hg$wn2[2403:2414])*100
diff_a1B3_wat_hg<-mean((hg$wn3[2403:2414] - hg_A1B$wn3[2403:2414])/hg$wn3[2403:2414])*100
diff_a1B4_wat_hg<-mean((hg$wn4[2403:2414] - hg_A1B$wn4[2403:2414])/hg$wn4[2403:2414])*100
diff_a1B5_wat_hg<-mean((hg$wn5[2403:2414] - hg_A1B$wn5[2403:2414])/hg$wn5[2403:2414])*100
diff_a1B6_wat_hg<-mean((hg$wc6[2403:2414] - hg_A1B$wc6[2403:2414])/hg$wc6[2403:2414])*100
diff_a1B7_wat_hg<-mean((hg$wc7[2403:2414] - hg_A1B$wc7[2403:2414])/hg$wc7[2403:2414])*100
diff_a1B8_wat_hg<-mean((hg$ws8[2403:2414] - hg_A1B$ws8[2403:2414])/hg$ws8[2403:2414])*100
diff_a1B9_wat_hg<-mean((hg$ws9[2403:2414] - hg_A1B$ws9[2403:2414])/hg$ws9[2403:2414])*100
diff_a1B10_wat_hg<-mean((hg$ws10[2403:2414] - hg_A1B$ws10[2403:2414])/hg$ws10[2403:2414])*100

diff_a1B_wat_hg<-cbind(diff_a1B1_wat_hg,diff_a1B2_wat_hg,diff_a1B3_wat_hg,diff_a1B4_wat_hg,diff_a1B5_wat_hg,
                        diff_a1B6_wat_hg,diff_a1B7_wat_hg,diff_a1B8_wat_hg,diff_a1B9_wat_hg,diff_a1B10_wat_hg)

mean(diff_a1B_wat_hg)

plot(rdate,hg$wn2,type='l',ylim = c(0,40))
par(new=T)
plot(rdate,hgb$wn2,type='l',col=6,ylim = c(0,40))
par(new=T)
plot(rdate,hg_ze$wn2,type='l',col=2,ylim = c(0,40))
par(new=T)
plot(rdate,hg_contr$wn2,type='l',col=3,ylim = c(0,40))
par(new=T)
plot(rdate,hg_hk$wn2,type='l',col=4,ylim = c(0,40))
par(new=T)
plot(rdate,hg_A1B$wn2,type='l',col=5,ylim = c(0,40))

plot(rdate[1382:2500],hg$wn1[1382:2500],type='l', ylim=c(6,20))
par(new=T)
plot(rdate[1382:2500],hg_ze$wn1[1382:2500],type='l', col='green', ylim=c(6,20),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_contr$wn1[1382:2500],type='l', col='cyan3', ylim=c(6,20),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_hk$wn1[1382:2500],type='l', col='yellow', ylim=c(6,20),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_A1B$wn1[1382:2500],type='l', col='red', ylim=c(6,20))

str(hg_ze$wn1)
str(hg$wn1)


plot(rdate[1382:2500],hg$sn1[1382:2500],type='l', ylim=c(300,1200))
par(new=T)
plot(rdate[1382:2500],hgb$sn1[1382:2500],type='l',col=2, ylim=c(300,1200))

plot(rdate[1382:2500],hg_ze$sn1[1382:2500],type='l', col='green', ylim=c(300,1200),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_contr$sn1[1382:2500],type='l', col='cyan3', ylim=c(300,1200),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_hk$sn1[1382:2500],type='l', col='yellow', ylim=c(300,1200),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_A1B$sn1[1382:2500],type='l', col='red', ylim=c(300,1200))




plot(rdate[1382:2500],hg$dsn3[1382:2500],type='l', ylim=c(320,610))
par(new=T)
plot(rdate[1382:2500],hg_ze$dsn3[1382:2500],type='l', col='green', ylim=c(320,610),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_contr$dsn3[1382:2500],type='l', col='cyan3', ylim=c(320,610),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_hk$dsn3[1382:2500],type='l', col='yellow', ylim=c(320,610),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_A1B$dsn3[1382:2500],type='l', col='red', ylim=c(320,610))


plot(rdate[1382:2500],hg$wn3[1382:2500],type='l', ylim=c(4,13))
par(new=T)
plot(rdate[1382:2500],hg_ze$wn3[1382:2500],type='l', col='green', ylim=c(4,13),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_contr$wn3[1382:2500],type='l', col='cyan3', ylim=c(4,13),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_hk$wn3[1382:2500],type='l', col='yellow', ylim=c(4,13),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_A1B$wn3[1382:2500],type='l', col='red', ylim=c(4,13))


summary(hg$wn3[1382:2500])

plot(hg$wn2[1442:2500],type='l', ylim=c(2,15))
par(new=T)
plot(hg_ze$wn2[1442:2500],type='l', col='green', ylim=c(2,15))
par(new=T)
plot(hg_contr$wn2[1442:2500],type='l', col='cyan3', ylim=c(2,15))
par(new=T)
plot(hg_hk$wn2[1442:2500],type='l', col='yellow', ylim=c(2,15))
par(new=T)
plot(hg_A1B$wn2[1442:2500],type='l', col='red', ylim=c(2,15))


plot(hg$wc6[1442:2500],type='l', ylim=c(2,15))
par(new=T)
plot(hg_ze$wc6[1442:2500],type='l', col='green', ylim=c(2,15))
par(new=T)
plot(hg_contr$wc6[1442:2500],type='l', col='cyan3', ylim=c(2,15))
par(new=T)
plot(hg_hk$wc6[1442:2500],type='l', col='yellow', ylim=c(2,15))
par(new=T)
plot(hg_A1B$wc6[1442:2500],type='l', col='red', ylim=c(2,15))


plot(hg$sn1[1442:2500],type='l', ylim=c(10,1000))
par(new=T)
plot(hg_ze$sn1[1442:2500],type='l', col='green', ylim=c(10,1000))
par(new=T)
plot(hg_contr$sn1[1442:2500],type='l', col='cyan3', ylim=c(10,1000))
par(new=T)
plot(hg_hk$sn1[1442:2500],type='l', col='yellow',ylim=c(10,1000))
par(new=T)
plot(hg_A1B$sn1[1442:2500],type='l', col='red', ylim=c(10,1000))


plot(hg$sn2[1442:2500],type='l', ylim=c(2,1500))
par(new=T)
plot(hg_ze$sn2[1442:2500],type='l', col='green', ylim=c(2,1500))
par(new=T)
plot(hg_contr$sn2[1442:2500],type='l', col='cyan3', ylim=c(2,1500))
par(new=T)
plot(hg_hk$sn2[1442:2500],type='l', col='yellow', ylim=c(2,1500))
par(new=T)
plot(hg_A1B$sn2[1442:2500],type='l', col='red', ylim=c(2,1500))


plot(hg$sc6[1442:2500],type='l', ylim=c(2,1500))
par(new=T)
plot(hg_ze$sc6[1442:2500],type='l', col='green', ylim=c(2,1500))
par(new=T)
plot(hg_contr$sc6[1442:2500],type='l', col='cyan3', ylim=c(2,1500))
par(new=T)
plot(hg_hk$sc6[1442:2500],type='l', col='yellow', ylim=c(2,1500))
par(new=T)
plot(hg_A1B$sc6[1442:2500],type='l', col='red', ylim=c(2,1500))


(hg$sn1[1382:2500])
par(new=T)
plot(rdate[1382:2500],hgb$sn1[1382:2500],type='l',col=2, ylim=c(300,1200))

plot(rdate[1382:2500],hg_ze$sn1[1382:2500],type='l', col='green', ylim=c(300,1200),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_contr$sn1[1382:2500],type='l', col='cyan3', ylim=c(300,1200),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_hk$sn1[1382:2500],type='l', col='yellow', ylim=c(300,1200),xaxt='n',yaxt='n')
par(new=T)
plot(rdate[1382:2500],hg_A1B$sn1[1382:2500],type='l', col='red', ylim=c(300,1200))



