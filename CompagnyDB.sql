Create database CompagnyDB;
create table Employee (EmployeeID int primary Key,
                       FirstName varchar (50),
					   LastName varchar (50),
					   Title Varchar (50),
					   BirthDate Date,
					   HireDate date,
					   City varchar (50),
					   Country varchar (50)
                       );
Create Table Departement ( DepartmentID int Primary Key,
                           DepartmemtName varchar (50)
                          );
Alter table Employee Add DepartmentID int;
ALTER TABLE Employee ADD CONSTRAINT fk_dep FOREIGN KEY (DepartmentID) REFERENCES Departement (DepartmentID);
insert into Departement values (1, 'Human Resources');
insert into Departement values (2, 'IT');
insert into Departement values (3, 'Finance');
insert into Departement values (4, 'Sales');
insert into Departement values (5, 'Marketing');
insert into Employee values (1, 'John', 'Doe', 'Manager', '1980-01-15', '2010-06-01', 'New York', 'USA', 1);
insert into Employee values (2, 'Jane', 'Smith', 'Developer', '1990-02-20', '2015-03-15', 'San Francisco', 'USA', 2);
insert into Employee values (3, 'Michael', 'Brown', 'Accountant', '1985-07-22', '2011-11-30', 'Chicago', 'USA', 3);
insert into Employee values (4, 'Emily', 'Davis', 'HelpDesk', '1992-09-10', '2018-01-10', 'Los Angeles', 'USA', 2);
insert into Employee values (5, 'Ali', 'Daoud', 'Account Manager', '1988-07-10', '2014-03-22', 'Los Angeles', 'USA', 3);
insert into Employee values (6, 'Ahmad', 'Rio', 'Analyst', '1991-08-09', '2014-03-03', 'Los Angeles', 'USA', 3);
insert into Employee values (7, 'Robert', 'Man', 'Account Agent', '1987-09-01', '2012-07-10', 'Los Angeles', 'USA', 3);
insert into Employee values (8, 'Fafa', 'ortis', 'HelpDesk', '1990-10-10', '2017-06-30', 'Los Angeles', 'USA', 2);
insert into Employee values (9, 'Hitch', 'Meg', 'Account Agent', '1980-09-09', '2009-03-10', 'Los Angeles', 'USA', 3);
insert into Employee values (10, 'Claris', 'Otto', 'Account Agent', '1992-09-15', '2014-03-21', 'Los Angeles', 'USA', 3);
insert into Employee values (11, 'Melania', 'Ortega', 'Account Agent', '1988-12-12', '2018-05-12', 'Los Angeles', 'USA', 3);
insert into Employee values (12, 'Fransis', 'Justice', 'HelpDesk', '1988-07-07', '2018-02-10', 'Los Angeles', 'USA', 2);
insert into Employee values (13, 'Emilio', 'Ricci', 'IT Research', '1979-04-10', '2010-03-15', 'Los Angeles', 'USA', 2);
insert into Employee values (14, 'David', 'Claus', 'Account Agent', '1978-09-10', '2009-10-21', 'Los Angeles', 'USA', 3);
insert into Employee values (15, 'hiero', 'Alaves', 'Analyst Supervisor', '1993-08-10', '2017-02-10', 'Los Angeles', 'USA', 3);
insert into Employee values (16, 'Bertrand', 'Ledoux', 'Senior Analyst', '1995-01-10', '2020-01-10', 'Los Angeles', 'USA', 3);
insert into Employee values (17, 'Sarah', 'Jackson', 'HR Senior', '1989-12-04', '2021-06-10', 'Los Angeles', 'USA', 1);
insert into Employee values (18, 'Jazia', 'Iften', 'HR Agent', '1987-07-17', '2008-05-10', 'Los Angeles', 'USA', 1);
insert into Employee values (19, 'Nora', 'Jhons', 'HR Salary Manager', '1996-09-10', '2023-05-10', 'Los Angeles', 'USA', 1);
insert into Employee values (20, 'Barak', 'Woods', 'Salary Responsible', '1981-09-12', '2010-06-10', 'Los Angeles', 'USA', 1);
insert into Employee values (21, 'Emily', 'Davis', 'HR Correspondant', '1982-07-13', '2011-10-10', 'Los Angeles', 'USA', 1);
insert into Employee values (22, 'Stephen', 'Queen', 'HR Relational', '1976-01-01', '2000-01-01', 'Los Angeles', 'USA', 1);
insert into Employee values (23, 'Verane', 'Glen', 'Comptability Analiser', '1982-09-10', '2008-01-10', 'Los Angeles', 'USA', 3);
insert into Employee values (24, 'Ejey', 'Folk', 'Social Security', '1983-09-10', '2008-11-11', 'Los Angeles', 'USA', 3);
insert into Employee values (25, 'Samamtha', 'Edouards', 'Data Scientist', '1998-09-23', '2021-11-21', 'Los Angeles', 'USA', 2);
insert into Employee values (26, 'Michael', 'Hilton', 'Helps Desk', '1990-08-10', '2022-11-19', 'Los Angeles', 'USA', 2);
insert into Employee values (27, 'Tiago', 'Mores', 'Web Dev', '1990-12-07', '2023-03-21', 'Los Angeles', 'USA', 2);
insert into Employee values (28, 'Alfred', 'Champs', 'Web Dev', '1988-09-05', '2023-03-21', 'Los Angeles', 'USA', 2);
insert into Employee values (29, 'Mansour', 'Al Ansari', 'Web Dev', '1993-12-07', '2022-12-05', 'Los Angeles', 'USA', 2);

insert into Employee values (31, 'ABABA', 'OOOOO', 'ZZZZZ', '1993-12-07', '2022-12-05', 'New York', 'USA', 5);
insert into Employee values (32, 'AAAA', 'BBBBB', 'CCCCCC', '1993-12-07', '2022-12-05', 'New York', 'USA', 5);
update Employee set City = 'New York' where EmployeeID = 5;
update Employee set City = 'New York' where EmployeeID = 6;
update Employee set City = 'Chicago' where EmployeeID = 7;
update Employee set City = 'San Francisco' where EmployeeID = 8;
update Employee set City = 'Chicago' where EmployeeID = 9;
update Employee set City = 'New York' where EmployeeID = 10;
update Employee set City = 'Chicago' where EmployeeID = 11;
update Employee set City = 'San Francisco' where EmployeeID = 12;
update Employee set City = 'New York' where EmployeeID = 13;
update Employee set City = 'Chicago' where EmployeeID = 14;
update Employee set City = 'New York' where EmployeeID = 15;
update Employee set City = 'San Francisco' where EmployeeID = 16;
update Employee set City = 'Chicago' where EmployeeID = 17;
update Employee set City = 'Chicago' where EmployeeID = 18;
update Employee set City = 'Chicago' where EmployeeID = 19;
update Employee set City = 'New York' where EmployeeID = 20;
update Employee set City = 'San Francisco' where EmployeeID = 21;
update Employee set City = 'Chicago' where EmployeeID = 22;
update Employee set City = 'New York' where EmployeeID = 23;
update Employee set City = 'Chicago' where EmployeeID = 24;
update Employee set City = 'New York' where EmployeeID = 25;
update Employee set City = 'New York' where EmployeeID = 26;









-- 8.	Récupérez toutes les colonnes pour tous les employés.
select * From Employee;
-- 9.	Récupérez les prénoms et les titres des employés qui travaillent dans le département IT.
EXEC sp_rename 'Departement.DepartmemtName', 'DepartmentName', 'COLUMN'; -- modifier nom de la colonne DepartmemtName 
select Employee.FirstName, Employee.LastName
From Employee
Join Departement
On Employee.DepartmentID = Departement.DepartmentID
Where Departement.DepartmentName = 'IT';

-- 10.	Listez les noms de famille des employés qui ont été embauchés après 2015.
Select LastName
From Employee
Where HireDate > '2015-12-31';
-- 11.	Comptez le nombre total d'employés dans chaque département.
Select Count(EmployeeID) as [Nombre d employees], DepartmentID
From Employee
Group By DepartmentID;

-- 12.	Trouvez l'âge moyen des employés dans le département Finance.
-- Age des employees  :
Select  FirstName, LastName, DATEDIFF(Year, BirthDate, GETDATE()) as age
From Employee;
-- Moyenne d age :
Select  AVG (DATEDIFF(Year, BirthDate, GETDATE())) as agemoyen
From Employee E
Join Departement D
On E.DepartmentID=D.DepartmentID
where D.DepartmentName = 'Finance';


-- 13.	Trouvez la première date d'embauche dans l'entreprise.
Select Top 1 HireDate
From Employee
Order by HIredate Asc ;
Select min (HireDate)
From Employee;

-- 14.	Listez tous les employés avec les noms de leurs départements.
Select E.LastName, D.DepartmentName
From Employee E
Join Departement D
On D.DepartmentID = E.DepartmentID;


-- 15.	Récupérez les noms des employés qui travaillent dans la même ville
-- que le bureau de leur département 
-- (en supposant que chaque département a un bureau dans la ville de son premier employé).


Select E.FirstName, E.LastName, City, D.DepartmentID, E.HireDate
From Employee E
Join Departement D
On D.DepartmentID = E.DepartmentID
where D.DepartmentID = 1 and E.City = 'Chicago'
order by D.DepartmentID, E.HireDate;

Select E.FirstName, E.LastName, City, D.DepartmentID, E.HireDate
From Employee E
Join Departement D
On D.DepartmentID = E.DepartmentID
where D.DepartmentID = 2 and E.City = 'New York'
order by D.DepartmentID, E.HireDate;

Select E.FirstName, E.LastName, City, D.DepartmentID, E.HireDate
From Employee E
Join Departement D
On D.DepartmentID = E.DepartmentID
where D.DepartmentID = 3 and E.City = 'New York'
order by D.DepartmentID, E.HireDate;


