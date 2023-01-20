--uma dimensao
--SELECT
--	p.product_category_name, 
--	COUNT(p.product_id), 
--	SUM(p.product_photos_qty),
--	AVG(p.product_weight_g),
--	MIN(p.product_height_cm) 
--FROM products p 
--GROUP BY p.product_category_name

-- duas dimensões
--SELECT 
--	s.seller_state,
--	s.seller_city,
--	COUNT(s.seller_id),
--	SUM(s.seller_zip_code_prefix) 
--FROM sellers s
--GROUP BY s.seller_state,s.seller_city  

--SELECT 
--	DATE(oi.shipping_limit_date ) as data_,
--	COUNT(oi.seller_id) as vendedores,
--	COUNT(DISTINCT oi.order_id) AS pedidos,
--	COUNT(oi.price) as preco_medio
--FROM order_items oi
--GROUP BY DATE(oi.shipping_limit_date )


--question 01-02
--SELECT 
--	c.customer_state, 
--	COUNT(DISTINCT c.customer_id) as clients,
--	COUNT(DISTINCT c.customer_city) as cidades
--FROM customer c  
--GROUP BY c.customer_state 

--question 03
--SELECT 
--	c.customer_state,
--	c.customer_city,
--	COUNT(DISTINCT c.customer_id)
--FROM customer c
--GROUP BY c.customer_state,c.customer_city 

--question 04
--SELECT 
--	c.customer_state,
--	c.customer_city,
--	COUNT(DISTINCT c.customer_id)
--FROM customer c
--GROUP BY c.customer_city, c.customer_state 

--question 05
--SELECT 
--	oi.seller_id,
--	COUNT(oi.order_id) 
--FROM order_items oi
--WHERE oi.price > 3500
--GROUP BY oi.seller_id

--question 06
--SELECT 
--	oi.seller_id,
--	MIN(oi.shipping_limit_date) as min_date,
--	MAX(oi.shipping_limit_date) as max_date,	
--	MIN(oi.freight_value) as min_price,
--	MAX(oi.freight_value) as max_price,
--	AVG(oi.freight_value) as avg_price
--FROM order_items oi
--WHERE oi.price > 1100
--GROUP BY oi.seller_id
 
--question 07
--SELECT 
--	oi.product_id,
--	AVG(oi.price), 
--	MAX(oi.price),
--	MIN(oi.price)
--FROM order_items oi 
--GROUP BY oi.product_id

--question 08
--SELECT
--	COUNT(DISTINCT oi.seller_id),
--	avg(oi.price)
--FROM order_items oi 
--WHERE oi.shipping_limit_date <'2016-09-23'
--GROUP by oi.shipping_limit_date 

--question 09
--SELECT
--	op.payment_type, 
--	COUNT(DISTINCT op.order_id) 
--FROM order_payments op 
--GROUP BY op.payment_type 

--question 10
--SELECT
--	op.payment_type,
--	COUNT(op.order_id), 
--	AVG(op.payment_value),
--	MAX(op.payment_installments) 
--FROM order_payments op 
--GROUP BY op.payment_type 

--question 11
--SELECT
--	op.payment_type,
--	op.payment_installments ,
--	MIN(op.payment_value), 
--	MAX(op.payment_value), 
--	AVG(op.payment_value),
--	SUM(op.payment_value) 
--FROM order_payments op 
--GROUP BY op.payment_type, op.payment_installments  

--question 12
--SELECT
--	o.customer_id,
--	AVG(order_id) 
--FROM orders o 
--group by o.customer_id 

--question 13
--SELECT 
--	o.order_status,
--	COUNT(o.order_id)
--FROM orders o 
--WHERE o.order_approved_at > '2016-09-23'
--GROUP BY o.order_status 

--question 14
--SELECT
--	DATE(o.order_approved_at),
--	COUNT(o.order_id) 
--FROM orders o 
--WHERE o.order_approved_at > '2016-09-23'
--GROUP BY DATE(o.order_approved_at)

--question 15
SELECT
	p.product_category_name,
	COUNT(DISTINCT p.product_id) 
FROM products p
GROUP BY p.product_category_name 