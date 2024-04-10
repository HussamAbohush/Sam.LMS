/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
if not exists (select  1 from dbo.Books)
begin
    insert into dbo.Books(ISBN,Title,Author)
    values ('9780132350884','Clean Code: A Handbook of Agile Software Craftsmanship','Robert C. Martin'),
    ('9781285852744','C++ Programming: From Problem Analysis to Program Design','Malik, D. S'),
    ('9780072467505','Introduction to Computing Systems: From Bits and Gates to C and Beyond','Yale N. Patt'),
    ('9781803237800','C# 11 and .NET 7 – Modern Cross-Platform Development Fundamentals','Price, Mark J')
end