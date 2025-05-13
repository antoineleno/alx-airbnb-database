# Partitioning Large Tables: Performance Improvement

## Objective
The goal was to implement table partitioning on the `bookings` table based on the `start_date` column to optimize query performance. This partitioning approach is specifically beneficial for large datasets where filtering on date-based columns, such as `start_date`, is common.

## Implementation
- **Partitioning Scheme**: The `bookings` table was partitioned based on the `YEAR(start_date)` column. The table was divided into partitions for each year, with an additional partition to capture data from any future years.
  
- **No Foreign Keys**: Foreign key constraints were removed due to MySQL's limitation on partitioned tables.

## Performance Testing
After partitioning the `bookings` table, several queries were executed to test the performance improvements:

### Test Query 1: Fetching Bookings by Date Range
```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
