USE [Movie Recommendation]
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


GO


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


USE [Movie Recommendation]
GO
CREATE PROCEDURE [dbo].[uspUpdateUserDetails]
	@ID [INT],
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
 
 UPDATE [dbo].[Users]
   SET [UserName] = @UserName
      ,[Password] = @Password
      ,[FirstName] = @FirstName
      ,[LastName] =  @LastName
      ,[EMail] = @EMail
      ,[Gender] = @Gender
      ,[Profile] = @Profile
      ,[DateOfBirth] = @DateOfBirth
      ,[Country] = @Country
 WHERE 
 [ID]=@ID
GO

GO

select * from users where id=70