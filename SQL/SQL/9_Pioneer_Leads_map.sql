select * into Pioneers_Leads_MAP
 from Customer_Pioneers_Lead_relationship
where [Customer_id] in (select Customer_id from [dbo].[Customer_Pioneers])
and cast (distance_km as float) < 1