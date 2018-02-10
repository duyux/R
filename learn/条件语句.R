feelings <- c("sad","afraid")
for(i in feelings)
  print(
    switch(i,
           happy="I am glad you are happy.",
           afraid="There is nothing to fear",
           sad="Cheer up",
           angry="Calm down now"
           )
  )