setwd('C:/Users/Acer/Desktop/baba/buona/double_in/NNN61')

hgt<-read.csv('Total_Hg.csv', skip=1)
names(hgt)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hgp<-read.csv('Total_Sorbed_Divalent_Hg.csv', skip=1)
names(hgp)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
              'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
              'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
              'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

mehgp<-read.csv('Total_Sorbed_Methyl_Hg.csv', skip=1)
names(mehgp)<-c('time','wn1','wn2','wn3','wn4','wn5','wc6','wc7','ws8','ws9','ws10', 
                'sn1','sn2','sn3','sn4','sn5','sc6','sc7','ss8','ss9','ss10', 
                'dsn1','dsn2','dsn3','dsn4','dsn5','dsc6','dsc7','dss8','dss9','dss10',
                'osn1','osn2','osn3','osn4','osn5','osc6','osc7','oss8','oss9','oss10')

hg= hgt-hgp-mehgp

plot(rdate,hg$wn1)

time.steps <- hgt[,1]
time.steps3 <- time.steps*24*3600
TEMPO <- as.POSIXct(time.steps3, tz= "GMT", origin = "1900-01-01")
TEMPO[1:10]
rdate<-as.Date(TEMPO, tz= "GMT", format="%Y")
tail(rdate)


bnord_y1<-filter(Water_nord_df, Water_nord_df$Anno ==2002)
bnord_y2<-filter(Water_nord_df, Water_nord_df$Anno ==2003)
bnord_y3<-filter(Water_nord_df, Water_nord_df$Anno ==2004)
bnord_y4<-filter(Water_nord_df, Water_nord_df$Anno ==2005)
bnord_y5<-rep(NA,12)
bnord_y6<-filter(Water_nord_df, Water_nord_df$Anno ==2007)
bnord_y7<-filter(Water_nord_df, Water_nord_df$Anno ==2008)

bcnord_y1<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2002)
bcnord_y2<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2003)
bcnord_y3<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2004)
bcnord_y4<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2005)
bcnord_y5<-rep(NA,12)
bcnord_y6<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2007)
bcnord_y7<-filter(Water_centro_n_df, Water_centro_n_df$Anno ==2008)

bcsud_y1<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2002)
bcsud_y2<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2003)
bcsud_y3<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2004)
bcsud_y4<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2005)
bcsud_y5<-rep(NA,12)
bcsud_y6<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2007)
bcsud_y7<-filter(Water_centro_s_df, Water_centro_s_df$Anno ==2008)

bsud_y1<-filter(Water_sud_df, Water_sud_df$Anno ==2002)
bsud_y2<-filter(Water_sud_df, Water_sud_df$Anno ==2003)
bsud_y3<-filter(Water_sud_df, Water_sud_df$Anno ==2004)
bsud_y4<-filter(Water_sud_df, Water_sud_df$Anno ==2005)
bsud_y5<-rep(NA,12)
bsud_y6<-filter(Water_sud_df, Water_sud_df$Anno ==2007)
bsud_y7<-filter(Water_sud_df, Water_sud_df$Anno ==2008)

bnord_y1_m1<-filter(bnord_y1, bnord_y1$Mese ==1)
bnord_y1_m2<-filter(bnord_y1, bnord_y1$Mese ==2)
bnord_y1_m3<-filter(bnord_y1, bnord_y1$Mese ==3)
bnord_y1_m4<-filter(bnord_y1, bnord_y1$Mese ==4)
bnord_y1_m5<-filter(bnord_y1, bnord_y1$Mese ==5)
bnord_y1_m6<-filter(bnord_y1, bnord_y1$Mese ==6)
bnord_y1_m7<-filter(bnord_y1, bnord_y1$Mese ==7)
bnord_y1_m8<-filter(bnord_y1, bnord_y1$Mese ==8)
bnord_y1_m9<-filter(bnord_y1, bnord_y1$Mese ==9)
bnord_y1_m10<-filter(bnord_y1, bnord_y1$Mese ==10)
bnord_y1_m11<-filter(bnord_y1, bnord_y1$Mese ==11)
bnord_y1_m12<-filter(bnord_y1, bnord_y1$Mese ==12)

bnord_y2_m1<-filter(bnord_y2, bnord_y2$Mese ==1)
bnord_y2_m2<-filter(bnord_y2, bnord_y2$Mese ==2)
bnord_y2_m3<-filter(bnord_y2, bnord_y2$Mese ==3)
bnord_y2_m4<-filter(bnord_y2, bnord_y2$Mese ==4)
bnord_y2_m5<-filter(bnord_y2, bnord_y2$Mese ==5)
bnord_y2_m6<-filter(bnord_y2, bnord_y2$Mese ==6)
bnord_y2_m7<-filter(bnord_y2, bnord_y2$Mese ==7)
bnord_y2_m8<-filter(bnord_y2, bnord_y2$Mese ==8)
bnord_y2_m9<-filter(bnord_y2, bnord_y2$Mese ==9)
bnord_y2_m10<-filter(bnord_y2, bnord_y2$Mese ==10)
bnord_y2_m11<-filter(bnord_y2, bnord_y2$Mese ==11)
bnord_y2_m12<-filter(bnord_y2, bnord_y2$Mese ==12)

