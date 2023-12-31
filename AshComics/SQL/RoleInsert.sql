USE [ashComics]
GO
/****** Object:  StoredProcedure [dbo].[Role_Insert]    Script Date: 10/22/2023 9:45:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Saavedra, Alex
-- Create date: 10/20/2023
-- Description:	Creates new roles for members
-- =============================================
ALTER PROCEDURE [dbo].[Role_Insert]
				
				@Role nvarchar(50)
				,@RoleId int OUTPUT
			
AS

/*
		Declare @NewRoleId int
				,@Role nvarchar(50) = 'Guest'

		EXECUTE [dbo].[Role_insert]
				@Role = @Role
				,@RoleId = @NewRoleId OUTPUT
				

		SELECT *
		FROM [dbo].[Roles]
		WHERE [RoleId] = @NewRoleId

*/



BEGIN
	SET NOCOUNT ON;

	SELECT	@RoleId = RoleId
	FROM	[dbo].[Roles]
	WHERE	Role = @Role;

	IF @RoleId IS NULL
		BEGIN 
			INSERT INTO [dbo].[Roles]
					(Role)

			Values	(@Role)

			SET @RoleId = SCOPE_IDENTITY();
		END

	SELECT	@RoleId = RoleId
	FROM	[dbo].[Roles]
	WHERE	Role = @Role;

END
