--Find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.
SELECT u.first_name,u.last_name, COUNT(b.booking_id) AS Total_properties FROM users AS  u INNER JOIN bookings AS b ON u.user_id=b.user_id GROUP BY b.user_id;

--Rank properties based on the total number of bookings they have received Using a window function (ROW_NUMBER, RANK).
SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_row_number
FROM properties p
LEFT JOIN bookings b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name;
