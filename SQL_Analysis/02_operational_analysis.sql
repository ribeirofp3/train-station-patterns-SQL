-- Trip Outliers: Which trips last longer than the global average?
WITH TripDurations AS (
    SELECT 
        trip_id,
        DATEDIFF(MINUTE, trip_start_time, trip_end_time) AS duration_minutes
    FROM Trips
    WHERE trip_status <> 'Cancelled' -- Exclude cancelled trips from average
)
SELECT trip_id, duration_minutes
FROM TripDurations
WHERE duration_minutes > (SELECT AVG(duration_minutes) FROM TripDurations)
ORDER BY duration_minutes DESC;