bnord_y3_m1<-filter(bnord_y3, bnord_y3$Mese ==1)
bnord_y3_m2<-filter(bnord_y3, bnord_y3$Mese ==2)
bnord_y3_m3<-filter(bnord_y3, bnord_y3$Mese ==3)
bnord_y3_m4<-filter(bnord_y3, bnord_y3$Mese ==4)
bnord_y3_m5<-filter(bnord_y3, bnord_y3$Mese ==5)
bnord_y3_m6<-filter(bnord_y3, bnord_y3$Mese ==6)
bnord_y3_m7<-filter(bnord_y3, bnord_y3$Mese ==7)
bnord_y3_m8<-filter(bnord_y3, bnord_y3$Mese ==8)
bnord_y3_m9<-filter(bnord_y3, bnord_y3$Mese ==9)
bnord_y3_m10<-filter(bnord_y3, bnord_y3$Mese ==10)
bnord_y3_m11<-filter(bnord_y3, bnord_y3$Mese ==11)
bnord_y3_m12<-filter(bnord_y3, bnord_y3$Mese ==12)

bnord_y4_m1<-filter(bnord_y4, bnord_y4$Mese ==1)
bnord_y4_m2<-filter(bnord_y4, bnord_y4$Mese ==2)
bnord_y4_m3<-filter(bnord_y4, bnord_y4$Mese ==3)
bnord_y4_m4<-filter(bnord_y4, bnord_y4$Mese ==4)
bnord_y4_m5<-filter(bnord_y4, bnord_y4$Mese ==5)
bnord_y4_m6<-filter(bnord_y4, bnord_y4$Mese ==6)
bnord_y4_m7<-filter(bnord_y4, bnord_y4$Mese ==7)
bnord_y4_m8<-filter(bnord_y4, bnord_y4$Mese ==8)
bnord_y4_m9<-filter(bnord_y4, bnord_y4$Mese ==9)
bnord_y4_m10<-filter(bnord_y4, bnord_y4$Mese ==10)
bnord_y4_m11<-filter(bnord_y4, bnord_y4$Mese ==11)
bnord_y4_m12<-filter(bnord_y4, bnord_y4$Mese ==12)

bnord_y6_m1<-filter(bnord_y6, bnord_y6$Mese ==1)
bnord_y6_m2<-filter(bnord_y6, bnord_y6$Mese ==2)
bnord_y6_m3<-filter(bnord_y6, bnord_y6$Mese ==3)
bnord_y6_m4<-filter(bnord_y6, bnord_y6$Mese ==4)
bnord_y6_m5<-filter(bnord_y6, bnord_y6$Mese ==5)
bnord_y6_m6<-filter(bnord_y6, bnord_y6$Mese ==6)
bnord_y6_m7<-filter(bnord_y6, bnord_y6$Mese ==7)
bnord_y6_m8<-filter(bnord_y6, bnord_y6$Mese ==8)
bnord_y6_m9<-filter(bnord_y6, bnord_y6$Mese ==9)
bnord_y6_m10<-filter(bnord_y6, bnord_y6$Mese ==10)
bnord_y6_m11<-filter(bnord_y6, bnord_y6$Mese ==11)
bnord_y6_m12<-filter(bnord_y6, bnord_y6$Mese ==12)

bnord_y7_m1<-filter(bnord_y7, bnord_y7$Mese ==1)
bnord_y7_m2<-filter(bnord_y7, bnord_y7$Mese ==2)
bnord_y7_m3<-filter(bnord_y7, bnord_y7$Mese ==3)
bnord_y7_m4<-filter(bnord_y7, bnord_y7$Mese ==4)
bnord_y7_m5<-filter(bnord_y7, bnord_y7$Mese ==5)
bnord_y7_m6<-filter(bnord_y7, bnord_y7$Mese ==6)
bnord_y7_m7<-filter(bnord_y7, bnord_y7$Mese ==7)
bnord_y7_m8<-filter(bnord_y7, bnord_y7$Mese ==8)
bnord_y7_m9<-filter(bnord_y7, bnord_y7$Mese ==9)
bnord_y7_m10<-filter(bnord_y7, bnord_y7$Mese ==10)
bnord_y7_m11<-filter(bnord_y7, bnord_y7$Mese ==11)
bnord_y7_m12<-filter(bnord_y7, bnord_y7$Mese ==12)




bcnord_y1_m1<-filter(bcnord_y1, bcnord_y1$Mese ==1)
bcnord_y1_m2<-filter(bcnord_y1, bcnord_y1$Mese ==2)
bcnord_y1_m3<-filter(bcnord_y1, bcnord_y1$Mese ==3)
bcnord_y1_m4<-filter(bcnord_y1, bcnord_y1$Mese ==4)
bcnord_y1_m5<-filter(bcnord_y1, bcnord_y1$Mese ==5)
bcnord_y1_m6<-filter(bcnord_y1, bcnord_y1$Mese ==6)
bcnord_y1_m7<-filter(bcnord_y1, bcnord_y1$Mese ==7)
bcnord_y1_m8<-filter(bcnord_y1, bcnord_y1$Mese ==8)
bcnord_y1_m9<-filter(bcnord_y1, bcnord_y1$Mese ==9)
bcnord_y1_m10<-filter(bcnord_y1, bcnord_y1$Mese ==10)
bcnord_y1_m11<-filter(bcnord_y1, bcnord_y1$Mese ==11)
bcnord_y1_m12<-filter(bcnord_y1, bcnord_y1$Mese ==12)

bcnord_y2_m1<-filter(bcnord_y2, bcnord_y2$Mese ==1)
bcnord_y2_m2<-filter(bcnord_y2, bcnord_y2$Mese ==2)
bcnord_y2_m3<-filter(bcnord_y2, bcnord_y2$Mese ==3)
bcnord_y2_m4<-filter(bcnord_y2, bcnord_y2$Mese ==4)
bcnord_y2_m5<-filter(bcnord_y2, bcnord_y2$Mese ==5)
bcnord_y2_m6<-filter(bcnord_y2, bcnord_y2$Mese ==6)
bcnord_y2_m7<-filter(bcnord_y2, bcnord_y2$Mese ==7)
bcnord_y2_m8<-filter(bcnord_y2, bcnord_y2$Mese ==8)
bcnord_y2_m9<-filter(bcnord_y2, bcnord_y2$Mese ==9)
bcnord_y2_m10<-filter(bcnord_y2, bcnord_y2$Mese ==10)
bcnord_y2_m11<-filter(bcnord_y2, bcnord_y2$Mese ==11)
bcnord_y2_m12<-filter(bcnord_y2, bcnord_y2$Mese ==12)

