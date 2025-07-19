# Query Optimization Report

## Objective

Refactor a complex query retrieving bookings with user, property, and payment details to improve execution performance.

## Initial Query Analysis

- The initial query joined multiple tables using explicit `JOIN` syntax.
- Query execution analyzed with `EXPLAIN` revealed:
  - Potential redundant joins.
  - Missing indexes on filtering and joining columns leading to sequential scans.
  - Ordering on a non-indexed column added overhead.

## Optimization Steps

- Created indexes on `Booking.start_date`, `Booking.user_id`, `Booking.property_id`, and `Payment.booking_id`.
- Used `USING` clause to simplify join syntax where columns have the same name.
- Ensured filtering on `Booking.start_date` leverages the index.
- Verified that `LEFT JOIN` on Payment remains to include bookings without payments.

## Performance Results

- Execution plan after optimization shows index scans replacing sequential scans.
- Reduced total execution time and lower query cost estimated by the planner.
- Query remains functionally identical, returning the same dataset with improved speed.

## Conclusion

Proper indexing combined with refined join syntax and filtering significantly improves query performance in relational databases.

---

## Recommendations

- Regularly analyze query plans with `EXPLAIN` and `ANALYZE`.
- Add indexes thoughtfully on frequently filtered or joined columns.
- Refactor queries to minimize unnecessary joins and simplify syntax.
