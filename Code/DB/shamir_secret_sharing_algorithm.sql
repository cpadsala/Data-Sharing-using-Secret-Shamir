USE [master]
GO
/****** Object:  Database [shamir_secret_sharing_algorithm]    Script Date: 03/14/2015 12:24:46 ******/
CREATE DATABASE [shamir_secret_sharing_algorithm] ON  PRIMARY 
( NAME = N'shamir_eecret_sharing_algorithm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER2\MSSQL\DATA\shamir_eecret_sharing_algorithm.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'shamir_eecret_sharing_algorithm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER2\MSSQL\DATA\shamir_eecret_sharing_algorithm_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shamir_secret_sharing_algorithm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET ANSI_NULLS OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET ANSI_PADDING OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET ARITHABORT OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET  DISABLE_BROKER
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET  READ_WRITE
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET RECOVERY FULL
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET  MULTI_USER
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [shamir_secret_sharing_algorithm] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'shamir_secret_sharing_algorithm', N'ON'
GO
USE [shamir_secret_sharing_algorithm]
GO
/****** Object:  Table [dbo].[File_Master]    Script Date: 03/14/2015 12:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File_Master](
	[file_id] [int] IDENTITY(1,1) NOT NULL,
	[file_path] [nvarchar](max) NULL,
	[key_value] [nvarchar](50) NULL,
	[key1] [nvarchar](50) NULL,
	[key2] [nvarchar](50) NULL,
	[key3] [nvarchar](50) NULL,
	[key4] [nvarchar](50) NULL,
	[key5] [nvarchar](50) NULL,
	[key6] [nvarchar](50) NULL,
	[key7] [nvarchar](50) NULL,
	[key8] [nvarchar](50) NULL,
	[key9] [nvarchar](50) NULL,
	[key10] [nvarchar](50) NULL,
	[file_name] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File_Info]    Script Date: 03/14/2015 12:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File_Info](
	[file_id] [int] IDENTITY(1,1) NOT NULL,
	[file_name] [nvarchar](50) NULL,
	[key1] [nvarchar](50) NULL,
	[key2] [nvarchar](50) NULL,
	[key3] [nvarchar](50) NULL,
	[cloud1_file_path] [nvarchar](max) NULL,
	[cloud2_file_path] [nvarchar](max) NULL,
	[cloud3_file_path] [nvarchar](max) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auto_keys]    Script Date: 03/14/2015 12:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auto_keys](
	[key_id] [int] IDENTITY(1,1) NOT NULL,
	[key_value] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin_login]    Script Date: 03/14/2015 12:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_login](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Share_Master]    Script Date: 03/14/2015 12:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share_Master](
	[share_id] [int] IDENTITY(1,1) NOT NULL,
	[file_name] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[cloud_id] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Master]    Script Date: 03/14/2015 12:24:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Master](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](50) NULL,
	[contact_no] [nvarchar](50) NULL,
	[email_id] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Upload_Data_on_Cloud]    Script Date: 03/14/2015 12:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Upload_Data_on_Cloud]
	@file_path nvarchar(200),
	@key_value nvarchar(50),
	@key1 nvarchar(50),
	@key2 nvarchar(50),
	@key3 nvarchar(50),
	@key4 nvarchar(50),
	@key5 nvarchar(50),
	@key6 nvarchar(50),
	@key7 nvarchar(50),
	@key8  nvarchar(50),
	@key9 nvarchar(50),
	@key10 nvarchar(50),
	@file_name nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Insert Into File_Master values(@file_path,@key_value, @key1, @key2, @key3, @key4, @key5, @key6, @key7, @key8, @key9, @key10,@file_name)
END
GO
/****** Object:  StoredProcedure [dbo].[Select_info]    Script Date: 03/14/2015 12:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_info]
	@file_name nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from File_Master where file_name=@file_name
END
GO
/****** Object:  StoredProcedure [dbo].[Select_Data]    Script Date: 03/14/2015 12:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_Data]
	@file_name nvarchar(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from File_Master where file_name=@file_name
END
GO
/****** Object:  StoredProcedure [dbo].[CompareKeys]    Script Date: 03/14/2015 12:24:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CompareKeys]
	@key_value varchar(500),
 @key1 varchar(500), 
 @key2 varchar(500), 
 @key3 varchar(500), 
 @key4 varchar(500), 
 @key5 varchar(500),
 @key6 varchar(500)

AS
BEGIN
	SET NOCOUNT ON;
	Declare @count int;
	set @count = 0;
	-- Check key id 
	Declare @keyValue varchar(500);
	select @keyValue = key_id from shamir_secret_sharing_algorithm.dbo.auto_keys where key_value = @key_value
	if(@keyValue is not null)
	begin
		
		-- Check first
		if exists(select file_id from File_Master where key_value = @keyValue and key1 = @key1 or key1 = @key2 or key1 = @key3  or key1 = @key4  or key1 = @key5  or key1 = @key6)
		begin
			Set @count = @count+1;
		end
		-- Check second
		if exists(select file_id from File_Master where key_value = @keyValue and key2 = @key1 or key2 = @key2 or key2 = @key3  or key2 = @key4  or key2 = @key5  or key2 = @key6)
		begin
			Set @count = @count+1;
		end
		-- Check thirrd
		if exists(select file_id from File_Master where key_value = @keyValue and key3 = @key1 or key3 = @key2 or key3 = @key3  or key3 = @key4  or key3 = @key5  or key3 = @key6)
		begin
			Set @count = @count+1;
		end
		-- Check fourth
		if exists(select file_id from File_Master where key_value = @keyValue and key4 = @key1 or key4 = @key2 or key4 = @key3  or key4 = @key4  or key4 = @key5  or key4 = @key6)
		begin
			Set @count = @count+1;
		end
		-- Check Fifth
		if exists(select file_id from File_Master where key_value = @keyValue and key5 = @key1 or key5 = @key2 or key5 = @key3  or key5 = @key4  or key5 = @key5  or key5 = @key6)
		begin
			Set @count = @count+1;
		end
		-- Check sixth
		if exists(select file_id from File_Master where key_value = @keyValue and key6 = @key1 or key6 = @key2 or key6 = @key3  or key6 = @key4  or key6 = @key5  or key6 = @key6)
		begin
			Set @count = @count+1;
		end
		-- Check seventh
		if exists(select file_id from File_Master where key_value = @keyValue and key7 = @key1 or key7 = @key2 or key7 = @key3  or key7 = @key4  or key7 = @key5  or key7 = @key6)
		begin
			Set @count = @count+1;
		end
		-- Check eight
		if exists(select file_id from File_Master where key_value = @keyValue and key8 = @key1 or key8 = @key2 or key8 = @key3  or key8 = @key4  or key8 = @key5  or key8 = @key6)
		begin
			Set @count = @count+1;
		end
		-- Check ninth
		if exists(select file_id from File_Master where key_value = @keyValue and key9 = @key1 or key9 = @key2 or key9 = @key3  or key9 = @key4  or key9 = @key5  or key9 = @key6)
		begin
			Set @count = @count+1;
		end
		-- Check tenth
		if exists(select file_id from File_Master where key_value = @keyValue and key10 = @key1 or key10 = @key2 or key10 = @key3  or key10 = @key4  or key10 = @key5  or key10 = @key6)
		begin
			Set @count = @count+1;
		end
		
		if(@count >= 6)
		begin
			select file_id, file_path,file_name from File_Master where key_value = @keyValue
		end
		
		
 	End
 	else 
 	begin
 		-- key value is wrong
 		
 		return 0;
 	end 
 	
 	 
 	
END
GO
