

CREATE TABLE [dbo].[Customer_leads_geocoded](
	[Customer_id] [int] NOT NULL,
	[Full_name] [nvarchar](50) NULL,
	[Customer_type] [nvarchar](50) NULL,
	[Is_client_flg] [int] NULL,
	[Is_referal] [int] NULL,
	[Ref_Customer_id] [int] NULL,
	[Country] [nvarchar](50) NULL,
	[Region] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[Street_nr] [int] NULL,
	[Activation_date] [datetime] NULL,
	[Contact_phone] [nvarchar](50) NULL,
	[Contact_email] [nvarchar](300) NULL,
	[Acc_mgr_id] [int] NULL,
	[Acc_mgr_name] [nvarchar](300) NULL,
	[Full_address] [nvarchar](100) NULL,
	[Lead_lat] [float] NULL,
	[Lead_long] [float] NULL,
	[Lead_address] [nvarchar](150) NULL,
 CONSTRAINT [PK_Customer_leads_geocoded] PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


