setwd('C:/Users/gi/Downloads/')
setwd('G:/Il mio Drive/MERCURIO/Venezia/2017_Venice')
Mel<-read.csv('Hg_acque_MEla.csv', header=T, sep=';') #setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice/res_eutr7')

summary(Mel)
Mel$Hg1<-Mel$Hg*1000

summary(Mel$Hg1)

Melaa<-Mel[(Mel$Hg1<660),]
summary(Melaa$Hg1)

str(Melaa)

filter(Melaa, Mese ==1)
filter(Melaa, Mese ==5)


#dati Bloom 
Water_sud_bloom<-c(3.15,2.08,4.2)
Water_nord_bloom<-c(29.08555,	12.1798248,	45.9912752, 
                    NA, NA, NA,NA)
Water_central_bloom<-c(14.84366, 8.5531576,
                       21.1341624, 2.58219507, 4.713865, 
                       3.627636718 ,NA)
Marghera_bloom<-c(11.9391168,56,	100.7924632,NA,NA,NA,NA)

Mela<-Mel[(Mel$Staz!='M01' & Mel$Staz!='M02'& Mel$Staz!='B31'&
             Mel$Staz!='E' & Mel$Hg1<300 & Mel$Anno>2001),]

Mela1<-Mela[complete.cases(Mela),]

str(filter(Mela1, Mese==1))
str(filter(Mela1, Mese==2))
str(filter(Mela1, Mese==3))
str(filter(Mela1, Mese==4))
str(filter(Mela1, Mese==5))
str(filter(Mela1, Mese==6))
str(filter(Mela1, Mese==7))
str(filter(Mela1, Mese==8))
str(filter(Mela1, Mese==9))
str(filter(Mela1, Mese==10))
str(filter(Mela1, Mese==11))
str(filter(Mela1, Mese==12))


summary(Mela1$Staz)

Mela1$Zone[Mela1$Staz == 'B01' | Mela1$Staz == 'B02'| Mela1$Staz == 'B03' |
             Mela1$Staz == 'B04'| Mela1$Staz == 'C01'| Mela1$Staz == 'C02'] <- "Nord"

Mela1$Zone[Mela1$Staz == 'B05' | Mela1$Staz == 'B06'| Mela1$Staz == 'B07' |
             Mela1$Staz == 'B08'| Mela1$Staz == 'B09'| Mela1$Staz == 'B10'|
             Mela1$Staz == 'B11'| Mela1$Staz == 'B12'| Mela1$Staz == 'C03'| Mela1$Staz == 'C04'|
             Mela1$Staz == 'C05'] <- "Centro-Nord"

Mela1$Zone[Mela1$Staz == 'CS' ] <- "CittÃ"
Mela1$Zone[Mela1$Staz == 'CI' ] <- "Industriali"

Mela1$Zone[Mela1$Staz == 'B13' |Mela1$Staz == 'B14' | Mela1$Staz == 'B15'| Mela1$Staz == 'C06'| Mela1$Staz == 'C07'] <- "Centro-Sud"

Mela1$Zone[Mela1$Staz == 'B16' | Mela1$Staz == 'B17'| Mela1$Staz == 'B18'|
             Mela1$Staz == 'B19'| Mela1$Staz == 'B20'| Mela1$Staz == 'C08'] <- "Sud"

Mela1$Staz<- factor(Mela1$Staz, 
                    levels = c("B01","B02", "B03","B04","C01","C02", 
                               "B05","B06","B07",'CI',"B08",'CS',"B09",'B10','B11',
                               'B12',"C03","C04","C05", 
                               "B13","B14","B15", "C06", 'C07',
                               "B16","B17","B18","B19",'B20','C08'))

