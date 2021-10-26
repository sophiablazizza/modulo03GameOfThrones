/*Média de votos e rating por temporada*/

SELECT season, AVG(votes) as media_votos, AVG(rating) as media_rating 
FROM got_episodes_v4 
GROUP BY season 
ORDER BY season;