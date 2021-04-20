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
In our inital meeting we discussed our personal strengths and weaknesses regarding the tools and methods that have to be applied. We quickly realised that we have different strengths and favourite tasks, so dividing them between us came very natural to the group. We set up a trello board to track the tasks and our progress, the final board can be viewed [here](https://trello.com/b/8Yu5xqIA/fleur-delacour).

It was important to us to keep a flexible structure and an agile approach, to be able to handle bugs and errors that occured during the process.

We agreed on splitting the SQL questions, the initial exploration of the data in python and the visualisation in tableau between us, and deliver those tasks latest by tuesday evening and putting the pieces and insights we gained on our tasks together in a group meeting.

During this second group meeting, we decided on what variables to choose for our machine learning model. This step was very efficient because everyone of us could provide some unique insights to specific parts of the data, making the decision on what columns to use for the linear regression very smooth.

Afterwards, we wrangled the data together, so that everyone has insights on how our model operates.
Once we sucessfuly deployed the first model, we split tasks and focus again. The model had to be refined, the repo needed cleaning and comments and solutionfiles added to provide better understanding of the code. Also a Tableau dashboard needed to be created and integrated into our story.

Having completed all of the above tasks and answered all the important questions, we then focused on creating a engaging story and presentation for the consumers of the data. Overall, we needed 5 days to complete the project.

## Review of the outcomes
Using SQL, Tableau and various techniques in Python we were able to gain various insight into the real estate market of Washington state. 
Some things were expected, such as property value being in corrolation to the size of the property. Some other findings were quite unpredictable, one example of that would be that the number of bedrooms in a unit was not good for predicting the actual price of the property - a practice that is quite usual in actual real estate valuations.

Using various modelling techniques we were able to create different models that are able to predict the price of a home with only a few features.
We do believe that the model is quite sufficient, but can't be used solely to predict the actual salesprice of a home without viewing it in reality.

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

## Insights to the with tableau

lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum 
