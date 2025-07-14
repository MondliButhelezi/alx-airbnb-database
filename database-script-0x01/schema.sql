-- 📄 seed.sql

-- Insert Users
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('uuid-1', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw1', '1234567890', 'host'),
  ('uuid-2', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw2', '0987654321', 'guest'),
  ('uuid-3', 'Carol', 'Williams', 'carol@example.com', 'hashed_pw3', NULL, 'admin');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('uuid-4', 'uuid-1', 'Cozy Cottage', 'A nice little cottage in the woods', 'Springfield', 120.00),
  ('uuid-5', 'uuid-1', 'Downtown Apartment', 'Modern apartment in the city center', 'Metropolis', 200.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('uuid-6', 'uuid-4', 'uuid-2', '2025-08-01', '2025-08-05', 480.00, 'confirmed');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('uuid-7', 'uuid-6', 480.00, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('uuid-8', 'uuid-4', 'uuid-2', 5, 'Amazing stay! Highly recommended.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('uuid-9', 'uuid-2', 'uuid-1', 'Hi, is the cottage available for next month?');
