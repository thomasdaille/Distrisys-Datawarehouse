USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[DimGeographie]    Script Date: 20/01/2023 11:51:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimGeographie](
	[Geographie_PK] [int] IDENTITY(1,1) NOT NULL,
	[PaysCode] [varchar](10) NOT NULL,
	[Pays] [varchar](20) NOT NULL,
	[DepartementCode] [varchar](10) NOT NULL,
	[Departement] [varchar](20) NOT NULL,
	[CodePostal] [varchar](10) NOT NULL,
	[Ville] [varchar](20) NOT NULL,
	[Valide] [bit] NULL,
	[AuditFluxAjout_FK] [int] NULL,
	[AuditFluxModification_FK] [int] NULL,
 CONSTRAINT [PK_DimGeographie] PRIMARY KEY CLUSTERED 
(
	[Geographie_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

