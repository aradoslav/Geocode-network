USE [CUSTOMER_GIS]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 25/01/2022 19:00:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[Customer_id] [int] NOT NULL,
	[Full_name] [nvarchar](250) NULL,
	[Customer_type] [nvarchar](250) NULL,
	[Is_client_flg] [int] NULL,
	[Is_referal] [int] NULL,
	[Ref_Customer_id] [int] NULL,
	[Country] [nvarchar](250) NULL,
	[Region] [nvarchar](250) NULL,
	[City] [nvarchar](250) NULL,
	[Street] [nvarchar](250) NULL,
	[Street_nr] [nvarchar](250) NULL,
	[Activation_date] [datetime] NULL,
	[Contact_phone] [nvarchar](250) NULL,
	[Contact_email] [nchar](250) NULL,
	[Acc_mgr] [int] NULL,
	[Acc_mgr_name] [nchar](250) NULL
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


