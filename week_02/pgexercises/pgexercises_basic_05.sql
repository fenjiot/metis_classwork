-- Basic string searches
-- Question
-- How can you produce a list of all facilities with the word 'Tennis' in their
-- name?
SELECT facilities.name
FROM cd.facilities AS facilities
WHERE facilities.name ILIKE '%Tennis%';
