USE [DistrisysDW]
GO
/****** Object:  Table [dbo].[FactPersonnelPhoto]    Script Date: 31/01/2023 10:47:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPersonnelPhoto](
	[Temps_FK] [int] NOT NULL,
	[Site_FK] [int] NOT NULL,
	[PersonnelAttributs_FK] [int] NOT NULL,
	[QuantitePersonnel] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactPersonnelPhoto]  WITH NOCHECK ADD  CONSTRAINT [FK_FactPersonnelPhoto_DimPersonnelAttributs] FOREIGN KEY([PersonnelAttributs_FK])
REFERENCES [dbo].[DimPersonnelAttributs] ([PersonnelAttributs_PK])
GO
ALTER TABLE [dbo].[FactPersonnelPhoto] CHECK CONSTRAINT [FK_FactPersonnelPhoto_DimPersonnelAttributs]
GO
ALTER TABLE [dbo].[FactPersonnelPhoto]  WITH NOCHECK ADD  CONSTRAINT [FK_FactPersonnelPhoto_DimSite] FOREIGN KEY([Site_FK])
REFERENCES [dbo].[DimSite] ([Site_PK])
GO
ALTER TABLE [dbo].[FactPersonnelPhoto] CHECK CONSTRAINT [FK_FactPersonnelPhoto_DimSite]
GO
ALTER TABLE [dbo].[FactPersonnelPhoto]  WITH NOCHECK ADD  CONSTRAINT [FK_FactPersonnelPhoto_DimTemps] FOREIGN KEY([Temps_FK])
REFERENCES [dbo].[DimTemps] ([Temps_PK])
GO
ALTER TABLE [dbo].[FactPersonnelPhoto] CHECK CONSTRAINT [FK_FactPersonnelPhoto_DimTemps]
GO
