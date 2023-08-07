/*  
Dashboard 1- Order Activity
1.	Total Orders
2.	Total Sales
3.	Total Items
4.	Average order value
5.	Sales by category
6.	Top selling items
7.	Orders by hour
8.	Sales by hour
9.	Orders by address
10.	Orders by delivery/ pick up

*/
use altors_pizzeria;
SELECT
	o.order_id,
	i.item_price,
	o.quantity,
	i.item_cat,
	i.item_name,
	o.created_date,
	a.delivery_address,
	a.delivery_city,
	a.delivery_zipcode,
	o.delivered
    
FROM
	orders o
	LEFT JOIN items i ON o.item_id = i.item_id
	LEFT JOIN address a ON o.address_id = a.address_id;

