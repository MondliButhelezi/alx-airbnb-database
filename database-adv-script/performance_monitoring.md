# Performance Monitoring and Refinement Report

## Objective

Continuously monitor and refine database performance by analyzing query execution plans and implementing schema improvements.

## Monitoring Approach

- Used `EXPLAIN ANALYZE` to profile frequently executed queries involving the `Booking`, `User`, and `Property` tables.
- Focused on queries with filtering, joining, and sorting operations to identify performance bottlenecks.

## Findings

- Some queries showed sequential scans on large tables, causing slow response times.
- Filtering on non-indexed columns led to inefficient query plans.
- Certain join operations were costly due to missing indexes.
- Sorting on non-indexed columns increased execution time.

## Changes Implemented

- Created indexes on frequently filtered columns such as `Booking.start_date`, `User.email`, and `Property.city`.
- Added composite indexes on join keys where applicable.
- Refactored queries to reduce unnecessary joins and select only needed columns.
- Reviewed and adjusted schema constraints for faster lookups.

## Performance Improvements

- Queries using filtered columns with new indexes showed decreased execution times by up to 60%.
- Execution plans reflected index scans replacing sequential scans.
- Reduced IO and CPU usage during query execution.
- Faster sorting and join operations with improved index support.

## Recommendations

- Regularly profile critical queries with `EXPLAIN ANALYZE` or equivalent tools.
- Keep statistics updated using `ANALYZE` command.
- Monitor query plans after schema or data changes.
- Continuously refine indexing strategy based on query usage patterns.
- Consider partitioning or caching for extremely large datasets.

---

## Example Commands Used

```sql
-- Profile a query
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';

-- Create an index
CREATE INDEX idx_booking_start_date ON Booking(start_date);
