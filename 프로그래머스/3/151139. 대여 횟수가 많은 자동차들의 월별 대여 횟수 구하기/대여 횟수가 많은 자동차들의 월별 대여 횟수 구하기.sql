SELECT
    month(start_date) AS month,
    car_id,
    COUNT(*) AS records
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE month(start_date) BETWEEN 8 and 10
    AND car_id IN (SELECT car_id
                    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                    WHERE month(start_date) BETWEEN 8 and 10
                    GROUP BY car_id
                    HAVING COUNT(*)>=5) 
GROUP BY month, car_id
ORDER BY month, car_id DESC