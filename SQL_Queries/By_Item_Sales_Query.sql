
This query provides an item-level sales summary for each product sold during an event, along with the corresponding profit margin for a specified time period. The report enabled business leaders to evaluate product profitability, identify high-performing and low-performing items, and optimize pricing, inventory, and product offerings to maximize overall revenue.

Select By_Item.Event,
LAT.Event_Start as Date,
LAT.Genre,
By_Item.Item_Name,
By_Item.Item_Variation,
By_Item.SKU,
By_Item.Category,
By_Item.Items_Sold,
By_Item.Gross_Sales,
By_Item.Items_Refunded,
By_Item.Refunds,
By_Item.Discounts_Comps,
By_Item.Net_Sales,
By_Item.Tax,
By_Item.Unit,
By_Item.Units_Sold,
By_Item.Units_Refunded,
By_Item.Gross_Sales/By_Item.Items_Sold as Price,
By_Item.SKU * By_Item.Items_Sold as Costs,
By_Item.Gross_Sales - (By_Item.SKU * By_Item.Items_Sold) as Profit,
(By_Item.Gross_Sales - (By_Item.SKU * By_Item.Items_Sold)) / By_Item.Gross_Sales as Profit_Margin
From By_Item JOIN LAT on LAT.Act=By_Item.Event
JOIN Date_Calendar on Date_Calendar.Date = LAT.Event_Start
Where By_Item.Gross_Sales > 0
and Date_Calendar.Quarter = 4
and Date_Calendar.Fiscal_Year = 2026
