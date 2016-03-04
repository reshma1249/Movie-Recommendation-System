USE [MovieRecommendation]
GO

/****** Stored Procedure for Login [dbo].[uspGetUserDetails]  ******/
USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspGetUserDetails]
    @UserName [varchar](100),
	@Password [varchar](100)
AS 

    SELECT [ID], [UserName] ,[FirstName] ,[LastName] ,[EMail] ,[Gender] ,[Profile] ,[DateOfBirth] ,[Country] 
	FROM [dbo].[Users] WHERE (LOWER([UserName])=LOWER(@UserName) AND [Password]=@Password);
	RETURN
GO

/****** Stored Procedure for Registration [dbo].[uspAddNewUserDetails]  ******/
USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspAddNewUserDetails]
    @UserName [varchar](100),
	@Password [varchar](100),
	@FirstName [varchar](100), 
    @LastName [varchar](100),
	@EMail [varchar](100),
    @Gender [varchar](100),
    @Profile [varchar](100),
    @DateOfBirth DATETIME,
	@Country [varchar](100)
AS 

    INSERT INTO [dbo].[Users] ([UserName] ,[Password] ,[FirstName] ,[LastName] ,[EMail] ,[Gender] ,[Profile] ,[DateOfBirth] ,[Country])
     VALUES ( @UserName, @Password,	@FirstName, @LastName, @EMail, @Gender, @Profile, @DateOfBirth, @Country);

	 SELECT [ID] FROM [dbo].[Users] WHERE [UserName] = @UserName;
	 RETURN 

GO


/****** Stored Procedure for Update User Details [dbo].[uspUpdateUserDetails]  ******/
USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspUpdateUserDetails]
    @ID INT,
    @UserName [varchar](100),
	@FirstName [varchar](100), 
    @LastName [varchar](100),
	@EMail [varchar](100),
    @Gender [varchar](100),
    @DateOfBirth DATETIME,
	@Country [varchar](100)
AS 

     UPDATE [dbo].[Users] 
	 SET [UserName] = @UserName
	 ,[FirstName] = @FirstName
	 ,[LastName] = @LastName
	 ,[EMail] = @EMail 
	 ,[Gender] = @Gender
	 ,[DateOfBirth] = @DateOfBirth
	 ,[Country]=  @Country
      WHERE [ID] = @ID;

	 RETURN 

GO


/****** Stored Procedure for Update User Details [dbo].[uspUpdateUserPassword]  ******/
USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspUpdateUserPassword]
    @ID INT,
    @Password [varchar](100)
AS 
     UPDATE [dbo].[Users] 
	 SET [Password] = @Password
     WHERE [ID] = @ID;

	 RETURN 
GO

/****** Stored Procedure for Add New Movie into Database [dbo].[uspUpdateUserPassword]  ******/

USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspAddNewMovie]
    @Name [varchar](100),
	@ReleseDate DATETIME,
	@Genre [varchar](100),
	@Description [varchar](MAX), 
    @AvgRating [decimal](2,2),
	@TotalRatings INT,
	@Country [varchar](100),
	@Category [varchar](100),
    @Tags [varchar](100) 
AS 

    INSERT INTO [dbo].[Movies] ([Name] ,[ReleaseDate] ,[Genre] ,[Description] ,[AvgRating] ,[TotalRatings] ,[Country] ,[Category] ,[Tags])
     VALUES ( @Name, @ReleseDate, @Genre, @Description, @AvgRating, @TotalRatings, @Country, @Category, @Tags);

	 SELECT MAX([ID]) AS ID FROM [dbo].[Movies] WHERE [Name] = @Name;

	 RETURN 

GO


USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspAGetAllMovies]
    
AS 

    SELECT [ID] ,[Name] ,[ReleaseDate] ,[Genre] ,[Description] ,[AvgRating] ,[TotalRatings] ,[Country] ,[Category] ,[Tags] 
	FROM 
	[dbo].[Movies]; 
	RETURN 

GO


/****** Stored Procedure for Update Movie Details [dbo].[uspUpdateUserDetails]  ******/
USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspUpdateMovieDetails]
    @ID INT,
    @Name [varchar](100),
	@ReleseDate DATETIME,
	@Genre [varchar](100),
	@Description [varchar](MAX), 
	@Country [varchar](100),
    @Tags [varchar](100) 
AS 
     UPDATE [dbo].[Movies] 
	 SET [Name] = @Name
	 ,[ReleaseDate] = @ReleseDate
	 ,[Genre] = @Genre
	 ,[Description] = @Description 
	 ,[Country] = @Country 
	 ,[Tags] = @Tags
      WHERE [ID] = @ID;

	 RETURN 

