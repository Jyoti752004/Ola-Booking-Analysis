-- query 1
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

-- query 2
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance 
FROM bookings 
GROUP BY
Vehicle_Type;

-- query 3
SELECT COUNT(*) FROM bookings 
WHERE Booking_Status = 'Canceled by Customer';

-- query 4
SELECT customer_id, COUNT(booking_id) as total_rides
FROM bookings
GROUP BY customer_id
ORDER BY total_rides DESC LIMIT 5;

-- query 5
SELECT COUNT(*) FROM bookings
WHERE canceled_rides_by_driver = 'Personal & Car related issue'

-- query 6
SELECT MAX(driver_ratings) AS max_rating, MIN(driver_ratings) AS min_rating
FROM bookings
WHERE vehicle_type = 'Prime Sedan';

-- query 7
SELECT * FROM bookings 
WHERE payment_method = 'UPI';

-- query 8
SELECT vehicle_type, AVG(customer_rating) AS avg_customere_rating
FROM bookings
GROUP BY vehicle_type;

-- query 9
SELECT SUM(booking_value) AS total_successful_val 
FROM bookings
WHERE booking_status = 'Success';

-- query 10
SELECT booking_id, incomplete_rides_reason FROM bookings
WHERE incomplete_rides = 'Yes';