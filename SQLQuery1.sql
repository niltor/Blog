ALTER TABLE [dbo].[IssueTypes] DROP CONSTRAINT [FK_IssueTypes_IssueModules_IssueModulesIssueModuleId]
GO
ALTER TABLE [dbo].[Issues] DROP CONSTRAINT [FK_Issues_IssueTypes_IssueTypesIssueTypeId]
GO
ALTER TABLE [dbo].[Issues] DROP CONSTRAINT [FK_Issues_IssueModules_IssueModulesIssueModuleId]
GO
ALTER TABLE [dbo].[Issues] DROP CONSTRAINT [FK_Issues_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[IssueAnswers] DROP CONSTRAINT [FK_IssueAnswers_Issues_IssuesIssueId]
GO
ALTER TABLE [dbo].[IssueAnswers] DROP CONSTRAINT [FK_IssueAnswers_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BlogTypes] DROP CONSTRAINT [FK_BlogTypes_Modules_ModulesId]
GO
ALTER TABLE [dbo].[Blogs] DROP CONSTRAINT [FK_Blogs_AspNetUsers_UsersId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  Index [IX_IssueTypes_IssueModulesIssueModuleId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_IssueTypes_IssueModulesIssueModuleId] ON [dbo].[IssueTypes]
GO
/****** Object:  Index [IX_Issues_UserId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_Issues_UserId] ON [dbo].[Issues]
GO
/****** Object:  Index [IX_Issues_IssueTypesIssueTypeId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_Issues_IssueTypesIssueTypeId] ON [dbo].[Issues]
GO
/****** Object:  Index [IX_Issues_IssueModulesIssueModuleId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_Issues_IssueModulesIssueModuleId] ON [dbo].[Issues]
GO
/****** Object:  Index [IX_IssueAnswers_UserId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_IssueAnswers_UserId] ON [dbo].[IssueAnswers]
GO
/****** Object:  Index [IX_IssueAnswers_IssuesIssueId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_IssueAnswers_IssuesIssueId] ON [dbo].[IssueAnswers]
GO
/****** Object:  Index [IX_BlogTypes_ModulesId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_BlogTypes_ModulesId] ON [dbo].[BlogTypes]
GO
/****** Object:  Index [AK_BlogTypes_Name]    Script Date: 2016/10/27 14:57:22 ******/
ALTER TABLE [dbo].[BlogTypes] DROP CONSTRAINT [AK_BlogTypes_Name]
GO
/****** Object:  Index [IX_Blogs_UsersId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_Blogs_UsersId] ON [dbo].[Blogs]
GO
/****** Object:  Index [IX_Blogs_Title]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_Blogs_Title] ON [dbo].[Blogs]
GO
/****** Object:  Index [IX_Blogs_Author_Type_ModuleId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_Blogs_Author_Type_ModuleId] ON [dbo].[Blogs]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [EmailIndex]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [EmailIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_AspNetUserRoles_UserId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_AspNetUserRoles_UserId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2016/10/27 14:57:22 ******/
DROP INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[News]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[Modules]
GO
/****** Object:  Table [dbo].[IssueTypes]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[IssueTypes]
GO
/****** Object:  Table [dbo].[Issues]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[Issues]
GO
/****** Object:  Table [dbo].[IssueModules]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[IssueModules]
GO
/****** Object:  Table [dbo].[IssueAnswers]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[IssueAnswers]
GO
/****** Object:  Table [dbo].[BlogTypes]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[BlogTypes]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[Blogs]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2016/10/27 14:57:22 ******/
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LastLoginTime] [datetime2](7) NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NickName] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[Attribute] [nvarchar](128) NULL,
	[Author] [nvarchar](450) NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[Description] [nvarchar](512) NOT NULL,
	[Tags] [nvarchar](128) NULL,
	[Title] [nvarchar](64) NOT NULL,
	[Type] [nvarchar](32) NOT NULL,
	[UpdateTime] [datetime2](7) NOT NULL,
	[UsersId] [nvarchar](450) NULL,
	[ModuleId] [int] NOT NULL DEFAULT ((0)),
	[Status] [nvarchar](max) NULL,
	[ViewNum] [int] NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[BlogTypes]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogTypes](
	[BlogTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ModulesId] [int] NULL,
	[Name] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_BlogTypes] PRIMARY KEY CLUSTERED 