box1_data<-Mela1[(Mela1$Staz=='B03'),]
box2_data<-Mela1[(Mela1$Staz=='B02'),]   
box3_data<-Mela1[(Mela1$Staz=='C04'),]
box4_data<-Mela1[(Mela1$Staz=='B01'),]
box5_data<-Mela1[(Mela1$Staz=='B06' | Mela1$Staz =='B05'),]
box6_data<-Mela1[(Mela1$Staz=='B07' | Mela1$Staz=='B08' |
                  Mela1$Staz=='B09' | Mela1$Staz=='B11' |
                  Mela1$Staz=='B12' | Mela1$Staz=='C05'),]
box6_mean<-rowMeans(box6_data)
box6_min<-apply(box6_data, 1, FUN=min)
box6_max<-apply(box6_data, 1, FUN=max)

box7_data<-Mela1[(Mela1$Staz=='B14' | Mela1$Staz=='B13' |
                    Mela1$Staz=='B10' | Mela1$Staz=='B12' |
                    Mela1$Staz=='B12' | Mela1$Staz=='C06'|
                    Mela1$Staz=='C07'),]

box8_data <-Mela1[(Mela1$Staz=='B16'),]
box9_data <-Mela1[(Mela1$Staz=='B20' | Mela1$Staz=='C08'),] #bind(b17,
box10_data<-Mela1[(Mela1$Staz=='B17' | Mela1$Staz=='B19'|
                   Mela1$Staz=='B18'),] #cbind(,b17)

Water_nord_df<-Mela1[(Mela1$Zone == 'Nord'),]
Water_nord<-Water_nord_df$Hg1
Water_centro_n_df<-Mela1[(Mela1$Zone == 'Centro-Nord'),]
Water_centro_n<-Water_centro_n_df$Hg1

filter(Water_centro_n_df, Mese==1)

Water_centro_s_df<-Mela1[(Mela1$Zone == 'Centro-Sud'),]
Water_centro_s<-Water_centro_s_df$Hg1
Water_sud_df<-Mela1[(Mela1$Zone == 'Sud'),]
Water_sud<-Water_sud_df$Hg1

library(dplyr)

nord1<-(filter(Water_nord_df, Mese == 1))
nord1_median<-median(nord1$Hg1)
nord1_mean<-mean(nord1$Hg1)
nord1_min<-min(nord1$Hg1)
nord1_max<-max(nord1$Hg1)

nord2<-(filter(Water_nord_df, Mese == 2))
nord2_median<-median(nord2$Hg1)
nord2_mean<-mean(nord2$Hg1)
nord2_min<-min(nord2$Hg1)
nord2_max<-max(nord2$Hg1)

nord3<-(filter(Water_nord_df, Mese == 3))
nord3_median<-median(nord3$Hg1)
nord3_mean<-mean(nord3$Hg1)
nord3_min<-min(nord3$Hg1)
nord3_max<-max(nord3$Hg1)

nord4<-(filter(Water_nord_df, Mese == 4))
nord4_median<-median(nord4$Hg1)
nord4_mean<-mean(nord4$Hg1)
nord4_min<-min(nord4$Hg1)
nord4_max<-max(nord4$Hg1)

nord5<-(filter(Water_nord_df, Mese == 5))
nord5_median<-median(nord5$Hg1)
nord5_mean<-mean(nord5$Hg1)
nord5_min<-min(nord5$Hg1)
nord5_max<-max(nord5$Hg1)

nord6<-(filter(Water_nord_df, Mese == 6))
nord6_median<-median(nord6$Hg1)
nord6_mean<-mean(nord6$Hg1)
nord6_min<-min(nord6$Hg1)
nord6_max<-max(nord6$Hg1)

nord7<-(filter(Water_nord_df, Mese ==7))
nord7_median<-median(nord7$Hg1)
nord7_mean<-mean(nord7$Hg1)
nord7_min<-min(nord7$Hg1)
nord7_max<-max(nord7$Hg1)

nord8<-(filter(Water_nord_df, Mese == 8))
nord8_median<-median(nord8$Hg1)
nord8_mean<-mean(nord8$Hg1)
nord8_min<-min(nord8$Hg1)
nord8_max<-max(nord8$Hg1)

