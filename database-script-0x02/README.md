# Airbnb Clone - Database Seed Data

This directory contains the SQL script to insert sample data into the Airbnb clone database.

## 📁 Files

- `seed.sql` - SQL statements to insert example rows for each table.

## 📝 Description

The seed data includes:
- Multiple users with different roles (host, guest, admin).
- Example properties owned by a host.
- Bookings made by a guest.
- Payments linked to bookings.
- Reviews left by users.
- Messages exchanged between users.

This data simulates realistic use cases and can be used for development and testing purposes.

## 🚀 Usage

Load the schema first (if not already done):
```sql
\i ../database-script-0x01/schema.sql
