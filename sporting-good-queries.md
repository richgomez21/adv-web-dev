SELECT 
	users.user_first_name, 
    users.user_last_name,
    items.item_description,
    items.item_unit_price,
    orders.order_id,
    orders.order_shipping_date
FROM lineitems 
INNER JOIN items ON items.item_id = lineitems.item_id
INNER JOIN orders ON lineitems.order_id = orders.order_id
INNER JOIN customers ON customers.user_id = orders.customer_user_id
INNER JOIN users ON customers.user_id = users.user_id
WHERE orders.order_id = 1001;