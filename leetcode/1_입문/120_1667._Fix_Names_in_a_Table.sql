-- 1667. Fix Names in a Table
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/fix-names-in-a-table/
-- 작성자: 정서영
-- 작성일: 2026. 03. 30. 10:23:50

# Write your MySQL query statement below
select user_id,
concat(upper(substring(name,1,1)),lower
(substring(name,2))) as name
from Users
order by user_id
