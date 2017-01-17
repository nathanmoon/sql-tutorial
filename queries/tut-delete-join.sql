BEGIN;
/*
DELETE syntax is very similar to UPDATE.  JOINs are not allowed, but extra tables
can be referenced with a USING clause, and join conditions in the WHERE clause:
*/
DELETE FROM inventory inv
USING location l, item itm
WHERE l.id = inv.location_id
AND itm.id = inv.item_id
AND l.state IN ('New York', 'New Jersey');

/*
SUB-SELECT syntax is also possible:
*/
DELETE FROM inventory
WHERE location_id IN (
    SELECT id FROM location WHERE state IN ('New York', 'New Jersey')
);

ROLLBACK;

