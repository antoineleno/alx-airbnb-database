-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
    ('fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', 'John', 'Doe', 'john.doe@example.com', 'hashedpassword1', '1234567890', 'guest'),
    ('a5fd55b2-92e7-48d1-93fe-ccd3a531b5cd', 'Jane', 'Smith', 'jane.smith@example.com', 'hashedpassword2', '0987654321', 'host'),
    ('d91e83fc-38d3-4ff4-9c58-7d9c3fa91b63', 'Michael', 'Johnson', 'michael.johnson@example.com', 'hashedpassword3', NULL, 'admin');

-- Insert Properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES 
    ('b8d4e6de-f5e4-4e6f-a7b5-b5b7a91a6a3a', 'a5fd55b2-92e7-48d1-93fe-ccd3a531b5cd', 'Luxury Beachfront Villa', 'A beautiful beachfront villa with ocean views.', 'Malibu, CA', 500.00),
    ('dc4a6a2f-49d7-4eb3-b9c3-e3bfe6bb9ac7', 'a5fd55b2-92e7-48d1-93fe-ccd3a531b5cd', 'Cozy Mountain Retreat', 'A cozy retreat perfect for mountain lovers.', 'Aspen, CO', 350.00);

-- Insert Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
    ('7d3cf563-84db-42bc-8b2a-4d05c0a1f2b4', 'b8d4e6de-f5e4-4e6f-a7b5-b5b7a91a6a3a', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', '2025-06-01', '2025-06-07', 3000.00, 'confirmed'),
    ('abcde124-a7f8-429b-b2f3-4c4f91ea9a8f', 'dc4a6a2f-49d7-4eb3-b9c3-e3bfe6bb9ac7', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', '2025-06-15', '2025-06-20', 1750.00, 'pending');

-- Insert Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES 
    ('e56c1589-b9f4-4d01-a9d0-fcb4915d8b61', '7d3cf563-84db-42bc-8b2a-4d05c0a1f2b4', 3000.00, 'credit_card'),
    ('9812bb6b-1213-4ea1-bde8-6d2a663c0150', 'abcde124-a7f8-429b-b2f3-4c4f91ea9a8f', 1750.00, 'paypal');

-- Insert Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES 
    ('f1a8b4e5-82f1-46ae-a9f5-34a7cba0d9f0', 'b8d4e6de-f5e4-4e6f-a7b5-b5b7a91a6a3a', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', 5, 'Amazing property! Had a great time with friends.'),
    ('7d38c81d-cb89-408f-9f80-6d7a49a03f9d', 'dc4a6a2f-49d7-4eb3-b9c3-e3bfe6bb9ac7', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', 4, 'Very cozy and beautiful view, will come back!');

-- Insert Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES 
    ('c12d6b69-4c72-4507-91b4-c0b325ac4d56', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', 'a5fd55b2-92e7-48d1-93fe-ccd3a531b5cd', 'Hey, I just booked the beachfront villa! Looking forward to my stay!'),
    ('9a12b8f0-bf69-4b67-b4e4-0a00b0c78811', 'fbb4e465-8f4b-49c3-877e-e85cf8b2f5ad', 'd91e83fc-38d3-4ff4-9c58-7d9c3fa91b63', 'Can you please help with my booking issue? Thanks!');
