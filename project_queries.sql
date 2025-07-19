#overview of the dataset
SELECT * FROM cardekho
LIMIT 5;

#top 10 most sold car models
SELECT car_name, COUNT(car_name) AS quantity_sold
FROM cardekho
GROUP BY car_name 
ORDER BY quantity_sold DESC
LIMIT 10;

#year wise total selling price
SELECT year_of_selling, SUM(selling_price) AS total_sales
FROM cardekho
GROUP BY year_of_selling
ORDER BY year_of_selling;

#highest selling price by car name
SELECT car_name, MAX(selling_price) AS highest_price
FROM cardekho
GROUP BY car_name
ORDER BY highest_price DESC
LIMIT 10;

#cars with extremely low selling price
SELECT * 
FROM cardekho
WHERE selling_price <= 100000;

#seller type revenue comparison
SELECT seller_type, SUM(selling_price) AS total_revenue
FROM cardekho
GROUP BY seller_type;

#owner type revene comparison
SELECT owner, ROUND(SUM(selling_price), 0) AS total_revenue
FROM cardekho
GROUP BY owner;







