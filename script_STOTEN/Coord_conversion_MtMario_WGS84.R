setwd('G:/Il mio Drive/MERCURIO/Venezia/')

dati<-read.table('QSEV_data_box.txt', header=T); str(dati)


#dati2<-read.table('C:\\Users\\Acer\\Dropbox\\fortran\\Coord_ve_sed.csv', header = T, sep=';')

dati2<-read.table('C:\\Users\\Acer\\Desktop\\ConcSolidi\\Coordinate_mare_lag.csv', header = T, sep=';')
dati2<-read.table('C:\\Users\\Acer\\Desktop\\ConcSolidi\\Coordinate.csv', header = T, sep=';')
#names(dati2)<-c('lat','lon','stn','st')

library(rgdal)
d <- data.frame(lon=dati2$lon, lat=dati2$lat)
#d <- data.frame(lon=dati$X, lat=dati$Y)
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
plot.default(dati2$x,dati2$y, main="Raw data", cex.axis=.95)
plot(d, axes=TRUE, main="Original lat-lon", cex.axis=.95)
plot(d.ch1903, axes=TRUE, main="Projected", cex.axis=.95)
unclass(d.ch1903)

dati2$lon<-d.ch1903$lon
dati2$lat<-d.ch1903$lat

surf_sed<-filter(dati,sed_layer=="A")
write.table(surf_sed,file='surf_sed.txt')
write.table(d.ch1903,file='ve_coord_converted.txt')

getwd()


