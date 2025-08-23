CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    message_id VARCHAR(50) NOT NULL,
    transaction_id VARCHAR(50) NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    pan VARCHAR(16) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    xml_created_at TIMESTAMP NOT NULL,
    xml_data TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE logs (
    id SERIAL PRIMARY KEY,
    app_name VARCHAR(50) NOT NULL,
    message TEXT NOT NULL,
    log_level VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);