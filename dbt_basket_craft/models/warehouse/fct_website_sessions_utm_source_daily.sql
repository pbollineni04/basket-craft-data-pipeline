WITH fct_website_sessions_utm_source_daily AS (
   SELECT
       DATE(website_session_created_at) AS website_session_day,
       COUNT(website_session_id) AS sessions,
       SUM(is_repeat_session)::int AS repeat_sessions,
       (SUM(is_repeat_session)::numeric / COUNT(website_session_id)) * 100 AS repeat_sessions_pct,
       CURRENT_TIMESTAMP AS loaded_at
   FROM {{ ref('stg_website_sessions') }} o
   GROUP BY 
        DATE(website_session_created_at), 
        utm_source
)
SELECT *
FROM fct_website_sessions_utm_source_daily