WITH CUSTOMERS AS (

    SELECT *
    FROM {{ ref('stg_customer') }}

),

ORDERS AS (

    SELECT *
    FROM {{ ref('stg_orders') }}

),

NATION AS (

    SELECT *
    FROM {{ ref('stg_nation') }}

)

SELECT
    C.CUSTOMER_ID,
    C.CUSTOMER_NAME,
    N.NATION_NAME,
    O.ORDER_ID,
    O.ORDER_DATE,
    O.TOTAL_PRICE

FROM CUSTOMERS C
JOIN ORDERS O
    ON C.CUSTOMER_ID = O.CUSTOMER_ID
LEFT JOIN NATION N
    ON C.NATION_ID = N.NATION_ID