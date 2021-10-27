/* Os 10 episódios com melhor índice de avaliação */

SELECT title, episode, season, Rating 
FROM got_episodes_v4
ORDER BY Rating DESC LIMIT 10;