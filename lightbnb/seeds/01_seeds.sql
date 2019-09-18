

INSERT INTO users (id, name, email, password) 
VALUES (1, 'Eva Stanley', 'sebastianguerra@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(2, 'Louisa Meyer', 'jacksonrose@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(3, 'Dominic Parks', 'victoriablackwell@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, street, country, city, province, post_code, active)
VALUES (1, 'Loft', 'Description', 'http://tphoto.com', 'http://cphoto.com', 200, 1, 2, 2, '332 Granville Street', 'Canada', 'Vancouver', 'BC', 'V1B 1B1', True),
(2, 'Basement', 'Description', 'http://tphoto.com', 'http://cphoto.com', 600, 1, 1, 1, '55 Gilbert Road', 'Canada', 'Vancouver', 'BC', 'V2B 2A2', True),
(3, 'Apartment', 'Description', 'http://tphoto.com', 'http://cphoto.com', 100, 2, 1, 2, 'W Georgia 401 street', 'Canada', 'Vancouver', 'BC', 'V3N 1A3', True);


INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 1, '2018-11-13', '2018-12-14'),
(2, 2, '2019-03-04', '2019-05-01'),
(3, 3, '2021-11-11', '2021-11-14');

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 2, 'message'),
(2, 3, 2, 3, 'message'),
(3, 2, 3, 3, 'message');

INSERT INTO rates (start_date, end_date, cost_per_night, property_id)
VALUES ('2019-11-21', '2019-11-26', 200, 1),
('2021-12-21', '2021-12-26', 600, 2),
('2019-01-21', '2019-01-26', 100, 3);

INSERT INTO guest_reviews (guest_id, owner_id, reservation_id, rating, message)
VALUES (1, 2, 3, 3, 'message'),
(2, 3, 2, 2, 'message'),
(3, 2, 3, 2, 'message');