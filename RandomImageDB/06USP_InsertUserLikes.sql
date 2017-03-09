USE [RandomImageDB]
GO

/****** Object:  StoredProcedure [dbo].[USP_InsertUserLikes]    Script Date: 9/03/2017 11:47:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[USP_InsertUserLikes]
       @UserId INT,
       @ImageId INT,
	   @like INT
AS BEGIN

    IF NOT EXISTS (SELECT * FROM Likes WHERE UserId = @UserId AND ImageId= @ImageId)
INSERT INTO Likes (UserId,ImageId,Likes)
VALUES(@UserId,@ImageId,@Like)
ELSE
UPDATE Likes
SET  Likes=@Like 
WHERE UserId = @UserId AND ImageId = @ImageId

END
GO

/* Example to execute the SP
exec USP_InsertUserLikes 2,5,1
*/

