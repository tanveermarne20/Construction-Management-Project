--Clients Table:
CREATE TABLE CLIENTS(
 ClientID VARCHAR2(10) ,
 ClientName VARCHAR2(80),
 ContactPerson VARCHAR2(50),
 ContactNumber NUMBER(13),
 Email VARCHAR2(60),
 Address VARCHAR2(80),
 CONSTRAINT P_KEY_CLIENT PRIMARY KEY(ClientID)
);


--Projects Table:
CREATE TABLE PROJECTS(
 ProjectID  VARCHAR2(10),
 ProjectName VARCHAR2(70),
 ClientID VARCHAR2(5),
 StartDate DATE,
 EndDate DATE,
 ProjectManager VARCHAR2(40),
 SeniorEngineer varchar2(40),
 ProjectLocation varchar2(30),
 ProjectStatus  varchar2(20),
 FOREIGN KEY (ClientID) REFERENCES CLIENTS (ClientID) ON DELETE CASCADE ,
CONSTRAINT  P_KEYPROJECTS PRIMARY KEY (ProjectID)
 );
 
 
--Employees Table:
CREATE TABLE EMPLOYEES(
 EmployeeID VARCHAR2(10),
 FirstName VARCHAR2(25),
 LastName VARCHAR2(25),
 ContactNumber NUMBER(13),
 Email VARCHAR2(80),
 Position VARCHAR2(30),
 JoiningDate DATE,
 Salary NUMBER(8),
CONSTRAINT P_KEYEMPLOYEES PRIMARY KEY (EMPLOYEEID) 
);


--Materials Table:
CREATE TABLE MATERIALS (
 MaterialID VARCHAR2(5),
 MaterialName VARCHAR2(30),
 UnitPrice NUMBER(6),
 QuantityAvailable NUMBER(6),
 Supplier VARCHAR2(30),
 LastPurchaseDate DATE,
CONSTRAINT P_KEYMATERIALS PRIMARY KEY (MaterialID)
);



--ConstructionActivities Table:
CREATE TABLE PROJECTACTIVITIES(
ActivityID NUMBER(10),
ProjectID VARCHAR2(10),
ActivityName VARCHAR2(30),
StartDate DATE,
EndDate DATE,
AssignedEmployeeID VARCHAR2(10),
Status VARCHAR2(30),
FOREIGN KEY (ProjectID) REFERENCES PROJECTS (ProjectID) ON DELETE CASCADE ,
FOREIGN KEY (AssignedEmployeeID) REFERENCES EMPLOYEES (EmployeeID) ON DELETE CASCADE 
);


--------------------------------------------
