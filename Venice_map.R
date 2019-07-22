library(ggplot2)
library(ggmap);library(mapproj)   #library(rworldmap);
library(grid);library(gridExtra);library(dplyr)


height <- 45.55 - 45.2  # lat max - lat min
width <- 12.6 - 12.15   # lon max - lon min

# For stamen map, you have to give the extremity of the window you are looking at. here is an example with the watercolor background (Around brisbane)
map <- get_stamenmap( bbox = c(left = 12.15- 0.1 * width,bottom = 45.2- 0.1 * height, 
                               right = 12.6+ 0.1 * width, top =45.55+ 0.1 * height),
                      zoom = 11, maptype = "terrain-background")

win.graph()
#png('mappaVEnice_ok22__.png', width=21,height = 12,units = 'cm', res=300)
ggmap(map) + 
  labs(x = 'Longitude', y = 'Latitude') +
  ggtitle("The Venice Lagoon") + 
  theme(
    plot.title = element_text(colour = "#045a8d", size=20), 
    panel.border = element_rect(colour = "grey", fill=NA, size=2)
  )
#dev.off()


win.graph()

# For stamen map, you have to give the extremity of the window you are looking at. here is an example with the watercolor background (Around brisbane)
map2 <- get_stamenmap( bbox = c(left = 12.15- 0.1 * width,bottom = 45.2- 0.1 * height, 
                               right = 12.6+ 0.1 * width, top =45.55+ 0.1 * height),
                      zoom = 11, maptype = "toner-lite")


setwd("G:/Il mio Drive/MERCURIO/Venezia")
dati<-read.table('surf_sed.txt', header=T)

png('mappaVEnice_conSED_CONC2.png', width=21,height = 12,units = 'cm', res=300)
ggmap(map2) + 
  labs(x = 'Longitude', y = 'Latitude') +
  ggtitle("The Venice Lagoon") + 
  theme(
    plot.title = element_text(colour = "#045a8d", size=20), 
    panel.border = element_rect(colour = "grey", fill=NA, size=2)
  )+ 
  geom_point(aes(x=lon, y=lat), data=dati, col="orange", alpha=0.4, size=dati$Hg*2) +  
  scale_size_continuous(range=range(dati$Hg))

dev.off()

png('mappaVEnice_conSED_CONC2.png', width=21,height = 12,units = 'cm', res=300)
ggmap(map2) + 
  labs(x = 'Longitude', y = 'Latitude') +
  ggtitle("The Venice Lagoon") + 
  theme(
    plot.title = element_text(colour = "#045a8d", size=20), 
    panel.border = element_rect(colour = "grey", fill=NA, size=2)
  )+ 
  geom_point(aes(x=lon, y=lat), data=dati, col="orange", alpha=0.4, size=dati$Hg*2) +  
  scale_size_continuous(range=range(dati$Hg))

dev.off()

#
# ______________ Mappa coordinate stazioni sedimenti, richiede prima _______________________
# ______________ lo script Coord_conversion_MtMario_WGS84 __________________________________

map3 <- get_stamenmap( bbox = c(left = 12.15- 0.1 * width,bottom = 45.2- 0.1 * height, 
                                right = 12.6+ 0.1 * width, top =45.55+ 0.1 * height),
                       zoom = 11, maptype = "terrain-background")

ggmap(map3) + 
  labs(x = 'Longitude', y = 'Latitude') +
  ggtitle("The Venice Lagoon") + 
  theme(
    plot.title = element_text(colour = "#045a8d", size=20), 
    panel.border = element_rect(colour = "grey", fill=NA, size=2)
  )+ 
  geom_text(aes(x=(lon-.01), y=(lat+0.025)),hjust=0.1, vjust=2, data=dati2,size=3.4, label=dati2$st,col="black", alpha=1)+
 geom_point(aes(x=lon, y=lat), data=dati2, col="black", alpha=1, size=2.5) #+  
#  geom_point(aes(x=lon, y=lat), data=dati2, col="green", alpha=1, size=2) 
