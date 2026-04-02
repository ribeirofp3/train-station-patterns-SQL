-- Creating tables
CREATE TABLE Stations (
    station_id INT PRIMARY KEY,
    station_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Trips (
    trip_id INT PRIMARY KEY,
    start_station_id INT,
    duration_minutes INT,
    trip_date DATE,
    FOREIGN KEY (start_station_id) REFERENCES Stations(station_id)
);
