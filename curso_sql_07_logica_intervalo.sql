--BETWEEN
--SELECT 
--	COUNT(p.product_id) 
--FROM  products p
--WHERE p.product_category_name = 'audio'
--	AND p.product_photos_qty BETWEEN 3 AND 10
	
--SELECT 
--	COUNT(p.product_id) 
--FROM  products p
--WHERE p.product_category_name = 'audio'
--	AND p.product_photos_qty NOT BETWEEN 3 AND 10

--IN 
--SELECT 
--	COUNT(c.customer_unique_id) 
--FROM customer c
--WHERE c.customer_state IN ('MG','RJ')

--SELECT 
--	COUNT(c.customer_unique_id) 
--FROM customer c
--WHERE c.customer_state NOT IN ('MG','RJ')

--LIKE 
--SELECT 
--	p.product_category_name,
--	COUNT(p.product_id)
--FROM products p 
--WHERE p.product_category_name LIKE 'a%s%o'
--GROUP BY p.product_category_name 

--HAVING 
--SELECT 
--	p.product_category_name,
--	COUNT(p.product_id) 
--FROM products p 
--GROUP BY p.product_category_name 
--HAVING COUNT(p.product_id) > 1500 

----question 01
--SELECT 
--	o.order_status, 
--	COUNT(DISTINCT o.customer_id)
--FROM orders o 
--WHERE o.order_status IN ( 'processing','shipped', 'delivered' )
--	AND o.order_approved_at BETWEEN '2016-10-01' AND '2016-10-31'
--GROUP BY o.order_status
--HAVING COUNT(DISTINCT o.customer_id) > 5 

--question 02
--SELECT
--	op.payment_type, 
--	op.payment_installments,
--	COUNT(DISTINCT op.order_id),
--	SUM(op.payment_value)
--FROM order_payments op
--WHERE op.payment_installments BETWEEN 1 AND 5
--GROUP BY op.payment_type ,op.payment_installments 
--HAVING SUM(op.payment_value) > 5000  

--question 03
--SELECT
--	p.product_category_name, 
--	COUNT(DISTINCT p.product_id )
--FROM products p
--WHERE p.product_category_name IN ('perfumaria','brinquedos','esporte_lazer','cama_mesa_banho')
--	AND p.product_photos_qty BETWEEN 5 AND 10
--	AND p.product_height_cm > 10
--	AND p.product_width_cm > 20
--GROUP BY p.product_category_name
--HAVING COUNT(DISTINCT p.product_id) >10 

--question 05
--SELECT 
--	g.geolocation_state, 
--	COUNT(DISTINCT g.geolocation_city) 
--FROM geolocation g
--WHERE g.geolocation_state IN ('SP','RJ')
--   AND g.geolocation_lat > -24.53
--   AND g.geolocation_lng < -45.63
--GROUP BY g.geolocation_state 

--question 06
--SELECT 
--	p.product_category_name,
--	COUNT(DISTINCT p.product_id)
--FROM products p 
--WHERE p.product_category_name LIKE 'a%o'
--	AND p.product_photos_qty > 5
--GROUP BY p.product_category_name
--HAVING COUNT(DISTINCT p.product_id) > 10

SELECT
	c.customer_state,
	c.customer_city, 
	COUNT(DISTINCT c.customer_id) 
FROM customer c
WHERE c.customer_city LIKE 'm%o%a'
GROUP BY c.customer_state, c.customer_city  
HAVING COUNT(DISTINCT c.customer_id) > 10
