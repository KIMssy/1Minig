chem<-read.csv("D:/r_sy/datas/chem.csv")
attach(chem)
head(chem)
class(chem)
dim(chem)
x<-chem[,3:5]
x
y<-chem[, 1:2]
y
cor(chem)
cancor(x,y)
library(CCA)
xy<-cc(x,y)
xy
plt.cc(xy, type = 'b', var.label = T)
u1<-xy$scores$xscores[,1]
v1<-xy$scores$xscores[,1]
plot(u1,v1,pch = 15)
u2<-xy$scores$xscores[,2]
v1<-xy$scores$xscores[,1]
plot(u2,v2,pch = 16)