GO

/*************** Get Movie Ratings ************************/

USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspAGetRatedMovies]
     @UserID INT,
    @MovieID INT
AS 

   SELECT [Rating]
   FROM [dbo].[MovieRatings]
   WHERE [UserID]=@UserID AND [MovieID]=@MovieID;
   RETURN 

GO





/****** Stored Procedure for Update Movie Details [dbo].[uspUpdateUserDetails]  ******/
USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspRateMovies]
    @UserID INT,
    @MovieID INT,
    @Rating INT
AS 
DECLARE @filter int
    SET @filter = ( SELECT [Rating] from [dbo].[MovieRatings] WHERE [UserID]=@UserID AND [MovieID]= @MovieID);
BEGIN  TRAN
IF EXISTS (SELECT [Rating] from [dbo].[MovieRatings] WHERE [UserID]=@UserID AND [MovieID]= @MovieID)
BEGIN  
 UPDATE [dbo].[MovieRatings] SET [Rating] =@Rating where [UserID]=@UserID AND [MovieID]= @MovieID;
 UPDATE [dbo].[Movies] SET [AvgRating] =(SELECT ROUND(AVG(CAST([Rating] AS FLOAT)), 2)  FROM [dbo].[MovieRatings] where [MovieID]=@MovieID) WHERE [ID]=@MovieID; 
END
ELSE
BEGIN  
INSERT INTO [dbo].[MovieRatings] ([UserID], [MovieID], [Rating])
VALUES
(@UserID, @MovieID, @Rating);
UPDATE [dbo].[Movies] SET [AvgRating] =(SELECT ROUND(AVG(CAST([Rating] AS FLOAT)), 2)  FROM [dbo].[MovieRatings] where [MovieID]=@MovieID)
,[TotalRatings] = [TotalRatings]+1 WHERE [ID]=@MovieID; 

END
COMMIT TRAN
RETURN 

GO


/*********************  User Rated Movies  *************/
USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspAGetAllRatedMovies]
      @UserID INT
AS 

    SELECT M.[ID] ,M.[Name] ,M.[ReleaseDate] ,M.[Genre] ,M.[Description] ,M.[AvgRating] ,M.[TotalRatings] ,M.[Country] ,M.[Category] ,M.[Tags], MR.Rating 
	FROM [dbo].[Movies] AS M INNER JOIN [dbo].[MovieRatings] AS MR 
	ON M.[ID]=MR.[MovieID]
	WHERE MR.[UserID]=@UserID; 
	RETURN 

GO


USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspDeleteMovie]
    @MovieID INT
    
AS 
    DELETE FROM [dbo].[Movies]
      WHERE [ID] = @MovieID;

	 RETURN 

GO


USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspAGetMoviesCount]
    
AS 

    SELECT Count(*) AS Count
	FROM 
	[dbo].[Movies]; 
	RETURN 

GO


USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspGetUsersCount]
    
AS 

    SELECT Count(*) AS Count
	FROM 
	[dbo].[Users]; 
	RETURN 

GO



USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspAGetRatedMoviesList]
    
AS 

    SELECT [UserID]
      ,[MovieID]
      ,[Rating]
  FROM [dbo].[MovieRatings];
	RETURN 

GO


USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspGetAllRecommendedMovies]
    @MovieID [varchar](100)
AS 

    SELECT [ID] ,[Name] ,[ReleaseDate] ,[Genre] ,[Description] ,[AvgRating] ,[TotalRatings] ,[Country] ,[Category] ,[Tags] 
	FROM [dbo].[Movies]
	WHERE ID = @MovieID; 
	RETURN 

GO

USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspAddMovieComment]
	@UserID [int] ,
    @UserName [varchar](100),
	@MovieID [int] ,
    @Comment [varchar](MAX)
AS 

   INSERT INTO [dbo].[Comments]
           ([UserID]
           ,[UserName]
           ,[MovieID]
           ,[Comment])
		   
     VALUES
           (@UserID
           , @UserName 
           ,@MovieID
           , @Comment);
	RETURN
GO


USE [MovieRecommendation]
GO
CREATE PROCEDURE [dbo].[uspGetMovieComment]
	@MovieID [int] 
AS 

   SELECT 
	   [UserID]
      ,[UserName]
      ,[Comment]
      ,[CreatedOn]
  FROM [dbo].[Comments]
  WHERE [MovieID] = @MovieID
  ORDER BY [CreatedOn] DESC;
	RETURN
GO
