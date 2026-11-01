CREATE TABLE distribution_centers (
    dc_id VARCHAR(30) PRIMARY KEY,
    dc_name VARCHAR(150) NOT NULL,
    dc_city VARCHAR(100) NOT NULL,
    dc_country VARCHAR(100) NOT NULL,
    active_flag BOOLEAN NOT NULL DEFAULT TRUE
);
