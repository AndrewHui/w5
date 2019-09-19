-- Select all columns from the reservations table, all columns from the properties table, and the average rating of the property.
-- Order the results from most recent start_date to least recent start_date.
-- These will end up being filtered by either "Upcoming Reservations" or "Past Reservations", so only get reservations where the end_date is in the past.
-- Use now()::date to get today's date.
-- This will only be for a single user, so use 1 for the user_id.
-- Limit the results to 10.


select reservations.id, properties.title, reservations.start_date, properties.cost_per_night, avg(property_reviews.rating)
from reservations 
join properties 
on reservations.property_id = properties.id 
join property_reviews
on properties.id = property_reviews.property_id 
WHERE property_reviews.guest_id = 1 and (now()::date - reservations.end_date) >= 0
GROUP BY properties.title, reservations.id, reservations.start_date, properties.cost_per_night
ORDER BY reservations.start_date DESC
LIMIT 10;