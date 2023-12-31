USE [ashComics]
GO
/****** Object:  StoredProcedure [dbo].[Subscription_Insert]    Script Date: 10/22/2023 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saavedra, Alex
-- Create date: 10/20/2023
-- Description:	Create new Subscription types
-- =============================================
ALTER PROCEDURE [dbo].[Subscription_Insert]
				
				@SubscriptionName nvarchar(50)
				,@SubscriptionId int OUTPUT

AS
/*
		DECLARE @NewSubscriptionId int
				,@SubscriptionName nvarchar(50) = 'Basic'
				

		EXECUTE [dbo].[Subscription_Insert]
				@SubscriptionName = @SubscriptionName
				,@SubscriptionId = @NewSubscriptionId OUTPUT

		SELECT	*
		FROM	[dbo].[Subscriptions]
		WHERE	[SubscriptionId] = @NewSubscriptionId
				
*/


BEGIN
	SET NOCOUNT ON;

	SELECT	@SubscriptionId = SubscriptionId
	FROM	[dbo].[Subscriptions]
	WHERE	SubscriptionName = @SubscriptionName;

	--This checks if it doesn't exist, it will insert it into the table
	IF @SubscriptionId IS NULL
		BEGIN
			INSERT INTO [dbo].[Subscriptions]
						(SubscriptionName)

			VALUES		(@SubscriptionName);

			SET @SubscriptionId = SCOPE_IDENTITY();
		END

	SELECT	*
	FROM	[dbo].[Subscriptions]
	WHERE	[SubscriptionId] = @SubscriptionId;

END
