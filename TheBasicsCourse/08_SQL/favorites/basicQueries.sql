SELECT DISTINCT(language) FROM favorites;
/*
C
Python
Scratch
*/

SELECT language FROM favorites;
/*
C
Python
Python
Python
Python
Scratch
C
Python
...
*/

SELECT COUNT(*) FROM favorites;
SELECT COUNT(DISTINCT(problem)) AS n FROM favorites;
SELECT COUNT(*) FROM favorites WHERE language = 'C';
SELECT COUNT(*) FROM  favorites WHERE language = 'C' AND problem = 'Mario';
/*
431
19
98
3
*/

SELECT language, COUNT(*) FROM favorites GROUP BY language;
/*
C|98
Python|270
Scratch|62
*/

SELECT language, COUNT(*) FROM favorites GROUP BY language ORDER BY COUNT(*);
/*
Scratch|62
C|98
Python|270
*/

SELECT language, COUNT(*) FROM favorites GROUP BY language ORDER BY COUNT(*) DESC;
/*
Python|270
C|98
Scratch|62
*/

/*
INSERT INTO favorites (language, problem) VALUES('SQL', 'Fiftyville');
DELETE FROM favorites WHERE language = "SQL" AND problem = "Fiftyville";
*/

/*
UPDATE favorites SET language = 'C' WHERE language = 'C';

UPDATE favorites SET language = 'C++';
    It would set 'C++' to all the fields in the 'favorites' column.
*/

/*
DELETE FROM favorites WHERE problem = 'Tideman';
*/
