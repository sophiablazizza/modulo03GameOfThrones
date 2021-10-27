/* Os 10 episódios com pior índice de avaliação */

SELECT title, episode, season, Rating 
FROM got_episodes_v4
ORDER BY Rating ASC LIMIT 10