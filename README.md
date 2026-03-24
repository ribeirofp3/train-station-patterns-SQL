# Bikeshare-sql-analysis

## Focus: Operational Efficiency & Usage Patterns

This project demonstrates my ability to extract business insights from relational databases using SQL. I analyzed a bike-sharing system (simulating an Italian operation) to help managers understand station popularity, identify trip anomalies, and categorize user behavior.

Tech Stack
Database: PostgreSQL / MySQL
Key Concepts: Joins, Subqueries, Aggregations, CASE Statements.


### High-Traffic Cities

Goal: Identify which cities have the highest volume of trips to optimize bike distribution.
Solution :

SELECT city, count(id_start_station) Station_st
FROM Station s 
JOIN Viagens v on e.station_id = v.id_start_id
GROUP BY city;


### Identifying Trip Outliers

Goal: Find trips with a duration strictly greater than the overall average to identify potential bike misuse or long-distance patterns.
Solution :

SELECT trip_id, duration_minutes
FROM Trips
WHERE duration_minutes > (SELECT AVG(duration_minutes) AVG_Trips
FROM Trips);


### Trip Categorization (Focus: Milan)

Goal: Segment trips in Milan into 'Short', 'Medium', or 'Long' categories to help marketing understand how the service is being used in the city.

If the trip lasted less than 20 minutes, write 'Short'.
If it lasted between 20 and 60 minutes, write 'Medium'.
If it lasted more than 60 minutes, write 'Long'.
Show only trips from the city of 'Milano'.

Solution :
SELECT 
    s.station_name, 
    CASE 
        WHEN t.duration_minutes < 20 THEN 'Short'
        WHEN t.duration_minutes BETWEEN 20 AND 60 THEN 'Medium'
        WHEN t.duration_minutes > 60 THEN 'Long'
        ELSE 'N/A'
    END AS duration_category
FROM Stations s
JOIN Trips t ON e.station_id = t.start_station_id
WHERE s.city = 'Milano';
