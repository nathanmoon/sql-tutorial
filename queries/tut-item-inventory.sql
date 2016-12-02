/*
Here we want to see how many Lassos of Truth are at each location.
*/
SELECT l.name, inv.quantity, inv.price
FROM location l
JOIN inventory inv ON inv.location_id = l.id
JOIN item i ON inv.item_id = i.id
WHERE i.name = 'Lasso of Truth';
/*
Notice that Central City Main does not appear.  This is because the join requires
that there be a matching inventory record to join to the location. JOIN is actually
short for INNER JOIN.  Inner joins require that all columns involved in the join (the
ON conditions) be non-null.

OUTER JOINs will be introduced later, which allow joins where one side of the join
will allow nulls.
*/
