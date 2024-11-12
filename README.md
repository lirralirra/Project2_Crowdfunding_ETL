Crowdfunding_ETL

 Project 2 - ETL Mini Project
Contributors:
•	Samadhi Loku Hewage
•	Cai Lishi


For our ETL mini-project,
1.	Set Up the Project Repository
o	Create a new GitHub repository named Crowdfunding_ETL.
o	Add your partner as a collaborator.
o	Clone this repository locally.
o	Rename ETL_Mini_Project_starter_code.ipynb with both of our  initials , ETL_Mini_Project_Starter_Code_LLokuhewage_CLishi

o	Add the Resources folder with the crowdfunding.xlsx and contacts.xlsx files to the  repo, then push changes to GitHub.


2.	 Create the Category and Subcategory DataFrames, Campaign DataFrame, Contacts DataFrame  - Samadhi Loku Hewage
•	Category DataFrame:
o	Extract data from crowdfunding.xlsx.
o	Create a category_id column with values cat1, cat2, etc.
o	Create a category column with unique category titles.
o	Export this DataFrame as category.csv.
•	Subcategory DataFrame:
o	Extract subcategory data similarly.
o	Create a subcategory_id column with values subcat1, subcat2, etc.
o	Create a subcategory column with unique subcategory titles.
o	Export this DataFrame as subcategory.csv.

•	Create the Campaign DataFrame
o	Extract and Transform Data from crowdfunding.xlsx:
o	Rename relevant columns (e.g., blurb to description).
o	Convert goal and pledged columns to float.
o	Convert UTC times in launched_at and deadline columns to datetime, renaming them launch_date and end_date.
o	Use category_id and subcategory_id to match data from the Category and Subcategory DataFrames.
o	Export the completed DataFrame as campaign.csv.
•	Create the Contacts DataFrame
•	Choose one method:
o	Option 1 (Dictionary): Import contacts.xlsx, convert rows to dictionaries, extract data, split names, and create first_name and last_name columns.

3.	Create the Crowdfunding Database- Cai Lishi
•	ERD and Schema:
o	Inspect all CSV files and design an ERD using QuickDBD.
o	Define tables with primary/foreign keys and constraints, then save the schema as crowdfunding_db_schema.sql.
•	Database Setup:
o	Create a PostgreSQL database called crowdfunding_db.
o	Use your schema file to create tables in the correct order.
o	Import each CSV file into its respective table.
o	Run SELECT * on each table to verify correct data.

•	Project Requirements Breakdown:
Requirement	Points
Category DataFrame Created	15
Subcategory DataFrame Created	15
Campaign DataFrame Created	30
Contacts DataFrame Created	15
Crowdfunding Database Created	25
