-- Retrieve all bookings and the respective users who made those bookings using an INNER JOIN.
SELECT u.first_name, u.last_name, u.email, u.phone_number, u.role, b.start_date, b.end_date, b.total_price, b.status FROM users
as u INNER JOIN bookings AS b ON u.user_id=b.user_id;

--Retrieve all properties and their reviews, including properties that have no reviews using a LEFT JOIN.
SELECT p.name AS Property_Name, p.description,p.location, p.pricepernight, r.rating, r.comment FROM properties as p LEFT JOIN reviews AS r ON p.property_id=r.property_id;

-- Retrieve all bookings and the respective users who made those bookings using a FULL OUT JOIN.
SELECT u.first_name, u.last_name, u.email, u.phone_number, u.role, b.start_date, b.end_date, b.total_price, b.status FROM users
as u FULL OUTER JOIN bookings AS b ON u.user_id=b.user_id;


