# Index Performance Report

## Objective

Identify and create indexes on frequently used columns in the User, Booking, and Property tables to improve query performance.

## Indexes Created

- `User(email)` and `User(last_name)` for faster user lookups and sorting.
- `Booking(user_id)`, `Booking(property_id)`, and `Booking(start_date)` to optimize joins and date-based filtering.
- `Property(city)` and `Property(owner_id)` to speed up property searches and owner-related queries.

## Performance Testing

- Queries involving filters and joins on indexed columns were analyzed using `EXPLAIN` and `ANALYZE`.
- Execution plans showed reduced cost and faster query execution times after indexes were created.
- Significant improvements observed in queries joining User and Booking tables and those filtering bookings by date range.

## Conclusion

Creating targeted indexes on high-usage columns can greatly enhance database query performance, especially for large datasets and frequently accessed data.

---

## Usage

Run the SQL commands in `database_index.sql` to create the indexes.

Use `EXPLAIN` or `ANALYZE` before and after to compare query performance.
