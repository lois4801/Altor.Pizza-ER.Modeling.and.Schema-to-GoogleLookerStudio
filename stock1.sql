
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
        ing.ingre_weight,
        ing.ingre_price,
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
