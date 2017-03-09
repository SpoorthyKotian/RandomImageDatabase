USE [RandomImageDB]
GO

/****** Object:  StoredProcedure [dbo].[USP_GetUserLikedImages]    Script Date: 9/03/2017 11:47:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_GetUserLikedImages]
       @UserId INT
AS BEGIN

  SELECT ImageName FROM Images
  INNER JOIN Likes ON Likes.ImageId = Images.ImageId
  WHERE UserId = @UserId and Likes=1;

END
GO

/* Example to execute the SP
exec USP_GetUserLikedImages 1
*/