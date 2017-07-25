# R语言学习

> ggplot2：数据分析与图形艺术_读书笔记

### 生成一个组距为2，铁青色的直方图 

``` bash
library("ggplot2")
p<-ggplot(diamonds,aes(x=carat))
p<-p+layer(
  geom="bar",
  params=list(fill="steelblue",binwidth=2),
  stat="bin",
  position="identity"
)
p

```

### ggplot2的数据结构 

``` bash


```


