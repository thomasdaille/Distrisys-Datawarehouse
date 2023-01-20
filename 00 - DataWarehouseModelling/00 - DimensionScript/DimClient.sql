USE [DistrisysDW]
GO

/****** Object:  Table [dbo].[DimClient]    Script Date: 20/01/2023 11:50:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimClient](
	[Client_PK] [int] IDENTITY(1,1) NOT NULL,
	[GeographieClient_FK] [int] NOT NULL,
	[ClientCode] [varchar](10) NOT NULL,
	[Client] [varchar](20) NOT NULL,
	[TypeClient] [varchar](20) NOT NULL,
	[SegmentationClient] [varchar](20) NOT NULL,
	[Valide] [bit] NULL,
	[AuditFluxAjout_FK] [int] NULL,
	[AuditFluxModification_FK] [int] NULL,
 CONSTRAINT [PK_DimClient] PRIMARY KEY CLUSTERED 
(
	[Client_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimClient]  WITH CHECK ADD  CONSTRAINT [FK_DimClient_DimGeographie] FOREIGN KEY([GeographieClient_FK])
REFERENCES [dbo].[DimGeographie] ([Geographie_PK])
GO

ALTER TABLE [dbo].[DimClient] CHECK CONSTRAINT [FK_DimClient_DimGeographie]
GO

