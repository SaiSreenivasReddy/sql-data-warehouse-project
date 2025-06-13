-- ==========================
-- BRONZE TABLES CREATION
-- ==========================

/*

DDL Script: Create Bronze Tables

Script Purpose:
              * This Script Creates Tables in the Data Warehouse Database , Dropping Existing Tables
                if they already exists
              * Run this Script to re-define the DDL Structure of Tables
	      * Exports the data from .csv file in our system to the Tables that we created in our database

*/


-- Drop and recreate the database
DROP DATABASE IF EXISTS DataWarehouse;
CREATE DATABASE DataWarehouse;
USE DataWarehouse;

-- Drop the Table if it is already existed and create new table crm_cust_info
DROP TABLE IF EXISTS crm_cust_info;
CREATE TABLE crm_cust_info(
	cst_id  INT,
    cst_key VARCHAR (50),
    cst_firstname VARCHAR(50),
    cst_lastname VARCHAR(50),
    cst_marital_status VARCHAR(50),
    cst_gndr VARCHAR(50),
    cst_create_date DATE
);

-- Drop the Table if it is already existed and create new table crm_prd_info
DROP TABLE IF EXISTS crm_prd_info;
CREATE TABLE crm_prd_info(
	prd_id INT,
    prd_key VARCHAR(50),
    prd_nm VARCHAR (50),
    prd_cost INT,
    prd_line VARCHAR(50),
    prd_start_dt DATE,
    prd_end_dt DATE
);

-- Drop the Table if it is already existed and create new table crm_sales_details
DROP TABLE IF EXISTS crm_sales_details;
CREATE TABLE crm_sales_details(
	sls_ord_num VARCHAR(50),
    sls_prd_key VARCHAR(50),
    sls_cust_id INT,
    sls_order_dt DATE,
    sls_ship_dt DATE,
    sls_due_dt DATE,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);

-- Drop the Table if it is already existed and create new table erp_cust_az12
DROP TABLE IF EXISTS erp_cust_az12;
CREATE TABLE erp_cust_az12(
	cid VARCHAR(50),
    bdate DATE,
    gen VARCHAR(20)
);

-- Drop the Table if it is already existed and create new table erp_loc_a101
DROP TABLE IF EXISTS erp_loc_a101;
CREATE TABLE erp_loc_a101(
	cid VARCHAR(50),
    cntry VARCHAR(50)
);

-- Drop the Table if it is already existed and create new table erp_px_cat_g1v2
DROP TABLE IF EXISTS erp_px_cat_g1v2;
CREATE TABLE erp_px_cat_g1v2(
	id VARCHAR(50),
    cat VARCHAR(50),
    subcat VARCHAR(50),
    maintenance VARCHAR(50)
);



-- Export the data which is in cust_info.csv file into table crm_cust_info 
LOAD DATA LOCAL INFILE '/Users/saisreenivas/Downloads/SQL/sql-data-warehouse-project/datasets/source_crm/cust_info.csv' 
INTO TABLE crm_cust_info 
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;


-- Export the data which is in prd_info.csv file into table crm_prd_info
LOAD DATA LOCAL INFILE '/Users/saisreenivas/Downloads/SQL/sql-data-warehouse-project/datasets/source_crm/prd_info.csv' 
INTO TABLE crm_prd_info
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;


-- Export the data which is in sales_details.csv file into table crm_sales_details
LOAD DATA LOCAL INFILE '/Users/saisreenivas/Downloads/SQL/sql-data-warehouse-project/datasets/source_crm/sales_details.csv' 
INTO TABLE crm_sales_details
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;


-- Export the data which is in CUST_AZ12.CSV file into table erp_cust_az12
LOAD DATA LOCAL INFILE '/Users/saisreenivas/Downloads/SQL/sql-data-warehouse-project/datasets/source_erp/CUST_AZ12.CSV'
INTO TABLE erp_cust_az12
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;


-- Export the data which is in LOC_A101.CSV file into table erp_loc_a101
LOAD DATA LOCAL INFILE '/Users/saisreenivas/Downloads/SQL/sql-data-warehouse-project/datasets/source_erp/LOC_A101.CSV'
INTO TABLE erp_loc_a101
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;


-- Export the data which is in PX_CAT_G1V2.CSV file into table erp_px_cat_g1v2
LOAD DATA LOCAL INFILE '/Users/saisreenivas/Downloads/SQL/sql-data-warehouse-project/datasets/source_erp/PX_CAT_G1V2.CSV'
INTO TABLE erp_px_cat_g1v2
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;







