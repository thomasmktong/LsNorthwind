USE [LIGHTSWITCH]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 10/2/2014 1:49:43 AM ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