SELECT E.FirstName, E.LastName, E.City, D.DepartmentID, E.HireDate
FROM Employee E
JOIN Departement D
ON D.DepartmentID = E.DepartmentID
WHERE 
    (D.DepartmentID = 1 AND E.City = 'Chicago')
    OR (D.DepartmentID = 2 AND E.City = 'New York')
    OR (D.DepartmentID = 3 AND E.City = 'New York')
ORDER BY D.DepartmentID, E.HireDate;

-- la solution :

SELECT E.FirstName, E.LastName, E.City, D.DepartmentID, E.HireDate
FROM Employee E
JOIN Departement D
ON D.DepartmentID = E.DepartmentID
WHERE  E.City = (
        SELECT TOP 1 E2.City
        FROM Employee E2
        WHERE E2.DepartmentID = D.DepartmentID
        ORDER BY E2.HireDate)
ORDER BY D.DepartmentID, E.HireDate;

-- 16.	Trouvez tous les départements qui n'ont aucun employé.

SELECT D.DepartmentID, D.DepartmentName
FROM Departement D
Left JOIN Employee E
ON D.DepartmentID = E.DepartmentID
WHERE E.DepartmentID IS NULL;


-- 17.	Trouvez les noms des employés qui sont dans l'entreprise depuis le plus longtemps.
Select  FirstName, LastName, DATEDIFF(Year, HireDate, GETDATE()) as year_work
From Employee
order by year_work desc;


-- 18.	Listez tous les employés qui sont plus âgés que l'âge moyen de tous les employés dans l'entreprise.

Select E.FirstName, E.LastName, E.BirthDate, DATEDIFF(Year, BirthDate, GETDATE()) as Age
From Employee E
Where DATEDIFF(Year, BirthDate, GETDATE()) > (Select AVG (DATEDIFF(Year, BirthDate, GETDATE())) 
             from Employee E1 
		)
order by Age;

-- 19.	Trouvez les départements qui ont plus d'employés que le nombre moyen d'employés par département.

select D.DepartmentID, D.DepartmentName, count(E.EmployeeID)
From Departement D
Join Employee E
On E.DepartmentID = D.DepartmentID
Group by D.DepartmentID, D.DepartmentName
Having Count(E.EmployeeID) > AVG(E.EmployeeID);

-- 20.	Trouvez les noms des employés qui travaillent soit dans le département IT, 
-- soit qui ont été embauchés après 2015, mais pas les deux.

SELECT E.FirstName, E.LastName, E.City, D.DepartmentID, E.HireDate
FROM Employee E
JOIN Departement D
ON D.DepartmentID = E.DepartmentID
WHERE  D.DepartmentName = 'IT' and E.HireDate < '2015-12-31'
order by E.HireDate;


-- 21.	Promouvez tous les employés avec le titre "Analyst" au titre "Senior Analyst".
  
Update employee set Title = 'Senior Analyst' Where Title = 'Analyst';
select * from Employee order by Title;


-- 22.	Mettez à jour le DepartmentID de l'employé nommé "Jane Smith" à 3 (département Finance).
select FirstName, LastName, DepartmentID From Employee;
update Employee set DepartmentID = 3 where FirstName = 'Jane' and LastName = 'Smith'; 

-- 23.	Attribuez la valeur NULL au DepartmentName pour les employés qui travaillent 
--      dans un département avec moins de 3 employés.
 
Update Departement
set DepartmentName = NULL
where DepartmentID = (Select D.DepartmentID 
                      From Departement D
                      Join Employee E
                      On D.DepartmentID = E.DepartmentID
					  Group By D.DepartmentID, D.DepartmentName
					  having count (E.EmployeeID) < 3 );

Select * from Departement


-- 24.	Supprimez tous les enregistrements des employés qui ont été embauchés avant 2000-01-02.
-- (22, 'Stephen', 'Queen', 'HR Relational', '1976-01-01', '2000-01-01', 'Los Angeles', 'USA', 1);

Delete From Employee where HireDate < '2000-01-02';


-- 25.	Supprimez l'enregistrement de l'employé "Emily Davis".

Delete From Employee where FirstName = 'Emily' and LastName = 'Davis';

-- 26.	Supprimez tous les employés dont l'âge est supérieur à l'âge moyen des employés dans leurs départements respectifs.

select E.DepartmentID, DATEDIFF(Year, E.BirthDate, GETDATE()) From Employee E
Join Departement D
On E.DepartmentID = D.DepartmentID
Order by E.DepartmentID; 

Delete From Employee 
where DATEDIFF(Year, BirthDate, GETDATE()) > (Select AVG(DATEDIFF(Year, E.BirthDate, GETDATE()))
                                              From Employee E
                                              Join Departement D
                                              On E.DepartmentID = D.DepartmentID)




Select D.DepartmentID, AVG(DATEDIFF(Year, E.BirthDate, GETDATE())) as AVG
From Employee E
Join Departement D
On E.DepartmentID = D.DepartmentID
Group By D.DepartmentID
Order by D.DepartmentID
--Where DATEDIFF(Year, BirthDate, GETDATE()) > (Select AVG (DATEDIFF(Year, BirthDate, GETDATE())) 
--             from Employee E1 
		)

