
DROP TABLE IF EXISTS user_roles;

CREATE TABLE `user_roles`(
`user_name` varchar(15),
`role_name` varchar(15),
`id_pk` int NOT NULL auto_increment,
PRIMARY KEY (`id_pk`)
) AUTO_INCREMENT=1;


CREATE TABLE `users` (
  `user_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_name` varchar(255) default NULL,
  `user_pass` varchar(255),
  `user_first_name` varchar(255) default NULL,
  `user_last_name` varchar(255) default NULL,
  `user_email` varchar(255) default NULL,
  `user_dateofbirth` varchar(255),
  `user_registered_date`TIMESTAMP NOT NULL DEFAULT current_timestamp,
  `user_photo_link` varchar(255),
  `user_city` varchar(255),
  PRIMARY KEY (`user_id`)
) AUTO_INCREMENT=1;


DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `user_id` mediumint(8) unsigned NOT NULL auto_increment,
  `user_name` varchar(255) default NULL,
  `user_pass` varchar(255),
  `user_first_name` varchar(255) default NULL,
  `user_last_name` varchar(255) default NULL,
  `user_email` varchar(255) default NULL,
  `user_dateofbirth` varchar(255),
  `user_registered_date`TIMESTAMP NOT NULL DEFAULT current_timestamp,
  `user_photo_link` varchar(255),
  `user_city` varchar(255),
  PRIMARY KEY (`user_id`)
) AUTO_INCREMENT=1;