nord9<-(filter(Water_nord_df, Mese == 9))
nord9_median<-median(nord9$Hg1)
nord9_mean<-mean(nord9$Hg1)
nord9_min<-min(nord9$Hg1)
nord9_max<-max(nord9$Hg1)

nord10<-(filter(Water_nord_df, Mese == 10))
nord10_median<-median(nord10$Hg1)
nord10_mean<-mean(nord10$Hg1)
nord10_min<-min(nord10$Hg1)
nord10_max<-max(nord10$Hg1)

nord11<-(filter(Water_nord_df, Mese == 11))
nord11_median<-median(nord11$Hg1)
nord11_mean<-mean(nord11$Hg1)
nord11_min<-min(nord11$Hg1)
nord11_max<-max(nord11$Hg1)

nord12<-(filter(Water_nord_df, Mese == 12))
nord12_median<-median(nord12$Hg1)
nord12_mean<-mean(nord12$Hg1)
nord12_min<-min(nord12$Hg1)
nord12_max<-max(nord12$Hg1)


nords_median<-c(nord1_median, nord2_median,nord3_median,nord4_median,
				  nord5_median,nord6_median, nord7_median,nord8_median,nord9_median,
				  nord10_median,nord11_median,nord12_median)		  
				  
nords_mean<-c(nord1_mean, nord2_mean,nord3_mean,nord4_mean,
				  nord5_mean,nord6_mean, nord7_mean,nord8_mean,nord9_mean,
				  nord10_mean,nord11_mean,nord12_mean)
				  				  
nords_min<-c(nord1_min, nord2_min,nord3_min,nord4_min,
				  nord5_min,nord6_min, nord7_min,nord8_min,nord9_min,
				  nord10_min,nord11_min,nord12_min)		  
				  				  
nords_max<-c(nord1_max, nord2_max,nord3_max,nord4_max,
				  nord5_max,nord6_max, nord7_max,nord8_max,nord9_max,
				  nord10_max,nord11_max,nord12_max)

df_nordMELa<-data.frame(nords_median, nords_mean, nords_min, nords_max )				  


write.table(df_nordMELa, file = 'water_nordMELA_mediemese.txt')
				  	  
cnord1<-(filter(Water_centro_n_df, Mese == 1))
cnord1_median<-median(cnord1$Hg1)
cnord1_mean<-mean(cnord1$Hg1)
cnord1_min<-min(cnord1$Hg1)
cnord1_max<-min(cnord1$Hg1)

cnord2<-(filter(Water_centro_n_df, Mese == 2))
cnord2_median<-median(cnord2$Hg1)
cnord2_mean<-mean(cnord2$Hg1)
cnord2_min<-min(cnord2$Hg1)
cnord2_max<-min(cnord2$Hg1)

cnord3<-(filter(Water_centro_n_df, Mese == 3))
cnord3_median<-median(cnord3$Hg1)
cnord3_mean<-mean(cnord3$Hg1)
cnord3_min<-min(cnord3$Hg1)
cnord3_max<-min(cnord3$Hg1)

cnord4<-(filter(Water_centro_n_df, Mese == 4))
cnord4_median<-median(cnord4$Hg1)
cnord4_mean<-mean(cnord4$Hg1)
cnord4_min<-min(cnord4$Hg1)
cnord4_max<-min(cnord4$Hg1)

cnord5<-(filter(Water_centro_n_df, Mese == 5))
cnord5_median<-median(cnord5$Hg1)
cnord5_mean<-mean(cnord5$Hg1)
cnord5_min<-min(cnord5$Hg1)
cnord5_max<-min(cnord5$Hg1)

cnord6<-(filter(Water_centro_n_df, Mese == 6))
cnord6_median<-median(cnord6$Hg1)
cnord6_mean<-mean(cnord6$Hg1)
cnord6_min<-min(cnord6$Hg1)
cnord6_max<-min(cnord6$Hg1)

