-- NOTE:
-- Import CSV files using your SQL tool (MySQL Workbench / pgAdmin / SQLite)

-- Example (MySQL):
LOAD DATA INFILE 'path/orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

-- Repeat for other tables