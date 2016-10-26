



--drop    TRIGGER [dbo].[TRIGGER_avi_visa_info_Ins] 
go


create   TRIGGER [dbo].[TRIGGER_avi_visa_info_Ins]  ON [dbo].avi_visa_info
FOR INSERT 
AS					
	set nocount on	

	insert into acv_country_Visa(acv_id_avi,acv_id_act,acv_flag,acv_status)
	select avi_id,act_id,0,'I' from inserted, act_country where act_status<>'D'
							
    set nocount off
GO


