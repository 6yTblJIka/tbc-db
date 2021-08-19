DROP TABLE IF EXISTS gameobject_spawn_entry;
CREATE TABLE gameobject_spawn_entry(
`guid` INT UNSIGNED NOT NULL COMMENT 'Gameobject table guid',
`entry` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Gameobject Template entry',
PRIMARY KEY(`guid`,`entry`)
);

