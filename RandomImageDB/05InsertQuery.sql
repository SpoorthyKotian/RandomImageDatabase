USE [RandomImageDB]
GO

-----Insert data into Images table
INSERT INTO [dbo].[Images] ([ImageName]) VALUES ('Kangaroo.jpg')
GO
INSERT INTO [dbo].[Images] ([ImageName]) VALUES ('Elephant.jpg')
GO
INSERT INTO [dbo].[Images] ([ImageName]) VALUES ('Kitten.jpg')
GO
INSERT INTO [dbo].[Images] ([ImageName]) VALUES ('Koala.jpg')
GO
INSERT INTO [dbo].[Images] ([ImageName]) VALUES ('Puppy.jpg')
GO
INSERT INTO [dbo].[Images] ([ImageName]) VALUES ('Giraffe.jpg')
GO
INSERT INTO [dbo].[Images] ([ImageName]) VALUES ('Lion.jpg')
GO
INSERT INTO [dbo].[Images] ([ImageName]) VALUES ('Rabbit.jpg')
GO
INSERT INTO [dbo].[Images] ([ImageName]) VALUES ('Tiger.jpg')
GO
INSERT INTO [dbo].[Images] ([ImageName]) VALUES ('Leopard.jpg')
GO


-----Insert data into Users table
INSERT INTO [dbo].[Users] ([Username],[Password]) VALUES ('Admin','123')
GO
INSERT INTO [dbo].[Users] ([Username],[Password]) VALUES ('Guest','123')
GO
INSERT INTO [dbo].[Users] ([Username],[Password]) VALUES ('John','123')
GO
INSERT INTO [dbo].[Users] ([Username],[Password]) VALUES ('Mary','123')
GO


-----Likes table gets populated as when you like or dislike images
