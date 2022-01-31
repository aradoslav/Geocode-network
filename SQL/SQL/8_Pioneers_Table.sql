

select 
customer_id,
[Full_name_C],
[Region_C],
[City_C],
[Street_C],
[Street_nr_C],
[full_address],
[Contact_phone_C],
[Contact_email_C],
[Acc_mgr_id_C],
[Acc_mgr_name_C],
[customer_lat],
[customer_long],
[customer_address],
avg(cast (distance_km as float)) as Average_Distance,
count(distinct lead_id) as Nr_leads

into Customer_Pioneers

from [CUSTOMER_GIS].[dbo].[Customer_Lead_MAP_geocoded]
where cast (distance_km as float) < 1
--Filter for region
--and [Region_C]='Waikato'
group by 
customer_id,
[Full_name_C],
[Region_C],
[City_C],
[Street_C],
[Street_nr_C],
[full_address],
[Contact_phone_C],
[Contact_email_C],
[Acc_mgr_id_C],
[Acc_mgr_name_C],
[customer_lat],
[customer_long],
[customer_address]
having count(distinct lead_id) > 5

