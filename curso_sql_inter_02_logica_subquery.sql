--SELECT 
--	AVG(oi.price)
--FROM  order_items oi 
--WHERE oi.product_id IN ( SELECT
--						       p.product_id 
--						 FROM  products p
--						 WHERE p.product_category_name IN ('perfumaria','artes'))

--SELECT 
--	oi.product_id,
--	(SELECT p.product_category_name  FROM products p WHERE p.product_id = oi.product_id) AS category
--FROM order_items oi 

--SELECT
--	p.product_category_name,
--	(SELECT AVG(oi.price) FROM order_items oi) AS avg_price_all,
--	(SELECT AVG(oi2.price) FROM order_items oi2 WHERE  (oi2.product_id = p.product_id)) AS avg_price
--FROM products p 
--LIMIT 20

SELECT AVG(oi.price) as avg_price
FROM order_items oi
WHERE oi.order_id IN(SELECT o.order_id  FROM orders o  WHERE o.order_status = 'delivered')