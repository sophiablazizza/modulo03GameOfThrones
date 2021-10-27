/*Personagens que apareceram em apenas 1 episódio
SELECT `characters_v4`.`Episodes_appeared` AS `Episodes_appeared`, count(*) AS `count`
FROM `characters_v4`
GROUP BY `characters_v4`.`Episodes_appeared`
ORDER BY `characters_v4`.`Episodes_appeared` ASC