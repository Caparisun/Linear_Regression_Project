# Prediciting House Prices With Linear Regression
A project done by [Francisco Ebeling](https://github.com/ebelingbarros), [Federico Giuliani](https://github.com/FedericoGi) and [Thamo Koeper](https://github.com/Caparisun).

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/real-state-project.jpg)

## Introduction to the project and tools used
As analysts of a real estate company, we were asked to answer some business questions using a dataset of almost 22.000 real estate sales in Washington state, USA.

To answer the basic questions of the business, we imported the data into a SQL database using MySQL and the MySQL Workbench client.

Additionally, the company wanted to explore some relationships within the data using visualizations to make these relationships easy to consume for the stakeholders and decision-makers. We used Tableau to achieve this goal.

Finally, the company wanted to predict the prices of real estate units with the given data. 
We achieved this by applying multiple linear regression algorithms after cleaning and wrangling the data with python in Jupyter Notebook.
After our first approach, we finetuned the model to increase the precision of our predictions.

After our analysis was completed, we delivered our insights in a 5-minute presentation, focussing on the business implications of our results. 

## Deliverables
- Slides with the output with the business implications: here
- A live presentation of our conclusions: Recorded live and uploaded later to the repo
- Questions and answers using SQL: Our [SQL_File](https://github.com/Caparisun/Linear_Regression_Project/blob/master/SQL_Files/Regression%20project.sql) and the [solutions](https://github.com/Caparisun/Linear_Regression_Project/blob/master/SQL_Files/README.md)
- A Tableau dashboard: [here](https://public.tableau.com/profile/federico.giuliani#!/vizhome/Mid_Project_Data/StoryProject?publish=yes)
- Exploration of the data: [Jupyter Notebook](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Notebooks_and_data/1.basic_data_exploration.ipynb)
- Data cleaning and wrangling: [Jupyter Notebook](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Notebooks_and_data/2.Datawrangling.ipynb)
- Applying the models: [Jupyter Notebook](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Notebooks_and_data/3.Applying_Model.ipynb)

We will provide a quick summary of the solutions further below, but first, we want to outline our process.

## Method and approach

Our Process in a picture: 

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/Process.jpg)

It was important to us to keep a flexible structure and an agile approach, to be able to handle bugs and errors that occurred during the process.

To achieve this we set up a Trello board and tracked the tasks and our progress, the final board can be viewed [here](https://trello.com/b/8Yu5xqIA/fleur-delacour).

The workflow and division of tasks came very naturally to the group since we could apply our strengths individually.


# Review of the outcomes
Using SQL, Tableau, and various techniques in Python we were able to gain lots of insights into the real estate market of Washington state, USA. 
Some things were expected, such as property value correlating with the size of the property and the overall condition. 
Some other findings were unexpected, one example of that would be that the number of bedrooms in a unit was not good for predicting the actual price of the property - a practice that is quite usual in actual real estate valuations.

Using various modeling techniques we were able to create different models that can predict the price of a home with only a few features.

### The models we applied are:
#### - A linear regression model with an R2 score of 0.6237

![Picture](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Pictures/linear.png)
***

#### - Polynomial regression model with an R2 score of 0.6037

![Picture](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Pictures/polynomal.png)
***
#### - K nearest neighbors model with an R2 score of 0.558
 
![Picture](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Pictures/knn.png)
 ***


We do believe that the model is quite sufficient, but can't be used solely to predict the actual sales price of a home without viewing the home in reality. Variables that have a high impact on prices like the neighborhood and location were not scored in the dataset and are therefore excluded from the model.

To increase the precision of the model, additional to-do's would be further removal of outliers and finding a normalization algorithm that can be applied in a model-beneficiary way. The data is prone to overfitting, therefore we want to remind being cautious of overfitting the data and increasing the number of false positives.


## Insights into the data
Here are some pictures of our exploration of the data in python

A plot of price, condition, and grade of the real estate:
What sparked our interest in this plot was the assumption, that a high grade and a high condition are correlated with another, which appears to be true.
Furthermore, it was also interesting to see, that there was no low-condition/high-grade cluster, and high prices usually are correlated with higher grades and higher prices, meaning a well-kept real estate is a pricey one.

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/priceconditiongrade.png)


The distribution of a few important variables to our model:
Even though some of our variables were heavily skewed we decided to keep outliers and scaling of these variables the way they are. We made this decision based on our experience with real estate markets, where outliers and skewed data usually have a meaning to them, and we didn't want to artificially change the influence of these variables on our model.

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/ditribution.png)

The relationship of price and living space of a unit:
As expected, price and living space appear positively correlated

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/sqftprice.png)

We also used a correlation matrix to identify variables that mean the same things and decided to only move forward with one of the variables that were correlated to another.

## Insights to the data with tableau

lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum 

## Insights using SQL

Since the questions and answers regarding the SQL database are quite complex, I provided in-depth insights in a different file that can be found [here](https://github.com/Caparisun/Linear_Regression_Project/blob/master/SQL_Files/README.md).
We imported the data using MySQL workbench but ran into some trouble regarding the time to import the data. We tried to load them on a different machine, which went a lot faster and shared the dump file with the project group to allow quick creation of the database. The questions, queries, and answers can be found in the [SQL_Files Folder](https://github.com/Caparisun/Linear_Regression_Project/tree/master/SQL_Files).

***


Thank you for your time!
We hope that our insights provide detailed answers to the questions asked. If there are any further questions, please don't hesitate to reach out!

All the best,
Francisco, Federico, Thamo

