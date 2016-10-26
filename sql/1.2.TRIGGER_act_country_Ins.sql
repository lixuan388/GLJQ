
--drop TRIGGER [dbo].[TRIGGER_act_country_Ins]
go

create   TRIGGER [dbo].[TRIGGER_act_country_Ins]  ON [dbo].act_country
FOR INSERT 
AS
	set nocount on	
	insert into acv_country_Visa(acv_id_avi,acv_id_act,acv_flag,acv_status)
	select avi_id,act_id,0,'I' from inserted, avi_visa_info where avi_status<>'D'
    
    set nocount off
GO


