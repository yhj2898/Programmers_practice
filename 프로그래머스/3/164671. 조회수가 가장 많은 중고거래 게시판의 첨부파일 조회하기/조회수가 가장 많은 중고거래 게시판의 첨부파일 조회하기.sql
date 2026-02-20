SELECT CONCAT('/home/grep/src/',b.board_id,'/',f.file_id,file_name,file_ext) AS FILE_PATH
FROM USED_GOODS_FILE AS f
JOIN (
    SELECT board_id
    FROM USED_GOODS_BOARD
    WHERE views = (SELECT MAX(views) FROM USED_GOODS_BOARD)) AS b ON f.board_id = b.board_id
ORDER BY file_id DESC
