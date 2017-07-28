library(maps)
library(ggplot2)
states<-map_data("state")
arrests<-USArrests
names(arrests)<-tolower(names(arrests))
arrests$region<-tolower(rownames(USArrests))

choro<-merge(states,arrests,by="region")

## 由于绘制多边形时涉及顺序问题
## 且merge破坏了原始排序 故将进行重新排序
choro<-choro[order(choro$order),]
qplot(long,lat,data=choro,group=group,
      fill=assault,geom="polygon")

qplot(long,lat,data=choro,group=group,
      fill=assault/murder,geom="polygon")