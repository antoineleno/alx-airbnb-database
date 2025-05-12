# SQL Optimization & Analytics for Airbnb-style Platform

## Overview

This project enhances the database layer of an Airbnb-like system by implementing advanced SQL querying, performance optimization, and analytics. As user activity grows, the need for scalable and efficient data access becomes critical. This work targets key pain points such as slow queries, unindexed lookups, and lack of analytical insight.

---

## Objectives

- Improve query performance with indexing, partitioning, and refactoring.
- Enable advanced reporting using joins, subqueries, and window functions.
- Monitor and analyze execution plans using `EXPLAIN`, `SHOW PROFILE`.

---

## Key Deliverables

- **Joins**: Multi-table queries for bookings, users, properties, and reviews (`joins_queries.sql`).
- **Subqueries**: Correlated and non-correlated filters for advanced data selection (`subqueries.sql`).
- **Analytics**: Aggregations and window functions for ranking and totals (`aggregations_and_window_functions.sql`).
- **Indexing**: Targeted indexes on high-usage columns with performance benchmarks (`database_index.sql`, `index_performance.md`).
- **Query Refactoring**: Optimized complex queries with execution analysis (`perfomance.sql`, `optimization_report.md`).
- **Partitioning**: Logical partitioning on bookings for efficient date filtering (`partitioning.sql`, `partition_performance.md`).
- **Monitoring**: Performance diagnostics with actionable schema improvements (`performance_monitoring.md`).

---

## Stack

- **Database**: MySQL 8+
- **Tools**: MySQL CLI, Workbench, EXPLAIN, SHOW PROFILE

---

## Structure

