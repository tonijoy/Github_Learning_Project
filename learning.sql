SELECT first_name ||' '|| last_name AS full_name, email, address, phone, city, country, sum(amount) AS total_purchase
FROM customer cs
JOIN address ad
ON cs.address_id = ad.address_id
JOIN city as ct
ON ad.city_id = ct.city_id
JOIN country cy
ON ct.country_id = cy.country_id
JOIN payment pm
ON cs.customer_id = pm.customer_id
GROUP BY 1, 2, 3, 4, 5, 6
ORDER BY 7 DESC
LIMIT 10