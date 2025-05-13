-- Initial query that retrieves all bookings along with the user details, property details, and payment details
SELECT u.first_name, u.last_name, u.email, u.role, u.phone_number,p.name AS property_name, b.start_date, b.end_date, b.total_price, b.end_date, b.status,py.amount, py.payment_date, py.payment_method FROM users AS u INNER JOIN bookings AS b ON u.user_id=b.user_id
INNER JOIN properties AS p on b.property_id=p.property_id LEFT JOIN payments AS py ON py.booking_id=b.booking_id WHERE b.status = 'Confirmed' AND py.amount IS NOT NULL;

-- Analyzing the query’s performance using EXPLAIN and identify any inefficiencies
EXPLAIN SELECT u.first_name, u.last_name, u.email, u.role, u.phone_number,p.name AS property_name, b.start_date, b.end_date, b.total_price, b.end_date, b.status,py.amount, py.payment_date, py.payment_method FROM users AS u INNER JOIN bookings AS b ON u.user_id=b.user_id
INNER JOIN properties AS p on b.property_id=p.property_id LEFT JOIN payments AS py ON py.booking_id=b.booking_id WHERE b.status = 'Confirmed' AND py.amount IS NOT NULL;



