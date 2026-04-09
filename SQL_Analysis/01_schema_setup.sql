-- Create Tables with Enhanced Schema
CREATE TABLE Stations (
    station_id INT PRIMARY KEY,
    station_name VARCHAR(100),
    city VARCHAR(50),
    capacity_limit INT 
);

CREATE TABLE Trips (
    trip_id INT PRIMARY KEY,
    start_station_id INT,
    end_station_id INT, 
    trip_start_time DATETIME, 
    trip_end_time DATETIME,   
    trip_status VARCHAR(20), 
    passenger_count INT,      
    FOREIGN KEY (start_station_id) REFERENCES Stations(station_id),
    FOREIGN KEY (end_station_id) REFERENCES Stations(station_id)
);

-- Populate Stations (Northern Italy Hubs)
INSERT INTO Stations (station_id, station_name, city, capacity_limit) VALUES 
(1, 'Torino Porta Nuova', 'Torino', 15000),
(2, 'Torino Porta Susa', 'Torino', 12000),
(3, 'Milano Centrale', 'Milano', 50000),
(4, 'Milano Cadorna', 'Milano', 8000),
(5, 'Asti', 'Asti', 2000),
(6, 'Alessandria', 'Alessandria', 3000),
(7, 'Genova Piazza Principe', 'Genova', 10000);


INSERT INTO Trips (trip_id, start_station_id, end_station_id, trip_start_time, trip_end_time, trip_status, passenger_count) VALUES 
(1, 3, 1, '2026-04-01 06:15:00', '2026-04-01 07:15:00', 'On Time', 412),
(2, 7, 3, '2026-04-01 06:45:00', '2026-04-01 08:30:00', 'On Time', 320),
(3, 1, 5, '2026-04-01 07:00:00', '2026-04-01 07:45:00', 'Delayed', 120),
(4, 2, 3, '2026-04-01 07:30:00', '2026-04-01 08:45:00', 'On Time', 500),
(5, 4, 2, '2026-04-01 08:00:00', '2026-04-01 10:15:00', 'On Time', 215),
(6, 6, 1, '2026-04-01 08:20:00', '2026-04-01 09:20:00', 'Cancelled', 0),
(7, 3, 7, '2026-04-01 09:00:00', '2026-04-01 10:45:00', 'On Time', 380),
(8, 5, 1, '2026-04-01 09:15:00', '2026-04-01 10:00:00', 'On Time', 95),
(9, 2, 6, '2026-04-01 10:00:00', '2026-04-01 11:15:00', 'Delayed', 150),
(10, 1, 3, '2026-04-01 11:30:00', '2026-04-01 12:45:00', 'On Time', 440),
(11, 3, 2, '2026-04-02 07:10:00', '2026-04-02 08:25:00', 'On Time', 480),
(12, 1, 7, '2026-04-02 07:15:00', '2026-04-02 09:30:00', 'Delayed', 310),
(13, 2, 1, '2026-04-02 07:45:00', '2026-04-02 08:45:00', 'On Time', 420),
(14, 5, 6, '2026-04-02 08:00:00', '2026-04-02 08:40:00', 'On Time', 110),
(15, 7, 3, '2026-04-02 08:15:00', '2026-04-02 10:00:00', 'On Time', 350),
(16, 4, 3, '2026-04-02 08:30:00', '2026-04-02 09:15:00', 'On Time', 280),
(17, 3, 5, '2026-04-02 09:00:00', '2026-04-02 10:30:00', 'Cancelled', 0),
(18, 1, 2, '2026-04-02 09:45:00', '2026-04-02 10:45:00', 'On Time', 290),
(19, 6, 2, '2026-04-02 10:15:00', '2026-04-02 11:30:00', 'On Time', 140),
(20, 2, 7, '2026-04-02 11:00:00', '2026-04-02 13:15:00', 'Delayed', 200);
