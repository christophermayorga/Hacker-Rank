-- Find the difference between the total number of CITY entries in the table
-- and the number of distinct CITY entries in the table.

SELECT 
(count(CITY) - count(UNIQUE(city)))
FROM STATION;

-- Query the two cities in STATION with the shortest and longest CITY names,
-- as well as their respective lengths (i.e.: number of characters in the 
-- name). If there is more than one smallest or largest city, choose the one that 
-- comes first when ordered alphabetically.

select top 1 city, len(city) from station order by len(city) ASC, city ASC; 
select top 1 city, len(city) from station order by len(city) DESC, city ASC;

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
-- Your result cannot contain duplicates.

select distinct city from station
where city like 'a%'
or city like 'e%'
or city like 'i%'
or city like 'o%'
or city like 'u%';

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
-- Your result cannot contain duplicates.

select distinct city from station
where city like '%a'
or city like '%e'
or city like '%i'
or city like '%o'
or city like '%u';

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
-- as both their first and last characters. Your result cannot contain duplicates.

select city
from   station
where  substr(city,  1, 1) in ('a', 'e', 'i', 'o', 'u')
  and  substr(city, -1, 1) in ('a', 'e', 'i', 'o', 'u')

-- Query the list of CITY names from STATION that do not start with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE NOT (
    CITY LIKE 'A%' 
    OR  CITY  LIKE 'E%' 
    OR CITY  LIKE 'I%' 
    OR CITY  LIKE 'O%' 
    OR CITY  LIKE 'U%');

--Query the list of CITY names from STATION that do not end with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE NOT (
    CITY LIKE '%a' 
    OR  CITY  LIKE '%e' 
    OR CITY  LIKE '%i' 
    OR CITY  LIKE '%o' 
    OR CITY  LIKE '%u');
