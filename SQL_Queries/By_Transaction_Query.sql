/*This query returns the total number of transactions for each event, along with the corresponding entertainment genre, for a specified date range. The report enabled business leaders to evaluate event attendance and purchasing activity, compare transaction volume across genres, and identify high-performing events to support future scheduling and marketing decisions.
*/

Select By_Trans.Event,
LAT.Genre,
count(distinct By_Trans.Transaction_ID) as Transaction_Count
From By_Trans JOIN LAT on LAT.Act=By_Trans.Event
JOIN Date_Calendar on Date_Calendar.Date=LAT.Event_Start
Where Date_Calendar.Month = 9 
and Date_Calendar.Fiscal_Year = 2026
Group By By_Trans.Event, LAT.Genre
Order By Transaction_Count desc
