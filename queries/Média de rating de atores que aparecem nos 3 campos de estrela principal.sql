/* Média de rating de atores que aparecem nos 3 campos de estrela principal */

SELECT `source`.`Actor/ess` AS `Actor/ess`, `source`.`avg` AS `avg`, `source`.`avg_2` AS `avg_2`, `source`.`avg_3` AS `avg_3`
FROM (SELECT `characters_v4`.`Actor/ess` AS `Actor/ess`, avg(`Got Episodes V4`.`Rating`) AS `avg`, avg(`Got Episodes V4_2`.`Rating`) AS `avg_2`, avg(`Got Episodes V4_3`.`Rating`) AS `avg_3` FROM `characters_v4`
LEFT JOIN `got_episodes_v4` `Got Episodes V4` ON `characters_v4`.`Actor/ess` = `Got Episodes V4`.`Star_1` LEFT JOIN `got_episodes_v4` `Got Episodes V4_2` ON `characters_v4`.`Actor/ess` = `Got Episodes V4_2`.`Star_2` LEFT JOIN `got_episodes_v4` `Got Episodes V4_3` ON `characters_v4`.`Actor/ess` = `Got Episodes V4_3`.`Star_3`
GROUP BY `characters_v4`.`Actor/ess`
ORDER BY `avg` DESC, `avg_2` DESC, `avg_3` DESC, `characters_v4`.`Actor/ess` ASC
LIMIT 12) `source`
WHERE (`source`.`avg` IS NOT NULL
   AND `source`.`avg_2` IS NOT NULL AND `source`.`avg_3` IS NOT NULL) LIMIT 1048575