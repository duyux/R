# 简单的点图
dotchart(mtcars$mpg,labels=row.names(mtcars),cex=.7,
         main="Gas Mileage for Car Models",
         xlab="Miles Per Gallon")

# 分组、排序、着色后的点图
x<- mtcars[order(mtcars$mpg),]
x$cyl <-factor(x$cyl) #将数值向量cyl转换为一个因子

x$color[x$cyl==4] <-"red" # 添加一个字符向量(color)到数据框
x$color[x$cyl==6] <-"blue"
x$color[x$cyl==8] <-"darkgreen"

dotchart(x$mpg,labels=row.names(x),
         cex=.7,
         groups=x$cyl,
         gcolor="black", #数字4、6、8以黑色表示
         color=x$color, #点和标签的颜色来自向量color
         pch=19,
         main="Gas Mileage for Car Models\ngrouped by cylinder",
         xlab="Miles Per Gallon"
         )