(
	[BlogTypeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[IssueAnswers]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueAnswers](
	[IssueAnswerId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[IssuesIssueId] [int] NULL,
	[Status] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_IssueAnswers] PRIMARY KEY CLUSTERED 
(
	[IssueAnswerId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[IssueModules]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueModules](
	[IssueModuleId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [int] NOT NULL,
 CONSTRAINT [PK_IssueModules] PRIMARY KEY CLUSTERED 
(
	[IssueModuleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Issues]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issues](
	[IssueId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](2048) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[IssueModulesIssueModuleId] [int] NULL,
	[IssueTypesIssueTypeId] [int] NULL,
	[Status] [nvarchar](max) NULL,
	[Title] [nvarchar](64) NULL,
	[ViewNum] [int] NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Issues] PRIMARY KEY CLUSTERED 
(
	[IssueId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[IssueTypes]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueTypes](
	[IssueTypeId] [int] IDENTITY(1,1) NOT NULL,
	[IssueModulesIssueModuleId] [int] NULL,
	[Name] [nvarchar](16) NULL,
 CONSTRAINT [PK_IssueTypes] PRIMARY KEY CLUSTERED 
(
	[IssueTypeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[Modules]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[ModulesId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](32) NULL,
	[Url] [nvarchar](128) NULL,
	[Rank] [int] NOT NULL DEFAULT ((0)),
	[Status] [nvarchar](32) NULL,
 CONSTRAINT [PK_Modules] PRIMARY KEY CLUSTERED 
(
	[ModulesId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
/****** Object:  Table [dbo].[News]    Script Date: 2016/10/27 14:57:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsId] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime2](7) NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[Title] [nvarchar](128) NOT NULL,
	[Type] [nvarchar](32) NULL,
	[Url] [nvarchar](1024) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160810001909_Initial', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160810062916_gtot0809-2', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160810212826_gtot0810-1', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160818101834_gtot0818-1', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161010041416_gk1010', N'1.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161010054813_gk101002', N'1.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20161010060742_gk101003', N'1.0.1')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'17445b92-0b16-4376-9bf6-554671003578', N'1c16ec8a-e811-41bb-bedb-5165d182c478', N'Admin', N'ADMIN')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'26727132-a151-4cd5-95fe-fff1c90b7e34', N'e78fb3cd-50a6-4527-8640-78f1db7022f7', N'RegUser', N'REGUSER')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'C202F281-9264-47AC-808A-CC7DA3670A7A', N'23965471-50C6-460F-B558-A7570EABB0F0', N'Author', N'AUTHOR')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', N'C202F281-9264-47AC-808A-CC7DA3670A7A')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'388303c1-1c08-43db-b9ae-5daae0b7cf08', N'17445b92-0b16-4376-9bf6-554671003578')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4e6fd101-e2df-4d0e-8787-9cfd7a479425', N'C202F281-9264-47AC-808A-CC7DA3670A7A')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'517462ff-263c-4b29-9c2a-0e4857619fa7', N'26727132-a151-4cd5-95fe-fff1c90b7e34')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'80805e7a-8fbe-4804-a5bc-6d40707db92e', N'C202F281-9264-47AC-808A-CC7DA3670A7A')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd171cf78-1085-4525-8637-a3caafee46bc', N'C202F281-9264-47AC-808A-CC7DA3670A7A')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreateTime], [Email], [EmailConfirmed], [LastLoginTime], [LockoutEnabled], [LockoutEnd], [NickName], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 0, N'de53c9bc-e6dc-4a43-affe-d626b6c1cb80', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'geethin@outlook.com', 0, CAST(N'2016-10-25 13:44:12.4049517' AS DateTime2), 1, NULL, N'NilTor', N'GEETHIN@OUTLOOK.COM', N'GEETHIN@OUTLOOK.COM', N'AQAAAAEAACcQAAAAEF0ED4CaKgL9JbzxbpnSxDJH8TX4f7NKVT+Y/YMyKlVNrtv7N8fbIUDm3WVt22PKFQ==', NULL, 0, N'c1a9d692-6d90-490b-8632-6f6cc34ada47', 0, N'geethin@outlook.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreateTime], [Email], [EmailConfirmed], [LastLoginTime], [LockoutEnabled], [LockoutEnd], [NickName], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'388303c1-1c08-43db-b9ae-5daae0b7cf08', 0, N'a3611cf0-3712-4c2e-9983-f0fe404421dd', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'zpty@outlook.com', 0, CAST(N'2016-10-12 14:59:15.5242795' AS DateTime2), 1, NULL, N'Admin', N'ZPTY@OUTLOOK.COM', N'ZPTY@OUTLOOK.COM', N'AQAAAAEAACcQAAAAEEdPt5fkA5uG4NymbO/JaGSkuvzuFllefDmKGk48ScUvVMMz6LtiSCawiVXO0PgTjg==', NULL, 0, N'4c51d4e2-0050-47bd-afb8-869bd8dbcd86', 0, N'zpty@outlook.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreateTime], [Email], [EmailConfirmed], [LastLoginTime], [LockoutEnabled], [LockoutEnd], [NickName], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'4e6fd101-e2df-4d0e-8787-9cfd7a479425', 0, N'16bd5a14-a222-4d60-8e95-5faa44cb1121', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'tjjlhst@gmail.com', 0, CAST(N'2016-06-05 23:46:38.1163829' AS DateTime2), 1, NULL, N'tjjlhst', N'TJJLHST@GMAIL.COM', N'TJJLHST@GMAIL.COM', N'AQAAAAEAACcQAAAAELiSB8816kVG9wtYVidglho39kGDH9LWhV4RyPLOjT9iO5F57rmmVBhLiz32OgreHg==', NULL, 0, N'd945e9dd-a98e-4905-9838-87c300429a7c', 0, N'tjjlhst@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreateTime], [Email], [EmailConfirmed], [LastLoginTime], [LockoutEnabled], [LockoutEnd], [NickName], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'517462ff-263c-4b29-9c2a-0e4857619fa7', 0, N'2380d630-afe4-42e3-9f95-bb2ffa012aee', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'newdre@163.com', 0, CAST(N'2016-09-30 15:04:14.1759140' AS DateTime2), 1, NULL, N'newdre', N'NEWDRE@163.COM', N'NEWDRE@163.COM', N'AQAAAAEAACcQAAAAEHx/+2Wk9YpYYkkznZQx8p3k4Ra3bMQI71SJ+Zv8YvZvud5ddmGk1gu/Vufq/Imckg==', NULL, 0, N'85ca4326-b0c6-4ca9-b539-fe7127802a31', 0, N'newdre@163.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreateTime], [Email], [EmailConfirmed], [LastLoginTime], [LockoutEnabled], [LockoutEnd], [NickName], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'80805e7a-8fbe-4804-a5bc-6d40707db92e', 0, N'c6f4d457-1228-4f05-abdc-e3128cb54aaf', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'1627239091@qq.com', 0, CAST(N'2016-09-04 11:21:01.2882833' AS DateTime2), 1, NULL, N'Nihily', N'1627239091@QQ.COM', N'1627239091@QQ.COM', N'AQAAAAEAACcQAAAAEM4tM6gp/bnbfqMzG2/bxNvu2zRx96CSyYE8prFiyGgeADs9P0VjFOgxM3UaZ9nbBQ==', NULL, 0, N'3553bc5a-3c84-4c75-ba9f-c7a4dd8133be', 0, N'1627239091@qq.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [CreateTime], [Email], [EmailConfirmed], [LastLoginTime], [LockoutEnabled], [LockoutEnd], [NickName], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'd171cf78-1085-4525-8637-a3caafee46bc', 0, N'bf4f96fb-8708-4cb6-b922-2919d43c3378', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), N'2048569175@qq.com', 0, CAST(N'2016-10-12 15:04:30.9501942' AS DateTime2), 1, NULL, N'高美丽', N'2048569175@QQ.COM', N'2048569175@QQ.COM', N'AQAAAAEAACcQAAAAEEnfLWs+NiIEvRqr0KiHaX478H51VnSSBbbvSa3polsprT2x0VmN5rmU5eeVCHnpgw==', NULL, 0, N'1efb8d56-4ecb-45af-af9f-25b75d771897', 0, N'2048569175@qq.com')
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (1, NULL, N'NilTor', N'### 前言
这是一个极客的世界。成千上万的极客每天都在学习、分享。为了让这个世界更美好，这个群体做出了突出的贡献。世界因我们改变和发展，让世界更美好是我们每天都在践行的事情！但是，一味的埋头苦干，并不会得到别人的了解和认可。所以，是时候让更多的人了解和支持这个群体了。

所谓极客精神是开放、平等与分享，这也正是互联网的基本精神。

### 共同分享
成长，需要学习、实践与总结！当你花费时间将自己的所学所用编辑成文章分享给其他人时，你便完成了这个过程，得到了成长！

### 技术支持
本站由[极思科技](http://www.geethin.com "极思科技")提供技术支持！', CAST(N'2016-06-08 09:29:12.9121477' AS DateTime2), N'开放、平等与分享是我们的基本精神之一！', NULL, N'关于本站', N'站内新闻', CAST(N'2016-06-13 01:10:33.2948116' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 5, NULL, 37)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (2, NULL, N'NilTor', N'[TOCM]
### 前言
>  选择编程语言相信是很多人都有过的经历，或者说现在的你还在迷惑。但总的来说，都可以根据实际情况去分析，从而做出正确的选择。本篇内容提供给大家一些思路，以及分享自己的一些经验，希望可能给大家提供帮助！

### 新手选择
之前，不少身边接触编程的同学都会来问我，应该学什么，从哪入手比较好。通常是没有深入接触过编程语言的人，而且每个人的目标还不太一样。这里我必须要强调一点，你必须要搞明白一个问题：**你学编程的目的是什么？**

-	以工作为导向，考虑找工作的难易程度，工资的高低等等，那么目前来看，`JAVA`与`OC`是非常值得学习的语言，因为它们在移动端Android与IOS的开发中发挥重大的作用。现在的情况来看`JAVA`是占据了半壁江山的，无论是移动端，还是后台、嵌入式以及现在很火的大数据相关的，`JAVA`语言都能发挥重要的作用。所以，从实用性(赚钱)来讲，JAVA是非常好的选择。
##### JAVA
	我小学时接触pascal，这是我积累和磨练编程基础的语言。我大学后，JAVA是学校里教授，并且我自己也比较努力学习的语言。但我本身对它并没有太多的喜爱，虽然它的应用范围是那么广泛。但我个人的感觉是：
	-	如果是编写桌面应用程序，那么在windows、os x系统下，它并不会提供最佳的体验。它的优势在于跨平台。
	-	编写网站程序，它的体验也非常一般，虽然很多大型公司都在使用它，但对于个人，或者中小型开发团队来讲，从开发体验来讲，并没有什么吸引力。很多时候，使用java，是最保险稳定的做法。
	-	编写移动端APP。谷歌把java作为android开发语言。结果还被告了。编写android应用程序，从来就不是一件有良好编程体验的事情，当然这里面有更多非语言的因素。
	
	关于java，可以查看一下其发展的历史，因为跨平台的特性，吸引了众多的开发者，形成了生态效应。也许从语言角度来讲，java并不讨喜，甚至是让人有些厌烦的。它前期的优势在于跨平台，现在的优势是生态和本身的稳定(更新缓慢)，语言的学习成本是越来越低的。
##### OC或swift
	与之情况类型的就是`OC`，由于苹果手机的广泛使用，加上在笔记本市场、PC市场，苹果也都有不错的表现。现在苹果在推swift，无论是swift还是oc，都是在苹果的封闭生态中。选择这类语言，虽然没有java的跨平台和广泛使用，但依靠苹果，仍然是不错的选择。
	可以说，选择苹果，即选择了封闭的一致性的编程体验，同时，苹果的开发者要比java获得的收入更高。
##### C与C++
	C语言不谈，它既简单又复杂，既适合入门，又适合长期研究。在JAVA之前，C++无疑是最万能，使用范围最广泛的语言。以前C与C++,基本就是无所不能，即便是现在仍然是最为广泛使用的语言之一。在某些(游戏和系统级软件注重执行效率)领域，C与C++的优势还是非常明显的。只是它们更多的是提供类库支持，仍然需要配合使用其他语言。如果你更感兴趣能直接开发离用户更近的产品，那么显然有其他更好的选择。
##### 其他
	语言成百上千，并非没有其他的选择，或者说还有非常多的选择。不过其他语言相对于java及oc来讲，不是语言不优势，而是不强势。对于Web开发者来讲，`php`是非常好的选择。对于windows平台的开发者，`c#`等显然是最优的选择，而浏览器开发，无疑是javascript的天下。当然还有`python`、`ruby`等等，都在某些方面得到很好的应用。

	其实，根据TIOBE的编程语言排行(虽然结果也许与天朝的情况有些不同)长期的数据来看，最高的两位java与c，然后是C#、php、python等，这些就代表着最主流的情况。
##### 结论
即便对于新手，我仍然给出了不少选择，因为世界之大，情况之复杂，遗留问题之多，不是一两门语言所能解决的。
-	如果你有苹果的电脑或笔记本，那么无疑你的第一选择是苹果OC或swift。因为你已经身处苹果的封闭生态之中。
-	JAVA是万能和无脑的选择，如果你不知道该如何选择，那么从它入手，不会有错。
-	C++，如果你不是奔着深入系统底层或游戏图形开发相关的，那么并不建议你直接使用c++入手。

>在实际开发中，一个程序或一个产品，很可能是有多门语言共同完成的，这是非常正常的。编程语言最终是一个工具，面对不同的情况使用合适的工具，这才是明智的。

### 有编程基础
如果你有编程基础，也不看重更高的工作收入，把它当成兴趣爱好，想了解更广阔的空间的话，那么确实有一些不一样的选择。我曾经也面对选择，而我选择的依据，是我想做什么？我接触的语言之前，总是有想做的东西。因为我知道我只要清楚自己想要做什么，然后去选择合适的语言就好，因为学习一门新的语言对我来讲，并不是什么困难的事情。
`pascal、java、php、javascript、python、c#`等是我接触并使用其编写过有明确目的程序的语言。

-	JAVA是我上大学，学校的主要语言课程之一，也是我主要学习的语言之一。我有用它写过应用程序，写过web，但体验不好。最主要是用它来写android应用程序。不过一个应用程序，需要非常多的支持，这就依赖后台的支持。

-	Web开发，我使用php很长时间，因为它上手足够快，实用性非常强，环境支持非常好，从编写到最好上线(到互联网上，别人可以访问)，是很容易的事情。而一旦进入了web的世界，那么就足够广阔和复杂了。Web决不是大部分人想象的那么简单。它无所不在，向所有其他的客户端程序提供支持，扮演着一个枢纽的角色，涉及的概念太多。单纯的web可能主要是指网页的形式，那么它包括简单的后台支持和浏览器端的实现。所以，接触了web,javascript也是必须要了解的。

-	我是windows平台下的开发者。虽然我也曾在os x平台上工作了几个月的时间。最初我使用python来实现一些功能，但当我真的想做成界面形式的软件时，那么c#无疑是最好的选择。它给我的体验的确是非常好的。在win平台下，VS+C#等语言，应该说是完胜其他任何组合的。

**结论**
对于有编程基础的人，你如何选择语言，完全在于你想要做什么。因为你有编程的基础，所以，无论是什么语言，你都应该有自信去学习和掌握它。简单举例，你想开发一个什么东西，那么就去选择开发它适合的语言，这是根据需求来。
再比如说，你想进某个公司去发展，那么你要先了解这个公司的某个部门或项目组是使用什么语言进行开发的，然后去学习它，把它当做你进入公司的条件。


### 在职人员
对于在职人员来讲，我并没有太好的建议，因为你已经做出了选择，有了实际工作的需求，不是说想换什么就换什么的，更多的是围工作本身的语言去拓展其他语言。

### 主观观点
我是那种从小有编程基础和经验的。所以之后学习的内容从来没有考虑过工作的情况，完全是自己想做什么，就去学什么。这有非常明显的坏处，就是不利于工作，不利于职业规划。所以，现如今，我已经考虑不再把兴趣硬生生的做成工作，这样会增添许多烦恼。

#### 了解C#.
如果让我推荐，无论对于新手，还是有编程基础的人，只要你还没有完全的投身工作之中。那么我推荐你学习**`C#`**。

需要注意的是，我们不能可能抛除其他一切因素，单独谈论一门语言，这本身也没有什么意义。

##### C#有哪些优点？
-	单纯从语言的角度来讲，`C#`也是足够优秀，足够现代化的语言。
-	`C#`是面向对象的强类型语言，但它拥有非常先进的语言特性。这意味着什么？这意味着，你既可以感受得到强类型语言的好处，又得体会语法糖的方便。
-	`C#`是由编程语言大师 `Anders Hejlsberg` 主持开发的，包括.Net平台。关于这个神人，大家可以自己去了解一下。这也决定了C#足够的健壮和优美。
-	更为重要的是`C#`是微软推出的语言，就是为了替代java而发明的现代化语言。其拥有宇宙最强编辑器VS的全面支持。在windows平台使用VS开发工具，使用C#开发程序是一件拥有完美编程体验的事情，你不会失望。

##### C#能做什么？
相信很多同时了解java与c#的人，都不会否认c#相对java是多么的优秀。但是，记住一点，一门语言是否使用广泛，其本身的优点并不是决定性因素。C# 官方只支持在windows平台上使用。
.Net平台虽然说是同JAVA类型的虚拟机概念，但也主要支持windows系统。而在移动端为先的今天，这款优秀的语言完全没有搭上这个便车。

那么C#到底能做什么？自从.Net宣传开源之后，一切都将改变，这也是为什么我要推荐它的原因。

1. windows平台的软件开发。这本来就是它的长处所在。
2. Web开发。谈到Web开发，过去总是列出三个选项：java、php与asp。但asp form开发模式相对落后。自从推出asp.net mvc之后，在Web开发方面，已完全是现代化的开发模式，其对node等前端的支持也非常优秀。
3. 移动端开发。利益于xarmain，现在已经可以使用c#进行android与ios的开发了。不过相对于使用官方支持的语言来讲，这也只是一种跨平台的解决方案。不过，总的来说，提供了一种方式，可以让开发者使用c#进行移动端开发。
4. 游戏开发。Unity使用C#作为脚本语言。而无论是传统pc端还是移动端的游戏开发，C#都可以作为主要的语言。

**作为.Net最重要的语言之一，C#以其自身的语言特性以及.Net提供的强大支撑，将在越来越多的领域发挥重要的作用。**

你需要关注的是**.Net core**，当.Net实现了跨平台支持之后，它将为更多的开发者提供生产力支持。越来越多的人们将体会到开发的愉悦体验，而不是痛苦的体验。

### 结语
微软近两年的举动，着实让开发者们感到兴奋。我向来不是微软系的开发者，但它的确提供一整套从开发(包括源代码管理及团队协作)到产品上线(Azure)的服务。从VS推出免费的社区版，到VS Code跨平台编辑器的推出，从.Net宣传开源，到.Net core马上推出正式版，以及Xamrain的跨平台移动开发支持，微软表现出了足够的诚意。而我从java android php等语言为主的工作中，转身投入到微软平台VS以有C#为主的开发，整体的开发体验得到了巨大的提升。

> 不妨，从现在起，开始了解微软体系下开发的体验，现在正是时候。当然我不建议你从老旧的方式入手。而是直接从.Net core入手。如果你现在想开发Web应用，那么asp.net是第一选择。因为你根本不用选择使用什么框架，不用去和其他的开发者争议，使用什么框架更好，因为这一切，都已经提供好了！

接触编程十几年，一直以来都追求良好的编程体验。而现在，我终于找到了方向！
**不管你最后做出什么样的选择，要明白，你只有去习惯它，并尝试喜欢上它，你才能获得良好的编程体验！**
', CAST(N'2016-06-09 10:25:06.6659340' AS DateTime2), N'  选择编程语言相信是很多人都有过的经历，或者说现在的你还在迷惑。但总的来说，都可以分情况去分析，从而做出正确的选择。不过博主还是推荐主要推荐了一门编程语言，它到底是谁呢？', NULL, N'编程语言推荐，如何选择编程语言', N'技术分享', CAST(N'2016-06-13 03:23:36.8514473' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 1, NULL, 95)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (3, NULL, N'NilTor', N'[TOCM]
### 前言
>    开发语言与平台经过几十年的发展，Web由于互联网的发展越来越重要。这旨软件开发的主战场之一。尽管越来越多的平台和终端出现，但现在概念越来越清晰，越来越统一。那就是云+端。

本篇文章简单介绍Web开发相关的内容。**这里说的Web不是指网页**，而是更贴近云端的概念。

### 云+端
越来越多的语言和平台出现，但整个开发并没有朝着混乱发展，而是向着更统一的方向。无论你现在做什么开发，最终都可以归结到云+端的形式。
-	什么是云？这个难以说明，从开发者的角度来讲，它的作用是计算与服务，主要处理的是数据。数据需要存储、计算，然后将结果输出给其他终端。
-	端指的是什么？其实就是各种终端。比如浏览器客户端，Android，IOS，系统软件等等展现给用户内容的终端。有了这样的概念，编程反倒统一了。无论你做什么，都可以通过通过终端+云的模式实现。
-	Web不再是简单的网页展示了，展现的部分已经是端的功能。这是一个思维方式的转变，改变了现代开发的模式和体验。

### Web开发的主要内容
谈起Web开发，就想到了网页，但上面说云+端的概念，就是想说明，不要以固有的老旧的思维去看待发展中的事物。你最好了解一下[REST](https://zh.wikipedia.org/zh-cn/REST "REST")，以便理解本文所说的内容。这里讲的Web开发的作用主要有：
1. 作为数据的枢纽。直白的就是与数据库的连接，读写数据。
2. 业务逻辑处理，作为端的交接人。它把数据经过业务逻辑的封装，再根据不同端的不同需求，提供给各终端。

我们看到，其实它的作用并不复杂，但却是非常重要的。参考过去的模式。比如我写了一个程序，可以直接通过程序本身读写本地或远程数据库，然后经过一系列的处理展现给用户。但如果按照现在的模式，程序本身是不可以直接到数据库里拿东西的，而是经过一个统一管理的枢纽获取数据。
虽然看上去是多了一个环节，但却更加统一和清晰了。更有利于分工，有利于软件开发的管理和控制。

### Web开发的选择
过去提到web开发，通常是jsp,asp,php这3P组合。
#### PHP
-	先说php，因为我使用它工作了较长的时间。首先，它非常容易上手，极具实用性，在各平台的部署也都比较容易。加上与mysql的完美的配合，确实是web开发的首选。但是，根据我个人的真实体会，我一点都不推荐，新手选择php作为主要的编程语言。因为它足够的简单，会让许多新的开发者产生一种错觉，一个巨大的错觉：原来php这么简单->原来开发网站那么简单->原来编程那么简单！进而失去了继续学习和挖掘的动力，最终只会沦为一个会一点技能的码农。
-	国内php的环境并不会让人感到愉悦，太多无聊的争论，极其低劣的讨论。身边存在太多毫无编程基础和经验的phper，非常low逼！当然，这也并非所有的phper都是如此，但这是一个普遍现象。
-	学习php，在实际项目中，你必然会选择一个框架进行开发。php有很多著名的框架，但这么多框架，就面临一个选择的问题，就面临着学习成本的问题，就有一个混乱的问题。虽然php的厂商提供了一个带有官方色彩的框架zend，但在国内，应用的并不广泛！我相信你一定会陷入框架的混乱之中，并且各个阵容多数都是互相排斥的。在整个开发界都在朝着统一的方向发展的时候，这么个内部却是这样的情形！
#### JSP
-	再说jsp。JAVA语言本身的发展比较滞后。但java生态环境非常好，有许多web开发相关的框架选择，而且也在不断的发展和改变。相信了解java的都知道ssh。框架没有想象的那么简单，虽然原理上都是对基础类库的封装，但它涉及的的思想和概念各不相同。所以，几十上百种造成的混乱这一点与php是一样的。但java由于它本身面向对象的特性，加上使用java进行web开发的通常是有一定规模和明确分工的团队，所以，在编程体验上来讲，这点要强于php，因为你只需要做好自己的那部分就可以了。
-	我接触过一些java的程序员，他们通常只能解释他做的东西最终是应用于哪个行业的。但你让他自己从无到有实现一个有特定需求设计的博客程序，也许并不是一件非常容易的事情。这一点不像php，phper可以随手拉个框架进来，就可以去实现你的要求。
#### ASP
-	最后讲asp。其实对于asp以前的情况我并不太了解，只知道长时间以来，asp form是主要的开发模式。之后.Net平台的出现，asp.net mvc的推出，可以说是赶上了现代的开发模式。但好在它的一切都有微软提供支持，所以，没有那么多的框架，没有那么多的模式。大家学习的内容都是差不多的。

#### 对比
-	**开发效率**，开发效率上讲，php是最快捷的。很多中小微型公司都使用php。因为一两个phper就可以实现一个系统。加上解释型语言的特点，你修改程序并不需要进行编译，可以直接进行预览。
	然后是asp，微软提供了统一的开发模式，大家在对代码和工程方面的理解是差不多的，协作方面问题并不大。
	最后是java，在很多实际的项目中，java的分工是比较明确的，能做架构的做架构，其他的人就在一个架子下做好自己的那一部分工作就可以了。
-	**稳定性**
	java无疑是最稳定的，作为面向对象的强类型语言，天生就具有稳定的优势。再加上java的生态实在是太庞大。
	asp倒也还可以。但form的开发形式，有许多的限制性，越来越不适应未来的发展方向。而asp.net mvc之后，这一局面在改变，但它还在不断的发展，变化很快，需要持续的更新和做出改变，而不是像java那样已经形成了生态，你写项目，可以十年都能稳定的运行，并且并不会显得很过时。
	php的不稳定体现在很多方面。程序本身是一人问题，很多语言的优点就是其缺点所在。解释型语言，很多问题只能在运行时去发现和解决。当然，最最重要的还是phper，代码样式各种各样。如果你与很多人协作过，会明白我在说些什么。
-	**协作**
	如果一个项目有十几几十个phper，那么反而效率会极大的降低。即使php在各种框架的帮助下，也难以解决这个问题。为什么？因为phper之间的水平实在是参差不齐，协作并不容易，加个php本身语言天生不具有工程管理方面的优势。
	java由于他足够的成熟，项目和人员管理上可以保证协作的通畅。

### 个人观点
#### 不推荐的
上面有提到，我受益于php，了解了web开发中的方方面面。但也说了不推荐新手把php作为主要的web开发语言。但这并不是说就要拒绝它，因为它上手足够的容易，掌握它，使用它来做项目并不是一件坏事。只是想提醒各位，千万不要陷入php世界中一些污秽的地带。因为它入手足够的简单，也使得各类人都可以成为所谓的程序员。

#### 极力推荐的
这里只是推荐给一些编程的入门人员。因为在国内，作为正在工作的程序员，要去转语言，并不容易。
我推荐的是**asp.net core**。注意，这是微软自.net开源后，在.net core的基础上重新设计开发的web编程支持。它有以下优点：
1. **跨平台！**因为.net core跨平台了。这意味着你可以在linux 以及os x上使用它。也意味着，你写的asp.net程序，以后是可以不同系统的服务器上运行的。
2. **工具支持。**微软的开发工具向来是极其优秀的。即便是跨平台，也为其他平台的开发者提供了`visual studio code`在这款编辑器。自从去年宣传推出后，今年已经发布了正式版，目前来讲相当好用。而对于windows平台，你也有了免费版的VS使用，的确是良心。
3. **使用C#。**asp程序一直都可以使用C#和VB进行编写，目前新版的asp.net core还只支持c#，未来应该也会支持VB。利益于C#优秀的语言特性，你一定会有良好的编程体验。
4. **统一性。**asp.net mvc，对于所有学习asp.net的人来说，asp.net mvc是最好的选择，所以，你不需要去思考去选择我要使用什么框架。因为官方提供了一套完整的设计，让所有的asp.net开发人员都学习一套模式。
5. **前端支持** asp.net core自带前端支持，完全拥抱现代开发的新形式。而这一切，配合其强大的工具支持，你真的可以得到完美的编程体验。

>体验非常重要。体验不仅仅是消费者才需要的。开发者也非常注重体验。比如上班的时间，工作的电脑屏幕大小，办公的桌椅以及你使用的系统环境以及开发工具。不得不说，在开发体验上来讲，微软是面对各类人群提供了良好的支持。
举个简单的例子，使用VS，我可以完成程序的编写、调试、代码的管理、数据库的操作、团队协作以及程序的部署与发布。没错，这一系列的操作，都可以使用VS去完成。并且这样的操作，不是只针对开发者，它对普通人群同样适用，这是一种怎样的体验？

过去几年，微软一直在布局：
-	.Net开源；
-	VS Code跨平台工具推出；
-	TypeScript的推出与应用；
-	VS免费版本的推出；
-	收购Xamrain并免费提供给开发者；
-	UWP统一平台构想和建设；
-	Azure服务拓展和快速发展；
-	......
虽然在移动时代，微软完全没有赶上。但当某骨还在忙着告某谷的时候，当苹果还在想着怎么卖手机和逃税的时候。微软的这些举措，足够的开放和诚意。
不谈其他领域，就软件开发来讲，近两年，微软一直都有动作。很多人都不喜欢微软的更新，因为每次更新都会对开发者造成影响。没错，在微软的体系下，你是需要不断学习的，不断改变的。只有这样，微软才能不断的发展和进步，你才能不断的发展与进步！

### 结语
我向来不是微软系的开发者和拥护者，我是幸运的，因为我真正开始接触了解它的时候，它足够的优秀。我相信对于很多人的吐槽，微软过去的确存在很多的问题，事实是不需要争辩的。同样的是，现在的微软的确在改变，这也是事实。也许以后我会成为微软的拥护者，只要它足够优秀，为什么不呢？
', CAST(N'2016-06-13 01:26:02.2762831' AS DateTime2), N'    开发语言与平台经过几十年的发展，Web由于互联网的发展越来越重要。这旨软件开发的主战场之一。尽管越来越多的平台和终端出现，但现在概念越来越清晰，越来越统一。那就是云+端。', NULL, N'Web开发的选择与体验', N'技术分享', CAST(N'2016-06-13 03:23:54.8364058' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 1, NULL, 50)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (4, NULL, N'NilTor', N'##基本用法
关于其本用法，可以直接查看官方文档。
[https://ef.readthedocs.io/en/latest/saving/basic.html#](https://ef.readthedocs.io/en/latest/saving/basic.html# "https://ef.readthedocs.io/en/latest/saving/basic.html#")

EF添加数据都是相同的步骤：
1. 构造源数据(要添加的数据)
2. 使用Add方法告诉EF要添加数据
3. 使用SaveChanges执行添加的操作

## 实例

#### 带外键的添加
简单的实例化对象添加数据是很简单的，在实际过程中，对象之间是存在各种关系的。举个**一对多**的例子：
-	用户表User
-	博客表Blog

使用EF code first，User Model里的就需要有属性
```csharp
	public List<Blog> blogs{get;set;}
```
而Blog Model里就需要有属性
```csharp
	public User user{get;set;}
```
而在实际的数据库表结构中，blog表中是包含了UserId这个字段的。
当我们添加一篇新博客的时候，你不能直接对UserId这个字段赋值，因为在blog Model中只有User对象，而没有UserId字段。

其实添加的方法也很简单，既然是user对象，你就赋值一个user对象即可，例如：
```csharp
    var blog = new Blog
    {
        Status = addBlog.Status,
        Name = addBlog.Name,
        Description = addBlog.Description,
        User = db.User.Where(u => u.UserId == addBlog.UserId).Single()
    };
    db.Blog.Add(blog);
    db.SaveChanges();
```

使用EF code first方式，其实我们就没必要关注数据库中是什么样子的，是完全操作对象的，既然在Model里面我们使用的是User对象，那么我们只需要告诉EF这个User对象是哪个就可以，它就会自动处理数据库中的UserId的问题。

如果你使用了.net 的身份验证，user的获取方式并非如此。不过适用于其他各种相关的操作！
', CAST(N'2016-07-19 12:50:10.3551615' AS DateTime2), N'    使用asp.net做web开发，使用entity framework也是必不可少的. dotnet core正式版发布后，相应的也有ef core。不过目前支持的数据库还比较少！今天给大家介绍如何使用ef添加数据！', NULL, N'asp.net core实践-ef-添加数据', N'ASP.NET Core', CAST(N'2016-07-19 13:13:41.9451745' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 1, NULL, 83)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (5, NULL, N'NilTor', N'## 前言
>Web的世界广阔无边，繁杂无边，我们可能使用各种语言通过各种方式去编写Web应用。近年来，Web相关的技术也在不断的发展，虽然遗留问题严重，但也渐渐有了更清晰的未来！

我想，在编程的世界中，Web相关的开发算是最繁杂的了，涉及到及多的概念，要了解各方面的知识，同时还有比较严重的遗留问题。而为了适应现代移动开发的需要，以及未来物联网的需求，Web开发早不是单纯的网页的概念，更是云和服务的概念！

## 如何选择
Web开发本身各式各样，从最简单的静态页面，到动态网站，到可适应移动设备显示的自适应网站，再到云端概念的服务，的确是非常繁复。尽管如此复杂，但总的趋势在向统一的方向去发展。

个人理想中的web开发包括以下技术栈:
前端框架:
-	**angular2 with typescript**

后台服务:
-	**asp.net core with EF**

开发工具:
-	**visual studio with git (windows平台)**
-	**visual studio code with git (跨平台)**

以上都是综合了多种开发技术和思维而推出的适应未来发展的技术，要想掌握它们并不是一件容易的事！

当然，就目前来讲，这几个东西都还比较新，并不能完全胜任各种需求的开发，或者说还没有那么好的生态，没有经过很多项目的实际验证。但我相信这样的"简单"的组合，将会成为以后web开发重要的模式之一。

', CAST(N'2016-07-19 14:05:24.2744046' AS DateTime2), N'  Web的世界广阔无边，繁杂无边，我们可能使用各种语言通过各种方式去编写Web应用。近年来，Web相关的技术也在不断的发展，虽然遗留问题严重，但也渐渐有了更清晰的未来！', NULL, N'理想的Web开发技术栈', N'技术分享', CAST(N'2016-07-19 14:05:24.2744046' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 1, NULL, 91)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (6, NULL, N'NilTor', N'[TOCM]

### 前言
>    前几天写了一篇文章，畅想了一下以后Web开发的理想模式。借助asp.net core，angular2 , typescript等框架语言，以及VSC等编辑器来开发。以应对当前以及未来面对各种终端设备及云服务的软件服务方式，以及探索形成统一的技术栈，以便更好的协作！

### 必备工具
**Visual Studio Code**，以下简称VSC，是跨平台的编辑器。完全社区化更新发展。软件的更新提升速度非常快。我之前使用**过notepad++**、**editplus**、**sublime text**、**atom**等等编辑器，也许早几个月我还无法说VSC经这些强在哪。但现在说完全替代它们是一点问题都没有。

### 技术栈前瞻

#### 前端技术
-	**javascript**，这个还是基础，即使我们使用typescript，也不可能完全不了解javascript。而其他的框架及相关工具，javascript都是最基础的内容。
-	**angular2**，完整的前端框架，适用于各种终端的开发需求。
-	**typescript**，微软出品，让你可以像使用C#等面向对象的语言去写js程序，同时是angular2中的一等公民，使用框架去构建前端应用，不使用typescript简直可惜。
-	**gulp**，当前端不仅仅是html+css，而是各种js，实现各种页面交互，数据获取及展示，以及与服务端通信的时候，代码是需要优化和组织的。gulp即是前端的构建工具，作用就是组织代码。
-	**nodejs**，这个不多说，必装。提供基础服务！

当然，前端并不只有以上列出的这些，而仅是这些内容，也足够理解和实践一段时间的了。

#### 后端技术
-	**Asp.Net Core**，微软推出的Web应用开发框架，要理解其MVC模式。
-	**Entity Framework Core**，是asp.net中的ORM实现，主要提供数据库的服务，包括构建工具，了解其Code First模式。

虽然只列出两条，其实也只是一个概括，Web开发前后端加起来涉及到方方面面，我们要做好觉悟！

>**我们将会接触到一大堆工具名称，但前端的内容归根结底还是html+css+js，其他各种工具无非就是抽象，进行组织整合。我们需要弄明白的并非是每个工具背后的实现方式和原理，而是要先搞明白它是干什么的，是在什么样的需求下产生的，我们是否需要它。 **

当我们接触到一个陌生的东西的时候，先不要害怕退缩，只需要几个问题的引导，自然就能解决：
1. 它是用来干什么的？
2. 什么情况下需要用到它？
3. 它的本质是？

以上这个思考过程非常重要，在以后的学习过程中会发挥重大作用！', CAST(N'2016-07-21 13:14:58.0490209' AS DateTime2), N'    前几天写了一篇文章，畅想了一下以后Web开发的理想模式。借助asp.net core，angular2 , typescript等框架语言，以及VSC等编辑器来开发。以应对当前以及未来面对各种终端设备及云服务的软件服务方式，以及探索形成统一的技术栈，以便更好的协作！', NULL, N'Web开发实践1-asp.net & angular2 & typescript', N'ASP.NET Core', CAST(N'2016-07-21 13:14:58.0490209' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 1, NULL, 94)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (7, NULL, N'NilTor', N'[TOCM]

##前言
本篇正式进入实际操作环节，本篇内容，详细的文档都会给出具体的地址，方便读者直接去查看，并且，我们只以官方的文档为准，避免垃圾内容为我们带来的困扰。

>优先去官方查找文档，是最优先的选择！

## 准备工作
在正式开始之前，我们需要编写代码的工具，需要运行和编译程序的环境，我们首先将这些搞定。

### 开发工具
-	Visual Studio Code，跨平台编辑器，自带中文版本！
下载地址:[https://code.visualstudio.com/](https://code.visualstudio.com/)
**安装时记得勾选右键打开以及添加环境变量的选项，以方便日后使用!**
下载安装后，推荐安装几个插件:C#、vscode-icons、Angular2 typescript snippets

- Visual Studio 2015 with update3，如果你使用的是Windows，建议下载完整的VS，虽然体积较大，安装较慢，但值得安装。


### 开发环境
-	.Net Core环境。
下载地址:[https://www.microsoft.com/net/core#windows](https://www.microsoft.com/net/core#windows)
请到本页面选择适合你的平台去下载，我们选用VSC，只需要安装.Net Core SDK即可。

-	Nodejs。把它理解成.Net JVM类似的东西，提供javascript语言的运行环境，以及一些命令行工具。前端开发必要的东西。
下载地址:[https://nodejs.org/en/](https://nodejs.org/en/)
下载Lasted版本即可。

**OK，现在最核心的基础环境需要的东西就是这两样了!**

## 创建工程

### 创建Asp.net程序
参考文档:https://docs.asp.net/en/latest/getting-started.html
1. 打开VSCode，然后使用 ```Ctrl+` ``` 打开命令行，选择合适的目录后，创建一个新的项目目录，如:
```
mkdir WebExperiment
cd WebExperiment
```
2. 使用dotnet命令创建新项目.
这里我们要熟悉一下dotnet命令。
`dotnet new`
参考文档:[https://docs.microsoft.com/zh-tw/dotnet/articles/core/tools/dotnet-new](https://docs.microsoft.com/zh-tw/dotnet/articles/core/tools/dotnet-new)
根据文档可以看出,我们要创建的是一个Web程序，所以使用以下命令
```
dotnet new -t web
```
这个时候，你的目录下面就多了一堆文件和文件夹，编辑器会自动提示你需要还原包。
![](/uploads\2016-07-22\1469202214106blog1.png)

>提示:当你安装完vscode-icons插件后，需要使用命令打开它，这样不同文件的图标才会显示出来。首先使用`ctrl+shift+p` 调用控制窗，输入icons,选择icons enable.

![](/uploads\2016-07-22\1469202214106blog2.png)

**这里需要理解还原包的概念。首先要清楚现在都在模块化，按需加载，你用到什么，就下载什么功能的包，这里还原包的内容都定义在project.json文件中，是asp.net core开发所需要的包！**

3. 了解Asp.Net 项目工程
新创建的项目目录是很简单的。我们可以清楚的看到MVC模式对应的文件夹，这非常容易理解。
**Data**目录是EF code first方式用来同步和更新数据库表结构的。
**wwwroot**目录是用来存放前端所使用的静态文件的。这里养生要说明三个文件：
-	**project.json**，该文件主要是管理Asp.Net相关的包。
-	**Startup.cs**，Asp.net的"入口文件"，以程序的方式去引入以及配置相关内容。

-	**package.json**，该文件主要是用来管理前端所使用的包。
-	**gulpfile.js**，该文件主要是用来记录前端构建操作。比如清除、编译、移动相关文件等。

>如此看来，默认的Asp.net core Web程序，已经有了明确的工程目录，并对前后端都有较好的支持，在这样的架构下，我们关注业务实现即可。

### 引入angular2
Angular2非常的良心，目前已经有了完整的中文文档支持！
我们参考其快速起步中的内容来了解如何在Asp.net项目中引用Angular2。
参考文档:[https://angular.cn/docs/ts/latest/quickstart.html](https://angular.cn/docs/ts/latest/quickstart.html)

1. **包配置文件package.json**
上面说到了前端的包管理主要是package.json文件在起作用，官方给的内容为，我们将与原内容进行合并.整合后的内容为
```json
	{
		"name": "asp.net with angular2",
		"version": "1.0.0",
		"private": true,
		"dependencies": {
			"@angular/common": "2.0.0-rc4",
			"@angular/compiler": "2.0.0-rc.4",
			"@angular/core": "2.0.0-rc.4",
			"@angular/forms": "0.2.0",
			"@angular/http": "2.0.0-rc.4",
			"@angular/platform-browser": "2.0.0-rc.4",
			"@angular/platform-browser-dynamic": "2.0.0-rc.4",
			"@angular/router": "3.0.0-beta.1",
			"@angular/router-deprecated": "2.0.0-rc.2",
			"@angular/upgrade": "2.0.0-rc.4",
			"systemjs": "0.19.27",
			"core-js": "^2.4.0",
			"reflect-metadata": "^0.1.3",
			"rxjs": "5.0.0-beta.10",
			"zone.js": "^0.6.12",
			"angular2-in-memory-web-api": "0.0.14",
			"bootstrap": "^3.3.6"
		},
		"devDependencies": {
			"gulp": "3.8.11",
			"gulp-concat": "2.5.2",
			"gulp-clean-css": "2.0.11",
			"gulp-uglify": "1.2.0",
			"rimraf": "2.2.8",
			"concurrently": "2.2.0",
			"lite-server": "2.2.2",
			"typescript": "1.8.10",
			"typings": "1.3.2"
		},
		"scripts": {
			"start": "tsc &amp;amp;&amp;amp; concurrently \"npm run tsc:w\" \"npm run lite\" ",
			"lite": "lite-server",
			"postinstall": "typings install",
			"tsc": "tsc",
			"tsc:w": "tsc -w",
			"typings": "typings"
		}
	}
```
稍微说明一下:
	-	dependencies，依赖的包。
	-	devDependencies，开发区时需要的包，主要是一些构建和编译相关的工具。只需要在开发时候未到使用。
	-	scripts，自定义命令，方便我们在控制台中调用。
	
2. **TypeScript配置文件**
我们使用ts进行开发，首先要理解ts的作用，之前有说过。将js用另一种语言形式进行编写，但实际运行的还是js，所以最终还是要将ts文件编译(转化)成js文件，但js现在有多种标准，所以也需要明确转化的格式。
关于配置内容可参考文档:
[https://www.typescriptlang.org/docs/handbook/tsconfig-json.html](https://www.typescriptlang.org/docs/handbook/tsconfig-json.html)
`tsconfig.json`，TS的配置文件
```json
	{
	  "compilerOptions": {
		"target": "es5",
		"module": "commonjs",
		"moduleResolution": "node",
		"sourceMap": true,
		"emitDecoratorMetadata": true,
		"experimentalDecorators": true,
		"removeComments": false,
		"noImplicitAny": false
	  }
	}
```
`typings.json`文件，TS的类型定义文件。
```json
	{
		"globalDependencies": {
			"core-js": "registry:dt/core-js#0.0.0+20160602141332",
			"jasmine": "registry:dt/jasmine#2.2.0+20160621224255",
			"node": "registry:dt/node#6.0.0+20160621231320"
		}
	}
```
3. **Systemjs.config.js** 配置文件。
当前通常项目都至少有两个文件，一个是包管理，一个是项目配置，这个文件相当于前端的配置文件，
主要作用有定义一些变量，用来指向相关的目录、包等，类比于后端的**Startup.cs**文件。
```js
	/**
	 * System configuration for Angular 2 samples
	 * Adjust as necessary for your application needs.
	 */
	(function (global) {

		// map tells the System loader where to look for things
		var map = {
			''app'': ''app'', // ''dist'',

			''@angular'': ''node_modules/@angular'',
			''angular2-in-memory-web-api'': ''node_modules/angular2-in-memory-web-api'',
			''rxjs'': ''node_modules/rxjs''
		};

		// packages tells the System loader how to load when no filename and/or no extension
		var packages = {
			''app'': { main: ''main.js'', defaultExtension: ''js'' },
			''rxjs'': { defaultExtension: ''js'' },
			''angular2-in-memory-web-api'': { main: ''index.js'', defaultExtension: ''js'' },
		};

		var ngPackageNames = [
			''common'',
			''compiler'',
			''core'',
			''forms'',
			''http'',
			''platform-browser'',
			''platform-browser-dynamic'',
			''router'',
			''router-deprecated'',
			''upgrade'',
		];

		// Individual files (~300 requests):
		function packIndex(pkgName) {
			packages[''@angular/'' + pkgName] = { main: ''index.js'', defaultExtension: ''js'' };
		}

		// Bundled (~40 requests):
		function packUmd(pkgName) {
			packages[''@angular/'' + pkgName] = { main: ''/bundles/'' + pkgName + ''.umd.js'', defaultExtension: ''js'' };
		}

		// Most environments should use UMD; some (Karma) need the individual index files
		var setPackageConfig = System.packageWithIndex ? packIndex : packUmd;

		// Add package entries for angular packages
		ngPackageNames.forEach(setPackageConfig);

		var config = {
			map: map,
			packages: packages
		};

		System.config(config);

	})(this);
```
**TypeScript并非Angular2必需的，尽管文档中使用它作为首要语言，当然还是推荐使用它。**

4. **还原包**
我们在package.json中定义了相关的包，我们需要获取到这些包。这里需要注意的是，
在该文件中，我将gulp-cssmin包换成了gulp-clean-css，因为前者有时候在构建时会有问题。
在VSC中，使用 ``` Ctrl+` ```调出控制台，执行以下命令:
```
npm install
npm run typings install
```
同时推荐使用cnpm去还原包，不然会非常慢！
此时，我们的项目目录中又多了两个文件夹, `node_modules`与`typings`。

OK，到此为止，我们需要的东西就已经完成了。不过距离真正能够整合运行还有一段距离，我们只是把我们需要的内容给准备好了。接下来，我们要实际测试一下。在下一篇中，我们将使用实际的例子来使用这一套东西。

---
', CAST(N'2016-07-21 13:49:14.7054703' AS DateTime2), N'    这是一套完整的解决方案，我们需要做很多准备工作，本篇文章内容就是介绍要使用的工具以及整体的项目工程.', NULL, N'Web开发实践2-项目工程说明', N'ASP.NET Core', CAST(N'2016-07-22 23:44:03.0426744' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 1, NULL, 126)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (8, NULL, N'NilTor', N'[TOCM]
### 前言
>    本篇分享一些团队开发中的经验，主要介绍服务端相关的内容。作为一个独立开发者，我们通常只关注自己的设备即可，最多再使用一些在线的代码管理工具等，通常都能够满足需求。但是，涉及到团队协作或稍大一些的项目工程，以及同其他类型的人或部门协作，那么关注点不再仅仅是代码方面，也就需要更多的工具来管理。

我们的目标是为中小型团队找寻一套解决方案，而这个方案就是使用**TFS(Team foundation Server)**。它有以下主要功能：
1. 版本控制，提供两种方式,Team Foundation 版本控制 (TFVC)，集中式的，类似SVN。另一种是Git。
2. 面向敏捷团队的工具。即团队协作工具。
3. 持续生成与部署。意思是，我们只需要关注源代码。从源代码到生产环境的生成的部署，可在平台上借助工具自动完成。
4. 与多种IDE结合，即提供一些主流的IDE的插件支持。
5. 集成与扩展，意思是可在这套解决方案的基础上，自己进行扩展开发。

本篇分享的是在Windows系统上，如何利用微软提供的解决方案和相关技术去构建一套完整的适用于个人及中小团队的协作平台。

### 服务器
我们需要一台服务器来满足我们的需要。云计算服务商的发展，给许多开发者带来的极大的帮助，让我们普通的开发者也可以轻松的获取一台服务器进行使用。
这里我使用阿里云作为例子为演示。
大家注册阿里云的时候，可以使用推荐码:**1yez8j **，获得更多优惠。

>阿里云对新用户有很好的优惠政策。如果你真的一分钱都不愿意花，那么可以使用windows的Hyper-V虚拟机，用来学习和体验本篇内容。

#### 服务器的选择
1. 地域，选离自己近的即可。
2. 配置，1核2GB 1MB带宽的即可满足。
3. 系统，Windows Server，2012 R2 数据中心64位中文版。
4. 云盘，多加一块60G的云盘，方便之后使用！
说明:
-	这个配置可以满足很多需求了，你可以搭建几个个人站，建立其他相关的服务。如果用户较多需要商用的话，那么需要升级配置。1核2GB 1MB带宽是最经济最实用的配置。

-	关于镜像，选择公共镜像中的windows server，这里有几个重点:一定是2012 R2，不是R2不要选，因为有些软件需要R2的支持,一定是64位的，32位的都是被淘汰的东西，以后32的都忽略即可。

-	云盘你可以之后再购买，购买之后需要挂载，然后要到服务器管理器中，文件和存储设备中，将云盘添加成新卷！

根据自己的情况选择购买的时间即可。在确认订单的时候，可以选择**使用推荐码**，输入**1yez8j**。仅第一次购买有效。

#### 服务器环境配置
我们购买后，会在管理后台ECS中看到实例正在启动，启动完成后会显示运行中。

1. **连接服务器**。在本地机器上，打开开始菜单，输入**mstsc**，打开远程桌面连接程序，输入IP地址，IP地址为公网地址，然后输入你购买时的用户名和密码。用户名默认固定为:**Administrator**。

2. **服务器配置**。
-	**开始菜单设置**。2012 使用的是win8形式的，是没有开始菜单的，也没法设置，很蛋疼。2012 R2有了开始菜单，可以设置成传统形式。首先我们右击任务栏->属性，然后设置一下:
![](/uploads\2016-07-25\1469425284539bl3.png)
可以根据自己的喜好进行设置。
-	**安装IIS**。我们初次连接的时候，会默认打开服务器管理器。我们在本地服务器中选择添加角色功能，我们首先配置一下IIS。服务器角色列表中，选择**Web服务器(IIS)**，关于具体的安装步骤，这里给一个参考地址:
[http://jingyan.baidu.com/article/b24f6c82c504d686bfe5da3d.html](http://jingyan.baidu.com/article/b24f6c82c504d686bfe5da3d.html)
安装完成后，在开始菜单就能找到IIS管理器，可以添加到桌面或任务栏，方便以后使用。
-	**安装Web平台组件**，先下载Web平台安装工具，这个工具就是用来搜索、下载、安装各种工具的，方便管理。初次打开IIS的时候，会提示你下载。默认的浏览器安全设置比较高，记得添加成信任站点，建议先下载个其他浏览器去替代IE。
`强烈建议下载其他的浏览器以及迅雷极速版，以方便之后的软件的下载与安装.`
-	**安装Sql Server**，数据库也是基本需求之一。我们到非常有名的itellyou.cn去下载微软的工具。
我们找到**SQL Server 2014 Express with Tools with Service Pack 1 (x64) **,这个自带了连接工具，我们选用Express版本的即可，还记得我说过的，非64位的都不需要考虑。
下载后安装，具体过程不再一一列举，不太清楚的朋友记得使用搜索引擎！
-	**安装VS Code文本编辑器**，这个倒不是什么必需的环境，但我们多少需要一个编译器查看和修改一些内容，这里就推荐使用VSC。

OK，以下我们只是把最基础的软件安装了，然后我们需要根据我们的需求来有目的安装特定的内容了。这个我们下个篇介绍！





', CAST(N'2016-07-25 13:36:40.4777300' AS DateTime2), N'    本篇分享一些团队开发中的经验，主要介绍服务端相关的内容。作为一个独立开发者，我们通常只关注自己的设备即可，最多再使用一些在线的代码管理工具等，通常都能够满足需求。但是，涉及到团队协作或稍大一些的项目工程，以及同其他类型的人或部门协作，那么关注点不再仅仅是代码方面，也就需要更多的工具来管理。本专题主要说明如何借助微软的TFS来满足我们的需求！', NULL, N'团队开发实践1-使用TFS', N'团队协作管理', CAST(N'2016-09-16 21:24:09.6405307' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 1, NULL, 95)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (10, NULL, N'NilTor', N'[TOCM]

### 了解EF
EF全称Entity Framework，它已经经历了较长一段时间的发展，以下的内容仅指EF Core，适应Asp.Net Core的版本。
关于EF的具体概念和定义，可参考官方文档：
[https://docs.efproject.net/en/latest/](https://docs.efproject.net/en/latest/ "https://docs.efproject.net/en/latest/")

用我个人的话概括来讲，就是帮助你来操作数据库的。它本身是一个将关系型数据库进行对象关系映射的，提供了一系列的工具，非常完善。

### 什么是Code First
EF 有三种模式：
-	**Database First**。这个非常容易理解，我想很多使用php+mysql的开发者，通常都是自己去设计和创建数据库表结构，然后根据数据库表结构进行程序的开发。这种先根据业务逻辑等，使用数据库管理软件去完成数据库结构的创建和维护，然后根据数据库结构完成程序的方式就是Database First。

-	**Model First**。这种方式，主要是借助微软VS提供的可视化工具，通过图形的方式去设计出表结构和表之间的关系，然后工具会自动生成数据库创建所需要的代码，以及程序所需要的对象类。当然，对于已经存在的数据库，也可以通过连接数据库，将数据库结构图形化，再利用工具生成程序所需要的对象类。

-	**Code First**。个人觉得Code First是非常有意思的方式。它可以让你只关注代码，而不关注数据库。你不需要去关注和理解数据库结构，谁有谁的字段，谁和谁之间的关系。你只需要以面向对象的思想，去考虑对象之间的关系即可。在开发程序的过程中，你只需要使用代码去完成对象类的定义，以及相关关系的说明，利用微软提供的工具，你就可以完成数据库结构的创建，修改数据库表结构，也只需要在修改对象之间的关系即可。这样，你的数据库表结构是你源代码的一部分。这样对于部署或者移植来讲都非常方便。你再也不用分别去管理程序和数据库表结构了。

当然，有人会说，对于PHP，我也可以把表结构写成.sql文件，在程序初始时进行创建。OK，这没毛病。但相信我，功能实现有很多方式，但怎样便捷的去实现和维护，才是重点。就好像很多phper谈到laravel的优雅一样，给开发者带来良好的编程体验也是我们需要关注的地方。



### 实践
#### 创建工程
我们需要先创建一个asp.net工程，关于如何创建工程以及使用什么工具，请参考之前的博文：
[Web开发实践2-项目工程说明](http://www.geeker.tech/Blogs/Details/7 "Web开发实践2-项目工程说明")
当然，如果你使用windows系统的话，还是建议使用VS社区版.

以下内容，以VSC为例子进行说明，照顾各平台开发者！

##### 数据库连接
在 `Startup.cs` 文件中，找到
``` csharp
      public void ConfigureServices(IServiceCollection services)
        {
            // Add framework services.
            services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlite(Configuration.GetConnectionString("DefaultConnection")));
			......
		}

```
需要注意的是`UseSqlite`方法 以及里面的 `DefaultConnection`参数，
`DefaultConnection`是记录数据库连接字符串的，在根目录中的`appsettings.json`中保存。而UseSqlite是数据库的类型，默认是使用.db文件的方式进行保存。
这里需要说明的是，目前EF Core暂时还不支持mysql等数据库。而在`project.json`文件中，是要根据你需要的数据库类型导入对应的包的。

##### 创建对象关系
这里我们用一个实例来说明：
对于一个简单的博客系统来讲，我们暂且简单的有两个对象：

|对象   |命名  |
| ------------ | ------------ |
|  用户 |User   |
|   博文|   Blog |

关系：一个用户可以发布很多篇博文。

这里我们需要特别关注两个文件夹：`Data`与`Models`。
我们在`Models`创建文件 `Blog.cs`，内容如下:
``` csharp
namespace WebApplication.Models
{
    public class Blog
    {
        public int BlogId { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
		public ApplicationUser User { get; set; }
    }
}

```
为简单说明，只创建三个字段。
**注意：**
>在Models文件夹下有一个ApplicationUser.cs，这是因为使用dotnet new 创建的项目默认使用了Asp.Net Identity，这是提供用户角色验证登录等相关的功能，不在我们本篇的讨论范围中。

接着，我们需要创建用户对象，由于工程本身使用了Identity,所以，我们直接修改Models下ApplicationUser.cs，修改后的代码如下：
``` csharp
using System.Collections.Generic;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace WebApplication.Models
{
    public class ApplicationUser : IdentityUser
    {
        public List<Blog> Blogs { get; set; }
    }
}

```

因为继承了IdentityUser,而IdentityUser中已经包含了用户所需的基本字段，所以，我们就不需要再定义了。

可以看到，我们在一个简单类的定义中，就把两个对象之间一对多的关系表现出来了。

##### 生成数据库表结构
我们用代码定义对象类，接着我们就可以使用工具让它自动生成数据库表结构。
首先，我们看到`Data`目录下，有个默认的Migrations文件夹，把它删除掉，因为目前这个版本有问题，我们不需要它。只留下`ApplictionDbContext.cs`即可。
然后我们在VSC中打开命令行，输入以下内容:
```shell
dotnet ef migrations add gt01
```
这时候在项目目录下，就会多出一个Migrations文件夹，里面就是自动生成的创建数据库结构的代码。

然后我们继续执行:
```
dotnet ef database update
```
OK，这样就把数据库表结构创建完了。
由于使用的是sqlite，以文件的形式保存的，它生成的内容在`bin\Debug`目录下，你可以找得到。我们可以使用sqlite developer这个软件去打开它。如下图：
![数据库表结构](/uploads\2016-08-20\1471677170361bg1.png "数据库表结构")

### 总结
回顾一下我们都做了哪些事情？
-	写了一个Blog.cs,
-	修改一个ApplicationUser.cs
-	在命令行中使用了两个命令

这样我们无需关注数据库，也并不需要自己写额外的代码（因为对象类是肯定要写的），这样就能创建表结构。如果你想为Blog添加一个字段，那么就在Blog.cs中添加一个属性，然后再执行一下那两个命令即可。

EF让你真正的使用代码去创建和维护数据库，并使用对象的概念去操作，而不用去以关系型数据表关系为出发点去思考和操作。你操作的只是对象，理解的只是对象的关系即可，这就是EF为我们所做的工作！

#### 更多
当然，今天只是介绍Code First这种方式，例子也比较简单，在实际的项目中，我们的表关系会比这个要复杂的多。想要了解更全面的信息，可以参考官方文档：
[https://docs.efproject.net/en/latest/modeling/index.html](https://docs.efproject.net/en/latest/modeling/index.html "https://docs.efproject.net/en/latest/modeling/index.html")

如果有什么问题，可以加入QQ群讨论，或者到提问区提问！

', CAST(N'2016-08-19 17:18:50.9616418' AS DateTime2), N'  开发asp.net应用，使用enity framework是非常自然的事情。本篇是介绍EF系列的第一篇，主要分享一个不同于其他语言形式的内容。使用EF Code First方式去创建、管理数据库！
', NULL, N'EF-1使用Code First', N' Asp.Net Core教程', CAST(N'2016-08-22 21:45:02.2085938' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 2, NULL, 105)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (11, NULL, N'NilTor', N'[TOCM]
### 回顾与前言
[EF-1使用Code First](http://geeker.tech/Blogs/Details/10 "EF-1使用Code First")
>上一篇博客简单说明了一下使用EF的Code First进行数据库的操作。配合Asp.Net MVC，模型Models中可以定义字段，表关系，甚至还有字段验证的内容，非常简单却非常强大。接下来，我们来进行实际的数据库操作，本篇主要讲一下数据插入！

本篇内容要求你对Asp.Net MVC有一定的了解。
首先，我们要有一个自定义的DbContext类，继承DbContext，然后定义我们需要操作的DbSet对象，这样我们就很方便的调用了。代码示例：
```csharp
public class ApplicationDbContext : IdentityDbContext<ApplicationUser> {
		public ApplicationDbContext() { }

		public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
			: base(options)
		{
		}
		protected override void OnModelCreating(ModelBuilder builder)
		{
			base.OnModelCreating(builder);
		}
		public DbSet<ApplicationUser> ApplictionUser { get; set; }
		public DbSet<Blogs> Blogs { get; set; }
	}
```

### 数据的插入操作
你也可以阅读官方英文文档：
https://docs.efproject.net/en/latest/saving/index.html

**请注意，使用EF对象映射，你的操作只需要考虑如何操作对象，而不是从数据库表结构思考怎么插入表里，这是EF去实现的，这一点非常重要！**

#### 单对象插入
举例，添加新博文，将新的博文对象保存到数据库。步骤如下:
1.	获取原始博文数据
2.	创建博文对象类
3.	使用EF添加对象并提交到数据库。

先说第一步，获取原始博文数据，通常是用户界面填写提交给后台的，关于如何获取博文数据，属于MVC中Controller的内容，在此不多说。我们这里直接自己预设博文的值。
```csharp
		private readonly ApplicationDbContext _context;
		public HomeController(ApplicationDbContext context)
		{
			_context = context;
		}

		public IActionResult Test()
		{
			//2.创建用户对象，这里省略了获取原始数据。
			var blog = new Blogs
			{
				Title="博文标题",
				Content="博文内容"
			};
			//3.添加对象并提交
			_context.Blogs.Add(blog);
			_context.SaveChanges();//不调用则不会提交到数据库
			return View();
		}
```

首先解释一下，我们要定义_context，这也是前面提到的，使用DbContext，定义DbSet，这样就可以直接去操作对象类。

我们可以看到，其实添加数据非常简单，当我们构建好博文对象之后，只需要调用Add与SaveChanges两个方法就可以了。

##### 批量添加
批量添加，我们需要创建一个对象数组，然后使用
```csharp
	_context.Blogs.AddRange(blogs);
	_context.BLogs.SaveChanges();

```

#### 关联插入
我们可以很容易的插入博客内容。但如果我们想把作者信息也写进去。我们知道作者就是用户，我们需要在用户登录后，写博文的时候，把用户信息也一块插入进去。当然实际的数据库表也不过是一个用户ID。
我们首先回头确认一下Blog对象类的内容。
```csharp
	public class Blog
	{
	  public int BlogId { get; set; }
	  public string Title { get; set; }
	  public string Content { get; set; }
	  public ApplicationUser User { get; set; }
	}
```
`public ApplicationUser User { get; set; }`,这是定义了一个用户对象属性。
所以，当我们插入的博文的时候，只需要提供一个用户对象即可：
```csharp
	//2.创建用户对象，这里省略了获取原始数据。
	var blog = new Blogs
	{
		Title = "博文标题",
		Content = "博文内容",
		User = getCurrentUser();
	};
	//3.添加对象并提交
	_context.Blogs.Add(blog);
	_context.SaveChanges();//不调用则不会提交到数据库
	return View();
```
可以看到，和上面的比起来，只多了1行。当然这只是一个示例，getCurrentUser方法是获取当前登录的用户对象，在实际项目中，我们可以自定义获取当前登录用户对象的方法。


### 总结
事实上，插入在数据库的操作中不算是复杂的部分，而使用EF插入数据无非是两点：
1. 创建对象，这对象的数据随你怎么来的。
2. 调用Add方法。

当然最后要SaveChanges()来提交操作。

通过插入的简单示例，最想告诉大家的是，EF提供我们操作对象即操作数据库的能力，你压根不需要考虑数据库表中还有某个字段是专门用来关联用的。

最后再重复一遍：
**我们操作对象，操作数据库的事情是EF做的。**
', CAST(N'2016-08-19 22:53:43.1769099' AS DateTime2), N'之前简单说明了一下使用EF的Code First进行数据库的操作。配合Asp.Net MVC，模型Models中可以定义字段，表关系，甚至还有字段验证的内容，非常简单却非常强大。接下来，我们来进行实际的数据库操作，本篇主要讲一下数据插入！', NULL, N'EF-2数据的插入', N' Asp.Net Core教程', CAST(N'2016-08-22 21:44:47.5679141' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 2, NULL, 93)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (12, NULL, N'NilTor', N'### 说明
欢迎注册成为极客博客的独立作者，我们希望更多的极客可以自由分享，展现自我。本网站的目标是提供给极客一个自由发表个人独立观点，学习思考总结技术文章的平台，互相交流，共同进步！

#### 功能模块
网站主要包括以下内容：
1. **技术性文章**
极客们分享自己的技术性文章，主要是编程开发方面的。包含但不限于：
	-	软硬件开发技术
	-	软硬件测试技术
	-	技术团队协作管理知识
	-	维护管理等
**分类可联系站长进行添加!**

2. **专题文章**
提供给对某一方面技术有系统学习的极客，编写成系列专题文章，方便其他读者可以根据专题文章集中快速的了解和学习某一方面的内容。
**专题分类可联系站长进行添加**

3. **独立视角**
对IT或社会事件进行独立点评，发表自己的观点及看法。

4. **问答**
主要是提供一个简单的问答系统，方便大家针对博文内容或者自己的问题进行提问，方便大家进一步的沟通和交流。
**目前该模块功能仍在添加**

#### 注册

- 通过网站前台可以自由注册成为网站的注册会员。
- 新注册会员并不能编写和发表博文内容。
- 有意向成为独立作者的朋友可以通过网站的QQ群链接或邮件地址联系站长，站长会将用户升级为独立作者！然后登录后即可查看自己的博文及撰写新博文！


对本网站有什么建议或加入网站系统开发的可入群或通过邮件联系站长！





', CAST(N'2016-09-04 15:58:44.2263179' AS DateTime2), N'  说明网站的主要内容，网站的目的，以及注册成为独立作者相关的事项！
', NULL, N'注册成为独立作者', N'站内新闻', CAST(N'2016-09-04 15:58:44.2263179' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 5, NULL, 68)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (13, NULL, N'NilTor', N'### 前言
阿里开除员工的事件已经有几天了，看热闹的很多。在我看来，实际上还是开发者群体与其他群体之间关系的体现。通常此类事情都是程序员以自嘲形式，大家当个笑话一乐而过。只是这次事件的涉事人和程度，引起了广泛的关注。

### 结论
1  事件的直接受害者是被辞退的人员。阿里"抹黑"了相关人员！
2  阿里最岂码在开发者群体，口碑受到了影响，至少是以所谓"价值观"扣帽子的部门，让人刮目相看！
3  此事件再次说明，开发者群体不被尊重的事实。

### 疑问与反思
1. 任何一个公司招人，hr负主要责任，如果阿里通过这次事件判断的结论成立，也就是这几个人诚信有问题，那么显然，hr招了不诚信的人进来，恰巧这次事件显露出来，那么有理由相信，还有更多的不诚信的人还没有显露出来。问题来了，那么依照阿里这么极速果决的态度，是否需要全面彻查一下整个部门呢，以保证公平，保证不诚信的人都滚出公司？那么hr招到大量不诚信的人是否需要负责任呢？

2. 如果当事人的行为最后被定义为不诚信。那么百毒又该怎么算？那些使用抢红包抢票工具的人，那些玩游戏使用辅助工具的人怎么算？显然，在阿里处理本次事件人的眼里，社会大部分人都是不诚信的，只有他们是诚信的，坚守诚信的，可笑至极！

3. 程序员、开发者是新时代的民工，这点在天朝是事实。国内也鲜有工程师文化的公司。通过当事人讲的内容，我们可以看出明显的自嘲语气！是时候该自我反思了，光自嘲是没有用的。该发声的时候要发声，该团结的时候要团结，大环境不好，不能就自己不作为了，要自己去争取，才能逐渐改变别人的看法！

### 人个观点
-  "涉事"员工并没有违返任何法律、内部纪律等等，从事件发生到现在，我们能看到的原因仅仅是因为所谓价值观问题。理由也无非是什么对内部造成不公平，影响了分配，理由完全经不起推敲，让人听了可笑。

-  阿里开除员工，内部事。它怎么处理其实外人评价无所谓的。引起争议的点在哪呢？你内部有些部门强势有些弱势，其实对于开发者来讲，心照不宣。本来作为开发者，基本就是没什么地位的。各种理由维护其他部门人员的心情我个人也非常理解。但是，这里面有一个问题，那就是你开除就开除，还要给人家扣个帽子，价值观不符，人品等等。说到底，欲加之罪，何患无词。

-  阿里这个事件充分说明了，不管大公司小公司，程序员都基本是弱势群体。如果价值观有问题，招人的是谁？最后还是打自己的脸。人品不行，你招进来干什么？
而且开除员工何以如此极速和果决！显然是恼羞成怒，心中也早有芥蒂。

-  不是非常了解事件原委，但就事件本身来讲。可以肯定的是，促成开除这几名员工的人人品一定是有问题的。那么就容易开除员工，当初为什么招进来。从内容我们可以看出来，工作交接什么的都不重要，重要的是快点滚。口口声声讲服务，对待自己的员工都尚且如此，看不到一点点的尊重，这样的部门呆着又有什么意思？


### 其他想说
公道自在人心。作为开发者，至少能代表部门开发者，表达明确的态度，这样的部门或公司，开发者们以后还是少接触为妙！

至于网上的无脑喷子，也是不了解实情就喜欢随意给别人扣帽子的人，多一个少一个也无所谓！

离开阿里，一样可以在别的公司发光发热。
但阿里不仅失去了一部分开发者的依赖。本身事件也是阿里内部员工"爆"出来的，说明也对这种事件感到懵逼，即便如此，我们也可以看到当事人，说话的内容也是程序员自嘲式的。听闻还要继续处理发截图的人。

唉，没错，这就是阿里的价值观，真好！
在BAT中，我个人一直很看好阿里。但到目前为止，就内部来讲，仿佛外界口碑不怎么好的腾讯，至少对于开发者来讲，还是很不错的。

### 告诫
除了表达不平，同时也希望开发者们要自省。不能因为这个社会的看法就不作为。要想改变别人对自己的看法，单纯的只做技术是没有希望的。该发声的时候要发声，该团结的时候要团结，继续提升自己的硬实力！', CAST(N'2016-09-15 20:46:18.3709120' AS DateTime2), N'作为一位开发者，对于阿里中秋节前极速开除开发者的事情说说个人的看法。包括用人单位以及作为当事人群体的反思与总结', NULL, N'阿里极速开除员工思考', N'热点点评', CAST(N'2016-09-16 12:28:51.0100999' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 4, NULL, 174)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (14, NULL, N'NilTor', N'### 前言
>在软件开发过程中，开发测试是最后的事件。在开发之前，有很多事件需要做，而这些事件至关重要，它决定了最终开发出来的是什么东西！而开发和测试不过是“施工队”而已。

何时起，产品这个职位变的那么重要？因为大家都喜欢找原因，别人为什么成功。所以，用了一些例子来说明，原来有一个好的产品经理，是可以左右最终的结果的。这点我没有异议！所以，今天我就谈谈我对产品的看法!

### 软件工程
先从软件工程说起！
但凡计算机相关专业的学生，大概都有学习过这门课程。事实上，有的时候并不是书本上的知识脱离了实际，而是事件没有去照科学的内容去实践！
软件工程的定义有许多版本，例如：
>软件工程是研究和应用如何以系统性的、规范化的、可定量的过程化方法去开发和维护软件，以及如何把经过时间考验而证明正确的管理技术和当前能够得到的最好的技术方法结合起来。

我个人的总结是：
**将现实需求转变为软件过程中，以科学的思想和方法寻求最优方式的方法论**。

对于如何开发产品，从需求到最后的维护，软件工程都已经说明的很明白了。但实际上，又有多少公司去实践和遵循它？可想而知，从业人员的素质是有多么的糟糕。

产品不是了解某个行业的特点，会做需求图就可以的，基础的素质是要有科学思维，工程化思维，而现代的贴近用户的需求，更要产品能实际的把控产品的需求！

软件需求包括 3 个不同的层次――业务需求、用户需求和功能需求。需求是产品首先要搞清楚的。

### 需求的验证与确认
**需求不仅会对最终产品造成影响，同时也对开发过程造成全面的影响**。所以如果一个公司，仅从一个想法出法，就快速的进入开发，最终成品基本都是垃圾。那些经过需求调研、验证和确认的专业团队，最后也未必能保证说产品的成功。

所以，重点不在开发过程，而在于确认需求的阶段，头没开好，后面的都是瞎搞。

结合现实情况，我觉得以下流程是可行的：
1. 产品根据调研或经验提出初步需求。
2. 产品提出初步需求后，寻求领导的建议和确认，进行改动。
3. 产品整理初步需求文档，然后进行评审，由公司领导、设计、技术负责人等。
4. 根据评审结果和建议，进一步修改和确认需求。直到评审通过。
5. 评审通过后，召集产品的设计和开发人员，进行说明和讲解，其他人员提出修改建议。
6. 根据建议，完成产品的各种流程图，效果图等等的制作。完成最终的产品设计文档。
7. 转入开发阶段。

**需要注意的：**
- 产品的验证是贯穿整个过程的。调研和竞品分析是必不可少的，第一个需求确认都要能讲出道理，是科学方法之下的优先。
- 只保留确认的需求，有异议的不可进入开发阶段。
- 宁少勿多。多了复杂繁乱，问题多，开发周期长，难把控。迭代敏捷开发，多次少量，反而效率高。

### 最后。
好的产品难找。我们不奢求产品都能懂开发技术，但至少要学习和了解软件工程相关的知识，而不只是学几个做图软件，靠自己的想像力去"设计"产品。产品这个职位确实很重要，将会影响到其他所有方面。

**如果没有找到合适的产品**，不如直接让有经验的开发人员去做。岂码有几年经验的开发人员，基本都是具有科学、工程化思想，了解需求调研、竞品分析这些概念的，最终确认的需求是有一定的保障的，还能结合技术实现，对开发过程有好的结果。

毕竟，需求是什么？就是解决问题！产品不是给其他人制造问题的，也不是制造需求的，而是去解决问题的。很多时候，思想转变是最重要的。
', CAST(N'2016-09-16 01:18:18.0466176' AS DateTime2), N'在软件开发过程中，开发测试是最后的事件。在开发之前，有很多事件需要做，而这些事件至关重要，它决定了最终开发出来的是什么东西！而开发和测试不过是“施工队”而已。', NULL, N'团队开发-产品需求的确认流程', N'团队协作管理', CAST(N'2016-09-16 13:46:29.8760541' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 2, NULL, 79)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (15, NULL, N'NilTor', N'[TOCM]

## 前言
>    当今我们讲述的道理，都是几千年前就已经存在流传至今的。那为什么现在的人还是需要一遍又一遍的讲呢？光讲是没用的，做到很难。在很多公司的开发团队中，总是拿"小"当借口。如果小团队都做不到科学规范，做不到基本要求，那么何谈大呢？

当然，在天朝，一个公司是否能够存活和管理水平与科学规范并没有太大的关系，完全在于是否能抱上大腿，接到大单，而是否能接到大单在靠人际关系，技术什么的根本不重要，因为都可以外包出去。所以，天朝难产真正的互联网公司，目前来看，腾讯是走在前列的，虽然给人的印象，腾讯主要是抄袭游戏赚钱，但显然背后没有这么简单。
闲话不多说，以下直接表明观点。

## 开发前的基本要求
#### 需求必须调研分析产生，每个决策都要有理可循。
需求是源头，源头不对，之后的都是白费工夫。需求不能是某人的凭空想象，必须要有调研，有理可循。否则是坑害了所有人。互联网不缺产品经理 ，但缺好的产品经理。多少产品没上线，或上线没多久死掉的。一个好的产品背后是一个个科学的决策，这才是胜负所在。

#### 产品需求必须经过评审
评审有几个重点，一是领导必须参与。很多公司所谓的产品就搞定了，老板不参与不拍板，那是不负责任。评审是联合主要决策和参与人员对产品需求进行分析，产品的好坏关系到全公司，每个人都是有责任的。这不是产品一个人的负责。试想，一个公司的领导都不关心最终的产品是什么样的，是否符合公司的目标和规划，那更不会关心其他各个环节的人了。

#### 必须要有产品文档
产品文档是什么？没有特定的规范。但至少要说明：
1. 要做什么
2. 为什么这么做
3. 业务流程说明
4. 相关设计

现在很多产品就是画画图写写说明，其实这些根本不是重点。做图有设计，界面交互有设计。逻辑、文档、业务流程什么的有点工作经验的程序员都可以完成，所以这并不是一个产品差别与其他岗位的主要内容。
产品最重要的是传递价值和目标，对于需求要明确什么是必需做到的，达到什么样的效果，什么是不能做的。
并且要确保每个参与的人员都要明确的知道这些内容。保证团结的一致性，在想法和行动上，这样才不会偏离产品本身。而界面设计交互以及技术实现方式这些，真的不需要再多招一个产品去做，由更专业的从业者完成即可。

所以，产品更重要的是与人交流，接触目标客户，深挖需求、确定需求，是另一个纬度上的工作。而最终写出来的产品设计文档就是对这些的总结和提炼。
一个规范的产品设计和说明文档是最佳的方式。它可以记录、存档、查阅、传播。
也能在之后对照一下成功或失败的原因。

#### 项目开发要立项
这里说的是项目开发的立项。立项的作用非常重要。它主要包括以下内容：
开发参与人员、开发周期、开发负责人；
技术架构、资源支持、目标结果等。

立项是确认人员，明确责任，让每个参与的人员都知道自己要做什么，要达到什么样的目标。而不是坐等需求。把该明确的先明确了，这样在开发过程中才能顺畅无阻。

## 开发中的基本要求
#### 协作分工
只要人员大于等于两人就涉及到协作分工的事情。开发从何入手，应该怎么分工，对于大部分情况下，都应该分层次去解决.
1. 确定使用的工具平台。这包括代码托管，测试和开发环境等。
2. 确实使用的技术方向。这包括使用何种语言，使用什么框架等等。
3. 纵向层次开发。每个层次，横向的模块开发。这个需要解释一下：
一个软件项目，都是一层一层抽象建立起来的。现在的职业分配也是按各有所长分配的。一般后端的不会去做前端的东西(即使也能做一些)。而每一层可以分模块的开发。
切忌，在一个团队中，开发人员过多的分散注意力。最糟糕的情况就是，一个开发人员要同时做数据库、API、前后台及前端的事情。光是来回转换，切换工具、切换屏幕就要花费太多的时间。效率最低。

#### 制定和遵循规范
规范不仅是代码规范，甚至操作系统、代码操作管理等都可以制定规范。一个普遍适用的规则是：凡是可能给他人带来变化而违反了一致性原则的操作，都可以进行规范，并严格遵守。

#### 开发文档
文档的作用就是那么几点，非常高效。但很多人都忽略。这也是为什么规模大、发展好的公司一般采用邮箱与文档的形式，而一些小的发展阻碍的公司就喜欢用qq、微信等方式。
记录是非常重要的，这样有利于事后分析以及明确责任。任何一个环节可追踪，可工程程序化，提高效率！
在开发中，文档也是必不可少的。包括不限于以下几个方面：
1. 功能需求文档。根据产品设计文档分析而来。有利于进下的进行功能的划分实现。
2. 数据库结构文档。
3. API接口文档。
4. 其他涉及到协作的文档。

#### 测试
功能测试，开发团队自行测试即可。
而产品测试是依照产品设计文档而来的。这要求产品设计文档要明确各个目标点，在测试人员进行测试的时候，是对照产品文档来的，哪些必须要做的没做到，哪些不需要做的却做了，哪些做的不符合要求的，这些都要能一一对应上。
有评判的标准，才叫测试！

## 观点总结
1. **不是因为公司规模大人员多，所以才采用流程化规范化。而是因为使用了科学规范的方法，才慢慢成长为大公司。**
2. **任何的沟通和交流的最终目标都是减少沟通交流，提高效率，达到最终的效果。所以对于一些必要的内容，一次完整的讲清楚，遵循共同的规范。而不是在开发过程中，把时间都浪费在沟通和交流上。**
3. **看上去，要调研，要评审，要写文档，要立项，要制定规范等等很麻烦，实际上这些都不是形式，而是确实有用和必要的做法，能保证上下一致的为共同的目标努力。而不是很多人瞎B忙了个把月，最终为什么而忙都不知道。也没有留下任何可分析的东西，无法总结原因，吸取教训！**
4. **想要有所突破，就要坚持科学规范。只是追求财富，保持现状，科学什么的都是浮云！**

**以上，主要针对以技术为驱动的公司来讲，而对于大公司下的一个技术部门才可适用，其他类型的公司可借鉴的是科学规范的管理方式**

', CAST(N'2016-09-30 10:25:11.3671488' AS DateTime2), N'    当今我们讲述的道理，都是几千年前就已经存在流传至今的。那为什么现在的人还是需要一遍又一遍的讲呢？光讲是没用的，做到很难。在很多公司的开发团队中，总是拿"小"当借口。如果小团队都做不到科学规范，做不到基本要求，那么何谈大呢？', NULL, N'中小团队需要做到的几个基本要求', N'团队协作管理', CAST(N'2016-10-04 17:25:11.8142899' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 2, NULL, 118)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (16, NULL, N'高美丽', N'> appium可以说是做app自动化测试最火的一个框架，它的主要优势是支持android和ios，另外脚本语言也是支持java和Python。我也是菜鸟，摸爬滚打写点小经验。
学习appium最大的难处在于环境的安装，80%的人死于环境安装，然后就没然后了，10%的人被环境折腾一周以上，只有剩下的10%人品好，可以顺利安装。

### 一、环境准备
小编的环境是Windows 10版本 64位系统
1. jdk1.6.0 （64位）
2. android-sdk_r24.3.4-windows
3. python:2.7（3.6也可以）
4. appium：1.4.13.1
5. Node.js：node-v4.4.7-x64
6. Appium-Python-Client

###  二、jdk安装
1. 下载jdk包，我的是64位1.6版本，其它高级版本应该也是可以的。根据自己的系统选择对应版本
2. 一路傻瓜式安装，注意安装路径不要有空格，不要有中文。jdk和jre不要放在一个文件夹下
3. 设置三个环境变量,我的电脑>选择“属性”->“高级”->“环境变量”->“系统变量”->“新建”
JAVA_HOME----D:\Java\jdk1.6.0” （根据自己安装路径填写）
CLASSPATH--- .;%JAVA_HOME%\lib;%JAVA_HOME%\lib\tools.jar;
PATH-----;%JAVA_HOME%\bin;%JAVA_HOME%\jre\bin;
在path路径下加上面那两个，这里就不多说了
4. 打开cmd验证是否安装成功，输入java -version，然后输入javac
能显示版本号和下面的帮助信息说明安装成功

### 三、android-sdk下载安装
1. 下载android-sdk,这个是做android测试和开发的必备环境。
2. 解压后，里面有个SDK manager.exe双击打开
3. 勾选你要现在的API版本和对应的android版本，后面模拟器会用到，然后坐等下载

### 四、android-sdk环境变量
1. 在系统变量新建：ANDROID_HOME，对应变量值为：D:\androidsdk\android-sdk-windows（sdk安装路径）
2. path添加两个变量，将以下箭头所指的两个文件路径添加到path里
3. path里面添加D:\androidsdk\android-sdk-windows\tools和D:\androidsdk\android-sdk-windows\platform-tools

### 五、adb环境
1. 因为adb是在D:\androidsdk\android-sdk-windows\platform-tools这个目录下的，所以上面添加了环境变量后，可以直接在cmd里面运行了。
2. 在cmd输入adb可以查看对应版本号

### 六、连接手机
1. 手机用数据线连电脑，如果安装了91助手或者360什么的可以先下载手机驱动，确认手机能连上
2. 打开cmd输入：adb devices,当屏幕上出现一串字符，后面显示devices说明连接成功（出现其它的提示，得检查自己的环境了）

备注：如果出现List of devices attached，是因为手机没有root权限，你可以选择root刷机或者输入以下命令获取device name,在命令行中输入“adb shell”2、进入shell之后，再输入“cat /system/build.prop | grep "product"”,在接下来的appium中会用到。


祝君好运，我在摸索的路上磕磕碰碰，希望你能少走弯路。

', CAST(N'2016-10-12 14:55:58.6780055' AS DateTime2), N'appium可以说是做app自动化测试最火的一个框架，它的主要优势是支持android和ios，另外脚本语言也是支持java和Python。我也是菜鸟，摸爬滚打写点小经验。', NULL, N'Appium+python环境安装 （上）', N'Appium', CAST(N'2016-10-12 15:30:18.3264029' AS DateTime2), N'd171cf78-1085-4525-8637-a3caafee46bc', 2, NULL, 50)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (17, NULL, N'NilTor', N'>本篇内容主要说明开发过程中的一些注意事项，并给出一些建议！

#### 统一的开发环境.
包括不限于:
- 操作系统
- 运行环境
- 软件运行版本
- 运行和启动方式
- 使用的编辑工具，IDE的配置
- 代码风格与规范

如果大家都能接受相同的约束是最好的。有一个原则就是，如果由于某个方面的不同而给其他人带来了不便，那么就要统一和规范。如果能保证不出问题，那么也不说强制说一定要保持相同的习惯。

#### 前后端分离
1. 前端，可再细分页面与交互逻辑分离
2. 后端，通常是业务逻辑与数据操作分离
3. 另加一个整体架构与数据库的设计。

不分离，一定是痛苦的开发过程。

#### 硬件支持
主要指是开发、测试的工作中所需要的一些硬件支持。
1. 开发服务器。开发服务器，通常有协作工具的部署、代码同步工具的部署、持续构建工具等等和开发相关的工具的部署。以及产品的线上(开发配置)部署，方便开发过程中测试和发现问题。

2. 测试服务器
提供一个与线上环境尽可能一致的测试环境。主要给测试人员使用。
这里需要注意的是两点：
	- **测试代码要与开发的同步。**
	在测试过程中，经常由于代码的不同步而造成开发与测试的不一致。而开发不可能每一次改动，不仅要同步代码到代码库，还要手动去同步的测试服务器上，这简直太浪费时间了。所以，测试服务器上的代码要使用自动构建工具保持与开发的一致。
	这样，开发人员的改动之后，可以直接通知测试人员，测试人员在测试服务器上访问的就是最新修改的代码。
	
	- **测试的数据要尽可能的覆盖生产环境。**
	除了由于代码不一致导致结果不同外，还有就是因为数据不一致，导致结果不同。测试是上线前的重要一步，往往生产环境的数据会更为复杂，而测试是很难做得到。对比已经上线运行的产品，建议测试环境的数据最好是线上环境的复本，如果数据过大，也可是精简后的版本。结构一致这个是必须的了。
	
3. 其他
以上提到的硬件支持主要是涉及到每个开发人员的服务器的支持，尤其是开发服务器，需要安装各种工具，以对开发和协作提供支持。至于其他方面的，根据实际情况做决策。

#### 推荐的内容
1 使用TFS在开发服务器上构建自己的开发服务。
TFS(Team foundation Server)

2 使用scrum敏捷开发框架', CAST(N'2016-10-13 17:04:23.6688997' AS DateTime2), N'  一旦涉及到多人协作开发，就会有很多编写代码之外的事情出现。通常都会出现1+1<2的局面。', NULL, N'开发团队需要注意的几点事项', N'团队协作管理', CAST(N'2016-10-16 11:38:34.2091561' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 2, NULL, 20)
INSERT [dbo].[Blogs] ([BlogId], [Attribute], [Author], [Content], [CreateTime], [Description], [Tags], [Title], [Type], [UpdateTime], [UsersId], [ModuleId], [Status], [ViewNum]) VALUES (18, NULL, N'NilTor', N'### 前言
>    开发Web的语言和工具有很多。语言和工具并不是不分好坏的。至少我们是可以选择更优秀更合适的语言和工具去实现我们的想法。
    本篇主要是演示一个使用Visual Studio和ASP.NET 进行Web开发是怎样的流程和休验，方便大家去对比。

### 准备
#### 开发工具
1. **Visual Studio 2015**。仅支持windows系统，有免费的社区版，功能最为强大和完善，必下。
2. **Visual Studio Code**。文本编辑器，跨平台。
3. **Rider**。jetBrains出品，目前还在先期版本阶段，官网没有提供下载地址。邮件订阅可获得地址。或者从以下地址下载。
Windows:  http://download.jetbrains.com/resharper/riderRS-163.6834.exe 
OS X:  http://download.jetbrains.com/resharper/riderRS-163.6834.dmg 
Linux:  http://download.jetbrains.com/resharper/riderRS-163.6834.tar.gz 

说明:因为我们将使用ASP.NET进行应用服务的开发 ，所以我们选择的编辑器必须是支持C#的。而目前来讲，以上三个工具是对C#和ASP.NET支持最好的了。

####  开发环境
微软开源了.Net，开源的命名为.Net core。提供一一整套开发环境的支持。而我们需要安装 .Net Core SDK。
下载地址:https://www.microsoft.com/net/download
请下载对应系统的安装包。

虽然.Net Core开源，跨平台，但为了能够使用VS获得最良好的体验，还是建议大家使用Win10安装VS进行开发相关的工作。当然，使用ios 和linux也完全OK，也并不会麻烦很多，只是有一些操作我们需要使用命名行去实现即可。

#### 开发服务
写代码只是开发过程中的一部分。当我们有一个实际需求时，我们使用编码技术去实现它。但为了能够满足需求，我们仍然需要使用很多其他的工具来进行支持。对下面的内容要有个大概的了解。

1. **VSTS**。Visual Studio Team Service。是微软提供的一套协作开发的整体解决方案。主要包括代码同步管理，Scrum协作框架，持续集成部署以及测试相关的工作等。这是为开发提供的服务，而且有免费的版本可用，可以说，你开发过程所需要的支持，它都可以提供 。

2. **Azure**。为什么是微软云？因为它有提供免费的服务。我们可以免费创建10个应用。并且是美国的服务器。这意味着服务器可以连接到国外的资源，但中国大陆是可以上访问该服务器的。
	- **APP service**，这是Azure服务的一种，可以理解为以前的虚拟主机。比如我们不需要一台服务器，只是想把自己的程序在一台服务器上运行。App service就是提供一个应用程序运行的环境。像亚马逊的AWS，微软的Azure都有类似的服务，并且都提供长时间的免费使用服务。但像阿里云等国内的云服务商，就不能免费提供类似APP service的服务。

### 目标
视频演示，当我们配置好环境，做好相关准备工作之后。我是如何快速的实现我现实中的需求的。这里我们以一个Web应用为演示。该应用只是包含一个主页静态内容的显示，暂时不包含其他的内容。

我希望做到：
- 简单。能简单实现的就不要复杂化。编程不是什么高深的东西，能自动实现或点点鼠标能实现的没必要人工去实现。让任何人都能够去实践。
- 快速。时间是有限的，最为宝贵的。能10分钟完成的事情，绝不要花费1个小时。
- 体验。当我们把注意力和时间花费在某个事情上，我们希望能够获得良好的体验，获得心理上的愉悦和满足。编程也可以有乐趣，这是建立在简单快速的基础上。


', CAST(N'2016-10-16 11:39:34.4439145' AS DateTime2), N'    开发Web的语言和工具有很多。语言和工具并不是不分好坏的。至少我们是可以选择更优秀更合适的语言和工具去实现我们的想法。
    本篇主要是演示一个使用Visual Studio和ASP.NET 进行Web开发是怎样的流程和休验，方便大家去对比。

', NULL, N'演示：使用ASP.NET 开发Web程序是怎样一种体验', N'ASP.NET Core', CAST(N'2016-10-25 15:15:22.6189507' AS DateTime2), N'0292cb6e-2f5d-4ff7-8baf-2b76c4c433c1', 1, NULL, 21)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
SET IDENTITY_INSERT [dbo].[BlogTypes] ON 

INSERT [dbo].[BlogTypes] ([BlogTypeId], [ModulesId], [Name]) VALUES (3, 1, N'ASP.NET Core')
INSERT [dbo].[BlogTypes] ([BlogTypeId], [ModulesId], [Name]) VALUES (4, 5, N'站内新闻')
INSERT [dbo].[BlogTypes] ([BlogTypeId], [ModulesId], [Name]) VALUES (5, 1, N'技术分享')
INSERT [dbo].[BlogTypes] ([BlogTypeId], [ModulesId], [Name]) VALUES (6, 2, N'团队协作管理')
INSERT [dbo].[BlogTypes] ([BlogTypeId], [ModulesId], [Name]) VALUES (7, 2, N'Typescript系列教程')
INSERT [dbo].[BlogTypes] ([BlogTypeId], [ModulesId], [Name]) VALUES (8, 2, N'angular2系列教程')
INSERT [dbo].[BlogTypes] ([BlogTypeId], [ModulesId], [Name]) VALUES (9, 2, N' Asp.Net Core教程')
INSERT [dbo].[BlogTypes] ([BlogTypeId], [ModulesId], [Name]) VALUES (10, 4, N'热点点评')
INSERT [dbo].[BlogTypes] ([BlogTypeId], [ModulesId], [Name]) VALUES (11, 1, N'CMS项目实践')
INSERT [dbo].[BlogTypes] ([BlogTypeId], [ModulesId], [Name]) VALUES (12, 2, N'Appium')
SET IDENTITY_INSERT [dbo].[BlogTypes] OFF
SET IDENTITY_INSERT [dbo].[Modules] ON 

INSERT [dbo].[Modules] ([ModulesId], [Name], [Url], [Rank], [Status]) VALUES (1, N'编程技术', N'CodeTech', 0, N'default')
INSERT [dbo].[Modules] ([ModulesId], [Name], [Url], [Rank], [Status]) VALUES (2, N'专题文章', N'Subject', 1, N'default')
INSERT [dbo].[Modules] ([ModulesId], [Name], [Url], [Rank], [Status]) VALUES (4, N'独立视角', N'View', 2, N'default')
INSERT [dbo].[Modules] ([ModulesId], [Name], [Url], [Rank], [Status]) VALUES (5, N'站点新闻', N'About', 4, N'default')
INSERT [dbo].[Modules] ([ModulesId], [Name], [Url], [Rank], [Status]) VALUES (7, N'问答', N'Issues', 5, N'default')
SET IDENTITY_INSERT [dbo].[Modules] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (1, CAST(N'2016-10-27 11:29:39.0000000' AS DateTime2), N'苹果将于今晚举行发布会，市场均相信苹果将发布最新Mac产品，但昨晚一向主打软件业务的竞争对手微软竟抢闸推出首款自家一体式个人电脑，与苹果...', N'微软首推一体式电脑．同苹果大斗法！', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://www.sinchew.com.my/node/1581172/%25E5%25BE%25AE%25E8%25BD%25AF%25E9%25A6%2596%25E6%258E%25A8%25E4%25B8%2580%25E4%25BD%2593%25E5%25BC%258F%25E7%2594%25B5%25E8%2584%2591%25EF%25BC%258E%25E5%2590%258C%25E8%258B%25B9%25E6%259E%259C%25E5%25A4%25A7%25E6%2596%2597%25E6%25B3%2595%25EF%25BC%2581&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNGeUjfaMe_3ugNM9OIxKpm1-371MQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (2, CAST(N'2016-10-27 11:36:23.0000000' AS DateTime2), N'全景网10月27日讯今日上午9点半，三星电子在其官网上发布了2016年第三季度未经审计的财务报告。受到此前三星Galaxy Note 7手机电池“爆炸门”事件的...', N'Note7爆炸烧掉多少钱？三星手机部门Q3营业利润暴跌98%', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://www.p5w.net/stock/news/gsxw/201610/t20161027_1619177.htm&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNH2zI3E4nFryCdSeauOH2dDbn03gQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (3, CAST(N'2016-10-27 10:32:07.0000000' AS DateTime2), N'10月21日，三星的“Note 7手机爆炸”蔓延到了日本。上周出差在机场，进门安保第一句话就是问我是否携带了这款手机。看来三星手机在全世界接二连三的...', N'专栏|三星手机爆炸背后是一颗急功近利的心', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://finance.sina.com.cn/roll/2016-10-27/doc-ifxxaeqk5800043.shtml&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNF83grCsDSIiAemC9wxNoIQuyNmfw')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (4, CAST(N'2016-10-27 09:46:55.0000000' AS DateTime2), N'作为历史上最短命的旗舰手机，Note7爆炸召回事件给三星造成的最大损失，  8月初刚面世时，三星Galaxy Note7被誉为今年最好的Android系统手机...', N'三星Note7大撤退：史上最短命的旗舰手机', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.ifeng.com/a/20161027/44478865_0.shtml&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNE5QMSzkubDmuoA9JYYq_QGChAl6A')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (5, CAST(N'2016-10-27 09:41:15.0000000' AS DateTime2), N'苹果公布了15年以来收入首次下滑的财报,中国市场缩水了三分之一。同一天,第三方机构数据显示,国产手机厂商的排位发生了变化,华为跌落第一的神坛,...', N'手机销量华为退出榜一线下渠道不如OPPO等', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://www.stdaily.com/index/it/2016-10/27/content_282594.shtml&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNEBkgZK3sV-blFZH0sA_hZhChae9g')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (6, CAST(N'2016-10-27 09:41:15.0000000' AS DateTime2), N'今天，华为终端官方微博展示了一段视频，号称“华为又出&#39;黑科技&#39;，教你如何隔空操作手机。” 视频中，操作者在触控按键区域隔空向左挥动手指，手机同步向...', N'华为炫“黑科技”：教你如何隔空操作手机', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://news.mydrivers.com/1/504/504863.htm&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNHQGGMytbe8s933UQ-gKGw_eUDIxA')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (7, CAST(N'2016-10-27 09:30:00.0000000' AS DateTime2), N'10月26日下午14点30分，360手机将在北京工体-茉莉正式发布360N4S骁龙版。在发布会之前，这款新机就凭借着超大容量电池和强悍的高通骁龙625处理...', N'360手机总裁：不设KPI不代表没有KPI', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://mt.sohu.com/20161027/n471493597.shtml&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNFgK67BIGoWMkfzwTgGe6RsTRqj9Q')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (8, CAST(N'2016-10-27 09:20:32.0000000' AS DateTime2), N'在华为面向海外市场发布nova手机一个月之后，如今华为nova中国也正式发布了。不过相对于海外版的3GB+32GB配置来说，还增加了4GB+64GB的版本...', N'五英寸屏超精致外形华为nova手机评测体验', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://mt.sohu.com/20161027/n471486543.shtml&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNFU_CK9uz2xqAmQ2U0V2msjAfLf3A')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (9, CAST(N'2016-10-27 11:36:33.0000000' AS DateTime2), N'深陷Note 7风波的三星今日早间发布三季度财报，报告显示，其三季度利润大跌17%，下滑至4.41万亿韩元（约合39亿美元）；营业利润下滑更厉害，...', N'身陷Note 7风波，三星手机营业利润创六年低点，帝国接班人正式加入董事会', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=https://36kr.com/p/5055265.html&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNEfWSeeh2rLw5IB05lADmpxfi6gHQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (10, CAST(N'2016-10-27 09:07:30.0000000' AS DateTime2), N'苹果手机一直是公司收入的大头，而大中华区营收的下降正是受手机市场萎缩的影响。凑巧的是，苹果手机的最大竞争对手三星手机，也因电池爆炸门事件，...', N'苹果公司十五年首次整财年营收下降大中华区下滑30%', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://china.cnr.cn/yaowen/20161027/t20161027_523224810.shtml&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNH9Px3xibXRLln5vjlixTE9aFsDQA')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (11, CAST(N'2016-10-27 07:48:45.0000000' AS DateTime2), N'腾讯科技讯明年是苹果进入智能手机行业十周年，再加上苹果手机销量已经连续三个季度下跌，因此库克已经决定，明年将会推出一款具有重大升级内容的...', N'iPhone 8或新增“五英寸”版本有人觉得很多余', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.qq.com/a/20161027/004512.htm&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNFS_okGdxscbHLW8Y4OeVC_jHYt0g')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (12, CAST(N'2016-10-27 07:15:00.0000000' AS DateTime2), N'尽管国产智能手机下半年新品频发，但这仍难掩当下市场大环境的普遍颓势。根据全球市场研究机构TrendForce的最新数据显示，第三季度全球智能手机出...', N'小米史上最酷的手机小米MIX概念机评测', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.sina.com.cn/mobile/n/c/2016-10-27/doc-ifxxfysn7838510.shtml&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNHlNxzLRzEdXSgI12NiF5eiTiWahw')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (13, CAST(N'2016-10-27 06:19:10.0000000' AS DateTime2), N'苹果的专利申请对于电子设备制造商、知识产权代理机构都是公开的文件，可以检索到。一些手机电子设备制造商会根据苹果现有技术的专利申请来判断...', N'业内称下一代苹果预计无超越性突破专利中硬件无突破', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://finance.sina.com.cn/chanjing/gsnews/2016-10-27/doc-ifxxfuff6930369.shtml&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNF-taUnKBRPWnhT6U_SaxoCq3yUVw')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (14, CAST(N'2016-10-27 02:56:15.0000000' AS DateTime2), N'小米Note2却令不少米粉大失所望，一方面已经开始有专业人士担心拥有该项专利的企业是否会起诉小米;另一方面，作为小米手机曾经的使用者，不少人...', N'小米Note2逗比?双曲面屏不是三星vivo玩剩下的吗?', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://kosmos.baijia.baidu.com/article/670559&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNEgNyPM4cdc6mYdMEpKoHBirbEthQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (15, CAST(N'2016-10-27 02:11:15.0000000' AS DateTime2), N'摘要：一位业内人士对日经新闻表示，明年苹果将发布三款新的iPhone，全部采用新的玻璃材质，可能是由中国的比尔水晶制造厂和蓝思科技提供的运动背面...', N'苹果明年将推出三款新手机均为全玻璃材质', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://www.cngold.com.cn/stock/20161027d1986n94441997.html&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNGkoBtseT_Cg1pzUBy9AXAGqrRDkg')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (16, CAST(N'2016-10-27 01:56:00.0000000' AS DateTime2), N'竞争充分的手机市场总在发生一些意料之外情理之中的变化，经历了三星爆炸事件之后，随着三季度行业报告数据出炉，手机市场的两大变局浮出水面...', N'三季度手机惊现大变局：苹果15年来营收首下滑', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.163.com/16/1027/01/C4BM7P6Q00097U7R.html&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNEPsQZRRaWKcI1QDYf98zTUZLhxbg')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (17, CAST(N'2016-10-27 01:37:30.0000000' AS DateTime2), N'苹果手机销量遭遇滑铁卢，三星手机“连环炸”，国产手机弯道超车一举成为全球手机市场的领头羊，仿佛天时地利人和都注定了国产手机的完美逆袭...', N'苹果失利：国产手机弯道超车在于应时而变', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.163.com/16/1027/03/C4BSBGNK00097U7R.html&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNHvGfnpZtB-e1Q3LqUsdILR-i3MZA')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (18, CAST(N'2016-10-27 08:56:15.0000000' AS DateTime2), N'腾讯科技讯三星电子宣布永久停售、停产Galaxy Note 7手机，已经有一段时间，在此期间，三星电子提供了优惠的鼓励政策，希望Note 7用户交回手机，更换...', N'三星宣布新招逼迫Note 7用户交回手机：限制充电60%', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.qq.com/a/20161027/008950.htm&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNGPhFe3n0nNfQydDLSZIr8u8Dy8kg')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (19, CAST(N'2016-10-27 11:58:44.0000000' AS DateTime2), N'三星称，移动部门业绩显著下滑，是因为Note 7停产，但是包括Galaxy S7以及S7 edge在内的其他三星手机出货量依然保持稳定。 三星预计，S7以及S7...', N'Note 7爆炸的“威力”：三星移动部门利润暴跌96%', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://wallstreetcn.com/node/270010&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNG8OcGq7LsWPBxxqiYpV-c16a6DZg')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (20, CAST(N'2016-10-27 06:53:09.0000000' AS DateTime2), N'路透旧金山10月26日- 周三，特斯拉汽车(Tesla) (TSLA.O)公布逾三年来的首次季度净利，受到出售零排放汽车积分获得近1.39亿美元的提振。特斯拉创始人...', N'美股业绩：特斯拉逾三年来首次实现季度获利，CEO称第四季亦将盈利', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://cn.reuters.com/article/tesla-profit-1026-wednedday-idCNKCS12R02Z&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNFuISqR8fvinV1doNbxVoUuiceT9A')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (21, CAST(N'2016-10-27 07:03:45.0000000' AS DateTime2), N'新浪科技讯北京时间10月27日凌晨消息，微软今日在纽约召开发布会，推出了一体机Surface Studio、升级版Surface Book底座以及新操控设备Surface Dial...', N'微软Windows主管：Surface Pro 5还没准备好', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.sina.com.cn/it/2016-10-27/doc-ifxxfuff6931011.shtml&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNFA89TfPsSCNVTNZL_KP0iWuGFNKw')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (22, CAST(N'2016-10-27 11:21:58.0000000' AS DateTime2), N'【Technews科技新报】 10 月最后一周，微软与苹果两大科技公司上演的新品对决值得关注。 26 日晚上，微软新品发布会如期召开。会上重磅产品当属微软...', N'微软“变硬”放出Surface Studio大招，苹果Mac压力大吗？', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://it.sohu.com/20161027/n471520071.shtml&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNHzOEEvHAGy0gb2eHPD5r_zGyrfdw')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (23, CAST(N'2016-10-27 10:26:01.0000000' AS DateTime2), N'本文为云知声投稿于极客公园，作者清风。头图/亚马逊Echo（左）谷歌Home（右）。 亚马逊和谷歌等大公司先后推出智能家居中枢产品，并且都选择了智能...', N'从亚马逊Echo 到谷歌Home：浅谈麦克风阵列的生态', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://it.sohu.com/20161027/n471510672.shtml&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNE8gOWhJ-7bgMLdKl7PqeUzUf3oUQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (24, CAST(N'2016-10-27 10:15:00.0000000' AS DateTime2), N'【大纪元2016年10月27日讯】美国科技巨擘微软公司今天推出挑战苹果桌机iMac的高阶电脑，搭载更新Windows操作系统，展示了3D内容以及“混合现实”，对...', N'微软最薄桌机屏幕亮相小画家明年变3D', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://www.epochtimes.com/gb/16/10/27/n8434215.htm&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNFn2YHfYQwuYnr0ERqla6iE9ATCoQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (25, CAST(N'2016-10-27 09:50:28.0000000' AS DateTime2), N'最终，投资者苦苦等待的一天终于到来，特斯拉实现了三年来首个季度盈利。分析师称，这是特斯拉的里程碑时刻。 周三盘后特斯拉公布了2016财年的三...', N'特斯拉的“里程碑”：这季不仅产量跟上了，还实现了盈利', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://wallstreetcn.com/node/269982&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNFQCmIHkSYYu2vsjCYFVoMRAKNa7g')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (26, CAST(N'2016-10-27 09:29:59.0000000' AS DateTime2), N'路透纽约10月26日- 微软(MSFT.O)周三历史上首次推出电脑台式机，并能免费升级至带有3D建模功能的Windows操作系统，期望藉此提振公司的计算业务...', N'微软首次推出台式电脑以及带3D功能的Windows操作系统', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://cn.reuters.com/article/msft-comupter-os-3d-idCNKCS12R04U&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNFVHCiIZd_S8Kt0Y6Z_NFE-TmTDmg')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (27, CAST(N'2016-10-27 09:18:45.0000000' AS DateTime2), N'网易科技讯10月27日消息，据外媒（今日美国）报道，微软于本周三推出新硬件，超薄薄铝合金材质的28英寸Surface Studio电脑。价格和外形一样...', N'微软发布Surface Studio：28寸的平板巨怪', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.163.com/16/1027/09/C4CG4R8100097U7T.html&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNGA3WDZWSNCU2vlPKxeZKmgoXsQTA')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (28, CAST(N'2016-10-27 09:01:20.0000000' AS DateTime2), N'一则太空站直播的视频昨日在脸书疯传，引起许多网民关注，超过27万人在脸书按赞，并分享高达3万次，但是经过一番查證後，这则所谓“太空站直播”只是一...', N'太空站脸书直播？NASA：虚假的', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://www.sinchew.com.my/node/1581072/%25E5%25A4%25AA%25E7%25A9%25BA%25E7%25AB%2599%25E8%2584%25B8%25E4%25B9%25A6%25E7%259B%25B4%25E6%2592%25AD%25EF%25BC%259Fnasa%25EF%25BC%259A%25E8%2599%259A%25E5%2581%2587%25E7%259A%2584&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNGrisa68qe88fE8Tr2xgycviKV6sg')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (29, CAST(N'2016-10-27 08:56:15.0000000' AS DateTime2), N'除了发布新的电脑以外，微软在昨夜今晨的发布会后，其实还悄悄端出了一系列新的Surface 配件。首先，就是题图里这款人体工学键盘，基本上你可以把它...', N'微软还为Surface 用户准备了一款人体工学键盘', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://cn.engadget.com/2016/10/26/microsoft-surface-ergonomic-keyboard/&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNHCe6TiHwMA2MX2nXNSzsa3mOInCQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (30, CAST(N'2016-10-27 08:45:00.0000000' AS DateTime2), N'微软首席执行官萨提亚纳德拉在26日的微软发布会演讲中再度分享了这一诗句，也同样可以理解为微软对这几年来行业变迁的精辟解读。在移动互联网浪潮...', N'微软想靠激励你的“创造力”去引领下一个未来', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.qq.com/a/20161027/008369.htm&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNHcoNbpsj-pG6OubmrE-ow0fYTnBQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (31, CAST(N'2016-10-27 08:45:00.0000000' AS DateTime2), N'微软在纽约举行新品发布会，一口气发布了旗下首款一体机产品—Surface Studio，性能和续航全面提升的New Surface Book i7以及微软头戴3D显示器...', N'微软一口气发布多款抢眼硬件，怎一个「贵」字了得| 极客早知道', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://it.sohu.com/20161027/n471503146.shtml&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNGc5L2tLPtnkt_uRZGeUsadDE9qeA')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (32, CAST(N'2016-10-27 08:11:15.0000000' AS DateTime2), N'10月27日，微软大会正式推出自己的Surface一体机——Surface Studio。除了传统升级Surface Book以及Windows 10系统，微软此次展现的全新3D图建...', N'剑指iMac 微软想靠SurfaceStudio重塑PC电脑新定义', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://it.sohu.com/20161027/n471484780.shtml&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNEeMRu6z0tO8JuER0X7dmwTAgq3qw')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (33, CAST(N'2016-10-27 08:11:15.0000000' AS DateTime2), N'日前，备受业内瞩目的微软发布了包括新的Surface Book、Surface Studio一体机等Surface系列产品，但令人遗憾和不解的是，传言中的Surface平板系列...', N'乏力与自蚕：微软缘何没有发布新的Surface Pro？', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.sina.com.cn/zl/post/detail/it/2016-10-27/pid_8508820.htm&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNER93p85Q2ROcAN028o9vQrvzGJ6w')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (34, CAST(N'2016-10-27 08:11:15.0000000' AS DateTime2), N'腾讯科技讯在个人电脑时代，微软和苹果曾经是一对捉对厮杀的对手，最终基于微软Windows和英特尔处理器的“微特尔”电脑，在全球击败了苹果定价昂贵...', N'微软苹果“硬件战争”升级PC-MAC之战要重演？', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.qq.com/a/20161027/006007.htm&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNHfwGodWvxhdnk4JvT5ClOC53etDQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (35, CAST(N'2016-10-27 08:00:00.0000000' AS DateTime2), N'Facebook最近发布了CommAI-env，一个用于训练和评价AI系统的平台。这个平台是受一个机器智能的路线图启发，旨在教授智能代理一般的学习能力，...', N'CommAI，Facebook的AI训练和测试系统', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://www.infoq.com/cn/news/2016/10/CommAI-Train-Test-Facebook&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNElcqyO2_r1S7S8lZd0F9KLoXvpJQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (36, CAST(N'2016-10-27 07:48:45.0000000' AS DateTime2), N'不久前有消息称谷歌为了简化公司硬件业务，已决定取消Poject Ara计划，看到这个消息，小编确实有些惊讶和失望，因为小编一直很渴望谷歌的这个黑科技...', N'谷歌玩不下去的模块化，它们坚持下去有结果吗？', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.sina.com.cn/mobile/n/n/2016-10-27/doc-ifxxfysn7839966.shtml&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNFRWZYCO8Rw0Pm1iqE2_qgqK_xieA')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (37, CAST(N'2016-10-27 07:37:30.0000000' AS DateTime2), N'最近，Facebook商务产品主管玛莉·库（Mary Ku）参加了Code Commerce会议，她在会上表示：“关于货币化问题，Facebook首先考虑的是用户体验是不是...', N'Facebook高管：电商业务至今没有盈利', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://tech.ifeng.com/a/20161027/44478716_0.shtml&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNFhp5uBCu6h9Jp9llbRUxLekU_X0Q')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (38, CAST(N'2016-10-27 07:37:30.0000000' AS DateTime2), N'微软台式电脑Surface Studio的屏幕为触控式，而且可转为水平角度，也能以触控笔(stylus)在屏幕上绘图。微软并称将推出一款新Surface Book笔记型电脑，...', N'美国个股：微软首次推出台式电脑，以及带3D功能的Windows操作系统', N'国际巨头', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://cn.reuters.com/article/idCNL4S1CW5Y9&ct=ga&cd=CAIyHWE2ZGJlMGZmZDgyMzBkNmU6Y29tOnpoLUNOOlVT&usg=AFQjCNENVM3_ZLxGW3x02ZDKQp-n3EZbwg')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (39, CAST(N'2016-10-26 23:33:45.0000000' AS DateTime2), N'10月26日下午，360手机举办新品发布会，正式推出360N4S骁龙版。  称，今年第三季度，vivo和OPPO同时超越华为成为中国市场前两大智能手机厂商...', N'手机市场大变局：新玩家还有机会吗？', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://it.sohu.com/20161026/n471462028.shtml&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNHyFPPkg4nj8JrCxIQzzshmJztjPQ')
INSERT [dbo].[News] ([NewsId], [DateTime], [Description], [Title], [Type], [Url]) VALUES (40, CAST(N'2016-10-26 21:52:30.0000000' AS DateTime2), N'虽然一直以来苹果就积极布局大健康领域，但是此次利用苹果手机构建移动实验室的并不是苹果公司，而是来自美国华盛顿州立大学的一个研究团队...', N'逆天！iPhone能诊断癌症，难道又是黑科技？', N'手机数码', N'http://www.geeker.tech/news/jumpurl?rct=j&sa=t&url=http://business.sohu.com/20161026/n471441817.shtml&ct=ga&cd=CAIyHTgxMGY2YmNkNjY2NDIzZGQ6Y29tOnpoLUNOOlVT&usg=AFQjCNFDCJc3nCo5wIHoalR1pn4xaK0mxA')
SET IDENTITY_INSERT [dbo].[News] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_UserId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 2016/10/27 14:57:22 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Blogs_Author_Type_ModuleId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_Author_Type_ModuleId] ON [dbo].[Blogs]
(
	[Author] ASC,
	[Type] ASC,
	[ModuleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Blogs_Title]    Script Date: 2016/10/27 14:57:22 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Blogs_Title] ON [dbo].[Blogs]
(
	[Title] ASC
)
WHERE ([Title] IS NOT NULL)
WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Blogs_UsersId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_UsersId] ON [dbo].[Blogs]
(
	[UsersId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK_BlogTypes_Name]    Script Date: 2016/10/27 14:57:22 ******/
ALTER TABLE [dbo].[BlogTypes] ADD  CONSTRAINT [AK_BlogTypes_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF)
GO
/****** Object:  Index [IX_BlogTypes_ModulesId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_BlogTypes_ModulesId] ON [dbo].[BlogTypes]
(
	[ModulesId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
/****** Object:  Index [IX_IssueAnswers_IssuesIssueId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_IssueAnswers_IssuesIssueId] ON [dbo].[IssueAnswers]
(
	[IssuesIssueId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_IssueAnswers_UserId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_IssueAnswers_UserId] ON [dbo].[IssueAnswers]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
/****** Object:  Index [IX_Issues_IssueModulesIssueModuleId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_Issues_IssueModulesIssueModuleId] ON [dbo].[Issues]
(
	[IssueModulesIssueModuleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
/****** Object:  Index [IX_Issues_IssueTypesIssueTypeId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_Issues_IssueTypesIssueTypeId] ON [dbo].[Issues]
(
	[IssueTypesIssueTypeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Issues_UserId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_Issues_UserId] ON [dbo].[Issues]
(
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
/****** Object:  Index [IX_IssueTypes_IssueModulesIssueModuleId]    Script Date: 2016/10/27 14:57:22 ******/
CREATE NONCLUSTERED INDEX [IX_IssueTypes_IssueModulesIssueModuleId] ON [dbo].[IssueTypes]
(
	[IssueModulesIssueModuleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF)
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_AspNetUsers_UsersId] FOREIGN KEY([UsersId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_AspNetUsers_UsersId]
GO
ALTER TABLE [dbo].[BlogTypes]  WITH CHECK ADD  CONSTRAINT [FK_BlogTypes_Modules_ModulesId] FOREIGN KEY([ModulesId])
REFERENCES [dbo].[Modules] ([ModulesId])
GO
ALTER TABLE [dbo].[BlogTypes] CHECK CONSTRAINT [FK_BlogTypes_Modules_ModulesId]
GO
ALTER TABLE [dbo].[IssueAnswers]  WITH CHECK ADD  CONSTRAINT [FK_IssueAnswers_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[IssueAnswers] CHECK CONSTRAINT [FK_IssueAnswers_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[IssueAnswers]  WITH CHECK ADD  CONSTRAINT [FK_IssueAnswers_Issues_IssuesIssueId] FOREIGN KEY([IssuesIssueId])
REFERENCES [dbo].[Issues] ([IssueId])
GO
ALTER TABLE [dbo].[IssueAnswers] CHECK CONSTRAINT [FK_IssueAnswers_Issues_IssuesIssueId]
GO
ALTER TABLE [dbo].[Issues]  WITH CHECK ADD  CONSTRAINT [FK_Issues_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Issues] CHECK CONSTRAINT [FK_Issues_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Issues]  WITH CHECK ADD  CONSTRAINT [FK_Issues_IssueModules_IssueModulesIssueModuleId] FOREIGN KEY([IssueModulesIssueModuleId])
REFERENCES [dbo].[IssueModules] ([IssueModuleId])
GO
ALTER TABLE [dbo].[Issues] CHECK CONSTRAINT [FK_Issues_IssueModules_IssueModulesIssueModuleId]
GO
ALTER TABLE [dbo].[Issues]  WITH CHECK ADD  CONSTRAINT [FK_Issues_IssueTypes_IssueTypesIssueTypeId] FOREIGN KEY([IssueTypesIssueTypeId])
REFERENCES [dbo].[IssueTypes] ([IssueTypeId])
GO
ALTER TABLE [dbo].[Issues] CHECK CONSTRAINT [FK_Issues_IssueTypes_IssueTypesIssueTypeId]
GO
ALTER TABLE [dbo].[IssueTypes]  WITH CHECK ADD  CONSTRAINT [FK_IssueTypes_IssueModules_IssueModulesIssueModuleId] FOREIGN KEY([IssueModulesIssueModuleId])
REFERENCES [dbo].[IssueModules] ([IssueModuleId])
GO
ALTER TABLE [dbo].[IssueTypes] CHECK CONSTRAINT [FK_IssueTypes_IssueModules_IssueModulesIssueModuleId]
GO
