-- Return the name of the gallery with the most images.
SELECT galleries.name
FROM images
JOIN galleries
  ON images.gallery_id = galleries.id
GROUP BY galleries.id
ORDER BY COUNT(images.id) DESC
LIMIT 1;
