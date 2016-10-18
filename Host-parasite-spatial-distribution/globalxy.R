globalxy = function (col = hal$Col, row = hal$Row, locx = hal$localX, locy = hal$localY)
{
col = gsub("AA","ZZ",as.character(col))
xpost = 20*(as.numeric(as.factor(col))-1)
ypost = 20*(max(row)-row)
globalx = xpost + as.numeric(locx)
globaly = ypost + as.numeric(locy)
return(cbind(globalx, globaly))
}