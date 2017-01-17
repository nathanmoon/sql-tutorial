INSERT INTO review(item_id, location_id, rating, text) VALUES
-- Green Lantern Ring
(1, 1, 10, 'Great price!'), -- Metropolis
(1, 1, 1, 'Broken right out of the box!'),
(1, 1, 2, 'Too large, kept falling off of my finger. Had to return it.'),
(1, 1, 9, 'Functional, but I would prefer it to be blue.'),
(1, 2, 8, NULL), -- Central City
(1, 2, 5, 'Fine, I guess.'),
(1, 2, 2, 'Wrong shade of green.'),
-- Lasso of Truth
(2, 1, 9, 'No complaints.  Works as advertised'), -- Metropolis
(2, 2, 4, 'My ex was still able to lie to me.  Does not work!'), -- Central City
(2, 2, 6, NULL),
(2, 4, 8, NULL), -- Star City
-- Batarang
(3, 4, 10, 'Awesome!'), -- Star City
(3, 4, 4, 'I cannot seem to figure out how to throw this thing!')
;
