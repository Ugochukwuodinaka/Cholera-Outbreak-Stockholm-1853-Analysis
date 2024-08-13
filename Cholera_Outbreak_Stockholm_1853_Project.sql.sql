-- Data Cleaning, Transformation and Loading using the MS Sql Server:
-- 1. Made sure that all the data types of the tables in this dataset are of the right data type.
-- 2. Translated all the colume headers in Swedish language to English Language for easy understanding.
-- 3. Translated all the rows of the Profession, Gender, and Assembly columns from Swedish language to English language for a better understanding of the table data.
-- 4. Added a new column "Age_Band" from the "Age" column to enable me group the victims into age brackets using the "Update" and "Set query".
-- 5. Added another column "Day" from the "Date_of_Death" column to display days of the week (sunday - saturday)using the "Update" and "Set query".
-- 6. Re-ordered all the columns in the table accordingly.


SELECT * FROM dbo.[kolera-katarina-1853];


-- 1. Made sure that all the data types of the tables in this dataset are of the right data type.
EXEC sp_help 'dbo.[kolera-katarina-1853]';
SELECT * FROM dbo.[kolera-katarina-1853];


-- 2. Translated all the colume headers in Swedish language to English Language for easy understanding
ALTER TABLE [kolera-katarina-1853]
ADD Date_Of_Death DATE;

UPDATE [kolera-katarina-1853]
SET Date_Of_Death = [Dödsdatum];

ALTER TABLE [kolera-katarina-1853]
DROP COLUMN [Dödsdatum];

SELECT * FROM dbo.[kolera-katarina-1853];


ALTER TABLE [kolera-katarina-1853]
ADD Name VARCHAR(100);

UPDATE [kolera-katarina-1853]
SET Name = Namn;

ALTER TABLE [kolera-katarina-1853]
DROP COLUMN [Namn];

SELECT * FROM dbo.[kolera-katarina-1853];


ALTER TABLE [kolera-katarina-1853]
ADD Profession VARCHAR(100);

UPDATE [kolera-katarina-1853]
SET Profession = Yrke;

ALTER TABLE [kolera-katarina-1853]
DROP COLUMN Yrke;

SELECT * FROM dbo.[kolera-katarina-1853];


ALTER TABLE [kolera-katarina-1853]
ADD Gender VARCHAR(10);

UPDATE [kolera-katarina-1853]
SET Gender = [Kön];

ALTER TABLE [kolera-katarina-1853]
DROP COLUMN [Kön];

SELECT * FROM dbo.[kolera-katarina-1853];


ALTER TABLE [kolera-katarina-1853]
ADD Age INT;

UPDATE [kolera-katarina-1853]
SET Age = [Ålder];

ALTER TABLE [kolera-katarina-1853]
DROP COLUMN [Ålder];

SELECT * FROM dbo.[kolera-katarina-1853];


ALTER TABLE [kolera-katarina-1853]
ADD Assembly VARCHAR(20);

UPDATE [kolera-katarina-1853]
SET Assembly = [Församling];

ALTER TABLE [kolera-katarina-1853]
DROP COLUMN [Församling];

SELECT * FROM dbo.[kolera-katarina-1853];


ALTER TABLE [kolera-katarina-1853]
ADD Archive_Ref VARCHAR(10);

UPDATE [kolera-katarina-1853]
SET Archive_Ref = Arkivref;

ALTER TABLE [kolera-katarina-1853]
DROP COLUMN Arkivref;

SELECT * FROM dbo.[kolera-katarina-1853];


ALTER TABLE [kolera-katarina-1853]
ADD Page INT;

UPDATE [kolera-katarina-1853]
SET Page = Sida;

ALTER TABLE [kolera-katarina-1853]
DROP COLUMN Sida;

SELECT * FROM dbo.[kolera-katarina-1853];


-- 3. Translated all the rows of the Profession, Gender, and Assembly columns from Swedish language to English language for a better understanding of the table data.
UPDATE [kolera-katarina-1853]
SET Gender = 'Woman'
WHERE Gender = 'Kvinna';
SELECT * FROM dbo.[kolera-katarina-1853];

ALTER TABLE [kolera-katarina-1853]
ALTER COLUMN Assembly VARCHAR(20);

UPDATE [kolera-katarina-1853]
SET Assembly = 'Catherine'
WHERE Assembly = 'Katarina';
SELECT * FROM dbo.[kolera-katarina-1853];


-- 4. Added a new column "Age_Band" from the "Age" column to enable me group the victims into age brackets using the "If function".
ALTER TABLE [kolera-katarina-1853]
ADD Age_Band VARCHAR(20);
SELECT * FROM dbo.[kolera-katarina-1853];

UPDATE [kolera-katarina-1853]
SET Age_Band = CASE 
                WHEN Age >= 0 AND Age <= 12 THEN 'Children'
                WHEN Age >= 13 AND Age <= 19 THEN 'Teenager'
                WHEN Age >= 20 AND Age <= 39 THEN 'Young Adult'
                WHEN Age >= 40 AND Age <= 60 THEN 'Mid Aged'
                WHEN Age >= 61 THEN 'Old Aged'
                ELSE ''
            END;
SELECT * FROM dbo.[kolera-katarina-1853];


-- 5. Added another column "Day" from the "Date_of_Death" column to display days of the week (sunday - saturday) using the "If function".
ALTER TABLE [kolera-katarina-1853]
ADD Day VARCHAR(20);
SELECT * FROM dbo.[kolera-katarina-1853];

UPDATE [kolera-katarina-1853]
SET Day = CASE DATEPART(WEEKDAY, Date_Of_Death)
                                    WHEN 1 THEN 'Sunday'
                                    WHEN 2 THEN 'Monday'
                                    WHEN 3 THEN 'Tuesday'
                                    WHEN 4 THEN 'Wednesday'
                                    WHEN 5 THEN 'Thursday'
                                    WHEN 6 THEN 'Friday'
                                    WHEN 7 THEN 'Saturday'
                                    ELSE 'Unknown'
                               END;

SELECT * FROM dbo.[kolera-katarina-1853];