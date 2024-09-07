SELECT first_name ||' '|| last_name AS full_name, email, address, phone, city, country, sum(amount) AS total_purchase
FROM customer cs
JOIN address ad
ON cs.address_id = ad.address_id
JOIN city as ct
ON ad.city_id = ct.city_id
JOIN country cy

select * from customer where first_name = 'john'