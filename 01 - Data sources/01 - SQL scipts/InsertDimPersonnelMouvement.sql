USE [DistrisysDW]
GO
/****** Object:  Table [dbo].[DimPersonnelMouvement]    Script Date: 01/02/2023 17:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPersonnelMouvement](
	[PersonnelMouvement_PK] [int] IDENTITY(1,1) NOT NULL,
	[SensMouvement] [varchar](20) NOT NULL,
	[RaisonMouvement] [varchar](20) NOT NULL,
	[AuditFluxAjout_FK] [int] NULL,
	[AuditFluxModification_FK] [int] NULL,
 CONSTRAINT [PK_DimPersonnelMouvement] PRIMARY KEY CLUSTERED 
(
	[PersonnelMouvement_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
