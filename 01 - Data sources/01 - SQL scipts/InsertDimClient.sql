USE [DistrisysDW]
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

-- Add 10 rows to [dbo].[DimClient]
-- SET IDENTITY_INSERT [dbo].[DimClient] ON
INSERT INTO [dbo].[DimClient] ([Client_PK], [GeographieClient_FK], [ClientCode], [Client], [TypeClient], [SegmentationClient]) VALUES (1, 1, N'C1', N'LaBoutiqueOnLine.com', N'Site Marchand', N'Bon Client')
INSERT INTO [dbo].[DimClient] ([Client_PK], [GeographieClient_FK], [ClientCode], [Client], [TypeClient], [SegmentationClient]) VALUES (2, 3, N'C2', N'Maison Discount', N'Discounteur', N'Bon Client')
INSERT INTO [dbo].[DimClient] ([Client_PK], [GeographieClient_FK], [ClientCode], [Client], [TypeClient], [SegmentationClient]) VALUES (3, 8, N'C3', N'Cuisine du sud', N'Spécialiste', N'Tiède')
INSERT INTO [dbo].[DimClient] ([Client_PK], [GeographieClient_FK], [ClientCode], [Client], [TypeClient], [SegmentationClient]) VALUES (4, 4, N'C4', N'Discount plus', N'Discounteur', N'Tiède')
INSERT INTO [dbo].[DimClient] ([Client_PK], [GeographieClient_FK], [ClientCode], [Client], [TypeClient], [SegmentationClient]) VALUES (5, 2, N'C5', N'EquiperSaMaison.com', N'Site Marchand', N'Très Bon Client')
INSERT INTO [dbo].[DimClient] ([Client_PK], [GeographieClient_FK], [ClientCode], [Client], [TypeClient], [SegmentationClient]) VALUES (6, 3, N'C6', N'Hypermarché Youpi', N'Grande surface', N'Très Bon Client')
INSERT INTO [dbo].[DimClient] ([Client_PK], [GeographieClient_FK], [ClientCode], [Client], [TypeClient], [SegmentationClient]) VALUES (7, 10, N'C7', N'EineKüche', N'Spécialiste', N'Bon Client')
INSERT INTO [dbo].[DimClient] ([Client_PK], [GeographieClient_FK], [ClientCode], [Client], [TypeClient], [SegmentationClient]) VALUES (8, 11, N'C8', N'Mercado Del Sol', N'Grande surface', N'Bon Client')
INSERT INTO [dbo].[DimClient] ([Client_PK], [GeographieClient_FK], [ClientCode], [Client], [TypeClient], [SegmentationClient]) VALUES (9, 1, N'C9', N'ElectroYoupa', N'Spécialiste', N'Bon Client')
INSERT INTO [dbo].[DimClient] ([Client_PK], [GeographieClient_FK], [ClientCode], [Client], [TypeClient], [SegmentationClient]) VALUES (10, 5, N'C10', N'Toutmoinscher.com', N'Site Marchand', N'Tiède')
-- SET IDENTITY_INSERT [dbo].[DimClient] OFF
COMMIT TRANSACTION
GO

-- Reseed identity on [dbo].[DimClient]
-- DBCC CHECKIDENT('[dbo].[DimClient]', RESEED, 10)
-- GO