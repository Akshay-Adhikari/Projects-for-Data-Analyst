CREATE DATABASE cars;
USE cars;
-- READ car data --
SELECT * FROM car_dekho;

-- to get a count of total car --
SELECT count(*) FROM car_dekho;

-- How many cars are available of 2023 -- 
SELECT count(*) FROM car_dekho
WHERE year = 2023;

-- How many cars are available of year 2020 - 2022 --
SELECT count(*), year FROM car_dekho
where year IN (2020, 2021, 2022)
GROUP BY year;

-- Print total of all cars by year -- 
SELECT year, count(*) FROM car_dekho
GROUP BY year;

-- number of diesel cars available in 2020 -- 
SELECT count(*) from car_dekho
WHERE year = 2020 AND fuel ='Diesel';

-- No of petrol cars for 2020 --
SELECT count(*) FROM car_dekho
WHERE year = 2020 AND fuel ='Petrol';

-- total number of cars of petrol + diesel + CNG --
SELECT fuel, count(*) FROM car_dekho
GROUP BY fuel;
SELECT year , count(*) FROM car_dekho
WHERE fuel = 'petrol' GROUP BY year;

-- year that has more then 100 cars -- 
SELECT year , count(*) FROM car_dekho
GROUP BY year
HAVING count(*) > 100;

-- All cars count  details between 2015 - 2023 -- 
SELECT * FROM car_dekho
WHERE year > 2014
ORDER by year ASC;

-- Count of all cars between year 2015 - 2023 --
SELECT count(*) FROM car_dekho
WHERE year BETWEEN 2015 AND 2023;