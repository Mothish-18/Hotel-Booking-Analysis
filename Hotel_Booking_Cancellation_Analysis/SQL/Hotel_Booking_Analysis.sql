-- =====================================================
-- HOTEL BOOKING & CANCELLATION ANALYSIS
-- SQL BUSINESS ANALYSIS
-- =====================================================

USE hotel_booking_analysis;


-- 1. What are the first 10 booking records?
SELECT *
FROM hotel_bookings
LIMIT 10;


-- 2. How many total bookings are available?
SELECT COUNT(*) AS total_bookings
FROM hotel_bookings;


-- 3. What types of hotels are available?
SELECT DISTINCT hotel
FROM hotel_bookings;


-- 4. How many bookings does each hotel have?
SELECT hotel, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY hotel;


-- 5. How many bookings were made each year?
SELECT arrival_year, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY arrival_year
ORDER BY arrival_year;


-- 6. How many bookings were canceled and not canceled?
SELECT booking_status, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY booking_status;


-- 7. What is the overall cancellation rate?
SELECT ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate
FROM hotel_bookings;


-- 8. What is the cancellation rate for each hotel?
SELECT hotel,
       ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate
FROM hotel_bookings
GROUP BY hotel;


-- 9. How many bookings were canceled at each hotel?
SELECT hotel, COUNT(*) AS canceled_bookings
FROM hotel_bookings
WHERE is_canceled = 1
GROUP BY hotel;


-- 10. Which customer type has the highest cancellation rate?
SELECT customer_type,
       ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate
FROM hotel_bookings
GROUP BY customer_type
ORDER BY cancellation_rate DESC;


-- 11. How does deposit type affect cancellations?
SELECT deposit_type,
       ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate
FROM hotel_bookings
GROUP BY deposit_type
ORDER BY cancellation_rate DESC;


-- 12. Which market segment has the highest cancellation rate?
SELECT market_segment,
       ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate
FROM hotel_bookings
GROUP BY market_segment
ORDER BY cancellation_rate DESC;


-- 13. What is the average daily rate for each hotel?
SELECT hotel, ROUND(AVG(adr), 2) AS average_daily_rate
FROM hotel_bookings
GROUP BY hotel;


-- 14. What is the average daily rate for each arrival month?
SELECT arrival_month,
       ROUND(AVG(adr), 2) AS average_daily_rate
FROM hotel_bookings
GROUP BY arrival_month
ORDER BY MIN(arrival_date);


-- 15. What is the estimated booking value for each hotel?
SELECT hotel,
       ROUND(SUM(estimated_booking_value), 2) AS estimated_booking_value
FROM hotel_bookings
WHERE is_canceled = 0
GROUP BY hotel;


-- 16. Which market segment generates the highest estimated booking value?
SELECT market_segment,
       ROUND(SUM(estimated_booking_value), 2) AS estimated_booking_value
FROM hotel_bookings
WHERE is_canceled = 0
GROUP BY market_segment
ORDER BY estimated_booking_value DESC;


-- 17. Which customer type has the highest average booking value?
SELECT customer_type,
       ROUND(AVG(estimated_booking_value), 2) AS average_booking_value
FROM hotel_bookings
WHERE is_canceled = 0
GROUP BY customer_type
ORDER BY average_booking_value DESC;


-- 18. How many bookings are from repeat guests?
SELECT is_repeated_guest, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY is_repeated_guest;


-- 19. How many bookings belong to each customer type?
SELECT customer_type, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY customer_type
ORDER BY total_bookings DESC;


-- 20. What is the average number of guests for each hotel?
SELECT hotel, ROUND(AVG(total_guests), 2) AS average_guests
FROM hotel_bookings
GROUP BY hotel;


-- 21. How many bookings are family bookings?
SELECT family_booking, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY family_booking;


-- 22. What is the average length of stay for each hotel?
SELECT hotel, ROUND(AVG(total_nights), 2) AS average_nights
FROM hotel_bookings
GROUP BY hotel;


-- 23. Which month has the highest number of bookings?
SELECT arrival_month, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY arrival_month
ORDER BY MIN(arrival_date);


-- 24. How many bookings does each hotel receive each month?
SELECT hotel, arrival_month, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY hotel, arrival_month
ORDER BY hotel, MIN(arrival_date);


-- 25. What is the average booking lead time for each hotel?
SELECT hotel, ROUND(AVG(lead_time), 2) AS average_lead_time
FROM hotel_bookings
GROUP BY hotel;


-- 26. Which 10 countries have the highest number of bookings?
SELECT country, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY country
ORDER BY total_bookings DESC
LIMIT 10;


-- 27. Which 10 countries have the highest number of cancellations?
SELECT country, COUNT(*) AS canceled_bookings
FROM hotel_bookings
WHERE is_canceled = 1
GROUP BY country
ORDER BY canceled_bookings DESC
LIMIT 10;


-- 28. How does lead time affect the cancellation rate?
SELECT
    CASE
        WHEN lead_time <= 30 THEN '0-30 Days'
        WHEN lead_time <= 90 THEN '31-90 Days'
        WHEN lead_time <= 180 THEN '91-180 Days'
        WHEN lead_time <= 365 THEN '181-365 Days'
        ELSE '365+ Days'
    END AS lead_time_group,
    ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate
FROM hotel_bookings
GROUP BY lead_time_group;


-- 29. What is the cancellation rate by hotel and customer type?
SELECT hotel, customer_type,
       ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate
FROM hotel_bookings
GROUP BY hotel, customer_type
ORDER BY hotel, cancellation_rate DESC;


-- 30. Which hotel and customer type combinations have
-- an average estimated booking value above 500?
SELECT hotel, customer_type,
       ROUND(AVG(estimated_booking_value), 2) AS average_booking_value
FROM hotel_bookings
WHERE is_canceled = 0
GROUP BY hotel, customer_type
HAVING AVG(estimated_booking_value) > 500
ORDER BY average_booking_value DESC;


-- =====================================================
-- END OF HOTEL BOOKING SQL ANALYSIS
-- =====================================================

