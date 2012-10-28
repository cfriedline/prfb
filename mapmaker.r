library(maptools)
library(maps)
taeda = readShapePoly("/Users/chris/Downloads/pinutaed/pinutaed.shp")
elli = readShapePoly("/Users/chris/Downloads/pinuelli/pinuelli.shp")
palu = readShapePoly("/Users/chris/Downloads/pinupalu/pinupalu.shp")
sero = readShapePoly("/Users/chris/Downloads/pinusero/pinusero.shp")
taedaname = "P. taeda"
elliname = "P. elliotti"
seroname = "P. serotina"
paluname = "P. palustrus"
taedacol = rgb(0, 0, 1, alpha=0.6)
ellicol = rgb(1, 0, 0, alpha=0.6)
serocol = rgb(0, 1, 0, alpha=0.6)
palucol = rgb(1, 1, 0, alpha=0.6)
regions = c("texas", "oklahoma", "arkansas", "louisiana", "mississippi", "georgia", "alabama", 
"florida", "tennessee", "south carolina", "north carolina", "virginia", "maryland", "delaware", "new jersey")

#legend x and y for full us map
legx = -120
legy = 31

#legend x and y for sub us map (only south/southeast)
sublegx = -95
sublegy = 30

#plot(xlab= expression(stuff~italic(stuffit)~bold(stuffbold)))
width=4.5
height=6
pdf("rangemap.pdf", version="1.5", width=width, height=height)
par(mfrow=c(2,1), mar=c(0,0,0,0), oma=c(1,1,0,0), xpd=NA)

#plot 1
map("state", regions=regions)
map.axes()
plot(taeda, col=taedacol, add=T, lty=1)
plot(elli, col=ellicol, add=T, lty=1)
legend(-96, sublegy, c(expression(italic("P. taeda")), expression(italic("P. elliotti"))), fill=c(taedacol, ellicol), bg="white", cex=1.2, bty="n")

#plot 2
map("state", regions=regions)
map.axes()
plot(sero, col=serocol, add=T, lty=1)
plot(palu, col=palucol, add=T, lty=1)
legend(-97, sublegy, c(expression(italic("P. serotina")), expression(italic("P. palustrus"))), fill=c(serocol, palucol), bg="white", cex=1.2, bty="n")

#axes labels
bottom = 1
left = 2
mtext("Longitude", side=bottom, outer=T)
mtext("Latitude", side=left, outer=T, )


dev.off()
