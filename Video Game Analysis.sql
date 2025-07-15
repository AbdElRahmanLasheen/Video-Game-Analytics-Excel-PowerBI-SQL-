-- Act A : Data Cleaning
--Select * from GameData Where Years = 'N/A'
--Delete from GameData Where Years = 'N/A'

-- Act B : Data Analysis

-- Question I : Top 10 Globally Sold Games

--Select Top 10 Name, Global_Sales from GameData Order By Global_Sales Desc

-- Question II : Top 5 Globally Sold Platforms

--Select Top 5 Platform, Sum(Global_Sales) as Total_Sales from GameData
--Group By Platform
--Order By Total_Sales Desc

-- Question III : Top 5 Genres in North America (NA)

--Select Top 5 Genre, Sum(NA_Sales) as North_American_Sales from GameData
--Group By Genre
--Order BY North_American_Sales Desc

-- Question IV : Top 5 Global Publishers

--Select Top 5 Publisher, Sum(Global_Sales) as Total_Sales from GameData
--Group By Publisher
--Order By Total_Sales Desc

-- Question V : Sales of Each Region by Genre

--Select Genre, Sum(NA_Sales) as NA, Sum(EU_Sales) as EU, Sum(JP_Sales) as JP, Sum(Other_Sales) as Others from GameData
--Group By Genre

-- Question VI : Most Contributed Regions
--Select Sum(NA_Sales) as NA, Sum(EU_Sales) as EU, Sum(JP_Sales) as JP, Sum(Other_Sales) as Others from GameData

-- Question VII : Contribution By Percentage

--SELECT
    --ROUND(SUM(NA_Sales) / SUM(Global_Sales) * 100, 2) AS NA_Percent,
    --ROUND(SUM(EU_Sales) / SUM(Global_Sales) * 100, 2) AS EU_Percent,
    --ROUND(SUM(JP_Sales) / SUM(Global_Sales) * 100, 2) AS JP_Percent,
    --ROUND(SUM(Other_Sales) / SUM(Global_Sales) * 100, 2) AS Other_Percent
--FROM GameData;

-- Question VIII : Global Sales Per Year

--Select Years, Sum(Global_Sales) as Total_sales from GameData
--Group By Years
--Order BY Years

-- Question IX : Number of Games Per Year

--SELECT Years, COUNT(*) AS Game_Count
--FROM GameData
--GROUP BY Years
--ORDER BY Years; 

-- Question X : Top Game of Each Year
--SELECT Years, Name, Global_Sales
--FROM (
    --SELECT *,
           --RANK() OVER (PARTITION BY Years ORDER BY Global_Sales DESC) AS rk
    --FROM GameData
--) t
--WHERE rk = 1;

-- Question XI : Most Popular Platform By Genre

--Select Genre, Platform, COUNT(*) as No_of_Game from GameData
--Group By Genre, Platform
--Order By 3 Desc


-- Question XII : Games With Global Sales Above 5

--SELECT Name, Platform, Global_Sales
--FROM GameData
--WHERE Global_Sales > 5
--ORDER BY Global_Sales DESC;









