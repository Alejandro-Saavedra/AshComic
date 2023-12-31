USE [ashComics]
GO
/****** Object:  StoredProcedure [dbo].[User_Role_Update]    Script Date: 10/22/2023 9:52:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saavedra, Alex
-- Create date: 10/20/2023
-- Description:	Updates a users role
-- =============================================
ALTER PROCEDURE [dbo].[User_Role_Update]
				
		@UserId int
		,@RoleId int 
	


AS
/*

		DECLARE @UserId int = 3
				,@RoleId int = 2

		SELECT *
		FROM [dbo].[Users]
		WHERE UserId = @UserId;

		Exec [dbo].[User_Role_Update]

				@UserId
				,@RoleId

		SELECT *
		FROM [dbo].[Users]
		WHERE UserId = @UserId;
*/
BEGIN


		UPDATE [dbo].[Users]

		SET [RoleId] = @RoleId
				
			
		FROM [dbo].[Users]
		WHERE [UserId] = @UserId
END
