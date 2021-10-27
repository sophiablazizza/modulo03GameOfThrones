/*Relação de casas por região*/

SELECT count(*) as quantidade, region 
FROM houses_v1 
GROUP BY region 
ORDER BY quantidade DESC;