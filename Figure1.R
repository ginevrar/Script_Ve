setwd('G:/Il mio Drive/MERCURIO/Venezia/2017_Venice')
library(ggplot2)
library(ggmap);library(mapproj)   #library(rworldmap);
library(grid);library(gridExtra);library(dplyr)

if(!requireNamespace("devtools")) install.packages("devtools")
devtools::install_github("dkahle/ggmap", ref = "tidyup")
ggmap(get_googlemap())
register_google(key = "my_google_key_here")
geocode("waco texas")


height <- 45.55 - 45.2
width <- 12.6 - 12.15

# For stamen map, you have to give the extremity of the window you are looking at. here is an example with the watercolor background (Around brisbane)
map <- get_stamenmap( bbox = c(left = 12.15- 0.1 * width,bottom = 45.2- 0.1 * height, 
                               right = 12.6+ 0.1 * width, top =45.55+ 0.1 * height),
                      zoom = 11, maptype = "terrain-background")

png('mappaVEnice_ok22__.png', width=21,height = 12,units = 'cm', res=300)
ggmap(map) + 
  labs(x = 'Longitude', y = 'Latitude') +
  ggtitle("The Venice Lagoon") + 
  theme(
    plot.title = element_text(colour = "#045a8d", size=20), 
    panel.border = element_rect(colour = "grey", fill=NA, size=2)
  )
dev.off()

# For stamen map, you have to give the extremity of the window you are looking at. here is an example with the watercolor background (Around brisbane)
map3 <- get_stamenmap( bbox = c(left = 12.1- 0.1 * width,bottom = 45.2- 0.1 * height, 
                               right = 12.6+ 0.1 * width, top =45.6+ 0.1 * height),
                      zoom = 10, maptype = "terrain-lines")
ggmap(map3) + 
  theme_void() + 
  theme(
    plot.title = element_text(colour = "orange"), 
    panel.border = element_rect(colour = "grey", fill=NA, size=2)
  )


# For stamen map, you have to give the extremity of the window you are looking at. here is an example with the watercolor background (Around brisbane)
map2 <- get_stamenmap( bbox = c(left = 12- 0.1 * width,bottom = 45.1- 0.1 * height, 
                               right = 12.6+ 0.1 * width, top =45.6+ 0.1 * height),
                      zoom = 10, maptype = "watercolor")
ggmap(map) + 
  theme_void() + 
  theme(
    plot.title = element_text(colour = "orange"), 
    panel.border = element_rect(colour = "grey", fill=NA, size=2)
  )
 


mappaV <- get_map(location = c(12.1,45.1, 12.65,45.6),maptype =c('watercolor'), source="stamen")





mappa__ <- get_map(location = c(-6,33,28,45), maptype =c('hybrid'))

png('Mappa_Ve4.png', width=700, height=836, units = 'px')
ggmap(mappaV) +
  labs(x = 'Longitude', y = 'Latitude') +
  theme(axis.text=element_text(size=18))+
  theme(axis.title = element_text(size=18))
  dev.off()
  
  
  png(file = "Mappa_MeDSea.png",width=690,  height=666, units = "px")
  ggmap(mappa__) +
  labs(x = 'Longitude', y = 'Latitude') +
    theme(axis.text=element_text(size=18))+
    theme(axis.title = element_text(size=18))
  dev.off()
  
  getwd()
  
  library(devtools)
  install_github("dkahle/ggmap")
  library(ggmap)
  