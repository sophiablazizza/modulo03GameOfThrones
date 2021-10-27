/* Média de duração em minutos dos episódios por temporada */

SELECT season, AVG (duration) as media_duracao_por_episodio 
FROM got_episodes_v4 
GROUP BY season ORDER BY season ASC;