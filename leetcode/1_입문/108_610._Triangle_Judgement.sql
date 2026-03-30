-- 610. Triangle Judgement
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/triangle-judgement/
-- 작성자: 정서영
-- 작성일: 2026. 03. 30. 09:52:07

# Write your MySQL query statement below
select *, case when x+y>z
and y+z>x
and z+x>y then 'Yes'
else 'No' end as triangle
from Triangle
