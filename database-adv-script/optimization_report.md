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
Objective: Refactor complex queries to improve performance.

Instructions:

Write an initial query that retrieves all bookings along with the user details, property details, and payment details and save it on perfomance.sql

Analyze the query’s performance using EXPLAIN and identify any inefficiencies.

Refactor the query to reduce execution time, such as reducing unnecessary joins or using indexing.

Repo:

GitHub repository: alx-airbnb-database
Directory: database-adv-script
File: optimization_report.md, perfomance.sql
## Result
Improved execution plan with indexed joins and reduced execution time.

