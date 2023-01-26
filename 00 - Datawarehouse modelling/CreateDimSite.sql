USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[DimSite]    Script Date: 20/01/2023 11:52:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimSite](
	[Site_PK] [int] IDENTITY(1,1) NOT NULL,
	[GeographieSite_FK] [int] NOT NULL,
	[SiteCode] [varchar](5) NOT NULL,
	[Site] [varchar](20) NOT NULL,
	[Valide] [bit] NULL,
	[AuditFluxAjout_FK] [int] NULL,
	[AuditFluxModification_FK] [int] NULL,
 CONSTRAINT [PK_DimSite] PRIMARY KEY CLUSTERED 
(
	[Site_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimSite]  WITH CHECK ADD  CONSTRAINT [FK_DimSite_DimGeographie] FOREIGN KEY([GeographieSite_FK])
REFERENCES [dbo].[DimGeographie] ([Geographie_PK])
GO

ALTER TABLE [dbo].[DimSite] CHECK CONSTRAINT [FK_DimSite_DimGeographie]
GO

