-- Return the gallery id with the most images
SELECT galleries.id, COUNT(images.id) as image_count
FROM galleries
JOIN images
ON galleries.id = images.gallery_id
GROUP BY galleries.id
ORDER BY image_count DESC
LIMIT 1;
