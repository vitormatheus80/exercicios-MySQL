CREATE TABLE `Usuarios` (
	`id_user` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`usuario` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id_user`)
);

CREATE TABLE `Temas` (
	`id_temas` INT NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
	PRIMARY KEY (`id_temas`)
);

CREATE TABLE `Postagens` (
	`id_post` INT NOT NULL AUTO_INCREMENT,
	`titulo` varchar(255) NOT NULL,
	`texto` varchar(1000) NOT NULL,
	`data` TIMESTAMP NOT NULL,
	`tema_id` INT NOT NULL,
	`user_id` INT NOT NULL,
	PRIMARY KEY (`id_post`)
);

ALTER TABLE `Usuarios` ADD CONSTRAINT `Usuarios_fk0` FOREIGN KEY (`id_user`) REFERENCES `Postagens`(`user_id`);

ALTER TABLE `Temas` ADD CONSTRAINT `Temas_fk0` FOREIGN KEY (`id_temas`) REFERENCES `Postagens`(`tema_id`);




