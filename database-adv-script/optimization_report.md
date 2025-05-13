# 📈 Index Performance Report

**Project**: ALX Airbnb Database  
**Directory**: `database-adv-script`  
**File**: `index_performance.md`

---

## ✅ Objective

Improve SQL query performance by identifying and creating indexes on high-usage columns in the `users`, `bookings`, and `properties` tables.

---

## 🔍 Step 1: Identify High-Usage Columns

We analyzed SQL queries and identified columns frequently used in `WHERE`, `JOIN`, and `ORDER BY` clauses:

- `bookings.user_id` → used in `JOIN` with `users`
- `bookings.property_id` → used in `JOIN` with `properties`
- `bookings.status` → used in `WHERE` clause
- `payments.booking_id` → used in `JOIN` with `bookings`
- `payments.amount` → used in `WHERE` clause

---

## 🛠️ Step 2: Create Indexes

SQL `CREATE INDEX` statements were added to `database_index.sql` as follows:

```sql
-- Indexes to improve query performance

-- For Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_status ON bookings(status);

-- For Payments table (already existed)
-- CREATE INDEX idx_payments_booking_id ON payments(booking_id);
-- CREATE INDEX idx_payments_amount ON payments(amount);
