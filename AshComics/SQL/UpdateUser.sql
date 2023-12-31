USE [ashComics]
GO
/****** Object:  StoredProcedure [dbo].[Users_Update]    Script Date: 10/21/2023 9:33:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Saavedra, Alejandro
-- Create date: 10/16/2023
-- Description:	Procedure to update user
-- Code Reviewer: 

-- MODIFIED BY:
-- MODIFIED DATE:
-- Code Reviewer:
-- Note: Initial Creation.
-- =============================================
ALTER PROCEDURE [dbo].[Users_Update]

							@UserId int
							,@AvatarUrl nvarchar(255)
							,@FirstName nvarchar(50)
							,@MI nvarchar(2)
							,@LastName nvarchar(50)
							,@Email nvarchar(255)
							,@ModifiedBy int

AS
/*
					DECLARE @UserId int = 2
							,@AvatarUrl nvarchar(255) = 'https://cdn.britannica.com/06/150806-050-6AE99C98/Proboscis-monkey.jpg'
							,@FirstName nvarchar(50) = 'Alex'
							,@MI nvarchar(2) = 'as'
							,@LastName nvarchar(50) = 'Saavedra'
							,@Email nvarchar(50) = 'newEmail@lbcc.edu'
							,@ModifiedBy int = 1

					EXECUTE	[dbo].[Users_Update]
							@UserId
							,@AvatarUrl
							,@FirstName
							,@MI
							,@LastName
							,@Email
							,@ModifiedBy
													
					
					SELECT	*
					FROM	[dbo].[users]
					WHERE	[UserId] = @UserId

*/

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE	[dbo].[Users]

	SET		[AvatarUrl] = @AvatarUrl
			,[FirstName] = @FirstName
			,[MI] = @MI
			,[LastName] = @LastName
			,[Email] = @Email
			,[ModifiedBy] = @ModifiedBy
			,ModifiedDate = GETUTCDATE()

	WHERE	[UserId] = @UserId
			


END
