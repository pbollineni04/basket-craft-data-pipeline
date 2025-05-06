WITH raw_website_sessions AS (
   SELECT *
   FROM {{ source('basket_craft', 'website_sessions') }}
   WHERE created_at BETWEEN '2023-12-01' AND '2023-12-31 23:59:59'
),
stg_website_sessions AS (
   SELECT
       website_session_id,
       created_at AS website_session_created_at,
       user_id, 
       is_repeat_session,
       utm_source,
       utm_campaign,
       utm_content,
       device_type,
       http_referer,
       CURRENT_TIMESTAMP AS loaded_at -- for auditing and debugging
   FROM raw_website_sessions
)
-- Select all columns from the staging table
SELECT *
FROM stg_website_sessions