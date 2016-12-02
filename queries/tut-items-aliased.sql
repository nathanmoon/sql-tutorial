/*
Notice that the query being executed is displayed before the output.  
The above queries all said 'SELECT *' where '*' indicates all columns
should be returned.  You can also specify which columns you would like
returned, and you can name them using 'AS'.
*/

SELECT name AS item_name, description, msrp FROM item
;

/*
Notice 'item_name' in the output.  The actual column is just 'name'.
*/
