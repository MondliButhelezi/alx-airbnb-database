# Partitioning Performance Report

## Objective

Implement table partitioning on the `Booking` table based on the `start_date` column to optimize query performance on large datasets.

## Partitioning Implementation

- Created a new `Booking_partitioned` table partitioned by RANGE on `start_date`.
- Defined yearly partitions (e.g., `Booking_2023`, `Booking_2024`) to organize data by year.
- Migrated existing booking data into the partitioned table.

## Performance Testing

- Tested typical queries filtering bookings by date range, such as:
  ```sql
  SELECT * FROM Booking_partitioned WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
