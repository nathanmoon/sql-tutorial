/*
When you need to update rows in a table based on data in another table,
the syntax is a bit cumbersome.  You'd think you could just treat it like
any other query, and add a JOIN, like this:
*/

UPDATE inventory inv
JOIN location l ON inv.location_id = l.id
JOIN item itm ON inv.item_id = itm.id
SET inv.price = itm.msrp * 0.8
WHERE l.state IN ('New York', 'New Jersey');

BEGIN;
/*
But postgres does not allow this syntax.  Instead it supports a FROM clause.
FROM syntax:
*/
UPDATE inventory inv
SET price = itm.msrp * 0.8
FROM location l, item itm
WHERE l.id = inv.location_id
AND itm.id = inv.item_id
AND l.state IN ('New York', 'New Jersey');

/*
Note that this forces us to do joins with the old style syntax of putting the
join conditions in the where clause.  Yuck.  But that's the only option in 
postgres.

Also note that we alias inventory, but don't use the alias in the SET clause.
That is because it's not allowed there.  It is allowed in the WHERE clause. I
guess the logic is that the SET cannot reference anything outside of the single
table referenced in the UPDATE, so an alias is not necessary.  It is necessary
in the WHERE condition because of the possibility of ambiguity of column names.

SUB-SELECT syntax is also possible, but in this case we can't reference data
from the other table(s) in the SET clause, so it's use is somewhat limited:
*/
UPDATE inventory
SET price = price * 0.8
WHERE location_id IN (
    SELECT id FROM location WHERE state IN ('New York', 'New Jersey')
);

ROLLBACK;
