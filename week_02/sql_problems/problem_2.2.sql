-- Return the oldest image for each gallery
SELECT galleries.id, MIN(images.id)
FROM images 
JOIN galleries 
  ON images.gallery_id = galleries.id
GROUP BY galleries.id
ORDER BY galleries.id ASC;
