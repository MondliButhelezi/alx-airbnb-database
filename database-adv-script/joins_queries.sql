-- Task 0: Complex Queries with Joins
-- Author: [Your Name]
-- Date: [Date]
-- Project: ALX Airbnb Database - Advanced SQL

------------------------------------------------------------
-- INNER JOIN
-- Retrieve all bookings and the respective users who made those bookings
------------------------------------------------------------
SELECT
    b.id AS booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.first_name,
    u.last_name,
    u.email
FROM
    Booking b
INNER JOIN
    User u ON b.user_id = u.id;

------------------------------------------------------------
-- LEFT JOIN
-- Retrieve all properties and their reviews,
-- including properties that have no reviews
------------------------------------------------------------
SELECT
    p.id AS property_id,
    p.name AS property_name,
    r.id AS review_id,
    r.rating,
    r.comment
FROM
    Property p
LEFT JOIN
    Review r ON p.id = r.property_id
ORDER BY
    p.id;

------------------------------------------------------------
-- FULL OUTER JOIN
-- Retrieve all users and all bookings,
-- even if the user has no booking or a booking is not linked to a user
------------------------------------------------------------
SELECT
    u.id AS user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.id AS booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM
    User u
FULL OUTER JOIN
    Booking b ON u.id = b.user_id;
