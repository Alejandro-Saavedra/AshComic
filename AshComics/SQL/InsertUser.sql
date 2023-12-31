USE [ashComics]
GO
/****** Object:  StoredProcedure [dbo].[Users_Insert]    Script Date: 10/21/2023 9:33:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saavedra, Alex
-- Create date: 10/15/2023
-- Description:	Insert user into table

-- MODIFIED BY:
-- MODIFIED DATE:
-- CODE REVIEWER:
-- NOTE: Initial creation
-- =============================================
ALTER PROCEDURE [dbo].[Users_Insert]
			@UserId int OUTPUT
			,@AvatarUrl nvarchar(255)
			,@FirstName nvarchar(50)
			,@MI nvarchar(2)
			,@LastName nvarchar(50)
			,@UserName nvarchar(255)
			,@Email nvarchar(255)
			,@Password nvarchar(255)
			,@RoleId int
			,@SubscriptionId int
			,@CreatedDate datetime2(7) OUTPUT
			,@ModifiedDate datetime2(7) OUTPUT
										
AS

/*
	DECLARE @NewId int 
			,@CreatedDate datetime2(7)
			,@ModifiedDate datetime2(7)
			,@AvatarUrl nvarchar(255) = 'https://cdn.britannica.com/06/150806-050-6AE99C98/Proboscis-monkey.jpg'
			,@FirstName nvarchar(50) = 'Alex'
			,@MI nvarchar(2) = ''
			,@LastName nvarchar(50) = 'Saavedra'
			,@UserName nvarchar(255) = 'Saavy'
			,@Email nvarchar(50) = 'emailio@mail.edu'
			,@Password nvarchar(255) = 'passywordo'
			,@RoleId int = 1
			,@SubscriptionId int = 1


	EXECUTE [dbo].[Users_Insert]
			@UserId = @NewId OUTPUT
			,@AvatarUrl = @AvatarUrl
			,@FirstName = @FirstName
			,@MI = @MI
			,@LastName = @LastName
			,@UserName = @UserName
			,@Email = @Email
			,@Password = @Password
			,@RoleId = @RoleId
			,@SubscriptionId = @SubscriptionId
			,@CreatedDate = @CreatedDate OUTPUT
			,@ModifiedDate = @ModifiedDate OUTPUT

	SELECT *
	FROM [dbo].[Users]
	WHERE [UserId] = @NewId

*/


BEGIN
	SET NOCOUNT ON;

	DECLARE @CurrentDate DATETIME2(7) = GETUTCDATE();

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Users]
			(AvatarUrl
			,FirstName
			,MI
			,LastName
			,UserName
			,Email
			,Password
			,RoleId
			,SubscriptionId
			,CreatedDate
			,ModifiedDate)

	VALUES (@AvatarUrl
			,@FirstName
			,@MI
			,@LastName
			,@UserName
			,@Email
			,@Password
			,@RoleId
			,@SubscriptionId
			,@CurrentDate
			,@CurrentDate)
	SET @UserId = SCOPE_IDENTITY();
	SET @CreatedDate = @CurrentDate;
	SET @ModifiedDate = @CurrentDate;
			
END
