# Prediciting Real Estate Prices With Machine Learning

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/real-state-project.jpg)

# Contents:

- [Introduction](#Introduction-to-the-project-and-tools-used)
- [Deliverables](#Deliverables)
- [Method and approach](#Method-and-approach)
- [Initial insights](#Insights-into-the-data)
- [Models and evaluation](#Model-application)
- [Tableau](#Insights-using-Tableau)
- [SQL](#-Insights-using-SQL)
- [Last Words](#Last-words)
***


## Introduction to the project and tools used
The business analytics team Fleur Delacour, aka the authors of this project, were asked to answer some business questions for a real estate company using a dataset of almost 22.000 real estate sales in Washington state, USA.

To answer the basic questions of the business, we imported the data into a SQL database using MySQL and the MySQL Workbench client.

Additionally, the company wanted to explore some relationships within the data using visualizations to make these relationships easy to consume for the stakeholders and decision-makers. We used Tableau to achieve this goal.

Finally, the company wanted to predict the price of real estate units with the given data. 
We achieved this by applying multiple linear regression algorithms after cleaning and wrangling the data with python in Jupyter Notebook.
After our first approach, we finetuned the model to increase the precision of our predictions.

After our analysis was completed, we delivered our insights in a 5-minute presentation, focussing on the business implications of our results. 

## Deliverables
- Slides with the business implications: [Here](https://docs.google.com/presentation/d/1mR-rkAEYC1kN9f_6xhFMIaHyXNbBA2OWy5GpS1C8iw8/edit#slide=id.gc59bf226dc_0_2)
- A live presentation of our conclusions: Recorded and uploaded later to the repo
- Questions and answers using SQL: [SQL_File](https://github.com/Caparisun/Linear_Regression_Project/blob/master/SQL_Files/Regression%20project.sql) and the [solutions](https://github.com/Caparisun/Linear_Regression_Project/blob/master/SQL_Files/README.md)
- A Tableau dashboard: [Story](https://public.tableau.com/profile/federico.giuliani#!/vizhome/Mid_Project_Data/StoryProject?publish=yes) and [solutions](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Tableau/readme.md)
- Exploration of the data: [Jupyter Notebook](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Notebooks_and_data/1.basic_data_exploration.ipynb)
- Data cleaning and wrangling: [Jupyter Notebook](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Notebooks_and_data/2.Datawrangling.ipynb)
- Applying the models: [Jupyter Notebook](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Notebooks_and_data/3.Applying_Model.ipynb)
- Applying the same models to a normalized data frame [Jupyter Notebook](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Notebooks_and_data/5.applying_model_norm.ipynb)
- Refinement of the first model, exploring multiple different wrangling approaches [Jupyter Notebook](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Notebooks_and_data/6.Refinement.ipynb)

We will provide a quick summary of the solutions further below, but first, we want to outline our process.

## Method and approach

Our Process in a picture: 

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/Process.jpg)

It was important to us to keep a flexible structure and an agile approach, to be able to handle bugs and errors that occurred during the process, since we were unfamiliar with the data.

To achieve this we set up a Trello board and tracked the tasks and our progress, the final board can be viewed [here](https://trello.com/b/8Yu5xqIA/fleur-delacour).

The workflow and division of tasks came very naturally to the group since we could apply our strengths individually.


## Insights into the data
Here are some pictures of our exploration of the data in python

A plot of price, condition, and grade of the real estate:
What sparked our interest in this plot was the assumption, that a high grade and a high condition are correlated with another, which appears to be true.
Furthermore, it was also interesting to see, that there was no low-condition/high-grade cluster, and high prices usually are correlated with higher grades and higher prices, meaning a well-kept real estate is a pricey one.

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/priceconditiongrade.png)


The distribution of a few important variables to our model:
Even though some of our variables had large outliers, we decided to keep them the way they are. We made this decision based on our experience with real estate markets, where outliers and skewed data usually have a meaning to them, and we didn't want to artificially change the influence of these variables on our model. In a later iteration it turned out to increase accuracy of the model, when some data ins transformed and outliers get removed.

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/ditribution.png)

The relationship of price and living space of a unit:
As expected, price and living space appear positively correlated.

![Picture](https://github.com/Caparisun/data_mid_bootcamp_project_regression/blob/master/Pictures/sqftprice.png)

We also used a correlation matrix to identify variables that mean the same things and decided to only move forward with one of those correlated variables.


## Summary of the initial findings
Using Python we were able to gain lots of insights into the real estate market of Washington state, USA. 
Some things were expected, such as property value correlating with the size of the property and the overall condition. 
Some other findings were unexpected, one example of that would be that the number of bedrooms in a unit was not good for predicting the actual price of the property - a practice that is quite usual in actual real estate valuations.

After the initial exploration, we evaluated variables for the model and decided on features used for the first iteration. We did this based on OLS regression outcomes and filtering for high coefficients.


## Model application
### The following models were generated:

#### 1.) A linear regression model with an R2 score of 0.6076 and an RMSE of 217122.00

![Picture](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Pictures/linear.png)
***

#### 2.) Polynomial regression model with an R2 score of 0.6037 and an RMSE of 217122.00

![Picture](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Pictures/polynomal.png)
***
#### 3.) K nearest neighbors model with an R2 score of 0.53 and an RMSE of 56254834051.60
 
![Picture](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Pictures/knn1.png)
 ***
 #### 4.) Polynomial regression model with an R2 score of 0.6495 and an RMSE of 214824.37

![Picture](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Pictures/final.png)

Our initial model already had a reasonable accuracy measured with the R2 score. 
We managed to improve that score with further wrangling of the data. This was achieved by using most of the available columns and only removing the date column and applying a scaling of variables to the data. 

If you want to get insights into the process please check the [notebook](https://github.com/Caparisun/Linear_Regression_Project/blob/master/Notebooks_and_data/6.Refinement.ipynb)


## Conclusion

We do believe that the model is quite sufficient, but can't be used solely to predict the actual sales price of a home without viewing the home in reality. This is due to the large RSME error in the model. Additionally, variables that have a high impact on real estate prices like the neighborhood, location, and urban development were not scored in the dataset and are therefore excluded from the model.

To increase the precision of the model, the variables that include mostly zero values have to be resampled and balanced. We also assume that binning more values into groups could increase accuracy. 
We could not identify a causal relationship between high prices and a single variable, it seems like to correlation of multiple values lead to higher prices.


## Insights using Tableau

The business had some questions about the relationship of the data and how it impacts prices over time. We created a Tableau Public story for that, that can be viewes [here](https://public.tableau.com/profile/federico.giuliani#!/vizhome/Mid_Project_Data/StoryProject?publish=yes)

A detailed overview of the questions and our answers can be found in the [Tableau-Folder](https://github.com/Caparisun/Linear_Regression_Project/tree/master/Tableau)

You can view a preview of our Tableau story below:

<div class='tableauPlaceholder' id='viz1618994686440' style='position: relative'><noscript><a href='#'><img alt='Prediciting House Prices With Linear Regression - Data exploration and visualization ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Mi&#47;Mid_Project_Data&#47;StoryProject&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Mid_Project_Data&#47;StoryProject' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Mi&#47;Mid_Project_Data&#47;StoryProject&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='de' /><param name='filter' value='publish=yes' /></object></div>


## Insights using SQL

Since the questions and answers regarding the SQL database are quite complex, I provided in-depth insights in a different file that can be found [here](https://github.com/Caparisun/Linear_Regression_Project/blob/master/SQL_Files/README.md).
Detailed documentation of our process can be found in the [SQL_Files Folder](https://github.com/Caparisun/Linear_Regression_Project/tree/master/SQL_Files).

***

## Last words
#### Insights delivered

- Don't use the model solely to make investment decisions, but rather for confirming a price range of an asset
- Invest with an anticyclical approach
- Maximize living space instead of bedrooms to increase price
- Bellevue is the most expensive area
- We were unable to identify a single variable the allows to predict higher prices  

Thank you for your time!
We hope that our insights provide detailed answers to the questions. If there are any further questions, please don't hesitate to reach out!
