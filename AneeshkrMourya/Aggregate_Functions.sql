--Q1: Query a count of the number of cities in CITY having a Population larger than 100000
SELECT COUNT(NAME) FROM CITY
WHERE POPULATION > 100000;

--Q2: Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION) AS TOTAL_POPULATION FROM CITY
WHERE DISTRICT = "California";

--Q3: Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION) AS TOTAL_POPULATION FROM CITY
WHERE DISTRICT = "California";

--Q4: Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT ROUND(AVG(POPULATION), 0) AS TOTAL_POPULATION FROM CITY;

--Q5: Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION) FROM CITY
WHERE COUNTRYCODE LIKE "JPN";

SELECT SUM(POPULATION) FROM CITY
WHERE COUNTRYCODE = "JPN";

--Q7: Query the difference between the maximum and minimum populations in CITY.
SELECT (MAX(POPULATION) - MIN(POPULATION)) AS POPULATION_RANGE FROM CITY

--Q8: Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary. Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) FROM EMPLOYEES; 

--9: We define an employee's total earnings to be their monthly salary * months  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.
SELECT (salary * months) AS Max_Salary, count(*) FROM Employee
GROUP BY Max_Salary
ORDER BY Max_Salary DESC
LIMIT 1
;