bcnord_y3_m1<-filter(bcnord_y3, bcnord_y3$Mese ==1)
bcnord_y3_m2<-filter(bcnord_y3, bcnord_y3$Mese ==2)
bcnord_y3_m3<-filter(bcnord_y3, bcnord_y3$Mese ==3)
bcnord_y3_m4<-filter(bcnord_y3, bcnord_y3$Mese ==4)
bcnord_y3_m5<-filter(bcnord_y3, bcnord_y3$Mese ==5)
bcnord_y3_m6<-filter(bcnord_y3, bcnord_y3$Mese ==6)
bcnord_y3_m7<-filter(bcnord_y3, bcnord_y3$Mese ==7)
bcnord_y3_m8<-filter(bcnord_y3, bcnord_y3$Mese ==8)
bcnord_y3_m9<-filter(bcnord_y3, bcnord_y3$Mese ==9)
bcnord_y3_m10<-filter(bcnord_y3, bcnord_y3$Mese ==10)
bcnord_y3_m11<-filter(bcnord_y3, bcnord_y3$Mese ==11)
bcnord_y3_m12<-filter(bcnord_y3, bcnord_y3$Mese ==12)

bcnord_y4_m1<-filter(bcnord_y4, bcnord_y4$Mese ==1)
bcnord_y4_m2<-filter(bcnord_y4, bcnord_y4$Mese ==2)
bcnord_y4_m3<-filter(bcnord_y4, bcnord_y4$Mese ==3)
bcnord_y4_m4<-filter(bcnord_y4, bcnord_y4$Mese ==4)
bcnord_y4_m5<-filter(bcnord_y4, bcnord_y4$Mese ==5)
bcnord_y4_m6<-filter(bcnord_y4, bcnord_y4$Mese ==6)
bcnord_y4_m7<-filter(bcnord_y4, bcnord_y4$Mese ==7)
bcnord_y4_m8<-filter(bcnord_y4, bcnord_y4$Mese ==8)
bcnord_y4_m9<-filter(bcnord_y4, bcnord_y4$Mese ==9)
bcnord_y4_m10<-filter(bcnord_y4, bcnord_y4$Mese ==10)
bcnord_y4_m11<-filter(bcnord_y4, bcnord_y4$Mese ==11)
bcnord_y4_m12<-filter(bcnord_y4, bcnord_y4$Mese ==12)

bcnord_y6_m1<-filter(bcnord_y6, bcnord_y6$Mese ==1)
bcnord_y6_m2<-filter(bcnord_y6, bcnord_y6$Mese ==2)
bcnord_y6_m3<-filter(bcnord_y6, bcnord_y6$Mese ==3)
bcnord_y6_m4<-filter(bcnord_y6, bcnord_y6$Mese ==4)
bcnord_y6_m5<-filter(bcnord_y6, bcnord_y6$Mese ==5)
bcnord_y6_m6<-filter(bcnord_y6, bcnord_y6$Mese ==6)
bcnord_y6_m7<-filter(bcnord_y6, bcnord_y6$Mese ==7)
bcnord_y6_m8<-filter(bcnord_y6, bcnord_y6$Mese ==8)
bcnord_y6_m9<-filter(bcnord_y6, bcnord_y6$Mese ==9)
bcnord_y6_m10<-filter(bcnord_y6, bcnord_y6$Mese ==10)
bcnord_y6_m11<-filter(bcnord_y6, bcnord_y6$Mese ==11)
bcnord_y6_m12<-filter(bcnord_y6, bcnord_y6$Mese ==12)

bcnord_y7_m1<-filter(bcnord_y7, bcnord_y7$Mese ==1)
bcnord_y7_m2<-filter(bcnord_y7, bcnord_y7$Mese ==2)
bcnord_y7_m3<-filter(bcnord_y7, bcnord_y7$Mese ==3)
bcnord_y7_m4<-filter(bcnord_y7, bcnord_y7$Mese ==4)
bcnord_y7_m5<-filter(bcnord_y7, bcnord_y7$Mese ==5)
bcnord_y7_m6<-filter(bcnord_y7, bcnord_y7$Mese ==6)
bcnord_y7_m7<-filter(bcnord_y7, bcnord_y7$Mese ==7)
bcnord_y7_m8<-filter(bcnord_y7, bcnord_y7$Mese ==8)
bcnord_y7_m9<-filter(bcnord_y7, bcnord_y7$Mese ==9)
bcnord_y7_m10<-filter(bcnord_y7, bcnord_y7$Mese ==10)
bcnord_y7_m11<-filter(bcnord_y7, bcnord_y7$Mese ==11)
bcnord_y7_m12<-filter(bcnord_y7, bcnord_y7$Mese ==12)

