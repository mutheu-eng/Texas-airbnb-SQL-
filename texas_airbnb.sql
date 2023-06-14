-- showcasing the database : dataset is clean not need of cleaning
SELECT *
FROM listings_texas;

-- average price listing based on room type
SELECT room_type, AVG(price) 
FROM listings_texas
GROUP BY room_type;

-- average price listing based on neighbourhood 
SELECT neighbourhood, AVG(price) as average_price
FROM listings_texas
GROUP BY neighbourhood
ORDER BY AVG(price) DESC;

-- average price 
SELECT avg(price)
FROM listings_texas;

-- top 10 neighbourhood listings BY PRICE - DALLAS HAS THE HIGHEST PRICE LISTING WITH $1800
SELECT neighbourhood, host_name, price
FROM listings_texas
ORDER BY price DESC
LIMIT 10;

-- TOP 10 LEAST NEIGHBOURHHOD - PAULETTE HAS THE LEAST PRICE LISTINGS WITH $30
SELECT neighbourhood, host_name, price
FROM listings_texas
ORDER BY price ASC
LIMIT 10;

-- hosts with the most listings
SELECT host_id, host_name, COUNT(*) AS num_listings
FROM listings_texas
GROUP BY host_id, host_name
ORDER BY  num_listings DESC;  

-- LISTINGS WITH THE MOST REVIEWS -LOIS HAS THE HIGHEST NUMBER OF REVIEWS & AMBER HAS THE LEAST
SELECT id, name,number_of_reviews
FROM listings_texas
ORDER BY number_of_reviews DESC; 

-- LISTINGS BY REVIEWS PER MONTH - JOHN HAS THE HIGHEST MONTHLY REVIEW.
SELECT id, name, reviews_per_month
FROM listings_texas
ORDER BY reviews_per_month DESC;

-- AVERAGE MONTHLY REVIEWS BY ROOM TYPE - private room type has more reviews than entire home
SELECT room_type, AVG(number_of_reviews)
FROM listings_texas
GROUP BY room_type;

-- listings with the highest minimum nights - ELENA HOST NAME HAS THE HIGHEST MINIMUM NIGHTS
SELECT id, name, minimum_nights
FROM listings_texas
ORDER BY minimum_nights DESC; 

-- LISTINGS WITH THE HIGHEST AVAILABILITY
SELECT id, name, availability_365
FROM listings_texas
ORDER BY availability_365 DESC
LIMIT 10;