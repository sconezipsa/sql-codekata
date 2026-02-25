-- 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164671
-- 작성자: 정서영
-- 작성일: 2026. 02. 25. 15:52:18

SELECT
    CONCAT('/home/grep/src/', f.BOARD_ID, '/', f.FILE_ID, f.FILE_NAME, f.FILE_EXT) AS FILE_PATH
FROM USED_GOODS_FILE f
WHERE f.BOARD_ID = (
    SELECT b.BOARD_ID
    FROM USED_GOODS_BOARD b
    ORDER BY b.VIEWS DESC
    LIMIT 1
)
ORDER BY f.FILE_ID DESC;