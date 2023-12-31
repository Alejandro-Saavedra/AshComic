USE [ashComics]
GO
/****** Object:  StoredProcedure [dbo].[RoleType_Select]    Script Date: 10/22/2023 9:45:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saavedra, Alejandro
-- Create date: 10/20/2023
-- Description:	Retrieves All Users of a certain role
-- =============================================
ALTER PROCEDURE [dbo].[RoleType_Select] 
				@RoleId int
	
AS
/*
		DECLARE @RoleId int = 2

		EXECUTE [dbo].[RoleType_Select]
				@RoleId

		

*/


BEGIN

	SET NOCOUNT ON;

	SELECT UserId,Role
	FROM [dbo].[Users] as u
	INNER JOIN [dbo].[Roles] as r ON u.RoleId = r.RoleId 
	WHERE u.RoleId = @RoleId;
END