cnord7<-(filter(Water_centro_n_df, Mese ==7))
cnord7_median<-median(cnord7$Hg1)
cnord7_mean<-mean(cnord7$Hg1)
cnord7_min<-min(cnord7$Hg1)
cnord7_max<-min(cnord7$Hg1)

cnord8<-(filter(Water_centro_n_df, Mese == 8))
cnord8_median<-median(cnord8$Hg1)
cnord8_mean<-mean(cnord8$Hg1)
cnord8_min<-min(cnord8$Hg1)
cnord8_max<-min(cnord8$Hg1)

cnord9<-(filter(Water_centro_n_df, Mese == 9))
cnord9_median<-median(cnord9$Hg1)
cnord9_mean<-mean(cnord9$Hg1)
cnord9_min<-min(cnord9$Hg1)
cnord9_max<-min(cnord9$Hg1)

cnord10<-(filter(Water_centro_n_df, Mese == 10))
cnord10_median<-median(cnord10$Hg1)
cnord10_mean<-mean(cnord10$Hg1)
cnord10_min<-min(cnord10$Hg1)
cnord10_max<-min(cnord10$Hg1)

cnord11<-(filter(Water_centro_n_df, Mese == 11))
cnord11_median<-median(cnord11$Hg1)
cnord11_mean<-mean(cnord11$Hg1)
cnord11_min<-min(cnord11$Hg1)
cnord11_max<-min(cnord11$Hg1)

cnord12<-(filter(Water_centro_n_df, Mese == 12))
cnord12_median<-median(cnord12$Hg1)
cnord12_mean<-mean(cnord12$Hg1)
cnord12_min<-min(cnord12$Hg1)
cnord12_max<-min(cnord12$Hg1)

cnords_median<-c(cnord1_median, cnord2_median,cnord3_median,cnord4_median,
				  cnord5_median,cnord6_median, cnord7_median,cnord8_median,cnord9_median,
				  cnord10_median,cnord11_median,cnord12_median)		  
				  
cnords_mean<-c(cnord1_mean, cnord2_mean,cnord3_mean,cnord4_mean,
				  cnord5_mean,cnord6_mean, cnord7_mean,cnord8_mean,cnord9_mean,
				  cnord10_mean,cnord11_mean,cnord12_mean)
				  				  
cnords_min<-c(cnord1_min, cnord2_min,cnord3_min,cnord4_min,
				  cnord5_min,cnord6_min, cnord7_min,cnord8_min,cnord9_min,
				  cnord10_min,cnord11_min,cnord12_min)		  
				  				  
cnords_max<-c(cnord1_max, cnord2_max,cnord3_max,cnord4_max,
				  cnord5_max,cnord6_max, cnord7_max,cnord8_max,cnord9_max,
				  cnord10_max,cnord11_max,cnord12_max)
			

df_CnordMELa<-data.frame(cnords_median, cnords_mean, cnords_min, cnords_max )				  
write.table(df_CnordMELa, file = 'water_CnordMELA_mediemese.txt')
				  			
csud1<-(filter(Water_centro_s_df, Mese == 1))
csud1_median<-median(csud1$Hg1)
csud1_mean<-mean(csud1$Hg1)
csud1_min<-min(csud1$Hg1)
csud1_max<-min(csud1$Hg1)

csud2<-(filter(Water_centro_s_df, Mese == 2))
csud2_median<-median(csud2$Hg1)
csud2_mean<-mean(csud2$Hg1)
csud2_min<-min(csud2$Hg1)
csud2_max<-min(csud2$Hg1)

csud3<-(filter(Water_centro_s_df, Mese == 3))
csud3_median<-median(csud3$Hg1)
csud3_mean<-mean(csud3$Hg1)
csud3_min<-min(csud3$Hg1)
csud3_max<-min(csud3$Hg1)

csud4<-(filter(Water_centro_s_df, Mese == 4))
csud4_median<-median(csud4$Hg1)
csud4_mean<-mean(csud4$Hg1)
csud4_min<-min(csud4$Hg1)
csud4_max<-min(csud4$Hg1)

