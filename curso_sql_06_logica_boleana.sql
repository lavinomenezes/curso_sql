--SELECT 
--	COUNT(p.product_id) 
--FROM  products p
--WHERE p.product_category_name = 'audio'
--	AND p.product_photos_qty >= 3
--	AND p.product_photos_qty < 10

--SELECT 
--	COUNT(p.product_id) 
--FROM  products p
--WHERE p.product_category_name = 'audio'
--	OR  p.product_photos_qty >= 3

--question 01
--SELECT 
--	COUNT(c.customer_unique_id) 
--FROM customer c
--WHERE c.customer_state = 'MG'
--	OR c.customer_state = 'RJ'
--24487

----question 02
--SELECT 
--	g.geolocation_state, 
--	COUNT(DISTINCT g.geolocation_city) 
--FROM geolocation g
--WHERE g.geolocation_state = 'SP'
--   OR g.geolocation_state = 'RJ'
--   AND g.geolocation_lat > -24.53
--   AND g.geolocation_lng < -45.63
--GROUP BY g.geolocation_state 
--1048

----question 03
--SELECT 
--	COUNT(DISTINCT oi.order_id),
--	COUNT(DISTINCT oi.product_id),
--	AVG(oi.price)
--FROM order_items oi
--WHERE oi.freight_value > 20
--	AND DATE(oi.shipping_limit_date) >= '2016-10-01'
--	AND DATE(oi.shipping_limit_date) <= '2016-10-31'


----question 04
--SELECT
--	op.payment_installments, 
--	COUNT(op.order_id),	
--	SUM(op.payment_installments) 
--FROM order_payments op
--WHERE (op.payment_installments >=1 AND op.payment_installments <=5)
--	OR (op.payment_value >= 500)
--GROUP BY op.payment_installments 

----question 05
--SELECT
--	o.order_status, 
--	COUNT(o.order_id) 
--FROM orders o
--WHERE (o.order_estimated_delivery_date > '2017-01-01' OR o.order_estimated_delivery_date < '2016-11-23') 
--	AND (o.order_status = 'processing' OR o.order_status = 'canceled')
--GROUP BY o.order_status 

----question 06
--SELECT 
--	p.product_category_name, 
--	COUNT(DISTINCT p.product_id) 
--FROM products p
--WHERE p.product_photos_qty > 5
--	AND p.product_weight_g > 5
--	AND p.product_height_cm > 10
--	AND p.product_width_cm > 20
--	AND (p.product_category_name = 'perfumaria' 
--			OR p.product_category_name = 'brinquedos' 
--			OR p.product_category_name = 'esporte_lazer' 
--			OR p.product_category_name = 'cama_mesa_banho'
--			OR p.product_category_name = 'moveis_escritorio')
--GROUP BY p.product_category_name 
--	 
	