USE [DistrisysDW]
GO
/****** Object:  Table [dbo].[DimTemps]    Script Date: 20/01/2023 14:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTemps](
	[Temps_PK] [int] NOT NULL,
	[Date] [smalldatetime] NOT NULL,
	[Jour] [varchar](50) NOT NULL,
	[AnneeDate] [smalldatetime] NOT NULL,
	[AnneeNom] [varchar](50) NOT NULL,
	[SemestreDate] [smalldatetime] NOT NULL,
	[SemestreNom] [varchar](50) NOT NULL,
	[TrimestreDate] [smalldatetime] NOT NULL,
	[TrimestreNom] [varchar](50) NOT NULL,
	[MoisDate] [smalldatetime] NOT NULL,
	[MoisNom] [varchar](50) NOT NULL,
	[SemaineDate] [smalldatetime] NOT NULL,
	[SemaineNom] [varchar](50) NOT NULL,
	[JourDelannée] [int] NULL,
	[JourDelannéeNom] [nvarchar](50) NULL,
	[JourDuSemestre] [int] NULL,
	[JourDuSemestreNom] [nvarchar](50) NULL,
	[JourDuTrimestre] [int] NULL,
	[JourDuTrimestreNom] [nvarchar](50) NULL,
	[JourDuMois] [int] NULL,
	[JourDuMoisNom] [nvarchar](50) NULL,
	[JourDeLaSemaine] [int] NULL,
	[JourDeLaSemaineNom] [nvarchar](50) NULL,
	[SemaineDelannée] [int] NULL,
	[SemaineDelannéeNom] [nvarchar](50) NULL,
	[MoisDelannée] [int] NULL,
	[MoisDelannéeNom] [nvarchar](50) NULL,
	[MoisDuSemestre] [int] NULL,
	[MoisDuSemestreNom] [nvarchar](50) NULL,
	[MoisDuTrimestre] [int] NULL,
	[MoisDuTrimestreNom] [nvarchar](50) NULL,
	[TrimestreDelannée] [int] NULL,
	[TrimestreDelannéeNom] [nvarchar](50) NULL,
	[TrimestreDuSemestre] [int] NULL,
	[TrimestreDuSemestreNom] [nvarchar](50) NULL,
	[SemestreDelannée] [int] NULL,
	[SemestreDelannéeNom] [nvarchar](50) NULL,
	[AnneeCode] [int] NOT NULL,
	[SemestreCode] [int] NOT NULL,
	[TrimestreCode] [int] NOT NULL,
	[MoisCode] [int] NOT NULL,
	[SemaineCode] [int] NOT NULL,
 CONSTRAINT [PK_DimTemps] PRIMARY KEY CLUSTERED 
(
	[Temps_PK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO