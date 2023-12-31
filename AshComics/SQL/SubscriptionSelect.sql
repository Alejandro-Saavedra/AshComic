USE [ashComics]
GO
/****** Object:  StoredProcedure [dbo].[SubscriptionType_Select]    Script Date: 10/22/2023 9:48:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saavedra, Alejandro
-- Create date: 10/20/2023
-- Description:	Retrieves users with a subscription subscription type
-- =============================================
ALTER PROCEDURE [dbo].[SubscriptionType_Select]

				@SubscriptionId int
	
AS
/*
		DECLARE @SubscriptionId int = 1

		Exec [dbo].[SubscriptionType_Select]
				@SubscriptionId

*/
BEGIN

	SET NOCOUNT ON;

	SELECT	UserId, s.SubscriptionName
	FROM	[dbo].[Users] as u
	JOIN	[dbo].[Subscriptions] as s ON u.SubscriptionId = s.SubscriptionId
	WHERE	u.SubscriptionId = @SubscriptionId
	
END
