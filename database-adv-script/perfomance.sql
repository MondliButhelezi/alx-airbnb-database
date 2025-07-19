-- Task 4: Initial Query (Unoptimized)
SELECT
    b.id AS booking_id,
    u.id AS user_id,
    u.first_name,
    u.last_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount,
    pay.payment_date
FROM
    Booking b
JOIN
    User u ON b.user_id = u.id
JOIN
    Property p ON b.property_id = p.id
LEFT JOIN
    Payment pay ON b.id = pay.booking_id
WHERE
    b.start_date >= '2023-01-01'
ORDER BY
    b.start_date DESC;

-- Optimized Query
-- Assume indexes on Booking(start_date), Booking(user_id), Booking(property_id), Payment(booking_id)

SELECT
    b.id AS booking_id,
    u.id AS user_id,
    u.first_name,
    u.last_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount,
    pay.payment_date
FROM
    Booking b
INNER JOIN
    User u USING (user_id)
INNER JOIN
    Property p USING (property_id)
LEFT JOIN
    Payment pay ON pay.booking_id = b.id
WHERE
    b.start_date >= '2023-01-01'
ORDER BY
    b.start_date DESC;
