-- Matching against multiple possible values
-- Question
-- How can you retrieve the details of facilities with ID 1 and 5? Try to do it
-- without using the OR operator.
SELECT *
FROM cd.facilities AS facilities
WHERE facilities.facid IN (1,5);
