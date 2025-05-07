<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Airbnb_Logo_Bélo.svg/2560px-Airbnb_Logo_Bélo.svg.png" alt="Airbnb Logo" width="100"/>
</p>

# 📊 Database Normalization Report

## 🎯 Objective

To ensure the Airbnb database design adheres to **Third Normal Form (3NF)** by eliminating redundancy, ensuring data integrity, and maintaining scalability.

---

## ⚙️ Normalization Process

### 🔹 First Normal Form (1NF)
- **Rule**: Eliminate repeating groups; each field contains only atomic (indivisible) values.
- **Compliance**: All attributes in the schema (e.g., `email`, `pricepernight`, `rating`) are atomic. No repeating or multivalued fields exist.

### 🔹 Second Normal Form (2NF)
- **Rule**: Must be in 1NF and all non-key attributes must depend on the whole primary key.
- **Compliance**:
  - All tables have a single-column primary key (`user_id`, `property_id`, `booking_id`, etc.).
  - No partial dependencies exist since no composite primary keys are used.

### 🔹 Third Normal Form (3NF)
- **Rule**: Must be in 2NF and all attributes must be non-transitively dependent on the primary key (i.e., no derived or transitive dependencies).
- **Compliance**:
  - No transitive dependencies are present.
  - Example: In the `Booking` table, `total_price` is derived but calculated based on actual attributes (not stored as a dependency of a non-key).
  - All foreign key relationships are handled through proper constraints without violating 3NF.

---

## ✅ Conclusion

The current schema design is fully normalized to **3NF**.  
All entities are logically separated, redundancies are minimized, and referential integrity is maintained through well-defined relationships and constraints.

---