-- 1068. Product Sales Analysis I
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/product-sales-analysis-i/
-- 작성자: 정서영
-- 작성일: 2026. 03. 30. 20:18:19

# Write your MySQL query statement below
from Sales s
join Product p
select p.product_name, s.year, s.price
on s.product_id=p.product_id
