/*This multi-page query provides a sales summary of the top-performing event for each of the company's 21 entertainment genres, ranging from Country and Rock/Pop to Comedy and Family shows, for a specified date range. The report enabled business leaders to compare event performance across genres, identify high-revenue attractions, and make data-driven decisions regarding future event scheduling, promotions, and booking strategies.
*/

Select *
From (Select LAT.Genre,
Sales_and_Collections.Event,
Sales_and_Collections.Net_Sales
From Sales_and_Collections JOIN LAT on LAT.Act=Sales_and_Collections.Event
Where LAT.Genre = 'Broadway'
and LAT.Event_Start between '2025-07-01' and '2026-03-31'
Order By Sales_and_Collections.Net_Sales desc
Limit 1)Broadway_Top_Event

UNION


Select *
From (Select LAT.Genre,
Sales_and_Collections.Event,
Sales_and_Collections.Net_Sales
From Sales_and_Collections JOIN LAT on LAT.Act=Sales_and_Collections.Event
Where LAT.Genre = 'Bluegrass/Folk'
and LAT.Event_Start between '2025-07-01' and '2026-03-31'
Order By Sales_and_Collections.Net_Sales desc
Limit 1)Broadway_Top_Event

UNION

Select *
From (Select LAT.Genre,
Sales_and_Collections.Event,
Sales_and_Collections.Net_Sales
From Sales_and_Collections JOIN LAT on LAT.Act=Sales_and_Collections.Event
Where LAT.Genre = 'Cabaret/Variety'
and LAT.Event_Start between '2025-07-01' and '2026-03-31'
Order By Sales_and_Collections.Net_Sales desc
Limit 1)Broadway_Top_Event

UNION

Select *
From (Select LAT.Genre,
Sales_and_Collections.Event,
Sales_and_Collections.Net_Sales
From Sales_and_Collections JOIN LAT on LAT.Act=Sales_and_Collections.Event
Where LAT.Genre = 'Gospel'
and LAT.Event_Start between '2025-07-01' and '2026-03-31'
Order By Sales_and_Collections.Net_Sales desc
Limit 1)Broadway_Top_Event



