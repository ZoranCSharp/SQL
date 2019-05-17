USE AdventureWorks2017
GO 
SELECT *
FROM sys.Tables
GO

CREATE PROCEDURE getPerson
AS
BEGIN
select BusinessEntityID ,FirstName, MiddleName, LastName, PersonType, ModifiedDate from Person.Person
END

sp_helptext getPerson

getPerson

GO
BEGIN
select * from AdventureWorks2017.sys.tables
END
GO

create procedure getPersonByPersonType2
@MiddleName nvarchar(2),
@BusinessEntityID int
as
begin 
	select FirstName, LastName from Person.Person where MiddleName = @MiddleName and BusinessEntityID = @BusinessEntityID
end

getPersonByPersonType2 'A', 5

select * from HumanResources.Employee

create procedure getJobTitle
@Gender nvarchar(20),
@VacationHours int,
@BirthDate datetime,
@EmployeeCount int output
As
Begin
	select @EmployeeCount = Count(BusinessEntityID) from HumanResources.Employee where Gender = @Gender
End

Declare @TotalCount int
Declare @TotalCountF int
Execute getJobTitle 'M', 44, '2009', @TotalCount Output
Execute getJobTitle 'F', 44, '2009', @TotalCountF Output
if(@TotalCount is null)
	Print 'TotalCount is null'
else
	Print  'TotalCount is: ' 

Print @TotalCount
Print @TotalCountF

HumanResources.Employee /*ALT + F1 info about table */

sp_help getJobTitle /*View the infoirmation about the stored procedure*/

sp_helptext getJobTitle /*View the Text of the stored procedure*/

sp_depends getJobTitle /*View the dependencies of the stored procedure*/


create procedure getPersonByID
as
Begin
	return (select COUNT(BusinessEntityID) from Person.Person)
End

Declare @Total int
Execute @Total = getPersonByID /*getPersonByID @Total output*/
print @Total


create procedure gentNameById
@BusinessEntityID int,
@FirstName nvarchar(20) output
As
Begin
	Select @FirstName = FirstName from Person.Person where BusinessEntityID = @BusinessEntityID
End

Declare @Name nvarchar(20)
Execute gentNameById 100, @Name output
Print 'Name = ' + @Name

create procedure gentNameById2
@BusinessEntityID int
As
Begin
	return (Select FirstName from Person.Person where BusinessEntityID = @BusinessEntityID)
End

Declare @Name nvarchar(20)
Execute @Name = gentNameById2 100
Print 'Name = ' + @Name


select ascii('A')
select char(65)

declare @start int
set @start = 48
while(@Start <= 57)
begin
	select char(@start)
	set @start = @start + 1
end

select  FirstName, ModifiedDate from person.person

select FirstName, ModifiedDate, CAST(ModifiedDate as nvarchar) as ConvertedDOB from person.person
select FirstName, ModifiedDate, CONVERT(nvarchar, ModifiedDate) as ConvertedDOB, CONVERT(nvarchar, ModifiedDate, 103) as StyledDate from person.person

select * from person.person

select BusinessEntityID, FirstName, LastName + ' - ' + CAST(MiddleName as nvarchar) as LastAndMiddle from Person.Person

select ModifiedDate, CONVERT(nvarchar, ModifiedDate, 100) as ModifiedDateNEW, COUNT(BusinessEntityID) as Total /*style can be from 100 - 105*/
from Person.Person
group by ModifiedDate
order by Total desc

select  abs (-2)
select floor(15.2)
select CEILING(15.2)
select power(5,2)
select square(9)
select sqrt(81)
select rand()
 

 declare @Counter int
 set @Counter = 1
 while (@Counter <= 100)
 begin
	print floor(rand()*100)
	set @Counter = @Counter +1
end

select round(25.255256, 10, 2)

select GETDATE()

create function calculateAge(@DOB Date)
returns int
as
begin
	declare @Age int

	set @Age = DATEDIFF(year, @DOB, GETDATE()) - 
				case
					when (month(@DOB) > MONTH(getdate())) or
						 (month(@DOB) = MONTH(getdate()) and day(@DOB) > DAY(getdate()))
						 then 1
						 else 0
						END
return @Age
end 

select dbo.calculateAge('10/08/1985') as HowOldAreYou


select  BusinessEntityID, LastName, FirstName, dbo.calculateAge(ModifiedDate) as Age from Person.Person
where dbo.calculateAge(ModifiedDate) > 10


