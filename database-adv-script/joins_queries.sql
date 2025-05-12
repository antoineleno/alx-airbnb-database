select u.first_name, u.last_name, u.email, u.phone_number, u.role, b.start_date, b.end_date, b.total_price, b.status from users as u inner join bookings as b on u.user_id=b user_id;
-- Retrieve all bookings and the respective users who made those bookings using an INNER JOIN.
