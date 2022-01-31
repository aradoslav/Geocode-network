

---Aggregate indicators table - Individual

select source_customer_id as Customer_id,
Conversion_Volume,Total_activity,
Conversion_range,
Average_Conversion_time 
into Customer_Individual_Indicators from (

select source_customer_id, 
	count(destination_customer_id) as Conversion_Volume ,
	max(conversion_time) as Total_activity,
	convert(decimal(10, 3), exp(avg(log(distance_km)))) as Conversion_range,
	avg(conversion_time) as Average_Conversion_time
from [dbo].[Source_Destination_Indicators]
group by source_customer_id 
) as a
