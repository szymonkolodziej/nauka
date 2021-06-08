CREATE TABLE [dbo].[Bromsy](
	[Producent] [varchar](20) NULL,
	[Nazwa] [varchar](20) NULL,
	[Gatunek] [varchar](20) NULL,
	[Objętośćalko] [varchar](20) NULL,
	[Opakowanie] [varchar](20) NULL,
	[Kolor] [varchar](50) NULL,
	[BromsyID] [int] IDENTITY(5,5) NOT NULL,
	[Pojemność] [float] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Bromsy] ADD  DEFAULT ((0.33)) FOR [Pojemność]
GO
