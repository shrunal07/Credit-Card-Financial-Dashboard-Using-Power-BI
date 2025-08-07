CREATE DATABASE CreditCard_Analysis

-- 1. Create credit_card table

CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);


-- 2. Create customer table

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);


-- 3. Copy csv data into SQL (remember to update the file name and file location in below query)

BULK INSERT credit_card
FROM 'C:\credit_card.csv'
WITH (
    FIRSTROW = 2,              
    FIELDTERMINATOR = ',',     
    ROWTERMINATOR = '\n',      
    CODEPAGE = '65001',        
    TABLOCK
);


BULK INSERT customer
FROM 'C:\customer.csv'
WITH (
    FIRSTROW = 2,              
    FIELDTERMINATOR = ',',     
    ROWTERMINATOR = '\n',      
    CODEPAGE = '65001',        
    TABLOCK
);


select * from credit_card
select * from customer

--QUERY TO INSERT DATA FROM cc_add FILE IN credit_card table

BULK INSERT credit_card
FROM 'C:\Users\shrun\OneDrive\Desktop\GITHUB\PBI_CreditCard_Analysis\cc_add.csv'
WITH (
    FIRSTROW = 2,              
    FIELDTERMINATOR = ',',     
    ROWTERMINATOR = '\n',      
    CODEPAGE = '65001',        
    TABLOCK
);

SELECT * FROM credit_card

--QUERY TO INSERT DATA FROM cust_add FILE IN customer table

BULK INSERT customer
FROM 'C:\Users\shrun\OneDrive\Desktop\GITHUB\PBI_CreditCard_Analysis\cust_add.csv'
WITH (
    FIRSTROW = 2,              
    FIELDTERMINATOR = ',',     
    ROWTERMINATOR = '\n',      
    CODEPAGE = '65001',        
    TABLOCK
);

SELECT * FROM customer


