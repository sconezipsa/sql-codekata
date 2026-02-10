-- 우유와 요거트가 담긴 장바구니Summer/Winter Coding(2019)
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/62284
-- 작성자: 정서영
-- 작성일: 2026. 02. 10. 09:35:53

-- 코드를 입력하세요
SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME IN ('Milk', 'Yogurt')
GROUP BY CART_ID
HAVING COUNT(DISTINCT NAME) = 2
ORDER BY CART_ID;
