# Train Station Pattern Analysis
This project focuses on transforming complex, high-volume raw train movement data into actionable operational insights. By leveraging advanced SQL techniques, the project identifies passenger flow trends, optimizes scheduling, and evaluates station efficiency.

## Objective
To translate raw transactional data into a strategic roadmap for transport authorities, identifying capacity bottlenecks and peak-hour demand to improve overall transportation efficiency and resource allocation.

## Tech Stack
Database: Microsoft SQL Server

Environment: SQL Server Management Studio (SSMS)

Analytical Techniques: T-SQL, Common Table Expressions (CTEs), Window Functions, and Query Optimization.

## Key Insights & Business Value 
Commuter vs. Long-Haul Segmentation: Used CTEs and Case Logic to categorize travel patterns in major hubs like Milano. This identifies whether a station serves primarily daily commuters or long-distance travelers, informing ticket pricing and seating capacity strategies.

Operational Outlier Detection: Implemented Subqueries to identify "Trip Outliers"—routes that exceed the global average duration. This allows authorities to pinpoint specific corridors facing systemic delays or infrastructure bottlenecks.

Passenger Throughput & City Dynamics: Leveraged Multi-way Joins to calculate total urban mobility (arrivals + departures). By ranking cities by total passenger volume, the project prioritizes resource allocation for high-traffic hubs like Milano and Torino.

Performance Reliability Index: Analyzed trip statuses (On-Time vs. Delayed) across specific corridors to create a reliability baseline, essential for improving passenger trust and service predictability.

---
*This project is part of my data analysis portfolio.*
Author: Fabrizio Ribeiro Pinto
LinkedIn: [Your LinkedIn Link]
