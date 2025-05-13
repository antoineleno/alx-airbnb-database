-- Step 1: Create a partitioned bookings table without foreign keys

CREATE TABLE bookings (
    booking_id CHAR(64) PRIMARY KEY,
    property_id CHAR(64) NOT NULL,
    user_id CHAR(64) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_property_id (property_id),
    INDEX idx_user_id (user_id)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);
