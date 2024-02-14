-- 1 Страны, названия которых начинаются на букву “К” (5 записей);
SELECT * FROM country WHERE name LIKE "k%"; 
-- 2 Страны, получившие независимость в 19-м веке (27 записей)
SELECT name indepYear from country where indepYear between 1900 and 1999;
-- 3 Страны ближнего востока (Middle East) (18 записей)
SELECT Name, Region FROM `country` WHERE Region LIKE "Middle East%"; 
-- 4 Европейские страны, которые образовались в 19 веке (7 записей)
SELECT Name, Region, indepYear FROM `country` WHERE Region LIKE "%Europe" and indepYear between 1900 and 1999; 
-- 5 Страны, в названиях которых содержат слог “ра”  (9 записей)
SELECT * FROM country WHERE Name LIKE "%ra%"; 
-- 6 Страны, названия которых начинаются на гласную букву  (A, E, I, O, U, Y) (42 записи);
SELECT * FROM `country` WHERE name LIKE "A%" or name LIKE "A%" or name LIKE "E%" or name LIKE "I%" or name LIKE "U%" or name LIKE "Y%"; 
SELECT name from country where name RLIKE '^[A,E,I,O,U,Y]'; 
-- 7 Страны, названия которых начинаются и заканчиваются на одну и ту же букву. (20 записей)
SELECT name FROM `country` where LEFT(Name, 1) = RIGHT(Name,1); 
-- 8 Государства, формой правления которых является различной формы монархия (43 записи)
SELECT name, GovernmentForm FROM `country` where GovernmentForm like "%Monarchy%";
-- 9 Страны, население которых меньше 1 млн. (85 записей)
SELECT name, Population from country where Population < 1000000;
--10 Самое древнее государство (China)
SELECT name, IndepYear from country ORDER by IndepYear limit 1; 
--11 Страны, год обретения независимости которыми не определен (47 записей)
-- No answer
--12 Страны, год обретения независимости которыми или столица которых и  не определены (47 записей)

--13 Самое маленькое по площади государство (Holy See (Vatican City State))
SELECT Name, SurfaceArea FROM `country` ORDER BY SurfaceArea limit 1; 
--14 Первую десятку наиболее населенных государств мира
--15 Первую десятку наиболее населенных государств Европы
--16 Cуммарное число жителей стран Европы и суммарную площадь её государств (730 074 600, 23 049 133.9)
--17  Число стран, расположенных не в Антарктике (234 записи)
--18 Число стран, где главой правительства является Елизавета II (Elisabeth II), суммарное число жителей этих стран.  (35 стран, 122 872 550 человек)
--19  Число стран, наибольшее и наименьшее число жителей стран Полинезии (Polynesia) (10 стран, 235 000 человек, 50 человек)
--20 Первые 5% списка стран мира наименьшей площади

