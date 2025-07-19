-- Task 5: Partition Booking table by start_date

-- Step 1: Create a new partitioned table
CREATE TABLE Booking_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20),
    -- other columns as necessary
    -- Add constraints and foreign keys as needed
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions for each year (example for 2023 and 2024)
CREATE TABLE Booking_2023 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Additional partitions can be created similarly

-- Step 3: Migrate data from the old Booking table to the new partitioned table
INSERT INTO Booking_partitioned (id, user_id, property_id, start_date, end_date, status)
SELECT id, user_id, property_id, start_date, end_date, status FROM Booking;

-- Step 4: Optionally, rename tables to swap in the partitioned table as Booking
-- DROP TABLE Booking;
-- ALTER TABLE Booking_partitioned RENAME TO Booking;
