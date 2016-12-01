/*
When you JOIN two tables together, you are creating... you guessed it... a new table.
Every JOIN just be told how to combine the tables, in the ON clause.  If we select
from our inventory table, which has foreign keys to the item and location tables, we
will see the ids of the items and locations.  Since that's not helpful, we would like
to show some information about the item and location instead.  What we want is a 
table that has combined information from all three tables.
*/
SELECT *
FROM inventory inv
JOIN item it ON inv.item_id = it.id
JOIN location l ON inv.location_id = l.id
;

/*
This will JOIN each row in the inventory table with the row in the item table that 
matches the item id, and with the row in the location table that matches the location
id.  The result is a table that includes all the columns from all three tables, and 
one row for each row in the inventory table.

Notice that there are multiple columns named 'id', one for each joined table.  The database
is not trying to do any thinking for you, it just mashes the tables together just like you
told it to.  The next example shows how to wrangle this raw table into something more useful.
*/


