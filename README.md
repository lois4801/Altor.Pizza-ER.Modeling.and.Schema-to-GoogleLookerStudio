![RawDesertedDuckling-size_restricted](https://github.com/lois4801/Altor-Pizza--SQL_to_GoogleLookerStudio/assets/96842662/5147466c-84fc-410d-98a3-fcc4afc4e6d0)

- For more projects to share like this. Please support me by following me in my social media accounts. 

Github>>>>>>  https://github.com/lois4801  
LinkedIn>>>>> https://www.linkedin.com/in/artemis-jay/).


# Altor-Pizza-End to End Project
For Altor Pizza, I completed an end-to-end data project for a new takeout and delivery business. I translated nine owner questions into a relational database covering orders, customers, menu items, recipes, inventory, staff and shifts. I designed the ER model in Microsoft Access, implemented the schema in MySQL, established table relationships and wrote SQL datasets for order activity, ingredient costs, stock consumption and labor costs.

When a direct MySQL-to-Looker Studio connection required paid cloud infrastructure, I designed a practical alternative using SQL exports, CSV files and Google Sheets. My analysis of the sample data identified $5,967 in sales, 626 items sold and pizza as 64% of revenue. The project demonstrates how I connect business requirements, database design, SQL analysis and visualization to produce actionable business intelligence.

# Highlights:
**End-to-end scope**: requirements analysis, ER modeling, relational schema design, SQL, troubleshooting and Looker Studio reporting.
**Tools:** Microsoft Access, MySQL Workbench, SQL, CSV, Google Sheets and Google Looker Studio.
**Database coverage:** orders, customers, addresses, items, recipes, ingredients, inventory, staff, shifts and staff rotation.
**SQL techniques:** joins, grouped aggregations, subqueries, calculated fields, TIMEDIFF, cost calculations and inventory consumption logic.
**Deliverables:** three reporting areas covering order activity, inventory management and staffing costs.
**Documentation:** a 46-page Access object-definition report, SQL dump, schema scripts, dashboard queries and troubleshooting notes.

# Problems
**No existing data foundation:** The business required a database before meaningful reporting could begin.
**Multiple operational areas:** Orders, recipes, inventory and staffing needed to connect without creating duplicated or inconsistent records.
**Referential integrity:** Relationships required compatible key types and correctly defined constraints.
**SQL errors:** An inventory-cost query returned an unknown-column error because ingredient fields were referenced incorrectly inside a subquery.
**Reporting infrastructure cost:** Connecting MySQL directly to Looker Studio required paid cloud services.
**Import type problems:** Incorrect field types prevented Looker Studio tables and charts from displaying numeric values.
**Mixed data grains:** The orders table contains order lines, not one row per customer order, which can lead to inflated order counts.

# Solutions
- Designed a normalized relational model around the owner's business questions.
- Established relationships between orders, customers, addresses, items, recipes, ingredients and inventory.
- Used SQL joins and grouped calculations to create dashboard-ready datasets.
- Corrected subquery references from the outer alias to the ingredient table fields.

- Calculated ingredient usage as:
Ordered weight =Order quantity × Recipe quantity

- Calculated ingredient cost as:
Ingredient cost= Ordered weight× ( Ingredient price / Ingredient weight) 

​- Calculated remaining inventory by subtracting consumed weight from available stock weight.
- Calculated staff hours with TIMEDIFF and multiplied them by hourly rates.
- Created a lower-cost reporting pipeline: MySQL query output to CSV, CSV to Google Sheets, then Looker Studio.
- Corrected imported data types so measures worked properly in charts.

  
# Lessons learned
- **Model before visualizing.** Business questions should determine the entities, relationships and data grain.
- **Name the grain clearly.** The database has 314 order lines but only 58 unique order IDs.
- **Validate every relationship.** Primary and foreign keys require matching data types and appropriate constraints.
- **Test intermediate SQL outputs.** Building complex calculations incrementally makes errors easier to isolate.
- **Validate field types after migration.** Numeric values imported as text can silently break dashboards.
- **Design for production.** The next version should add stronger primary keys, indexes, proper datetime fields and automated refresh.




 
### Owners Questions that needed to be answered.
1.	What are the total orders per category?
2.	Delivery percentage as per my rider’s performance?
3.	Total order, and total quantity delivered for the whole shift/week/month. 
4.	Identify my best seller items and its corresponding total sales.
5.	Give a cost analysis of my pizza per category.
6.	What is my sales percentage per category.
7.	Give me the ingredient analysis per pizza for me to know its prices, total quantity, and percentage remaining.
8.	Show me staff percentage analysis,
9.	Show me staff position summary and its staff rotation shift analysis.
-----------------------------------------------------------------------------
### Project Planning

![Untitled](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/600e4b64-283f-4577-9c53-e0f7f2243fae)


### Main areas of focus

A. Customers Orders
- To design the database and table in it, we will spec out all the fields of the data we want to collect. Then normalize the data adding more related tables and defining the table relationship. He has specified the different data he wants to collect from each order.

Orders Data Required
•	Item name
•	Item price
•	Quantity
•	Customer name
•	Delivery address
•	Product Category
•	Pizza 
•	Sides 
•	Desserts 
•	Beverages

B.	Stock Control Requirement 
- Wants to be able to know when its times to order new stock. 
-To do this were going to need more information about the following what ingredients go into each pizza ,their quantity based on the size of the pizza ,the existing stock levels
- Different lead times of suppliers to calculate exactly when to order each item or ingredients. The owner said lead time for delivery by suppliers is the same for all ingredients.

C. Staff data requirements
  - Wants to know which staff member are working when.
  - Based on the staff salary information, how much each pizza costs( ingredients+chefs+delivery)
-------------------------------------------------------------------------------------
### Designing Phase

-	There are various ways to do this. Due to lack of resources, budget and  connection issues, I will be doing it with this method to save money. 
-	Everything that can be done in MySQL can also be done in Access but I prefer doing it in MySQL because it is more friendly user.
-	There are various kinds of visualization that can also be use. But the friendliest I have used so far is Google Looker Studio. Due to connection issues as well, I have manually imported those visualization datasets in my google drive after changing the type into Google Sheets.

## Process Map 

![Process Map](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/57572634-ca56-4393-8967-bd3f7ca8be20)

## ER Modeling and Relational Schemas Designing Phase through MS ACCESS. 
![er model](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/65efea4f-ba59-4558-8c85-d4fc9385908b)

- To populate the data I decided to import those excel files into MySQL for Querying and creating my dataset for DataVisualization.

   ![Untitled2](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/f2077ecd-c3ea-4847-ae64-9e0546ea048b)


## Troubleshooting During Database Designing and DataVisualization

![s1](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/7acc3d6f-ff71-4443-8580-cfe942d1a130)

![s2](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/d6f21f22-811b-4168-b7f1-8a3b96daa249)

![s3](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/40ce42b0-da45-4486-a334-3e344cdb8120)

## MySQL Server Issues and Alternatives
- Connecting mysql server to the google looker studio is pricey. I have to connect to google cloud for me to access my database in mysql server.
  
![s4](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/1fc98ca8-d250-415e-8c4b-1ffc602ce9e7)

- So right now, Ill just upload my database and create a visualization using google looker studio
I have loaded in sql workbench all my sql queries then download a copy of csv.

![s5](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/58eb3fc1-39d3-4f8c-af84-be6a39216588)

- I will also use dashboards in csv file to create visualizations on the google looker studio
during the importation and make sure that all fields are aligned to the type of data that I want present on each cell.  I made a mistake during my first try and won’t show any number during table or chart creation.

![s6](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/0065c1b4-3ea5-4ef0-ac92-20f851c14a5a)

![s7](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/caf8c4a0-6e33-4c4a-b742-00086cceacac)

![s8](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/c232e5ee-0787-4645-a524-7e758e0bad96)

![s9](https://github.com/lois4801/Altor.Pizza-ER.Modeling.and.Schema-to-GoogleLookerStudio/assets/96842662/d3046db7-c887-4ccd-b0b3-9d05de975f9f)



------------------------------------------------------------------------------------
### To request for an access to my PowerBI Dashbaord. Kindly please follow me first in github and linkedIn and click this link to motivate me to share more projects like this.Thanks for the support( https://github.com/lois4801 , https://www.linkedin.com/in/artemis-jay/).

![g1](https://github.com/lois4801/Altor-Pizza--SQL_to_GoogleLookerStudio/assets/96842662/ad9bae61-cf43-4dac-bba1-8133988f0e23)

![g2](https://github.com/lois4801/Altor-Pizza--SQL_to_GoogleLookerStudio/assets/96842662/d852dd93-038b-4a37-8d44-eea970a4183a)

![g3](https://github.com/lois4801/Altor-Pizza--SQL_to_GoogleLookerStudio/assets/96842662/e7a77cfc-7540-4c92-bbfa-ea918dd94fe5)


[https://lookerstudio.google.com/s/iseMTsEaKuY ](https://lookerstudio.google.com/reporting/e03c8853-9854-46aa-a1cf-ab68dba5944c)