bcsud_y1_m1<-filter(bcsud_y1, bcsud_y1$Mese ==1)
bcsud_y1_m2<-filter(bcsud_y1, bcsud_y1$Mese ==2)
bcsud_y1_m3<-filter(bcsud_y1, bcsud_y1$Mese ==3)
bcsud_y1_m4<-filter(bcsud_y1, bcsud_y1$Mese ==4)
bcsud_y1_m5<-filter(bcsud_y1, bcsud_y1$Mese ==5)
bcsud_y1_m6<-filter(bcsud_y1, bcsud_y1$Mese ==6)
bcsud_y1_m7<-filter(bcsud_y1, bcsud_y1$Mese ==7)
bcsud_y1_m8<-filter(bcsud_y1, bcsud_y1$Mese ==8)
bcsud_y1_m9<-filter(bcsud_y1, bcsud_y1$Mese ==9)
bcsud_y1_m10<-filter(bcsud_y1, bcsud_y1$Mese ==10)
bcsud_y1_m11<-filter(bcsud_y1, bcsud_y1$Mese ==11)
bcsud_y1_m12<-filter(bcsud_y1, bcsud_y1$Mese ==12)

bcsud_y2_m1<-filter(bcsud_y2, bcsud_y2$Mese ==1)
bcsud_y2_m2<-filter(bcsud_y2, bcsud_y2$Mese ==2)
bcsud_y2_m3<-filter(bcsud_y2, bcsud_y2$Mese ==3)
bcsud_y2_m4<-filter(bcsud_y2, bcsud_y2$Mese ==4)
bcsud_y2_m5<-filter(bcsud_y2, bcsud_y2$Mese ==5)
bcsud_y2_m6<-filter(bcsud_y2, bcsud_y2$Mese ==6)
bcsud_y2_m7<-filter(bcsud_y2, bcsud_y2$Mese ==7)
bcsud_y2_m8<-filter(bcsud_y2, bcsud_y2$Mese ==8)
bcsud_y2_m9<-filter(bcsud_y2, bcsud_y2$Mese ==9)
bcsud_y2_m10<-filter(bcsud_y2, bcsud_y2$Mese ==10)
bcsud_y2_m11<-filter(bcsud_y2, bcsud_y2$Mese ==11)
bcsud_y2_m12<-filter(bcsud_y2, bcsud_y2$Mese ==12)

bcsud_y3_m1<-filter(bcsud_y3, bcsud_y3$Mese ==1)
bcsud_y3_m2<-filter(bcsud_y3, bcsud_y3$Mese ==2)
bcsud_y3_m3<-filter(bcsud_y3, bcsud_y3$Mese ==3)
bcsud_y3_m4<-filter(bcsud_y3, bcsud_y3$Mese ==4)
bcsud_y3_m5<-filter(bcsud_y3, bcsud_y3$Mese ==5)
bcsud_y3_m6<-filter(bcsud_y3, bcsud_y3$Mese ==6)
bcsud_y3_m7<-filter(bcsud_y3, bcsud_y3$Mese ==7)
bcsud_y3_m8<-filter(bcsud_y3, bcsud_y3$Mese ==8)
bcsud_y3_m9<-filter(bcsud_y3, bcsud_y3$Mese ==9)
bcsud_y3_m10<-filter(bcsud_y3, bcsud_y3$Mese ==10)
bcsud_y3_m11<-filter(bcsud_y3, bcsud_y3$Mese ==11)
bcsud_y3_m12<-filter(bcsud_y3, bcsud_y3$Mese ==12)

bcsud_y4_m1<-filter(bcsud_y4, bcsud_y4$Mese ==1)
bcsud_y4_m2<-filter(bcsud_y4, bcsud_y4$Mese ==2)
bcsud_y4_m3<-filter(bcsud_y4, bcsud_y4$Mese ==3)
bcsud_y4_m4<-filter(bcsud_y4, bcsud_y4$Mese ==4)
bcsud_y4_m5<-filter(bcsud_y4, bcsud_y4$Mese ==5)
bcsud_y4_m6<-filter(bcsud_y4, bcsud_y4$Mese ==6)
bcsud_y4_m7<-filter(bcsud_y4, bcsud_y4$Mese ==7)
bcsud_y4_m8<-filter(bcsud_y4, bcsud_y4$Mese ==8)
bcsud_y4_m9<-filter(bcsud_y4, bcsud_y4$Mese ==9)
bcsud_y4_m10<-filter(bcsud_y4, bcsud_y4$Mese ==10)
bcsud_y4_m11<-filter(bcsud_y4, bcsud_y4$Mese ==11)
bcsud_y4_m12<-filter(bcsud_y4, bcsud_y4$Mese ==12)

bcsud_y6_m1<-filter(bcsud_y6, bcsud_y6$Mese ==1)
bcsud_y6_m2<-filter(bcsud_y6, bcsud_y6$Mese ==2)
bcsud_y6_m3<-filter(bcsud_y6, bcsud_y6$Mese ==3)
bcsud_y6_m4<-filter(bcsud_y6, bcsud_y6$Mese ==4)
bcsud_y6_m5<-filter(bcsud_y6, bcsud_y6$Mese ==5)
bcsud_y6_m6<-filter(bcsud_y6, bcsud_y6$Mese ==6)
bcsud_y6_m7<-filter(bcsud_y6, bcsud_y6$Mese ==7)
bcsud_y6_m8<-filter(bcsud_y6, bcsud_y6$Mese ==8)
bcsud_y6_m9<-filter(bcsud_y6, bcsud_y6$Mese ==9)
bcsud_y6_m10<-filter(bcsud_y6, bcsud_y6$Mese ==10)
bcsud_y6_m11<-filter(bcsud_y6, bcsud_y6$Mese ==11)
bcsud_y6_m12<-filter(bcsud_y6, bcsud_y6$Mese ==12)

