-- Return the count of all sushi images in galleries that have any.
SELECT galleries.name AS gallery_name, COUNT(images.id) AS sushi_images
FROM images
JOIN galleries
  ON images.gallery_id = galleries.id
AND images.name ILIKE '%sushi%'
GROUP BY galleries.id
ORDER by galleries.id ASC