csud5<-(filter(Water_centro_s_df, Mese == 5))
csud5_median<-median(csud5$Hg1)
csud5_mean<-mean(csud5$Hg1)
csud5_min<-min(csud5$Hg1)
csud5_max<-min(csud5$Hg1)

csud6<-(filter(Water_centro_s_df, Mese == 6))
csud6_median<-median(csud6$Hg1)
csud6_mean<-mean(csud6$Hg1)
csud6_min<-min(csud6$Hg1)
csud6_max<-min(csud6$Hg1)

csud7<-(filter(Water_centro_s_df, Mese ==7))
csud7_median<-median(csud7$Hg1)
csud7_mean<-mean(csud7$Hg1)
csud7_min<-min(csud7$Hg1)
csud7_max<-min(csud7$Hg1)

csud8<-(filter(Water_centro_s_df, Mese == 8))
csud8_median<-median(csud8$Hg1)
csud8_mean<-mean(csud8$Hg1)
csud8_min<-min(csud8$Hg1)
csud8_max<-min(csud8$Hg1)

csud9<-(filter(Water_centro_s_df, Mese == 9))
csud9_median<-median(csud9$Hg1)
csud9_mean<-mean(csud9$Hg1)
csud9_min<-min(csud9$Hg1)
csud9_max<-min(csud9$Hg1)

csud10<-(filter(Water_centro_s_df, Mese == 10))
csud10_median<-median(csud10$Hg1)
csud10_mean<-mean(csud10$Hg1)
csud10_min<-min(csud10$Hg1)
csud10_max<-min(csud10$Hg1)

csud11<-(filter(Water_centro_s_df, Mese == 11))
csud11_median<-median(csud11$Hg1)
csud11_mean<-mean(csud11$Hg1)
csud11_min<-min(csud11$Hg1)
csud11_max<-min(csud11$Hg1)

csud12<-(filter(Water_centro_s_df, Mese == 12))
csud12_median<-median(csud12$Hg1)
csud12_mean<-mean(csud12$Hg1)
csud12_min<-min(csud12$Hg1)
csud12_max<-min(csud12$Hg1)

csuds_median<-c(csud1_median, csud2_median,csud3_median,csud4_median,
				  csud5_median,csud6_median, csud7_median,csud8_median,csud9_median,
				  csud10_median,csud11_median,csud12_median)		  
				  
csuds_mean<-c(csud1_mean, csud2_mean,csud3_mean,csud4_mean,
				  csud5_mean,csud6_mean, csud7_mean,csud8_mean,csud9_mean,
				  csud10_mean,csud11_mean,csud12_mean)
				  				  
csuds_min<-c(csud1_min, csud2_min,csud3_min,csud4_min,
				  csud5_min,csud6_min, csud7_min,csud8_min,csud9_min,
				  csud10_min,csud11_min,csud12_min)		  
				  				  
csuds_max<-c(csud1_max, csud2_max,csud3_max,csud4_max,
				  csud5_max,csud6_max, csud7_max,csud8_max,csud9_max,
				  csud10_max,csud11_max,csud12_max)
				  
df_CsudMELa<-data.frame(csuds_median, csuds_mean, csuds_min, csuds_max )				  
write.table(df_CsudMELa, file = 'water_CsudMELA_mediemese.txt') 
				  
		  
sud1<-(filter(Water_sud_df, Mese == 1))
sud1_median<-median(sud1$Hg1)
sud1_mean<-mean(sud1$Hg1)
sud1_min<-min(sud1$Hg1)
sud1_max<-min(sud1$Hg1)

sud2<-(filter(Water_sud_df, Mese == 2))
sud2_median<-median(sud2$Hg1)
sud2_mean<-mean(sud2$Hg1)
sud2_min<-min(sud2$Hg1)
sud2_max<-min(sud2$Hg1)

sud3<-(filter(Water_sud_df, Mese == 3))
sud3_median<-median(sud3$Hg1)
sud3_mean<-mean(sud3$Hg1)
sud3_min<-min(sud3$Hg1)
sud3_max<-min(sud3$Hg1)

