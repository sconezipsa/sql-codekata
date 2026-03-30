-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
-- 작성자: 정서영
-- 작성일: 2026. 03. 30. 20:24:00

# Write your MySQL query statement below
select v.customer_id, count(*) count_no_trans
from Visits v
left join Transactions t
on v.visit_id=t.visit_id
where t.visit_id is null
group by customer_id
