SELECT avg(averagerating) AS avg_rating
FROM (
  SELECT
    tconst
  FROM ece_2022_spring_app_1.imdb_title_basics
  WHERE array_contains(genres, 'Comedy')
) titles
JOIN ece_2022_spring_app_1.imdb_title_ratings ratings
ON titles.tconst = ratings.tconst;
