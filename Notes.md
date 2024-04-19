# LEFT JOIN

A LEFT JOIN is a type of SQL join that combines rows from two tables based on a related column between them.

Here's how it works:

The LEFT JOIN keyword returns all records from the left table (table1), and the matched records from the right table (table2).
The result is NULL from the right side if there is no match.
In simpler terms, a LEFT JOIN returns all the rows from the left table, and if the join condition is not met, NULL values are returned for the columns from the right table.

For example, if you have two tables, table1 and table2, and you perform a LEFT JOIN like this:

```
    SELECT *
    FROM table1
    LEFT JOIN table2 ON table1.column_name = table2.column_name;

```
We will get all the rows from table1, and if there is a matching row in table2, it will be included in the result. If there is no matching row in table2, NULL values will be returned for the columns from table2.
---