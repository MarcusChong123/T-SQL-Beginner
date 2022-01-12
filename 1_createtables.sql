
-- Creating tblCustomer
CREATE TABLE [dbo].[tblCustomer] (
	[CustomerNumber] int NOT NULL, 
	[CustomerFirstName] varchar(50) NOT NULL, 
	[CustomerMiddleName] varchar(50) NULL, 
	[CustomerLastName] varchar(50) NOT NULL, 
	[CustomerIC] char(10) NOT NULL, 
	[DateOfBirth] date NOT NULL, 
	[Location] varchar(19) NULL
)

-- Creating tblTransaction
CREATE TABLE [dbo].[tblTransaction] (
	[Amount] smallmoney NOT NULL, 
	[DateOfTransaction] smalldatetime NOT NULL, 
	[CustomerNumber] int NOT NULL
)

-- Creating tblLocation
CREATE TABLE [dbo].[tblLocation] (
	[Location] varchar(19) NULL, 
	[LocationHead] varchar(19) NULL
)