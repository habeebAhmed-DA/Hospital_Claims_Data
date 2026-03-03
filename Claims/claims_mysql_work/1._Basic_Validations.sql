Select * from claims_data_cleaned;

Select distinct count(`Claim ID`) , count(`Provider ID`), count(`Patient ID`) 
from claims_data_cleaned;

Select SUM(`Allowed Amount`) , SUM(`Paid Amount`)
from claims_data_cleaned;

Select AVG(`Allowed Amount`) , AVG(`Paid Amount`)
from claims_data_cleaned;

select `Insurance Type` , `Claim Status` , count(`Claim Status`) AS total_claim_count
from claims_data_cleaned
group by `Insurance Type`, `Claim Status`
order by `Insurance Type` desc;