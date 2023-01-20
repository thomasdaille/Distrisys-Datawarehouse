USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[DimProduit]    Script Date: 20/01/2023 11:51:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduit](
	[Produit_PK] [int] NOT NULL,
	[ProduitCode] [varchar](10) NOT NULL,
	[Produit] [varchar](20) NOT NULL,
	[SousFamilleCode] [varchar](10) NOT NULL,
	[SousFamille] [varchar](20) NOT NULL,
	[FamilleCode] [varchar](10) NOT NULL,
	[Famille] [varchar](20) NOT NULL,
	[Valide] [bit] NULL,
	[AuditFluxAjout_FK] [int] NULL,
	[AuditFluxModification_FK] [int] NULL,
 CONSTRAINT [PK_DimProduit] PRIMARY KEY CLUSTERED 
(
	[Produit_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimProduit] ADD  CONSTRAINT [DF_DimProduit_Valide]  DEFAULT ((1)) FOR [Valide]
GO

ALTER TABLE [dbo].[DimProduit]  WITH CHECK ADD  CONSTRAINT [FK_DimProduit_AuditFlux] FOREIGN KEY([AuditFluxAjout_FK])
REFERENCES [dbo].[AuditFlux] ([AuditFlux_PK])
GO

ALTER TABLE [dbo].[DimProduit] CHECK CONSTRAINT [FK_DimProduit_AuditFlux]
GO

ALTER TABLE [dbo].[DimProduit]  WITH CHECK ADD  CONSTRAINT [FK_DimProduit_AuditFlux1] FOREIGN KEY([AuditFluxModification_FK])
REFERENCES [dbo].[AuditFlux] ([AuditFlux_PK])
GO

ALTER TABLE [dbo].[DimProduit] CHECK CONSTRAINT [FK_DimProduit_AuditFlux1]
GO

