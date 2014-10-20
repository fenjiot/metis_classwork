-- Control which rows are retrieved
-- Question
-- How can you produce a list of facilities that charge a fee to members?
SELECT facilities.name
FROM cd.facilities AS facilities
WHERE facilities.membercost > 0;
