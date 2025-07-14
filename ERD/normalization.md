
# Airbnb Clone Database Normalization

This document describes the normalization process applied to the Airbnb clone database design. The goal is to ensure the schema is normalized to **Third Normal Form (3NF)** to eliminate redundancy and improve data integrity.

---

## Normalization Process

### ✅ First Normal Form (1NF)

- Ensured that each table has a **primary key** to uniquely identify records.
- Removed repeating groups and ensured each field contains only atomic (indivisible) values.
  - Example: property `location` is a single VARCHAR field rather than multiple columns.
- Messages between users are modeled as individual rows in the `Message` table.

### ✅ Second Normal Form (2NF)

- Removed partial dependencies (i.e., fields that depend only on part of a composite key).
- All tables use a single-column primary key (`UUID`), so no composite keys exist, and all non-key attributes depend entirely on the PK.

### ✅ Third Normal Form (3NF)

- Removed transitive dependencies (i.e., fields that depend on non-key attributes).
  - Example: `Payment` only stores the `payment_method` and amount, and links to `Booking` — no redundant user or property details are stored in `Payment`.
  - Example: `Review` references both `User` and `Property` — it does not duplicate user names or property details.
- Ensured all non-key attributes are dependent solely on the primary key.

---

## Summary

The final database schema satisfies the rules of 3NF:
- Each table represents one entity.
- No repeating groups.
- No partial dependencies.
- No transitive dependencies.
- Referential integrity is maintained through proper foreign key constraints.

This design minimizes redundancy, improves consistency, and ensures scalability.
