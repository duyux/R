a<-1:100000
b<-100000:1

run1<-function(){
  sum(as.numeric(a+b))
}

run2<-function(){
  c2<-0
  for(i in 1:length(a)){
    c2<-a[i]+b[i]+c2
  }
  c2
}
run1()
run2()
system.time(run1())

system.time(run2())
