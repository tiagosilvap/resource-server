CREATE TABLE `grupo` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `nome` varchar(60) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `permissao` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `descricao` varchar(60) NOT NULL,
    `nome` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `usuario` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `nome` varchar(80) NOT NULL,
    `email` varchar(255) NOT NULL,
    `senha` varchar(255) NOT NULL,
    `data_cadastro` datetime NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `grupo_permissao` (
    `grupo_id` bigint(20) NOT NULL,
    `permissao_id` bigint(20) NOT NULL,
    PRIMARY KEY (`grupo_id`,`permissao_id`),
    KEY `fk_grupo_permissao_permissao` (`permissao_id`),
    CONSTRAINT `fk_grupo_permissao_grupo` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`),
    CONSTRAINT `fk_grupo_permissao_permissao` FOREIGN KEY (`permissao_id`) REFERENCES `permissao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `usuario_grupo` (
    `usuario_id` bigint(20) NOT NULL,
    `grupo_id` bigint(20) NOT NULL,
    PRIMARY KEY (`usuario_id`,`grupo_id`),
    KEY `fk_usuario_grupo_grupo` (`grupo_id`),
    CONSTRAINT `fk_usuario_grupo_grupo` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`),
    CONSTRAINT `fk_usuario_grupo_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `oauth_client_details` (
    `client_id` varchar(255) NOT NULL,
    `resource_ids` varchar(256) DEFAULT NULL,
    `client_secret` varchar(256) DEFAULT NULL,
    `scope` varchar(256) DEFAULT NULL,
    `authorized_grant_types` varchar(256) DEFAULT NULL,
    `web_server_redirect_uri` varchar(256) DEFAULT NULL,
    `authorities` varchar(256) DEFAULT NULL,
    `access_token_validity` int(11) DEFAULT NULL,
    `refresh_token_validity` int(11) DEFAULT NULL,
    `additional_information` varchar(4096) DEFAULT NULL,
    `autoapprove` varchar(256) DEFAULT NULL,
    PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
