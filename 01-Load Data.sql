CREATE DATABASE EXERCISE_DB;

CREATE OR REPLACE TABLE EXERCISE_DB.PUBLIC.CUSTOMERS
(
    ID INT,
    first_name varchar,
    last_name varchar,
    email varchar,
    age int,
    city varchar
);


COPY INTO EXERCISE_DB.PUBLIC.CUSTOMERS
FROM s3://snowflake-assignments-mc/gettingstarted/customers.csv
file_format = (type = csv 
               field_delimiter = ',' 
               skip_header=1);


SELECT * FROM EXERCISE_DB.PUBLIC.CUSTOMERS;
