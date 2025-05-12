-- Find all properties where the average rating is greater than 4.0 using a subquery.
SELECT * FROM properties as p INNER JOIN reviews AS r on p.property_id=r.property_id HAVING r.rating > 4;