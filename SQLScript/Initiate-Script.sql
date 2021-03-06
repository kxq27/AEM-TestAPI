USE [master]
GO
/****** Object:  Database [AEMAssessment]    Script Date: 9/3/2022 5:09:14 PM ******/
CREATE DATABASE [AEMAssessment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AEMAssessment', FILENAME = N'C:\Users\abdsy\AEMAssessment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AEMAssessment_log', FILENAME = N'C:\Users\abdsy\AEMAssessment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AEMAssessment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AEMAssessment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AEMAssessment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AEMAssessment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AEMAssessment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AEMAssessment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AEMAssessment] SET ARITHABORT OFF 
GO
ALTER DATABASE [AEMAssessment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AEMAssessment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AEMAssessment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AEMAssessment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AEMAssessment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AEMAssessment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AEMAssessment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AEMAssessment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AEMAssessment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AEMAssessment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AEMAssessment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AEMAssessment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AEMAssessment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AEMAssessment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AEMAssessment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AEMAssessment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AEMAssessment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AEMAssessment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AEMAssessment] SET  MULTI_USER 
GO
ALTER DATABASE [AEMAssessment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AEMAssessment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AEMAssessment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AEMAssessment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AEMAssessment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AEMAssessment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AEMAssessment] SET QUERY_STORE = OFF
GO
USE [AEMAssessment]
GO
/****** Object:  Table [dbo].[Platform]    Script Date: 9/3/2022 5:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platform](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Well]    Script Date: 9/3/2022 5:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Well](
	[ID] [int] NOT NULL,
	[PlatformID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Platform] ([ID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (11, N'Platform1', 1.012, 0.1231, CAST(N'2010-01-12T01:10:24.123' AS DateTime), CAST(N'2010-01-12T01:10:24.123' AS DateTime))
INSERT [dbo].[Platform] ([ID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (12, N'Platform2', 1.018, 0.1284, CAST(N'2010-01-15T01:14:57.543' AS DateTime), CAST(N'2010-01-15T01:14:57.543' AS DateTime))
INSERT [dbo].[Platform] ([ID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (13, N'Platform3', 1.024, 0.1337, CAST(N'2010-01-12T01:10:24.123' AS DateTime), CAST(N'2010-01-12T01:10:24.123' AS DateTime))
INSERT [dbo].[Platform] ([ID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (14, N'Platform4', 1.03, 0.139, CAST(N'2010-01-15T01:14:57.543' AS DateTime), CAST(N'2010-01-15T01:14:57.543' AS DateTime))
INSERT [dbo].[Platform] ([ID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (15, N'Platform5', 1.036, 0.1443, CAST(N'2010-01-12T01:10:24.127' AS DateTime), CAST(N'2010-01-12T01:10:24.127' AS DateTime))
INSERT [dbo].[Platform] ([ID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (16, N'Platform6', 1.042, 0.1496, CAST(N'2010-01-15T01:14:57.543' AS DateTime), CAST(N'2010-01-15T01:14:57.543' AS DateTime))
INSERT [dbo].[Platform] ([ID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (17, N'Platform7', 1.048, 0.1549, CAST(N'2010-01-12T01:10:24.127' AS DateTime), CAST(N'2010-01-12T01:10:24.127' AS DateTime))
INSERT [dbo].[Platform] ([ID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (18, N'Platform8', 1.054, 0.1602, CAST(N'2010-01-15T01:14:57.547' AS DateTime), CAST(N'2010-01-15T01:14:57.547' AS DateTime))
INSERT [dbo].[Platform] ([ID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (19, N'Platform9', 1.06, 0.1655, CAST(N'2010-01-12T01:10:24.127' AS DateTime), CAST(N'2010-01-12T01:10:24.127' AS DateTime))
INSERT [dbo].[Platform] ([ID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (20, N'Platform10', 1.066, 0.1708, CAST(N'2010-01-15T01:14:57.547' AS DateTime), CAST(N'2010-01-15T01:14:57.547' AS DateTime))
GO
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (1, 11, N'Well11', 37.06257, 18.406885, CAST(N'2017-11-01T02:41:00.000' AS DateTime), CAST(N'2018-08-04T02:16:42.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (2, 11, N'Well12', 73.688254, 36.81377, CAST(N'2015-01-16T03:34:07.000' AS DateTime), CAST(N'2017-01-23T01:28:37.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (3, 11, N'Well13', 109.88473, 55.220655, CAST(N'2016-10-28T09:34:00.000' AS DateTime), CAST(N'2018-02-26T18:39:43.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (4, 12, N'Well21', 145.6595, 73.62754, CAST(N'2018-08-10T06:01:16.000' AS DateTime), CAST(N'2018-04-16T12:53:20.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (5, 12, N'Well22', 181.01989, 92.034426, CAST(N'2018-11-24T06:12:26.000' AS DateTime), CAST(N'2018-08-20T14:59:48.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (6, 12, N'Well23', 215.973059, 110.441311, CAST(N'2019-01-02T13:32:46.000' AS DateTime), CAST(N'2018-07-24T21:07:21.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (7, 13, N'Well31', 254.904124, 128.848196, CAST(N'2016-11-29T08:46:06.000' AS DateTime), CAST(N'2015-08-17T19:52:47.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (8, 13, N'Well32', 289.631824, 147.255081, CAST(N'2015-11-18T23:08:44.000' AS DateTime), CAST(N'2016-10-20T12:20:45.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (9, 13, N'Well33', 323.959588, 165.661966, CAST(N'2019-02-24T10:04:43.000' AS DateTime), CAST(N'2015-09-17T13:29:04.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (10, 14, N'Well41', 357.894286, 184.068851, CAST(N'2017-04-16T09:55:14.000' AS DateTime), CAST(N'2018-09-16T19:26:11.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (11, 14, N'Well42', 391.442631, 202.475736, CAST(N'2016-12-04T17:42:22.000' AS DateTime), CAST(N'2017-09-19T18:03:42.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (12, 14, N'Well43', 424.611183, 220.882621, CAST(N'2015-06-09T07:01:12.000' AS DateTime), CAST(N'2015-09-03T20:46:10.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (13, 15, N'Well51', 457.406356, 239.289506, CAST(N'2018-03-17T01:01:55.000' AS DateTime), CAST(N'2016-01-03T18:28:40.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (14, 15, N'Well52', 489.834418, 257.696391, CAST(N'2017-10-29T07:48:12.000' AS DateTime), CAST(N'2016-01-28T18:30:25.000' AS DateTime))
INSERT [dbo].[Well] ([ID], [PlatformID], [Name], [Latitude], [Longitude], [CreatedAt], [UpdatedAt]) VALUES (15, 15, N'Well53', 521.901501, 276.103277, CAST(N'2017-10-06T20:52:28.000' AS DateTime), CAST(N'2015-10-30T14:11:13.000' AS DateTime))
GO
/****** Object:  StoredProcedure [dbo].[InsertUpdate_PlatformWell]    Script Date: 9/3/2022 5:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertUpdate_PlatformWell] 
	@JSON varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	exec [dbo].[IU_PlatformJson] @JsonFile = @JSON
	exec [dbo].[IU_WellJson] @JsonFile = @JSON
END
GO
/****** Object:  StoredProcedure [dbo].[IU_PlatformJson]    Script Date: 9/3/2022 5:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[IU_PlatformJson](@JsonFile NVARCHAR(MAX))
AS BEGIN

CREATE TABLE #tempPlatform (ID int, Name varchar(250), Latitude float, Longitude float, CreatedAt datetime, UpdatedAt datetime )

INSERT INTO #tempPlatform 
	([ID], 
	[Name],
	[Latitude],
	[Longitude],
	[CreatedAt],
	[UpdatedAt]
	)
SELECT [ID], 
	uniqueName,
	[Latitude],
	[Longitude],
	[CreatedAt],
	[UpdatedAt]
	FROM OPENJSON(@JsonFile)
	WITH (id int,
			uniqueName nvarchar(250),
			latitude float,
			longitude float,
			createdAt datetime,
			updatedAt datetime)

INSERT INTO [Platform] (ID, Name, Latitude, LongitudE, CreatedAt, UpdatedAt)
SELECT * FROM #tempPlatform WHERE ID NOT IN (SELECT ID FROM [Platform])

UPDATE [Platform]
SET [Name] = #tempPlatform.Name, 
	[Latitude] = [#tempPlatform].Latitude,
	[Longitude] = [#tempPlatform].Longitude,
	[CreatedAt] = [#tempPlatform].CreatedAt,
	[UpdatedAt] = [#tempPlatform].UpdatedAt
FROM #tempPlatform
WHERE [Platform].ID = #tempPlatform.ID

END
GO
/****** Object:  StoredProcedure [dbo].[IU_WellJson]    Script Date: 9/3/2022 5:09:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[IU_WellJson](@JsonFile NVARCHAR(MAX))
AS BEGIN

CREATE TABLE #tempWell (ID int, platformID int ,Name varchar(250), Latitude float, Longitude float, CreatedAt datetime, UpdatedAt datetime )

INSERT INTO #tempWell 
	([ID],
	[PlatformID],
	[Name],
	[Latitude],
	[Longitude],
	[CreatedAt],
	[UpdatedAt]
	)
SELECT
    JSON_Value (w.value, '$.id') as wellId, 
	JSON_Value (c.value, '$.id') as platformID, 
    JSON_Value (w.value, '$.uniqueName') as uniqueName,
    JSON_Value (w.value, '$.latitude') as latitude,
    JSON_Value (w.value, '$.longitude') as longitude,
	JSON_Value (w.value, '$.createdAt') as createdAt,
	JSON_Value (w.value, '$.updatedAt') as updatedAt
  
	FROM OPENJSON (@JsonFile) as c
	CROSS APPLY OPENJSON (c.value, '$.well') as w
	

INSERT INTO [Well] (ID ,PlatformID, Name, Latitude, LongitudE, CreatedAt, UpdatedAt)
SELECT * FROM #tempWell WHERE ID NOT IN (SELECT ID FROM [Well])

UPDATE [Well]
SET [Name] = #tempWell.Name, 
	[PlatformID] = #tempWell.platformID,
	[Latitude] = #tempWell.Latitude,
	[Longitude] = #tempWell.Longitude,
	[CreatedAt] = #tempWell.CreatedAt,
	[UpdatedAt] = #tempWell.UpdatedAt
FROM #tempWell
WHERE [Well].ID = #tempWell.ID


END
GO
USE [master]
GO
ALTER DATABASE [AEMAssessment] SET  READ_WRITE 
GO
