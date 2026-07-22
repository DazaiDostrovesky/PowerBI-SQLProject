# PowerBI-SQLProject
This is a BI project analyzing Superstore data using PostgreSQL and Power BI. This project includes SQL scripts  for data warehousing, ETL, and an interactive dashboard. 

This project does the following:
- Extracts sales data from CSV
- Transforms and cleans data using SQL
- Loads into a PostgreSQL data warehouse
- Creates interactive Power BI dashboard


This project includes the following:
- A PostgreSQL data warehouse with sales_analytics schema
- 3 Power BI dashboard pages (Executive Summary, Product Analysis, Customer Insights)
- Over 9,800 sales records analyzed.
- SQL views for optimized Power BI connectivity

Download the Superstore dataset from Kaggle (https://www.kaggle.com/datasets/vivek468/superstore-dataset-final) and save as `train.csv` in the project folder.
The sql downloads should be done in the following order:
1. CreateSchema
2. CreateTable
3. ImportData
4. CleanData
5. CreateView

Note: Make sure `train.csv` is in the same folder as the SQL files before the third step.