bcsud_y7_m1<-filter(bcsud_y7, bcsud_y7$Mese ==1)
bcsud_y7_m2<-filter(bcsud_y7, bcsud_y7$Mese ==2)
bcsud_y7_m3<-filter(bcsud_y7, bcsud_y7$Mese ==3)
bcsud_y7_m4<-filter(bcsud_y7, bcsud_y7$Mese ==4)
bcsud_y7_m5<-filter(bcsud_y7, bcsud_y7$Mese ==5)
bcsud_y7_m6<-filter(bcsud_y7, bcsud_y7$Mese ==6)
bcsud_y7_m7<-filter(bcsud_y7, bcsud_y7$Mese ==7)
bcsud_y7_m8<-filter(bcsud_y7, bcsud_y7$Mese ==8)
bcsud_y7_m9<-filter(bcsud_y7, bcsud_y7$Mese ==9)
bcsud_y7_m10<-filter(bcsud_y7, bcsud_y7$Mese ==10)
bcsud_y7_m11<-filter(bcsud_y7, bcsud_y7$Mese ==11)
bcsud_y7_m12<-filter(bcsud_y7, bcsud_y7$Mese ==12)

bsud_y1_m1<-filter(bsud_y1, bsud_y1$Mese ==1)
bsud_y1_m2<-filter(bsud_y1, bsud_y1$Mese ==2)
bsud_y1_m3<-filter(bsud_y1, bsud_y1$Mese ==3)
bsud_y1_m4<-filter(bsud_y1, bsud_y1$Mese ==4)
bsud_y1_m5<-filter(bsud_y1, bsud_y1$Mese ==5)
bsud_y1_m6<-filter(bsud_y1, bsud_y1$Mese ==6)
bsud_y1_m7<-filter(bsud_y1, bsud_y1$Mese ==7)
bsud_y1_m8<-filter(bsud_y1, bsud_y1$Mese ==8)
bsud_y1_m9<-filter(bsud_y1, bsud_y1$Mese ==9)
bsud_y1_m10<-filter(bsud_y1, bsud_y1$Mese ==10)
bsud_y1_m11<-filter(bsud_y1, bsud_y1$Mese ==11)
bsud_y1_m12<-filter(bsud_y1, bsud_y1$Mese ==12)

bsud_y2_m1<-filter(bsud_y2, bsud_y2$Mese ==1)
bsud_y2_m2<-filter(bsud_y2, bsud_y2$Mese ==2)
bsud_y2_m3<-filter(bsud_y2, bsud_y2$Mese ==3)
bsud_y2_m4<-filter(bsud_y2, bsud_y2$Mese ==4)
bsud_y2_m5<-filter(bsud_y2, bsud_y2$Mese ==5)
bsud_y2_m6<-filter(bsud_y2, bsud_y2$Mese ==6)
bsud_y2_m7<-filter(bsud_y2, bsud_y2$Mese ==7)
bsud_y2_m8<-filter(bsud_y2, bsud_y2$Mese ==8)
bsud_y2_m9<-filter(bsud_y2, bsud_y2$Mese ==9)
bsud_y2_m10<-filter(bsud_y2, bsud_y2$Mese ==10)
bsud_y2_m11<-filter(bsud_y2, bsud_y2$Mese ==11)
bsud_y2_m12<-filter(bsud_y2, bsud_y2$Mese ==12)

bsud_y3_m1<-filter(bsud_y3, bsud_y3$Mese ==1)
bsud_y3_m2<-filter(bsud_y3, bsud_y3$Mese ==2)
bsud_y3_m3<-filter(bsud_y3, bsud_y3$Mese ==3)
bsud_y3_m4<-filter(bsud_y3, bsud_y3$Mese ==4)
bsud_y3_m5<-filter(bsud_y3, bsud_y3$Mese ==5)
bsud_y3_m6<-filter(bsud_y3, bsud_y3$Mese ==6)
bsud_y3_m7<-filter(bsud_y3, bsud_y3$Mese ==7)
bsud_y3_m8<-filter(bsud_y3, bsud_y3$Mese ==8)
bsud_y3_m9<-filter(bsud_y3, bsud_y3$Mese ==9)
bsud_y3_m10<-filter(bsud_y3, bsud_y3$Mese ==10)
bsud_y3_m11<-filter(bsud_y3, bsud_y3$Mese ==11)
bsud_y3_m12<-filter(bsud_y3, bsud_y3$Mese ==12)

bsud_y4_m1<-filter(bsud_y4, bsud_y4$Mese ==1)
bsud_y4_m2<-filter(bsud_y4, bsud_y4$Mese ==2)
bsud_y4_m3<-filter(bsud_y4, bsud_y4$Mese ==3)
bsud_y4_m4<-filter(bsud_y4, bsud_y4$Mese ==4)
bsud_y4_m5<-filter(bsud_y4, bsud_y4$Mese ==5)
bsud_y4_m6<-filter(bsud_y4, bsud_y4$Mese ==6)
bsud_y4_m7<-filter(bsud_y4, bsud_y4$Mese ==7)
bsud_y4_m8<-filter(bsud_y4, bsud_y4$Mese ==8)
bsud_y4_m9<-filter(bsud_y4, bsud_y4$Mese ==9)
bsud_y4_m10<-filter(bsud_y4, bsud_y4$Mese ==10)
bsud_y4_m11<-filter(bsud_y4, bsud_y4$Mese ==11)
bsud_y4_m12<-filter(bsud_y4, bsud_y4$Mese ==12)

bsud_y6_m1<-filter(bsud_y6, bsud_y6$Mese ==1)
bsud_y6_m2<-filter(bsud_y6, bsud_y6$Mese ==2)
bsud_y6_m3<-filter(bsud_y6, bsud_y6$Mese ==3)
bsud_y6_m4<-filter(bsud_y6, bsud_y6$Mese ==4)
bsud_y6_m5<-filter(bsud_y6, bsud_y6$Mese ==5)
bsud_y6_m6<-filter(bsud_y6, bsud_y6$Mese ==6)
bsud_y6_m7<-filter(bsud_y6, bsud_y6$Mese ==7)
bsud_y6_m8<-filter(bsud_y6, bsud_y6$Mese ==8)
bsud_y6_m9<-filter(bsud_y6, bsud_y6$Mese ==9)
bsud_y6_m10<-filter(bsud_y6, bsud_y6$Mese ==10)
bsud_y6_m11<-filter(bsud_y6, bsud_y6$Mese ==11)
bsud_y6_m12<-filter(bsud_y6, bsud_y6$Mese ==12)

