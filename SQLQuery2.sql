CREATE DATABASE P322
USE P322
CREATE TABLE Countries(
Id int primary key identity,
Name nvarchar(50),
Population decimal(18,2),
Area decimal (18,2)

)
CREATE TABLE Cities(
Id int primary key identity,
Name nvarchar(50),
Population decimal(18,2),
Area decimal (18,2),
CountryId int references Countries(Id)

)
SELECT c.Name 'CityName', c.Population 'CityPopulation', c.Area
'CityArea' ,cn.Name 'CountryName'   From Cities c
 JOIN Countries cn
ON
 c.Id=cn.Id

 SELECT c.Name 'CityName', c.Population 'CityPopulation', c.Area
'CityArea' ,cn.Name 'CountryName'   From Cities c
Right JOIN Countries cn
ON
 c.Id=cn.Id
 Create table Positions(
 Id int primary key identity ,
 Name nvarchar(50),
 DependiD int 
 )
 Select p.Name 'Position name', p1.Name 'Depend name' From Positions p,
  Positions p1
 Where p.DependiD=p1.Id
Alter Table Cities Add More nvarchar(50)
Select * from Cities
CREATE TABLE Students(
Id int primary key identity,
Name nvarchar(50),
Point int

)
CREATE TABLE Greades(
Id int primary key identity,
Name nvarchar(50),
Point int

)
Create View Readdatafromcity
AS
Select c.Name 'CityName', c.Id' Citiid' ,   c.Name'Countries  name' from Cities c
JOIn Countries cn
ON
C.CountryId=cn.Id
Drop View Readdatafromcity

Select * From Readdatafromcity
-- procedure
Create Procedure  usp_getCitybyId @id int 
As
Select * from Cities
where id=@id
exec usp_getCitybyId 1
Select Count (*) From Readdatafromcity
--func
Create Function ReturnCityCount ()
RETURNS int 
As 
begin
declare @count int 
select  @count=Count (*)  From Cities
return @count 
End 
SELECT  Dbo.ReturnCityCount()

-- Trigge 


Create trigger ReadDataAfdterdeleteCity
On Cities
After Delete 
AS 
bEGIN
Select *from Cities
end
Delete from Cities Where id=2





















