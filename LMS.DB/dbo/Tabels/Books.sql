CREATE TABLE [dbo].[Books]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ISBN] NVARCHAR(50) NOT NULL, 
    [Title] NVARCHAR(100) NOT NULL, 
    [Author] NVARCHAR(50) NOT NULL, 
    [Descrption] NVARCHAR(150) NULL, 
    [UserId] INT NULL, 
    CONSTRAINT [FK_Books_UsersTables] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]), 
    
)
