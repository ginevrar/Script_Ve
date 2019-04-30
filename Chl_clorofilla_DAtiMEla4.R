  setwd('C:/Users/Acer/Dropbox/2017_Venice')
setwd('L:/Il mio Drive/MERCURIO/Venezia/2017_Venice')

setwd('G:\\Il mio Drive\\MERCURIO\\Venezia')


Mel<-read.csv('Mela_POC_TOC_TSS.csv', header=T, sep=';')

str(Mel)

Mela1<-Mel[(Mel$Staz!='M01' & Mel$Staz!='M02'& Mel$Staz!='B31'&
               Mel$Staz!='E'),]

summary(Mela1$Staz)

Mela1$Zone[Mela1$Staz == 'B01' | Mela1$Staz == 'B02'| Mela1$Staz == 'B03' |
             Mela1$Staz == 'B04'| Mela1$Staz == 'C01'| Mela1$Staz == 'C02'] <- "Nord"

Mela1$Zone[Mela1$Staz == 'B05' | Mela1$Staz == 'B06'| Mela1$Staz == 'B07' |
             Mela1$Staz == 'B08'| Mela1$Staz == 'B09'| Mela1$Staz == 'B10'|
             Mela1$Staz == 'B11'| Mela1$Staz == 'B12'| Mela1$Staz == 'C03'| Mela1$Staz == 'C04'|
             Mela1$Staz == 'C05'] <- "Centro-Nord"

Mela1$Zone[Mela1$Staz == 'CS' ] <- "Città"
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

is.na(Mela1)
str(Mela1)

names(Mela1)<-c('Anno', 'TOC', 'POC','DOC','Chl','vuoto','turbidity','TSS','Stazione','NA','Zona')


Mela1$Zona<-factor(Mela1$Zona, levels = c("Nord","Centro-Nord",
                                          "Industriali","Città","Centro-Sud","Sud"))


Mela_N<-Mela1[(Mela1$Zona=='Nord'),]
summary(Mela_N$Chl)

Mela_CN<-Mela1[(Mela1$Zona=='Centro-Nord'),]
summary(Mela_CN$Chl)

Mela_Cs<-Mela1[(Mela1$Zona=='Centro-Sud'),]
summary(Mela_Cs$Chl)

Mela_S<-Mela1[(Mela1$Zona=='Sud'),]
summary(Mela_S$Chl)
