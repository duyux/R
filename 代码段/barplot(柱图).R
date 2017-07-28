
library(vcd)
counts <- table(Arthritis$Improved,Arthritis$Treatment)
counts

barplot(counts,main="Simple Bar Plot",xlab="ABC",
        ylab="Improvemeng",col=c("red","yellow","green"))
