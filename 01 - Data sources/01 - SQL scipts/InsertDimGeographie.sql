USE DistrisysDW
GO
		
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO

-- Drop constraint FK_DimSite_DimGeographie from [dbo].[DimSite]
-- ALTER TABLE [dbo].[DimSite] DROP CONSTRAINT [FK_DimSite_DimGeographie]

-- Add 11 rows to [dbo].[DimGeographie]
-- SET IDENTITY_INSERT [dbo].[DimGeographie] ON
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (1, N'FR', N'France', N'13', N'Bouches-du-Rhône', N'13001', N'Marseille')
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (2, N'FR', N'France', N'69', N'Rhône', N'69001', N'Lyon')
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (3, N'FR', N'France', N'75', N'Paris', N'75001', N'Paris')
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (4, N'FR', N'France', N'33', N'Gironde', N'33001', N'Bordeaux')
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (5, N'FR', N'France', N'59', N'Nord', N'59001', N'Lille')
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (6, N'FR', N'France', N'31', N'Haute Garonne', N'31001', N'Toulouse')
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (7, N'FR', N'France', N'67', N'Bas-Rhin', N'67000', N'Strasbourg')
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (8, N'FR', N'France', N'13', N'Bouches-du-Rhône', N'13100', N'Aix-en-Provence')
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (9, N'FR', N'France', N'25', N'Franche-Comté', N'25000', N'Besançon')
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (10, N'DE', N'Allemagne', N'091', N'Haute-Bavière', N'58352', N'Munich')
INSERT INTO [dbo].[DimGeographie] ([Geographie_PK], [PaysCode], [Pays], [DepartementCode], [Departement], [CodePostal], [Ville]) VALUES (11, N'ES', N'Espagne', N'08', N'Catalogne', N'08006', N'Barcelone')
-- SET IDENTITY_INSERT [dbo].[DimGeographie] OFF

-- Add constraint FK_DimSite_DimGeographie to [dbo].[DimSite]
-- ALTER TABLE [dbo].[DimSite] WITH NOCHECK ADD CONSTRAINT [FK_DimSite_DimGeographie] FOREIGN KEY ([GeographieSite_FK]) REFERENCES [dbo].[DimGeographie] ([Geographie_PK])

-- Reseed identity on [dbo].[DimGeographie]
-- DBCC CHECKIDENT('[dbo].[DimGeographie]', RESEED, 11)
-- GO
