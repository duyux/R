par(mar=c(5,8,4,2))
par(las=2)
counts<- table(Arthritis$Improved)
barplot(counts,main="Treatment Outcome",
        horiz=TRUE,
        cex.names = 0.8,
        names.arg = c("No Improvement","Some Improvement","Marked Improvement"))