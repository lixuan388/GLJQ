

CREATE TABLE [dbo].acv_country_Visa(
	[acv_id] [int] IDENTITY(1000,1) NOT NULL PRIMARY KEY,
	[acv_status] [char](1) NULL,
	[acv_Date_Ins] [datetime] NULL,
	[acv_User_Ins] [nvarchar](100) NULL,
	[acv_Date_Lst] [datetime] NULL,
	[acv_User_Lst] [nvarchar](100) NULL,
	[acv_id_avi] int ,
	[acv_id_act] [int] NULL,
	[acv_flag] bit default 0 ,
	
) ON [PRIMARY]

GO

CREATE NONCLUSTERED INDEX [acv_country_visa_index_acv_id_act] ON [dbo].[acv_country_Visa] 
(
	[acv_id_act] ASC
)
GO


