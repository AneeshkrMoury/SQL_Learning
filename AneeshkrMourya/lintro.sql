'''tables are used to store and represnt data in which each row represents a unique item (or record), and each column represents a specific attribute (or characteristic) of that item."

DataBase -> simply someway to organize data like updating , storing, reading , accessing , intracting with a data 
Data Base Management System -> these are software those we use to intract with our data base 

TYPES OF DBMS ->
I   |  MYSQL
II  |  SQLITE
III |  ORACALE
IV  |  POSTGRE SQL
v   |  MongoDB

'''

'''
SQL -> (structured query language) it is language using that we can create, read, update and delete data in a database

Querying..? -> Is mean searing or trying to find something 
'''


--SELECT -> The SELECT keyword is the most common command in SQL. Its only job is to ask the database to show our data.
SELECT * FROM users;
SELECT name, country FROM users;

--Limit -> use to tell how much of data to show like for  10 rown 
SELECT "name" FROM "users" LIMIT 10;

--Where -> gives the data for the rows where the given condition is true 
SELECT "title", "author" 
FROM "longlist" 
WHERE "year" = 2023;


--NULL ->It is possible that tables may have missing data. NULL is a type used to indicate that certain data does not have a value, or does not exist in the table.To select the books for which translators dont exist, we can run
SELECT "title", "translator" 
FROM "longlist"
WHERE "translator" IS NULL;


--Let's try the reverse: selecting the books for which translators do exist.
SELECT "title", "translator" 
FROM "longlist"
WHERE "translator" IS NOT NULL;


--LIKE->This keyword is used to select data that roughly matches the specified string. For example, LIKE could be used to select books that have a certain word or phrase in their title. 
--LIKE is combined with the operators % (matches any characters around a given string) and _ (matches a single character).
--To select the books with the word “love” in their titles, we can run
SELECT "title"
FROM "longlist"
WHERE "title" LIKE '%love%';


--Given that there is a book in the table whose name is either “Pyre” or “Pire”, we can select it by running
SELECT "title" 
FROM "longlist" 
WHERE "title" LIKE 'P_re';


--Ranges ->
--We can also use the operators <, >, <= and >= in our conditions to match a range of values. For example, to select all the books longlisted between the years 2019 and 2022 (inclusive), we can run
SELECT "title", "author" 
FROM "longlist" 
WHERE "year" >= 2019 AND "year" <= 2022;

--Another way to get the same results is using the keywords BETWEEN and AND to specify inclusive ranges. We can run
SELECT "title", "author" 
FROM "longlist" 
WHERE "year" BETWEEN 2019 AND 2022;

--To select the books that have a rating of 4.0 or higher, we can run
SELECT "title", "rating" 
FROM "longlist" 
WHERE "rating" > 4.0;

--To further limit the selected books by number of votes, and have only those books with at least 10,000 votes, we can run
SELECT "title", "rating", "votes" 
FROM "longlist" 
WHERE "rating" > 4.0 AND "votes" > 10000;

--To select the books that have less than 300 pages, we can run
SELECT "title", "pages" 
FROM "longlist" 
WHERE "pages" < 300


--ORDER BY ->
--The ORDER BY keyword allows us to organize the returned rows in some specified order.
--The following query selects the bottom 10 books in our database by rating.
SELECT "title", "rating" 
FROM "longlist" 
ORDER BY "rating" LIMIT 10;

--Note that we get the bottom 10 books because ORDER BY chooses ascending order by default.
Instead, to select the top 10 books
SELECT "title", "rating" 
FROM "longlist" 
ORDER BY "rating" DESC LIMIT 10;

--Note the use of the SQL keyword DESC to specify the descending order. ASC can be used to explicitly specify ascending order.

--To select the top 10 books by rating and also include number of votes as a tie-break, we can run
SELECT "title", "rating", "votes" 
FROM "longlist"
ORDER BY "rating" DESC, "votes" DESC 
LIMIT 10;


--Aggregate Functions -> COUNT, AVG, MIN, MAX, and SUM are called aggregate functions and allow us to perform the corresponding operations over multiple rows of data. By their very nature, each of the following aggregate functions will return only a single output—the aggregated value.
--To find the average rating of all books in the database
SELECT AVG("rating") 
FROM "longlist";
To round the average rating to 2 decimal points
SELECT ROUND(AVG("rating"), 2) 
FROM "longlist";

--To rename the column in which the results are displayed
SELECT ROUND(AVG("rating"), 2) AS "average rating" 
FROM "longlist";

--Note the use of the SQL keyword AS to rename columns.

--To select the maximum rating in the database
SELECT MAX("rating") 
FROM "longlist";

--To select the minimum rating in the database
SELECT MIN("rating") 
FROM "longlist";

--To count the total number of votes in the database
SELECT SUM("votes") 
FROM "longlist";

--To count the number of books in our database
 SELECT COUNT(*) 
 FROM "longlist";

--Remember that we used * to select every row and column from the database. In this case, we are trying to count every row in the database and hence we use the *.

--To count the number of translators
SELECT COUNT("translator") 
FROM "longlist";

--We observe that the number of translators is fewer than the number of rows in the database. This is because the COUNT function does not count NULL values.To count the number of publishers in the database
SELECT COUNT("publisher") 
FROM "longlist";

--As with translators, this query will count the number of publisher values that are not NULL. However, this may include duplicates. Another SQL keyword, DISTINCT, can be used to ensure that only distinct values are counted.
SELECT COUNT(DISTINCT "publisher") 
FROM "longlist";
