-- SELECT
-- 	customer_id,
-- 	order_id,
-- 	order_status 
-- FROM orders o
-- WHERE 
-- 	order_status = 'delivered'

-- question 01
--SELECT 
--	c.customer_id,
--	c.customer_city,
--	c.customer_state 
--FROM customer c 

--question 02
--SELECT 
--	c.customer_id,
--	c.customer_city,
--	c.customer_state 
--FROM customer c
--WHERE 
--	c.customer_state = 'SC'

--question 03
--SELECT 
--	c.customer_id,
--	c.customer_city,
--	c.customer_state 
--FROM customer c
--WHERE 
--	c.customer_city = 'florianopolis'
	
--question 04
--SELECT 
--	g.geolocation_state,
--	g.geolocation_lat,
--	g.geolocation_lng 
--FROM geolocation g
--where g.geolocation_state = 'SP'

--question 05
--SELECT 
--	oi.product_id,
--	oi.shipping_limit_date,
--	oi.price 
--FROM order_items oi 
--where oi.price  > 6300

--question 06
--SELECT 
--	op.order_id,
--	op.payment_type,
--	op.payment_installments
--FROM order_payments op 
--where op.payment_installments < 1

--question 07
SELECT 
	o.order_id,
	o.customer_id,
	o.order_status, 
	o.order_approved_at 
FROM orders o 
where o.order_approved_at  <= '2016-05-05'

