# Business Questions About The Data Answered Using SQL

In this file, we are presenting the SQL questions and answers in an easy-to-read file.
To execute the queries, please refer to the SQL file that is available [here](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/SQL_Files/Regression%20project.sql).


### 1.) Create a database called house_price_regression.

```
CREATE DATABASE house_price_regression;
```

### 2.) Create a table house_price_data with the same columns as given in the CSV file. Please make sure you use the correct data types for the columns.

```
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
    price int);
```

### 3.) Import the data from the CSV file into the table. 
Before you import the data into the empty table, make sure that you have deleted the headers from the CSV file. To not modify the original data, if you want you can create a copy of the CSV file as well. Note you might have to use the following queries to permit SQL to import data from CSV files in bulk:
SHOW VARIABLES LIKE 'local_infile'; -- This query would show you the status of the variable ‘local_infile’. If it is off, use the next command, otherwise, you should be good to go

```
SHOW VARIABLES LIKE 'local_infile'; 
SET GLOBAL local_infile = 1;
```
Further import was done with the CSV import wizard

### 4.) Select all the data from table house_price_data to check if the data was imported correctly

```
select * from house_price_data;
```

### 5.) Use the alter table command to drop the column date from the database, as we would not use it in the analysis with SQL. Select all the data from the table to verify if the command worked. Limit your returned results to 10.

```
alter table house_price_data drop column date;
select * from house_price_data limit 10;
```

### 6.) Use SQL query to find how many rows of data you have.

```
select count(*) from house_price_data;
```

### 7.) Now we will try to find the unique values in some of the categorical columns:

- What are the unique values in the column bedrooms?

```
select distinct bedrooms AS "distinct bedroom configurations" 
from house_price_data;
```

- What are the unique values in the column bathrooms?

```
select distinct bathrooms AS "distinct bathrooms configurations" 
from house_price_data;
```

- What are the unique values in the column floors?

```
select distinct floors AS "distinct floors configurations" 
from house_price_data;
```

- What are the unique values in the column condition?

```
select distinct house_condition AS "house condition scale" 
from house_price_data
order by house_condition;
```

- What are the unique values in the column grade?

```
select distinct grade AS "grade scale" 
from house_price_data
order by grade;
```
   
### 8.) Arrange the data in decreasing order by the price of the house. Return only the IDs of the top 10 most expensive houses in your data.

```
select id, price from house_price_data
order by price DESC
limit 10;
```

### 9.) What is the average price of all the properties in your data?

```
select round(avg(price), 1) as 'average price' from house_price_data;
```

### 10.) In this exercise, we will use a simple group by to check the properties of some of the categorical variables in our data

- What is the average price of the houses grouped by bedrooms? The returned result should have only two columns, bedrooms, and the average of the prices. Use an alias to change the name of the second column.

```
select bedrooms, round(avg(price),1) as 'average_price' from house_price_data
group by bedrooms
order by bedrooms DESC;
```

- What is the average sqft_living of the houses grouped by bedrooms? The returned result should have only two columns, bedrooms, and the Average of the sqft_living. Use an alias to change the name of the second column.

```
select bedrooms, round(avg(sqft_living),0) as 'average_sqft_living' from house_price_data
group by bedrooms
order by bedrooms DESC;
```

- What is the average price of the houses with a waterfront and without a waterfront? The returned result should have only two columns, waterfront, and Average of the prices. Use an alias to change the name of the second column.
- 
```
select waterfront as "Waterfront: 0 = no, 1 = yes", round(avg(price),1) as 'average_front_type' from house_price_data
group by waterfront;
```

- Is there any correlation between the column's condition and grade? You can analyze this by grouping the data by one of the variables and then aggregating the results of the other column. Visually check if there is a positive correlation or negative correlation or no correlation between the variables.
```
select house_condition, grade from house_price_data
group by grade
order by grade ASC;

select house_condition, grade from house_price_data
group by house_condition
order by house_condition ASC;
```
The results of the two queries suggest that the better a house's condition, the higher its grade. However, in the first one, there are outliers.


### 11.) One of the customers is only interested in the following houses:

Number of bedrooms either 3 or 4
Bathrooms more than 3
One Floor
No waterfront
The condition should be 3 at least
The grade should be 5 at least
Price less than 300000
For the rest of the things, they are not too concerned. Write a simple query to find what are the options available for them?
```
select * from house_price_data
where (bedrooms = 3 or bedrooms = 4)
and bathrooms > 3
and floors = 1
and waterfront = 0
and house_condition >= 3
and grade >= 5 
and price < 300000;
```

### 12.) Your manager wants to find out the list of properties whose prices are twice more than the average of all the properties in the database. Write a query to show them the list of such properties. You might need to use a subquery for this problem.
```
select id, price from house_price_data
where (select avg(price) from house_price_data
having price > 2*avg(price))
order by price DESC;
```

### 13.) Since this is something that the senior management is regularly interested in, create a view of the same query.
```
create view where_prices_two_times_larger_than_avg as
select id, price from house_price_data
where (select avg(price) from house_price_data
having price > 2*avg(price))
order by price DESC;
```

### 14.) Most customers are interested in properties with three or four bedrooms. What is the difference in the average prices of the properties with three and four bedrooms?
```
SELECT round((Select avg(price) from house_price_data where bedrooms=4) from (SELECT avg(price) from house_price_data where bedrooms=3), 1) as difference;

```

### 15.) What are the different locations where properties are available in your database? (distinct zip codes)
```
select distinct zipcode AS "distinct zip codes" 
from house_price_data;
```

### 16.) Show the list of all the properties that were renovated.
```
select id, yr_renovated AS "Renovated Properties' renovation year" 
from house_price_data
where yr_renovated <> 0
order by yr_renovated ASC;
```

### 17.) Provide the details of the property that is the 11th most expensive property in your database.
```
SELECT * FROM house_price_data
ORDER BY price DESC LIMIT 1 offset 10;
```

***

We hope, that this overview and quick answers to the questions provide detailed insights into the data!


