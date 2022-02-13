#Crime-Rates-vs-City-Budgets

## Background 
The police arrest someone every 3 seconds in the United States. "More than 80 percent of all arrests nationwide are for low-level, nonviolent offenses. Nationally, the cost of policing is a staggering $115 billion per year." As a part of society, crime is prevalent all over the world. The purpose of this project is to determine whether or not police spending has an effect on certain societal factors. 

## Objective
The goal of this project is to analyze recent crime rates in Florida countys to see if there is a correlation with their socioeconomic factors. 

Questions we hope to answer with the data:
- To determine if a relationship exists between police budgets per capita and crime rates.

- To determine if a relationship exists between police budgets per capita and poverty rates.

## Hypothesis
Null hypothesis: There is no relationship between police budgets and crime rates among Florida counties

Alternative hypothesis: There is a relationship between police budgets and crime rates among Florida counties

## Presentation 
[Final presentation](https://docs.google.com/presentation/d/1R5_IDDx9LBjyG7tb2m5ulQ8CUO6cMXgIEpRF2SiivBs/edit?usp=sharing)

## Database
We have decided to use PostgreSQL and AWS to manage the databases. PostgresSQL will provide support of different functions of SQL like foreign keys, subqueries, triggers, and different user-defined types and functions. It will be capable of writing large amounts of data more efficiently and will handle concurrency better than SQL. As for AWS, it will allow us to make a relational database (RDS) that can be accessible to everyone on the team and others. For our project, we joined the county crime rates and poverty rates together to create our database. We then added the county spending rates to that exported file.  

![sql_tables](https://user-images.githubusercontent.com/89143725/151711564-b1e02c8a-d7ae-4146-beb4-41e1b3d3157c.png)

### ERD
![ERD](https://user-images.githubusercontent.com/89143725/151710745-1a1a72c3-9ebd-4494-b6f3-88c3bade427d.png)

## Machine Learning
Machine learning will be built using Scikit-Learn. Supervised learning with a linear regression model will be utilized. This will help transform the data to create an interpretable representation for analysis and to determine patterns in a grouping of data, rather than to predict a classification. After realizing the linear regression model might not be the best fit model to accurately test our dataset, we decided to run our dataset through another model specifically the Decision tree regressor. 

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

### Decision Tree Regressor
A decision tree builds regression or classification models in the form of a tree structure. It breaks down a dataset into smaller and smaller subsets while simultaneously constructing an associated decision tree. For our dataset, it will allow solving regression problems. The goal is to create a model that predicts the value of a target variable by learning simple decision rules inferred from the data features.

- Pros:
	- A decision tree is one of the quickest ways to identify relationships between variables and the most significant variable
	- Aren't largely influenced by outliers or missing values, and it can handle both numerical and categorical variables

- Cons: 
	- It tends to overfit
	- Can sometimes be unstable if small changes are made

## Analysis 

### Linear Regression Analysis 

![crime vs spening linear regression](https://user-images.githubusercontent.com/89143725/152275151-7fc5c1fe-845c-4e7d-af99-aaf511fd10f9.png)
![Spending vs crime t-test](https://user-images.githubusercontent.com/89143725/152269215-5dd16cf9-71ba-42bc-ae1e-af7491a44fca.png)

In a regression with a single independent variable, the coefficient tells you how much the dependent variable is expected to increase (if the coefficient is positive) or decrease (if the coefficient is negative) when that independent variable increases by one. After running the varaibles of crime rates to police spending into the linear regression model, the model coefficient was -0.52579153.  For our data the interpretation is that police spending per capita increases the crime rate decreases, therefore having an inverse relationship with each other. 


![poverty vs spending linear regression](https://user-images.githubusercontent.com/89143725/152275182-b30b04b6-5e59-4e0f-aec4-b8784d60f265.png)![Spending vs poverty t-test](https://user-images.githubusercontent.com/89143725/152269203-4006c925-8ae1-491d-8e91-8efbb0657671.png)

After running the variables of poverty rates to police spending into the linear regression model, the model coefficient was -0.0123. The interpretation was the same as the variables above. There is an inverse relationship between police spending per capita and poverty rates. As police spending increases, the poverty rate decreases, depending on the county. 

The problems we encountered while running both datasets with the linear regression model were due to the outliers in the dataset while also having a small dataset. We noticed that two points in the dataset were far more skewed than the rest, resulting in the accuracy of the model to be questioned. In the future to negate that problem, instead of testing for one year, there should be either more years to test or an average collection of years to test. That way the numbers are a more accurate representation to test. 

### OLS T-test Analysis
A one-sample t-test is used to determine whether there is a statistical difference between the means of a sample dataset and a hypothesized, potential population dataset. Generally, any t-value greater than +2 or less than – 2 is acceptable. The higher the t-value, the greater the confidence we have in the coefficient as a predictor. As for p-value, it will indicate whether these relationships are statistically significant. The t-test reults were :

	- Crime rate as dependent variable:
		- T-value: -0.634
		- P-value: 0.528

	- Poverty rate as dependent variable:
		- T-value: -1.464
		- P-value: 0.148

Since both of the p-values of each test is greater than 0.05, we can conclude that the results are not significant. The results we gathered have a probability of being random of 52.8% random for the crimes rates vs. police spending and 14.8% random for the poverty rates vs. police spending.

### Decision Tree Regressor Analysis

![decision tree r2 score](https://user-images.githubusercontent.com/89143725/152275000-1b39b929-dc4f-4be2-9cbd-8e3880e725c6.png)

After running our dataset through the decision tree regressor, the r-squared value came out to be -0.445. It can be concluded that there is a weak correlation between the variables.  

## Conclusion
Since the p-values for the models were higher than significance level of  0.05 (> 0.05) is not statistically significant and indicates strong evidence for the null hypothesis. This means we retain the null hypothesis and reject the alternative hypothesis. Having a negative r-squared value also means a poor fit model. 

## Dashboard
When creating the dashboard, we decided to use Tableau to help visualize and present our data. The dashboard will consist of an interactive filter that will showcase  the effects of police spending on the certain socioeconomic factors the user chooses. The dashboard will also show our machine learning analysis to see which counties are affected the most. 


### Link to Tableau Public
[Police Spending and Crime Tableau](https://public.tableau.com/views/Policespendingandcrime/PoliceSpendingStory?:language=en-US&:display_count=n&:origin=viz_share_link)


### Link to Google Slides presentation of visualizations
[Police Spending and Crime Slides](https://docs.google.com/presentation/d/1LYJrpBUI581ivz5SQTaxNwJcDvGMmIbdd7gtpuLLkl4/edit?usp=sharing)

## Team Members and Role Distribution
* Nhu - Square: Main one responsible for the Github repository.
* John - Triangle: Main one who will create a mockup of a machine learning model.
* Ramar - Circle: Main one who will create a mockup of a database with a set of sample data. 
* Austin - X: Main one who will decide which technologies will be used for each step of the project.

All members of the group will help others with their respective roles with input, analysis, and editing. 

## Technologies & Algorithms Used 
- Microsoft Excel
- Pandas
- Matplotlib
- Scikit-Learn
- PostgreSQL
- AWS
- Tableau
- SQLAlchemy
- Jupyter Notebook
- Linear Regression Model
- Random Forest Classifier
- Decision Tree Regressor
- One Sample T-test

## References 
Our data will focus primarily on the counties of Florida mainly the factors regarding: 
- State police budgets:  http://edr.state.fl.us/Content/local-government/data/revenues-expenditures/stwidefiscal.cfm
- Crime rates: https://www.fdle.state.fl.us/FSAC/Data-Statistics/UCR-Offense-Data.aspx
- Poverty rates:  https://www.flhealthcharts.gov/ChartsReports/rdPage.aspx?rdReport=NonVitalIndRateOnly.TenYrsRpt&cid=461
