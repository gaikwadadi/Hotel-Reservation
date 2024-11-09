
# SQL Final Project 


create database hotel_booking;

# 1. Select all reservations.
SELECT 
    *
FROM
    hotel;

# 2. Count total number of reservations. 
SELECT 
    COUNT(*) as Total_count_of_Reservations
FROM
    hotel;

# 3. Get all canceled reservations.
SELECT 
    *
FROM
    hotel
WHERE
    is_canceled = 1;

# 4. Find reservations with lead time greater than 100 days.
SELECT 
    *
FROM
    hotel
WHERE
    lead_time > 100;

# 5. Get reservations for a specific year (e.g., 2023)
SELECT 
    *
FROM
    hotel
WHERE
    arrival_date_year = 2016;

# 6.Find reservations with more than 2 adults.
SELECT 
    *
FROM
    hotel
WHERE
    adults > 2;

# 7. Count reservations by market segment.
SELECT 
    market_segment, COUNT(*)
FROM
    hotel
GROUP BY market_segment;

# 8. Find reservations where the customer requested car parking.
SELECT 
    *
FROM
    hotel
WHERE
    required_car_parking_spaces = 1;

# 9. Find guests who made special requests (more than 1 request).
SELECT 
    *
FROM
    hotel
WHERE
    total_of_special_requests > 1;

# 10. List all repeated guests.
SELECT 
    *
FROM
    hotel
WHERE
    is_repeated_guest = 1;

# 11. Find reservations made through a specific agent (e.g., agent id 10).
SELECT 
    *
FROM
    hotel
WHERE
    agent = 10;

# 12. Find all guests who canceled previous reservations but kept at least one (non-canceled).
SELECT 
    *
FROM
    hotel
WHERE
    previous_cancellations > 0
        AND previous_bookings_not_canceled > 0;

# 13. Get the number of bookings per distribution channel.
SELECT 
    distribution_channel, COUNT(*)
FROM
    hotel
GROUP BY distribution_channel;

# 14. Find reservations with children but no adults.
SELECT 
    *
FROM
    hotel
WHERE
    children >= 1 AND adults = 0;

# 15. Get the total number of bookings per month for a specific year (e.g., 2023).
SELECT 
    arrival_date_month, COUNT(*)
FROM
    hotel
WHERE
    arrival_date_year = 2017
GROUP BY arrival_date_month;

# 16.Find reservations with more than 7 days in waiting list.
SELECT 
    *
FROM
    hotel
WHERE
    days_in_waiting_list > 7;
    
# 17. Count the reservations that had booking changes.
SELECT 
    COUNT(booking_changes) AS Booking_changes
FROM
    hotel
WHERE
    booking_changes > 0;

# 18. Find guests who booked a specific room type (e.g., room type 'A').
SELECT 
    *
FROM
    hotel
WHERE
    reserved_room_type = 'A'; 


# 19. Find guests whose assigned room type is different from reserved room type.
SELECT 
    *
FROM
    hotel
WHERE
    reserved_room_type != assigned_room_type;

# 20. Get reservation details for a specific guest using their email.
SELECT 
    *
FROM
    hotel
WHERE
    email = 'AnnSullivan@att.com';


