library(RODBC) 
#odbcDataSources() 
conn=odbcConnect('testsql',uid='jzs',pwd='jzs')
result=sqlQuery(conn,'select*from tblEQIA_RPI_Basedata where fldsyear=2015') 
result 
odbcClose(conn) 
