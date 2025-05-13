--Find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.
SELECT u.first_name,u.last_name, COUNT(b.booking_id) AS Total_properties FROM users AS  u INNER JOIN bookings AS b ON u.user_id=b.user_id GROUP BY b.user_id;
