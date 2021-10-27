/*Personagens que mais apareceram em toda a série com um limite de 10 personagens*/

SELECT Character, Episodes_appeared
FROM characters_v4
ORDER BY Episodes_appeared DESC LIMIT 10