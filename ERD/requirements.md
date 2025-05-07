# 🏡 AirBnB Database Design – ER Diagram Documentation

This project documents the **Entity-Relationship Diagram (ERD)** for a simplified version of the AirBnB platform. It includes entity definitions, attribute constraints, and relationships to model a functional online rental marketplace for guests and hosts.

---

## 📌 ER Diagram

![AirBnB ERD](https://drive.google.com/file/d/1yTWuOTOdJpz5LUKJB7VU2yZYWeFoI67Q/view)

---

## 📦 Entities and Attributes

### 👤 User
| Attribute       | Type                          | Constraints                                 |
|----------------|-------------------------------|---------------------------------------------|
| `user_id`       | UUID                          | Primary Key, Indexed                        |
| `first_name`    | VARCHAR                       | NOT NULL                                    |
| `last_name`     | VARCHAR                       | NOT NULL                                    |
| `email`         | VARCHAR                       | UNIQUE, NOT NULL                            |
| `password_hash` | VARCHAR                       | NOT NULL                                    |
| `phone_number`  | VARCHAR                       | NULL                                        |
| `role`          | ENUM (guest, host, admin)     | NOT NULL                                    |
| `created_at`    | TIMESTAMP                     | DEFAULT CURRENT_TIMESTAMP                   |

---

### 🏠 Property
| Attribute        | Type            | Constraints                                           |
|------------------|-----------------|-------------------------------------------------------|
| `property_id`     | UUID            | Primary Key, Indexed                                 |
| `host_id`         | UUID            | Foreign Key → User(user_id)                          |
| `name`            | VARCHAR         | NOT NULL                                             |
| `description`     | TEXT            | NOT NULL                                             |
| `location`        | VARCHAR         | NOT NULL                                             |
| `pricepernight`   | DECIMAL         | NOT NULL                                             |
| `created_at`      | TIMESTAMP       | DEFAULT CURRENT_TIMESTAMP                            |
| `updated_at`      | TIMESTAMP       | ON UPDATE CURRENT_TIMESTAMP                          |

---

### 📆 Booking
| Attribute      | Type                        | Constraints                                           |
|----------------|-----------------------------|-------------------------------------------------------|
| `booking_id`    | UUID                        | Primary Key, Indexed                                 |
| `property_id`   | UUID                        | Foreign Key → Property(property_id)                  |
| `user_id`       | UUID                        | Foreign Key → User(user_id)                          |
| `start_date`    | DATE                        | NOT NULL                                             |
| `end_date`      | DATE                        | NOT NULL                                             |
| `total_price`   | DECIMAL                     | NOT NULL                                             |
| `status`        | ENUM (pending, confirmed, canceled) | NOT NULL                                   |
| `created_at`    | TIMESTAMP                   | DEFAULT CURRENT_TIMESTAMP                            |

---

### 💳 Payment
| Attribute       | Type                  | Constraints                                           |
|-----------------|-----------------------|-------------------------------------------------------|
| `payment_id`     | UUID                  | Primary Key, Indexed                                 |
| `booking_id`     | UUID                  | Foreign Key → Booking(booking_id)                    |
| `amount`         | DECIMAL               | NOT NULL                                             |
| `payment_date`   | TIMESTAMP             | DEFAULT CURRENT_TIMESTAMP                            |
| `payment_method` | ENUM (credit_card, paypal, stripe) | NOT NULL                             |

---

### ⭐ Review
| Attribute      | Type      | Constraints                                                 |
|----------------|-----------|-------------------------------------------------------------|
| `review_id`     | UUID      | Primary Key, Indexed                                       |
| `property_id`   | UUID      | Foreign Key → Property(property_id)                        |
| `user_id`       | UUID      | Foreign Key → User(user_id)                                |
| `rating`        | INTEGER   | NOT NULL, CHECK (rating >= 1 AND rating <= 5)              |
| `comment`       | TEXT      | NOT NULL                                                   |
| `created_at`    | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP                                  |

---

### ✉️ Message
| Attribute      | Type      | Constraints                                                 |
|----------------|-----------|-------------------------------------------------------------|
| `message_id`    | UUID      | Primary Key, Indexed                                       |
| `sender_id`     | UUID      | Foreign Key → User(user_id)                                |
| `recipient_id`  | UUID      | Foreign Key → User(user_id)                                |
| `message_body`  | TEXT      | NOT NULL                                                   |
| `sent_at`       | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP                                  |

---

## 🔐 Constraints Summary

- **User Table**
  - Unique: `email`
  - Non-null on essential fields
- **Property Table**
  - FK: `host_id` → User
- **Booking Table**
  - FK: `property_id`, `user_id` → Property, User
  - Enum constraint on `status`
- **Payment Table**
  - FK: `booking_id` → Booking
- **Review Table**
  - FK: `property_id`, `user_id`
  - `rating`: Must be between 1 and 5
- **Message Table**
  - FK: `sender_id`, `recipient_id` → User

---

## ⚡ Indexing

- All **Primary Keys**: Automatically indexed
- Additional Indexes:
  - `email` in **User**
  - `property_id` in **Property** and **Booking**
  - `booking_id` in **Booking** and **Payment**

---

## 📁 ERD Access

You can view or download the full ER diagram here:
➡️ [ERD Diagram (Google Drive)](https://drive.google.com/file/d/1yTWuOTOdJpz5LUKJB7VU2yZYWeFoI67Q/view)

---

## 🧠 Author & Credits

By [Antoine LENO](https://github.com/antoineleno).

---
