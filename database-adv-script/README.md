# Advanced SQL Scripting for Airbnb Clone

## Overview

This directory contains SQL scripts demonstrating the use of advanced join queries in the Airbnb Clone database.  
The `joins_queries.sql` file showcases the practical application of different types of SQL joins to retrieve related data from multiple tables.

These queries are fundamental for working with relational databases and combining user, booking, property, and review data for analysis.

---

## Queries

The `joins_queries.sql` file contains three SQL queries, each designed to illustrate a different join type:

1. **INNER JOIN**
   - Retrieves all bookings along with the details of the users who made each booking.
   - Only includes records where a booking is linked to a user.
   - Useful for analyzing only successfully matched records between bookings and users.

2. **LEFT JOIN**
   - Lists all properties and their reviews, including properties that have no reviews.
   - Ensures properties without reviews are still displayed, with `NULL` in review columns.
   - Useful for checking which properties lack user feedback.

3. **FULL OUTER JOIN**
   - Shows a complete list of all users and all bookings, even if the user has no booking or a booking is not linked to a user.
   - Includes unmatched records from both tables.
   - Useful for identifying orphan records or gaps in the dataset.

---

## Usage

To execute the queries, run the `joins_queries.sql` file in your SQL database management system (e.g., PostgreSQL, MySQL):

```sql
-- Example command to run the joins script
\i path/to/joins_queries.sql
