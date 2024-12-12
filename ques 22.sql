SELECT 
    b1.booking_id AS booking1_id,
    b2.booking_id AS booking2_id,
    b1.room_id,
    b1.start_date AS booking1_start,
    b1.end_date AS booking1_end,
    b2.start_date AS booking2_start,
    b2.end_date AS booking2_end
FROM 
    Bookings b1
JOIN 
    Bookings b2
ON 
    b1.room_id = b2.room_id
    AND b1.booking_id < b2.booking_id 
    AND b1.start_date < b2.end_date   
    AND b1.end_date > b2.start_date;  
