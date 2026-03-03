Select * from claims_data_cleaned;

select `Insurance Type` , SUM(`Paid Amount`) AS total_revenue
from claims_data_cleaned
group by `Insurance Type`
order by `Insurance Type` desc;

Select Sum(`Allowed Amount`)  - sum(`Paid Amount`) as Outstanding_Amount
from claims_data_cleaned;

Select `Provider ID`, `Allowed Amount`
from claims_data_cleaned
order by `Allowed Amount`desc
limit 10;

Select `Provider ID`, `Paid Amount`
from claims_data_cleaned
order by `Paid Amount`desc
limit 10;

Select count(`Claim ID`)
from claims_data_cleaned
where `Claim Status` = 'Denied'  ;
