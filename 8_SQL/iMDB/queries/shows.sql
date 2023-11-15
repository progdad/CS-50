/*
sqlite> .schema

CREATE TABLE genres (
    show_id INTEGER NOT NULL,
    genre TEXT NOT NULL,
    FOREIGN KEY(show_id) REFERENCES shows(id)
);
CREATE TABLE people (
    id INTEGER,
    name TEXT NOT NULL,
    birth NUMERIC,
    PRIMARY KEY(id)
);
CREATE TABLE ratings (
    show_id INTEGER NOT NULL,
    rating REAL NOT NULL,
    votes INTEGER NOT NULL,
    FOREIGN KEY(show_id) REFERENCES shows(id)
);
CREATE TABLE shows (
    id INTEGER,
    title TEXT NOT NULL,
    year NUMERIC,
    episodes INTEGER,
    PRIMARY KEY(id)
);
CREATE TABLE stars (
    show_id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    FOREIGN KEY(show_id) REFERENCES shows(id),
    FOREIGN KEY(person_id) REFERENCES people(id)
);
CREATE TABLE writers (
    show_id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    FOREIGN KEY(show_id) REFERENCES shows(id),
    FOREIGN KEY(person_id) REFERENCES people(id)
);
*/


/**********/

/* 
    Combining tables to get a desired result is a vital skill when writing SQL queries:
*/

-- Retrieve all the information about the first comedy in the database.

-- This approach is not very practical, because we use more queries than necessary: (
SELECT * FROM genres WHERE genre = 'Comedy' LIMIT 1;
/*
show_id     genre     
----------  ----------
62614       Comedy
*/
SELECT * FROM shows WHERE id = 62614; /* wrong */
/*
id          title        year        episodes  
----------  -----------  ----------  ----------
62614       Zeg 'ns Aaa  1981        227    
*/
-- )

-- We can get rid of redundancy(gives the same output):
SELECT shows.* FROM shows 
JOIN ratings ON shows.id = ratings.show_id 
LIMIT 1;

/**********/


/**********/

/* 
    Indexing the Database 
*/

-- Retrieves all information from the "shows" table where the title is 'The Office'.

-- Note: The comment shows the runtime before indexing for comparison.
SELECT * FROM shows WHERE title = 'The Office';
/*
id          title       year        episodes  
----------  ----------  ----------  ----------
112108      The Office  1995        6         
290978      The Office  2001        14        
386676      The Office  2005        188       
1791001     The Office  2010        30        
2186395     The Office  2012        8         
8305218     The Office  2019        28        
20877972    The Office  2022        20        
Run Time(seconds): real 0.022 user 0.022550 sys 0.000000
*/

-- Creates an index on the "title" column of the "shows" table.
CREATE INDEX title_index ON shows (title);
/* Run Time(seconds): real 0.220 user 0.165059 sys 0.039081 */

-- Note: The comment shows the improved runtime after indexing.
SELECT * FROM shows WHERE title = 'The Office';
/*
id          title       year        episodes  
----------  ----------  ----------  ----------
112108      The Office  1995        6         
290978      The Office  2001        14        
386676      The Office  2005        188       
1791001     The Office  2010        30        
2186395     The Office  2012        8         
8305218     The Office  2019        28        
20877972    The Office  2022        20        
Run Time(seconds): real 0.001 user 0.000561 sys 0.000000 <- NOTE THE SPEED
*/

/**********/


/**********/

/* Some interesting queries: */

-- Concatenates the title and year columns and aliases the result as 'show_info'.
-- `||` is a concatenation operator in SQL:
SELECT title || ' (' year ')' AS show_info FROM shows LIMIT 5;
/*
show_info         
------------------
Zeg 'ns Aaa (1981)
Catweazle (1970)  
UFO (1970)        
Ace of Wands (1970
The Adventures of 
*/

-- List last 10 last shows in the database whose names start with "The".
-- Note: LIKE by the default queries in the case-insensitive mode(but the behavior may vary on different DBMS).
SELECT title FROM shows 
WHERE title LIKE 'The%' 
ORDER BY title 
DESC LIMIT 10;
/*
theBitCast.tv
the johnson f
Theyab Al-Lai
They're Here 
They live in
...
*/

-- List first 10 shows in the database whose rating is less than 6 points
-- Something that looks more like actual basic programming :)
SELECT shows.title, ratings.rating,
    CASE 
        WHEN ratings.rating >= 8 THEN 'Excellent'
        WHEN ratings.rating >= 6 THEN 'Good'
        ELSE 'Needs Improvement'
    END AS rating_category
FROM shows 
JOIN ratings ON shows.id = ratings.show_id
WHERE rating_category = 'Needs Improvement' 
LIMIT 10;
/*
title       rating      rating_category  
----------  ----------  -----------------
Hot Dog     5.9         Needs Improvement
Regnbågsla  3.0         Needs Improvement
San Franci  2.5         Needs Improvement
Broster Br  3.4         Needs Improvement
Kraft Musi  5.8         Needs Improvement
The Pebble  5.5         Needs Improvement
The Barkle  5.8         Needs Improvement
Barnen i H  5.8         Needs Improvement
The Brady   5.6         Needs Improvement
The Corner  4.7         Needs Improvement
*/
