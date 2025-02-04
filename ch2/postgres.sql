-- Command: docker exec -it postgres psql -U myuser mydb
-- This command will open the postgres shell, then run the following sql

CREATE TABLE sales_data (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(50),
    sales_amount DECIMAL(10, 2),
    sales_date DATE
);

INSERT INTO sales_data (product_name, category, sales_amount, sales_date)
VALUES
    ('Product A', 'Electronics', 1000.50, '2024-03-01'),
    ('Product B', 'Clothing', 750.25, '2024-03-02'),
    ('Product C', 'Home Goods', 1200.75, '2024-03-03'),
    ('Product D', 'Electronics', 900.00, '2024-03-04'),
    ('Product E', 'Clothing', 600.50, '2024-03-05');

-- \q to quit the postgres shell
