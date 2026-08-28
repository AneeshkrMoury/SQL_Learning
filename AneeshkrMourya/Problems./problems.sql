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
