/*

Dashboard 2- Inventory Management
-	Calculate how much inventory will be used and need for reordering. 
-	Calculate how much pizza costs and its related ingredient costs.

1.	Total quantity by ingredient
a.	No. of orders x ingredient quantity in recipe

2.	Total cost of ingredients
a.	No of ingredients x ingredient price

3.	Calculated cost of pizza
a.	the 

4.	Percentage stock remaining by ingredient

*/


/*Sum of  quantity ordered per item and showing its corresponging recipe item
joined by item_id*/
  
use altors_pizzeria;
Select
o.item_id,
i.recipe_id,
i.item_name,
sum(o.quantity) as "order quantity " from orders o
left join items i on o.item_id=i.item_id
group by 
	o. item_id,
    i. recipe_id,
    i. item_name;
    

/* adding the recipe quantity and its corresponding ingredients id
to the previous table */


use altors_pizzeria;
Select
o.item_id,
i.recipe_id,
i.item_name,
r.ingre_id,
r.quantity as "recipe_quantity",
sum(o.quantity) as "order quantity "

from orders o

left join items i on o.item_id=i.item_id
left join recipes r on i.recipe_id=r.recipe_id


group by 
	o. item_id,
    i. recipe_id,
    i. item_name,
    r.ingre_id,
    r.quantity


/* adding the ingredients name and id in the previous table */

use altors_pizzeria;
Select
o.item_id,
i.recipe_id,
i.item_name,
ing.ingre_id,
ing.ingre_name,
r.quantity as "recipe_quantity",
sum(o.quantity) as "order quantity "

from orders o

left join items i on o.item_id=i.item_id
left join recipes r on i.recipe_id=r.recipe_id
left join ingredients ing on ing.ingre_id=r.ingre_id

group by 
	o. item_id,
    i. recipe_id,
    i. item_name,
    r.ingre_id,
    r.quantity,
    ing.ingre_id,
	ing.ingre_name
    


/* Calculating cost of pizza- added the ingre_weight and ingre_price in the
   subquery and in the group by */




use altors_pizzeria;
Select 
s1.item_name,
s1.ingre_id,
s1.ingre_name,
s1.ingre_weight,
s1.ingre_price,
s1 order_quantity,
s1.recipe_quantity,
s1.order_quantity *  s1.recipe_quantity as  "ordered_weight",
s1.ingre_price / s1.ingre_weight as "unit_cost",
(s1.order_quantity *  s1.recipe_quantity)  *  (s1.ingre_price / s1.ingre_weight) as "ingredient_cost"

from
		(
			Select
			o.item_id,
			i.recipe_id,
			i.item_name,
			ing.ingre_id,
			ing.ingre_name,
            s1.ingre_weight, 
			s1.ingre_price,
			r.quantity as "recipe_quantity",
			sum(o.quantity) as "order quantity "

			from orders o

			left join items i on o.item_id=i.item_id
			left join recipes r on i.recipe_id=r.recipe_id
			left join ingredients ing on ing.ingre_id=r.ingre_id

			group by 
				o. item_id,
				i. recipe_id,
				i. item_name,
				r.ingre_id,
				r.quantity,
				ing.ingre_name,
                ing.ingre_weight,
                ing. ingre_price 
		)
s1


/* This query is creating error stating " UKNOWN COLUMN s1.ingre_weight in field list"
It looks like the error I am encountering is due to the fact that the  "s1.ingre_weight"
column is not being properly referenced in the subquery. In the subquery, I am referencing "ing.ingre_weight"
Same with s1.ingre_price


See below for the correct one
*/

/*This corrected SQL statement should fix the error you encountered and allow you to calculate
 the cost of making a pizza using the ingredients and item tables.
 */
 
USE altors_pizzeria;
SELECT 
    s1.item_name,
    s1.ingre_id,
    s1.ingre_name,
    s1.ingre_weight,
    s1.ingre_price,
    s1.order_quantity,
    s1.recipe_quantity,
    s1.order_quantity *  s1.recipe_quantity AS "ordered_weight",
    s1.ingre_price / s1.ingre_weight AS "unit_cost",
    (s1.order_quantity *  s1.recipe_quantity)  *  (s1.ingre_price / s1.ingre_weight) AS "ingredient_cost"
FROM
(
    SELECT
        o.item_id,
        i.recipe_id,
        i.item_name,
        ing.ingre_id,
        ing.ingre_name,
        ing.ingre_weight, -- this has been changed from s1.ingre_weight to ing.ingre_weight
        ing.ingre_price,-- this has been changed from s1.ingre_price to ing.ingre_price
        r.quantity AS "recipe_quantity",
        SUM(o.quantity) AS "order_quantity"
    FROM orders o
    LEFT JOIN items i ON o.item_id=i.item_id
    LEFT JOIN recipes r ON i.recipe_id=r.recipe_id
    LEFT JOIN ingredients ing ON ing.ingre_id=r.ingre_id
    GROUP BY 
        o.item_id,
        i.recipe_id,
        i.item_name,
        r.ingre_id,
        r.quantity,
        ing.ingre_name,
        ing.ingre_weight,
        ing.ingre_price 
) s1;

