#1、向数据框添加列
 total <- merge(dataframeA,dataframeB,by="ID")
 total <- merge(dataframeA,dataframeB,by=c("ID","Country"))

# 2、向数据框添加行
total <- rbind(dataframeA,dataFrameB)


# 3、数据集取子集
# 选入(保留)变量
newdata <- leadership[,c(6:10)]

#相同的写法
myvars <- c("q1","q2","q3","q4","q5")
newdata <- leadership[myvars]

# 剔除(丢弃)变量
myvars <- names[leadership] %in% c("q3","q4")
newdata < - leadership[!myvars]

# 选入观测
newdata < -leadership[1:3,] #选择第1行到第3行(前三个观测)

newdata <- leadership[leadership$gender=="M" &
                      leadership$age > 30,]   #选择所有30岁以上的男性

attach(leadership)
newdata <- leadership[gender=="M" & age >30,]
detach(leadership)

# subset()函数
newdata <- subset(leadership,age>=35 | age<24,
                  select=c(q1,q2,q3,q4))

newdata <- subset(leadership,gender=="M" & age >25,
                  select=gender:q4)