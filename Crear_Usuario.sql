/****** Object:  Login [dhornero]    Script Date: 01/25/2010 12:59:20 ******/
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [dhornero]    Script Date: 01/25/2010 12:59:20 ******/
CREATE LOGIN [dhornero] WITH PASSWORD=N'dahorweb', DEFAULT_DATABASE=[DAHOR], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [dhornero] DISABLE
GO
/****** Object:  User [dhornero]    Script Date: 01/25/2010 13:00:11 ******/
GO
CREATE USER [dhornero] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[db_owner]