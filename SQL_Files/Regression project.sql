	#1. Create a database called house_price_regression.

CREATE DATABASE house_price_regression;


	#2. Create a table house_price_data with the same columns as given in the csv file. Please make sure you use the correct data types for the columns.
use estate_house_price;

CREATE TABLE house_price_data (
    id bigint,
    date VARCHAR(10),
    bedrooms int,
    bathrooms float,
    sqft_living	int,
    sqft_lot int,
	floors float,
    waterfront boolean,
    view int,
    house_condition int,
    grade int,	
    sqft_above int,	
	sqft_basement int,	
    yr_built int,	
    yr_renovated int,	
    zipcode	int,
    latitude Decimal(8,6),
    longitude Decimal(9,6),	
    sqft_living15 int,	
    sqft_lot15 int,
    price int
);

	#3. Import the data from the csv file into the table.

SHOW VARIABLES LIKE 'local_infile'; 

SET GLOBAL local_infile = 1;

#Done with Import wizard

	#4. Select all the data from table house_price_data to check if the data was imported correctly

select * from house_price_data;


	#5. Use the alter table command to drop the column date from the database
    
alter table house_price_data drop column date;

select * from house_price_data limit 10;

	#6. Use sql query to find how many rows of data you have.
    
select count(*) from house_price_data;

	#7. Now we will try to find the unique values in some of the categorical columns:
    
select distinct bedrooms AS "distinct bedroom configurations" 
from house_price_data;

select distinct bathrooms AS "distinct bathrooms configurations" 
from house_price_data;

select distinct floors AS "distinct floors configurations" 
from house_price_data;

select distinct house_condition AS "house condition scale" 
from house_price_data
order by house_condition;

select distinct grade AS "grade scale" 
from house_price_data
order by grade;

	#8. Arrange the data in a decreasing order by the price of the house. Return only the IDs of the top 10 most expensive houses in your data.
    
select id, price from house_price_data
order by price DESC
limit 10;

	#9. What is the average price of all the properties in your data?
    
select round(avg(price), 1) as 'average price' from house_price_data;

	#10. In this exercise we will use simple group by to check the properties of some of the categorical variables in our data
	#10.1 What is the average price of the houses grouped by bedrooms? The returned result should have only two columns, bedrooms and Average of the prices. Use an alias to change the name of the second column.

select bedrooms, round(avg(price),1) as 'average_price' from house_price_data
group by bedrooms
order by bedrooms DESC;

	#10.2 What is the average sqft_living of the houses grouped by bedrooms? The returned result should have only two columns, bedrooms and Average of the sqft_living. Use an alias to change the name of the second column.

select bedrooms, round(avg(sqft_living),0) as 'average_sqft_living' from house_price_data
group by bedrooms
order by bedrooms DESC;

	#10.3 What is the average price of the houses with a waterfront and without a waterfront? The returned result should have only two columns, waterfront and Average of the prices. Use an alias to change the name of the second column.

select waterfront as "Waterfront: 0 = no, 1 = yes", round(avg(price),1) as 'average_front_type' from house_price_data
group by waterfront;

	#10.4 Is there any correlation between the columns condition and grade? You can analyse this by grouping the data by one of the variables and then aggregating the results of the other column. Visually check if there is a positive correlation or negative correlation or no correlation between the variables.

select house_condition, grade from house_price_data
group by grade
order by grade ASC;

select house_condition, grade from house_price_data
group by house_condition
order by house_condition ASC;

#The results of the two queries suggest that the better a house's condition, the higher its grade. However, in the first one there are outliers.

	#11. One of the customers is only interested in the following houses:

select * from house_price_data
where (bedrooms = 3 or bedrooms = 4)
and bathrooms > 3
and floors = 1
and waterfront = 0
and house_condition >= 3
and grade >= 5 
and price < 300000;

	#12. Your manager wants to find out the list of properties whose prices are twice more than the average of all the properties in the database. Write a query to show them the list of such properties. You might need to use a sub query for this problem.
			# to make this query work you have to change setting in MySQL: Preferences -> SQL Editor -> MySQL Session -> increase DBMS connection keep-alive interval (in seconds):-> to 6000

select id, price from house_price_data
where (select avg(price) from house_price_data
having price > 2*avg(price))
order by price DESC;

	#13. Since this is something that the senior management is regularly interested in, create a view of the same query.

create view where_prices_two_times_larger_than_avg as
select id, price from house_price_data
where (select avg(price) from house_price_data
having price > 2*avg(price))
order by price DESC;

	#14. Most customers are interested in properties with three or four bedrooms. What is the difference in average prices of the properties with three and four bedrooms?
SELECT round((Select avg(price) from house_price_data where bedrooms=4) - (SELECT avg(price) from house_price_data where bedrooms=3), 1) as difference;

	#15. What are the different locations where properties are available in your database? (distinct zip codes)

select distinct zipcode AS "distinct zip codes" 
from house_price_data;

	#16. Show the list of all the properties that were renovated.

select id, yr_renovated AS "Renovated Properties' renovation year" 
from house_price_data
where yr_renovated <> 0
order by yr_renovated ASC;

#	17. Provide the details of the property that is the 11th most expensive property in your database.

SELECT * FROM house_price_data
ORDER BY price DESC LIMIT 1 offset 10;








