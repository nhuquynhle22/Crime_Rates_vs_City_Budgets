# Police-Crime-Rates-vs-City-Budgets

## Background 
The police arrest someone every 3 seconds in the United States. More than 80 percent of all arrests nationwide are for low-level, nonviolent offenses. Nationally, the cost of policing is a staggering $115 billion per year. As a part of society, crime is prevalent all over the world. The purpose of this project is to determine whether or not the crime rate rises or falls in relation to different police variables.

## Objective
The goal of this project is to analyze past and recent crime rates in major metropolitain areas to determine if there is correlation between certain factors behind law enforcement and the rate of crime in the respective areas.

Questions we hope to answer with the data
- What are the demographics of arrests made by police? 
- Does the city budgets/government police funding have a relationship with poverty level?
- Does the poverty level for certan cities have a relationship with crime rates?

## Presentation 
https://docs.google.com/presentation/d/1R5_IDDx9LBjyG7tb2m5ulQ8CUO6cMXgIEpRF2SiivBs/edit?usp=sharing


## Machine Learning
Machine learning will be built using Scikit. Supervised learning with a linear regression model will be utiliezed. This will help transform the data to create an interpretable representation for analysis and to determine patterns in a grouping of data, rather than to predict a classification.

### Preliminary Data Preprocessing
Our data conisits of three factors. Our independent variable which is the state police budgets and our depedent variable entailing the crime and poverty rates. We will then compare how our independent variable affects the dependent variable using a linear regression model. 

### Supervised Learning with Linear Regression 
We will use the linear regression model on al the variable in our data to compare if there is or isnt a correlation between the two variables. 

- Pros: 
	-Linear regression is straightforward to use and the output coefficients are easier to interpret.
	
- Cons: 
	-Linear regression technique outliers can have huge effects on the regression and boundaries are linear in this technique.
	- Can sometimes over simplify real-world probelms by assuming a linerar relationship amoung variables 

## Database
We have decided to use PostgreSQL to manage the databases. It will provide support different functions of SQL like foreign keys, subqueries, triggers, and different user-defined types and functions. It wil be capable of writing large amounts of data more efficiently, and will handle concurrency better than SQL.

### ERD
![erd](https://user-images.githubusercontent.com/89143725/150903377-e404e9d7-c830-48d7-b365-0b6ef17d89bd.png)

## Team Members and Role Distribution
* Nhu - Square : Main one responsible for the Github repository.
* John - Triangle : Main one who will create a mockup of a machine learning model.
* Ramar - Circle : Main one who will create a mockup of a database with a set of sample data. 
* Austin - X : Main one who will decide which technologies will be used for each step of the project.

All members of the group will help others in the group with input, analysis, and editing. 

## Communication Protocol
We will utilize Slack, GitHub, and Zoom to ensuree proper communication and transparency throughout the project. 

## Technologies used
- Microsoft Excel
- Pandas
- Matplotlib 
- Scikit-Learn
- PostgreSQL
- Tableau

## References 
Description of source of data 
- State police budgets:  https://blog.cheapism.com/state-police-budget/#slide=1
- Crime rates: https://www.kaggle.com/jpmiller/police-violence-in-the-us?select=deaths_arrests.csv
- Poverty rates:  https://data.ers.usda.gov/reports.aspx?ID=17826
