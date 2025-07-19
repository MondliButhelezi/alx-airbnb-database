-- Task 3: Create Indexes to Optimize Query Performance

-- Example query before index creation
EXPLAIN ANALYZE
SELECT *
FROM Booking b
JOIN User u ON b.user_id = u.id
WHERE b.start_date >= '2025-01-01';

-- Indexes on User table (commonly queried columns)
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_last_name ON User(last_name);

-- Indexes on Booking table (commonly used in WHERE, JOIN, ORDER BY)
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Indexes on Property table
CREATE INDEX idx_property_city ON Property(city);
CREATE INDEX idx_property_owner_id ON Property(owner_id);

-- Example query after index creation
EXPLAIN ANALYZE
SELECT *
FROM Booking b
JOIN User u ON b.user_id = u.id
WHERE b.start_date >= '2025-01-01';
