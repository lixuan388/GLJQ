

select * from acv_country_Visa



create table  #cv (aviid int ,actid int )
insert into #cv (aviid,actid)
select avi_id,act_id from avi_visa_info, act_country where act_status<>'D' and avi_status<>'D'



delete #cv from acv_country_Visa where aviid=acv_id_avi and actid=acv_id_act 


insert into acv_country_Visa (acv_id_avi,acv_id_act,acv_flag,acv_status)
select aviid,actid,0,'I' from   #cv

drop table #cv