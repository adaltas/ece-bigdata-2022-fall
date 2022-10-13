SELECT avg(runtimeminutes) AS avg_duration
FROM ece_2022_spring_app_1.imdb_title_basics
WHERE primarytitle RLIKE '(^| )[Ww]orld( |$)';
