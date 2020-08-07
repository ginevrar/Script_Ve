setwd('C:/Users/Acer/Dropbox/2017_Venice')
setwd('G:\\Il mio Drive\\MERCURIO\\Venezia\\2017_Venice')
Mel<-read.csv('Hg_acque_MEla.csv', header=T, sep=';')
str(Mel)

Mel$Hg1<-Mel$Hg*1000

Mela<-Mel[(Mel$Staz!='M01' & Mel$Staz!='M02'& Mel$Staz!='B31'&
             Mel$Staz!='E' & Mel$Hg1<300 & Mel$Anno>2001),]

Mela1<-Mela[complete.cases(Mela),]

summary(Mela1)

Mela1$Zone[Mela1$Staz == 'B01' | Mela1$Staz == 'B02'| Mela1$Staz == 'B03' | Mela1$Staz == 'B05' |
             Mela1$Staz == 'B04'| Mela1$Staz == 'C01'| Mela1$Staz == 'C02'] <- "Nord"

Mela1$Zone[ Mela1$Staz == 'B06'| Mela1$Staz == 'B07' |
             Mela1$Staz == 'B08'| Mela1$Staz == 'B09'| Mela1$Staz == 'B10'|
             Mela1$Staz == 'B11'| Mela1$Staz == 'B12'| Mela1$Staz == 'C03'| Mela1$Staz == 'C04'|
             Mela1$Staz == 'C05'] <- "Centro-Nord"

Mela1$Zone[Mela1$Staz == 'CS' ] <- "Città"
Mela1$Zone[Mela1$Staz == 'CI' ] <- "Industriali"

Mela1$Zone[Mela1$Staz == 'B13' |Mela1$Staz == 'B14' | Mela1$Staz == 'B15'| Mela1$Staz == 'C06'| Mela1$Staz == 'C07'] <- "Centro-Sud"

Mela1$Zone[Mela1$Staz == 'B16' | Mela1$Staz == 'B17'| Mela1$Staz == 'B18'|
             Mela1$Staz == 'B19'| Mela1$Staz == 'B20'| Mela1$Staz == 'C08'] <- "Sud"


names(Mela1)<-c('Station','Year','Month','Hg (ug/g)','Hg_ng','Zona')

Mela1$Station<- factor(Mela1$Station, 
                    levels = c("B01","B02", "B03","B04","C01","C02", 
                               "B05","B06","B07",'CI',"B08",'CS',"B09",'B10','B11',
                               'B12',"C03","C04","C05", 
                               "B13","B14","B15", "C06", 'C07',
                               "B16","B17","B18","B19",'B20','C08'))

is.na(Mela1)
summary(Mela1)




Mela1$Zona<-factor(Mela1$Zona, levels = c("Nord","Centro-Nord",
                                          "Industriali","Città","Centro-Sud","Sud"))


library(ggplot2)
library(grid)

str(Mela1)
bb<-c('#4575b4','#e5e572','#4A2B09','black','#f79220','#a50028')


my_grob = grobTree(textGrob("North", x=0.08, y=0.7, 
                            gp=gpar(col="#4575b4", fontsize=23, fontface="bold")))
my_grob2 = grobTree(textGrob("Central-North", x=0.36, y=0.7, 
                             gp=gpar(col="#e6c500", fontsize=23, fontface="bold")))

my_grob3 = grobTree(textGrob("Venice \n City", x=0.425, y=0.42, 
                             gp=gpar(col="#000000", fontsize=16)))

my_grob6 = grobTree(textGrob("Industrial \n canals", x=0.25, y=0.43, 
                             gp=gpar(col="#4A2B09", fontsize=16)))

my_grob4 = grobTree(textGrob("Central-South", x=0.73, y=0.7, 
                             gp=gpar(col="#f79220", fontsize=23, fontface="bold")))

my_grob5 = grobTree(textGrob("South", x=0.87, y=.7, 
                             gp=gpar(col="#a50028", fontsize=23, fontface="bold")))

summary(Mela1$Hg_ng)


uu<-c(0.25,2.5,5,10,25,50,100)
png('DatiMELa_paper3d.png', res=300, units = "cm", width = 40, height = 17)
g3<-ggplot(Mela1,aes(Year, Station))
g3+geom_jitter(alpha=0.4, aes(color=Zona, size=Hg_ng),
               position = position_jitter(width = 0.1))+ theme_bw() + 
  coord_flip() +
  scale_colour_manual(values=bb)+
  scale_size_continuous(range = c(1,20),breaks = uu)
  #continuous_scale()+
  



  theme(legend.text=element_text(size=15))+ 
  annotation_custom(my_grob)+
  annotation_custom(my_grob2)+
  annotation_custom(my_grob3)+
  annotation_custom(my_grob4)+
  annotation_custom(my_grob5)+
  annotation_custom(my_grob6)+
  theme(axis.text.x = element_text(size=15),
        axis.text.y = element_text(size=15), 
        axis.title.x=element_text(size=15), axis.title.y=element_text(size=15)) 
dev.off()
#View(Mela2)
getwd()
