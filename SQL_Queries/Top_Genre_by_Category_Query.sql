/* This multi-page query identifies the top-selling item within a selected food and beverage department category for a specified date range and correlates those sales with the genre of the associated entertainment event. By analyzing purchasing patterns across event genres, business leaders were able to optimize inventory allocation and product assortment for each department, improving product availability and maximizing food and beverage revenue.
*/

Select *
From 
    (Select 
    By_Item.Category,
    LAT.Genre,
    sum(By_Item.Net_Sales) as Total_Net_Sales
    
    From By_Item JOIN LAT on LAT.Act=By_Item.Event
    Where By_Item.Category = 'Beer'
    and LAT.Event_Start between '2025-07-01' and '2026-03-31'

    Group By LAT.Genre, By_Item.Category

    
    Order By Total_Net_Sales desc
    Limit 1)Beer

    UNION

Select *
From 
    (Select 
    By_Item.Category,
    LAT.Genre,
    sum(By_Item.Net_Sales) as Total_Net_Sales
    
    From By_Item JOIN LAT on LAT.Act=By_Item.Event
    Where By_Item.Category = 'Wine'
    and LAT.Event_Start between '2025-07-01' and '2026-03-31'

    Group By LAT.Genre, By_Item.Category

    
    Order By Total_Net_Sales desc
    Limit 1)Wine   

UNION

Select *
From 
    (Select 
    By_Item.Category,
    LAT.Genre,
    sum(By_Item.Net_Sales) as Total_Net_Sales
    
    From By_Item JOIN LAT on LAT.Act=By_Item.Event
    Where By_Item.Category = 'Liquor'
    and LAT.Event_Start between '2025-07-01' and '2026-03-31'

    Group By LAT.Genre, By_Item.Category

    
    Order By Total_Net_Sales desc
    Limit 1)Liquor       

UNION

Select *
From 
    (Select 
    By_Item.Category,
    LAT.Genre,
    sum(By_Item.Net_Sales) as Total_Net_Sales
    
    From By_Item JOIN LAT on LAT.Act=By_Item.Event
    Where By_Item.Category = 'Uncategorized'
    and LAT.Event_Start between '2025-07-01' and '2026-03-31'

    Group By LAT.Genre, By_Item.Category

    
    Order By Total_Net_Sales desc
    Limit 1)Uncategorized

    UNION
Select *
From 
    (Select 
    By_Item.Category,
    LAT.Genre,
    sum(By_Item.Net_Sales) as Total_Net_Sales
    
    From By_Item JOIN LAT on LAT.Act=By_Item.Event
    Where By_Item.Category = 'Non-Alcoholic'
    and LAT.Event_Start between '2025-07-01' and '2026-03-31'

    Group By LAT.Genre, By_Item.Category

    
    Order By Total_Net_Sales desc
    Limit 1)Non_Alcoholic

