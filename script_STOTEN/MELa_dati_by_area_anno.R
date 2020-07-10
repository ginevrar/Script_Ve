setwd('C:/Users/gi/Downloads/')
setwd('G:/Il mio Drive/MERCURIO/Venezia/2017_Venice')
Mel<-read.csv('Hg_acque_MEla.csv', header=T, sep=';') #setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice/res_eutr7')

summary(Mel)
Mel$Hg1<-Mel$Hg*1000

summary(Mel$Hg1)

Melaa<-Mel[(Mel$Hg1<660),]
summary(Melaa$Hg1)


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

Water_centro_s_df<-Mela1[(Mela1$Zone == 'Centro-Sud'),]
Water_centro_s<-Water_centro_s_df$Hg1
Water_sud_df<-Mela1[(Mela1$Zone == 'Sud'),]
Water_sud<-Water_sud_df$Hg1

library(dplyr)

nord_2002<-(filter(Water_nord_df, Anno == 2002))
nord_2002_median<-median(nord_2002$Hg1)
nord_2002_mean<-mean(nord_2002$Hg1)
nord_2002_min<-min(nord_2002$Hg1)
nord_2002_max<-max(nord_2002$Hg1)

nord_2003<-(filter(Water_nord_df, Anno == 2003))
nord_2003_median<-median(nord_2003$Hg1)
nord_2003_mean<-mean(nord_2003$Hg1)
nord_2003_min<-min(nord_2003$Hg1)
nord_2003_max<-max(nord_2003$Hg1)

nord_2004<-(filter(Water_nord_df, Anno == 2004))
nord_2004_median<-median(nord_2004$Hg1)
nord_2004_mean<-mean(nord_2004$Hg1)
nord_2004_min<-min(nord_2004$Hg1)
nord_2004_max<-max(nord_2004$Hg1)

nord_2005<-(filter(Water_nord_df, Anno == 2005))
nord_2005_median<-median(nord_2005$Hg1)
nord_2005_mean<-mean(nord_2005$Hg1)
nord_2005_min<-min(nord_2005$Hg1)
nord_2005_max<-max(nord_2005$Hg1)

nord_2007<-(filter(Water_nord_df, Anno == 2007))
nord_2007_median<-median(nord_2007$Hg1)
nord_2007_mean<-mean(nord_2007$Hg1)
nord_2007_min<-min(nord_2007$Hg1)
nord_2007_max<-max(nord_2007$Hg1)

nord_2008<-(filter(Water_nord_df, Anno == 2008))
nord_2008_median<-median(nord_2008$Hg1)
nord_2008_mean<-mean(nord_2008$Hg1)
nord_2008_min<-min(nord_2008$Hg1)
nord_2008_max<-max(nord_2008$Hg1)


nords_median<-c(nord_2002_median, nord_2003_median,nord_2004_median,nord_2005_median,
                nord_2007_median,nord_2008_median)		  

nords_mean<-c(nord_2002_mean, nord_2003_mean,nord_2004_mean,nord_2005_mean,
              nord_2007_mean,nord_2008_mean)		  

nords_min<-c(nord_2002_min, nord_2003_min,nord_2004_min,nord_2005_min,
             nord_2007_min,nord_2008_min)		  

nords_max<-c(nord_2002_max, nord_2003_max,nord_2004_max,nord_2005_max,
              nord_2007_max,nord_2008_max)	

df_nordMELa_y<-data.frame(nords_median, nords_mean, nords_min, nords_max )				  


write.table(df_nordMELa_y, file = 'water_nordMELA_medie_y.txt')

cnord_2002<-(filter(Water_centro_n_df, Anno == 2002))
cnord_2002_median<-median(cnord_2002$Hg1)
cnord_2002_mean<-mean(cnord_2002$Hg1)
cnord_2002_min<-min(cnord_2002$Hg1)
cnord_2002_max<-min(cnord_2002$Hg1)

