Задание 1
skypro=# SELECT * FROM employee;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Veronika   | Mironova  | girl   |  21
  2 | Lidia      | Socova    | girl   |  63
  4 | Sergey     | Rozhnov   | boy    |  22
  5 | Nikita     | Ivantsov  | boy    |  25
  6 | Artem      | Seregin   | boy    |  12
(5 ёЄЁюъ)


skypro=# SELECT first_name AS Имя,
                skypro-# last_name AS Фамилия
skypro-# FROM employee;
Имя    | Фамилия
----------+----------
 Veronika | Mironova
 Lidia    | Socova
 Sergey   | Rozhnov
 Nikita   | Ivantsov
 Artem    | Seregin
(5 ёЄЁюъ)


skypro=# SELECT * FROM employee;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Veronika   | Mironova  | girl   |  21
  2 | Lidia      | Socova    | girl   |  63
  4 | Sergey     | Rozhnov   | boy    |  22
  5 | Nikita     | Ivantsov  | boy    |  25
  6 | Artem      | Seregin   | boy    |  12
(5 ёЄЁюъ)


skypro=# SELECT * FROM employee
                              skypro-# WHERE age < 30 OR age > 50;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Veronika   | Mironova  | girl   |  21
  2 | Lidia      | Socova    | girl   |  63
  4 | Sergey     | Rozhnov   | boy    |  22
  5 | Nikita     | Ivantsov  | boy    |  25
  6 | Artem      | Seregin   | boy    |  12
(5 ёЄЁюъ)


skypro=# WHERE age < 15 OR age > 30;
ОШИБКА:  ошибка синтаксиса (примерное положение: "WHERE")
СТРОКА 1: WHERE age < 15 OR age > 30;
^
skypro=# SELECT * FROM employee
                           skypro-# WHERE age < 15 OR age > 30;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  2 | Lidia      | Socova    | girl   |  63
  6 | Artem      | Seregin   | boy    |  12
(2 ёЄЁюъш)


skypro=# SELECT * FROM employee
                              skypro-# WHERE age BETWEEN 30 AND 50;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
(0 ёЄЁюъ)

    skypro=# SELECT * FROM employee
                                  skypro-# WHERE age BETWEEN 20 AND 60;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Veronika   | Mironova  | girl   |  21
  4 | Sergey     | Rozhnov   | boy    |  22
  5 | Nikita     | Ivantsov  | boy    |  25
(3 ёЄЁюъш)

    skypro=# SELECT * FROM employee
                                  skypro-# ORDER BY last_name DESC;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  2 | Lidia      | Socova    | girl   |  63
  6 | Artem      | Seregin   | boy    |  12
  4 | Sergey     | Rozhnov   | boy    |  22
  1 | Veronika   | Mironova  | girl   |  21
  5 | Nikita     | Ivantsov  | boy    |  25
(5 ёЄЁюъ)
    skypro=# SELECT * FROM employee
                                  skypro-# WHERE first_name
                    skypro-# LIKE '%____%';
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Veronika   | Mironova  | girl   |  21
  2 | Lidia      | Socova    | girl   |  63
  4 | Sergey     | Rozhnov   | boy    |  22
  5 | Nikita     | Ivantsov  | boy    |  25
  6 | Artem      | Seregin   | boy    |  12
(5 ёЄЁюъ)

    skypro=# UPDATE employee SET first_name = 'Nikita' WHERE id=4;
UPDATE 1
    skypro=# SELECT * FROM employee;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  1 | Veronika   | Mironova  | girl   |  21
  2 | Lidia      | Socova    | girl   |  63
  6 | Artem      | Seregin   | boy    |  12
  5 | Nikita     | Ivantsov  | boy    |  25
  4 | Nikita     | Rozhnov   | boy    |  22
(5 ёЄЁюъ)


skypro=# UPDATE employee SET first_name = 'Lidia' WHERE id=1;
UPDATE 1
    skypro=# SELECT * FROM employee;
id | first_name | last_name | gender | age
----+------------+-----------+--------+-----
  2 | Lidia      | Socova    | girl   |  63
  6 | Artem      | Seregin   | boy    |  12
  5 | Nikita     | Ivantsov  | boy    |  25
  4 | Nikita     | Rozhnov   | boy    |  22
  1 | Lidia      | Mironova  | girl   |  21
(5 ёЄЁюъ)

    skypro=# SELECT first_name AS Имя,
                    skypro-# MAX(age) AS Суммарный_возраст
skypro-# FROM employee
                    skypro-# GROUP BY Имя
                    skypro-# HAVING COUNT(first_name)>1
                    skypro-# ORDER BY first_name DESC;
Имя   | Суммарный_возраст
--------+-------------------
 Nikita |                25
 Lidia  |                63
(2 ёЄЁюъш)