bsud_y7_m1<-filter(bsud_y7, bsud_y7$Mese ==1)
bsud_y7_m2<-filter(bsud_y7, bsud_y7$Mese ==2)
bsud_y7_m3<-filter(bsud_y7, bsud_y7$Mese ==3)
bsud_y7_m4<-filter(bsud_y7, bsud_y7$Mese ==4)
bsud_y7_m5<-filter(bsud_y7, bsud_y7$Mese ==5)
bsud_y7_m6<-filter(bsud_y7, bsud_y7$Mese ==6)
bsud_y7_m7<-filter(bsud_y7, bsud_y7$Mese ==7)
bsud_y7_m8<-filter(bsud_y7, bsud_y7$Mese ==8)
bsud_y7_m9<-filter(bsud_y7, bsud_y7$Mese ==9)
bsud_y7_m10<-filter(bsud_y7, bsud_y7$Mese ==10)
bsud_y7_m11<-filter(bsud_y7, bsud_y7$Mese ==11)
bsud_y7_m12<-filter(bsud_y7, bsud_y7$Mese ==12)

hgt_nord<-data.frame(hgt$wn1,hgt$wn2,hgt$wn4)
hgt_nord_mean<-rowMeans(hgt_nord)
hgt_nord_min<-apply(hgt_nord, 1, FUN=min)
hgt_nord_max<-apply(hgt_nord, 1, FUN=max)

hgd_nord<-data.frame(hg$wn1,hg$wn2,hg$wn4)
hgd_nord_mean<-rowMeans(hgd_nord)
hgd_nord_min<-apply(hgd_nord, 1, FUN=min)
hgd_nord_max<-apply(hgd_nord, 1, FUN=max)

hgd_cnord<-data.frame(hg$wn3,hg$wn5,hg$wc6)
hgd_cnord_mean<-rowMeans(hgd_cnord)
hgd_cnord_min<-apply(hgd_cnord, 1, FUN=min)
hgd_cnord_max<-apply(hgd_cnord, 1, FUN=max)

hgd_csud<-data.frame(hg$wc7)
hgd_csud_mean<-rowMeans(hgd_csud)
hgd_csud_min<-apply(hgd_csud, 1, FUN=min)
hgd_csud_max<-apply(hgd_csud, 1, FUN=max)

hgd_sud<-data.frame(hg$ws8,hg$ws9,hg$ws10 )
hgd_sud_mean<-rowMeans(hgd_sud)
hgd_sud_min<-apply(hgd_sud, 1, FUN=min)
hgd_sud_max<-apply(hgd_sud, 1, FUN=max)

#plot(rdate,hgt_nord_min, type='l', ylim=c(0,40), col='grey',lty=2)
#par(new=T)
#plot(rdate,hgt_nord_max, type='l', ylim=c(0,40), col='grey',lty=2)
##par(new=T)
#plot(rdate,hgt_nord_mean, type='l', ylim=c(0,40))
vv<-seq(1,84)


 #win.graph()
png('Hg_Disciolto_MAV_.png', width = 26, height = 18,
    units = "cm", res=400)
