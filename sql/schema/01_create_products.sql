-- Inventory Intelligence & Replenishment Optimization System
-- Product master data: one row per SKU.
-- Standard unit cost is used for inventory valuation; supplier-specific costs
-- will be recorded separately in product_suppliers.

CREATE TABLE products (
    product_id VARCHAR(30) PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    description TEXT,
    category VARCHAR(60) NOT NULL,
    subcategory VARCHAR(60),
    brand VARCHAR(80),

    unit_cost NUMERIC(12,2) NOT NULL
        CHECK (unit_cost >= 0),

    selling_price NUMERIC(12,2) NOT NULL
        CHECK (selling_price >= 0),

    business_criticality VARCHAR(10) NOT NULL
        CHECK (business_criticality IN ('High', 'Medium', 'Low')),

    active_flag BOOLEAN NOT NULL DEFAULT TRUE
);
