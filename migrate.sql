CREATE TABLE IF NOT EXISTS data_mart_clickhouse (
    "shop_name" String NOT NULL,
    "product_name" String NOT NULL,
    "plan_date" Date NOT NULL,
    "sales_fact" UInt32,
    "sales_plan" UInt32,
    "sales_fact/sales_plan" Float32,
    "income_fact" Float32,
    "income_plan" Float32,
    "income_fact/income_plan" Float32,
    "avg(sales/date)" Float32,
    "max_sales" UInt32,
    "date_max_sales" Date,
    "date_max_sales_is_promo" Bool,
    "avg(sales/date) / max_sales" Float32,
    "promo_len" UInt32,
    "promo_sales_cnt" UInt32,
    "promo_sales_cnt/fact_sales" Float32,
    "promo_income" Float32,
    "promo_income/fact_income" Float32
)
ENGINE = PostgreSQL('postgres:5432', 'postgres_db', 'data_mart_table', 'postgres', 'postgres');