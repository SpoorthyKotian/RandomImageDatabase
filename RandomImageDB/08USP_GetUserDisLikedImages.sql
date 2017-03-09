USE [RandomImageDB]
GO

/****** Object:  StoredProcedure [dbo].[USP_GetUserDisLikedImages]    Script Date: 9/03/2017 11:45:14 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_GetUserDisLikedImages]
       @UserId INT
AS BEGIN

  SELECT ImageName FROM Images
  INNER JOIN Likes ON Likes.ImageId = Images.ImageId
  WHERE UserId = @UserId and Likes=0;

END

GO

/* Example to execute the SP
exec USP_GetUserDisLikedImages 1
*/