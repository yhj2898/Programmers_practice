SELECT
    u.user_id,
    u.nickname,
    CONCAT(city, ' ', street_address1, ' ', street_address2) AS 전체주소,
    CONCAT(SUBSTRING(TLNO,1,3),'-',SUBSTRING(TLNO,4,4),'-',SUBSTRING(TLNO,8,4)) AS 전화번호
FROM USED_GOODS_USER AS u
JOIN USED_GOODS_BOARD AS b ON u.user_id = b.writer_id
GROUP BY b.writer_id
HAVING COUNT(*)>=3
ORDER BY u.user_id DESC