cnord_2003<-(filter(Water_centro_n_df, Anno == 2003))
cnord_2003_median<-median(cnord_2003$Hg1)
cnord_2003_mean<-mean(cnord_2003$Hg1)
cnord_2003_min<-min(cnord_2003$Hg1)
cnord_2003_max<-min(cnord_2003$Hg1)

cnord_2004<-(filter(Water_centro_n_df, Anno == 2004))
cnord_2004_median<-median(cnord_2004$Hg1)
cnord_2004_mean<-mean(cnord_2004$Hg1)
cnord_2004_min<-min(cnord_2004$Hg1)
cnord_2004_max<-min(cnord_2004$Hg1)

cnord_2005<-(filter(Water_centro_n_df, Anno == 2005))
cnord_2005_median<-median(cnord_2005$Hg1)
cnord_2005_mean<-mean(cnord_2005$Hg1)
cnord_2005_min<-min(cnord_2005$Hg1)
cnord_2005_max<-min(cnord_2005$Hg1)

cnord_2007<-(filter(Water_centro_n_df, Anno == 2007))
cnord_2007_median<-median(cnord_2007$Hg1)
cnord_2007_mean<-mean(cnord_2007$Hg1)
cnord_2007_min<-min(cnord_2007$Hg1)
cnord_2007_max<-min(cnord_2007$Hg1)

cnord_2008<-(filter(Water_centro_n_df, Anno == 2008))
cnord_2008_median<-median(cnord_2008$Hg1)
cnord_2008_mean<-mean(cnord_2008$Hg1)
cnord_2008_min<-min(cnord_2008$Hg1)
cnord_2008_max<-min(cnord_2008$Hg1)

cnords_median<-c(cnord_2002_median, cnord_2003_median,cnord_2004_median,cnord_2005_median,
                 cnord_2007_median,cnord_2008_median)	  

cnords_mean<-c(cnord_2002_mean, cnord_2003_mean,cnord_2004_mean,cnord_2005_mean,
               cnord_2007_mean,cnord_2008_mean)	  

cnords_min<-c(cnord_2002_min, cnord_2003_min,cnord_2004_min,cnord_2005_min,
              cnord_2007_min,cnord_2008_min)	  

cnords_max<-c(cnord_2002_max, cnord_2003_max,cnord_2004_max,cnord_2005_max,
              cnord_2007_max,cnord_2008_max)	  

df_CnordMELa_y<-data.frame(cnords_median, cnords_mean, cnords_min, cnords_max )				  
write.table(df_CnordMELa_y, file = 'water_CnordMELA_medie_y.txt')


csud_2002<-(filter(Water_centro_s_df, Anno == 2002))
csud_2002_median<-median(csud_2002$Hg1)
csud_2002_mean<-mean(csud_2002$Hg1)
csud_2002_min<-min(csud_2002$Hg1)
csud_2002_max<-min(csud_2002$Hg1)

csud_2003<-(filter(Water_centro_s_df, Anno == 2003))
csud_2003_median<-median(csud_2003$Hg1)
csud_2003_mean<-mean(csud_2003$Hg1)
csud_2003_min<-min(csud_2003$Hg1)
csud_2003_max<-min(csud_2003$Hg1)

csud_2004<-(filter(Water_centro_s_df, Anno == 2004))
csud_2004_median<-median(csud_2004$Hg1)
csud_2004_mean<-mean(csud_2004$Hg1)
csud_2004_min<-min(csud_2004$Hg1)
csud_2004_max<-min(csud_2004$Hg1)

csud_2005<-(filter(Water_centro_s_df, Anno == 2005))
csud_2005_median<-median(csud_2005$Hg1)
csud_2005_mean<-mean(csud_2005$Hg1)
csud_2005_min<-min(csud_2005$Hg1)
csud_2005_max<-min(csud_2005$Hg1)

csud_2007<-(filter(Water_centro_s_df, Anno == 2007))
csud_2007_median<-median(csud_2007$Hg1)
csud_2007_mean<-mean(csud_2007$Hg1)
csud_2007_min<-min(csud_2007$Hg1)
csud_2007_max<-min(csud_2007$Hg1)

