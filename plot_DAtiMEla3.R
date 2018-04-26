setwd('C:/Users/Ginevra/Dropbox/2017_Venice')
new_laguna<-read.table('dati_mela_zone_puliti.txt', header=T)
str(new_laguna$Anno)


png('new_DATI_mela_by_year_nOOUT2.png', height = 20, width = 28, units = 'cm',
    res=300)
btt<-boxplot(new_laguna$Hg1 ~ new_laguna$Anno, ylim=c(0,100),outline=T,
             varwidth=T, ylab='ng/l')
abline(h=10, col='red',lty=3)
lines(1:5, btt$stats[ 3, ],lwd=2.5,col='gray90')  # values of medians as y-arg to `lines`
plot(btt)
dev.off()

new_laguna2<-laguna[(laguna$Anno!=2005),] #dati senza il 2005

##DAti per MESE
png('DATI_mela_by_seasonok__.png', height = 20, width = 38, units = 'cm', res=300)
par(mfrow=c(2,1), mar=c(0,4,2,1))
btt<-boxplot(new_laguna$Hg1 ~ new_laguna$Mese, ylim=c(0,100),outline=T,
             cex.axis=1.1, names=c('J','F','M','A','M','J','J','A','S','O','N','D'),
             xlim=c(0,13), varwidth=T, ylab='ng/l', xaxt='n', main='Hg nelle acque')
abline(h=10, col='red', lty=3)

lines(1:12, btt$stats[ 3, ],lwd=2.5,col='gray90')  
par(mar=c(2,4,0,1))# values of medians as y-arg to `lines`
btt<-boxplot(new_laguna2$Hg1 ~ new_laguna2$Mese, ylim=c(0,50),outline=T, ylab='ng/l',
             names=c('J','F','M','A','M','J','J','A','S','O','N','D'),cex.axis=1.1, 
             xlim=c(0,13), varwidth=T)
abline(h=10, col='red', lty=3)
lines(1:12, btt$stats[ 3, ],lwd=2.5,col='gray90') 
text(.5,40,'Esclusi dati 2005')   # values of medians as y-arg to `lines`
dev.off()

 # DATASET ordinato per zone
new_laguna$Zona <- factor(new_laguna$Zona, 
                          levels = c("Nord", "Centro-Nord", 
                                     "Città",'Centro-Sud','Sud'))

levels(new_laguna$Zona)

new_laguna4<-new_laguna[complete.cases(new_laguna), ]

#new_laguna4$Zona<- factor(new_laguna4$Zona, 
#                          levels = c("Nord", "Centro-Nord", 
 #                                    "Città",'Centro-Sud','Sud'))

new_laguna4$Staz<- factor(new_laguna4$Staz, 
                          levels = c("B01","B02", "B03","B04","C01","C02", 
                                     "B05","B06","B07","B08",'CS',"B09",'B10','B11',
                                     "C03","C04","C05", 
                                      "B14","B15", 'C07',
                                     "B16","B17","B18","B19",'B20','C08'))
library(RColorBrewer)

f <- function(x) factor(x, levels = unique(x))

display.brewer.all() 

#gs.pal that accepts the number of colors you want evenly spaced between the two hex code, e.g. gs.pal(5) will generate 5 different evenly spaced color codes
gs.pal <- colorRampPalette(c("#40004b","#de77ae","#4d9221"),bias=1,space="rgb")
#40004b

aa<-c("#40004b","#de77ae","#000000",'#276419','#4d9221') #SCALA COLORE
bb<-c('#4575b4','#e5e572','#000000','#f79220','#a50028')

new_laguna4<-new_laguna4[(new_laguna4$Hg1<300),]
str(new_laguna4)
names(new_laguna4)<-c('Stazione','Anno','Mese','Hg','Hg1', 'Zona')
library(grid)

summary(new_laguna4$Hg1)

g<-ggplot(new_laguna4,aes(Anno, Stazione))
g+geom_jitter(alpha=0.4, aes(color=Zona, size=Hg1),
  position = position_jitter(width = 0.1))+ theme_bw() + 
  coord_flip() +
  scale_colour_manual(values=bb)+
  scale_size_continuous(range = c(2, 20))+
theme(legend.text=element_text(size=15))+ 
  annotation_custom(my_grob)+
  annotation_custom(my_grob2)+
  annotation_custom(my_grob3)+
  annotation_custom(my_grob4)+
  annotation_custom(my_grob5)+
  annotation_custom(my_grob5)+
  theme(axis.text.x = element_text(size=15),
      axis.text.y = element_text(size=15), 
      axis.title.x=element_text(size=15), axis.title.y=element_text(size=15)) 

   scale_colour_brewer(palette = "Spectral")
  
 b8<-new_laguna4[(new_laguna4$Staz=='B08'),]


  Water_nord<-new_laguna4[(new_laguna4$Zona == 'Nord'),]
  summary(Water_nord); 
  Water_sud<-new_laguna4[(new_laguna4$Zona == 'Sud'),]
  summary(Water_sud)
  
  
  
  scale_fill_brewer(palette="Spectral")
  
  
  scale_fill_gradient(
    low = "red",
    high = "yellow") 
  
  
  scale_fill_gradientn(colours = (5))


  scale_y_continuous(breaks = round(seq(min(new_laguna4$Anno), 
                                        max(new_laguna4$Anno), by = 1),1))


+ 
  aes(x = fct_inorder(Zona)) +
  theme(panel.border = element_blank(), 
  panel.grid.major = element_blank(),
  panel.grid.minor = element_blank(), axis.line = element_line(colour = "black"))

new_laguna3<-new_laguna[order(new_laguna$Zona),]

with(new_laguna, new_laguna[order(sex, y, x),])

library(plyr,  lib.loc="~/R/win-library/3.4")
library(ggplot2)
library(ggsignif)

ggplot(new_laguna4, aes(x=Anno, y=Hg, group=Anno)) + 
  geom_boxplot() +
  geom_signif(comparisons = list((c("2003", "2005")), 
              map_signif_level=T))
