-- Analyzing trip duration categories for all movements involving Milano
WITH MilanTrips AS (
    SELECT 
        DATEDIFF(MINUTE, t.trip_start_time, t.trip_end_time) AS duration_minutes,
        CASE 
            WHEN DATEDIFF(MINUTE, t.trip_start_time, t.trip_end_time) < 30 THEN 'Short-Distance (Commuter)'
            WHEN DATEDIFF(MINUTE, t.trip_start_time, t.trip_end_time) BETWEEN 30 AND 90 THEN 'Mid-Range (Inter-City)'
            ELSE 'Long-Haul (High-Speed)'
        END AS travel_category
    FROM Trips t
    JOIN Stations s_start ON t.start_station_id = s_start.station_id
    JOIN Stations s_end ON t.end_station_id = s_end.station_id
    WHERE s_start.city = 'Milano' OR s_end.city = 'Milano'
    AND t.trip_status <> 'Cancelled'
)
SELECT 
    travel_category,
    COUNT(*) AS total_trips,
    CAST(ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS DECIMAL(10,2)) AS percentage_share
FROM MilanTrips
GROUP BY travel_category
ORDER BY percentage_share DESC;
