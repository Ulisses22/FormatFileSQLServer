-- CLASSIC CREATE TABLE
CREATE TABLE Countries(
    _id int identity(1,1) PRIMARY KEY,
    country nvarchar(50),
    latitude nvarchar(50),
    longitude nvarchar(50),
    name nvarchar(100)
)

--EXAMPLE BULK INSERT WITH FILE FORMAT XML:

BULK INSERT [Countries] 
FROM 'countries.csv'
WITH
(
    codepage = '65001',
    FIRSTROW = 2,
    KEEPNULLS,
    FORMATFILE='YourPath/formatFile.xml'
)
