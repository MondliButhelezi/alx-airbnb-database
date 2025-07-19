-- Task 2: Aggregations and Window Functions
-- Author: [Your Name]
-- Date: [Date]

------------------------------------------------------------
-- 1. Total number of bookings made by each user
------------------------------------------------------------
SELECT
    u.id AS user_id,
    u.first_name,
    u.last_name,
    COUNT(b.id) AS total_bookings
FROM
    User u
LEFT JOIN
    Booking b ON u.id = b.user_id
GROUP BY
    u.id, u.first_name, u.last_name
ORDER BY
    total_bookings DESC;

------------------------------------------------------------
-- 2. Rank properties based on total number of bookings received
------------------------------------------------------------
SELECT
    property_id,
    property_name,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT
        p.id AS property_id,
        p.name AS property_name,
        COUNT(b.id) AS total_bookings
    FROM
        Property p
    LEFT JOIN
        Booking b ON p.id = b.property_id
    GROUP BY
        p.id, p.name
) AS property_bookings
ORDER BY
    booking_rank;
