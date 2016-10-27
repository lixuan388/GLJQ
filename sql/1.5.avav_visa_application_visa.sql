
drop table avav_visa_application_visa
go


create table avav_visa_application_visa
(
	avav_id int IDENTITY(1000,1) NOT NULL PRIMARY KEY,
	avav_id_ava int ,
	avav_id_avg int ,
	avav_id_avi int ,
	avav_value int ,		
	avav_date_ins datetime,
	avav_User_Ins nvarchar(100),
	avav_date_lst datetime,
	avav_User_lst nvarchar(100),
)

--drop table avavh_visa_application_visa_history
--go 

create table avavh_visa_application_visa_history
(
	avavh_id int IDENTITY(1000,1) NOT NULL PRIMARY KEY,
	
	avavh_id_ava int ,
	avavh_id_avg int ,
	avavh_id_avi int ,
	avavh_id_avav int ,			
	avavh_OldValue int ,
	avavh_NewValue int ,
	avavh_date_ins datetime,
	avavh_User_Ins nvarchar(100),
)						