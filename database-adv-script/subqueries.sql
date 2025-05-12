-- Find all properties where the average rating is greater than 4.0 using a subquery.
SELECT * FROM properties WHERE property_id IN (SELECT property_id FROM reviews GROUP BY property_id HAVING AVG(rating) > 4.0);
