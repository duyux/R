options(max.print=1000000) 
library(RODBC)
odbcDataSources()
conn <-  odbcConnect("local_server", uid="sa", pwd="123")#建立连接
sqlwhere <- "select fldSTCode ,fldSTName,fldRCode ,fldRName ,fldRSCode ,fldRSName ,fldYear ,fldMonth ,fldDay ,fldItemCode ,fldItemName ,fldItemValue from tblEQIW_R_Basedata where fldSTCode + '.' + fldRCode + '.' + fldRSCode in ('500104.1094.104006')"
da<-sqlQuery(conn,sqlwhere)
print(da)
odbcClose(conn)
