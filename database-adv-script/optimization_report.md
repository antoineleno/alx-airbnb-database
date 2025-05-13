# Optimization Report

## Objective
Refactor complex queries to improve performance.

## Initial Query
See `perfomance.sql`.

## Performance Analysis
Used `EXPLAIN` to analyze the query. Identified issues:
- Full table scans on `users`, `properties`, and `payments`.
- Joins not using indexes efficiently.

## Refactoring Actions
- Ensured indexes on `bookings.user_id`, `bookings.property_id`, `payments.booking_id`.
- Confirmed `id` columns are indexed (primary key).

## Result
Improved execution plan with indexed joins and reduced execution time.

