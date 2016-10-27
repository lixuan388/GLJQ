
drop table avol_visa_operation_list

go 


create table avol_visa_operation_list
(
	avol_id int NOT NULL PRIMARY KEY,
	avol_name nvarchar(100),
	avol_index int ,
	avol_status char(1) default 'I',
)




insert into avol_visa_operation_list(avol_id,avol_name)
values (0,'未交')
insert into avol_visa_operation_list(avol_id,avol_name)
values (100,'已收')
insert into avol_visa_operation_list(avol_id,avol_name)
values (200,'补资料')
insert into avol_visa_operation_list(avol_id,avol_name)
values (300,'送签')
insert into avol_visa_operation_list(avol_id,avol_name)
values (400,'领馆补料')
insert into avol_visa_operation_list(avol_id,avol_name)
values (500,'领馆审核')
insert into avol_visa_operation_list(avol_id,avol_name)
values (600,'取回')
insert into avol_visa_operation_list(avol_id,avol_name)
values (700,'拒签')
insert into avol_visa_operation_list(avol_id,avol_name)
values (800,'发放')
insert into avol_visa_operation_list(avol_id,avol_name)
values (900,'销签')







update avol_visa_operation_list set avol_index=avol_id



select avol_id,avol_name from avol_visa_operation_list where avol_status<>'D'
