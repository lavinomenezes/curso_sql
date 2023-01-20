--SELECT 
--	COUNT(o.order_id) AS total_orders
--FROM orders o 
--
--SELECT
--	SUM(p.product_photos_qty) 
--FROM products p 
--
--SELECT
--		AVG(oi.price),
--		SUM(oi.price),
--		MAX(oi.price),
--		MIN(oi.price) 
--FROM order_items oi 
--
--SELECT 
--	COUNT(DISTINCT s.seller_city)
--FROM sellers s 

-- question 01
--SELECT 
--	COUNT(c.customer_unique_id) 
--FROM customer c 
--where c.customer_state = 'MG'

-- question 02
--SELECT 
--	COUNT(DISTINCT s.seller_city) 
--FROM sellers s 
--where s.seller_state = 'SC'

-- question 03
--SELECT 
--	COUNT(DISTINCT s.seller_city) 
--FROM sellers s 

-- question 04
--SELECT
--	COUNT(DISTINCT oi.order_id) 
--FROM order_items oi 
--where oi.price  > 3500

-- question 05 - 06 - 07
--SELECT 
--	AVG(oi.price),
--	MAX(oi.price),
--	MIN(oi.price)
--FROM order_items oi 

-- question 08
--SELECT
--	COUNT(DISTINCT oi.product_id) 
--FROM order_items oi
--WHERE oi.price < 100

-- question 09
--SELECT
--	COUNT(oi.seller_id) 
--FROM order_items oi
--WHERE shipping_limit_date < '2016-09-23'

-- question 10-11-12
--SELECT
--	DISTINCT op.payment_type,
--	MAX (op.payment_installments ),
--	MIN (op.payment_installments )
--FROM order_payments op 

-- question 13
--SELECT
--	AVG(op.payment_value) 
--FROM order_payments op
--WHERE op.payment_type ='credit_card'

-- question 14-16
--SELECT
--	COUNT(DISTINCT o.order_status),
--	COUNT(DISTINCT o.customer_id)
--FROM orders o 

-- question 15
--SELECT
--	DISTINCT o.order_status 
--FROM orders o 

-- question 16-17-18-19-20
--SELECT 
--	COUNT(DISTINCT p.product_id),
--	MAX(p.product_photos_qty),
--	MAX(p.product_weight_g),
--	avg( DISTINCT product_height_cm) 
--FROM products p 