
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
values (0,'δ��')
insert into avol_visa_operation_list(avol_id,avol_name)
values (100,'����')
insert into avol_visa_operation_list(avol_id,avol_name)
values (200,'������')
insert into avol_visa_operation_list(avol_id,avol_name)
values (300,'��ǩ')
insert into avol_visa_operation_list(avol_id,avol_name)
values (400,'��ݲ���')
insert into avol_visa_operation_list(avol_id,avol_name)
values (500,'������')
insert into avol_visa_operation_list(avol_id,avol_name)
values (600,'ȡ��')
insert into avol_visa_operation_list(avol_id,avol_name)
values (700,'��ǩ')
insert into avol_visa_operation_list(avol_id,avol_name)
values (800,'����')
insert into avol_visa_operation_list(avol_id,avol_name)
values (900,'��ǩ')







update avol_visa_operation_list set avol_index=avol_id



select avol_id,avol_name from avol_visa_operation_list where avol_status<>'D'
