SELECT food_type, rest_id, rest_name, favorites
FROM REST_INFO
WHERE (food_type, favorites) IN (SELECT food_type, MAX(favorites) FROM REST_INFO GROUP BY food_type )
GROUP BY food_type
ORDER BY food_type DESC;