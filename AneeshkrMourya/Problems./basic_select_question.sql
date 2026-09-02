--1: Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM "CITY"
  WHERE "COUNTRYCODE" = 'JPN';

--2: Query a list of CITY and STATE from the STATION table.
SELECT "CITY","STATE" FROM "STATION";

--3: Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT(CITY) FROM STATION 
  WHERE ID % 2 = 0;

--4: Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT COUNT(CITY) - COUNT(DISTINCT(CITY)) FROM STATION; 

--5: Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
SELECT CONCAT(CITY, ' ', LENGTH(CITY)) FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY ASC LIMIT 1;
SELECT CONCAT(CITY, ' ', LENGTH(CITY)) FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY DESC LIMIT 1;

--6: Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION 
WHERE CITY LIKE "a%" 
OR CITY LIKE "e%" 
OR CITY LIKE "i%" 
OR CITY LIKE "o%" 
OR CITY LIKE "u%";

--7: Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION 
WHERE CITY LIKE "%a" 
OR CITY LIKE "%e" 
OR CITY LIKE "%i" 
OR CITY LIKE "%o" 
OR CITY LIKE "%u";

--8: Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION 
WHERE (CITY LIKE "%a" OR CITY LIKE "%e" OR CITY LIKE "%i" OR CITY LIKE "%o" OR CITY LIKE "%u")
AND (CITY LIKE "a%" OR CITY LIKE "e%" OR CITY LIKE "i%" OR CITY LIKE "o%" OR CITY LIKE "u%");

--9: Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION 
WHERE CITY NOT LIKE "A%"
AND CITY NOT LIKE "E%" 
AND CITY NOT LIKE "I%" 
AND CITY NOT LIKE "O%" 
AND CITY NOT LIKE "U%";

--10: Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION 
WHERE CITY NOT LIKE "%a" 
AND CITY NOT LIKE "%e" 
AND CITY NOT LIKE "%i" 
AND CITY NOT LIKE "%o" 
AND CITY NOT LIKE "%u";

--11: Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION 
WHERE (CITY NOT LIKE "%a" 
AND CITY NOT LIKE "%e" 
AND CITY NOT LIKE "%i" 
AND CITY NOT LIKE "%o" 
AND CITY NOT LIKE "%u")
OR (CITY NOT LIKE "a%" 
AND CITY NOT LIKE "e%" 
AND CITY NOT LIKE "i%" 
AND CITY NOT LIKE "o%" 
AND CITY NOT LIKE "u%");

--12 Query the Name of any student in STUDENTS who scored higher than  75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID
SELECT Name 
FROM STUDENTS 
WHERE Marks > 75 
ORDER BY RIGHT(Name, 3) ASC, ID ASC; -- remember sometime different sql platofrm may do not support right in case u can try SUBSTR, SUBSTRINGS 

--13 Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name FROM Employee
ORDER BY name ASC
;

--14 	Submissions	Leaderboard	Discussions Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than  months. Sort your result by ascending employee_id.
SELECT name FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC
;

