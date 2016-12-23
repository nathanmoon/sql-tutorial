/*
Now that we know how many distinct locations have given low reviews to a given item,
we can further filter to only return those with more than one location.
*/
SELECT item.id, item.name AS item_name, item.description, item.msrp, AVG(rev.rating), COUNT(DISTINCT loc.id)
FROM item
JOIN review rev ON rev.item_id = item.id
JOIN location loc ON rev.location_id = loc.id
WHERE rev.rating < 5
GROUP BY item.id
HAVING COUNT(DISTINCT loc.id) > 1
;
/*
So the order of operations is:

1. FROM and JOINS create a "view" with all the table data joined together

2. WHERE is applied to filter which rows are in the view

3. GROUP BY is applied, and this also involves applying the SELECT to filter and 
   aggregate the data in the columns

4. HAVING is then able to further filter based off of the aggregate calculations

5. ORDER BY is applied next.  Note that order by is not limited to columns that are
   being returned.  It can use any column from the original view, but can't order
   by columns that would need to be aggregated to be able to appear in the SELECT
   clause.  So, for example, we could not order by rev.text because we are already
   aggregating rev rows.  We could order by item.available_since, or an aggregate on
   rev, like MAX(rev.rating).

6. LIMIT is applied to limit which rows from the final result are returned
*/


