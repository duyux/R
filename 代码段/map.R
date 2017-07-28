library("maptools")
china_map = readShapePoly("D:/map/全国空间数据样例/bou2_4p.shp")       # 读取地图空间数据

# 现在地图是可用的了，但还需要加载和拼接行政信息，以便能与业务数据映射
library(ggplot2)
ggplot(china_map,aes(x=long,y=lat,group=group)) +
  geom_polygon(fill="white",colour="grey") +
  coord_map("polyconic")

x <- china_map@data          #读取行政信息
xs <- data.frame(x,id=seq(0:924)-1)          #含岛屿共925个形状


library(ggplot2)
china_map1 <- fortify(china_map)           #转化为数据框


library(plyr)
china_map_data <- join(china_map1, xs, type = "full")       #合并两个数据框
# =====================================================================
unique(china_map@data$NAME) 
#========================下面读取业务指标数据，并与地图数据合并：
mydata <- read.csv("D:/map/全国空间数据样例/geshengzhibiao.csv")          #读取指标数据，csv格式
china_data <- join(china_map_data, mydata, type="full")          #合并两个数据框

#开始试试画填色地图===================================================
ggplot(china_data, aes(x = long, y = lat, group = group, fill = zhibiao)) +
  geom_polygon(colour="grey40") +
  scale_fill_gradient(low="white",high="steelblue") +  #指定渐变填充色，可使用RGB
  coord_map("polyconic")        #指定投影方式为polyconic，获得常见视角中国地图



