-- 1378. Replace Employee ID With The Unique Identifier
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- 작성자: 정서영
-- 작성일: 2026. 03. 30. 19:59:50

# Write your MySQL query statement below
select u.unique_id, e.name 
from Employees e
left join EmployeeUNI u
on e.id=u.id