sud4<-(filter(Water_sud_df, Mese == 4))
sud4_median<-median(sud4$Hg1)
sud4_mean<-mean(sud4$Hg1)
sud4_min<-min(sud4$Hg1)
sud4_max<-min(sud4$Hg1)

sud5<-(filter(Water_sud_df, Mese == 5))
sud5_median<-median(sud5$Hg1)
sud5_mean<-mean(sud5$Hg1)
sud5_min<-min(sud5$Hg1)
sud5_max<-min(sud5$Hg1)

sud6<-(filter(Water_sud_df, Mese == 6))
sud6_median<-median(sud6$Hg1)
sud6_mean<-mean(sud6$Hg1)
sud6_min<-min(sud6$Hg1)
sud6_max<-min(sud6$Hg1)

sud7<-(filter(Water_sud_df, Mese ==7))
sud7_median<-median(sud7$Hg1)
sud7_mean<-mean(sud7$Hg1)
sud7_min<-min(sud7$Hg1)
sud7_max<-min(sud7$Hg1)

sud8<-(filter(Water_sud_df, Mese == 8))
sud8_median<-median(sud8$Hg1)
sud8_mean<-mean(sud8$Hg1)
sud8_min<-min(sud8$Hg1)
sud8_max<-min(sud8$Hg1)

sud9<-(filter(Water_sud_df, Mese == 9))
sud9_median<-median(sud9$Hg1)
sud9_mean<-mean(sud9$Hg1)
sud9_min<-min(sud9$Hg1)
sud9_max<-min(sud9$Hg1)

sud10<-(filter(Water_sud_df, Mese == 10))
sud10_median<-median(sud10$Hg1)
sud10_mean<-mean(sud10$Hg1)
sud10_min<-min(sud10$Hg1)
sud10_max<-min(sud10$Hg1)

sud11<-(filter(Water_sud_df, Mese == 11))
sud11_median<-median(sud11$Hg1)
sud11_mean<-mean(sud11$Hg1)
sud11_min<-min(sud11$Hg1)
sud11_max<-min(sud11$Hg1)

sud12<-(filter(Water_sud_df, Mese == 12))
sud12_median<-median(sud12$Hg1)
sud12_mean<-mean(sud12$Hg1)
sud12_min<-min(sud12$Hg1)
sud12_max<-min(sud12$Hg1)

boxplot(suds_all)
suds_all<-data.frame(sud1$Hg1,sud2$Hg1,sud3$Hg1,sud4$Hg1,
                sud5$Hg1,sud6$Hg1,sud7$Hg1,sud8$Hg1,sud9$Hg1,
                sud10$Hg1,sud11$Hg1,sud12$Hg1, check.rows=FALSE)		  


suds_median<-c(sud1_median, sud2_median,sud3_median,sud4_median,
				  sud5_median,sud6_median, sud7_median,sud8_median,sud9_median,
				  sud10_median,sud11_median,sud12_median)		  
		  
suds_mean<-c(sud1_mean, sud2_mean,sud3_mean,sud4_mean,
				  sud5_mean,sud6_mean, sud7_mean,sud8_mean,sud9_mean,
				  sud10_mean,sud11_mean,sud12_mean)
				  				  
suds_min<-c(sud1_min, sud2_min,sud3_min,sud4_min,
				  sud5_min,sud6_min, sud7_min,sud8_min,sud9_min,
				  sud10_min,sud11_min,sud12_min)		  
				  				  
suds_max<-c(sud1_max, sud2_max,sud3_max,sud4_max,
				  sud5_max,sud6_max, sud7_max,sud8_max,sud9_max,
				  sud10_max,sud11_max,sud12_max)

df_sudMELa<-data.frame(suds_median, suds_mean, suds_min, suds_max )				  
write.table(df_sudMELa, file = 'water_sudMELA_mediemese.txt') 


df_nordMELa
