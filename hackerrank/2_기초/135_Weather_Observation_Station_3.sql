-- Weather Observation Station 3
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-3/problem
-- 작성자: 정서영
-- 작성일: 2026. 03. 30. 21:09:28

/*
Enter your query here.
*/
SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;