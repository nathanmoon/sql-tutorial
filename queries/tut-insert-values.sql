BEGIN;
/*
The most basic INSERT just provides raw values:
*/
INSERT INTO review (item_id, location_id, text, rating)
VALUES 
(1, 1, 'one', 1),
(2, 2, 'two', 2),
(3, 3, 'three', 3);

/*
nullable columns or columns that have defaults defined can be omitted.
*/
ROLLBACK;
