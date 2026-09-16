/* This query provides a quarterly sales summary for an entertainment venue using a July–June fiscal year. The report combines box office ticket sales with food and beverage revenue to provide a comprehensive view of sales performance.
*/ 

Select Sales_and_Collections.Event,
LAT.Event_Start as Date,
monthname(LAT.Event_Start) as Event_Month,
year(LAT.Event_Start) as Event_Year,
dayname(LAT.Event_Start) as Event_DOW,
LAT.Genre,
LAT.Site,
LAT.Event_Start,
LAT.Event_End,
LAT.Total_Tickets,
LAT.Drop_Count,
LAT.Drop_Count/LAT.Total_Tickets as Drop_v_Gross,
LAT.Gross_Ticket_Sales,
Sales_and_Collections.Gross_Sales,
Sales_and_Collections.Items,
Sales_and_Collections.Service_Charges,
Sales_and_Collections.Returns,
Sales_and_Collections.Discounts_Comps,
Sales_and_Collections.Net_Sales,
Sales_and_Collections.Gift_Card_Sales,
Sales_and_Collections.Tax,
Sales_and_Collections.Tip,
Sales_and_Collections.Refunds_by_Amount,
Sales_and_Collections.Total,
Sales_and_Collections.Total_Collected,
Sales_and_Collections.Cash,
Sales_and_Collections.Card,
Sales_and_Collections.Other,
Sales_and_Collections.Gift_Card,
Sales_and_Collections.Fees,
Sales_and_Collections.Net_Total,
Sales_and_Collections.Cash_App
From Sales_and_Collections JOIN LAT on LAT.Act=Sales_and_Collections.Event
JOIN Date_Calendar on Date_Calendar.Date=LAT.Event_Start
Where Date_Calendar.Quarter = 3
and Date_Calendar.Fiscal_Year = 2
