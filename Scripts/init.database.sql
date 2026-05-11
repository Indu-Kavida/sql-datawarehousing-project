/*
=============================================================
SQL Data Warehouse Project - Database Initialization Script
=============================================================

Project Objective:
Build a modern SQL Data Warehouse using SQL Server for
data integration, analytics, and reporting.

Schemas Used:
1. Bronze  -> Raw Layer
2. Silver  -> Cleaned & Transformed Layer
3. Gold    -> Business & Analytics Layer

Author : Indu
License: MIT
=============================================================
*/

-- =========================================================
-- USE MASTER DATABASE
-- =========================================================
USE master;
GO

-- =========================================================
-- DROP DATABASE IF IT ALREADY EXISTS
-- =========================================================
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse 
    SET SINGLE_USER 
    WITH ROLLBACK IMMEDIATE;

    DROP DATABASE DataWarehouse;
END;
GO

-- =========================================================
-- CREATE NEW DATABASE
-- =========================================================
CREATE DATABASE DataWarehouse;
GO

-- =========================================================
-- USE DATAWAREHOUSE DATABASE
-- =========================================================
USE DataWarehouse;
GO

-- =========================================================
-- CREATE BRONZE SCHEMA
-- Purpose: Store Raw Data from Source Systems
-- =========================================================
CREATE SCHEMA Bronze;
GO

-- =========================================================
-- CREATE SILVER SCHEMA
-- Purpose: Store Cleaned and Transformed Data
-- =========================================================
CREATE SCHEMA Silver;
GO

-- =========================================================
-- CREATE GOLD SCHEMA
-- Purpose: Store Business-Level Analytical Data
-- =========================================================
CREATE SCHEMA Gold;
GO
*/
