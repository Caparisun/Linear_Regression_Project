# Prediciting House Prices With Linear Regression
A project done by [Francisco Ebeling](https://github.com/ebelingbarros), [Federico Giuliani](https://github.com/FedericoGi) and [Thamo Koeper](https://github.com/Caparisun) aka Fleur Delacour

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/real-state-project.jpg)

## Introduction to the project and tools used
As analysts of a real estate company, we were asked to answer some businessquestions using a dataset of almost 22.000 real estate sales in the Washington state, USA.

To answer the basic questions of the business, we imported the data into a SQL database using MySQL and the MySQL Workbench client.

Additionaly, the company wanted to explore some relationships within the data using visualisations to make these relationships easy to consume for the stakeholders and decisionmakers. We used Tableau to achieve this goal.

Finally, the company wanted to predict prices of real estate units with the given data. 
We achieved this by applying multiple linear regression algorithms after cleaning and wrangling the data with python in Jupyter Notebook.
After our first approach, we finetuned the model to increase the precision of our predictions.

## Deliverables
- Slides with the output with the business-implications: here
- A live presentation of our conclusions: Recorded live and uploaded later to the repo
- Questions and answers using SQL: Our SQL-file
- A Tableau dashboard: here
- Exploration of the data: Jupyter Notebook
- Applying the models: Jupyter Notebook

We will provide a quick summary of the solutions further below, but first we want to outline our process.

## Method and approach

Our Process in a picture: 

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/Process.jpg)

It was important to us to keep a flexible structure and an agile approach, to be able to handle bugs and errors that occured during the process.
To achieve this we set up a trello board and tracked the tasks and our progress, the final board can be viewed [here](https://trello.com/b/8Yu5xqIA/fleur-delacour).
The workflow and division of tasks came very natural to the group, since we could apply our strengths indivdually.


## Review of the outcomes
Using SQL, Tableau and various techniques in Python we were able to gain lots of insight into the real estate market of Washington state. 
Some things were expected, such as property value having a correlation to the size of the property. 
Some other findings were quite unpredictable, one example of that would be that the number of bedrooms in a unit was not good for predicting the actual price of the property - a practice that is quite usual in actual real estate valuations.

Using various modelling techniques we were able to create different models that are able to predict the price of a home with only a few features.
We do believe that the model is quite sufficient, but can't be used solely to predict the actual salesprice of a home without viewing it in reality.

ONE MORE SENTENCE ABOUT MODEL ACCURACY AND FUTURE TO DOS TO INCREASE PRECISION OF THE MODEL

## Insights to the data
Here are some pictures of our exploration of the data in python

A plot of price, condition and grade of the real estate:
What sparked our interested in this plot was the assumption, that a high grade and a high condition are correlated with another, which appears to be true.
It was also interesting to see, that there was no low-condition/high-grade cluster, and high prices usually are correlated with higher grades and higher prices, meaning a well-kept real estate is a pricey one.

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/priceconditiongrade.png)


The distribution of a few important variables to our model:
Even though some of our variables were heavily skewedm we decided to keep outliers and scaling of these variables the way they are. We made this decision based on our experience with real estate markets, where outliers and skewed data usually have a meaning to them, and we didn't want to artificially change the influence of these variables to our model.

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/ditribution.png)

The relationship of price and living space of a unit:
As expected, price and living space appear positivly correlated

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/sqftprice.png)

We also used a correlationmatrix to identify variables that basically mean the same things, and decided to only move forward with one of the variables that were correlated to another.

## Insights to the data with tableau

lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum 

## Insights using SQL

Since the questions and answer regarding the SQL database are quite complex, I provided in-depth insights in a different file that can be found here.
We imported the data using MySWL workbench, but ran into some trouble regarding the time to import the data. We tried to load them on a different machine, which went a lot faster, and shared the dump file with the project group to allow quick creation of the database. The questions, queries and answers can be found in the file mentioned above.

***

We hope this project delivers easy to digest insights on the real estate market and the features of a building that have an impact on pricing of units that are for sale.


