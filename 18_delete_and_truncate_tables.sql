IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblLocation]') AND type in (N'U'))
DROP TABLE [dbo].[tblLocation]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCustomer]') AND type in (N'U'))
DROP TABLE [dbo].[tblCustomer]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransaction]') AND type in (N'U'))
DROP TABLE [dbo].[tblTransaction]



TRUNCATE TABLE [tblLocation];

TRUNCATE TABLE [tblCustomer];

TRUNCATE TABLE [tblTransaction];

