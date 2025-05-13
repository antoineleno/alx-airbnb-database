-- Indexes for the bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_status ON bookings(status);
CREATE INDEX idx_bookings_created_at ON bookings(created_at);
CREATE INDEX idx_bookings_dates ON bookings(start_date, end_date);

-- Indexes for the users table
CREATE UNIQUE INDEX idx_users_email ON users(email); -- already UNIQUE
CREATE INDEX idx_users_role ON users(role);
CREATE INDEX idx_users_created_at ON users(created_at);

-- Assuming a properties table, recommend potential indexes
CREATE INDEX idx_properties_location ON properties(location); -- hypothetical
CREATE INDEX idx_properties_host_id ON properties(host_id); -- hypothetical

-- Composite index to speed up queries filtering user bookings by status and date
CREATE INDEX idx_bookings_user_status_date ON bookings(user_id, status, start_date);