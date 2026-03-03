Select * from claims_data_cleaned;

SELECT c.Diagnosis_Code, i.Description, COUNT(*) AS claim_count
FROM claims_data_cleaned c
JOIN icd10_codes i
ON c.Diagnosis_Code = i.Diagnosis_Code
GROUP BY c.Diagnosis_Code, i.Description
ORDER BY claim_count DESC
limit 5 ;

SELECT c.Procedure_Code, cpt.Description, COUNT(*) AS pro_count
FROM claims_data_cleaned c
JOIN cpt_codes cpt
ON c.Procedure_Code = cpt.Procedure_Code
GROUP BY c.Procedure_Code, cpt.Description
ORDER BY pro_count DESC
limit 5;

SELECT c.Procedure_Code, cpt.Description, round(AVG(`Paid Amount`)) as avg_payed
FROM claims_data_cleaned c
JOIN cpt_codes cpt
ON c.Procedure_Code = cpt.Procedure_Code
group by c.Procedure_Code , cpt.Description;

SELECT  COUNT(*) AS underpaid_claims
FROM claims_data_cleaned
WHERE `Allowed Amount` < 0.5 * `Paid Amount`;

SELECT 
    MIN(`Paid Amount` / `Allowed Amount`) AS min_ratio,
    MAX(`Paid Amount` / `Allowed Amount`) AS max_ratio
FROM claims_data_cleaned;

SELECT `Claim Status`, `Follow-up Required`, COUNT(*) AS follow_up
FROM claims_data_cleaned
GROUP BY `Claim Status`, `Follow-up Required`
ORDER BY follow_up;