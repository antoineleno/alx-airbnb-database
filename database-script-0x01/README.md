# 📄 Database Schema (DDL)

## 🎯 Objective

This component of the ALX Airbnb Database Project defines the full relational database schema using SQL Data Definition Language (DDL). The schema models an Airbnb-like application with support for users, properties, bookings, payments, reviews, and messaging.

---

## 📦 Files

- `schema.sql` — Contains `CREATE TABLE` statements for all entities, including constraints and indexes.
- `README.md` — Describes the purpose and structure of the schema.

---

## 🧱 Schema Features

- **Primary Keys** for entity identification
- **Foreign Keys** to maintain referential integrity
- **ENUM types** for roles, status, and payment methods
- **CHECK constraints** (e.g., rating between 1 and 5)
- **Timestamps** for auditability
- **Indexes** on frequently queried columns (e.g., `email`, `property_id`, `booking_id`)

---

## 🗂️ Tables Defined

- `User`
- `Property`
- `Booking`
- `Payment`
- `Review`
- `Message`

Each table is carefully structured to comply with **3NF** and follows best practices for relational database design.

---

## ✅ Status

✔️ Schema validated  
✔️ Referential constraints enforced  
✔️ Ready for data seeding in `database-script-0x02/`

---

## 🛠️ Usage

Execute the schema using a supported SQL engine (e.g., MySQL or PostgreSQL):

```bash
psql -f schema.sql or mysql -u username -p < schema.sql
