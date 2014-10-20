-- Return gallery names that have an image named like "Grumpy"
SELECT galleries.name 
FROM galleries INNER JOIN images ON (galleries.id = images.gallery_id)
WHERE images.name LIKE 'Grumpy%';
