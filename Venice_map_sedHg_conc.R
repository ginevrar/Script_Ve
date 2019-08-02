setwd('G:/Il mio Drive/MERCURIO/Venezia/')

dati<-read.table('QSEV_data_box.txt', header=T); str(dati)

dati<-filter(dati,sed_layer=='A')

min(dati$Hg*1000)
max(dati$Hg)

library(rgdal)
d <- data.frame(lon=dati$X, lat=dati$Y)
coordinates(d) <- c("lon", "lat")
proj4string(d) <- CRS("+init=epsg:3004") # WGS 84
#CRS("+proj=longlat +datum=WGS84")       # WGS84  EPSG:4326
CRS.new <- CRS("+init=epsg:4326")
#CRS.new <- CRS("+proj=somerc +lat_0=46.9524056 +lon_0=7.43958333 +ellps=bessel +x_0=2600000 +y_0=1200000 +towgs84=674.374,15.056,405.346 +units=m +k_0=1 +no_defs")
# (@mdsumner points out that
#    
# will work, and indeed it does. See http://spatialreference.org/ref/epsg/2056/proj4/.)
d.ch1903 <- spTransform(d, CRS.new)
#
# Plot the results.
#
par(mfrow=c(1,3))
plot.default(dati2$lat,dati2$lon, main="Raw data", cex.axis=.95)
plot(d, axes=TRUE, main="Original lat-lon", cex.axis=.95)
plot(d.ch1903, axes=TRUE, main="Projected", cex.axis=.95)
unclass(d.ch1903)

dati$lon<-d.ch1903$lon
dati$lat<-d.ch1903$lat


# For stamen map, you have to give the extremity of the window you are looking at. here is an example with the watercolor background (Around brisbane)
map2 <- get_stamenmap( bbox = c(left = 12.15- 0.1 * width,bottom = 45.2- 0.1 * height, 
                                right = 12.6+ 0.1 * width, top =45.55+ 0.1 * height),
                       zoom = 11, maptype = "toner")




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

Hg_ug_g <-dati$Hg

png('mappaVEnice_conSED_CONC2.png', width=21,height = 12,units = 'cm', res=300)
ggmap(map2) + 
  labs(x = 'Longitude', y = 'Latitude') +
  ggtitle("The Venice Lagoon") + 
  theme(
    plot.title = element_text(colour = "#045a8d", size=20), 
    panel.border = element_rect(colour = "grey", fill=NA, size=2)
  )+ 
  geom_point(aes(x=lon, y=lat, size=Hg_ug_g), data=dati, col="orange", alpha=0.4) +  
  scale_size_continuous(range=range(dati$Hg*2))
dev.off()






g3<-ggplot(Mela1,aes(Year, Station))
g3+geom_jitter(alpha=0.4, aes(color=Zona, size=Hg_ng),
               position = position_jitter(width = 0.1))+ theme_bw() + 
  coord_flip() +
  scale_colour_manual(values=bb)+
  scale_size_continuous(range = c(1,20),breaks = uu)



dev.off()
