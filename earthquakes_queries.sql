Create database if not exists seismic_db;
use seismic_db;
CREATE TABLE earthquakes (
    event_id VARCHAR(50) PRIMARY KEY,

    magnitude FLOAT NOT NULL,
    place VARCHAR(255),

    time_epoch_ms BIGINT,
    updated_epoch_ms BIGINT,

    felt FLOAT,
    cdi FLOAT,
    mmi FLOAT,

    alert VARCHAR(20),
    status VARCHAR(30),

    tsunami TINYINT,

    significance INT,

    network VARCHAR(20),

    num_stations INT,

    distance_deg FLOAT,

    rms FLOAT,

    azimuthal_gap FLOAT,

    magnitude_type VARCHAR(20),

    event_type VARCHAR(50),

    longitude FLOAT,
    latitude FLOAT,
    depth_km FLOAT,

    time DATETIME,

    updated_time DATETIME,

    magnitude_category VARCHAR(20)
);
SELECT COUNT(*) FROM earthquakes;
SELECT COUNT(DISTINCT event_id)

FROM earthquakes;
SELECT event_id,magnitude,magnitude_category,place
FROM earthquakes
LIMIT 10;


SELECT magnitude_category, COUNT(*) AS count
FROM earthquakes
GROUP BY magnitude_category
ORDER BY count DESC;

