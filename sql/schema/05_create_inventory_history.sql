CREATE TABLE inventory_history (
    snapshot_date DATE NOT NULL,
    dc_id VARCHAR(30) REFERENCES distribution_centers(dc_id),
    product_id VARCHAR(30) REFERENCES products(product_id),
    on_hand_qty INTEGER NOT NULL CHECK (on_hand_qty >= 0),
    reserved_qty INTEGER NOT NULL DEFAULT 0 CHECK (reserved_qty >= 0),
    PRIMARY KEY (snapshot_date, dc_id, product_id)
);
