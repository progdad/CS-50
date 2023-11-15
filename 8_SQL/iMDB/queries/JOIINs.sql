
/* This demonstrates that the columns of one table will be combined with those of another, when using JOIN: */

-- List all the ratings on "The Office show". In the output, as mentioned, the columns of both tables are merged.
SELECT * FROM shows 
JOIN ratings ON shows.id = ratings.show_id 
WHERE title = "The Office";
/*
id          title       year        episodes    show_id     rating      votes     
----------  ----------  ----------  ----------  ----------  ----------  ----------
112108      The Office  1995        6           112108      7.5         45        
290978      The Office  2001        14          290978      8.5         112944    
386676      The Office  2005        188         386676      9.0         585206  
...
*/


/**********/

/* Selecting specific columns from different table, while joining them: */

-- Retrieve the titles of shows along with their associated genres (each show may have multiple genres, limited to the first ten rows).SELECT shows.title, genres.genre 
FROM shows 
INNER JOIN genres ON shows.id = genres.show_id LIMIT 10;
/*
title        genre     
-----------  ----------
Zeg 'ns Aaa  Comedy    
Catweazle    Adventure 
Catweazle    Comedy    
Catweazle    Family    
UFO          Action    
UFO          Sci-Fi    
Ace of Wand  Family    
Ace of Wand  Fantasy   
The Adventu  Comedy    
The Adventu  Sci-Fi
*/


/**********/

/* Rewriting Queries with JOINs */

/* 1 */
-- List first 5 shows that are of the "Comedy" genre
SELECT title FROM shows WHERE id IN (
    SELECT show_id FROM genres WHERE genre = 'Comedy'
) LIMIT 5; 
/* A better way to do it: */
SELECT shows.title FROM shows 
JOIN genres ON shows.id = genres.show_id 
WHERE genres.genre = 'Comedy' LIMIT 5;
/*
title      
-----------
Zeg 'ns Aaa
Catweazle  
The Adventu
Albert and 
Archie's Fu
*/

/* 2 */
-- List all the shows where Steve Carell plays:
SELECT title FROM shows WHERE id IN (
    SELECT show_id FROM stars WHERE person_id = (
        SELECT id FROM people where name = "Steve Carell"
    )
); 
/* There's a better way to do it as well: */
SELECT shows.title
FROM shows
JOIN stars ON shows.id = stars.show_id
JOIN people ON stars.person_id = people.id
WHERE people.name = 'Steve Carell';
/* 
title               
--------------------
The Dana Carvey Show
Over the Top        
Watching Ellie      
Come to Papa        
The Office          
Entertainers with Byron Allen
...
*/

/*
With the last SQL command in mind, I'd like to explain what's happening underneath the hood, when the command is being executed:
    Parsing:
        The database parses the SQL command to understand its structure and components.

    Execution Order:
        The database engine executes the query in a specific order. In this case, it will first perform the JOIN operations before applying the WHERE clause.

    Join Operations:
        The first JOIN operation combines the shows table with the stars table using the condition shows.id = stars.show_id.
        The second JOIN operation further combines the result with the people table using the condition stars.person_id = people.id.

    Filtering:
        After the JOIN operations, the WHERE clause filters the results. Only rows where the value in the people.name column is 'Steve Carell' will be included.

    Result Set:
        The final result set includes only the title column from the shows table for rows that satisfy all the conditions.
*/



/**********/

/* JOIN vs LEFT JOIN */

/* Using JOIN: */
SELECT shows.title, ratings.rating
FROM shows
JOIN ratings ON shows.id = ratings.show_id
LIMIT 15;
/*  This query retrieves rows where there is a match in both the `shows` 
    and the `ratings` table based on the condition shows.id = ratings.show_id. 
    The result includes only the rows where there is a corresponding match in both tables. */

/* Using LEFT JOIN: */
SELECT shows.title, ratings.rating
FROM shows
LEFT JOIN ratings ON shows.id = ratings.show_id
LIMIT 15;

/*  This query retrieves all rows from the `shows` table and includes matching rows from the `ratings` table. 
    If there is no match in the `ratings` table for a specific `shows.id`, the result will still include the row 
    from the `shows` table, and the columns from the `ratings` table will be filled with `NULL` values. 
    This is the key difference from the `JOIN` query. */
