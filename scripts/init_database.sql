/*
=====================
Create Database and Schemas

=========================================
Script Purpose:
	This script creates a new database named  'DataWarehouse' afterchecking if it already exists.
	If the DB exists, it is dropped and recreated. Additionally, the script sets up three Schemas within the DB:'bronze', 'silver' and 'gold'

WARNING:
	Running this script will drop the entire DWH database if it exists.
	All data in the DB will be permanently deleted. Proceed with caution 
	and ensure you have proper backups befor running this script.
*/


USE master;
GO

--Drop and recreate the 'DataWarehouse' database

IF EXISTS (SELECT 1 FROM sys.dtatbases WHERE name = 'DataWarehouse')
BEGIN

	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;

END;
GO

--Create the DWH

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

--Create the Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
