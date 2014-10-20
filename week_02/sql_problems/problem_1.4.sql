-- Return all images that don't have any likes or don't have a description.
SELECT * FROM images
WHERE likes = 0 OR description IS NULL;
