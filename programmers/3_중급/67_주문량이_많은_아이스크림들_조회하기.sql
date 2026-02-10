-- 주문량이 많은 아이스크림들 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133027
-- 작성자: 정서영
-- 작성일: 2026. 02. 10. 15:55:23

SELECT F.FLAVOR
FROM FIRST_HALF F
JOIN (
    SELECT FLAVOR, SUM(TOTAL_ORDER) AS JULY_ORDER
    FROM JULY
    GROUP BY FLAVOR
) J
ON F.FLAVOR = J.FLAVOR
ORDER BY (F.TOTAL_ORDER + J.JULY_ORDER) DESC
LIMIT 3;
