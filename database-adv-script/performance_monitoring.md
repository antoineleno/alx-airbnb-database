# Performance Monitoring and Optimization Report

## Objective
The objective of this task was to continuously monitor and refine database performance by analyzing query execution plans, identifying bottlenecks, and implementing schema adjustments to optimize frequently used queries in the database.

## Methodology

### Step 1: Identifying Frequently Used Queries
The first step was to identify the most frequently run queries. These could include queries that fetch booking details, retrieve user information, or analyze payments. These queries are typically high traffic and should be optimized to ensure smooth performance under load.

### Step 2: Monitoring Query Performance Using `EXPLAIN ANALYZE`
For each frequently used query, we used the **`EXPLAIN ANALYZE`** command to generate the execution plan. This command provides insight into how MySQL executes a query, showing which parts of the query take the most time and resources.

#### Example Query:
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
