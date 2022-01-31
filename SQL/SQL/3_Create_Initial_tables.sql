	---Create Source
	select [Customer_id]
      ,[Full_name]
      ,[Customer_type]
      ,[Is_client_flg]
      ,[Is_referal]
      ,[Ref_Customer_id]
      ,[Country]
      ,[Region]
      ,[City]
      ,[Street]
      ,[Street_nr]
      ,[Activation_date]
      ,[Contact_phone]
      ,[Contact_email]
      ,[Acc_mgr_id]
      ,[Acc_mgr_name]

	  into Customer_Source

	  from Customer

	  where Customer_id in (select Ref_Customer_id from Customer where Ref_Customer_id is not null)


	---Create destination table  

	select [Customer_id]
      ,[Full_name]
      ,[Customer_type]
      ,[Is_client_flg]
      ,[Is_referal]
      ,[Ref_Customer_id]
      ,[Country]
      ,[Region]
      ,[City]
      ,[Street]
      ,[Street_nr]
      ,[Activation_date]
      ,[Contact_phone]
      ,[Contact_email]
      ,[Acc_mgr_id]
      ,[Acc_mgr_name]
	  into Customer_Destination

	  from Customer

	  where Ref_Customer_id is not null


---Create bridge table

 select [Customer_id],[Ref_customer_id] into Source_Destination_r

	  from Customer

	  where ref_customer_id is not null

---Create leads table

select [Customer_id]
      ,[Full_name]
      ,[Customer_type]
      ,[Is_client_flg]
      ,[Is_referal]
      ,[Ref_Customer_id]
      ,[Country]
      ,[Region]
      ,[City]
      ,[Street]
      ,[Street_nr]
      ,[Activation_date]
      ,[Contact_phone]
      ,[Contact_email]
      ,[Acc_mgr_id]
      ,[Acc_mgr_name] into [dbo].[Customer_Leads] 
from [dbo].[Customer] where Customer_type = 'Lead'




---Create full table

select 	s.[Customer_id] as Source_Customer_id
,	s.[Full_name] as Source_Full_name
,	s.[Customer_type] as Source_Customer_type
,	s.[Is_client_flg] as Source_Is_client_flg
,	s.[Country] as Source_Country
,	s.[Region] as Source_Region
,	s.[City] as Source_City
,	s.[Street] as Source_Street
,	s.[Street_nr] as Source_Street_nr
,	s.[Activation_date] as Source_Activation_date
,	s.[Contact_phone] as Source_Contact_phone
,	s.[Contact_email] as Source_Contact_email
,	s.[Acc_mgr_id] as Source_Acc_mgr_id
,	s.[Acc_mgr_name] as Source_Acc_mgr_name	
  ,	d.[Customer_id] as Destination_Customer_id
,	d.[Full_name] as Destination_Full_name
,	d.[Customer_type] as Destination_Customer_type
,	d.[Is_client_flg] as Destination_Is_client_flg
,	d.[Country] as Destination_Country
,	d.[Region] as Destination_Region
,	d.[City] as Destination_City
,	d.[Street] as Destination_Street
,	d.[Street_nr] as Destination_Street_nr
,	d.[Activation_date] as Destination_Activation_date
,	d.[Contact_phone] as Destination_Contact_phone
,	d.[Contact_email] as Destination_Contact_email
,	d.[Acc_mgr_id] as Destination_Acc_mgr_id
,	d.[Acc_mgr_name] as Destination_Acc_mgr_name

into Source_Destination_Full

from [dbo].[Source_Destination_r] r
left join [dbo].[Customer_Source] s
on r.Ref_Customer_id = s.Customer_id
left join [dbo].[Customer_Destination] d
on r.Customer_id = d.Customer_id