/* Lesson 1: SELECT * */
SELECT * 
FROM family_members;

/* Lesson 2: SELECT specific columns */
SELECT name, species 
FROM family_members;

/* Lesson 3: WHERE ... Equals */
SELECT * 
FROM family_members 
WHERE species = 'dog';

/* Lesson 4: WHERE ... Greater than */
SELECT * 
FROM family_members 
WHERE num_books_read > 190;

/* Lesson 5: WHERE ... Greater than or equal */
SELECT * 
FROM family_members 
WHERE num_books_read >= 180;

/* Lesson 6: AND */
SELECT * 
FROM friends_of_pickles 
WHERE species = 'dog' AND height_cm < 45;

/* Lesson 7: OR */
SELECT * 
FROM friends_of_pickles 
WHERE species = 'dog' OR height_cm < 45;

/* Lesson 8: IN */
SELECT * 
FROM friends_of_pickles 
WHERE species NOT IN ('cat', 'dog');

/* Lesson 9: DISTINCT */
SELECT DISTINCT species 
FROM friends_of_pickles 
WHERE height_cm > 50;

/* Lesson 10: ORDER BY */
SELECT * 
FROM friends_of_pickles 
ORDER BY height_cm DESC;

/* Lesson 11: LIMIT # of returned rows */
SELECT * 
FROM friends_of_pickles 
ORDER BY height_cm DESC 
LIMIT 1;

/* Lesson 12: COUNT(*) */
SELECT COUNT(*) 
FROM friends_of_pickles;

/* Lesson 13: COUNT(*) ... WHERE */
SELECT COUNT(*) 
FROM friends_of_pickles 
WHERE species = 'dog';

/* Lesson 14: SUM */
SELECT SUM(num_books_read) 
FROM family_members;

/* Lesson 15: AVG */
SELECT AVG(num_books_read) 
FROM family_members;

/* Lesson 16: MAX and MIN */
SELECT MAX(num_books_read) 
FROM family_members;

/* Lesson 17: GROUP BY */
SELECT MAX(height_cm), species 
FROM friends_of_pickles 
GROUP BY species;

/* Lesson 18: Nested queries */
SELECT * 
FROM family_members 
WHERE num_books_read = (SELECT MAX(num_books_read) FROM family_members);

/* Lesson 19: NULL */
SELECT * 
FROM family_members 
WHERE favorite_book IS NOT NULL;

/* Lesson 20: Date */
SELECT * 
FROM celebs_born 
WHERE birthdate > '1980-09-01';

/* Lesson 21: Inner joins */
SELECT character.name, character_actor.actor_name
FROM character
INNER JOIN character_actor
ON character.id = character_actor.character_id;

/* Lesson 22: Multiple joins */
SELECT character.name, actor.name
FROM character
INNER JOIN character_actor ON character.id = character_actor.character_id
INNER JOIN actor ON character_actor.actor_id = actor.id;

/* Lesson 23: Joins with WHERE */
SELECT character.name, tv_show.name
FROM character
INNER JOIN character_tv_show ON character.id = character_tv_show.character_id
INNER JOIN tv_show ON character_tv_show.tv_show_id = tv_show.id
WHERE character.name != 'Willow Rosenberg' AND tv_show.name != 'How I Met Your Mother';

/* Lesson 24: Left joins */
SELECT character.name, actor.name
FROM character
LEFT JOIN character_actor ON character.id = character_actor.character_id
LEFT JOIN actor ON character_actor.actor_id = actor.id;

/*Saya Msquare*/
select character.name, actor.name
from character
left join character_actor on character_actor.character_id = character.id
left join actor on actor.id = character_actor.actor_id

/* Lesson 25: Table alias */
SELECT c.name, a.name
FROM character AS c
LEFT JOIN character_actor AS ca ON c.id = ca.character_id
LEFT JOIN actor AS a ON ca.actor_id = a.id;

/* Lesson 26: Column alias */
SELECT c.name AS character, a.name AS actor
FROM character AS c
LEFT JOIN character_actor AS ca ON c.id = ca.character_id
LEFT JOIN actor AS a ON ca.actor_id = a.id;

/*Saya Msquare*/
select c.name as character, a.name as actor
from character c
left join character_actor ca on ca.character_id = c.id
left join actor a on a.id = ca.actor_id

/* Lesson 27: Self joins */
SELECT e.name AS employee_name, b.name AS boss_name
FROM employees AS e
INNER JOIN employees AS b ON e.boss_id = b.id;

/*Saya Msquare*/
select e1.name as employee_name, e2.name as boss_name from employees e1
inner join employees e2 on e2.id = e1.boss_id

/* Lesson 28: LIKE */
SELECT *
FROM robots
WHERE name LIKE '%Robot%20__'

/*Saya Msquare*/
select * from robots where name like '%Robot 20%'

/* Lesson 29: CASE */
SELECT *,
CASE 
    WHEN species = 'human' THEN 'talk'
    WHEN species = 'dog' THEN 'bark'
    WHEN species = 'cat' THEN 'meow'
    ELSE 'unknown'
END AS sound
FROM friends_of_pickles;

/* Lesson 30: SUBSTR */
SELECT *
FROM robots
WHERE SUBSTR(location, -2) = 'NY';

/* Lesson 31: COALESCE */
SELECT name, COALESCE(tank, gun, sword) AS weapon
FROM fighters;

/*Saya Msquare*/
SELECT name, COALESCE(tank, gun, sword) AS weapon FROM fighters;