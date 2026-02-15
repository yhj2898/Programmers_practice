SELECT
    d.dept_id,
    d.dept_name_en,
    ROUND(AVG(e.sal),0) AS avg_sal
FROM HR_DEPARTMENT AS d
JOIN HR_EMPLOYEES AS e ON d.dept_id = e.dept_id
GROUP BY d.dept_id
ORDER BY avg_sal DESC;
