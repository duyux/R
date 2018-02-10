library(vcd)
counts <- table(Arthritis$Improved)
counts

barplot(counts,main="Simple Bar Polot",xlab="Imporovement",ylab="Frequency")

barplot(counts,main="Horizontal Bar Polot",xlab="Frequency",
        ylab="Imporovement",horiz = TRUE)

#堆叠条形图和分组条形图
counts <- table(Arthritis$Improved,Arthritis$Treatment)
barplot(counts,main="Stacked Bar Polot",xlab="Treatment",
        ylab="Frequency",col=c("red","yellow","green"),legend=rownames(counts))

barplot(counts,main="Grouped Bar Polot",xlab="Treatment",
        ylab="Frequency",col=c("red","yellow","green"),legend=rownames(counts),
        beside=TRUE)


#均值条形图
states <- data.frame(state.region,state.x77)
means<- aggregate(states$Illiteracy,by=list(state.region),FUN=mean)
means <- means[order(means$x),]

barplot(means$x,names.arg=means$Group.1)