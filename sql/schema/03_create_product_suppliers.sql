-- Current product-supplier purchasing arrangements.
-- Historical changes to quoted terms will be tracked separately.

CREATE TABLE product_suppliers (
    product_id VARCHAR(30)
        REFERENCES products(product_id),

    supplier_id VARCHAR(30)
        REFERENCES suppliers(supplier_id),

    lead_time_days INTEGER NOT NULL
        CHECK (lead_time_days >= 0),

    supplier_unit_cost NUMERIC(12,2) NOT NULL
        CHECK (supplier_unit_cost >= 0),

    minimum_order_quantity INTEGER NOT NULL
        CHECK (minimum_order_quantity >= 0),

    units_per_delivery INTEGER
        CHECK (units_per_delivery > 0),

    active_flag BOOLEAN NOT NULL DEFAULT TRUE,

    PRIMARY KEY (product_id, supplier_id)
);
