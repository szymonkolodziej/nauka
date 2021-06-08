CREATE TABLE [dbo].[Deski](
	[Producent] [nvarchar](20) NULL,
	[Model] [nvarchar](60) NULL,
	[Waga] [tinyint] NULL,
	[Cena] [float] NULL,
	[DeskiID] [int] IDENTITY(1,1) NOT NULL,
	[Opinie] [varchar](50) NULL,
 CONSTRAINT [pk_Deski_DeskiID] PRIMARY KEY CLUSTERED 
(
	[DeskiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Okładziny](
	[Producent] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[Grubość] [float] NULL,
	[Waga] [decimal](18, 0) NULL,
	[Cena] [float] NULL,
	[Kolor] [nvarchar](max) NULL,
	[OkładzinyID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pk_Okładziny_OkładzinyID] PRIMARY KEY CLUSTERED 
(
	[OkładzinyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE [dbo].[Piłeczki](
	[Rodzaj] [varchar](20) NULL,
	[Producent] [varchar](20) NULL,
	[Model] [varchar](20) NULL,
	[Cena] [varchar](10) NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Zestawy](
	[ZestawyID] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa] [nvarchar](30) NULL,
	[Opis] [nvarchar](100) NULL,
	[Okładzina1ID] [int] NULL,
	[Okładzina2ID] [int] NULL,
	[DeskaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ZestawyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


