SELECT g.score, g.emp_no, e.emp_name, e.position, e.email
FROM (
    SELECT emp_no, SUM(score) AS score
    FROM HR_GRADE
    GROUP BY EMP_NO
    ORDER BY score DESC
    LIMIT 1) AS g
JOIN HR_EMPLOYEES AS e ON e.emp_no = g.emp_no;