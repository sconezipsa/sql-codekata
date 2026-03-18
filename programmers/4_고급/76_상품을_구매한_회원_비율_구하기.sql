-- 상품을 구매한 회원 비율 구하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131534
-- 작성자: 정서영
-- 작성일: 2026. 03. 18. 15:33:35

SELECT
    YEAR(O.SALES_DATE) AS YEAR,
    MONTH(O.SALES_DATE) AS MONTH,
    COUNT(DISTINCT O.USER_ID) AS PURCHASED_USERS,
    ROUND(
        COUNT(DISTINCT O.USER_ID) / (
            SELECT COUNT(*)
            FROM USER_INFO
            WHERE YEAR(JOINED) = 2021
        ),
        1
    ) AS PURCHASED_RATIO
FROM USER_INFO U
JOIN ONLINE_SALE O
    ON U.USER_ID = O.USER_ID
WHERE YEAR(U.JOINED) = 2021
GROUP BY YEAR(O.SALES_DATE), MONTH(O.SALES_DATE)
ORDER BY YEAR, MONTH;