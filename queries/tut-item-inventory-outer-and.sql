/*
JOIN clauses allow multiple conditions in the ON clause.  These conditions are applied at
join time, and affect how the join occurs.  So by adding the condition for filtering by
the Lasso of Truth item into to the ON clause, we are filtering the table before joining
*/
SELECT l.name, inv.quantity, inv.price
FROM location l
LEFT OUTER JOIN inventory inv ON inv.location_id = l.id AND inv.item_id = 2
;
/*
This means that the location table will only join to rows in the inventory table where
the item_id is 2.  Since it's an outer join, if no rows are found, the location will
still be present, and the inventory columns for that row will all be NULL.

As a side note, INNER JOINs can have multiple conditions on them as well, but since 
inner joins require all the conditions to be satisfied for the row to be present, there
is actually no difference between extra conditions in the ON clause and those same conditions
in the WHERE clause.
*/
