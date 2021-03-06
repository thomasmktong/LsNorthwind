USE [LIGHTSWITCH]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL DEFAULT ((0)),
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_aspnet_PersonalizationAllUsers_PathId] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_aspnet_Profile_UserId] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK_aspnet_SchemaVersions_Feature_CompatibleSchemaVersion] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL DEFAULT (NULL),
	[IsAnonymous] [bit] NOT NULL DEFAULT ((0)),
	[LastActivityDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_aspnet_UsersInRoles_UserId] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
 CONSTRAINT [PK_aspnet_WebEvent_Events_EventId] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 10/2/2014 1:42:19 AM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[RoleName] [nvarchar](128) NOT NULL,
	[PermissionId] [nvarchar](322) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleName] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'LsNorthwind', N'lsnorthwind', N'914a224c-a58c-448a-b346-2aca4f9239f7', NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'914a224c-a58c-448a-b346-2aca4f9239f7', N'c6866943-a03d-40ef-b529-a915bf44df58', N'v6GBIBHcVkvuvHlcOJMzV/vYEhA=', 1, N'nmGL/4HNKCGk/OgPe6bRxw==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(N'2014-10-01 17:31:46.000' AS DateTime), CAST(N'2014-10-01 17:31:46.000' AS DateTime), CAST(N'2014-10-01 17:31:46.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'914a224c-a58c-448a-b346-2aca4f9239f7', N'ff59b669-a31f-40a1-a2b4-7afa3a94897b', N'r72wLCTLpaTIZlrdZGhgrn8C6JY=', 1, N'Njes45ESQ/4tYbClWsDv1g==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(N'2014-10-01 17:32:46.000' AS DateTime), CAST(N'2014-10-01 17:32:46.000' AS DateTime), CAST(N'2014-10-01 17:32:46.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'914a224c-a58c-448a-b346-2aca4f9239f7', N'2500456b-02cb-4c78-b143-cced97c13bbd', N'gLJVWhqZ/Cxy5FeJycCYKUAqY0A=', 1, N'SGPaxAHCpZScn/JAkzcjbg==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(N'2014-10-01 17:32:46.000' AS DateTime), CAST(N'2014-10-01 17:32:46.000' AS DateTime), CAST(N'2014-10-01 17:32:46.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'914a224c-a58c-448a-b346-2aca4f9239f7', N'ff807b05-4234-4590-a851-02772a9ab4bc', N'vln1n66Jv+q1PmNBkX4+CTpmo60=', 1, N'gCPrqeANotWYRpAQYlUzxA==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(N'2014-10-01 17:32:46.000' AS DateTime), CAST(N'2014-10-01 17:32:46.000' AS DateTime), CAST(N'2014-10-01 17:32:46.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'914a224c-a58c-448a-b346-2aca4f9239f7', N'7cb135f1-5c1e-4686-aaa4-c999057bd4bd', N'Administrator', N'administrator', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'914a224c-a58c-448a-b346-2aca4f9239f7', N'4f39a6bd-6e75-4259-9062-1a04e9d2ddc0', N'User', N'user', NULL)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'914a224c-a58c-448a-b346-2aca4f9239f7', N'c6866943-a03d-40ef-b529-a915bf44df58', N'win-jq3j29s58r6\administrator', N'win-jq3j29s58r6\administrator', NULL, 0, CAST(N'2014-10-01 17:31:46.000' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'914a224c-a58c-448a-b346-2aca4f9239f7', N'2500456b-02cb-4c78-b143-cced97c13bbd', N'win-jq3j29s58r6\jack', N'win-jq3j29s58r6\jack', NULL, 0, CAST(N'2014-10-01 17:32:46.000' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'914a224c-a58c-448a-b346-2aca4f9239f7', N'ff59b669-a31f-40a1-a2b4-7afa3a94897b', N'win-jq3j29s58r6\rose', N'win-jq3j29s58r6\rose', NULL, 0, CAST(N'2014-10-01 17:32:46.000' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'914a224c-a58c-448a-b346-2aca4f9239f7', N'ff807b05-4234-4590-a851-02772a9ab4bc', N'win-jq3j29s58r6\thomas', N'win-jq3j29s58r6\thomas', NULL, 0, CAST(N'2014-10-01 17:32:46.000' AS DateTime))
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'ff807b05-4234-4590-a851-02772a9ab4bc', N'4f39a6bd-6e75-4259-9062-1a04e9d2ddc0')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'ff59b669-a31f-40a1-a2b4-7afa3a94897b', N'4f39a6bd-6e75-4259-9062-1a04e9d2ddc0')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'c6866943-a03d-40ef-b529-a915bf44df58', N'4f39a6bd-6e75-4259-9062-1a04e9d2ddc0')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'2500456b-02cb-4c78-b143-cced97c13bbd', N'4f39a6bd-6e75-4259-9062-1a04e9d2ddc0')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'c6866943-a03d-40ef-b529-a915bf44df58', N'7cb135f1-5c1e-4686-aaa4-c999057bd4bd')
INSERT [dbo].[RolePermissions] ([RoleName], [PermissionId]) VALUES (N'Administrator', N'Microsoft.LightSwitch.Security:SecurityAdministration')
INSERT [dbo].[RolePermissions] ([RoleName], [PermissionId]) VALUES (N'User', N'LightSwitchApplication:MinimalRead')
/****** Object:  Index [FK_aspnet_Applications_ApplicationId]    Script Date: 10/2/2014 1:42:19 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  CONSTRAINT [FK_aspnet_Applications_ApplicationId] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__17477DE433192F64]    Script Date: 10/2/2014 1:42:19 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__3091033156EC1A39]    Script Date: 10/2/2014 1:42:19 AM ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_aspnet_Membership_UserId]    Script Date: 10/2/2014 1:42:19 AM ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  CONSTRAINT [PK_aspnet_Membership_UserId] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [FK_aspnet_Paths_PathId]    Script Date: 10/2/2014 1:42:19 AM ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  CONSTRAINT [FK_aspnet_Paths_PathId] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_aspnet_PersonalizationPerUser_Id]    Script Date: 10/2/2014 1:42:19 AM ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  CONSTRAINT [PK_aspnet_PersonalizationPerUser_Id] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_aspnet_Roles_RoleId]    Script Date: 10/2/2014 1:42:19 AM ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  CONSTRAINT [PK_aspnet_Roles_RoleId] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_aspnet_Users_UserId]    Script Date: 10/2/2014 1:42:19 AM ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [PK_aspnet_Users_UserId] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_Membership_ApplicationId_aspnet_Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK_aspnet_Membership_ApplicationId_aspnet_Applications_ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_Membership_UserId_aspnet_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK_aspnet_Membership_UserId_aspnet_Users_UserId]
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_Paths_ApplicationId_Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Paths] CHECK CONSTRAINT [FK_aspnet_Paths_ApplicationId_Applications_ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_PersonalizationAllUsers_PathId_aspnet_Paths_PathId] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] CHECK CONSTRAINT [FK_aspnet_PersonalizationAllUsers_PathId_aspnet_Paths_PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_PersonalizationPerUser_PathId_aspnet_Paths_PathId] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK_aspnet_PersonalizationPerUser_PathId_aspnet_Paths_PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_PersonalizationPerUser_UserId_aspnet_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK_aspnet_PersonalizationPerUser_UserId_aspnet_Users_UserId]
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_Profile_UserId_aspnet_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK_aspnet_Profile_UserId_aspnet_Users_UserId]
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_Roles_ApplicationId_aspnet_Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK_aspnet_Roles_ApplicationId_aspnet_Applications_ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_Users_ApplicationId_aspnet_Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK_aspnet_Users_ApplicationId_aspnet_Applications_ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_UsersInRoles_RoleId_aspnet_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK_aspnet_UsersInRoles_RoleId_aspnet_Roles_RoleId]
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_UsersInRoles_UserId_aspnet_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK_aspnet_UsersInRoles_UserId_aspnet_Users_UserId]
GO
