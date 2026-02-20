SELECT 
    a.id,
    COUNT(b.id) AS CHILD_COUNT
FROM ECOLI_DATA a
LEFT JOIN ECOLI_DATA b on a.id=b.parent_id
GROUP BY a.id
ORDER BY a.id;