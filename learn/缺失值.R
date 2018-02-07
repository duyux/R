y <- c(1,2,3,NA)
print(is.na(y))

#在分析中排除缺失值
x<-c(1,2,NA,3)
y<-x[1]+x[2]+x[3]+x[4]
z<-sum(x)

print(x)
print(y)
print(z)

y<-sum(x,na.rm=TRUE) #可以在计算前移除缺失值并使用剩余值进行计算
print(y)

# 可以使用na.omit()删除不完整的观测

