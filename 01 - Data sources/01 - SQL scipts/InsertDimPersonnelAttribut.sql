USE [DistrisysDW]
GO
/****** Object:  Table [dbo].[DimPersonnelAttributs]    Script Date: 01/02/2023 17:50:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPersonnelAttributs](
	[PersonnelAttributs_PK] [int] IDENTITY(1,1) NOT NULL,
	[Poste] [varchar](20) NOT NULL,
	[DepartementRH] [varchar](20) NOT NULL,
	[ClasseAge] [varchar](20) NOT NULL,
	[Nationnalite] [varchar](20) NOT NULL,
	[AnciennetePoste] [date] NOT NULL,
	[AncienneteSite] [date] NOT NULL,
	[AncienneteSociete] [date] NOT NULL,
	[TypeContrat] [varchar](20) NOT NULL,
	[Valide] [bit] NULL,
	[AuditFluxAjout_FK] [int] NULL,
	[AuditFluxModification_FK] [int] NULL,
 CONSTRAINT [PK_DimPersonnelAttributs] PRIMARY KEY CLUSTERED 
(
	[PersonnelAttributs_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
