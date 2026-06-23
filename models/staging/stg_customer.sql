SELECT
    c_custkey AS customer_id,
    c_name AS customer_name,
    c_nationkey AS nation_id
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER