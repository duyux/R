library(Cairo)

x<-rnorm(6000)
y<-rnorm(6000)
png(file="plot4.png",width=640,heigh=480)
plot(x,y,col="#ff0018",pch=19,cex=2,main="Plot")
garbage <- dev.off()


CairoPNG(file="Cairo4.png",width=640,height=480)
plot(x,y,col="#ff0018",pch=19,cex=2,main="Cairo")
garbage <- dev.off()