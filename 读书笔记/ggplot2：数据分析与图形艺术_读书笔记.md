library("ggplot2")
p<-ggplot(diamonds,aes(x=carat))
p<-p+layer(
  geom="bar",
  params=list(fill="steelblue",binwidth=2),
  stat="bin",
  position="identity"
)
p

