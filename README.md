#  Final Project 
###  U of T Data Analytics Final Project. 

##  Segment 1 

## Selected Topic:  	 The effects of the COVID-19 pandemic on mental health 
### Reason of Selection: Ongoing pandemic and its impact on mental health of various levels of communities 

## Source of Data: [Centers of Disease Control and Prevention] (https://www.cdc.gov)
> The U.S. Census Bureau, in collaboration with five federal agencies, launched the Household Pulse Survey to produce data on the social and economic impacts of Covid-19 on American households. The Household Pulse Survey was designed to gauge the impact of the pandemic on employment status, consumer spending, food security, housing, education disruptions, and dimensions of physical and mental wellness.

> The survey was designed to meet the goal of accurate and timely weekly estimates. It was conducted by an internet questionnaire, with invitations to participate sent by email and text message. The sample frame is the Census Bureau Master Address File Data. Housing units linked to one or more email addresses or cell phone numbers were randomly selected to participate, and one respondent from each housing unit was selected to respond for him or herself. Estimates are weighted to adjust for nonresponse and to match Census Bureau estimates of the population by age, gender, race and ethnicity, and educational attainment. All estimates shown meet the NCHS Data Presentation Standards for Proportions,

### Question: * What group is most affected in terms of mental health due to the COVID-19 pandemic? * 
> Bereavement, isolation, loss of income and fear are triggering mental health conditions or exacerbating existing ones. Many people may be facing increased levels of alcohol and drug use, insomnia, depression and anxiety in various age group as well as in levels of community.
>People with pre-existing mental, neurological or substance use disorders are also more vulnerable to infection, they may stand a higher risk of severe outcomes and even death. "Good mental health is absolutely fundamental to overall health and well-being."

### Team Communication and Collaboration:
> Team members are communicating through Slack medium and having Zoom meetings during scheduled class time and as on demand basis.

### Dat![communication](https://user-images.githubusercontent.com/90229438/152284910-739d3ec8-20c1-4ed0-a06a-88f7b2fa763b.PNG)

abase Selection
> We are using **sql** to established the database **"Mental"**. 
> The **tables** we are using is Depression_2020, Anxiety_2020, Either_2020, Sex_2020, Race_2020, Age_2020, Edu_2020, and State_2020.

## Database Entity Relation Diagram: 
![ERD](https://github.com/mogazz69/Final_project/blob/7489cecdd913c229e6458409a534bf54936a6513/Database/mentalDB.png)



> We extract the factor tables such as Sex, Race, Age, Edu, and State to investigate the information about each group and  preparing for further visualization and machine learning model training. (test_revised_Shery.ipynb is the file to extract and clean the factor tables)

### Project Location: 	[Github.com/Final_project](https://github.com/IrfanSayeed/Final_project.git) **
### Source Files: 	    [Github.com/Final_project](https://github.com/mogazz69/Final_project/tree/main/Resources) **
### Database Location: 	[[Github.com/Final_project](https://github.com/mogazz69/Final_project/tree/main/Database) **
### Branch: **
![Branches by member](https://github.com/mogazz69/Final_project/blob/main/Database/Branches.PNG)

### Project Roles (Segment 1)
>- Mohamed * (Square Role) *
>- Kyle    * (Triagle Role) *
>- Sherry  * (Circle Role) *
>- Irfan   * (X Role) *

## Segment 2

## Application and Databases: 

![tools](https://user-images.githubusercontent.com/90229438/152284992-8eb85bca-b234-4f44-9685-eb822b516ad4.PNG)

### > Dash board
> https://public.tableau.com/app/profile/mohamed.el.gazzar/viz/depression-2021/Dashboard1?publish=yes

## ![dashboard](https://user-images.githubusercontent.com/90229438/152285308-035cc0d4-cef7-405f-8e22-16c96ce39bff.PNG)

# Google Slide: 
https://docs.google.com/presentation/d/146UxpxG5Yst55UdF8sfNhSkWJAbKvCrJVbaiyxsWpIU/edit#slide=id.ge965474a9_3_282

## Machine Learning Model
The CDC dataset is great real world data and shows us a lot of information. However, There was quite a bit of clean up needed when it came to data preprocessing.
Such an example is that there is 4 Full columns that describe the time period of the data in the rows, many are buggy with poorly inputted information. It was up to 
us to clear out bad and redudant data, limiting 4 columns to 1 and transforming the data to be useable.

Difficult to use and redudant data was the most common problem in the data preprocessing. The dataset fundementally was compiled data intended to be read only to show statistics. 
The information is not listed on an individual basis but rather pre-seperated into subgroups. It therefor took a lot of creativity and a lot of dropped columns before it was useable.
We ended up dropping the columns "Phase", "State", 3 time period columns, "Low CI", "High CI", "Confidence Interval", "Quartile Range". As some columns were either redudant OR were columns with data that does not effect the values we were looking for.

The final step in the pre-processing was creating a target feature for the machine learning model, something that would be useful and readable to an end user.
We ended up limiting the final data table into 6 columns "Indicator", "Group", "Subgroup", "Time Period","Value" and creating a new column, "risk" based off of our value column. It effectively binned many values in the orignal dataset 
into only 4 strings of different risk levels. It made for a much more accurate and readable machine learning model.

The value column was removed before inputting into the ML model and the target for the model became the "risk" column.

Originally, to test how well the cleaned data performed we seperated the training and testing data by grouping them by their respective years to make sure there was some amount of accuracy in the model and tables we created.
We ended up getting 30% accuracy, which in a dataset with so many factors unaccounted for was determined was a well performing model. In the pandemic, there are different laws enacted, events, places, individuals health. These factors were not measured and would require the data to be collected in a better way to maintain a higher accuracy.
The final model was trained on the cleaned data table as a whole and was spilt by the default amount of sklearn. A function was created that allows us to run a new single row of inputted data through the model and output a risk factor.

We decided on using a supervised tree model for our machine learning. The most important reason we chose this model is because of how easy it is to rank feature importance. Our goal
was to find out what factors were major contributors to mental health disorders during the pandemic and using this model allowed us to do just that. It doesn't give us the highest accuracy compared to other models. But given the data we had access to we decided it was better to have access to feature rankings.

The final trained accuracy was around 60%.

## Segment 3

