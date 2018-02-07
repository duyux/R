startdate <- as.Date("2004-02-13")
enddate <- as.Date("2011-01-22")
days <- enddate - startdate
days

#将日期转换为字符型变量
strDates <- as.character(enddate)
print(strDates)
