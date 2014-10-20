-- Return all animal images with more than 3 likes.
SELECT * FROM images
WHERE gallery_id IN (1, 3) AND likes > 3;
