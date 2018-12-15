 exec sp_execute_external_script  @language =N'R',   
 @script=N'
 student<-InputDataSet

 OutputDataSet<- data.frame(sum(student),min(student))

 
 ',     
 @input_data_1 =N'select flditemvalue from tblEQIW_R_BaseData where fldyear=2017 and fldmonth=8 and fldday=1 and fldrscode=113007'   
 with result sets (([ID] varchar(30),[sd] varchar(30)))   
 go 