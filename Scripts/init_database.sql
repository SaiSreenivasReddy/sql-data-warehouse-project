/*

Create Database and Schemas

Script Purpose:
This script creates a new database named 'DataWarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up 
three schemas within the database: 'bronze', 'silver', and 'gold'.

*/

-- Drop and recreate the database
DROP DATABASE IF EXISTS DataWarehouse;
CREATE DATABASE DataWarehouse;
USE DataWarehouse;

-- Create minimal tables to simulate schemas
CREATE TABLE bronze(
    dummy INT
);

CREATE TABLE silver(
    dummy INT
);

CREATE TABLE gold(
    dummy INT
);


