# Police-Crime-Rates-vs-City-Budgets

## Background 
The police arrest someone every 3 seconds in the United States. More than 80 percent of all arrests nationwide are for low-level, nonviolent offenses. Nationally, the cost of policing is a staggering $115 billion per year. As a part of society, crime is prevalent all over the world. The purpose of this project is to determine whether or not the crime rate rises or falls in relation to different police variables.

## Objective
The goal of this project is to analyze past and recent crime rates in certain states of the US to determine if there is a correlation between certain factors behind law enforcement and the rate of crime in the respective areas.

Questions we hope to answer with the data
- What are the demographics of arrests made by police? 
- Does the city budgets/government police funding have a relationship with the poverty level?
- Does the poverty level for certain cities have a relationship with crime rates?

## Presentation 
[Final presentation](https://docs.google.com/presentation/d/1R5_IDDx9LBjyG7tb2m5ulQ8CUO6cMXgIEpRF2SiivBs/edit?usp=sharing)

## Database
We have decided to use PostgreSQL and AWS to manage the databases. PostgresSQL will provide support of different functions of SQL like foreign keys, subqueries, triggers, and different user-defined types and functions. It will be capable of writing large amounts of data more efficiently and will handle concurrency better than SQL. As for AWS, it will allow us to make a relational database (RDS) that can be accessible to everyone on the team and others. For our project, we joined the county crime rates and poverty rates together to create our database. We then added the county spending rates to that exported file.  

![sql_tables](https://user-images.githubusercontent.com/89143725/151711564-b1e02c8a-d7ae-4146-beb4-41e1b3d3157c.png)

### ERD
![ERD](https://user-images.githubusercontent.com/89143725/151710745-1a1a72c3-9ebd-4494-b6f3-88c3bade427d.png)

## Machine Learning
Machine learning will be built using Scikit-Learn. Supervised learning with a linear regression model will be utilized. This will help transform the data to create an interpretable representation for analysis and to determine patterns in a grouping of data, rather than to predict a classification. 

### Preliminary Data Preprocessing
Our data consists of three factors. Our independent variable is the state police budgets and our dependent variable entails the crime and poverty rates. We will then compare how our independent variable affects the dependent variable using a linear regression model. 

### Supervised Learning with Linear Regression 
While using Jupyter notebook with the help of SciKit-Learn we were able to create our datasets to run with our model. We then will use the linear regression model on training data in our dataset to compare if there is or isn't a correlation between the two variables. 

- Pros: 
	- Linear regression is straightforward to use and the output coefficients are easier to interpret
	- Allows us to summarize and study relationships between continuous quantitative variables
	
- Cons: 
	- Linear regression technique outliers can have huge effects on the regression and boundaries are linear in this technique
	- Can sometimes be oversimplified to capture real-world problems by assuming a linear relationship among variables 
	- Outliers can have a significant effect on the output

## Analysis 

### Linear Regression Analysis 
After running the variables of crime rates to police spending into the linear regression model, the model coefficient was -0.52579153. In a regression with a single independent variable, the coefficient tells you how much the dependent variable is expected to increase (if the coefficient is positive) or decrease (if the coefficient is negative) when that independent variable increases by one. For our data the interpretation is that police spending per capita increases the crime rate decreases, therefore having an inverse relationship with each other. 

After running the variables of poverty rates to police spending into the linear regression model, the model coefficient was -0.0123. The interpretation was the same as the variables above. There is an inverse relationship between police spending per capita and poverty rates. As police spending increases, the poverty rate decreases, depending on the county. 

The problems we encountered while running both datasets with the linear regression model were due to the outliers in the dataset while also having a small dataset. We noticed that two points in the dataset were far more skewed than the rest, resulting in the accuracy of the model being questioned. In the future to negate that problem, instead of testing for one year, there should be either more years to test or an average collection of years to test. That way the numbers are a more accurate representation to test. 

### OLS T-test Analysis
A one-sample t-test is used to determine whether there is a statistical difference between the means of a sample dataset and a hypothesized, potential population dataset. Generally, any t-value greater than +2 or less than – 2 is acceptable. The higher the t-value, the greater the confidence we have in the coefficient as a predictor. As for p-value, it will indicate whether these relationships are statistically significant. The t-test reults were :
	- Crime rate as dependent variable:
		- T-value: -0.634
		- P-value: 0.528

	- Poverty rate as dependent variable:
		- T-value: -1.464
		- P-value: 0.148

Since both of the p-values of each test is greater than 0.05, we can conclude that the results are not significant. The results we gathered have a probability of being random a 52.8% random for the crimes rates vs. police spending and 14.8% random for the poverty rates vs. police spending.

## Dashboard
When creating the dashboard, we decided to use Tableau to help visualize and present our data. The dashboard will consist of an interactive filter that will showcase how the effects of police spending on the certain socioeconomic factors the user chooses. The dashboard will also show our machine learning analysis to see which counties are affected the most. 

### Link for dashboard storyboard

[Police Spending and Crime Story board](https://docs.google.com/presentation/d/1JqX4atsFnJJ7g-ms5xk1mAIK2zY70GrhxdmXWlAuouE/edit?usp=sharing)

### Link to Tableau Public

[Police Spending and Crime Tableau](https://public.tableau.com/views/Policespendingandcrime/PovertyCrimes?:language=en-US&:display_count=n&:origin=viz_share_link)

## Team Members and Role Distribution
* Nhu - Square: Main one responsible for the Github repository.
* John - Triangle: Main one who will create a mockup of a machine learning model.
* Ramar - Circle: Main one who will create a mockup of a database with a set of sample data. 
* Austin - X: Main one who will decide which technologies will be used for each step of the project.

All members of the group will help others in with their respective roles with input, analysis, and editing. 

## Technologies used
- Jupyter Notebook
- Microsoft Excel
- Pandas
- Matplotlib 
- Scikit-Learn
- PostgreSQL
- Tableau
- SQLAlchemy
- AWS

## References 
Our data will focus primarily on the counties of Florida mainly the factors regarding: 
- State police budgets:  http://edr.state.fl.us/Content/local-government/data/revenues-expenditures/stwidefiscal.cfm
- Crime rates: https://www.fdle.state.fl.us/FSAC/Data-Statistics/UCR-Offense-Data.aspx
- Poverty rates:  https://www.flhealthcharts.gov/ChartsReports/rdPage.aspx?rdReport=NonVitalIndRateOnly.TenYrsRpt&cid=461