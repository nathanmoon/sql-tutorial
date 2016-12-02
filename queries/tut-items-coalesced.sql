/*
There are many functions that can be used in the SELECT clause
to transform the values for display.
*/

SELECT name , COALESCE(description, '<NONE PROVIDED>'), msrp, TRUNC(msrp / 2, 2) AS half_price FROM item
;

/*
COALESCE will take any number of parameters and return the first non-null value.
Basic math, as well as aggregates or other functions can be used.  Aggregates will
come up later on.
*/

