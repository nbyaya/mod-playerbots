DROP TABLE IF EXISTS `ai_playerbot_texts`;
CREATE TABLE IF NOT EXISTS `ai_playerbot_texts` (
  `id` smallint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'name - used in strategies/code as filter',
  `text` varchar(1024) NOT NULL COMMENT 'text',
  `say_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0 - say, 1 - yell',
  `reply_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'if > 0 then can be filtered as a response to chat',
  `text_loc1` varchar(1024) NOT NULL DEFAULT '',
  `text_loc2` varchar(1024) NOT NULL DEFAULT '',
  `text_loc3` varchar(1024) NOT NULL DEFAULT '',
  `text_loc4` varchar(1024) NOT NULL DEFAULT '',
  `text_loc5` varchar(1024) NOT NULL DEFAULT '',
  `text_loc6` varchar(1024) NOT NULL DEFAULT '',
  `text_loc7` varchar(1024) NOT NULL DEFAULT '',
  `text_loc8` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

INSERT INTO `ai_playerbot_texts` (`name`, `text`, `say_type`, `reply_type`, `text_loc1`, `text_loc2`, `text_loc3`, `text_loc4`, `text_loc5`, `text_loc6`, `text_loc7`, `text_loc8`) VALUES

-- strings
('string_unknown_area', '荒郊野外', 0, 0, '', '', '', '', '', '', '', ''),
('string_unknown_area', '一个未公开的地点', 0, 0, '', '', '', '', '', '', '', ''),
('string_unknown_area', '某个地方', 0, 0, '', '', '', '', '', '', '', ''),

('string_empty_link', '某物', 0, 0, '', '', '', '', '', '', '', ''),


-- looting item events
-- usable placeholders:
-- %item_link
-- %zone_name
-- %area_name
-- %my_race
-- %my_class
-- %my_level
('broadcast_looting_item_normal', '想知道%item_link是什么味道', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_poor', '不，我得到了%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_poor', '唉，又是这个垃圾%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_poor', '看起来我在捡垃圾%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_poor', '好吧，我想这总比没有好%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_poor', '不确定该怎么办%item_link', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_looting_item_normal', '想知道%item_link是什么味道', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_normal', '好吧，我可以继续捡%item_link一整天', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_normal', '又是一天，又是%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_normal', '捡到了一些%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_normal', '一些%item_link还可以', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_looting_item_uncommon', '不错，我刚刚得到了%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_uncommon', '在%zone_name中捡到了%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_uncommon', '我可以好好利用这个%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_uncommon', '金钱金钱金钱%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_uncommon', '得到了%item_link', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_looting_item_rare', '%item_link是猎人的毕业装备', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_rare', '%item_link是我的职业%my_class的毕业装备', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_rare', '今天的随机数生成器不错%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_rare', '甜蜜的%item_link，刚刚捡到', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_rare', '哇，我刚刚得到了%item_link', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_looting_item_rare', '%item_link是猎人的毕业装备', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_rare', '%item_link是我的职业%my_class的毕业装备', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_rare', '今天的随机数生成器不错%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_rare', '甜蜜的%item_link，刚刚捡到', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_looting_item_epic', 'OMG，看看我刚刚得到了什么%item_link!!!', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_looting_item_legendary', '不可能！！这不可能，我得到了%item_link，这太疯狂了', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_looting_item_artifact', '不可能！！这不可能，我得到了%item_link，这太疯狂了', 0, 0, '', '', '', '', '', '', '', ''),




-- quest events
-- usable placeholders:
-- %quest_link
-- %zone_name
-- %area_name
-- %my_race
-- %my_class
-- %my_level
('broadcast_quest_accepted_generic', '我刚刚接了%quest_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_accepted_generic', '刚刚接受了%quest_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_accepted_generic', '%quest_link打算试着完成这个', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_accepted_generic', '在%zone_name中接了%quest_link', 0, 0, '', '', '', '', '', '', '', ''),



-- usable placeholders:
-- %quest_link
-- %zone_name
-- %area_name
-- %quest_obj_available
-- %quest_obj_required
-- %quest_obj_missing
-- %quest_obj_name
-- %quest_obj_full_formatted
-- %my_race
-- %my_class
-- %my_level
('broadcast_quest_update_add_kill_objective_completed', '最后完成了%quest_obj_name的%quest_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_add_kill_objective_completed', '最后得到了%quest_link的%quest_obj_available/%quest_obj_required的%quest_obj_name', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_add_kill_objective_completed', '%quest_obj_full_formatted的%quest_link，终于完成了', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_quest_update_add_kill_objective_progress', '哎，得到了%quest_link的%quest_obj_available/%quest_obj_required的%quest_obj_name', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_add_kill_objective_progress', '仍然需要%quest_obj_missing更多的%quest_obj_name来完成%quest_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_add_kill_objective_progress', '%quest_obj_full_formatted，仍在进行%quest_link', 0, 0, '', '', '', '', '', '', '', ''),



-- usable placeholders:
-- %quest_link
-- %zone_name
-- %area_name
-- %quest_obj_available
-- %quest_obj_required
-- %quest_obj_missing
-- %item_link
-- %quest_obj_full_formatted
-- %my_race
-- %my_class
-- %my_level
('broadcast_quest_update_add_item_objective_completed', '最后完成了%item_link的%quest_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_add_item_objective_completed', '最后得到了%quest_link的%quest_obj_available/%quest_obj_required的%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_add_item_objective_completed', '%quest_obj_full_formatted的%quest_link，终于完成了', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_quest_update_add_item_objective_progress', '哎，得到了%quest_link的%quest_obj_available/%quest_obj_required的%item_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_add_item_objective_progress', '仍然需要%quest_obj_missing更多的%item_link来完成%quest_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_add_item_objective_progress', '%quest_obj_full_formatted，仍在进行%quest_link', 0, 0, '', '', '', '', '', '', '', ''),


-- usable placeholders:
-- %quest_link
-- %zone_name
-- %area_name
-- %my_race
-- %my_class
-- %my_level
('broadcast_quest_update_failed_timer', '未能及时完成%quest_link...', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_failed_timer', '用完时间了%quest_link :(', 0, 0, '', '', '', '', '', '', '', ''),


-- usable placeholders:
-- %quest_link
-- %zone_name
-- %area_name
-- %my_race
-- %my_class
-- %my_level
('broadcast_quest_update_complete', '我完成了%quest_link的所有目标', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_complete', '完成了%quest_link的所有目标', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_update_complete', '很快就要交%quest_link了，刚刚完成了所有目标', 0, 0, '', '', '', '', '', '', '', ''),


-- usable placeholders:
-- %quest_link
-- %zone_name
-- %area_name
-- %my_race
-- %my_class
-- %my_level
('broadcast_quest_turned_in', '是的，我终于交了%quest_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_turned_in', '交了%quest_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_turned_in', '努力完成了%quest_link，刚刚交了', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_turned_in', '刚刚交了%quest_link', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_quest_turned_in', '在%zone_name中刚刚交了%quest_link', 0, 0, '', '', '', '', '', '', '', ''),



-- kill mob events
-- usable placeholders:
-- %victim_name
-- %zone_name
-- %area_name
-- %victim_level
-- %my_race
-- %my_class
-- %my_level
('broadcast_killed_normal', '又击败了一个%victim_name', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_killed_normal', '我一直在击败%victim_name，没什么好说的', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_killed_normal', '又一个%victim_name倒下了', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_killed_normal', '在%zone_name中又少了一个%victim_name', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_killed_elite', '击败了这个精英混蛋%victim_name!', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_killed_player', '在%zone_name中击败了精英%victim_name', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_killed_rareelite', '呼，努力击败了%victim_name!', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_killed_worldboss', '太疯狂了！刚刚击败了%victim_name！现在可以讲故事了', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_killed_rare', '哟，我刚刚击败了%victim_name!', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_killed_player', '在%zone_name中击败了稀有%victim_name', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_killed_unknown', 'WTF我刚刚击败了什么？%victim_name', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_killed_pet', '刚刚击败了那个宠物%victim_name', 0, 0, '', '', '', '', '', '', '', ''),


-- for broadcast_killed_player additionally can use %victim_class
('broadcast_killed_player', '哦耶，我刚刚击败了%victim_name', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_killed_player', '在%zone_name中击败了%victim_name', 0, 0, '', '', '', '', '', '', '', ''),



-- levelup events
-- usable placeholders:
-- %zone_name
-- %area_name
-- %my_class
-- %my_race
-- %my_level
('broadcast_levelup_generic', '叮!', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_levelup_generic', '是的，我%my_level级了！', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_levelup_generic', '我刚刚升级了', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_levelup_10x', '我%my_level级了!!!', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_levelup_10x', '变得更强了，已经是%my_level级!!!', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_levelup_10x', '刚刚达到了%my_level级!!!', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_levelup_max_level', 'OMG，终于%my_level级了!!!', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_levelup_max_level', '%my_level级了！！！现在可以玩最终游戏内容了', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_levelup_max_level', '新鲜的%my_level级%my_class！！！', 0, 0, '', '', '', '', '', '', '', ''),
('broadcast_levelup_max_level', '又升了一级%my_level级%my_race%my_class！', 0, 0, '', '', '', '', '', '', '', ''),



-- guild
-- usable placeholders:
-- %other_name
-- %other_class
-- %other_race
-- %other_level
('broadcast_guild_promotion', '干得好%other_name。这是你应得的。', 0, 0, '', '', '', '', '', '', '', ''),



('broadcast_guild_promotion', '那太糟糕了，% other_name。我不想这么做，但……', 0, 0, '', '', '', '', '', '', '', ''),




-- /////////////////////////////
-- suggestions


-- random instance
-- usable placeholders:
-- %my_role
-- %instance_name
-- %my_class
-- %my_race
-- %my_level
('suggest_instance', '有人想要%instance_name吗？', 0, 0, '', 'Quelqu\'un fait %instance_name ?', '', '', '', '¿Alguien quiere ir a %instance_name?', '', ''),
('suggest_instance', '有%instance_name的团队吗？', 0, 0, '', 'Des groupes pour %instance_name ?', '', '', '', '¿Algún grupo para %instance_name?', '', ''),
('suggest_instance', '需要帮助进行%instance_name吗？', 0, 0, '', 'Besoin d\'aide pour %instance_name ?', '', '', '', '¿Alguien necesita ayuda con %instance_name?', '', ''),
('suggest_instance', '寻找队伍：%instance_name。', 0, 0, '', 'Cherche à faire : %instance_name', '', '', '', 'Busco grupo para %instance_name.', '', ''),
('suggest_instance', '有人需要%my_role来进行%instance_name吗？', 0, 0, '', 'Quelqu\'un a besoin de %my_role pour %instance_name ?', '', '', '', '¿Alguien necesita un %my_role para %instance_name?', '', ''),
('suggest_instance', '缺少%my_role来进行%instance_name吗？', 0, 0, '', '%my_role manquant pour %instance_name ?', '', '', '', '¿Buscando un %my_role para %instance_name?', '', ''),
('suggest_instance', '我可以担任%my_role来进行%instance_name。', 0, 0, '', 'Peut être un %my_role pour %instance_name', '', '', '', 'Puedo ser un %my_role para %instance_name.', '', ''),
('suggest_instance', '需要帮助进行%instance_name吗？', 0, 0, '', 'Besoin d\'aide avec %instance_name ?', '', '', '', '¿Alguien necesita ayuda con %instance_name?', '', ''),
('suggest_instance', '需要%my_role的帮助来进行%instance_name吗？', 0, 0, '', 'Besoin d\'aide %my_role avec %instance_name ?', '', '', '', '¿Necesitas ayuda de %my_role con %instance_name?', '', ''),
('suggest_instance', '有人需要从%instance_name中获取装备吗？', 0, 0, '', 'Quelqu\'un a besoin d\'équipement de %instance_name ?', '', '', '', '¿Alguien necesita equipo de %instance_name?', '', ''),
('suggest_instance', '在%instance_name中稍微磨练一下？', 0, 0, '', 'Un peu de grind dans %instance_name ?', '', '', '', '¿Un poco de farmeo en %instance_name?', '', ''),
('suggest_instance', '', 0, 0, '', 'Cherche à rejoindre %instance_name', '', '', '', 'WTR %instance_name', '', ''),
('suggest_instance', '需要帮助进击%instance_name。', 0, 0, '', 'Besoin d\'aide pour %instance_name', '', '', '', 'Necesito ayuda para %instance_name.', '', ''),
('suggest_instance', '想要运行%instance_name。', 0, 0, '', 'Je veux faire %instance_name', '', '', '', 'Quiero hacer %instance_name.', '', ''),
('suggest_instance', '%my_role正在寻找%instance_name。', 0, 0, '', '%my_role recherche %instance_name', '', '', '', '%my_role busca %instance_name.', '', ''),
('suggest_instance', '怎么样%instance_name？', 0, 0, '', 'Et %instance_name ?', '', '', '', '¿Qué pasa con %instance_name?', '', ''),
('suggest_instance', '谁想要去%instance_name？', 0, 0, '', 'Qui veut exploiter %instance_name ?', '', '', '', '¿Quién quiere farmear %instance_name?', '', ''),
('suggest_instance', '可以去%instance_name吗？', 0, 0, '', 'Aller à %instance_name ?', '', '', '', '¿Vamos a %instance_name?', '', ''),
('suggest_instance', '寻找%instance_name。', 0, 0, '', 'À la recherche de %instance_name', '', '', '', 'Buscando gente para %instance_name.', '', ''),
('suggest_instance', '需要帮助完成%instance_name的任务吗？', 0, 0, '', 'Besoin d\'aide pour les quêtes %instance_name ?', '', '', '', '¿Necesitas ayuda con las misiones en %instance_name?', '', ''),
('suggest_instance', '想要在%instance_name中完成任务。', 0, 0, '', 'Je veux une quête dans %instance_name', '', '', '', 'Quiero hacer una vuelta rapida en %instance_name.', '', ''),
('suggest_instance', '有人在%instance_name中有任务吗？', 0, 0, '', 'Quelqu\'un a des quêtes dans %instance_name ?', '', '', '', '¿Alguien con misiones en %instance_name?', '', ''),
('suggest_instance', '可以帮忙完成%instance_name的任务。', 0, 0, '', 'Peux aider pour les quêtes dans %instance_name', '', '', '', 'Podría ayudar con las misiones en %instance_name.', '', ''),
('suggest_instance', '%my_role：团队中还有位置给%instance_name吗？', 0, 0, '', '%my_role : n\'importe quel rôle dans le groupe pour %instance_name ?', '', '', '', '%my_role: ¿algún lugar en el grupo para %instance_name?', '', ''),
('suggest_instance', '现在还有人在运行%instance_name吗？', 0, 0, '', 'Est-ce que quelqu\'un fait encore %instance_name ces jours-ci ?', '', '', '', '¿Alguien todavía hace %instance_name estos días?', '', ''),
('suggest_instance', '%instance_name：有人想要带一个%my_role吗？', 0, 0, '', '%instance_name : quelqu\'un veut prendre un %my_role ?', '', '', '', '¿Alguien quiere un %my_role para %instance_name?', '', ''),
('suggest_instance', '作为%my_role在%instance_name中有任何意义吗？', 0, 0, '', 'Y a-t-il un intérêt à être %my_role dans %instance_name ?', '', '', '', '¿Tiene algún sentido ser %my_role en %instance_name?', '', ''),
('suggest_instance', '去%instance_name真的值得吗？', 0, 0, '', 'Cela vaut-il vraiment la peine d\'aller dans %instance_name ?', '', '', '', '¿Realmente vale la pena ir a %instance_name?', '', ''),
('suggest_instance', '有人需要更多的人来进行%instance_name吗？', 0, 0, '', 'Quelqu\'un a besoin de plus de personnes pour %instance_name ?', '', '', '', '¿Alguien necesita más personas para %instance_name?', '', ''),
('suggest_instance', '%instance_name的老板会掉落好装备。想要去吗？', 0, 0, '', 'Les boss %instance_name drop du bon équipement. Tu veux courir ?', '', '', '', 'Los jefes en %instance_name sueltan buen equipo. ¿Quieres ir?', '', ''),
('suggest_instance', '怎么样%instance_name？', 0, 0, '', 'Et %instance_name ?', '', '', '', '¿Qué pasa con %instance_name?', '', ''),
('suggest_instance', '有人需要%my_role吗？', 0, 0, '', 'Quelqu\'un a besoin de %my_role ?', '', '', '', '¿Alguien necesita un %my_role?', '', ''),
('suggest_instance', '有人需要%my_role吗？', 0, 0, '', 'Quelqu\'un a besoin de %my_role ?', '', '', '', '¿Alguien hacer un grupo con un %my_role?', '', ''),
('suggest_instance', '谁想要%instance_name？', 0, 0, '', 'Qui veut %instance_name ?', '', '', '', '¿Quién quiere %instance_name?', '', ''),
('suggest_instance', '有人可以在%instance_name中召唤我吗？', 0, 0, '', 'Quelqu\'un peut-il me TP à %instance_name ?', '', '', '', '¿Alguien puede invocarme en %instance_name?', '', ''),
('suggest_instance', '在%instance_name中见面', 0, 0, '', 'Rencontrez-moi dans %instance_name', '', '', '', 'Encuéntrame en %instance_name', '', ''),
('suggest_instance', '想要快速运行%instance_name', 0, 0, '', 'Je veux faire rapidement %instance_name', '', '', '', 'Quiero ir a %instance_name rápido', '', ''),
('suggest_instance', '想要完整的%instance_name运行', 0, 0, '', 'Je veux faire %instance_name complètement', '', '', '', 'Quiero hacer %instance_name completa', '', ''),
('suggest_instance', '你去过%instance_name多少次？', 0, 0, '', 'Combien de fois avez-vous été dans %instance_name ?', '', '', '', '¿Cuántas veces estuviste en %instance_name?', '', ''),
('suggest_instance', '再来一次%instance_name运行？', 0, 0, '', 'Une autre exécution de %instance_name ?', '', '', '', '¿Otra vuelta en %instance_name ?', '', ''),
('suggest_instance', '在%instance_name中团灭了吗？带我一个！', 0, 0, '', 'Effacé dans %instance_name ? Prends-moi plutôt !', '', '', '', '¿Borrado en %instance_name? ¡Tómame a mí en su lugar!', '', ''),
('suggest_instance', '请带我进%instance_name。', 0, 0, '', 'Prenez-moi dans %instance_name s\'il vous plaît.', '', '', '', 'Tómame en %instance_name por favor.', '', ''),
('suggest_instance', '快速%instance_name运行？', 0, 0, '', 'Faire rapidement %instance_name ?', '', '', '', '¿Partida rápida de %instance_name?', '', ''),
('suggest_instance', '完整的%instance_name运行？', 0, 0, '', 'Clean complet dans %instance_name ?', '', '', '', '¿Partida completa de %instance_name?', '', ''),
('suggest_instance', '谁能带%my_role去%instance_name？', 0, 0, '', 'Qui peut prendre %my_role à %instance_name ?', '', '', '', '¿Quién puede ir de %my_role para %instance_name?', '', ''),
('suggest_instance', '寻找队伍：%instance_name，我是%my_role', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_instance', '%my_role寻找队伍：%instance_name', 0, 0, '', '', '', '', '', '', '', ''),



-- random quest
-- usable placeholders:
-- %my_role
-- %quest_link
-- %quest_level
-- %my_class
-- %my_race
-- %my_level
('suggest_quest', '需要帮助完成%quest_link吗？', 0, 0, '', 'Besoin d\'aide avec %quest_link ?', '', '', '', '¿Alguien necesita ayuda con %quest_link?', '', ''),
('suggest_quest', '有人想要分享%quest_link吗？', 0, 0, '', 'Quelqu\'un veut partager %quest_link ?', '', '', '', '¿Alguien quiere hacer %quest_link?', '', ''),
('suggest_quest', '有人在做%quest_link吗？', 0, 0, '', 'Quelqu\'un fait %quest_link ?', '', '', '', '¿Alguien está haciendo %quest_link?', '', ''),
('suggest_quest', '想要做%quest_link。', 0, 0, '', 'Je veux faire %quest_link', '', '', '', '¿Una ayudita con %quest_link?', '', ''),


-- random trade?
-- usable placeholders:
-- %my_role
-- %category
-- %my_class
-- %my_race
-- %my_level
('suggest_trade', '有人想要去%category吗？', 0, 0, '', 'Quelqu\'un pour farm %category ?', '', '', '', '¿Alguien para farmear %category?', '', ''),
('suggest_trade', '寻找帮助进行%category的农场。', 0, 0, '', 'Vous cherchez de l\'aide pour farmer %category', '', '', '', 'Buscando ayuda para farmear %category.', '', ''),
('suggest_trade', '该死的%category太贵了！', 0, 0, '', 'Putain %category sont si chers!', '', '', '', '¡Malditas %category son tan caras!', '', ''),
('suggest_trade', '想要%category。', 0, 0, '', 'Je veux %category', '', '', '', 'Quiero %category.', '', ''),
('suggest_trade', '需要帮助进行%category。', 0, 0, '', 'Besoin d\'aide avec %category', '', '', '', 'Necesito ayuda con %category.', '', ''),
('suggest_trade', '想要购买%category。', 0, 0, '', 'Cherche à acheter %category', '', '', '', 'Quiero comprar %category.', '', ''),
('suggest_trade', '有人对%category感兴趣吗？', 0, 0, '', 'Quiconque est intéressé par %category?', '', '', '', '¿Alguien interesado en %category?', '', ''),
('suggest_trade', '出售%category。', 0, 0, '', 'Cherche à vendre %category', '', '', '', 'Quiero vender %category.', '', ''),
('suggest_trade', '我在AH以比市价更低的价格出售%category。', 0, 0, '', 'Je vends %category moins cher que l\'hôtel des ventes.', '', '', '', 'Estoy vendiendo %category más barato que en las subastas.', '', ''),
('suggest_trade', '谁想要去%category的农场？', 0, 0, '', 'Qui veut farmer %category ?', '', '', '', '¿Quién quiere farmear %category?', '', ''),
('suggest_trade', '想要去%category的农场。', 0, 0, '', 'Je veux farmer %category', '', '', '', 'Quiero farmear %category.', '', ''),
('suggest_trade', '寻找%category后的团队。', 0, 0, '', 'Recherche de partie après %category', '', '', '', 'Buscando grupo después de %category.', '', ''),
('suggest_trade', '任何%category都会受到欢迎。', 0, 0, '', 'Toute %category est appréciée.', '', '', '', 'Cualquier %category es apreciada.', '', ''),
('suggest_trade', '购买任何%category。', 0, 0, '', 'Acheter quoi que ce soit de %category', '', '', '', 'Comprando algo de %category.', '', ''),
('suggest_trade', '哇，有人在%category的农场！', 0, 0, '', 'Wow, quelqu\'un farm %category !', '', '', '', '¡Guau, alguien está farmeando %category!', '', ''),
('suggest_trade', '%category在AH卖得火热。', 0, 0, '', '%category se vendent follement dans l\'hôtel des ventes.', '', '', '', '%category están vendiendo locos en las subastas.', '', ''),
('suggest_trade', 'AH对%category很热门。', 0, 0, '', 'Hôtel des ventes est chaud pour %category', '', '', '', 'Las subastas estan caliente para %category.', '', ''),
('suggest_trade', '%category在市场上。', 0, 0, '', '%category sont sur le marché.', '', '', '', '%category están en el mercado.', '', ''),
('suggest_trade', '想要交易一些%category。', 0, 0, '', 'Je veux échanger une %category', '', '', '', 'Quiero intercambiar alguna %category.', '', ''),
('suggest_trade', '需要更多的%category。', 0, 0, '', 'Besoin de plus de %category', '', '', '', 'Necesito más %category.', '', ''),
('suggest_trade', '有人可以分一些%category吗？', 0, 0, '', 'Quelqu\'un peut-il épargner une %category ?', '', '', '', '¿Alguien puede ahorrar algo de %category?', '', ''),
('suggest_trade', '谁想要%category？', 0, 0, '', 'Qui veut %category ?', '', '', '', '¿Quién quiere %category?', '', ''),
('suggest_trade', '一些%category请？', 0, 0, '', 'Une %category s\'il vous plaît ?', '', '', '', '¿Alguna %category, por favor?', '', ''),
('suggest_trade', '我应该为%category获得技能。', 0, 0, '', 'J\'aurais dû avoir une compétence pour %category', '', '', '', 'Debería haber adquirido habilidad para %category.', '', ''),
('suggest_trade', '我渴望%category。', 0, 0, '', 'Je meurs d\'envie pour %category', '', '', '', 'Me muero por %category.', '', ''),
('suggest_trade', '人们为了%category而疯狂。', 0, 0, '', 'Les gens tuent pour %category', '', '', '', 'La gente está matando por %category.', '', ''),
('suggest_trade', '%category是一笔很好的交易！', 0, 0, '', '%category est une bonne affaire!', '', '', '', '%category es una gran ganga!', '', ''),
('suggest_trade', '每个人都为%category疯狂！', 0, 0, '', 'Tout le monde est fou de %category !', '', '', '', '¡Todo el mundo está loco por %category!', '', ''),
('suggest_trade', '哪里是%category的最佳农场地点？', 0, 0, '', 'Quel est le meilleur endroit pour farmer pour %category ?', '', '', '', '¿Dónde está el mejor lugar para farmear para %category?', '', ''),
('suggest_trade', '我已经为%category做好了准备。', 0, 0, '', 'Je suis prêt pour %category', '', '', '', 'Estoy listo para %category.', '', ''),
('suggest_trade', '出售%category好吗？', 0, 0, '', 'Est-il bon de vendre %category ?', '', '', '', '¿Es bueno vender %category?', '', ''),
('suggest_trade', '我可能会把所有的%category都留在我身边。', 0, 0, '', 'Je garderais probablement toute ma %category avec moi.', '', '', '', 'Probablemente mantendría toda mi %category conmigo', '', ''),
('suggest_trade', '需要团队吗？也许可以去%category的农场。', 0, 0, '', 'Besoin de groupe ? Peut-être pour farmer une certaine %category ?', '', '', '', '¿Necesitas un grupo? ¿Tal vez para farmear alguna %category?', '', ''),
('suggest_trade', '我还在考虑%category。', 0, 0, '', 'Je pense toujours à %category', '', '', '', 'Todavía estoy pensando en %category.', '', ''),
('suggest_trade', '我已经听说过%category，但我的口袋空空如也。', 0, 0, '', 'J\'ai déjà entendu parler de %category , mais mes poches sont vides.', '', '', '', 'Ya escuché sobre %category, pero mis bolsillos están vacíos.', '', ''),
('suggest_trade', '寻找%category的队伍', 0, 0, '', 'Cherche un groupe pour %category', '', '', '', 'Busco grupo para %category', '', ''),
('suggest_trade', '出售%category会让我变富吗？', 0, 0, '', 'Vendre %category me rendrait-il riche?', '', '', '', '¿Vender %category me haría rico?', '', ''),
('suggest_trade', '好吧。我明天去%category的农场。', 0, 0, '', 'D\'ACCORD. Je farm %category demain.', '', '', '', 'OK. Tengo una sesion de farmeo de %category mañana.', '', ''),
('suggest_trade', '每个人都在谈论%category。', 0, 0, '', 'Tout le monde parle de %category', '', '', '', 'Todos hablan de %category', '', ''),
('suggest_trade', '我昨天至少看到十个人为了%category而农场。', 0, 0, '', 'J\'ai vu au moins dix personnes farmer pour %category', '', '', '', 'Vi al menos diez personas farmeando para %category.', '', ''),
('suggest_trade', '我昨天卖光了我所有的%category。我现在完全破产了！', 0, 0, '', 'J\'ai vendu tout mon %category hier. Je suis complètement fauché!', '', '', '', 'Ayer vendí todo mi %category. ¡Estoy completamente arruinado!', '', ''),
('suggest_trade', '想要加入一个为了%category而农场的公会。', 0, 0, '', 'Je veux rejoindre une guilde farmant pour %category', '', '', '', 'Quiero unirme a una hermandad de farmeo para %category.', '', ''),



-- random faction rep grind
-- usable placeholders:
-- %my_role
-- %rep_level
-- %rndK
-- %faction
-- %my_class
-- %my_race
-- %my_level
('suggest_faction', '有人在为%faction声望而农场吗？', 0, 0, '', 'Quelqu\'un farm la réput de %faction ?', '', '', '', '¿Alguien farmea reputación con %faction?', '', ''),
('suggest_faction', '有人帮助%faction吗？', 0, 0, '', 'Quelqu\'un aide-t-il %faction ?', '', '', '', '¿Alguien me ayuda con %faction?', '', ''),
('suggest_faction', '想要为%faction做任务。', 0, 0, '', 'Je veux quêter %faction', '', '', '', 'Quiero buscar a %faction.', '', ''),
('suggest_faction', '%faction是最好的。', 0, 0, '', '%faction est la meilleure.', '', '', '', '%faction es el mejor.', '', ''),
('suggest_faction', '我只需要一点点就能达到%faction的%rep_level。', 0, 0, '', 'J\'ai besoin d\'un peu pour être au %rep_level avec %faction', '', '', '', 'Solo necesito un poco para estar %rep_level con %faction.', '', ''),
('suggest_faction', '有人达到%faction的%rep_level了吗？', 0, 0, '', 'Quelqu\'un a-t-il %rep_level avec %faction ?', '', '', '', '¿Alguien tiene %rep_level con %faction?', '', ''),
('suggest_faction', '谁想要达到%faction的%rep_level？', 0, 0, '', 'Qui veut être au %rep_level avec %faction ?', '', '', '', '¿Quién quiere estar en %rep_level con %faction?', '', ''),
('suggest_faction', '我永远也达不到%faction的%rep_level。', 0, 0, '', 'Je ne serai jamais au %rep_level avec %faction', '', '', '', 'Nunca estaré %rep_level con %faction.', '', ''),
('suggest_faction', '有人在缺少%faction的声望吗？', 0, 0, '', 'Quelqu\'un manque de reput de %faction ?', '', '', '', '¿Alguien falta reputación con %faction?', '', ''),
('suggest_faction', '可以帮忙农场%faction的声望。', 0, 0, '', 'Pourrait aider à farmer réput de %faction', '', '', '', 'Podría ayudar a farmear %faction rep.', '', ''),
('suggest_faction', '声望越多越好。特别是和%faction。', 0, 0, '', 'Plus il y a de réput, mieux c\'est. Surtout avec %faction', '', '', '', 'Cuantas más repeticiones, mejor. Especialmente con %faction.', '', ''),
('suggest_faction', '%faction：需要%rndK来达到%rep_level。', 0, 0, '', '%faction: besoin %rndK pour %rep_level.', '', '', '', '%faction: necesita %rndK para %rep_level.', '', ''),
('suggest_faction', '谁可以分享%faction的任务？', 0, 0, '', 'Qui peut partager les quêtes de %faction ?', '', '', '', '¿Quién puede compartir misiones de %faction?', '', ''),
('suggest_faction', '有%faction的地下城吗？', 0, 0, '', 'Des donjons pour %faction ?', '', '', '', '¿Alguna mazmorra para %faction?', '', ''),
('suggest_faction', '想要做%faction声望的农场。', 0, 0, '', 'Je veux faire monter ma réput %faction', '', '', '', 'Quiero hacer %faction rep grind.', '', ''),
('suggest_faction', '让我们农场%faction的声望！', 0, 0, '', 'Farmons la réput %faction !', '', '', '', '¡Vamos a farmear reputación con %faction!', '', ''),
('suggest_faction', '为%faction的声望而农场。', 0, 0, '', 'Farmons pour la réput %faction', '', '', '', 'Farming for %faction rep.', '', ''),
('suggest_faction', '想要为%faction而农场。', 0, 0, '', 'Je veux farmer pour %faction', '', '', '', 'Quiero farmear para %faction.', '', ''),
('suggest_faction', '需要帮助进行%faction。', 0, 0, '', 'Besoin d\'aide avec %faction', '', '', '', 'Necesito ayuda con %faction.', '', ''),
('suggest_faction', '%faction有卖有用的东西吗？', 0, 0, '', 'Est-ce que %faction vend quelque chose d\'utile ?', '', '', '', '¿%faction vende algo útil?', '', ''),
('suggest_faction', '有%faction的供应商吗？', 0, 0, '', 'Y a-t-il des vendeurs %faction ?', '', '', '', '¿Hay %proveedores de facciones?', '', ''),
('suggest_faction', '谁在农场%faction？', 0, 0, '', 'Qui farm %faction ?', '', '', '', '¿Quién farmea %faction?', '', ''),
('suggest_faction', '农场%faction的最佳方式是什么？', 0, 0, '', 'Quelle est la meilleure façon de farmer %faction ?', '', '', '', '¿Cuál es la mejor manera de farmear %faction?', '', ''),
('suggest_faction', '我讨厌%faction的声望农场。', 0, 0, '', 'Je déteste le travail de %faction rep.', '', '', '', 'Odio %repetir de facción', '', ''),
('suggest_faction', '我厌倦了%faction。', 0, 0, '', 'Je suis tellement fatigué de %faction', '', '', '', 'Estoy tan cansado de %faction.', '', ''),
('suggest_faction', '去%faction吗？', 0, 0, '', 'Vous optez pour %faction ?', '', '', '', '¿Quereis ir a por %faction?', '', ''),
('suggest_faction', '似乎每个人都已经和%faction达到了%rep_level。只有我总是迟到。', 0, 0, '', 'On dirait que tout le monde est %rep_level avec %faction Il n\'y a que moi qui suis en retard comme d\'habitude.', '', '', '', 'Parece que todo el mundo está %rep_level con %faction. Solo yo llego tarde como siempre.', '', ''),
('suggest_faction', '寻找%faction声望农场的队伍？', 0, 0, '', 'Cherche un groupe pour monter la réput des représentants de %faction ?', '', '', '', 'Busco grupo para subir reputación con %faction', '', ''),
('suggest_faction', '有人可以建议一个%faction声望农场的好地点吗？', 0, 0, '', 'Quelqu\'un peut-il suggérer un bon endroit pour monter les réput de %faction ?', '', '', '', '¿Alguien puede sugerir un buen lugar farmear reputacion con %faction?', '', ''),
('suggest_faction', '%faction的声望对我有好处吗？', 0, 0, '', 'Est-ce que la réput %faction me serait bénéfique ?', '', '', '', '¿Me beneficiaría subir reputación con %faction?', '', ''),
('suggest_faction', '谁曾想到%faction的声望最终会派上用场...', 0, 0, '', 'Qui aurait pensé que le représentant de %faction serait utile après tout...', '', '', '', 'Quién hubiera pensado que subir reputacion con %faction sería útil después de todo...', '', ''),
('suggest_faction', '我想和所有阵营达到崇敬，从%faction开始。', 0, 0, '', 'Je veux être exalté avec toutes les factions, à commencer par %faction', '', '', '', 'Quiero ser exaltado con todas las facciones, comenzando con %faction.', '', ''),
('suggest_faction', '提高和%faction的声望有什么意义吗？', 0, 0, '', 'Y a-t-il un intérêt à améliorer ma réputation avec %faction ?', '', '', '', '¿Hay algún punto para mejorar mi reputación con %faction?', '', ''),
('suggest_faction', '对于%faction来说，任务还是打怪更好？', 0, 0, '', 'Quoi de mieux pour %faction ? Quêtes ou mob pour XP?', '', '', '', '¿Qué es mejor para %faction? ¿Misiones o mafiosos?', '', ''),
('suggest_faction', '我将为你农场%faction的声望。只要给我一些金币。', 0, 0, '', 'Monte la reput de %faction pour vous. Donnez-moi juste de l\'or.', '', '', '', 'Ganare reputacion con %faction por ti. Sólo dame un poco de oro.', '', ''),
('suggest_faction', '我认为和%faction的声望农场会永远持续下去。', 0, 0, '', 'Je pense que monter la réput avec %faction prendrait une éternité.', '', '', '', 'Creo que subir la reputación con %faction tomaría una eternidad.', '', ''),
('suggest_faction', '我每天都在为%faction而杀戮，但仍然离%rep_level很远。', 0, 0, '', 'Je tue pour %faction tous les jours maintenant, mais encore loin du %rep_level', '', '', '', 'Estoy matando por %faction todos los días ahora, pero aún estoy lejos del %rep_level.', '', ''),
('suggest_faction', '在%my_level，AH的存款会减少，对吧？', 0, 0, '', 'Au %rep_level, les dépôts hôtel des ventes diminueront, n\'est-ce pas?', '', '', '', 'Al %rep_level, los depósitos subastas disminuirán, ¿verdad?', '', ''),
('suggest_faction', '你有多少个崇敬的声望？', 0, 0, '', 'Combien de représentants exaltés avez-vous ?', '', '', '', '¿Cuántas reputaciones exaltadas tienes?', '', ''),
('suggest_faction', '谁想和%faction达到%my_level？', 0, 0, '', 'Qui veut être au %rep_level avec %faction ?', '', '', '', '¿Quién quiere estar en %rep_level con %faction?', '', ''),
('suggest_faction', '该死的。我的公会在昨天做了一个很好的%faction农场，却没有我。', 0, 0, '', 'Mince. Ma guilde a fait un bon travail de %faction hier sans moi.', '', '', '', 'Maldición. Mi hermandad hizo un buen farmeo de %faction ayer sin mí.', '', ''),
('suggest_faction', '没人愿意帮助我，因为我和%faction的声望只有%rep_level。', 0, 0, '', 'Personne ne veut m\'aider parce que je suis %rep_level avec %faction', '', '', '', 'Nadie quiere ayudarme porque estoy %rep_level con %faction.', '', ''),
('suggest_faction', '请远离%faction。', 0, 0, '', 'Veuillez rester à l\'écart de %faction', '', '', '', 'Por favor manténgase alejado de %faction.', '', ''),



-- random generic
-- usable placeholders:
-- %my_role
-- %zone_name
-- %area_name
-- %my_class
-- %my_race
-- %my_level
('suggest_something', '想要在%zone_name中组队。', 0, 0, '', 'Je veux faire la fête dans %zone_name.', '', '', '', '¡Vamos a perrear a %zone_name!', '', 'Ищу группу в %zone_name.'),
('suggest_something', '有人在寻找%my_role吗？', 0, 0, '', 'Quelqu\'un cherche un %my_role ?', '', '', '', '¿Alguien está buscando %my_role?', '', 'Кто-нибудь ищет %my_role?'),
('suggest_something', '%my_role正在寻找公会。', 0, 0, '', '%my_role recherche une guilde.', '', '', '', '%my_role está buscando hermandad.', '', '%my_role ищу гильдию.'),
('suggest_something', '寻找金币。', 0, 0, '', 'A la recherche de l\'or.', '', '', '', 'Buscando oro.', '', 'Дайте голды'),
('suggest_something', '%my_role想要加入一个好公会。', 0, 0, '', '%my_role veut rejoindre une bonne guilde.', '', '', '', '%my_role quiere unirse a una buen hermandad.', '', '%my_role хочу в хорошую гильдию.'),
('suggest_something', '需要一个朋友。', 0, 0, '', 'Besoin d\'un ami.', '', '', '', 'Necesito un amigo...', '', 'Ищу друга.'),
('suggest_something', '有人感到孤独吗？', 0, 0, '', 'Quelqu\'un se sent seul?', '', '', '', '¿Alguien se siente solo?', '', 'Кому-нибудь одиноко?'),
('suggest_something', '无聊...', 0, 0, '', 'Ennuyeux...', '', '', '', 'Aburrido...', '', 'Скучно...'),
('suggest_something', '谁想要一些？', 0, 0, '', 'Qui en veut?', '', '', '', '¿Quién quiere hacer grupo para levear?', '', 'Кому навалять?'),
('suggest_something', '来抓我吧！', 0, 0, '', 'Allez me chercher !', '', '', '', '¡Ven a buscarme!', '', 'Поймайте меня!'),
('suggest_something', '也许在%zone_name中进行一场决斗？', 0, 0, '', 'Peut-être un duel dans %zone_name ?', '', '', '', '¿Quizás un duelo en %zone_name?', '', 'Кто на дуэль в %zone_name?'),
('suggest_something', '有人在做什么吗？', 0, 0, '', 'Quelqu\'un fait quelque chose?', '', '', '', '¿Alguien está haciendo algo?', '', 'Кто чем занят?'),
('suggest_something', '%zone_name：有人在这儿吗？', 0, 0, '', '%zone_name : est-ce que quelqu\'un est là?', '', '', '', '%zone_name: ¿hay alguien aquí?', '', '%zone_name: есть кто нибудь?'),
('suggest_something', '%zone_name：大家都在哪里？', 0, 0, '', '%zone_name : où est tout le monde?', '', '', '', '¿Hay alguien en %zone_name?', '', '%zone_name: где все?'),
('suggest_something', '看来我在%zone_name是独自一人。', 0, 0, '', 'On dirait que je suis seul dans %zone_name', '', '', '', 'Parece que estoy solo en %zone_name.', '', 'Похоже я один в %zone_name.'),
('suggest_something', '在%zone_name中见面。', 0, 0, '', 'Retrouvez-moi dans %zone_name', '', '', '', 'Encuéntrame en %zone_name.', '', 'Встретимся в %zone_name.'),
('suggest_something', '让我们一起在%zone_name中完成任务！', 0, 0, '', 'Partons en quête dans %zone_name !', '', '', '', '¡Vamos a hacer un grupo para levear en %zone_name!', '', 'Давайте квестить в %zone_name!'),
('suggest_something', '%zone_name是最好的地方！', 0, 0, '', '%zone_name est le meilleur endroit où être!', '', '', '', '%zone_name es el mejor lugar para estar!', '', '%zone_name лучшее место!'),
('suggest_something', '想要去%zone_name。有人和我一起去吗？', 0, 0, '', 'Je veux aller à %zone_name Quelqu\'un avec moi?', '', '', '', 'Quiero ir a %zone_name. ¿Alguien se apunta?', '', 'Собираюсь в %zone_name. Кто со мной7'),
('suggest_something', '谁想去%zone_name？', 0, 0, '', 'Qui veut aller à %zone_name ?', '', '', '', '¿Quién quiere ir a %zone_name?', '', 'Кто собирается в %zone_name?'),
('suggest_something', '我不喜欢%zone_name。去哪里好呢？', 0, 0, '', 'Je n\'aime pas %zone_name Où aller?', '', '', '', 'No me gusta %zone_name. ¿Dónde podria ir?', '', 'Не нравится %zone_name. Куда идти?'),
('suggest_something', '%zone_name有好任务吗？', 0, 0, '', 'Y a-t-il de bonnes quêtes dans %zone_name ?', '', '', '', '¿Hay buenas misiones en %zone_name?', '', 'А в %zone_name есть хорошие квесты?'),
('suggest_something', '完成%zone_name后去哪里？', 0, 0, '', 'Où aller après %zone_name ?', '', '', '', '¿Adónde puedo ir después de %zone_name?', '', 'Куда идти после %zone_name?'),
('suggest_something', '谁在%zone_name？', 0, 0, '', 'Qui est dans %zone_name ?', '', '', '', '¿Quién está en %zone_name?', '', 'Кто в %zone_name?'),
('suggest_something', '在%zone_name中寻找队伍。', 0, 0, '', 'Cherche un groupe dans %zone_name', '', '', '', 'Busco grupo en %zone_name.', '', 'ЛФГ %zone_name.'),
('suggest_something', '%zone_name是最糟糕的地方。', 0, 0, '', '%zone_name est le pire endroit où être.', '', '', '', '%zone_name es el peor lugar para estar', '', '%zone_name это худшее место.'),
('suggest_something', '在%zone_name中抓住我！', 0, 0, '', 'Attrape-moi dans %zone_name !', '', '', '', '¡Atrápame en %zone_name!', '', 'Поймай меня в %zone_name!'),
('suggest_something', '去%zone_name吧！', 0, 0, '', 'Allez pour %zone_name !', '', '', '', 'Me voy a %zone_name!', '', 'Гоу в %zone_name!'),
('suggest_something', '想要在%zone_name中完成任务', 0, 0, '', 'Je veux une quête dans %zone_name', '', '', '', 'Quiero hacer una búsqueda en %zone_name', '', 'Хочешь поделать квесты в %zone_name'),
('suggest_something', '有人在%zone_name中有任务吗？', 0, 0, '', 'Quelqu\'un a des quêtes dans %zone_name ?', '', '', '', '¿Alguien tiene misiones en %zone_name?', '', 'Есть у кого квесты в %zone_name?'),
('suggest_something', '来这里%zone_name！', 0, 0, '', 'Venez ici à %zone_name !', '', '', '', '¡Ven aquí a %zone_name!', '', 'Приходите сюда в %zone_name!'),
('suggest_something', '似乎%zone_name中没有部落', 0, 0, '', 'Il semble qu\'il n\'y ait pas de Horde dans %zone_name', '', '', '', 'Parece que no hay Horda en %zone_name', '', '%zone_name Орды вроде нет.'),
('suggest_something', '似乎%zone_name中没有联盟', 0, 0, '', 'Il semble qu\'il n\'y ait pas d\'alliance dans %zone_name', '', '', '', 'Parece que no hay Alianza en %zone_name', '', '%zone_name Альянса вроде нет'),
('suggest_something', '我真的厌倦了%zone_name。也许去别的地方？', 0, 0, '', 'Je suis vraiment fatigué de %zone_name Peut-être aller ailleurs?', '', '', '', 'Estoy realmente cansado de %zone_name. Quizás ire a otro lugar', '', 'В %zone устал уже, может в другое место пойдем?'),
('suggest_something', 'GL', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '我想要回家，然后边缘', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '有人知道怎么双持吗？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '大家好！', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '%zone_name很舒服', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '我感觉很棒', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '我不会忽视别人，我会戏弄他们直到他们忽视我', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '你们怎么看我的构建？%my_role', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '很高兴看到聊天室仍然记得', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '像所有武器一样，这是猎人的BIS', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '游戏的重点是对我来说是单独行动，寻找新的单独行动方式', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '我从来没有欺骗过任何人', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '啊，是的，魔兽世界，我来寻求生活建议的地方', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '你好？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '是时候战斗进入%zone_name了', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '%zone_name', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '得去上厕所了', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '如果你不捡起你的可剥皮的击杀，你的pp永久损失1mm', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '不！！！！！！！！！！', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '我喜欢土豆', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', 'w聊天', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '嗨，你们好吗', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '我刚刚退出然后又登录回来了', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '你们能小声点吗，我在%zone_name中迷路了', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '有人在%zone_name中想和我一起喝一杯吗...hic!', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '哈哈哈哈哈哈哈哈dirin diring ingggggg hahahahaheeeeeeeeeeeeee', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '诱饵曾经是可信的', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '也许你只是失去了你的纯真', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '有公会愿意带%my_role吗？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '一旦你开始升级，金币就很容易得到了', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '早上好', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '为什么我的屁股疼？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '我觉得精神对于升级来说是最棒的', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '更多的是对于巨魔', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '有人能邀请我吗', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '需要很多饮料', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '该死的侏儒', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '没人喜欢侏儒', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '侏儒只对一件事有用', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '好吧', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '蘑菇', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '自动思维是可怕的东西', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '心灵比我们想象的更有可塑性', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '有升级公会吗？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '马上回来', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '为什么雪是白色的，但冰是透明的？都是同一种东西制成的', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '为什么奶油是蓬松的，而普通的不是', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '如果脚没有鼻子，为什么脚会臭', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '看起来一群新手到了', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '停止用BS答案戏弄新玩家', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '这个服务器上有PvP吗？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '废话', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '呼... :)', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '你们知道吗', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '我尽量不去想象其他生物的感受', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '哦，糟糕，发错聊天了', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '伙计，你们今天太疯狂了', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '就让文字留在这里', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '我很生气', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '磨练是有趣的', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '魔兽世界让我保持敏锐', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '嗨，我有个问题，我在哪里可以接受更多的经验值？我在%zone_name', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '你们喜欢香肠吗？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '邀请我。我会帮忙', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '你认为哪个职业更适合PvP？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '在%zone_name烹饪训练师在哪里？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '在%zone_name发生了什么？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something', '我需要制作一些东西', 0, 0, '', '', '', '', '', '', '', ''),

-- random generic toxic phrases
-- usable placeholders:
-- %random_inventory_item_link
-- %my_role
-- %zone_name
-- %area_name
-- %my_class
-- %my_race
-- %my_level
('suggest_something_toxic', '什么是ligma', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '什么是sugma', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', 'ligma球', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', 'sugma球', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '我吃屁股', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '我想把%random_inventory_item_link塞进我的屁股', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '我想把%random_inventory_item_link塞进你的屁股', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', 'Darnasses', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '看来你患有sugma', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '把坚果放进你的嘴里', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '很酷的勃起，兄弟', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', 'ERP？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '我尝试了一切，但最后ERP奏效了', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '我想在%zone_name中玩耍', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '寻找女性侏儒和大猩猩宠物进行ERP在%zone_name', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '我可能理解一个混蛋，但一个变态呢？', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '在%zone_name中没有gyat', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '我正在杀死%zone_name中的所有动物。去他妈的动物！！', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '幸好我有三条腿', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '不要生气，我像sigma一样前进', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_something_toxic', '试试手指，但是洞', 0, 0, '', '', '', '', '', '', '', ''),

-- random generic toxic item links
-- usable placeholders:
-- %prefix
-- %random_taken_quest_or_item_link
-- %random_inventory_item_link
-- %my_role
-- %zone_name
-- %area_name
-- %my_class
-- %my_race
-- %my_level
('suggest_toxic_links', '%prefix %random_taken_quest_or_item_link', 0, 0, '', '', '', '', '', '', '', ''),
('suggest_toxic_links', '%prefix %random_inventory_item_link', 0, 0, '', '', '', '', '', '', '', ''),



-- thunderfury spam
-- usable placeholders:
-- %thunderfury_link
('thunderfury_spam', '%thunderfury_link', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '%thunderfury_link%thunderfury_link', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '%thunderfury_link%thunderfury_link%thunderfury_link', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '我想我刚刚听到了%thunderfury_link', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '我想我听到了%thunderfury_link', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '我确定我听到了%thunderfury_link', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '我不知道，但我非常确定我听到了%thunderfury_link', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '你刚刚说%thunderfury_link了吗', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '有人说%thunderfury_link了吗', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '有人说%thunderfury_link吗？', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '有人说%thunderfury_link', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '%thunderfury_link要出柜了', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '可以发誓它是一个%thunderfury_link，可能是%thunderfury_link', 0, 0, '', '', '', '', '', '', '', ''),
('thunderfury_spam', '为什么要用%thunderfury_link，当%thunderfury_link明显更强大', 0, 0, '', '', '', '', '', '', '', ''),



-- random WTS
-- usable placeholders:
-- %%item_formatted_link
-- %item_formatted_link
-- %item_count
-- %cost_gold
-- %my_class
-- %my_race
-- %my_level
('suggest_sell', '出售%item_formatted_link，价格为%cost_gold。', 0, 0, '', 'Cherche à vendre %item_formatted_link pour %cost_gold', '', '', '', 'Quiero vender %item_formatted_link por %cost_gold.', '', ''),
('suggest_sell', '谁想要%item_formatted_link，价格为%cost_gold？', 0, 0, '', 'Qui veut %item_formatted_link pour %cost_gold ?', '', '', '', '¿Quién quiere %item_formatted_link por %cost_gold?', '', ''),
('suggest_sell', '有人想要%item_formatted_link吗？只需%cost_gold。', 0, 0, '', 'Quelqu\'un veut %item_formatted_link ? Seulement %cost_gold', '', '', '', '¿Alguien quiere %item_formatted_link? Solo %cost_gold.', '', ''),
('suggest_sell', '仅售%cost_gold，即得%item_formatted_link！', 0, 0, '', 'Seulement %cost_gold pour %item_formatted_link!', '', '', '', '¡Solo %cost_gold para %item_formatted_link!', '', ''),
('suggest_sell', '出售%item_formatted_link，价格为%cost_gold。', 0, 0, '', 'Vendre %item_formatted_link pour %cost_gold', '', '', '', 'Vendo %item_formatted_link por %cost_gold.', '', ''),
('suggest_sell', '%item_formatted_link是你的，只需%cost_gold！', 0, 0, '', '%item_formatted_link est à vous juste pour %cost_gold !', '', '', '', '%item_formatted_link es tuyo solo por %cost_gold!', '', ''),
('suggest_sell', '%cost_gold的荒谬价格，只为%item_formatted_link！', 0, 0, '', 'Prix ridicule de %cost_gold pour %item_formatted_link !', '', '', '', '¡Precio ridículo de %cost_gold para %item_formatted_link_link!', '', ''),
('suggest_sell', '想要出售%item_formatted_link，价格为%cost_gold。', 0, 0, '', 'Je veux vendre %item_formatted_link pour %cost_gold', '', '', '', 'Quiero vender %item_formatted_link por %cost_gold.', '', ''),
('suggest_sell', '谁需要%item_formatted_link？只需%cost_gold。', 0, 0, '', 'Qui a besoin de %item_formatted_link ? Seulement %cost_gold', '', '', '', '¿Quién necesita %item_formatted_link? Solo %cost_gold.', '', ''),
('suggest_sell', '有人需要%item_formatted_link，价格为%cost_gold吗？', 0, 0, '', 'Quelqu\'un a besoin de %item pour %cost_gold ?', '', '', '', '¿Alguien necesita %item_formatted_link_link por %cost_gold?', '', ''),
('suggest_sell', '%cost_gold为%item_formatted_link。比AH便宜！', 0, 0, '', '%cost_gold pour %item_formatted_link. Moins que l\'hôtel des ventes!', '', '', '', '%cost_gold para %item_formatted_link. ¡Menos que en las subastas!', '', ''),
('suggest_sell', '%item_formatted_link很贵，但我愿意以%cost_gold的价格出售。', 0, 0, '', '%item_formatted_link est cher, mais je le vendrais pour %cost_gold', '', '', '', '%item_formatted_link es caro, pero lo vendería por %cost_gold.', '', ''),
('suggest_sell', '你永远不会找到比%cost_gold更便宜的%item_formatted_link！', 0, 0, '', 'Vous ne trouverez jamais %item_formatted_link moins cher que %cost_gold !', '', '', '', '¡Nunca encontrarás %item_formatted_link más barato que %cost_gold!', '', ''),
('suggest_sell', '需要更多的%item_formatted_link！', 0, 0, '', 'Besoin de plus de %item_formatted_link !', '', '', '', '¡Necesito más %item_formatted_link!', '', ''),
('suggest_sell', '我有%item_formatted_link，需要更多。', 0, 0, '', 'J\'ai %item_formatted_link et j\'en ai besoin de plus.', '', '', '', 'Tengo %item_formatted_link y necesito más. ¿Alguien me vende alguno?', '', ''),
('suggest_sell', '我有%item_formatted_link。谁想以%cost_gold的价格购买？', 0, 0, '', 'Avoir %item_formatted_link. Qui veut acheter pour %cost_gold ?', '', '', '', 'Tengo %item_formatted_link. ¿Quién quiere comprarlo por %cost_gold?', '', ''),
('suggest_sell', '有人想要购买%item_formatted_link，价格为%cost_gold吗？', 0, 0, '', 'Quelqu\'un cherche à acheter %item_formatted_link pour %cost_gold ?', '', '', '', '¿Alguien compra %item_formatted_link por %cost_gold?', '', ''),
('suggest_sell', '怎么样%item_formatted_link？价格为%cost_gold。', 0, 0, '', 'Qu\'en est-il de %item_formatted_link ? Pour %cost_gold', '', '', '', '¿Qué pasa con %item_formatted_link? Por el oro.', '', ''),
('suggest_sell', '谁说我是个混蛋？%item_formatted_link，价格为%cost_gold是个好价格。', 0, 0, '', 'Qui a dit que j\'étais un bâtard? %item_formatted_link pour %cost_gold est un bon prix.', '', '', '', '¿Quién ha dicho que soy un rata? %item_formatted_link por %cost_gold es una ganga.', '', ''),
('suggest_sell', '我正在出售%item_formatted_link？只需%cost_gold。', 0, 0, '', 'Je vends %item_formatted_link ? Juste %cost_gold', '', '', '', '¿Vendo %item_formatted_link? Solo %cost_gold.', '', ''),
('suggest_sell', '寻找队伍进行农场。你仍然可以购买我有的%item_formatted_link，价格为%cost_gold。', 0, 0, '', 'Cherche un groupe pour farming. Vous pouvez toujours acheter %item_formatted_link que j\'ai pour %cost_gold', '', '', '', 'LFG para farmear. Todavía puedes comprar %item_formatted_link que tengo por %cost_gold.', '', ''),
('suggest_sell', '今天几乎卖光了所有东西。仍然有%item_formatted_link，价格为%cost_gold。', 0, 0, '', 'Vendu presque tout aujourd\'hui. Vous avez encore %item_formatted_link pour %cost_gold', '', '', '', 'Se vendió casi todo hoy. Todavía tengo %item_formatted_link por %cost_gold.', '', ''),
('suggest_sell', '交易聊天有什么用？当然是出售%item_formatted_link，价格为%cost_gold。', 0, 0, '', 'A quoi sert le tchat commercial? Bien sûr pour vendre %item_formatted_link pour %cost_gold', '', '', '', '¿De qué sirve el chat comercial? Por supuesto, para vender %item_formatted_link por %cost_gold.', '', ''),
('suggest_sell', '有人能比%cost_gold更低的价格出售%item_formatted_link吗？', 0, 0, '', 'Quelqu\'un peut-il battre le prix de %cost_gold pour %item_formatted_link ?', '', '', '', '¿Alguien puede superar el precio de %cost_gold por %item_formatted_link?', '', ''),
('suggest_sell', '想要停止交易聊天吗？只需购买%item_formatted_link？价格为%cost_gold！', 0, 0, '', 'Vous voulez arrêter le chat commercial? Vous venez d\'acheter %item_formatted_link ? Pour %cost_gold !', '', '', '', '¿Quieres detener el chat comercial? ¿Solo compra %item_formatted_link? ¡Por el oro!', '', ''),
('suggest_sell', '每个人都在交易聊天中刷屏。我也是 - %cost_gold出售%item_formatted_link！', 0, 0, '', 'Tout le monde spamme dans le chat commercial. Moi aussi - %cost_gold pour %item_formatted_link !', '', '', '', 'Todo el mundo envía spam en el chat y yo también! ¡%item_formatted_link por %cost_gold!', '', ''),
('suggest_sell', '%item_formatted_link有什么用？只需以%cost_gold的价格出售。', 0, 0, '', '%item_formatted_link est-il utile? Je le vends juste pour %cost_gold', '', '', '', '¿Es %item_formatted_link útil? Solo lo vendo por %cost_gold.', '', ''),
('suggest_sell', '我有%item_formatted_link准备出售给你，价格为%cost_gold。', 0, 0, '', 'J\'ai %item_formatted_link prêt à vous vendre pour %cost_gold', '', '', '', 'Tengo %item_formatted_link listo a la venta por %cost_gold.', '', ''),
('suggest_sell', '什么都没做，昨天只是得到了%item_formatted_link。谁想要以%cost_gold的价格购买？', 0, 0, '', 'Je n\'ai rien fait hier mais j\'ai %item_formatted_link Je le vends pour %cost_gold', '', '', '', 'No hice nada ayer pero consegu\'i %item_formatted_link. Lo vendo por %cost_gold.', '', ''),
('suggest_sell', '昨天农场，得到了%item_formatted_link。有人想要以%cost_gold的价格购买吗？', 0, 0, '', 'Farmé hier et obtenu %item_formatted_link Quelqu\'un cherche à acheter pour %cost_gold ?', '', '', '', 'Ayer farmee y conseguí mucho %item_formatted_link. ¿Alguien lo quiere comprar por %cost_gold?', '', ''),
('suggest_sell', '昨天购买了%item_formatted_link。谁需要以%cost_gold的价格购买？', 0, 0, '', 'Acheté %item_formatted_link hier. Quelqu\'un en a besoin pour %cost_gold ?', '', '', '', 'Ayer compré %item_formatted_link. ¿Alguien lo quiere por %cost_gold?', '', ''),
('suggest_sell', '谁问%item_formatted_link？价格还是一样的 - %cost_gold。', 0, 0, '', 'Qui a demandé %item_formatted_link ? Le prix est le même - %cost_gold', '', '', '', '¿Quién pidió %item_formatted_link? El precio es el mismo: %cost_gold.', '', ''),
('suggest_sell', '我仍然有%item_formatted_link。想要购买的请联系。', 0, 0, '', 'J\'ai toujours %item_formatted_link. Cherche à acheter pour %cost_gold ?', '', '', '', 'Todavía tengo %item_formatted_link. ¿Alguien lo compra por %cost_gold?', '', ''),
('suggest_sell', '我曾经拥有超过%item_formatted_link。现在需要以%cost_gold的价格出售。', 0, 0, '', 'J\'avais plus de %item_formatted_link Il faut maintenant le vendre pour %cost_gold', '', '', '', 'Solía tener más de %item_formatted_link. Ahora necesito venderlo por %cost_gold.', '', ''),
('suggest_sell', '我希望我有超过%item_formatted_link。你可以无论如何都以%cost_gold的价格购买。', 0, 0, '', 'J\'aimerais avoir plus de %item_formatted_link . Vous pouvez l\'acheter pour %cost_gold de toute façon.', '', '', '', 'Desearía tener más de %item_formatted_link. Podrías comprarlo por %cost_gold de todos modos.', '', ''),
('suggest_sell', '你的金币有什么用？购买我的%item_formatted_link，价格为%cost_gold。', 0, 0, '', 'A quoi sert votre or ? Pour acheter mon %item_formatted_link pour %cost_gold', '', '', '', '¿De qué sirve tu oro? Para comprar mi %item_formatted_link por %cost_gold.', '', ''),
('suggest_sell', '请给我一些金币。你可以购买%item_formatted_link，价格为%cost_gold。', 0, 0, '', 'S\'il vous plaît, épargnez-moi de l\'or. Vous pouvez acheter %item_formatted_link pour %cost_gold', '', '', '', 'Por favor, dame algo de oro. Puedes comprar %item_formatted_link por %cost_gold.', '', ''),
('suggest_sell', '%cost_gold是%item_formatted_link的好价格吗？', 0, 0, '', '%cost_gold est-il un bon prix pour %item_formatted_link ?', '', '', '', '¿%cost_gold es un buen precio para %item_formatted_link?', '', ''),
('suggest_sell', '昨天刚刚购买了%item_formatted_links，但不再需要了。谁想要以%cost_gold的价格购买？', 0, 0, '', 'Je viens d\'acheter hier %item_formatted_links , mais je n\'en ai plus besoin. Quelqu\'un veut %cost_gold ?', '', '', '', 'Ayer compré %item_formatted_link, pero ya no los necesito. ¿Alguien lo quiere por %cost_gold?', '', ''),
('suggest_sell', '我打算在AH上发布%item_formatted_link，但你现在可以以更便宜的价格%cost_gold购买。', 0, 0, '', 'Je vais poster %item_formatted_link à l\'hôtel des ventes mais vous pouvez l\'acheter maintenant moins cher juste pour %cost_gold', '', '', '', 'Voy a poner %item_formatted_link en la casa de subastas pero puedes comprarlo ahora más barato solo por %cost_gold.', '', ''),
('suggest_sell', '为什么我买了%item_formatted_link？谁需要以%cost_gold的价格购买？', 0, 0, '', 'Pourquoi ai-je acheté le #!@ %item_formatted_link ? Quelqu\'un en a besoin pour %cost_gold ?', '', '', '', '¿Por qué #!@ he comprado %item_formatted_link? ¿Alguien lo necesita por %cost_gold?', '', ''),


-- response LFG/LFM channel
-- usable placeholders:
-- %quest_links
-- %other_name
-- %my_role
-- %zone_name
-- %area_name
-- %my_class
-- %my_race
-- %my_level
('response_lfg_quests_channel', '我有%quest_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_channel', '我也有%quest_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_channel', '我也有%quest_links，我现在在%zone_name。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_channel', '%other_name，我也有%quest_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_channel', '%other_name，我也有%quest_links，我现在在%zone_name。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_channel', '我准备接受%quest_links，我现在在%zone_name。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_channel', '我准备接受%quest_links，我是%my_role。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_channel', '%other_name，我准备接受%quest_links，我现在在%zone_name。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_channel', '%other_name，我准备接受%quest_links，我是%my_role。', 0, 0, '', '', '', '', '', '', '', ''),


-- response LFG/LFM whisper
-- usable placeholders:
-- %quest_links
-- %other_name
-- %my_role
-- %zone_name
-- %area_name
-- %my_class
-- %my_race
-- %my_level
('response_lfg_quests_whisper', '嗨，我准备接受%quest_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_whisper', '嗨，我可以和你一起完成%quest_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_whisper', '嗨，我也有%quest_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_whisper', '嗨%other_name，我准备接受%quest_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_whisper', '嗨%other_name，我可以和你一起完成%quest_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_whisper', '嗨%other_name，我也有%quest_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_whisper', '想要组队进行%quest_links吗？', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_whisper', '我准备接受%quest_links，我现在在%zone_name。', 0, 0, '', '', '', '', '', '', '', ''),
('response_lfg_quests_whisper', '我准备接受%quest_links，我是%my_role。', 0, 0, '', '', '', '', '', '', '', ''),



-- response WTB channel
-- usable placeholders:
-- %formatted_item_links
-- %other_name
-- %my_role
-- %zone_name
-- %area_name
-- %my_class
-- %my_race
-- %my_level
('response_wtb_items_channel', '%other_name，我可以卖给你%formatted_item_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_wtb_items_channel', '我可能会卖%formatted_item_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_wtb_items_channel', '我想我可以卖%formatted_item_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_wtb_items_channel', '%other_name，我可能会卖%formatted_item_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_wtb_items_channel', '%other_name，我想我可以卖%formatted_item_links。', 0, 0, '', '', '', '', '', '', '', ''),




-- response WTB channel
-- usable placeholders:
-- %formatted_item_links
-- %other_name
-- %my_role
-- %zone_name
-- %area_name
-- %my_class
-- %my_race
-- %my_level
('response_wtb_items_whisper', '我可以卖给你%formatted_item_links。', 0, 0, '', '', '', '', '', '', '', ''),
('response_wtb_items_whisper', '嗨，我有%formatted_item_links出售。', 0, 0, '', '', '', '', '', '', '', ''),
('response_wtb_items_whisper', '嗨，我可能会卖%formatted_item_links。', 0, 0, '', '', '', '', '', '', '', ''),


-- /////////////////////////////
-- generic events

-- quest
('quest_accept', '任务已接受', 0, 0, '', '', '', '', '', 'Misión aceptada', '', 'Квест взят'),



('quest_remove', '任务已移除', 0, 0, '', '', '', '', '', 'Misión eliminada', '', 'Квест отменен'),



('quest_cant_take', '我不能接受这个任务', 0, 0, '', '', '', '', '', 'No puedo tomar esta búsqueda', '', 'Я не могу взять этот квест'),


('quest_error_talk', '我不能和任务给予者交谈', 0, 0, '', '', '', '', '', 'No puedo hablar con el propietario de la mision', '', ''),



('quest_error_completed', '我已经完成了%quest', 0, 0, '', '', '', '', '', 'Ya he completado la mision %quest', '', ''),



('quest_error_have_quest', '我已经有%quest了', 0, 0, '', '', '', '', '', 'Ya tengo la mision %quest', '', ''),



('quest_error_cant_take', '我不能接受%quest', 0, 0, '', '', '', '', '', 'No puedo aceptar la mision %quest', '', ''),



('quest_error_log_full', '我不能接受%quest，因为我的任务日志已满', 0, 0, '', '', '', '', '', 'No puedo aceptar la mision %quest porque mi registro de misiones esta completo', '', ''),



('quest_error_bag_full', '我不能接受%quest，因为我的包已满', 0, 0, '', '', '', '', '', 'No puedo aceptar la mision %quest porque mi inventario esta lleno', '', ''),



('quest_accepted', '我接受了%quest', 0, 0, '', '', '', '', '', 'He aceptado la mision %quest', '', ''),



('quest_status_incomplete', '我没有完成%quest任务', 0, 0, '', '', '', '', '', 'No he completado la mision %quest', '', ''),



('quest_status_available', '%quest任务可用', 0, 0, '', '', '', '', '', 'Mision %quest disponible', '', ''),



('quest_status_failed', '我未能完成%quest任务', 0, 0, '', '', '', '', '', 'He fallado la mision %quest', '', ''),



('quest_status_unable_to_complete', '我不能交任务%quest', 0, 0, '', '', '', '', '', 'No puedo entregar la mision %quest', '', ''),



('quest_status_completed', '我完成了%quest任务', 0, 0, '', '', '', '', '', 'He completado la mision %quest', '', ''),



('quest_status_complete_single_reward', '我完成了%quest任务并收到了%item', 0, 0, '', '', '', '', '', 'He completado la mision %quest y he recibido %item', '', ''),



('quest_status_complete_pick_reward', '完成%quest任务我应该选择哪个奖励？%rewards', 0, 0, '', '', '', '', '', '¿Que recompensa deberia escoger por completar la mision %quest?%rewards', '', ''),



('quest_choose_reward', '好的，我会选择%item作为奖励', 0, 0, '', '', '', '', '', 'De acuerdo, voy a escoger %item de recompensa', '', ''),






-- stuff
('hello', '你好', 0, 0, '', '', '', '', '', 'Hola', '', 'Привет'),
('hello', '你好！', 0, 0, '', '', '', '', '', '¡Hola!', '', 'Привет!'),
('hello', '嗨', 0, 0, '', '', '', '', '', 'Hola', '', 'Прив'),
('hello', '嗨！', 0, 0, '', '', '', '', '', '¡Hola!', '', 'Прив!'),
('hello', '你好！', 0, 0, '', '', '', '', '', '¡Hola!', '', 'Здарова!'),



('hello_follow', '你好啊！', 0, 0, '', '', '', '', '', '¡Hola, te sigo!', '', 'Привет, иду за тобой!'),
('hello_follow', '你好，我跟着你！', 0, 0, '', '', '', '', '', '¡Hola, guía el camino!', '', 'Привет, веди!'),
('hello_follow', '你好，带路吧！', 0, 0, '', '', '', '', '', '¡Hola, guía el camino!', '', 'Прив, веди!'),



('join_group', '嗨，带路吧！', 0, 0, '', '', '', '', '', 'Oye %player, ¿Quieres unirte a mi grupo?', '', ''),



('join_raid', '嘿 %player，你想加入我的团队吗？', 0, 0, '', '', '', '', '', 'Oye %player, ¿Quieres unirte a mi banda?', '', ''),



('logout_cancel', '嘿 %player，你想加入我的团队吗？', 0, 0, '', '', '', '', '', 'Cerrar sesión cancelado!', '', 'Логаут отменен!'),



('logout_start', '注销已取消！', 0, 0, '', '', '', '', '', '¡Me estoy desconectando!', '', 'Я выхожу из игры!'),



('goodbye', '我要下线了！', 0, 0, '', '', '', '', '', '¡Adiós!', '', 'Пока!'),
('goodbye', '再见！', 0, 0, '', '', '', '', '', '¡Adiós!', '', 'Пока пока!'),
('goodbye', '拜拜！', 0, 0, '', '', '', '', '', '¡Hasta luego!', '', 'Увидимся позже!'),



-- /////////////////////////////
-- replies


-- replies 0
('reply', '待会见！', 0, 0, '', 'c\'était quoi ce %s?', '', '', '', '¿qué has dicho %s?', '', ''),
('reply', '那是什么 %s？', 0, 0, '', 'pas sûr de comprendre %s?', '', '', '', '¿no estoy seguro de entenderte %s?', '', ''),
('reply', '不确定我理解 %s？', 0, 0, '', 'euh... aucune idée de quoi tu parles', '', '', '', 'uh... ni idea de lo que estás hablando', '', ''),
('reply', '呃... 一点头绪都没有你所说的', 0, 0, '', 'tu me parles %s?', '', '', '', '¿Me hablas a mí %s?', '', ''),
('reply', '你在和我说话吗 %s？', 0, 0, '', 'quoiaaa?', '', '', '', '¿quéaaa?', '', ''),
('reply', '啥啊？', 0, 0, '', 'hein?', '', '', '', '¿eh?', '', ''),
('reply', '哈？', 0, 0, '', 'Quoi?', '', '', '', '¿qué?', '', ''),
('reply', '什么？', 0, 0, '', 'parles-tu?', '', '', '', '¿estás hablando?', '', ''),
('reply', '你在说话吗？', 0, 0, '', 'peu importe mec', '', '', '', 'Menudo tio...', '', ''),
('reply', '随便你', 0, 0, '', 'tu m\'as perdu', '', '', '', 'No entiendo ni papa', '', ''),
('reply', '你把我弄丢了', 0, 0, '', 'Bla bla bla...', '', '', '', 'Bla bla bla...', '', ''),
('reply', '布啦布啦布啦...', 0, 0, '', 'Qu\'as-tu dis, %s?', '', '', '', '¿Qué me estas contando %s?', '', ''),
('reply', '专注于游戏，%s！', 0, 0, '', 'Concentres-toi sur le jeu, %s!', '', '', '', '¡Concéntrate en el juego, %s!', '', ''),
('reply', '和你聊天 %s 太棒了！我一直想遇见你', 0, 0, '', 'Discuter avec vous %s est tellement génial! J\'ai toujours voulu te rencontrer', '', '', '', '¡%s, chatear contigo es genial! Siempre quise conocerte', '', ''),
('reply', '这些聊天信息真让我毛骨悚然！我感觉我好像认识你们所有人！', 0, 0, '', 'Ces messages du chat me font flipper! J\'ai l\'impression de vous connaître tous!', '', '', '', '¡Estos mensajes de chat me están asustando! ¿De que cojones estais hablando?', '', ''),
('reply', '耶！对！哈哈，当然！！', 0, 0, '', 'OUI EN EFFET! AHAH BIEN SÛR!!!', '', '', '', '¡SÍ, CORRECTO! ¡¡¡JAJA SEGURO!!!', '', ''),
('reply', '我相信你！！！', 0, 0, '', 'Je te crois!!!', '', '', '', '¡Si, claro!', '', ''),
('reply', '好吧，嗯哼哈哈', 0, 0, '', 'OK, euh LOL', '', '', '', 'OK, uhuh LOL', '', ''),
('reply', '为什么每个人都在说同样的话？？？', 0, 0, '', 'Pourquoi tout le monde dit toujours la même chose???', '', '', '', '¿Por qué todo el mundo siempre dice lo mismo?', '', ''),
('reply', '嘿 %s....哦，没事了！', 0, 0, '', 'Hé %s.... oh tant pis!', '', '', '', 'Oye %s... ¡oh, no importa!', '', ''),
('reply', '你在说什么 %s', 0, 0, '', 'De quoi parlez-vous %s', '', '', '', 'De qué estás hablando %s', '', ''),
('reply', '谁说的？这话好像在说我', 0, 0, '', 'Qui a dit ça? je ressemble à cette remarque', '', '', '', '¿Quién ha dicho eso? ¿Estais hablando de mi?', '', ''),
('reply', '你们都在说什么鬼', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '别想骗我，我不会上当的', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '你什么都得不到', 0, 0, '', '', '', '', '', '', '', ''),
('reply', 'swagger', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '谢谢！', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '不', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '是的', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '艹', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '%s 废话', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '为什么是这样', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '笑死我了', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '我本应该保持沉默，聊天内容再次让我困惑了', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '我可能会变得非常嫉妒', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '%s 你听不出我文字里的讽刺吗', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '他说了“不是同性恋”，没关系', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '矮人时刻', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '是的 %s', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '有趣的...', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '哈哈', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '%s 混蛋：D', 0, 0, '', '', '', '', '', '', '', ''),
('reply', ':)', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '谢谢', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '%s 说得好', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '耶', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '是啊', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '哦哦哦', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '嗯', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '是啊，没错', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '你让我恶心，卧槽', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '性感', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '辣妹生气了', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '你一直在吃什么 %s', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '卧槽', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '我会尽量理解那条评论', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '困惑', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '太棒了', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '0/10 再也不想读了', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '10/10 会再读', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '6/10 会读', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '7/10 会读', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '基于', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '哦，也许是这样', 0, 0, '', '', '', '', '', '', '', ''),
('reply', '是啊，那又怎样', 0, 0, '', '', '', '', '', '', '', ''),







-- replies 1
('reply', '嘿 %s 我没忘记你', 0, 1, '', 'salut %s je ne t\'ai pas oublié', '', '', '', 'hey %s no te he olvidado', '', ''),
('reply', '你让我生气了 %s', 0, 1, '', 'tu me fais chier %s', '', '', '', 'me cabreas %s', '', ''),
('reply', '这次我要抓住你 %s', 0, 1, '', 'je vais t\'avoir cette fois %s', '', '', '', 'voy a atraparte esta vez %s', '', ''),
('reply', '最好小心点 %s', 0, 1, '', 'mieux vaut surveiller vos arrières %s', '', '', '', 'mejor cuida tu espalda %s', '', ''),
('reply', '我不太喜欢上一轮', 0, 1, '', 'je n\'ai pas tellement aimé le dernier tour', '', '', '', 'no me gustó tanto la última ronda', '', ''),
('reply', '多亏了 %s，我上一轮很糟糕', 0, 1, '', 'j\'ai merdé le dernier tour grâce à %s', '', '', '', 'chupé la última ronda gracias a %s', '', ''),
('reply', '准备好去死了 %s', 0, 1, '', 'préparez-vous à mourir %s', '', '', '', 'prepárate para morir %s', '', ''),
('reply', '不喜欢你杀我 %s', 0, 1, '', 'j\'apprécie pas que tu me tues %s', '', '', '', 'no aprecio que me mates %s', '', ''),
('reply', '%s，我恨你', 0, 1, '', '%s, je te déteste', '', '', '', '%s, te odio', '', ''),
('reply', '咕噜噜，这次我要抓住你 %s', 0, 1, '', 'grrrrrr, je vais t\'avoir cette fois %s', '', '', '', 'grrrrrr, te libraste esta vez %s', '', ''),
('reply', '好吧，去你的', 0, 1, '', 'eh bien va te faire foutre', '', '', '', 'vamos a la mierda', '', ''),
('reply', '%s 我会吐在你的臭嘴里', 0, 1, '', '', '', '', '', '', '', ''),
('reply', '别他妈的评判我', 0, 1, '', '', '', '', '', '', '', ''),
('reply', '你妈太胖了，她甚至不能穿过黑暗之门', 0, 1, '', '', '', '', '', '', '', ''),



-- replies 2
('reply', '卧槽', 0, 2, '', 'wtf', '', '', '', 'wtf', '', ''),
('reply', '卧槽？？', 0, 2, '', 'wtf??', '', '', '', 'wtf??', '', ''),
('reply', '卑鄙小人', 0, 2, '', 'faible durée de vie', '', '', '', 'low life', '', ''),
('reply', '搞什么', 0, 2, '', 'wth', '', '', '', 'wth', '', ''),
('reply', '糟透了', 0, 2, '', 'Ça craint', '', '', '', 'chupate esa', '', ''),
('reply', '重赛！！！我要打败他', 0, 2, '', 'REMATCH!!! je le descends', '', '', '', '¡¡REVANCHA!!! lo estoy derribando', '', ''),
('reply', '可怜，我被 %s 杀了', 0, 2, '', 'pathétique, j\'ai été tué par %s', '', '', '', 'patético, me mató %s', '', ''),
('reply', '我完了', 0, 2, '', '', '', '', '', '', '', ''),



-- replies 3
('reply', '呵呵，我搞定了 %s？', 0, 3, '', 'hehe, j\'ai cloué %s?', '', '', '', 'jeje, ¿acerté a %s?', '', ''),
('reply', '那太容易了，杀了 %s', 0, 3, '', 'c\'était trop facile, de tuer %s', '', '', '', 'fue demasiado fácil matar a %s', '', ''),
('reply', '抓住你了，混蛋', 0, 3, '', 'je t\'ai eu enfoiré', '', '', '', 'te pille hijo de perra', '', ''),
('reply', '哈哈', 0, 3, '', 'ha ha', '', '', '', 'ja, ja', '', ''),
('reply', '失败者', 0, 3, '', 'loser', '', '', '', 'loser', '', ''),
('reply', '我杀了 %s，你们接下来！', 0, 3, '', 'j\'ai tué %s et vous tous les prochains mecs', '', '', '', 'yo maté a %s y a todos los siguientes tipos', '', ''),
('reply', '哦，是的，我控制了他', 0, 3, '', 'oh ouais je l\'ai possédé', '', '', '', 'oh, sí, lo tenía', '', ''),
('reply', '我要杀疯了', 0, 3, '', 'je suis une machine à tuer', '', '', '', 'soy una máquina de matar', '', ''),
('reply', '%s，这让我想起了Slayer的一首歌...这么多血shed', 0, 3, '', '%s, ça me rappelle une chanson de Slayer... tout ce bain de sang', '', '', '', '%s, esto me recuerda a una canción de Slayer... todo este derramamiento de sangre', '', ''),
('reply', '对不起，%s。我们可以再演一次吗？', 0, 3, '', 'désolé, %s. peut-on refaire la scène?', '', '', '', 'lo siento, %s. ¿Podemos hacer la escena de nuevo?', '', ''),
('reply', '那么....你觉得自己喜欢做蠕虫食物吗？？？？', 0, 3, '', 'alors... comment aimez-vous être de la nourriture pour vers %s???', '', '', '', 'así que... ¿cómo te gusta ser comida de gusanos %s???', '', ''),
('reply', '你本应该死了，%s 这是游戏的一部分！！！！', 0, 3, '', 'tu es censé être mort, %s ça fait partie du jeu!!!!!', '', '', '', '¡¡Se supone que estás muerto, %s es parte del juego!!!!!', '', ''),
('reply', '对不起，%s。那看起来和安迪·沃霍尔的画一样好！', 0, 3, '', 'désolé, %s. ça avait l\'air aussi bien qu\'une peinture d\'Andy Warhol!', '', '', '', 'lo siento, %s. ¡Eso se veía tan bien como una pintura de Andy Worhol!', '', ''),
('reply', '%s，下次我用橡皮子弹！', 0, 3, '', '%s, j\'utiliserai pas les balles en caoutchouc la prochaine fois!', '', '', '', '%s, ¡usaré las balas de goma la próxima vez!', '', ''),
('reply', '怎么了，%s？？ 丢了你的头？哈哈哈，保持冷静！！', 0, 3, '', 'qu\'importe, %s ?? tu perds la tête? hahaha faut rester cool!!', '', '', '', '¿qué pasa, %s?? ¿has perdido la cabeza? jajaja tengo que mantener la calma!!', '', ''),
('reply', '我不得不这么做，%s。你明白的。导演是这么说的！！', 0, 3, '', 'je devais le faire, %s. Tu comprends. Le directeur l\'a dit!!', '', '', '', 'Tenía que hacerlo, %s. Entiendelo... ¡¡Dios me lo ordenó!!', '', ''),
('reply', '嘿 %s......MUAHAHAHAHAHAHAHAHAHAHA', 0, 3, '', 'Salut %s.......MUAHAHAHAHAHAHAHAHAHAHA', '', '', '', 'hey %s.......MUAHAHAHAHAHAHAHAHAHAHA', '', ''),
('reply', '%s，我喜欢这个！！再玩一次，山姆', 0, 3, '', '%s, j\'ai adoré celui-là !! Jouons à nouveau Sam', '', '', '', '%s, ¡disfruté ese! Juguemos de nuevo Sam', '', ''),
('reply', '嘿，%s！你可以开始叫我疤面煞星..你这混蛋！！！', 0, 3, '', 'Hé, %s ! ju peut commencer à m\'appeler Scarface .. ju merde!!!!', '', '', '', '¡oye, %s! ¡Puedes empezar a llamarme caracortada... ¡¡¡un trozo de CHIT!!!', '', ''),
('reply', '你在和我说话吗 %s？？', 0, 3, '', 'tu me parles %s ??', '', '', '', '¿me estás hablando a mí %s?', '', ''),
('reply', '%s 这次做对了，不要挡住我的子弹。', 0, 3, '', '%s réussis cette fois, ne te tiens pas devant mes balles.', '', '', '', '%s hazlo bien esta vez, no te pares frente a mis balas.', '', ''),
('reply', '%s，你为什么要躺在那里？？ 呵呵', 0, 3, '', '%s, pourquoi traînes-tu??? hé hé', '', '', '', '%s, ¿para qué estás tirado? jeje', '', ''),
('reply', '我真的笑了', 0, 3, '', '', '', '', '', '', '', ''),



-- replies 4
('reply', '嗨 %s', 0, 4, '', 'salut %s', '', '', '', 'hola %s', '', ''),
('reply', '哦，嗨 %s', 0, 4, '', 'oh, salut %s', '', '', '', 'oh, hola %s', '', ''),
('reply', '怎么了 %s!!!', 0, 4, '', 'Quoi de neuf %s!!!', '', '', '', 'wazzup %s!!!', '', ''),
('reply', '嗨', 0, 4, '', 'salut', '', '', '', 'hi', '', ''),
('reply', '怎么了', 0, 4, '', 'wazzup', '', '', '', 'wazzup', '', ''),
('reply', '你好 %s', 0, 4, '', 'bonjour %s', '', '', '', 'hola %s', '', ''),
('reply', '嗨 %s，我认识你吗？', 0, 4, '', 'Salut %s, est-ce que je te connais ?', '', '', '', 'hola %s, ¿te conozco?', '', ''),
('reply', '嘿 %s', 0, 4, '', 'salut %s', '', '', '', 'hey %s', '', ''),
('reply', '海 %s', 0, 4, '', 'ha %s', '', '', '', 'hai %s', '', ''),
('reply', '什么鬼', 0, 6, '', 'wth', '', '', '', 'wth', '', ''),
('reply', '卧槽', 0, 6, '', 'wtf', '', '', '', 'que cojones!', '', ''),
('reply', '这是胡说八道', 0, 6, '', 'c\'est bs', '', '', '', 'esto es una mierda', '', ''),
('reply', '管理员', 0, 6, '', 'admin', '', '', '', 'admin', '', ''),
('reply', '嘿 %s 别滥用你的管理员权限', 0, 6, '', 'hé %s arrête d\'abuser de ton admin', '', '', '', 'hey %s deja de abusar de tu poder de administrador', '', ''),
('reply', '管理员，别烦我！', 0, 6, '', 'laissez-moi tranquille admin!', '', '', '', '¡déjame en paz administrador!', '', ''),
('reply', '管理员真烂', 0, 6, '', 'tu es nul admin', '', '', '', 'apestas administrador', '', ''),
('reply', '那是我的名字，你想要什么 %s', 0, 5, '', 'c\'est mon nom, qu\'est-ce que tu veux %s', '', '', '', 'ese es mi nombre, ¿que quieres %s?', '', ''),
('reply', '是吗？？？', 0, 5, '', 'Oui???', '', '', '', 'sí???', '', ''),
('reply', '呃... 什么', 0, 5, '', 'euh ...quoi', '', '', '', 'uh... qué', '', ''),
('reply', '你在和我说话吗 %s？', 0, 5, '', 'tu me parles %s ?', '', '', '', '¿Me hablas a mí %s?', '', ''),





-- taunts
('taunt', '我的盔甲下有小狗！', 0, 0, '', 'J\'ai des chiots sous mon armure !', '', '', '', '¡Tengo cachorros bajo mi armadura!', '', ''),
('taunt', '咬我，<target>!', 0, 0, '', 'Mords moi, <target>!', '', '', '', '¡Muérdeme, <target>!', '', ''),
('taunt', '嘿 <target>！猜猜你妈昨晚怎么说的！', 0, 0, '', 'Hey <target>! Devine ce que ta mère a dit hier soir!', '', '', '', '¡Oye, <target>! ¡Adivina lo que me dijo tu madre anoche!', '', ''),
('taunt', '<target>，你太丑了，你在猴子妓院里用一袋香蕉也得不到分数！', 0, 0, '', '<target>, tu es si moche que tu ne pourrais pas marquer dans un bordel de singes avec un sac de bananes!', '', '', '', '<target>, ¡eres tan feo que no podrías anotar en un burdel de monos con una bolsa de plátanos!', '', ''),
('taunt', '闭嘴 <target>，你永远成为不了你妈妈那样的男人！！', 0, 0, '', 'Tais-toi <target>, tu ne seras jamais l\'homme qu\'est ta mère!!', '', '', '', 'Cállate <target>, ¡nunca serás el hombre que es tu madre!', '', ''),
('taunt', '你妈妈是仓鼠，你爸爸闻起来像接骨木！！！', 0, 0, '', 'Ta mère était un hamster et ton père sentait le sureau!!!!', '', '', '', 'Tu madre era un hámster y tu padre olía a bayas de saúco!!!!', '', ''),
('taunt', '我不想再和你说话了，你这个没脑子的动物食槽擦！！！', 0, 0, '', 'Je ne veux plus te parler, espèce d\'essuyeur d\'abreuvoirs pour animaux tête vide!!!', '', '', '', '¡¡No quiero hablar más contigo, limpiaparabrisas de cabeza vacía!', '', ''),
('taunt', '我对你的大致方向放屁！！！', 0, 0, '', 'Je pète dans votre direction générale!!!', '', '', '', '¡¡Me tiro un pedo en tu dirección general!!!', '', ''),
('taunt', '去把你的屁股煮了，你这个愚蠢的人！！！', 0, 0, '', 'Va te faire cuire le cul, fils d\'idiot!!!', '', '', '', '¡Ve y hierve tu trasero, hijo de una persona tonta!', '', ''),
('taunt', '你要怎么做 <target>，流血在我身上？来吧！', 0, 0, '', 'Qu\'est ce que tu vas faire <target>, saigner sur moi? A VOUS!', '', '', '', '¿Qué vas a hacer <target>, llorar?', '', ''),
('taunt', 'M-O-O-N！那是仇恨！', 0, 0, '', 'PUNAISE! Ce sort aggro!', '', '', '', '¡LUNA! ¡Eso deletrea agresividad!', '', ''),
('taunt', '你几乎和参加踢屁股比赛的独腿男人一样有用。', 0, 0, '', 'Tu es à peu près aussi utile qu\'un homme unijambiste dans un concours de coups de pied au cul.', '', '', '', 'Eres tan útil como un hombre con una sola pierna en un concurso de patadas en el culo.', '', ''),
('taunt', '嘿 <target>！别对他们献殷勤了，他们不是你的类型。他们不是充气的。', 0, 0, '', 'Hey <target>! Arrête de les draguer, ce n\'est pas ton genre. Ils ne sont pas gonflables.', '', '', '', '¡Oye, <target>! Deja de coquetear con ellos, no son tu tipo. No son inflables.', '', ''),
('taunt', '<target> 你太离谱了，你玩的是另一种运动。', 0, 0, '', '<target> vous êtes tellement hors de votre ligue que vous pratiquez un sport différent.', '', '', '', '<target> estás tan lejos de tu liga, estás jugando un deporte diferente.', '', ''),
('taunt', '你今天犯了一个大错误 <target>，你起床了。', 0, 0, '', 'Tu as fait une grosse erreur aujourd\'hui <target>, tu es sorti du lit.', '', '', '', 'Cometiste un gran error hoy <target>, te levantaste de la cama.', '', ''),
('taunt', '我想试试变成一匹马，但我需要帮助。我会是前半部分，你做你自己。', 0, 0, '', 'Je veux essayer de me transformer en cheval, mais j\'ai besoin d\'aide. Je serai devant, tu seras toi-même.', '', '', '', 'Quiero intentar convertirme en un caballo, pero necesito ayuda. Yo seré el frente, tú mismo.', '', ''),
('taunt', '可以借你的脸用几天吗？我的屁股要去度假.....', 0, 0, '', 'Puis-je emprunter votre visage pendant quelques jours? Mon cul part en vacances....', '', '', '', '¿Me prestas tu cara por unos días? Mi culo se va de vacaciones...', '', ''),
('taunt', '我想给你一个离别礼物... 你先做你的一部分。', 0, 0, '', 'J\'aimerais vous offrir un cadeau de départ... D\'abord, donnes ta part.', '', '', '', 'Me gustaría darte un regalo de despedida... Primero haz tu parte.', '', ''),
('taunt', '你来了之前我们都饿了，现在我们只是厌烦了。', 0, 0, '', 'Avant que tu n\'arrives nous avions faim, maintenant nous en avons juste marre.', '', '', '', 'Antes de que llegaras teníamos hambre, ahora estamos hartos', '', ''),
('taunt', '我喜欢你。人们说我没有品味，但我喜欢。', 0, 0, '', 'Je t\'aime bien. Les gens disent que je n\'ai pas de goût, mais je t\'aime bien.', '', '', '', 'Me gustas. La gente dice que no tengo gusto, pero me gustas.', '', ''),
('taunt', '我觉得你有一种自卑情结，但这没关系，这是有理由的。', 0, 0, '', 'Je pense que tu as un complexe d\'infériorité, mais il n\'y a pas de problème, c\'est justifié.', '', '', '', 'Creo que tienes complejo de inferioridad, pero está bien, está justificado', '', ''),
('taunt', '因此，腐烂的东西！不然我就把你的骨头从你的衣服里摇出来。', 0, 0, '', 'Par conséquent chose pourrie! Je vais secouer tes os de tes vêtements.', '', '', '', '¡Por lo tanto, cosa podrida! o te sacudiré los huesos de las vestiduras.', '', ''),
('taunt', '我不敢相信我竟然在和你浪费时间！', 0, 0, '', 'Je n\'arrive pas à croire que je perds mon temps avec toi!', '', '', '', '¡No puedo creer que estoy perdiendo el tiempo contigo!', '', ''),
('taunt', '我喜欢别人侮辱我，这意味着我不用再表现得那么友好了。', 0, 0, '', 'J\'adore quand quelqu\'un m\'insulte, ça veut dire que je n\'ai plus besoin d\'être gentil.', '', '', '', 'Me encanta cuando alguien me insulta, significa que ya no tengo que ser amable', '', ''),
('taunt', '你这个皮夹克，水晶扣子，结巴，呆瓜，呕吐袜，石鱼，光滑的舌头，西班牙袋子！', 0, 0, '', 'Toi l\'agent fédéral, pourpoint en cuir, bouton de cristal, anneau d\'agate, bas vomi, jarretière caddis, pochette espagnole!', '', '', '', '¡Tú, jubón de cuero, botón de cristal, anudado, ágata, medias de vómito, liga de caddis, lengua suave, bolsa española!', '', ''),
('taunt', '你这个颤抖的蝙蝠猫头鹰酒鬼！', 0, 0, '', 'Toi qualificatif de chauve-souris qui chasse le ver de malt!', '', '', '', '¡Tú, gusano de malta cazador de murciélagos!', '', ''),
('taunt', '你真是一个偶像，是那些白痴崇拜者的！！', 0, 0, '', 'Tu es vraiment une idole d\'adorateurs d\'idiots!', '', '', '', '¡Eres verdaderamente un ídolo de los adoradores de idiotas!', '', ''),
('taunt', '你这个天生的结巴呆瓜！', 0, 0, '', 'Tu es une bergeronnette printanière mal engendrée!', '', '', '', '¡Maldito lavandero nudoso!', '', ''),
('taunt', '你这个私生子曼德拉草，你更适合戴在我的帽子上，而不是跟在我脚后！', 0, 0, '', 'Toi putain de mandragore, tu es plus apte à être porté dans ma casquette qu\'à attendre sur mes talons!', '', '', '', '¡Hijo de puta mandrágora, eres mejor para que te lleve en mi gorra que para que me pise los talones!', '', ''),
('taunt', '你！你这个厨房小工！你这个流浪汉！你这个破布！我要挠你的灾难！', 0, 0, '', 'Toi ! Espèce de marmiton ! Espèce de rampallian ! Espèce de fusilier ! Je vais chatouiller ta catastrophe!', '', '', '', '¡Tú! ¡Scullion! ¡Ramaliano! ¡Fustilarista! ¡Te haré cosquillas en tu catástrofe!', '', ''),
('taunt', '哦 <target>！你这个传染性的坏教养亚麻女佣！', 0, 0, '', 'Oh <target>! Tu es contagieuse et mal nourrie!', '', '', '', '¡Oh, <target>! ¡Tú, contagiosa moza del lino mal educada!', '', ''),
('taunt', '我们在你的烟囱里漏水，<target>！', 0, 0, '', 'On a une fuite dans votre cheminée, <target>!', '', '', '', '¡Tenemos una fuga en tu chimenea, <target>!', '', ''),
('taunt', '哦，你这个无用的沼泽吸出的癌花！', 0, 0, '', 'Oh toi, fleur de chancre sucée par les marais sans botte!', '', '', '', '¡Oh tú, flor de cancro chupada por el pantano sin botas!', '', ''),
('taunt', '要是我像你一样，我就把自己扔了！', 0, 0, '', 'Si j\'étais comme toi, je me jetterais!', '', '', '', '¡Si yo fuera como tú, me tiraría a la basura!', '', ''),
('taunt', '教我 <target>，怎么忘记思考！', 0, 0, '', 'O apprends-moi <target>, comme je devrais oublier de penser!', '', '', '', '¡Oh, enséñame <target>, cómo debo olvidarme de pensar!', '', ''),
('taunt', '你真的被诅咒了，像一个烤得一边焦的蛋，全在一边！', 0, 0, '', 'Vraiment tu es damné, comme un œuf mal rôti, tout d\'un côté!', '', '', '', '¡Verdaderamente estás condenado, como un huevo mal asado, todo de un lado!', '', ''),
('taunt', '你这个饥饿的，你这个鳗鱼皮，你这个干牛舌，你这个公牛的小便，你这个鱼干 - 哦，呼吸一下，说出像你这样的东西！-你这个裁缝的院子，你这个鞘，你这个弓盒，你这个卑鄙的立式褶皱！', 0, 0, '', 'Toi affamé, espèce de peau d\'anguille, ta langue bien séchée, espèce de taureau, poisson séché, O pour le souffle de dire ce qui te ressemble !! -espèce de vergue de tailleur, espèce de fourreau, espèce d\'étui à archet, vil tuck debout', '', '', '', 'Estás muerto de hambre, piel de anguila, te secaste la lengua limpiamente, toro-pizzle, pescado-O para respirar pronunciar lo que es como tú !! ¡Tú, sastrería, vaina, estuche de arco, vil flaco de pie!', '', ''),
('taunt', '哼！掉进死亡的腐烂嘴里！', 0, 0, '', 'Fi ! Jette-toi dans la bouche pourrie de la Mort!', '', '', '', '¡Fie! ¡Déjate caer en la podrida boca de la Muerte!', '', ''),
('taunt', '<target>，你是个鱼贩！', 0, 0, '', '<target>, vous êtes poissonnier!', '', '', '', '<target>, ¡eres un pescadero!', '', ''),
('taunt', '我会活下去，敲碎你的脑袋！', 0, 0, '', 'Je vivrai pour te faire sauter la cervelle!', '', '', '', '¡Viviré para romperte los sesos!', '', ''),
('taunt', '最浅的是你，<target>！！你是一块好肉，确实只是蠕虫肉！！', 0, 0, '', 'Tu es très superficiel, <target>!! Tu es de la viande de vers par rapport à un bon morceau de chair, en effet!!', '', '', '', '¡¡Eres el más superficial, <target>!! ¡Eres carne de gusano con respecto a un buen trozo de carne, de hecho!', '', ''),
('taunt', '卑鄙的恶棍！哦 <target>，你这个臭烘烘的地狱讨厌的猪头！', 0, 0, '', 'Misérable ! O <target>, toi, ignoble cochon de l\'enfer!', '', '', '', '¡Miserable vil! ¡Oh, <target>, fétido cerdo odiado por el infierno!', '', ''),
('taunt', '<target>！你的吻就像冻冰的水对一个饿了的蛇一样毫无安慰！', 0, 0, '', '<target>! Ton baiser est aussi désagréable que de l\'eau gelée pour un serpent affamé!', '', '', '', '<target>! ¡Tu beso es tan desconsolador como el agua helada para una serpiente hambrienta!', '', ''),
('taunt', '我鄙视你，卑鄙的伴侣。什么，你这个可怜的，卑鄙的，作弊的，缺衣少食的伴侣！走开，你这个发霉的流氓，走开！', 0, 0, '', 'Je te méprise, compagnon du scorbut. Quoi, pauvre, bas, coquin, tricheur, camarade en manque de linge ! Partez, espèce de voyou moisi, partez!', '', '', '', 'Te desprecio, compañero escorbuto. ¡Qué, pobre, vil, pícaro, tramposo, compañero falto de lino! ¡Fuera, mohoso granuja, fuera!', '', ''),
('taunt', '让我的眼睛远离你 %target！', 0, 0, '', 'Hors de ma vue! Tu infectes mes yeux <target>!', '', '', '', '¡Fuera de mi vista! ¡Me infectas los ojos <target>!', '', ''),
('taunt', '玩耍时间！！！', 0, 0, '', 'RÉCRÉATION!!!!', '', '', '', '¡¡¡HORA DE JUGAR!!!!', '', ''),
('taunt', '无人能通过！', 0, 0, '', 'Personne ne passera!', '', '', '', '¡Ninguno pasará!', '', ''),
('taunt', '我们遭到攻击！广大的，你们这些水手们！击退入侵者！', 0, 0, '', 'Nous sommes attaqués ! Un vaste écouvillons! Repoussez les envahisseurs!', '', '', '', '¡Estamos bajo ataque! ¡Un vasto, hisopos! ¡Repeler a los invasores!', '', ''),
('taunt', '无人可以挑战兄弟会！', 0, 0, '', 'Personne ne peut défier la Confrérie!', '', '', '', '¡Nadie puede desafiar a la Hermandad!', '', ''),
('taunt', '傻瓜们...杀了那个穿裙子的！', 0, 0, '', 'Foolsss... Tuez celui qui porte la robe!', '', '', '', 'Tontosss... ¡Matad al del vestido!', '', ''),
('taunt', '我会把你的灵魂喂给哈卡本人！', 0, 0, '', 'Je donnerai ton âme à Hakkar lui-même! ', '', '', '', '¡Le daré de comer con tu alma al mismísimo Hakkar! ', '', ''),
('taunt', '骄傲预示着你们世界的末日！来吧，凡人！面对<randomfaction>的愤怒！', 0, 0, '', 'La fierté annonce la fin de votre monde ! Venez, mortels ! Affrontez la colère des <randomfaction>!', '', '', '', '¡El orgullo anuncia el fin de tu mundo! ¡Venid, mortales! ¡Enfréntate a la ira de la <facción aleatoria>!', '', ''),
('taunt', '我所有的计划都指向了这一刻！', 0, 0, '', 'Tous mes plans ont mené à cela!', '', '', '', '¡Todos mis planes me han llevado a esto!', '', ''),
('taunt', '啊！更多的待宰羔羊！', 0, 0, '', 'Ahhh ! Plus d\'agneaux à l\'abattoir!', '', '', '', '¡Ahh! ¡Más corderos al matadero!', '', ''),
('taunt', '又一天，又一场辉煌的战斗！', 0, 0, '', 'Un autre jour, une autre bataille glorieuse!', '', '', '', '¡Otro día, otra batalla gloriosa!', '', ''),
('taunt', '那么，是生意...还是享乐？', 0, 0, '', 'Alors, affaires... ou plaisir?', '', '', '', 'Entonces, ¿negocios... o placer?', '', ''),
('taunt', '你们还没有准备好！', 0, 0, '', 'Vous n\'êtes pas prêt!', '', '', '', '¡No estás preparado!', '', ''),
('taunt', '<randomfaction>的最终征服已经开始！再次，这个世界的征服就在我们的掌握之中。一个都不要留下！', 0, 0, '', 'La conquête finale de la <randomfaction> a commencé ! Une fois de plus, l\'assujettissement de ce monde est à notre portée. Que personne ne survive!', '', '', '', '¡La conquista final de <randomfaction> ha comenzado! Una vez más, la subyugación de este mundo está a nuestro alcance. ¡Que nadie sobreviva! ', '', ''),
('taunt', '你的死亡将会是痛苦的。', 0, 0, '', 'Ta mort sera douloureuse.', '', '', '', 'Tu muerte será dolorosa. ', '', ''),
('taunt', '哭求怜悯吧！你们毫无意义的生命即将被剥夺。', 0, 0, '', 'Crie miséricorde ! Vos vies insignifiantes seront bientôt perdues.', '', '', '', '¡Llora por piedad! Sus vidas sin sentido pronto se perderán. ', '', ''),
('taunt', '放弃所有希望！<randomfaction>已经回来完成多年前开始的事业。这一次，不会有任何逃脱！', 0, 0, '', 'Abandonner tout espoir! La <randomfaction> est revenue pour terminer ce qui avait été commencé il y a tant d\'années. Cette fois, il n\'y aura pas d\'échappatoire!', '', '', '', '¡Abandona toda esperanza! La <randomfaction> ha regresado para terminar lo que comenzó hace tantos años. ¡Esta vez no habrá escapatoria! ', '', ''),
('taunt', '警报！你被标记为灭绝目标！', 0, 0, '', 'Alerte! Vous êtes marqué pour l\'extermination!', '', '', '', '¡Alerta! ¡Estás marcado para el exterminio! ', '', ''),
('taunt', '<subzone>仅为客人开放...', 0, 0, '', 'La <subzone> est réservée aux invités...', '', '', '', 'La <subzone> es solo para invitados...', '', ''),
('taunt', '哈哈，你们根本无法匹敌！', 0, 0, '', 'Hahaha! Vous êtes désespérément surpassé!', '', '', '', '¡Ja, ja, ja! ¡Estás irremediablemente superado!', '', ''),
('taunt', '我会粉碎你们对宏伟的幻想！', 0, 0, '', 'Je vais écraser vos illusions de grandeur!', '', '', '', '¡Aplastaré tus delirios de grandeza! ', '', ''),
('taunt', '原谅我，因为你即将输掉这场游戏。', 0, 0, '', 'Pardonnez-moi, car vous êtes sur le point de perdre la partie.', '', '', '', 'Perdóname, porque estás a punto de perder el juego.', '', ''),
('taunt', '挣扎只会让情况更糟。', 0, 0, '', 'Lutter ne fait qu\'empirer les choses.', '', '', '', 'La lucha solo lo empeora.', '', ''),
('taunt', '害虫！水蛭！拿走我的血，噎死你们！', 0, 0, '', 'Vermine! sangsues ! Prends mon sang et étouffe-toi avec!', '', '', '', '¡Alimañas! ¡Sanguijuelas! ¡Toma mi sangre y atragantate con ella!', '', ''),
('taunt', '不是再一次... 不是再一次！', 0, 0, '', 'Pas encore... PAS ENCORE!', '', '', '', 'No otra vez... ¡NO OTRA VEZ!', '', ''),
('taunt', '我的血将会是你们的末日！', 0, 0, '', 'Mon sang sera ta fin!', '', '', '', '¡Mi sangre será tu fin!', '', ''),
('taunt', '很好，现在你们来对付我！', 0, 0, '', 'Bien, maintenant tu me combats!', '', '', '', 'Bien, ¡ahora pelea conmigo!', '', ''),
('taunt', '快点行动，守卫们！是杀戮时间！', 0, 0, '', 'Allez-y, gardes ! Ça va tuer le temps!', '', '', '', '¡Muévanse, guardias! ¡Será para matar el tiempo!', '', ''),
('taunt', '别拖延你的命运。现在就来找我。我会让你的牺牲迅速。', 0, 0, '', 'Ne retardez pas votre destin. Viens à moi maintenant. Je fais votre sacrifice rapide.', '', '', '', 'No demores tu destino. Ven a mí ahora. Hago que tu sacrificio sea rápido.', '', ''),
('taunt', '你很快就要死了！', 0, 0, '', 'Tu es mort bien assez tôt!', '', '', '', '¡Estarás muerto lo suficientemente pronto!', '', ''),
('taunt', '穆阿-哈哈！', 0, 0, '', 'Mua-ha-ha!', '', '', '', '¡Mua-ja-ja!', '', ''),
('taunt', '我是捕食者！你们是猎物...', 0, 0, '', 'Je suis un prédateur ! Tu es une proie...', '', '', '', '¡Soy un depredador! Eres presa...', '', ''),
('taunt', '你们将以碎片离开！', 0, 0, '', 'Tu vas partir en morceaux!', '', '', '', '¡Te vas a ir en pedazos!', '', ''),
('taunt', '死亡即将来临。你的良心会清白吗？', 0, 0, '', 'La mort vient. Votre conscience sera-t-elle claire?', '', '', '', 'La muerte llega. ¿Tu conciencia estará limpia? ', '', ''),
('taunt', '你的行为不会被容忍。', 0, 0, '', 'Votre comportement ne sera pas toléré.', '', '', '', 'Tu comportamiento no será tolerado', '', ''),
('taunt', '温室只为客人开放。', 0, 0, '', 'La Ménagerie est réservée aux invités.', '', '', '', 'The Menagerie es solo para invitados', '', ''),
('taunt', '嗯，未经宣布的访客，必须做准备...', 0, 0, '', 'Hmm, visiteurs inopinés, il faut faire des préparatifs...', '', '', '', 'Hmm, visitantes inesperados, se deben hacer preparativos... ', '', ''),
('taunt', '检测到敌对实体。威胁评估协议激活。主要目标已接战。重新评估前剩余三十秒。', 0, 0, '', 'Entités hostiles détectées. Protocole d\'évaluation de la menace actif. Cible principale engagée. Délai de réévaluation moins trente secondes.', '', '', '', 'Entidades hostiles detectadas. Protocolo de evaluación de amenazas activo. Objetivo principal comprometido. Tiempo menos treinta segundos para la reevaluación.', '', ''),
('taunt', '新玩具？给我？我保证这次不会弄坏它们！', 0, 0, '', 'Nouveaux jouets? Pour moi? Promis je ne les casserai pas cette fois !', '', '', '', '¿Juguetes nuevos? ¿Para mi? ¡Te prometo que no los romperé esta vez!', '', ''),
('taunt', '我准备好玩耍了！', 0, 0, '', 'Je suis prêt à jouer!', '', '', '', '¡Estoy listo para jugar!', '', ''),
('taunt', '嘘... 很快就结束了。', 0, 0, '', 'Chut... tout sera bientôt fini.', '', '', '', 'Shhh... todo terminará pronto.', '', ''),
('taunt', '啊啊啊啊咕咕咕咕咕咕！', 0, 0, '', 'Aaaaaughibbrgubugbugrguburgle!', '', '', '', '¡Aaaaaughibbrgubugbugrguburgle!', '', ''),
('taunt', '呜呜呜呜呜呜呜呜呜呜！', 0, 0, '', 'RwlRwlRwlRwl!', '', '', '', 'RwlRwlRwlRwl!', '', ''),
('taunt', '你也将服务！', 0, 0, '', 'Toi aussi, tu serviras!', '', '', '', '¡Tú también, debes servir!', '', ''),
('taunt', '告诉我... 告诉我一切！淘气的秘密！我会从你的肉体中撕裂出秘密！', 0, 0, '', 'Dis-moi... dis-moi tout ! Secrets coquins ! J\'arracherai les secrets de ta chair!', '', '', '', 'Cuéntame... ¡cuéntame todo! ¡Secretos traviesos! ¡Arrancaré los secretos de tu carne!', '', ''),
('taunt', '准备好，钟声已经敲响！保护你的弱者，你的孩子和老人！你们每个人都将付出最终的代价！哭求怜悯，清算已经来临！', 0, 0, '', 'Préparez-vous, les cloches ont sonné ! Mettez à l\'abri vos faibles, vos jeunes et vos vieux ! Chacun de vous paiera la somme finale ! Implorez la miséricorde , le jugement est venu!', '', '', '', '¡Prepárense, las campanas han doblado! ¡Abriga a tus débiles, a tus jóvenes ya tus viejos! ¡Cada uno de ustedes pagará la suma final! Clama por misericordia, el ajuste de cuentas ha llegado!', '', ''),
('taunt', '我到底在哪里？', 0, 0, '', 'Où suis-je dans les boutons en laiton de Bonzo?', '', '', '', '¿Dónde estoy en los botones de latón de Bonzo?', '', ''),
('taunt', '我再也受不了了！地精王！地精王！无论你在哪里！把这个<target>从我身边带走！', 0, 0, '', 'Je ne peux plus le supporter ! Roi Gobelin ! Roi Gobelin ! Où que vous soyez ! Emmenez cette <target> loin de moi!', '', '', '', '¡No puedo soportarlo más! ¡Rey de los duendes! ¡Rey de los duendes! ¡WHERE quiera que estés! ¡Lleva a este <target> lejos de mí!', '', ''),
('taunt', '你有十三个小时解决这个迷宫，否则你的小弟弟将永远成为我们的一员...', 0, 0, '', 'Vous avez treize heures pour résoudre le labyrinthe, avant que ton petit frère ne devienne l\'un des nôtres... pour toujours.', '', '', '', 'Tienes trece horas para resolver el laberinto, antes de que tu hermanito se convierta en uno de nosotros... para siempre', '', ''),
('taunt', '那么，<subzone>是小菜一碟，对吧？我们看看你怎么处理这个小片...', 0, 0, '', 'Donc, la <subzone> est un jeu d\'enfant, n\'est-ce pas ? Eh bien, voyons comment tu gères cette petite tranche...', '', '', '', 'Entonces, la <subzone> es pan comido, ¿verdad? Bueno, veamos cómo lidias con esta pequeña porción... ', '', ''),
('taunt', '后退，我会接受你的挑战，固执地挑战任何人，我知道你错了，这里不是你该待的地方。', 0, 0, '', 'Reculez, je vais vous attaquer, têtu à affronter n\'importe qui, je sais que vous vous trompez, et ce n\'est pas votre place', '', '', '', 'Atrás, te enfrentaré, testarudo para enfrentar a cualquiera, sé que estás equivocado, y este no es el lugar al que perteneces', '', ''),
('taunt', '让我看看你有什么本事！', 0, 0, '', 'Montre-moi ce que tu as!', '', '', '', '¡Muéstrame lo que tienes!', '', ''),
('taunt', '至死方休！', 0, 0, '', 'A la mort!', '', '', '', '¡Hasta la muerte!', '', ''),
('taunt', '双刃行动，每次清洁剃须都干净利落。', 0, 0, '', 'Action à double lame, pour un rasage de près propre à chaque fois.', '', '', '', 'Acción de cuchilla doble, para un afeitado limpio y apurado en todo momento.', '', ''),
('taunt', '放马过来！', 0, 0, '', 'Allez-y!', '', '', '', '¡Adelante!', '', ''),
('taunt', '你就要倒下了！', 0, 0, '', 'Tu descends!', '', '', '', '¡Vas a caer!', '', ''),
('taunt', '刺刺刺！', 0, 0, '', 'Coup de poignard poignardé!', '', '', '', '¡Puñalada puñalada puñalada!', '', ''),
('taunt', '让我们快点结束，时间就是法力。', 0, 0, '', 'Finissons-en vite , le temps c\'est du mana.', '', '', '', 'Terminemos con esto rápido, el tiempo es maná.', '', ''),
('taunt', '我不认为你意识到了你处境的严重性。', 0, 0, '', 'Je ne pense pas que tu te rendes compte de la gravité de ta situation.', '', '', '', 'No creo que te des cuenta de la gravedad de tu situación.', '', ''),
('taunt', '我将为我的家族和我的王国带来荣耀！', 0, 0, '', 'Je ferai honneur à ma famille et à mon royaume!', '', '', '', '¡Llevaré honor a mi familia y mi reino!', '', ''),
('taunt', '光啊，给我力量！', 0, 0, '', 'Lumière, donne-moi la force!', '', '', '', '¡Luz, dame fuerza!', '', ''),
('taunt', '我的教堂就是战场 - 是时候崇拜了...', 0, 0, '', 'Mon église est le champ de bataille - il est temps d\'adorer...', '', '', '', 'Mi iglesia es el campo de batalla - hora de adorar...', '', ''),
('taunt', '我对你嗤之以鼻...', 0, 0, '', 'Je te méprise...', '', '', '', 'Te tengo en desacato...', '', ''),
('taunt', '面对正义之锤的审判！', 0, 0, '', 'Affrontez le marteau de la justice!', '', '', '', '¡Enfréntate al martillo de la justicia!', '', ''),
('taunt', '用光明证明你的实力！', 0, 0, '', 'Prouvez votre valeur dans l\'épreuve des armes sous la Lumière!', '', '', '', '¡Demuestra tu valía en la prueba de las armas bajo la Luz!', '', ''),
('taunt', '所有人都必须屈服于我事业的力量和正义之下，你将是下一个！', 0, 0, '', 'Tout doit tomber devant la force et le droit de ma cause, vous serez le prochain!', '', '', '', 'Todo debe caer ante el poder y el derecho de mi causa, ¡tú serás el próximo!', '', ''),
('taunt', '准备去死吧！', 0, 0, '', 'Préparez-vous à mourir!', '', '', '', '¡Prepárate para morir!', '', ''),
('taunt', '与我同在的野兽比起我内心的野兽来说微不足道...', 0, 0, '', 'La bête avec moi n\'est rien comparée à la bête à l\'intérieur...', '', '', '', 'La bestia conmigo no es nada comparada con la bestia interior...', '', ''),
('taunt', '见证这个全副武装的猎人的火力！', 0, 0, '', 'Soyez témoin de la puissance de feu de ce chasseur entièrement armé!', '', '', '', '¡Sea testigo de la potencia de fuego de este cazador completamente armado!', '', ''),



-- combat events
('critical health', '治疗我！快！', 0, 0, '', 'Soigne moi! Vite!', '', '', '', '¡Cúrame! ¡Rápido!', '', ''),
('critical health', '快要死了！治疗我！', 0, 0, '', 'Presque mort! Soigne moi!', '', '', '', '¡Estoy casi muerto! ¡Cúrame!', '', ''),
('critical health', '救命！治疗我！', 0, 0, '', 'Aider! Soigne moi!', '', '', '', '¡Ayuda! ¡Cúrame!', '', ''),
('critical health', '有人吗！治疗我！', 0, 0, '', 'Quelqu\'un! Soigne moi!', '', '', '', '¡Alguien! ¡Cúrame!', '', ''),
('critical health', '治疗！治疗！治疗！', 0, 0, '', 'Soigner! Soigner! Soigner!', '', '', '', '¡Curame! ¡Saname! ¡Socorro!', '', ''),
('critical health', '我要死了！治疗！啊！！！', 0, 0, '', 'Je meurs! Soigner! Aaaaarhg!', '', '', '', '¡Me estoy muriendo! ¡Saname! ¡Aaaaarhg!', '', ''),
('critical health', '治疗我！', 0, 0, '', 'Soigne moi!', '', '', '', '¡Cúrame!', '', ''),
('critical health', '我会死的。我会死的。我会死的。治疗我！', 0, 0, '', 'Je vais mourir. Je vais mourir. Je vais mourir. Soigner!', '', '', '', 'Voy a morir. Voy a morir. Voy a morir. ¡Saname!', '', ''),
('critical health', '治疗师们，你们在哪里？我要死了！', 0, 0, '', 'Guérisseurs, où êtes-vous ? Je meurs!', '', '', '', 'Sanadores, ¿dónde estais? ¡Me estoy muriendo!', '', ''),
('critical health', '哦，好痛。快治疗我！', 0, 0, '', 'Ah la douleur. Guéris-moi vite!', '', '', '', 'Ouch, qué dolor. ¡Cúrame rápido!', '', ''),



('low health', '需要治疗', 0, 0, '', 'Besoin de guérir', '', '', '', 'Necesito una cura', '', ''),
('low health', '血量低', 0, 0, '', 'Santé faible', '', '', '', 'Salud baja', '', ''),
('low health', '请给我一个治疗。', 0, 0, '', 'Dépose un soin. S\'il te plaît.', '', '', '', 'Una sanación por favor.', '', ''),
('low health', '有人可以给我治疗一下吗？', 0, 0, '', 'Quelqu\'un pourrait-il me soigner?', '', '', '', '¿Alguien podría curarme?', '', ''),
('low health', '最好现在就治疗我，别犹豫！', 0, 0, '', 'Hey! Mieux vaut me soigner maintenant que rez plus tard', '', '', '', '¡Oye! Mejor curarme ahora que resucitarme después', '', ''),
('low health', '抱歉，还需要一个治疗。', 0, 0, '', 'Je suis désolé. J\'ai besoin d\'un autre soin', '', '', '', 'Lo siento. Necesito otra curación', '', ''),
('low health', '见鬼，牧师。请治疗我。', 0, 0, '', 'Maudits mobs. Guéris moi s\'il te plait', '', '', '', '¡Malditos bichos! ¡Una curita por favor!', '', ''),
('low health', '再碰一下我就死了，请快速治疗！', 0, 0, '', 'Un coup de plus et c\'est fini. Guéris moi s\'il te plait', '', '', '', 'Un golpe más y estoy acabado. Cura por favor', '', ''),
('low health', '这还有治疗么？', 0, 0, '', 'Y a-t-il des guérisseurs?', '', '', '', '¿Hay sanadores?', '', ''),
('low health', '为啥总冲着我来，速度治疗我。', 0, 0, '', 'Pourquoi me frappent-ils toujours au visage? Besoin de soins', '', '', '', '¿Por qué siempre me golpean en la cara? Necesito sanacion', '', ''),
('low health', '谁能给我一点治疗。', 0, 0, '', 'Quelqu\'un peut-il me guérir un peu?', '', '', '', '¿Alguien puede curarme un poco?', '', ''),



('low mana', '法力值耗尽', 0, 0, '', 'MOO', '', '', '', 'No tengo mana!', '', ''),
('low mana', '我用完了法力', 0, 0, '', 'je n\'ai plus de mana', '', '', '', 'No tengo maná', '', ''),
('low mana', '该死的，我把所有法力都浪费在这个上了', 0, 0, '', 'Putain j\'ai gaspillé tout mon mana sur ça', '', '', '', 'Me cago en todo! Malgasté todo mi maná enseguida', '', ''),
('low mana', '你应该等我喝药水或者法力恢复', 0, 0, '', 'Vous devriez attendre que je boive ou que je régénère mon mana', '', '', '', 'Deberías esperar hasta que beba o regenere mi maná', '', ''),
('low mana', '法力值低', 0, 0, '', 'Mana faible', '', '', '', 'Maná bajo', '', ''),
('low mana', '又没法力了。', 0, 0, '', 'Pas de mana. De nouveau?', '', '', '', 'Sin maná. ¿Otra vez?', '', ''),
('low mana', '法力值低。想喝药水', 0, 0, '', 'Mana faible. Je veux boire', '', '', '', 'Maná bajo. Quiero beber', '', ''),
('low mana', '我们有自动售货机吗？又没法力了', 0, 0, '', 'Avons-nous un distributeur automatique? Plus de mana à nouveau', '', '', '', '¿Tenemos una máquina expendedora? Sin maná otra vez', '', ''),
('low mana', '我的法力已成历史', 0, 0, '', 'Mon mana appartient à l\'histoire', '', '', '', 'Mi maná es historia', '', ''),
('low mana', '下次我会去买点饮料。法力又用完了', 0, 0, '', 'Je prendrais quelques verres la prochaine fois. Manque de mana', '', '', '', '¡No tengo maná! Tengo que comprar bebidas la próxima vez...', '', ''),
('low mana', '我的法力呢？', 0, 0, '', 'Où est mon mana?', '', '', '', '¿Dónde está mi maná?', '', ''),



('low ammo', '我只剩下几个<弹药>了！', 0, 0, '', 'Il me reste peu de <ammo>!', '', '', '', '¡Me quedan pocas <ammo>!', '', ''),
('low ammo', '我需要更多的<弹药>！', 0, 0, '', 'J\'ai besoin de plus de <ammo>!', '', '', '', '¡Necesito más <ammo>!', '', ''),
('low ammo', '只剩下100 <弹药>了！', 0, 0, '', 'Il reste 100 <ammo>!', '', '', '', '¡Quedan 100 <ammo>!', '', ''),



('no ammo', '到此为止了！没<弹药>了！', 0, 0, '', 'C\'est ça! Pas de <ammo>!', '', '', '', '¡Eso es todo! ¡Sin <ammo>!', '', ''),
('no ammo', '你拿到了我的弓... 哎呀，没<弹药>了！', 0, 0, '', 'Et vous avez mon arc... Oups, pas de <ammo>!', '', '', '', 'Y tú tienes mi arco... ¡Uy, sin <ammo>!', '', ''),
('no ammo', '需要<弹药>！', 0, 0, '', 'Besoin de munitions!', '', '', '', '¡Necesito munición!', '', ''),



('aoe', '哦，天哪！', 0, 0, '', 'Oh mon Dieu!', '', '', '', '¡Oh, Dios!', '', ''),
('aoe', '我害怕', 0, 0, '', 'j\'ai peur', '', '', '', 'Tengo miedo', '', ''),
('aoe', '我们完蛋了', 0, 0, '', 'Nous avons fini pour', '', '', '', 'Hemos terminado', '', ''),
('aoe', '这结束了', 0, 0, '', 'C\'est terminé', '', '', '', 'Esto se acabó', '', ''),
('aoe', '这现在就结束', 0, 0, '', 'Cela se termine maintenant', '', '', '', 'Esto termina ahora', '', ''),
('aoe', '有人可以施放暴风雪什么的吗？', 0, 0, '', 'Quelqu\'un pourrait-il lancer le blizzard ou quelque chose comme ça?', '', '', '', '¿Alguien podría lanzar ventisca o algo así?', '', ''),
('aoe', '该死的。坦克吸引了周围所有的怪物', 0, 0, '', 'Mince. Le tank a agro toutes les mobs autour', '', '', '', '¡Me cago en todo! El tanque atrajo a todos los mobs...', '', ''),
('aoe', '我们要死了。我们要死了。我们要死了。', 0, 0, '', 'Nous allons mourir. Nous allons mourir. Nous allons mourir.', '', '', '', 'Vamos a morir. Vamos a morir. Vamos a morir.', '', ''),
('aoe', '哇！这么多玩具可以玩', 0, 0, '', 'Ouah ! Tant de jouets avec lesquels jouer', '', '', '', '¡Vaya! Tantos juguetes con los que jugar', '', ''),
('aoe', '我要把你们全杀了！', 0, 0, '', 'Je vais tous les tuer!', '', '', '', '¡Voy a matarlos a todos!', '', ''),
('aoe', '如果坦克死了我们就完蛋了', 0, 0, '', 'Si le tank meurt, nous appartenons à l\'histoire', '', '', '', 'Si el tanque muere somos historia', '', ''),
('aoe', '啊啊啊啊！！', 0, 0, '', 'Aaaaaargh!', '', '', '', '¡Aaaaaargh!', '', ''),
('aoe', '雷罗伊！！！詹金斯！！！！！！！', 0, 0, '', 'LEEEEERROOOYYYYYYYYYYYY JENNKINNNSSSSSS!!!!!!!', '', '', '', 'LEEEEERROOOYYYYYYYYYYYY JENNKINNNSSSSSS!!!!!!!', '', ''),
('aoe', '好的。我们在AOE有什么？', 0, 0, '', 'D\'accord. Qu\'avons-nous en dégats de zone?', '', '', '', 'Claro. ¿Qué tenemos en AOE?', '', ''),
('aoe', '这变得有趣了', 0, 0, '', 'Cela devient intéressant', '', '', '', 'Esto se pone interesante', '', ''),
('aoe', '酷。把它们集中到一个地方，准备放火风暴', 0, 0, '', 'Cool. Rassemblez-les au même endroit pour un bon coup de flamme', '', '', '', 'Genial! Ponlos todos juntos para un buen ataque en area', '', ''),
('aoe', '杀！杀！杀！', 0, 0, '', 'Tuer! Tuer! Tuer!', '', '', '', '¡Matar! ¡Matar! ¡Matar!', '', ''),
('aoe', '我觉得我的裤子湿了', 0, 0, '', 'Je pense que mon pantalon est mouillé', '', '', '', 'Creo que mis pantalones están mojados', '', ''),
('aoe', '我们死定了', 0, 0, '', 'Nous sommes l\'histoire', '', '', '', 'Somos historia', '', ''),
('aoe', '我希望治疗者们已经准备好了。雷罗伊！', 0, 0, '', 'J\'espère que les guérisseurs sont prêts. Leeeeeroy!', '', '', '', 'Espero que los sanadores estén listos. ¡Leeeroy!', '', ''),
('aoe', '我希望他们不会来找我', 0, 0, '', 'j\'espère qu\'ils ont gagné, qu\'ils ne viendront pas pour moi', '', '', '', 'Espero que no vengan por mí', '', ''),
('aoe', '哦不。我看不清这场屠杀', 0, 0, '', 'Oh non. Je ne peux pas voir à ce massacre', '', '', '', 'Oh, no. No puedo ver esta matanza', '', ''),



-- on looting
('loot', '我希望那里会有一些钱', 0, 0, '', 'j\'espère qu\'il y aura de l\'argent', '', '', '', 'Espero que haya algo de dinero...', '', ''),
('loot', '战利品！战利品！', 0, 0, '', 'Butin! Butin!', '', '', '', '¡Botín! ¡Botín!', '', ''),
('loot', '我的宝贝', 0, 0, '', 'Mon précieux', '', '', '', 'Mi tesoro...', '', ''),
('loot', '我希望那里有一个闪亮的史诗级物品在等我', 0, 0, '', 'J\'espère qu\'il y a un objet épique brillant qui m\'attend ici', '', '', '', 'Espero que haya un objeto épico brillante esperándome allí', '', ''),
('loot', '我的口袋和包很深', 0, 0, '', 'J\'ai des poches et des sacs profonds', '', '', '', 'Tengo bolsillos profundos y infinitos', '', ''),
('loot', '全都是我的！', 0, 0, '', 'Tout est à moi!', '', '', '', '¡Todo es mío!', '', ''),
('loot', '希望今天没有灰色垃圾', 0, 0, '', 'J\'espère pas de merde grise aujourd\'hui', '', '', '', 'Espero que hoy no haya mierda gris', '', ''),
('loot', '这些战利品是我的！', 0, 0, '', 'Ce butin est à MOI!', '', '', '', '¡Este botín es MÍO!', '', ''),
('loot', '捡垃圾很恶心，但我需要钱', 0, 0, '', 'Le pillage est dégoûtant mais j\'ai besoin d\'argent', '', '', '', 'El saqueo es repugnante pero necesito dinero...', '', ''),
('loot', '金币！', 0, 0, '', 'Or!', '', '', '', '¡Oro!', '', ''),
('loot', '好吧。让我们看看他们有什么', 0, 0, '', 'D\'ACCORD. Voyons ce qu\'ils ont', '', '', '', 'OK. Veamos qué tienen', '', ''),
('loot', '不要担心。我会捡起一切', 0, 0, '', 'Ne t\'inquiète pas. je vais tout piller', '', '', '', 'No te preocupes. Saquearé todo', '', ''),
('loot', '我是捡垃圾的忍者', 0, 0, '', 'je suis un ninja de butin', '', '', '', 'Soy un ladron de tesoros', '', ''),
('loot', '我需要掷骰子吗？', 0, 0, '', 'Dois-je recommencer?', '', '', '', '¿Necesito lanzar dados?', '', ''),
('loot', '有人能告诉我，他们把所有这些东西都放在哪里了吗？', 0, 0, '', 'Quelqu\'un m\'explique, où ils ont mis tout ça?', '', '', '', 'Alguien me explica, ¿dónde pusieron todas estas cosas?', '', ''),
('loot', '不，我不会捡灰色垃圾', 0, 0, '', 'Non, je ne pillerai pas la merde grise', '', '', '', 'No, no saquearé mierda gris', '', ''),
('loot', '我是第一个。我是第一个。我是第一个。', 0, 0, '', 'Je suis le premier. Je suis le premier. Je suis le premier.', '', '', '', '¡Es mio! ¡Es mio! ¡Es mio!', '', ''),
('loot', '把钱给我！', 0, 0, '', 'Donne-moi ton argent!', '', '', '', '¡Dame todo tu dinero!', '', ''),
('loot', '我的口袋空了，我需要填满它们', 0, 0, '', 'Mes poches sont vides, j\'ai besoin de les remplir', '', '', '', 'Mis bolsillos están vacíos y necesitan llenarse!', '', ''),
('loot', '我为这个准备了一个新的包', 0, 0, '', 'J\'ai un nouveau sac pour ça', '', '', '', 'Tengo una nueva bolsa para esto', '', ''),
('loot', '我希望我在捡垃圾的时候不会吸引到任何人', 0, 0, '', 'J\'espère que je n\'agresserai personne pendant le pillage', '', '', '', 'Espero no ofender a nadie mientras saqueo', '', ''),
('loot', '请不要看。我在捡垃圾', 0, 0, '', 'S\'il vous plaît, ne regardez pas. je pille', '', '', '', 'Por favor, no mires. Estoy saqueando', '', ''),
('loot', '哈哈！你一点也得不到！', 0, 0, '', 'Ha! Vous n\'en aurez aucun morceau!', '', '', '', '¡Ja! ¡No obtendrás nada de eso!', '', ''),
('loot', '捡垃圾很酷', 0, 0, '', 'Le pillage c\'est cool', '', '', '', 'Saquear es genial', '', ''),
('loot', '我喜欢新装备', 0, 0, '', 'j\'aime le nouveau matos', '', '', '', 'Me gusta el equipo nuevo', '', ''),
('loot', '如果再没有值钱的东西，我就退出', 0, 0, '', 'J\'arrêterai s\'il n\'y a plus rien de précieux', '', '', '', 'Me doy por vencido si no hay nada util', '', ''),
('loot', '我希望它是一个漂亮的戒指', 0, 0, '', 'j\'espère que c\'est une jolie bague', '', '', '', 'Espero que sea un anillo bonito', '', ''),
('loot', '我会从你那里抢走战利品', 0, 0, '', 'Je t\'arracherai le butin', '', '', '', 'Te arrancaré el botín', '', ''),
('loot', '大家都别动。我要去捡垃圾了', 0, 0, '', 'Tout le monde reste à l\'écart. je vais piller', '', '', '', '¡Alejaos todos! Voy a lootear', '', ''),
('loot', '美妙的战利品', 0, 0, '', 'Doux butin', '', '', '', 'Dulce botín', '', ''),
('loot', '骰子之神！今天给我一个史诗吧', 0, 0, '', 'Le Dieu du rouleau ! Donnez-moi de l\'épique aujourd\'hui', '', '', '', '¡El Dios de los dados! Dame un epico hoy', '', ''),
('loot', '请给我新玩具', 0, 0, '', 'S\'il te plaît, donne-moi de nouveaux jouets', '', '', '', 'Por favor, dame nuevos juguetes', '', ''),
('loot', '我希望他们带着好吃的', 0, 0, '', 'J\'espère qu\'ils portent des saveurs', '', '', '', 'Espero que caiga algo sabrosos', '', ''),
('loot', '金币是我的。我会留下一切，我保证', 0, 0, '', 'L\'or est à moi. Je laisse tout, je promets', '', '', '', 'El oro es mío. Dejaré todo lo demas, lo prometo!', '', ''),
('loot', '不，我无法抗拒', 0, 0, '', 'Non, je ne peux pas résister', '', '', '', 'No, no puedo resistir', '', ''),
('loot', '我想要更多！', 0, 0, '', 'Je veux plus!', '', '', '', '¡Quiero más!', '', ''),



-- wait signals
('wait_travel_close', '我快到了，等我！', 0, 0, '', '', '', '', '', '¡Estoy cerca, espérame!', '', 'Я тут рядом, подожди!'),
('wait_travel_close', '我不远了，请等我！', 0, 0, '', '', '', '', '', 'No estoy lejos, ¡esperame por favor!', '', 'Я недалеко, погодите!'),



('wait_travel_medium', '我正朝你的位置前进', 0, 0, '', '', '', '', '', 'Me dirijo a tu ubicación', '', 'Двигаюсь к тебе'),
('wait_travel_medium', '我来找你了', 0, 0, '', '', '', '', '', 'Voy hacia ti', '', 'Иду к тебе'),



('wait_travel_far', '我正在前往你的位置', 0, 0, '', '', '', '', '', 'Voy a viajar a tu ubicación', '', 'Направляюсь к тебе'),
('wait_travel_far', '我正努力赶到你那里', 0, 0, '', '', '', '', '', 'Estoy tratando de llegar a ti', '', 'Пытаюсь до тебя добраться'),




-- commands
('equip_command', '装备%item', 0, 0, '', '', '', '', '', 'Me he equipado %item', '', ''),



('unequip_command', '%item未装备', 0, 0, '', '', '', '', '', 'Me he quitado %item', '', ''),



('auto_learn_spell', '我学会了以下法术：%spells', 0, 0, '', '', '', '', '', 'He aprendido los hechizos: %spells', '', ''),



('use_command_item_cooldown', '%item正在冷却中', 0, 0, '', '', '', '', '', '%item esta recargandose', '', ''),



('use_command_item_not_owned', '我的库存中没有%item', 0, 0, '', '', '', '', '', 'No tengo %item en mi inventario', '', ''),



('use_command_invalid_item', '带有id %item的物品不存在', 0, 0, '', '', '', '', '', 'El objeto con el id %item no existe', '', ''),



('use_command_socket', '将%gem镶嵌到%item中', 0, 0, '', '', '', '', '', 'Insertando %gem en %item', '', ''),



('use_command_item_error', '我不能使用%item', 0, 0, '', '', '', '', '', 'No puedo usar %item', '', ''),



('following', '跟随中', 0, 0, '', '', '', '', '', 'Te sigo', '', 'Следую'),



('staying', '停留中', 0, 0, '', '', '', '', '', 'Me quedo aqui', '', 'Стою'),



('fleeing', '逃跑中', 0, 0, '', '', '', '', '', 'Huyendo', '', 'Убегаю'),



('fleeing_far', '你太远了，我不会和你一起逃跑', 0, 0, '', '', '', '', '', 'No huiré contigo, estás demasiado lejos', '', 'Я с тобой не побегу, ты слишком далеко'),



('grinding', '磨砺中', 0, 0, '', '', '', '', '', 'Farmeando', '', 'Гриндю'),



('attacking', '攻击中', 0, 0, '', '', '', '', '', 'Atacando', '', 'Атакую'),



('error_far', '太远了', 0, 0, '', '', '', '', '', 'Estas demasiado lejos', '', 'Слишком далеко'),



('error_water', '在水下', 0, 0, '', '', '', '', '', 'Estas debajo del agua', '', 'Это под водой'),



('error_cant_go', '我不能去那里', 0, 0, '', '', '', '', '', 'No puedo ir allí', '', 'Я не могу туда пройти'),



('error_guild', '我不在你的公会里！', 0, 0, '', '', '', '', '', '¡No estoy en tu hermandad!', '', 'Я не в твоей гильдии'),



('error_gbank_found', '附近找不到公会银行', 0, 0, '', '', '', '', '', 'No se puede encontrar un banco de hermandad cercano', '', 'Не могу найти гильд банк рядом'),



('error_cant_put', '我不能放', 0, 0, '', '', '', '', '', 'No puedo depositar ', '', 'Я не могу положить'),



('error_gbank_rights', '我无权在第一个公会银行标签中放置物品 ', 0, 0, '', '', '', '', '', 'No tengo derechos para depositar objetos en la primera pestaña del banco de hermandad', '', 'Нет прав чтобы класть вещи в первую вкладку гильд банка'),



('gbank_put', '放到公会银行', 0, 0, '', '', '', '', '', ' depositado en el banco de hermandad', '', ' теперь в гильд банке'),



('free_moving', '自由移动', 0, 0, '', '', '', '', '', 'Moviendome libremente', '', ''),



('guarding', '守卫中', 0, 0, '', '', '', '', '', 'Protegiendo la posición', '', ''),



('use_command', '使用%target', 0, 0, '', '', '', '', '', 'Usando %target', '', ''),



('command_target_unit', '在%unit上', 0, 0, '', '', '', '', '', 'en %unit', '', ''),



('use_command_remaining', '（%amount可用）', 0, 0, '', '', '', '', '', '(%amount restante)', '', ''),



('use_command_last', '（最后一个）', 0, 0, '', '', '', '', '', '(el último)', '', ''),



('use_command_socket_error', '插槽不合适', 0, 0, '', '', '', '', '', 'La ranura no sirve', '', ''),



('command_target_trade', '在交易物品上', 0, 0, '', '', '', '', '', 'en objeto comerciado', '', ''),



('command_target_self', '在我自己身上', 0, 0, '', '', '', '', '', 'en mi', '', ''),



('command_target_item', '在%item上', 0, 0, '', '', '', '', '', 'en %item', '', ''),



('command_target_go', '在%gameobject上', 0, 0, '', '', '', '', '', 'en %gameobject', '', ''),



('loot_command', '捡起%item', 0, 0, '', '', '', '', '', 'Despojando %item', '', ''),



('cast_spell_command_summon', '召唤%target', 0, 0, '', '', '', '', '', 'Invocando a %target', '', ''),
('cast_spell_command_summon_error_members', '我周围没有足够的队伍成员来施放召唤', 0, 0, '', '', '', '', '', 'No tengo suficientes miembros de grupo alrededor para invocar', '', ''),
('cast_spell_command_summon_error_target', '找不到召唤目标', 0, 0, '', '', '', '', '', 'No he podido encontrar al objetivo de la invocación', '', ''),
('cast_spell_command_summon_error_combat', '我在战斗中不能召唤', 0, 0, '', '', '', '', '', 'No puedo invocar durante un combate', '', ''),



('cast_spell_command_error_unknown_spell', '我不知道%spell这个法术', 0, 0, '', '', '', '', '', 'No conozco el hechizo %spell', '', ''),



('cast_spell_command_spell', '施放%spell', 0, 0, '', '', '', '', '', 'Lanzando %spell', '', ''),



('cast_spell_command_craft', '制作%spell', 0, 0, '', '', '', '', '', 'Creando %spell', '', ''),



('cast_spell_command_error', '不能施放%spell', 0, 0, '', '', '', '', '', 'No puedo lanzar %spell', '', ''),
('cast_spell_command_error_failed', '施放%spell失败', 0, 0, '', '', '', '', '', 'Fallo al lanzar %spell', '', ''),



('cast_spell_command_amount', '|cffffff00(x%amount left)|r', 0, 0, '', '', '', '', '', ' |cffffff00(x%amount restante)|r', '', ''),




('dummy_end', '假人', 0, 0, '', '', '', '', '', '', '', '');

DROP TABLE IF EXISTS `ai_playerbot_texts_chance`;

CREATE TABLE IF NOT EXISTS `ai_playerbot_texts_chance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `probability` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=UTF8;

/*!40000 ALTER TABLE `ai_playerbot_texts_chance` DISABLE KEYS */;
INSERT INTO `ai_playerbot_texts_chance` (`id`, `name`, `probability`) VALUES
	(1, 'taunt', 30),
	(2, 'aoe', 75),
	(3, 'loot', 20);
/*!40000 ALTER TABLE `ai_playerbot_texts_chance` ENABLE KEYS */;