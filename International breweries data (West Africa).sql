SELECT * FROM international_breweries.international_breweries;

SELECT YEARS AS Years, SUM(profit) AS Total_profit
FROM international_breweries.international_breweries
WHERE TERRITORIES IN ('Anglophone', 'Francophone')
      AND YEARS <= YEAR(CURRENT_DATE) - 3
GROUP BY YEARS
ORDER BY YEARS DESC;

SELECT TERRITORIES AS Territories, SUM(profit) AS Total_profit
FROM international_breweries.international_breweries
WHERE TERRITORIES IN ('Anglophone', 'Francophone')
GROUP BY TERRITORIES
ORDER BY Total_profit DESC;

SELECT COUNTRIES AS Country_with_highest_profit_2019, SUM(profit) AS Total_profit
FROM international_breweries.international_breweries
WHERE YEARS = 2019
GROUP BY COUNTRIES
ORDER BY Total_profit DESC
LIMIT 1;

SELECT YEARS AS Year_with_highest_profit, SUM(PROFIT) AS Total_profit
FROM international_breweries.international_breweries
GROUP BY YEARS
ORDER BY Total_profit DESC
LIMIT 1;

SELECT MONTHS AS Month_with_least_profit, SUM(PROFIT) AS Total_profit
FROM international_breweries.international_breweries
GROUP BY MONTHS
ORDER  BY Total_profit DESC
LIMIT 1;

SELECT MONTHS AS Minimum_profit_in_Dec_2018, MIN(PROFIT) AS Total_profit
FROM international_breweries.international_breweries
WHERE YEARS = 2018 AND MONTHS = 'December';


SELECT MONTHS AS Months_in_2019, SUM(PROFIT) / (SELECT SUM(PROFIT) FROM international_breweries.international_breweries 
       WHERE YEARS = 2019) * 100 Total_percentage_profit
FROM international_breweries.international_breweries
WHERE YEARS = 2019
GROUP BY MONTHS
ORDER BY Total_percentage_profit DESC; 

SELECT BRANDS AS Brand_that_generated_highest_profit, SUM(PROFIT) AS Total_profit_in_Senegal
FROM international_breweries.international_breweries
WHERE COUNTRIES = 'Senegal'
GROUP BY BRANDS
ORDER BY Total_profit_in_Senegal DESC
Limit 1;

SELECT BRANDS AS Top_brands, SUM(QUANTITY) AS Total_quantity
FROM international_breweries.international_breweries
WHERE TERRITORIES = 'Francophone' 
      AND YEARS <= YEAR(CURRENT_DATE) - 2
GROUP BY BRANDS
ORDER BY Total_quantity DESC
LIMIT 2;

SELECT * FROM international_breweries.international_breweries
WHERE COUNTRIES = 'Nigeria' 
      AND YEARS <= YEAR(CURRENT_DATE) - 2 
      AND BRANDS IN ('budweiser', 'hero', 'castle lite', 'trophy', 'eagle lager');
      
SELECT BRANDS AS Favorite_malt, SUM(QUANTITY) AS Total_quantity
FROM international_breweries.international_breweries
WHERE TERRITORIES = 'Anglophone'
      AND YEARS BETWEEN 2018 AND 2019
      AND BRANDS LIKE '%malt%'
GROUP BY Favorite_malt
ORDER BY Total_quantity DESC
LIMIT 1;

SELECT BRANDS AS Highest_sold_brands_2019, SUM(QUANTITY) AS Total_quantity, SUM(PROFIT) AS Total_profit
FROM international_breweries.international_breweries
WHERE COUNTRIES = 'Nigeria'
      AND YEARS = 2019
GROUP BY Highest_sold_brands_2019
ORDER BY Total_quantity DESC
LIMIT 1;

SELECT BRANDS AS Favorite_brands, SUM(QUANTITY) AS Total_quantity
FROM international_breweries.international_breweries
WHERE COUNTRIES = 'Nigeria'
      AND REGION = 'Southsouth'
GROUP BY Favorite_brands
ORDER BY Total_quantity DESC
LIMIT 1;

SELECT BRANDS AS Brand_name, SUM(QUANTITY) AS Total_quantity, SUM(PROFIT) AS Total_profit
FROM international_breweries.international_breweries
WHERE COUNTRIES = 'Nigeria'
      AND BRANDS IN ('budweiser', 'hero', 'castle lite', 'trophy', 'eagle lager')
GROUP BY BRANDS
ORDER BY Total_quantity DESC;

SELECT REGION AS Regions_consumption_of_budweiser_Nigeria, SUM(QUANTITY) AS Total_quantity
FROM international_breweries.international_breweries
WHERE COUNTRIES = 'Nigeria' 
GROUP BY REGION
ORDER BY Total_quantity DESC;

SELECT REGION AS Regions_consumption_of_budweiser_Nigeria, SUM(QUANTITY) AS Total_quantity
FROM international_breweries.international_breweries
WHERE COUNTRIES = 'Nigeria' AND YEARS = 2019
GROUP BY REGION
ORDER BY Total_quantity DESC;

SELECT COUNTRIES AS Country_with_the_highest_consumption_of_beer, SUM(QUANTITY) AS Total_quantity_of_beer
FROM international_breweries.international_breweries
WHERE  BRANDS IN ('budweiser', 'hero', 'castle lite', 'trophy', 'eagle lager')
GROUP BY COUNTRIES
ORDER BY Total_quantitY_of_beer DESC;

SELECT SALES_REP AS Highest_sales_personnel_of_budweiser, SUM(QUANTITY) AS Total_quantity_budweiser_in_Senegal
FROM international_breweries.international_breweries
WHERE COUNTRIES = 'Senegal' AND BRANDS = 'budweiser'
GROUP BY SALES_REP
ORDER BY Total_quantity_budweiser_in_Senegal DESC
LIMIT 1;

SELECT COUNTRIES AS Country_with_the_highest_profit_in_4thQuarter, SUM(PROFIT) AS Total_profit
FROM international_breweries.international_breweries
WHERE YEARS = 2019 AND MONTHS IN ('October', 'November', 'December')
GROUP BY COUNTRIES
ORDER BY Total_profit DESC
LIMIT 1;