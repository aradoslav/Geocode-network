select 
c.Customer_id,
Full_name,
Customer_type,
Is_client_flg,
Is_referal,
Conversion_volume,
Total_activity,
Conversion_range,
Average_Conversion_time,
Avg_All_Income,
Median_Wage_income,
Median_All_Income,
Number_households_1000,
Population_density

 into Customer_Individual_Indicators_X_Region

from Customer c
left join Customer_individual_indicators i
on c.customer_id=i.customer_id
left join [dbo].[Region_indicators] r
on c.region = r.region_name
where i.Customer_id is not null