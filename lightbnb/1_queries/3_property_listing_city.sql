-- Show all details about properties located in Vancouver including their average rating.

-- Select all columns from the properties table for properties located in Vancouver, and the average rating for each property.
-- Order the results from lowest cost_per_night to highest cost_per_night.
-- Limit the number of results to 10.
-- Only show listings that have a rating >= 4 stars.
-- To build this incrementally, you can start by getting all properties without the average rating first.
-- Expected Result:

-- We're only showing the id, title, start_date, and cost_per_night to save space on the screen

select properties.id, properties.title, properties.cost_per_night, avg(property_reviews.rating) as avgrating
from properties join property_reviews 
ON properties.id = property_reviews.property_id
JOIN reservations 
ON reservations.id = property_reviews.reservation_id
WHERE property_reviews.rating >= 4 and properties.city = 'Vancouver'
GROUP BY properties.id
ORDER BY avgrating ASC
LIMIT 10;