par(mfrow=c(2,2),bty='n', mar=c(3,3,3,.1))
  plot(rdate[1224:1309],hgd_nord_min[1224:1309], type='l', ylim=c(0,100), col='cyan',xlab=' ',
       ylab=expression(paste('ng l'^-1)), main=expression(paste('Hg'[D]~'in northern lagoon water')))
  par(new=T)
  plot(rdate[1224:1309],hgd_nord_max[1224:1309], type='l', xaxt='n', yaxt='n',ylab='',xlab=' ',ylim=c(0,100), col='cyan')
  par(new=T)
  plot(rdate[1224:1309],hgd_nord_mean[1224:1309], type='l', xaxt='n',yaxt='n' ,ylab='',xlab=' ',col='cyan4', ylim=c(0,100))
  par(new=T)
  boxplot(bnord_y1_m1$Hg1, bnord_y1_m2$Hg1, bnord_y1_m3$Hg1, bnord_y1_m4$Hg1, bnord_y1_m5$Hg1, bnord_y1_m6$Hg1, 
          bnord_y1_m7$Hg1, bnord_y1_m8$Hg1, bnord_y1_m9$Hg1, bnord_y1_m10$Hg1,
          bnord_y1_m11$Hg1, bnord_y1_m12$Hg1,
          bnord_y2_m1$Hg1, bnord_y2_m2$Hg1, bnord_y2_m3$Hg1, bnord_y2_m4$Hg1, bnord_y2_m5$Hg1, bnord_y2_m6$Hg1, 
          bnord_y2_m7$Hg1, bnord_y2_m8$Hg1, bnord_y2_m9$Hg1, bnord_y2_m10$Hg1,
          bnord_y2_m11$Hg1, bnord_y2_m12$Hg1, NA, bnord_y3_m2$Hg1,NA, bnord_y3_m4$Hg1,NA, bnord_y3_m6$Hg1, 
          bnord_y3_m7$Hg1, bnord_y3_m8$Hg1, NA, NA,
          bnord_y3_m11$Hg1, NA,
          NA, bnord_y4_m2$Hg1,NA, bnord_y4_m4$Hg1, NA, bnord_y4_m6$Hg1,NA,
          bnord_y4_m8$Hg1, NA, bnord_y4_m10$Hg1,NA, NA, 
          NA, NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 
          NA,NA, bnord_y6_m3$Hg1,NA, NA,bnord_y6_m6$Hg1, 
          NA, NA, bnord_y6_m9$Hg1,NA,
          NA,bnord_y6_m12$Hg1,
          NA, bnord_y7_m2$Hg1, NA,NA, bnord_y7_m5$Hg1,NA,
          NA, bnord_y7_m8$Hg1, NA, NA,
          bnord_y7_m11$Hg1, NA,yaxt='n',ylab='',boxwex=1.,varwidth = F,
          ylim=c(0,100),at=c(vv), xaxt='n',xlab=' ',xlim=c(1,84))      
          
         # at=c(1226,1227,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237),
  plot(rdate[1224:1309],hgd_cnord_min[1224:1309], type='l', ylim=c(0,100), col='cyan',
        ylab=expression(paste('ng l'^-1)),xlab='',main=expression(paste('Hg'[D]~'in central-northern lagoon water')))
  par(new=T)
  plot(rdate[1224:1309],hgd_cnord_max[1224:1309], type='l',
       xaxt='n', yaxt='n',ylab='',xlab=' ',ylim=c(0,100), col='cyan')
  par(new=T)
  plot(rdate[1224:1309],hgd_cnord_mean[1224:1309], type='l', col='cyan4', 
       xaxt='n', yaxt='n',ylab='',xlab=' ',ylim=c(0,100))
  par(new=T)
  boxplot(bcnord_y1_m1$Hg1, bcnord_y1_m2$Hg1, bcnord_y1_m3$Hg1, bcnord_y1_m4$Hg1, bcnord_y1_m5$Hg1, bcnord_y1_m6$Hg1, 
          bcnord_y1_m7$Hg1, bcnord_y1_m8$Hg1, bcnord_y1_m9$Hg1, bcnord_y1_m10$Hg1,
          bcnord_y1_m11$Hg1, bcnord_y1_m12$Hg1,
          bcnord_y2_m1$Hg1, bcnord_y2_m2$Hg1, bcnord_y2_m3$Hg1, bcnord_y2_m4$Hg1, bcnord_y2_m5$Hg1, bcnord_y2_m6$Hg1,
          bcnord_y2_m7$Hg1, bcnord_y2_m8$Hg1, bcnord_y2_m9$Hg1, bcnord_y2_m10$Hg1,
          bcnord_y2_m11$Hg1, bcnord_y2_m12$Hg1, NA, bcnord_y3_m2$Hg1, NA, bcnord_y3_m4$Hg1, NA, 
          bcnord_y3_m6$Hg1, NA, bcnord_y3_m8$Hg1, NA,NA,bcnord_y3_m11$Hg1, NA,
          NA, bcnord_y4_m2$Hg1, NA, bcnord_y4_m4$Hg1, NA,bcnord_y4_m6$Hg1, 
          NA, bcnord_y4_m8$Hg1, NA, bcnord_y4_m10$Hg1, NA, NA,
          NA, NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 
          NA,NA,bcnord_y6_m3$Hg1, NA, NA,bcnord_y6_m6$Hg1, 
          NA, NA, bcnord_y6_m9$Hg1, NA,NA,bcnord_y6_m12$Hg1,
          NA, bcnord_y7_m2$Hg1, NA, NA, bcnord_y7_m5$Hg1, NA, 
          NA, bcnord_y7_m8$Hg1, NA, NA,boxwex=1.,varwidth = F,
          bcnord_y7_m11$Hg1, NA, yaxt='n',ylab='',xlab=' ',
          ylim=c(0,100),at=c(vv), xaxt='n',xlim=c(1,84))      

  plot(rdate[1224:1309],hgd_csud_min[1224:1309], type='l', ylim=c(0,50), col='cyan',
       ylab=expression(paste('ng l'^-1)),xlab=' ', main=expression(paste('Hg'[D]~'in central-southern lagoon water')))
  par(new=T)
  plot(rdate[1224:1309],hgd_csud_max[1224:1309], type='l', ylim=c(0,50), 
       xaxt='n', yaxt='n',ylab='',xlab=' ', col='cyan')
  par(new=T)
  plot(rdate[1224:1309],hgd_csud_mean[1224:1309], type='l', col='cyan4', 
       xaxt='n', yaxt='n',ylab='',xlab=' ', ylim=c(0,50))
  par(new=T)
  boxplot(bcsud_y1_m1$Hg1, bcsud_y1_m2$Hg1, bcsud_y1_m3$Hg1, bcsud_y1_m4$Hg1, bcsud_y1_m5$Hg1, bcsud_y1_m6$Hg1, 
          bcsud_y1_m7$Hg1, bcsud_y1_m8$Hg1, bcsud_y1_m9$Hg1, bcsud_y1_m10$Hg1,
          bcsud_y1_m11$Hg1, bcsud_y1_m12$Hg1, 
          bcsud_y2_m1$Hg1, bcsud_y2_m2$Hg1, bcsud_y2_m3$Hg1, bcsud_y2_m4$Hg1, bcsud_y2_m5$Hg1, bcsud_y2_m6$Hg1, 
          bcsud_y2_m7$Hg1, bcsud_y2_m8$Hg1, bcsud_y2_m9$Hg1, bcsud_y2_m10$Hg1,
          bcsud_y2_m11$Hg1, bcsud_y2_m12$Hg1, 
          bcsud_y3_m1$Hg1, bcsud_y3_m2$Hg1, bcsud_y3_m3$Hg1, bcsud_y3_m4$Hg1, bcsud_y3_m5$Hg1, bcsud_y3_m6$Hg1, 
          bcsud_y3_m7$Hg1, bcsud_y3_m8$Hg1, bcsud_y3_m9$Hg1, bcsud_y3_m10$Hg1,
          bcsud_y3_m11$Hg1, bcsud_y3_m12$Hg1,
          bcsud_y4_m1$Hg1, bcsud_y4_m2$Hg1, bcsud_y4_m3$Hg1, bcsud_y4_m4$Hg1, bcsud_y4_m5$Hg1, bcsud_y4_m6$Hg1, 
          bcsud_y4_m7$Hg1, bcsud_y4_m8$Hg1, bcsud_y4_m9$Hg1, bcsud_y4_m10$Hg1,
          bcsud_y4_m11$Hg1, bcsud_y4_m12$Hg1,NA, NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 
          bcsud_y6_m1$Hg1, bcsud_y6_m2$Hg1, bcsud_y6_m3$Hg1, bcsud_y6_m4$Hg1, bcsud_y6_m5$Hg1, bcsud_y6_m6$Hg1, 
          bcsud_y6_m7$Hg1, bcsud_y6_m8$Hg1, bcsud_y6_m9$Hg1, bcsud_y6_m10$Hg1,
          bcsud_y6_m11$Hg1, bcsud_y6_m12$Hg1,
          bcsud_y7_m1$Hg1, bcsud_y7_m2$Hg1, bcsud_y7_m3$Hg1, bcsud_y7_m4$Hg1, bcsud_y7_m5$Hg1, bcsud_y7_m6$Hg1, 
          bcsud_y7_m7$Hg1, bcsud_y7_m8$Hg1, bcsud_y7_m9$Hg1, bcsud_y7_m10$Hg1,
          bcsud_y7_m11$Hg1, bcsud_y7_m12$Hg1,boxwex=1.,varwidth = F,
          ylim=c(0,50),at=c(vv),xaxt='n', yaxt='n',ylab='',xlab=' ',xlim=c(1,84))  
  
  plot(rdate[1224:1309],hgd_sud_min[1224:1309], type='l', ylim=c(0,50), 
       ylab=expression(paste('ng l'^-1)),xlab=' ',col='cyan',main=expression(paste('Hg'[D]~'in southern lagoon water')))
  par(new=T)
  plot(rdate[1224:1309],hgd_sud_max[1224:1309], type='l', ylim=c(0,50),
       xaxt='n', yaxt='n',ylab='',xlab=' ',col='cyan')
  par(new=T)
  plot(rdate[1224:1309],hgd_sud_mean[1224:1309], type='l', col='cyan4', 
       xaxt='n', yaxt='n',ylab='',xlab=' ',ylim=c(0,50))
  par(new=T)
  boxplot(bsud_y1_m1$Hg1, bsud_y1_m2$Hg1, bsud_y1_m3$Hg1, bsud_y1_m4$Hg1, bsud_y1_m5$Hg1, bsud_y1_m6$Hg1, 
          bsud_y1_m7$Hg1, bsud_y1_m8$Hg1, bsud_y1_m9$Hg1, bsud_y1_m10$Hg1,
          bsud_y1_m11$Hg1, bsud_y1_m12$Hg1,
          bsud_y2_m1$Hg1, bsud_y2_m2$Hg1, bsud_y2_m3$Hg1, bsud_y2_m4$Hg1, bsud_y2_m5$Hg1, bsud_y2_m6$Hg1, 
          bsud_y2_m7$Hg1, bsud_y2_m8$Hg1, bsud_y2_m9$Hg1, bsud_y2_m10$Hg1,
          bsud_y2_m11$Hg1, bsud_y2_m12$Hg1, bsud_y3_m1$Hg1, bsud_y3_m2$Hg1, bsud_y3_m3$Hg1, bsud_y3_m4$Hg1, bsud_y3_m5$Hg1, bsud_y3_m6$Hg1, 
          bsud_y3_m7$Hg1, bsud_y3_m8$Hg1, bsud_y3_m9$Hg1, bsud_y3_m10$Hg1,
          bsud_y3_m11$Hg1, bsud_y3_m12$Hg1,
          bsud_y4_m1$Hg1, bsud_y4_m2$Hg1, bsud_y4_m3$Hg1, bsud_y4_m4$Hg1, bsud_y4_m5$Hg1, bsud_y4_m6$Hg1, 
          bsud_y4_m7$Hg1, bsud_y4_m8$Hg1, bsud_y4_m9$Hg1, bsud_y4_m10$Hg1,
          bsud_y4_m11$Hg1, bsud_y4_m12$Hg1,NA, NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 
          bsud_y6_m1$Hg1, bsud_y6_m2$Hg1, bsud_y6_m3$Hg1, bsud_y6_m4$Hg1, bsud_y6_m5$Hg1, bsud_y6_m6$Hg1, 
          bsud_y6_m7$Hg1, bsud_y6_m8$Hg1, bsud_y6_m9$Hg1, bsud_y6_m10$Hg1,
          bsud_y6_m11$Hg1, bsud_y6_m12$Hg1,
          bsud_y7_m1$Hg1, bsud_y7_m2$Hg1, bsud_y7_m3$Hg1, bsud_y7_m4$Hg1, bsud_y7_m5$Hg1, bsud_y7_m6$Hg1, 
          bsud_y7_m7$Hg1, bsud_y7_m8$Hg1, bsud_y7_m9$Hg1, bsud_y7_m10$Hg1,
          bsud_y7_m11$Hg1, bsud_y7_m12$Hg1,boxwex=1.,varwidth = F,
          ylim=c(0,50),at=c(vv), xaxt='n', yaxt='n',ylab='',xlab=' ',xlim=c(1,84))      
dev.off()
  
  