USE [ashComics]
GO
/****** Object:  StoredProcedure [dbo].[Art_Insert]    Script Date: 10/21/2023 9:32:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Saavedra, Alex
-- Create date: 10/29/2023
-- Description:	Inserting Art 
-- =============================================
ALTER PROCEDURE [dbo].[Art_Insert]
				@Art varbinary(MAX)
				,@Title nvarchar(75)
				,@Author nvarchar(50)
				,@Date date
				,@Id int OUTPUT

AS
/*
		DECLARE @NewId int
				,@ArtImage varbinary(MAX)
				,@Title nvarchar(75) = 'Sample'
				,@Author nvarchar(50) = 'John Doe'
				,@Date date = '10/21/2023'

		-- Using OPENROWSET to convert the image to varbinary
		SET @ArtImage = (SELECT * FROM OPENROWSET(BULK N'C:\temp\Lucy Cover Art Print medium.jpg', SINGLE_BLOB) AS Image);

		Exec [dbo].[Art_Insert]
				@ArtImage
				,@Title
				,@Author
				,@Date
				,@Id = @NewId OUTPUT

*/



BEGIN

	SET NOCOUNT ON;

	IF EXISTS (SELECT 1 FROM [dbo].[Art] WHERE Id = @Id)
		BEGIN
			UPDATE	[dbo].[Art]
			SET		[Art] = @Art
					,[Title] = @Title
					,[Author] = @Author
					,[Date] = @Date
			WHERE	[Id] = @Id;
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[Art]
						(Art
						,Title
						,Author
						,Date)
			VALUES		(@Art
						,@Title
						,@Author
						,@Date)
			SET @Id = SCOPE_IDENTITY();
		END

	SELECT	*
	FROM	[dbo].[Art]
	WHERE	Id = @Id;
END
