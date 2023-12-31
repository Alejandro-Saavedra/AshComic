USE [ashComics]
GO
/****** Object:  StoredProcedure [dbo].[User_Subscription_Update]    Script Date: 10/22/2023 9:54:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saavedra, Alex
-- Create date: 10/20/2023
-- Description:	Updates a users Subscription
-- =============================================
ALTER PROCEDURE [dbo].[User_Subscription_Update]
				
		@UserId int
		,@SubscriptionId int 
	


AS
/*

		DECLARE @UserId int = 3
				,@SubscriptionId int = 1

		SELECT *
		FROM [dbo].[Users]
		WHERE UserId = @UserId;

		Exec [dbo].[User_Subscription_Update]

				@UserId
				,@SubscriptionId

		SELECT *
		FROM [dbo].[Users]
		WHERE UserId = @UserId;
*/
BEGIN


		UPDATE [dbo].[Users]

		SET [SubscriptionId] = @SubscriptionId
				
			
		FROM [dbo].[Users]
		WHERE [UserId] = @UserId
END
