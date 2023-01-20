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

-- Drop constraints from [dbo].[DimSite]
-- ALTER TABLE [dbo].[DimSite] DROP CONSTRAINT [FK_DimSite_DimGeographie]

-- Add 5 rows to [dbo].[DimSite]
-- SET IDENTITY_INSERT [dbo].[DimSite] ON
INSERT INTO [dbo].[DimSite] ([Site_PK], [GeographieSite_FK], [SiteCode], [Site]) VALUES (1, 3, N'D001', N'Siège social')
INSERT INTO [dbo].[DimSite] ([Site_PK], [GeographieSite_FK], [SiteCode], [Site]) VALUES (2, 8, N'D002', N'Agence Sud')
INSERT INTO [dbo].[DimSite] ([Site_PK], [GeographieSite_FK], [SiteCode], [Site]) VALUES (3, 4, N'D003', N'Agence Ouest')
INSERT INTO [dbo].[DimSite] ([Site_PK], [GeographieSite_FK], [SiteCode], [Site]) VALUES (4, 11, N'D004', N'Agence Europe Sud')
INSERT INTO [dbo].[DimSite] ([Site_PK], [GeographieSite_FK], [SiteCode], [Site]) VALUES (5, 10, N'D005', N'Agence Europe Est')
-- SET IDENTITY_INSERT [dbo].[DimSite] OFF

-- Add constraints to [dbo].[DimSite]
-- ALTER TABLE [dbo].[DimSite] ADD CONSTRAINT [FK_DimSite_DimGeographie] FOREIGN KEY ([GeographieSite_FK]) REFERENCES [dbo].[DimGeographie] ([Geographie_PK])
COMMIT TRANSACTION
GO

-- Reseed identity on [dbo].[DimSite]
-- DBCC CHECKIDENT('[dbo].[DimSite]', RESEED, 5)
-- GO