csud_2008<-(filter(Water_centro_s_df, Anno == 2008))
csud_2008_median<-median(csud_2008$Hg1)
csud_2008_mean<-mean(csud_2008$Hg1)
csud_2008_min<-min(csud_2008$Hg1)
csud_2008_max<-min(csud_2008$Hg1)

csuds_median<-c(csud_2002_median, csud_2003_median,csud_2004_median,csud_2005_median,
                csud_2007_median,csud_2008_median)		  

csuds_mean<-c(csud_2002_mean, csud_2003_mean,csud_2004_mean,csud_2005_mean,
              csud_2007_mean,csud_2008_mean)

csuds_min<-c(csud_2002_min, csud_2003_min,csud_2004_min,csud_2005_min,
             csud_2007_min,csud_2008_min)  

csuds_max<-c(csud_2002_max, csud_2003_max,csud_2004_max,csud_2005_max,
             csud_2007_max,csud_2008_max)

df_CsudMELa_y<-data.frame(csuds_median, csuds_mean, csuds_min, csuds_max )				  
write.table(df_CsudMELa_y, file = 'water_CsudMELA_medie_y.txt') 


sud_2002<-(filter(Water_sud_df, Anno == 2002))
sud_2002_median<-median(sud_2002$Hg1)
sud_2002_mean<-mean(sud_2002$Hg1)
sud_2002_min<-min(sud_2002$Hg1)
sud_2002_max<-min(sud_2002$Hg1)

sud_2003<-(filter(Water_sud_df, Anno == 2003))
sud_2003_median<-median(sud_2003$Hg1)
sud_2003_mean<-mean(sud_2003$Hg1)
sud_2003_min<-min(sud_2003$Hg1)
sud_2003_max<-min(sud_2003$Hg1)

sud_2004<-(filter(Water_sud_df, Anno == 2004))
sud_2004_median<-median(sud_2004$Hg1)
sud_2004_mean<-mean(sud_2004$Hg1)
sud_2004_min<-min(sud_2004$Hg1)
sud_2004_max<-min(sud_2004$Hg1)

sud_2005<-(filter(Water_sud_df, Anno == 2005))
sud_2005_median<-median(sud_2005$Hg1)
sud_2005_mean<-mean(sud_2005$Hg1)
sud_2005_min<-min(sud_2005$Hg1)
sud_2005_max<-min(sud_2005$Hg1)

sud_2007<-(filter(Water_sud_df, Anno == 2007))
sud_2007_median<-median(sud_2007$Hg1)
sud_2007_mean<-mean(sud_2007$Hg1)
sud_2007_min<-min(sud_2007$Hg1)
sud_2007_max<-min(sud_2007$Hg1)

sud_2008<-(filter(Water_sud_df, Anno == 2008))
sud_2008_median<-median(sud_2008$Hg1)
sud_2008_mean<-mean(sud_2008$Hg1)
sud_2008_min<-min(sud_2008$Hg1)
sud_2008_max<-min(sud_2008$Hg1)


suds<-c(sud_2002$Hg1, sud_2003$Hg1,sud_2004$Hg1,sud_2005$Hg1,
        rep(NA,12), sud_2007$Hg1,sud_2008$Hg1)		  


suds_median<-c(sud_2002_median, sud_2003_median,sud_2004_median,sud_2005_median,NA,
               sud_2007_median,sud_2008_median)		  

suds_mean<-c(sud_2002_mean, sud_2003_mean,sud_2004_mean,sud_2005_mean,NA,
             sud_2007_mean,sud_2008_mean)

suds_min<-c(sud_2002_min, sud_2003_min,sud_2004_min,sud_2005_min,NA,
            sud_2007_min,sud_2008_min)		  

suds_max<-c(sud1_max, sud_2003_max,sud_2004_max,sud_2005_max,NA,
            sud_2007_max,sud_2008_max)

df_sudMELa<-data.frame(suds_median, suds_mean, suds_min, suds_max )				  
write.table(df_sudMELa, file = 'water_sudMELA_medie_y.txt') 


df_nordMELa
