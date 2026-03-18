-- 입양 시각 구하기(2)
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59413
-- 작성자: 정서영
-- 작성일: 2026. 03. 18. 14:51:18

-- 코드를 입력하세요
WITH RECURSIVE HOURS AS (
  SELECT 0 AS HOUR
  UNION ALL
  SELECT HOUR + 1
  FROM HOURS
  WHERE HOUR < 23
)

SELECT 
  H.HOUR,
  COUNT(A.ANIMAL_ID) AS COUNT
FROM HOURS H
LEFT JOIN ANIMAL_OUTS A
  ON H.HOUR = HOUR(A.DATETIME)
GROUP BY H.HOUR
ORDER BY H.HOUR;