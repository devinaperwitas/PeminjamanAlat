/****** Object:  Table [dbo].[atm_msjenisalat]    Script Date: 05/12/2023 18:25:45 ******/
Create Database DB_ATMS

Drop table 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atm_msjenisalat](
	[jen_id] [int] IDENTITY(1,1) NOT NULL,
	[jen_nama] [varchar](255) NOT NULL,
	[jen_status] [varchar](255) NOT NULL,
	[jen_created_by] [varchar](255), 
	[jen_created_date] [datetime],
	[jen_modified_by] [varchar](255),
	[jen_modified_date] [datetime] 


 CONSTRAINT [PK_msjenisalat] PRIMARY KEY CLUSTERED 
(
	[jen_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[atm_msalat]    Script Date: 05/12/2023 18:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATM_msalat](
    [ala_id] [int] IDENTITY(1,1) NOT NULL,
    [jen_id] [int] NOT NULL,
    [ala_nama] [varchar](255) NOT NULL,
    [ala_tanggal] [datetime] NOT NULL,
    [ala_jmlmasuk] [int],
    [ala_jmlkeluar] [int],
    [ala_sisaalat] [int],
    [ala_status] [int],
    [ala_created_by] [varchar](255),
    [ala_created_date] [datetime],
    [ala_modified_by] [varchar](255),
    [ala_modified_date] [datetime],
    CONSTRAINT [PK_ATM_msalat] PRIMARY KEY CLUSTERED 
    (
        [ala_id] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
    CONSTRAINT [FK_ATM_msalat_ATM_msjenisalat] FOREIGN KEY ([jen_id]) REFERENCES [dbo].[ATM_msjenisalat]([jen_id])
) ON [PRIMARY]
GO
