-- 1527. Patients With a Condition
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/patients-with-a-condition/
-- 작성자: 정서영
-- 작성일: 2026. 03. 30. 19:50:24

select patient_id, patient_name, conditions
from Patients
where conditions like 'DIAB1%' OR conditions like '% DIAB1%'

