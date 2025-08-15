CREATE OR REPLACE STAGE EXERCISE_DB.PUBLIC.aws_stage_assignment
    url='s3://snowflake-assignments-mc/loadingdata/';


LIST @EXERCISE_DB.PUBLIC.aws_stage_assignment;

SELECT COUNT(*) FROM EXERCISE_DB.PUBLIC.CUSTOMERS; //So far we had 1000 records

COPY INTO EXERCISE_DB.PUBLIC.CUSTOMERS
    FROM @EXERCISE_DB.PUBLIC.AWS_STAGE_ASSIGNMENT
    file_format= (type = csv field_delimiter=';' skip_header=1)
    pattern='.*customers.*'; //we had 2 files in our stage. Using this pattern
    // will help to fetch only the OrderDetails file. This is a wildcard


SELECT COUNT(*) FROM EXERCISE_DB.PUBLIC.CUSTOMERS; //Now we got 2600 records
