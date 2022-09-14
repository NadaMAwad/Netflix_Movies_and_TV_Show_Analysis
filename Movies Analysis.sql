-- Analysis Steps on NetfixShow DataBase -- 

-- 1. Select Movies from 2016 -  2021

	SELECT * 
	FROM Show
	WHERE type ='Movie'
	AND
	release_year > '2015' AND release_year <'2022'
	ORDER BY release_year

-- Put Movies in View 
	CREATE VIEW Movies1622 AS
	SELECT * 
	FROM Show
	WHERE type ='Movie'
	AND
	release_year > '2015' AND release_year <'2022'

--  Count Number of Movies per Country

	SELECT COUNT(M.show_id) "Count", country
	FROM Movies1622 M , ShowCountry SC ,Country C
	WHERE M.show_id = SC.show_id AND SC.Country#1#C_ID= C.C_ID
	GROUP BY country
	ORDER BY COUNT(M.show_id) DESC

-- Count Number of Movies per year 
	SELECT COUNT(M.show_id) "Count", country , release_year
	FROM Movies1622 M , ShowCountry SC ,Country C
	WHERE M.show_id = SC.show_id AND SC.Country#1#C_ID= C.C_ID
	GROUP BY  country, release_year
	ORDER BY  country 

-- Select specifec countries  // United States, India, China, Spain, Egypt
	SELECT COUNT(M.show_id) "Count", country , release_year
	FROM Movies1622 M , ShowCountry SC ,Country C
	WHERE M.show_id = SC.show_id AND SC.Country#1#C_ID= C.C_ID
	AND country in ('United States', 'India', 'South Korea', 'Spain', 'Egypt')
	GROUP BY rollup( country, release_year)

-- which type of movies in 2019 ,2020,2021 

	SELECT COUNT( DISTINCT M.show_id) "Count", country , release_year ,  G.Genre
	FROM Movies1622 M, ShowCountry SC , Country C ,Genre G
	WHERE M.show_id = SC.show_id AND SC.Country#1#C_ID= C.C_ID AND M.show_id=G.show_id
	AND release_year > 2018
	AND country in ('United States', 'India', 'South Korea', 'Spain', 'Egypt')
	GROUP BY rollup( country, release_year, G.Genre)


-- chose best series 