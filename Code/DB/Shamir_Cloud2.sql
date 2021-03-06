USE [master]
GO
/****** Object:  Database [Shamir_Cloud2]    Script Date: 03/14/2015 12:23:49 ******/
CREATE DATABASE [Shamir_Cloud2] ON  PRIMARY 
( NAME = N'Shamir_Cloud2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER2\MSSQL\DATA\Shamir_Cloud2.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shamir_Cloud2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER2\MSSQL\DATA\Shamir_Cloud2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shamir_Cloud2] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shamir_Cloud2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shamir_Cloud2] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET ARITHABORT OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Shamir_Cloud2] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Shamir_Cloud2] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Shamir_Cloud2] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET  DISABLE_BROKER
GO
ALTER DATABASE [Shamir_Cloud2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Shamir_Cloud2] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Shamir_Cloud2] SET  READ_WRITE
GO
ALTER DATABASE [Shamir_Cloud2] SET RECOVERY FULL
GO
ALTER DATABASE [Shamir_Cloud2] SET  MULTI_USER
GO
ALTER DATABASE [Shamir_Cloud2] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Shamir_Cloud2] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Shamir_Cloud2', N'ON'
GO
USE [Shamir_Cloud2]
GO
/****** Object:  Table [dbo].[File_Master]    Script Date: 03/14/2015 12:23:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File_Master](
	[file_id] [int] IDENTITY(1,1) NOT NULL,
	[file_path] [nvarchar](50) NULL,
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
/****** Object:  StoredProcedure [dbo].[Upload_Data_on_Cloud2]    Script Date: 03/14/2015 12:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Upload_Data_on_Cloud2]
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
/****** Object:  StoredProcedure [dbo].[Select_info]    Script Date: 03/14/2015 12:23:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
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
/****** Object:  StoredProcedure [dbo].[Select_Data]    Script Date: 03/14/2015 12:23:52 ******/
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
/****** Object:  StoredProcedure [dbo].[CompareKeys]    Script Date: 03/14/2015 12:23:52 ******/
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
