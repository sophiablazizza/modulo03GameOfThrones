/* Número de episódios dirigido por cada diretor */

SELECT count(director), director 
FROM got_episodes_v4 
GROUP BY director 
ORDER BY count(director) DESC;