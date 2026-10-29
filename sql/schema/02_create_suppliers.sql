-- Supplier master data: one row per supplier.
-- Contact fields are nullable to accommodate incomplete legacy records.

CREATE TABLE suppliers (
    supplier_id VARCHAR(30) PRIMARY KEY,
    supplier_name VARCHAR(150) NOT NULL,
    country VARCHAR(60) NOT NULL,
    supplier_type VARCHAR(40),

    contact_name VARCHAR(100),
    contact_email VARCHAR(150),
    contact_phone VARCHAR(30),

    active_flag BOOLEAN NOT NULL DEFAULT TRUE
);
