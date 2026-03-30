-- 197. Rising Temperature
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/rising-temperature/
-- 작성자: 정서영
-- 작성일: 2026. 03. 30. 20:45:30

# Write your MySQL query statement below
select w1.id
from Weather w1
join Weather w2
on datediff(w1.recordDate,w2.recordDate)=1
where w1.temperature>w2.temperature
