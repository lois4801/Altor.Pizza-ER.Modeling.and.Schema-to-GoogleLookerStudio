/* after adding the previous sql program to the view section as stock1.
I have call out the  name, ordered weight */

	select ingre_name, sum(ordered_weight) as "ordered_weight "
	from 
	stock1
    group by ingre_name;
  
 ----------------------------------------------------------------------------- 
  
/* then  adding the ingre_id to be use for joining. */

	select ingre_id, ingre_name, sum(ordered_weight) as "ordered_weight "
	from 
	stock1
    group by ingre_id, ingre_name;
    
---------------------------------------------------------------------------------    
    
/*  I will store it as s2 and use it to join with 
inventory item_id, and  ingredients ingre_id */

/* I will add the total weight in stock from the ingredients table that will be 
quantity times by the weight that each ingredient is bought in each table */


-- Total weight in stock= ingredient quantity x ingredient weight

use altors_pizzeria;
select
	s2.ingre_name,
    s2.ordered_weight,
    ing.ingre_weight,-- to be used for computing total weight in stock
    inv.quantity,-- to be used for computing total weight in stock
    ing.ingre_weight * inv.quantity as "total_inv_weight"

from
  (
    select ingre_id, ingre_name, sum(ordered_weight) as "ordered_weight"
    from 
    stock1
    group by ingre_id, ingre_name
  ) s2

left join inventory inv on inv.ingre_id = s2.ingre_id
left join ingredients ing on ing.ingre_id = s2.ingre_id;

-----------------------------------------------------------------------------------
/*
To calculate the remaining weight. I will now subtract the 
total inventory weight minus the ordered weight. 

>>>>>  (ing.ingre_weight * inv.quantity) - s2.ordered_weight as "remaining weight" 

*/

use altors_pizzeria;
select
	s2.ingre_name,
    s2.ordered_weight,
    ing.ingre_weight,-- to be used for computing total weight in stock
    inv.quantity,-- to be used for computing total weight in stock
    ing.ingre_weight * inv.quantity as "total_inv_weight",
   ( ing.ingre_weight * inv.quantity) - s2.ordered_weight as "remaining weight" 

from
  (
    select ingre_id, ingre_name, sum(ordered_weight) as "ordered_weight"
    from 
    stock1
    group by ingre_id, ingre_name
  ) s2

left join inventory inv on inv.ingre_id = s2.ingre_id
left join ingredients ing on ing.ingre_id = s2.ingre_id;






