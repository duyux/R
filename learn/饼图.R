par(mfrow=c(2,2)) # 将四副图形组合为一幅
slices <- c(10,12,4,16,8)
lbls <- c("US","UK","Australia","Germany","France")
pie(slices,labels=lbls,main="Simple Pie Chart")

pct<- round(slices/sum(slices)*100)
lbls2 <- paste(lbls," ",pct,sep="")
pie(slices,labels=lbls2,col=rainbow(length(lbls2)),
    main="Pie Chart with Percentages")


library(plotrix)
pie3D(slices,labels=lbls,explode=0.1,
      main="3D Pie Chart")

mytable<- table(state.region)
lbls3 <- paste(names(mytable),"\n",mytable,sep="")
pie(mytable,lables=lbls3,main="Pie Chart from a Table\n(with same sizes)")