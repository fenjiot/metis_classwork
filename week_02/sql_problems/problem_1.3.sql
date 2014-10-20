-- Return all images with the word 'space' in their name.
SELECT * FROM images
WHERE name LIKE '%space%';

-- Below is a not case sensitive version
-- SELECT * FROM images
-- WHERE name ILIKE '%space%';
