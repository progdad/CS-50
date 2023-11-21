/*

Some intermediate-level SQL queries for practicing:

1. **Top Rated Genres:**
   - List the top-rated genres based on the average ratings of the shows in each genre. Include the genre and the average rating. Order the results by average rating in descending order.

2. **Prolific Writers:**
   - Find the top 5 writers who have contributed to the highest number of shows. Include the writer's name and the count of shows they have written.

3. **Popular Shows with Many Episodes:**
   - Identify shows that have a high average rating with the most number of episodes. Include the show title, average rating, and episode count. Order the results by average rating in descending order.

4. **Famous Stars:**
   - Identify the top 10 stars who have appeared in the highest number of shows. Include the star's name and the count of shows they have starred in. Order the results by the show count in descending order.

5. **Show Diversity:**
   - Find the top 10 shows with the highest diversity in terms of genres. Calculate the diversity as the number of unique genres a show belongs to. Include the show title and the count of unique genres for each show. Order the results by the diversity count in descending order.

*/


-- 1.
SELECT genres.genre, ROUND(AVG(ratings.rating), 2) AS avg_rating
FROM genres 
JOIN shows ON genres.show_id = shows.id
JOIN ratings ON ratings.show_id = shows.id
GROUP BY genres.genre
ORDER BY avg_rating DESC;
/*
genre       avg_rating
----------  ----------
History     7.42      
Adult       7.41      
Western     7.4       
Documentar  7.37      
Biography   7.36      
War         7.23      
Sport       7.14 
...
*/


-- 2. 
SELECT people.name, COUNT(shows.id) AS shows_count
FROM people 
JOIN writers ON people.id = writers.person_id
JOIN shows ON shows.id = writers.show_id
GROUP BY people.id
ORDER BY shows_count DESC 
LIMIT 5;
/*
name         shows_count
-----------  -----------
Ekta Kapoor  41         
Mark Cronin  40         
Hajime Yata  38         
Shotaro Ish  37         
Chad Schnac  36
*/


-- 3.
SELECT shows.title, AVG(ratings.rating) as avg_rating, shows.episodes
FROM shows 
JOIN ratings on shows.id = ratings.show_id
WHERE shows.episodes IS NOT NULL
GROUP BY shows.id
ORDER BY ratings.rating DESC, shows.episodes DESC;
/*
title          avg_rating  episodes  
-------------  ----------  ----------
EWTN Bookmark  10.0        208       
Live from Det  10.0        140       
Dos vidas      10.0        120       
Batalha dos D  10.0        97        
The Simonetta  10.0        91        
Sundays with   10.0        85
...
*/


-- 4.
SELECT people.name, COUNT(stars.show_id) as show_count
FROM people
JOIN stars ON people.id = stars.person_id
JOIN shows ON shows.id = stars.show_id
GROUP BY people.name
ORDER BY show_count DESC
LIMIT 10;
/*
name         show_count
-----------  ----------
Monica Rial  178       
Frank Welke  178       
Cherie Laur  136       
Luci Christ  133       
Rob Paulsen  111       
Brittney Ka  110       
Tom Kenny    109       
Kana Hanaza  107       
Grey Griffi  102       
Takahiro Sa  100 
*/


-- 5.
SELECT shows.title, COUNT(DISTINCT genres.genre) AS genres_count
FROM shows 
JOIN genres ON shows.id = genres.show_id
GROUP BY shows.id 
ORDER BY genres_count DESC
LIMIT 10;
/*
title             genres_count
----------------  ------------
Turning Mecard R  3           
Light Chaser Res  3           
Hello, My Noisy   3           
The Magical Revo  3           
Deadly Response   3           
Switzerland's Ne  3           
23:23             3 
...
*/