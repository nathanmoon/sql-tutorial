/*
DISTINCT returns only the distinct combinations of values from the rows

Here is the raw table from selecting item_id from the inventory table
*/
SELECT item_id FROM inventory
;

/*
And here are the distinct item_ids
*/

SELECT DISTINCT item_id FROM inventory
;

/*
item_id 3 doesn't appear because no locations have that item in their inventory.  Distinct
works as you would expect over multiple columns.
*/

SELECT DISTINCT item_id, quantity FROM inventory
;

