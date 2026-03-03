Select * from claims_data_cleaned;

Select distinct  `Reason Code` ,  count(`Reason Code`) as total_reason
from claims_data_cleaned
group by `Reason Code`
order by total_reason desc
limit 5;

Select `Insurance Type`, count(`Claim ID`) as total_denied_outcome
from claims_data_cleaned
where `Outcome` = 'Denied'  
group by `Insurance Type`;

SELECT `Outcome`, COUNT(*) AS total_claims, AVG(`Paid Amount`) AS avg_paid_amount
FROM claims_data_cleaned
WHERE `Outcome` IN ('Paid', 'Partially Paid')
GROUP BY `Outcome`;

Select distinct  `AR Status` ,  count(`AR Status`) as count_ar
from claims_data_cleaned
group by `AR Status`
order by count_ar desc
limit 5;

Select `AR Status` ,  Sum(`Allowed Amount`)  - sum(`Paid Amount`) as Outstanding_Amount
from claims_data_cleaned
group by `AR Status`;