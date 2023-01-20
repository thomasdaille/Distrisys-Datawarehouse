USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[FactFacture]    Script Date: 20/01/2023 11:49:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactFacture](
	[DateFacturation_FK] [int] NOT NULL,
	[Site_FK] [int] NOT NULL,
	[Produit_FK] [int] NOT NULL,
	[Client_FK] [int] NOT NULL,
	[PrixCatalogue] [numeric](9, 2) NOT NULL,
	[Remise] [numeric](9, 2) NOT NULL,
	[CA] [numeric](9, 2) NOT NULL,
	[Marge] [numeric](9, 2) NOT NULL,
	[CoutDirectMatiere] [numeric](9, 2) NOT NULL,
	[CoutDirectMainOeuvre] [numeric](9, 2) NOT NULL,
	[CoutIndirect] [numeric](9, 2) NOT NULL,
	[Quantite] [numeric](9, 2) NOT NULL,
	[NumFacture] [varchar](6) NULL,
	[AuditFluxAjout_FK] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactFacture]  WITH NOCHECK ADD  CONSTRAINT [FK_FactFacture_AuditFlux] FOREIGN KEY([AuditFluxAjout_FK])
REFERENCES [dbo].[AuditFlux] ([AuditFlux_PK])
GO

ALTER TABLE [dbo].[FactFacture] CHECK CONSTRAINT [FK_FactFacture_AuditFlux]
GO

ALTER TABLE [dbo].[FactFacture]  WITH NOCHECK ADD  CONSTRAINT [FK_FactFacture_DimClient] FOREIGN KEY([Client_FK])
REFERENCES [dbo].[DimClient] ([Client_PK])
GO

ALTER TABLE [dbo].[FactFacture] CHECK CONSTRAINT [FK_FactFacture_DimClient]
GO

ALTER TABLE [dbo].[FactFacture]  WITH NOCHECK ADD  CONSTRAINT [FK_FactFacture_DimProduit] FOREIGN KEY([Produit_FK])
REFERENCES [dbo].[DimProduit] ([Produit_PK])
GO

ALTER TABLE [dbo].[FactFacture] CHECK CONSTRAINT [FK_FactFacture_DimProduit]
GO

ALTER TABLE [dbo].[FactFacture]  WITH NOCHECK ADD  CONSTRAINT [FK_FactFacture_DimSite] FOREIGN KEY([Site_FK])
REFERENCES [dbo].[DimSite] ([Site_PK])
GO

ALTER TABLE [dbo].[FactFacture] CHECK CONSTRAINT [FK_FactFacture_DimSite]
GO

ALTER TABLE [dbo].[FactFacture]  WITH NOCHECK ADD  CONSTRAINT [FK_FactFacture_DimTemps] FOREIGN KEY([DateFacturation_FK])
REFERENCES [dbo].[DimTemps] ([Temps_PK])
GO

ALTER TABLE [dbo].[FactFacture] CHECK CONSTRAINT [FK_FactFacture_DimTemps]
GO


