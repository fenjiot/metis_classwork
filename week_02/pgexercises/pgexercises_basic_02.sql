-- Retrieve specific columns from a table
-- Question
-- You want to print out a list of all of the facilities and their cost to
-- members. How would you retrieve a list of only facility names and costs?
SELECT cd.facilities.name, cd.facilities.membercost
FROM cd.facilities;
