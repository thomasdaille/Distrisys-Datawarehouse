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
-- Pointer used for text / image updates. This might not be needed, but is declared here just in case
DECLARE @pv binary(16)
BEGIN TRANSACTION

-- Add 10 rows to [dbo].[DimProduit]
-- SET IDENTITY_INSERT [dbo].[DimProduit] ON
INSERT INTO [dbo].[DimProduit] ([Produit_PK], [ProduitCode], [Produit], [SousFamilleCode], [SousFamille], [FamilleCode], [Famille]) VALUES (1, N'LL1100', N'LAGON LL1100', N'LL', N'Lave-Linge', N'GM', N'Gros Menager')
INSERT INTO [dbo].[DimProduit] ([Produit_PK], [ProduitCode], [Produit], [SousFamilleCode], [SousFamille], [FamilleCode], [Famille]) VALUES (2, N'LL1200', N'LAGON LL1200', N'LL', N'Lave-Linge', N'GM', N'Gros Menager')
INSERT INTO [dbo].[DimProduit] ([Produit_PK], [ProduitCode], [Produit], [SousFamilleCode], [SousFamille], [FamilleCode], [Famille]) VALUES (3, N'LV1620', N'LAGON LV 1620', N'LV', N'Lave-Vaisselle', N'GM', N'Gros Menager')
INSERT INTO [dbo].[DimProduit] ([Produit_PK], [ProduitCode], [Produit], [SousFamilleCode], [SousFamille], [FamilleCode], [Famille]) VALUES (4, N'SL1000', N'LAGON SL 1000', N'SL', N'Seche-Linge', N'GM', N'Gros Menager')
INSERT INTO [dbo].[DimProduit] ([Produit_PK], [ProduitCode], [Produit], [SousFamilleCode], [SousFamille], [FamilleCode], [Famille]) VALUES (5, N'F120', N'Pierre Michel F120', N'F', N'Four', N'GM', N'Gros Menager')
INSERT INTO [dbo].[DimProduit] ([Produit_PK], [ProduitCode], [Produit], [SousFamilleCode], [SousFamille], [FamilleCode], [Famille]) VALUES (6, N'R080', N'Pierre Michel R 080', N'R', N'Refrégirateur', N'GM', N'Gros Menager')
INSERT INTO [dbo].[DimProduit] ([Produit_PK], [ProduitCode], [Produit], [SousFamilleCode], [SousFamille], [FamilleCode], [Famille]) VALUES (7, N'GP700', N'Cuccina GP 700', N'GP', N'Grille-Pain', N'PM', N'Petit Menager')
INSERT INTO [dbo].[DimProduit] ([Produit_PK], [ProduitCode], [Produit], [SousFamilleCode], [SousFamille], [FamilleCode], [Famille]) VALUES (8, N'C470', N'Cuccina C 470', N'C', N'Cafetière', N'PM', N'Petit Menager')
INSERT INTO [dbo].[DimProduit] ([Produit_PK], [ProduitCode], [Produit], [SousFamilleCode], [SousFamille], [FamilleCode], [Famille]) VALUES (9, N'RC3000p', N'Cuccina RC 3000+', N'RC', N'Robot Cuisine', N'PM', N'Petit Menager')
INSERT INTO [dbo].[DimProduit] ([Produit_PK], [ProduitCode], [Produit], [SousFamilleCode], [SousFamille], [FamilleCode], [Famille]) VALUES (10, N'C260', N'Cuccina C 260', N'C', N'Cafetière', N'PM', N'Petit Menager')
-- SET IDENTITY_INSERT [dbo].[DimProduit] OFF
COMMIT TRANSACTION
GO

-- Reseed identity on [dbo].[DimProduit]
-- DBCC CHECKIDENT('[dbo].[DimProduit]', RESEED, 10)
GO
