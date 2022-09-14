# Netflix_Movies_and_TV_Show_Analysis
This focuses on the company Netflix and study the analysis of TV-Show and Movies on the last 5 years. 

# Worked on this project as a team.
[Nada M Awad](https://github.com/NadaMAwad) & [Mohameed MEslmani](https://github.com/MEslmaniiii)

## Project Covers:
- ERD.
- Normalization.
- Data cleaning using Power Query in Excel.
- Analysis by SQL Server.
- Visualization by Power BI \ Tableau. (in progress)
- EDA by Python. (in progress)

### Step 1:
We Searched about alot of data that contains many types of columns,rows and we found suitable one >>>> https://www.kaggle.com/
### Step 2:
Data was in only one table and some columns were multivalued. 
We tried to clean it by SQL But after searching we decided to use Power Query in Microsoft Excel. 

![image](https://user-images.githubusercontent.com/58444526/190162368-530e16ba-d4bd-4de6-a259-89664ef5eb7e.png)

(Fig1. Data in One Table)


### Step 3:
We understood the data and developed an expressive scenario.
Then Create ERD
![image](https://user-images.githubusercontent.com/58444526/190162542-c002f1ad-25cb-416d-a4bb-70a2ed724d98.png)

(Fig2. ERD)

And convert it to Actual dataset by Normalize the table of data by Power Query:
- Split Columns (Director, Country, Listed in) in Row.
- Create a table for each column with show_id .
- Clean columns by trim spaces.
- Remove duplicated rows and null values.
- Create other tables for each row without show_id.
- Set a new index column as PK for each table.
- Join tables in step 2 and 5 to create tables that have show_id and id for each other tables.
- Convert datatype of added_date to date type.
- Split the Duration column and remove string from it. 

![image](https://user-images.githubusercontent.com/58444526/190162647-d7b2cd13-115b-47e8-8a71-2d0e6523864a.png)

(Fig3. Data After Splitting)


Then we import these Tables into SQL Server and create a Diagram that explains relationships.

![image](https://user-images.githubusercontent.com/58444526/190162792-d2c8a551-4cf8-4bc5-bd3b-f9a56a5f3708.png)

(Fig4. Database Diagram)
