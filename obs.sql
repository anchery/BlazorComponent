USE [OBS]
GO
/****** Object:  Table [dbo].[Meta_Observations]    Script Date: 7/14/2020 5:46:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meta_Observations](
	[ID] [smallint] NOT NULL,
	[GrpID] [tinyint] NOT NULL,
	[GrpText] [varchar](50) NOT NULL,
	[ObsID] [tinyint] NOT NULL,
	[ObsText] [varchar](255) NOT NULL,
	[DocID] [varchar](10) NOT NULL,
	[Cutoff] [smallint] NOT NULL,
	[WarningThreshold] [decimal](4, 2) NOT NULL,
	[CriticalThreshold] [decimal](4, 2) NOT NULL,
	[WarningRollupThreshold] [decimal](4, 2) NULL,
	[CriticalRollupThreshold] [decimal](4, 2) NULL,
	[MinimumRollup] [tinyint] NULL,
	[MaximumRollup] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OBS_Comments]    Script Date: 7/14/2020 5:46:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBS_Comments](
	[SerialNo] [varchar](10) NOT NULL,
	[GrpId] [int] NOT NULL,
	[ObsId] [int] NOT NULL,
	[Comment] [varchar](max) NULL,
 CONSTRAINT [PK_OBS_Comment] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OBS_Details]    Script Date: 7/14/2020 5:46:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBS_Details](
	[SerialNo] [varchar](10) NOT NULL,
	[GrpId] [int] NOT NULL,
	[ObsId] [int] NOT NULL,
	[Response] [int] NOT NULL,
 CONSTRAINT [PK_OBS_Details_1] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OBS_Master]    Script Date: 7/14/2020 5:46:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBS_Master](
	[ObsID] [int] IDENTITY(1,1) NOT NULL,
	[SerialNo] [varchar](10) NULL,
	[PicCode] [varchar](10) NULL,
	[ObsDate] [date] NULL,
	[Observer] [varchar](50) NULL,
	[OutageTar] [bit] NULL,
 CONSTRAINT [PK_OBS_Master] PRIMARY KEY CLUSTERED 
(
	[ObsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/14/2020 5:46:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (106, 1, N'1.0 PPE', 1, N'1.1 Head Protection', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), CAST(1.00 AS Decimal(4, 2)), CAST(2.00 AS Decimal(4, 2)), 1, 5)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (107, 1, N'1.0 PPE', 2, N'1.2 Hand Protection', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (108, 1, N'1.0 PPE', 3, N'1.3 Hearing Protection', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (109, 1, N'1.0 PPE', 4, N'1.4 Eye/Face Protection', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (110, 1, N'1.0 PPE', 5, N'1.5 Resp/Fresh Air', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (111, 1, N'1.0 PPE', 6, N'1.6 Fall Protection', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (112, 1, N'1.0 PPE', 7, N'1.7 FRC', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (113, 1, N'1.0 PPE', 8, N'1.8 Personal H2S Monitor', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (114, 1, N'1.0 PPE', 9, N'1.9 Foot Protection', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (115, 2, N'2.0 Body Use And Movement', 1, N'2.1 Body Mechanics', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), CAST(1.00 AS Decimal(4, 2)), CAST(2.00 AS Decimal(4, 2)), 1, 6)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (116, 2, N'2.0 Body Use And Movement', 2, N'2.2 Line of Fire', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (117, 2, N'2.0 Body Use And Movement', 3, N'2.3 Eyes on Path/Task', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (118, 2, N'2.0 Body Use And Movement', 4, N'2.4 Pinch Points', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (119, 2, N'2.0 Body Use And Movement', 5, N'2.5 Ascending/Descending', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (120, 3, N'3.0 Vehicle Use', 1, N'3.1 Vehicle/Equipment Checklist', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), CAST(1.00 AS Decimal(4, 2)), CAST(2.00 AS Decimal(4, 2)), 1, 6)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (121, 3, N'3.0 Vehicle Use', 2, N'3.2 Speed', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (122, 3, N'3.0 Vehicle Use', 3, N'3.3 Seat Belt', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (123, 3, N'3.0 Vehicle Use', 4, N'3.4 Stop Sign', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (124, 3, N'3.0 Vehicle Use', 5, N'3.5 Cell Phone Use', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (125, 4, N'4.0 Environment', 1, N'4.1 Housekeeping', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), CAST(1.00 AS Decimal(4, 2)), CAST(2.00 AS Decimal(4, 2)), 1, 5)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (126, 4, N'4.0 Environment', 2, N'4.2 Walking/Working Surfaces', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (127, 4, N'4.0 Environment', 3, N'4.3 Storage/Labeling/Signs', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (128, 4, N'4.0 Environment', 4, N'4.4 Heat Stress', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (129, 4, N'4.0 Environment', 5, N'4.5 Lighting', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (130, 4, N'4.0 Environment', 6, N'4.6 OVHD Work', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (131, 4, N'4.0 Environment', 7, N'4.7 Barricades', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (132, 5, N'5.0 Tools', 1, N'5.1 Tools', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), CAST(1.00 AS Decimal(4, 2)), CAST(2.00 AS Decimal(4, 2)), 1, 6)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (133, 5, N'5.0 Tools', 2, N'5.2 Grounding/GFCI', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (134, 5, N'5.0 Tools', 3, N'5.3 Hoses', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (135, 5, N'5.0 Tools', 4, N'5.4 Ladders/Scaffolds', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (136, 5, N'5.0 Tools', 5, N'5.5 Rigging', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), NULL, NULL, NULL, NULL)
INSERT [dbo].[Meta_Observations] ([ID], [GrpID], [GrpText], [ObsID], [ObsText], [DocID], [Cutoff], [WarningThreshold], [CriticalThreshold], [WarningRollupThreshold], [CriticalRollupThreshold], [MinimumRollup], [MaximumRollup]) VALUES (137, 6, N'6.0 Other Behaviors', 1, N'6.1 Other', N'302569-1', 50, CAST(93.00 AS Decimal(4, 2)), CAST(90.00 AS Decimal(4, 2)), CAST(1.00 AS Decimal(4, 2)), CAST(2.00 AS Decimal(4, 2)), 1, 6)

INSERT [dbo].[Users] ([Username], [Password]) VALUES (N'john.smith@email.com', N'123456')

ALTER TABLE [dbo].[OBS_Master] ADD  CONSTRAINT [DF_OBS_Master_ObsDate]  DEFAULT (getdate()) FOR [ObsDate]
GO
