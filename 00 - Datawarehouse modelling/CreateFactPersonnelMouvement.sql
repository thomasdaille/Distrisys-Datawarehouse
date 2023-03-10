USE [DistrisysDW]
GO
/****** Object:  Table [dbo].[FactPersonnelMouvement]    Script Date: 31/01/2023 10:46:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPersonnelMouvement](
	[Temps_FK] [int] NOT NULL,
	[Site_FK] [int] NOT NULL,
	[PersonnelAttributs_FK] [int] NOT NULL,
	[PersonnelMouvement_FK] [int] NOT NULL,
	[QuantiteMouvemente] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactPersonnelMouvement]  WITH CHECK ADD  CONSTRAINT [FK_FactPersonnelMouvement_DimPersonnelAttributs] FOREIGN KEY([PersonnelAttributs_FK])
REFERENCES [dbo].[DimPersonnelAttributs] ([PersonnelAttributs_PK])
GO
ALTER TABLE [dbo].[FactPersonnelMouvement] CHECK CONSTRAINT [FK_FactPersonnelMouvement_DimPersonnelAttributs]
GO
ALTER TABLE [dbo].[FactPersonnelMouvement]  WITH CHECK ADD  CONSTRAINT [FK_FactPersonnelMouvement_DimPersonnelMouvement] FOREIGN KEY([PersonnelMouvement_FK])
REFERENCES [dbo].[DimPersonnelMouvement] ([PersonnelMouvement_PK])
GO
ALTER TABLE [dbo].[FactPersonnelMouvement] CHECK CONSTRAINT [FK_FactPersonnelMouvement_DimPersonnelMouvement]
GO
ALTER TABLE [dbo].[FactPersonnelMouvement]  WITH CHECK ADD  CONSTRAINT [FK_FactPersonnelMouvement_DimSite] FOREIGN KEY([Site_FK])
REFERENCES [dbo].[DimSite] ([Site_PK])
GO
ALTER TABLE [dbo].[FactPersonnelMouvement] CHECK CONSTRAINT [FK_FactPersonnelMouvement_DimSite]
GO
ALTER TABLE [dbo].[FactPersonnelMouvement]  WITH CHECK ADD  CONSTRAINT [FK_FactPersonnelMouvement_DimTemps] FOREIGN KEY([Temps_FK])
REFERENCES [dbo].[DimTemps] ([Temps_PK])
GO
ALTER TABLE [dbo].[FactPersonnelMouvement] CHECK CONSTRAINT [FK_FactPersonnelMouvement_DimTemps]
GO
