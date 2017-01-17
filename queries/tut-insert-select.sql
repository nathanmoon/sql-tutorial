BEGIN;
/*
INSERT statements can pull data together using a SELECT statement, which
makes it quite flexible.  The insert statement just needs to generate a
table that fits the columns specified in the INSERT clause
*/

INSERT INTO review (item_id, location_id, text, rating)
SELECT inv.item_id, inv.location_id, CONCAT('auto-review of ', itm.name, ' at ', loc.name), 0
FROM inventory inv
JOIN location loc ON inv.location_id = loc.id
JOIN item itm ON inv.item_id = itm.id
RETURNING *;

ROLLBACK;
