halimage = function(z = halgrid$BA, x=halgrid$globalx, y=halgrid$globaly, frac = halgrid$frac, ex = 25)
{
palette(terrain.colors(101))
xedge = x[frac<=ex]
yedge = y[frac<=ex]
z = z[frac>ex]
x = x[frac>ex]
y = y[frac>ex]
zmin = min(z, na.rm=T)
zmax = max(z, na.rm=T)
zcol = 1+round(100*((z-zmin)/zmax))
plot(x,y, col="white", xlim=c(0,540), ylim=c(0,360), asp=1, axes=FALSE, xlab="", ylab="")
for (i in 1:length(z)) {
	rect(xleft = x[i], ybottom = y[i], xright = x[i]+20, ytop = y[i]+20, col = zcol[i])
	if(is.na(z[i])) rect(xleft = x[i], ybottom = y[i], xright = x[i]+20, ytop = y[i]+20, density=20)
}
for (i in 1:length(xedge)) {
	rect(xleft = xedge[i], ybottom = yedge[i], xright = xedge[i]+20, ytop = yedge[i]+20, density=20)
}
abline(h=seq(0,360,20), lty="dotted")
abline(v=seq(0,540,20), lty="dotted")
rect(-40,-40,580,0, col="white", border="white")
rect(-40,-40,0,400, col="white", border="white")
rect(-40,360,580,400, col="white", border="white")
rect(540,-40,580,400, col="white", border="white")
polygon(lakepoly, col="white")
polygon(lakepoly, border = "blue", col="gray")
rect(0,0,540,360)
for (i in 1:11) {
	rect(xleft = 20*(i-1), ybottom = 20, xright = 20*i, ytop = 40, col = 1+((i-1)*10))
	value = signif(zmin+((i-1)/10)*(zmax-zmin), digits=3)
	text(x=10+20*(i-1), y = 30, labels=as.character(value))
}
}