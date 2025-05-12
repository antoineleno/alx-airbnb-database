-- Find all properties where the average rating is greater than 4.0 using a subquery.
SELECT * FROM properties WHERE property_id IN (SELECT property_id FROM reviews GROUP BY property_id HAVING AVG(rating) > 4.0);

-- A correlated subquery to find users who have made more than 3 bookings.
SELECT * FROM users AS u WHERE (SELECT count(*) FROM bookings AS b WHERE b.user_id=u.user_id) > 3;
