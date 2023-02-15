-- 1. Finding 5 oldest users
Select 
	username, 
    created_at 
FROM users 
ORDER BY created_at
LIMIT 5;

-- 2. What day of the week do most users register on?
Select
	DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 1;

-- 3. Find the users who have never posted a photo
SELECT 
	username, 
    image_url
FROM users
LEFT JOIN photos
	ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- 4. Who has to most likes on a single photo
SELECT
	username,
	photos.id, 
	likes.user_id,
	COUNT(*) AS total
FROM photos 
JOIN likes
	ON photos.id = likes.photo_id
JOIN users
	ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
limit 1;

-- 5. How many times does the average user post?

SELECT (
(SELECT COUNT(*) FROM photos) /
(SELECT COUNT(*) FROM users)
)
AS avg
;

-- 6. What are the top 5 most commonly used hashtags
SELECT 
	tag_name,
    COUNT(*) AS total
FROM tags
JOIN photo_tags 
ON tag_id = tags.id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

-- 7. Find users who have liked every single photo on the site
SELECT	
	username,
    user_id,
    COUNT(*) AS total
FROM users
JOIN likes
	ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING total = (SELECT COUNT(*) FROM photos);





	




