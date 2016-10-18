halplot = function(hal=hal, coords=glob)
{
vis25 = c("black","azure4","blue",  "brown1","burlywood1","chartreuse1",  "chocolate2" ,"coral1","cyan1", "darkcyan",  "darkgoldenrod2" , "darkgreen", "darkmagenta" , "darkolivegreen4","darkorange4","darkorchid1","darkred",   "aquamarine1","blue4", "burlywood4","cornflowerblue" ,"yellow","sienna","hotpink",   "red",   "palegreen")
palette(vis25)
#coords = globalxy()
plot(coords, col=as.numeric(as.factor(hal$SP.CODE)), cex=hal$DBH.1/30)
x=c(rep(50,length(unique(hal$SP.CODE))/2),rep(100,length(unique(hal$SP.CODE))/2))
y = 5+8*c(1:(length(unique(hal$SP.CODE))/2),1:(length(unique(hal$SP.CODE))/2))
points(x, y, col=as.numeric(as.factor(unique(hal$SP.CODE))) )
text(x+15,y,labels=unique(hal$SP.CODE))
}