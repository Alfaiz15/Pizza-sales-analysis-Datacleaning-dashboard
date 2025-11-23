-- --case 1
-- With base_data AS (
-- SELECT *,
--   -- convert miles & speed ke km dan km/h
-- miles * 1.60934 AS distance_km,
-- speed * 1.60934 AS speed_kmh,

--   CASE 
--   WHEN day IN ('Saturday', 'Sunday') THEN 'Weekend'
--   ELSE 'Weekday' END AS day_type
--   FROM `buoyant-road-479102-f1.Uber.uber_clean`
--   ) 

-- -- SELECT 
-- --   category, 
-- --   day_type,
-- --   COUNT(*) AS total_trip,
-- --   ROUND(COUNT(*)/COUNT(DISTINCT start_date), 2) AS avg_trip_per_day,
-- --   ROUND(AVG(CASE WHEN duration >0 THEN duration END),2) AS avg_duration_minutes,
-- --   ROUND(AVG(distance_km),2) AS avg_distance_km,
-- --   ROUND(AVG(CASE WHEN Speed_kmh >0 THEN speed_kmh END), 2) AS avg_speed_km
-- -- FROM base_data
-- -- GROUP BY 1,2;


-- -- Case 2
-- total trip per jam pada weekend and weekday
-- total 10 hari dan jam tersibuk

With base_data AS (

SELECT *,

  -- convert miles & speed ke km dan km/h
miles * 1.60934 AS distance_km,
speed * 1.60934 AS speed_kmh,

  CASE 
  WHEN day IN ('Saturday', 'Sunday') THEN 'Weekend'
  ELSE 'Weekday' END AS day_type
  FROM `buoyant-road-479102-f1.Uber.uber_clean`
  ) 

-- -- weeekend
-- SELECT start_hour, COUNT(*) AS count_trip_weekend
-- FROM base_data
-- WHERE day_type = 'Weekend'
-- GROUP BY  1 ORDER BY start_hour;


-- weekday
SELECT start_hour, COUNT(*) AS count_trip_weekday
FROM base_data
WHERE day_type = 'Weekday'
GROUP BY  1 ORDER BY start_hour;




-- -- -- top 10 hari dan jam sibuk

-- SELECT day, tart_hour. COUNT(*) AS count_trip
-- FROM base_data 
-- ORDER BY 1,2 ORDER BY COUNT(*) DESC LIMIT 10;







