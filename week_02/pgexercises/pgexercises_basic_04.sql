-- Control which rows are retrieved - part 2
-- Question
-- How can you produce a list of facilities 
-- that charge a fee to members, and 
-- that fee is less than 1/50th of the monthly maintenance cost? 
-- Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.
SELECT facilities.facid, facilities.name, facilities.membercost, facilities.monthlymaintenance
FROM cd.facilities AS facilities
WHERE facilities.membercost != 0 AND facilities.membercost < (facilities.monthlymaintenance / 50);
