CREATE DATABASE AssignmentDWH;
USE AssignmentDWH;

GO
-- Create the source table
CREATE TABLE Employee_Q3 (
    ID INT,
    Name VARCHAR(255),
    City VARCHAR(255),
    Email VARCHAR(255),
    Schedule_Date DATE
);

-- Populate the source table with sample data


INSERT INTO Employee_Q3 (ID, Name, City, Email, Schedule_Date)
VALUES
    (1001, 'Ahmed', 'zayed1ppppp', 'ahmed@mail.com', GETDATE()+1),
    (1002, 'Mohamed', 'zayed2ddd', 'nehal@mail.com', GETDATE()+1),
    (1003, 'zeyad', 'zayed3mmmmm', 'asem@mail.com', GETDATE()+1);

SELECT * FROM Employee_Q3;

--TRUNCATE TABLE Employee_Q3;


-- Create the target table if it doesn't exist
CREATE TABLE Target_Table (
    Emp_Key INT IDENTITY(1,1) PRIMARY KEY,
    ID INT,
    Name VARCHAR(255),
    City VARCHAR(255),
    Email VARCHAR(255),
    Insert_Date DATE,
    Active_Flag INT,
    Version_No INT
);


SELECT* FROM Target_Table;

--TRUNCATE TABLE Target_Table;



-----------------------------Q2
--DROP TABLE Employee_Q2
CREATE TABLE Employee_Q2 (
    ID INT,
    Name VARCHAR(50),
    City VARCHAR(50),
    Email VARCHAR(100),
    Update_Date datetime,
);

INSERT INTO Employee_Q2 (ID, Name, City, Email, Update_Date) 
VALUES 
(1001, 'Ahmed', 'Cairo', 'ahmed@mail.com', '2024-04-20'),
(1002, 'Nehal', 'Giza', 'nehal@mail.com', '2024-04-20'),
(1003, 'Asem', 'Cairo', 'asem@mail.com', '2024-04-20');




-- Create the target table
CREATE TABLE Employee_Latest (
    ID INT PRIMARY KEY,
    Name VARCHAR(255),
    City VARCHAR(255),
    Email VARCHAR(255),
    Update_Date datetime,
);

-- Insert changes into the history table
Drop table Employee_History
CREATE TABLE Employee_History (
    History_ID INT IDENTITY(1,1) PRIMARY KEY,
    ID INT,
    Name VARCHAR(255),
    City VARCHAR(255),
    Email VARCHAR(255),
    Update_Date DATEtime,
    End_Date DATE
);
CREATE TABLE Config_table(
	table_name VARCHAR(255),
	last_extract_date datetime
);
INSERT INTO Config_table (table_name,last_extract_date)
VALUES ('Employee_Q2','1950-1-1');
SELECT * FROM Employee_Q2 ;
SELECT * FROM Employee_Latest ;
SELECT * FROM Employee_History ;
SELECT * FROM Config_table;

TRUNCATE TABLE Employee_Q2;
TRUNCATE TABLE Employee_Latest;
TRUNCATE TABLE Employee_History;
TRUNCATE TABLE Config_table;

--------------------Q4
CREATE TABLE Attendance_Device 
(
    id				smallint PRIMARY KEY,
    employee_id		smallint,
    finger_print_ts	datetime,
    in_out			varchar(3)
);

INSERT INTO Attendance_Device (id, employee_id, finger_print_ts, in_out) VALUES
	('1', '101', '2024-03-12 9:00:00', 'in'),
	('2', '101', '2024-03-12 10:00:00', 'in'),
	('3', '102', '2024-03-12 9:00:00', 'in'),
	('4', '103', '2024-03-12 11:00:00', 'in'),
	('5', '104', '2024-03-12 9:15:00', 'in'),
	('6', '105', '2024-03-12 10:00:00', 'in'),
	('7', '105', '2024-03-12 11:00:00', 'in'),
	('8', '105', '2024-03-12 11:30:00', 'in'),
	('9', '106', '2024-03-12 9:00:00', 'in'),
	('10', '107', '2024-03-12 9:00:00', 'in'),
	('11', '108', '2024-03-12 9:00:00', 'in'),
	('12', '101', '2024-03-12 9:00:00', 'out'),
	('13', '101', '2024-03-12 17:00:00', 'out'),
	('14', '101', '2024-03-12 19:00:00', 'out'),
	('15', '102', '2024-03-12 17:00:00', 'out'),
	('16', '103', '2024-03-12 17:00:00', 'out'),
	('17', '105', '2024-03-12 10:00:00', 'out'),
	('18', '105', '2024-03-12 11:00:00', 'out'),
	('19', '105', '2024-03-12 18:00:00', 'out'),
	('20', '106', '2024-03-12 19:00:00', 'out'),
	('21', '107', '2024-03-12 14:00:00', 'out'),
	('22', '108', '2024-03-12 17:00:00', 'out');


SELECT * FROM Attendance_Device;
--TERUNCATE TABLE Attendance_Device;
Drop Table Employee_Attendance_Details
CREATE TABLE Employee_Attendance_Details (
    Att_Key smallint IDENTITY(1,1) PRIMARY KEY,
    Emp_ID smallint,
    Date DATE,
    Time_In NVARCHAR(5),
    Time_Out NVARCHAR(5), 
    Worked_Hours smallint,
    State NVARCHAR(50)
);


SELECT * FROM Attendance_Device;
SELECT * FROM Employee_Attendance_Details;

TRUNCATE TABLE Employee_Attendance_Details;
TRUNCATE TABLE Attendance_Device;


CREATE TABLE University (
    Name NVARCHAR(MAX),
    StateProvince NVARCHAR(MAX),
    Domains NVARCHAR(MAX),
    WebPages NVARCHAR(MAX),
    Country NVARCHAR(MAX),
    AlphaTwoCode NVARCHAR(2)
);


SELECT * FROM University 
order by Name;

TRUNCATE TABLE University;
