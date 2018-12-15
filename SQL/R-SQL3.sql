--CREATE PROCEDURE [dbo].[TrainTipPredictionModel]

--AS
BEGIN
  DECLARE @inquery nvarchar(max) = N'
  select flditemvalue from tblEQIW_R_BaseData where fldyear=2017 and fldmonth=8 and fldday=1 and fldrscode=113007
'

create table #temptable
(
  fld1 varchar(30),
  fld2 varchar(30),
  fld3 varchar(30)
)
  -- Insert the trained model into a database table
  INSERT INTO #temptable
  EXEC sp_execute_external_script @language = N'R',
                                  @script = N'
student<-InputDataSet
trained_model <- data.frame(sum(student),min(student),''fdfdf'')
',
  @input_data_1 = @inquery,
  @output_data_1_name = N'trained_model'



  select * from #temptable
  drop table #temptable


END
GO