set foreign_key_checks = 0;

delete from grupo;
delete from grupo_permissao;
delete from oauth_client_details;
delete from permissao;
delete from usuario;
delete from usuario_grupo;

set foreign_key_checks = 1;

alter table grupo auto_increment = 1;
alter table grupo_permissao auto_increment = 1;
alter table oauth_client_details auto_increment = 1;
alter table permissao auto_increment = 1;
alter table usuario auto_increment = 1;
alter table usuario_grupo auto_increment = 1;


INSERT INTO resource_server.grupo (id, nome) VALUES (1, 'Gerente');
INSERT INTO resource_server.grupo (id, nome) VALUES (2, 'Vendedor');
INSERT INTO resource_server.grupo (id, nome) VALUES (3, 'Secretária');
INSERT INTO resource_server.grupo (id, nome) VALUES (4, 'Cadastrador');

INSERT INTO resource_server.usuario (id, nome, email, senha, data_cadastro) VALUES (1, 'Tiago Silva', 'tiago@gmail.com', '$2y$12$NSsM4gEOR7MKogflKR7GMeYugkttjNhAJMvFdHrBLaLp2HzlggP5W', '2022-11-02 02:52:00');
INSERT INTO resource_server.usuario (id, nome, email, senha, data_cadastro) VALUES (2, 'Maria Joaquina', 'maria.vnd@algafood.com.br', '$2y$12$NSsM4gEOR7MKogflKR7GMeYugkttjNhAJMvFdHrBLaLp2HzlggP5W', '2022-11-02 02:52:00');
INSERT INTO resource_server.usuario (id, nome, email, senha, data_cadastro) VALUES (3, 'José Souza', 'jose.aux@algafood.com.br', '$2y$12$NSsM4gEOR7MKogflKR7GMeYugkttjNhAJMvFdHrBLaLp2HzlggP5W', '2022-11-02 02:52:00');
INSERT INTO resource_server.usuario (id, nome, email, senha, data_cadastro) VALUES (4, 'Sebastião Martins', 'sebastiao.cad@algafood.com.br', '$2y$12$NSsM4gEOR7MKogflKR7GMeYugkttjNhAJMvFdHrBLaLp2HzlggP5W', '2022-11-02 02:52:00');
INSERT INTO resource_server.usuario (id, nome, email, senha, data_cadastro) VALUES (5, 'Manoel Lima', 'manoel.loja@gmail.com', '$2y$12$NSsM4gEOR7MKogflKR7GMeYugkttjNhAJMvFdHrBLaLp2HzlggP5W', '2022-11-02 02:52:00');
INSERT INTO resource_server.usuario (id, nome, email, senha, data_cadastro) VALUES (6, 'Débora Mendonça', 'email.teste.aw+debora@gmail.com', '$2y$12$NSsM4gEOR7MKogflKR7GMeYugkttjNhAJMvFdHrBLaLp2HzlggP5W', '2022-11-02 02:52:00');
INSERT INTO resource_server.usuario (id, nome, email, senha, data_cadastro) VALUES (7, 'Carlos Lima', 'email.teste.aw+carlos@gmail.com', '$2y$12$NSsM4gEOR7MKogflKR7GMeYugkttjNhAJMvFdHrBLaLp2HzlggP5W', '2022-11-02 02:52:00');

INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (1, 'Permite consultar cozinhas', 'CONSULTAR_COZINHAS');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (2, 'Permite editar cozinhas', 'EDITAR_COZINHAS');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (3, 'Permite consultar formas de pagamento', 'CONSULTAR_FORMAS_PAGAMENTO');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (4, 'Permite criar ou editar formas de pagamento', 'EDITAR_FORMAS_PAGAMENTO');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (5, 'Permite consultar cidades', 'CONSULTAR_CIDADES');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (6, 'Permite criar ou editar cidades', 'EDITAR_CIDADES');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (7, 'Permite consultar estados', 'CONSULTAR_ESTADOS');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (8, 'Permite criar ou editar estados', 'EDITAR_ESTADOS');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (9, 'Permite consultar usuários', 'CONSULTAR_USUARIOS');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (10, 'Permite criar ou editar usuários', 'EDITAR_USUARIOS');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (11, 'Permite consultar restaurantes', 'CONSULTAR_RESTAURANTES');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (12, 'Permite criar, editar ou gerenciar restaurantes', 'EDITAR_RESTAURANTES');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (13, 'Permite consultar produtos', 'CONSULTAR_PRODUTOS');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (14, 'Permite criar ou editar produtos', 'EDITAR_PRODUTOS');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (15, 'Permite consultar pedidos', 'CONSULTAR_PEDIDOS');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (16, 'Permite gerenciar pedidos', 'GERENCIAR_PEDIDOS');
INSERT INTO resource_server.permissao (id, descricao, nome) VALUES (17, 'Permite gerar relatórios', 'GERAR_RELATORIOS');

INSERT INTO resource_server.usuario_grupo (usuario_id, grupo_id) VALUES (1, 1);
INSERT INTO resource_server.usuario_grupo (usuario_id, grupo_id) VALUES (1, 2);
INSERT INTO resource_server.usuario_grupo (usuario_id, grupo_id) VALUES (2, 2);
INSERT INTO resource_server.usuario_grupo (usuario_id, grupo_id) VALUES (3, 3);
INSERT INTO resource_server.usuario_grupo (usuario_id, grupo_id) VALUES (4, 4);

INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 1);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (2, 1);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (3, 1);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 2);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 3);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (2, 3);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (3, 3);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 4);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 5);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (2, 5);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (3, 5);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 6);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 7);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (2, 7);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (3, 7);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 8);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 9);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (2, 9);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (3, 9);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 10);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 11);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (2, 11);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (3, 11);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (4, 11);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 12);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (4, 12);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 13);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (2, 13);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (3, 13);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (4, 13);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 14);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (2, 14);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (4, 14);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 15);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (2, 15);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (3, 15);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 16);
INSERT INTO resource_server.grupo_permissao (grupo_id, permissao_id) VALUES (1, 17);

INSERT INTO resource_server.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('algafood-web', null, '$2a$12$4py0V5/g5941dLKJqkhavulvFlAl4NZcmhMxkpCTlCKGeE8FEHpsq', 'READ,WRITE', 'password,refresh_token', null, null, 60, 120, null, null);
INSERT INTO resource_server.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('api-hotpay', null, '$2a$12$YsFHuZFB8vk4vQhS9BjE9OZSnt/YAEVEHk8r/qiOOuW7G0ix2evoe', 'READ', 'client_credentials', null, 'EDITAR_PRODUTOS,GERENCIAR_PEDIDOS', 60, null, null, null);
INSERT INTO resource_server.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('hub', null, null, 'READ', 'implicit', 'http://aplicacao-cliente', 'EDITAR_PRODUTOS', 60, null, null, null);
INSERT INTO resource_server.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('marketplace', null, '$2a$12$GtvrWmMlijf0HV.fBFPYzuCuP8SdTJ7V97W.o3xVsfO1AQ0yAMrda', 'READ,WRITE', 'authorization_code', 'http://localhost:63341/authorization-code-client/index.html', null, 60, null, null, null);
INSERT INTO resource_server.oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('pkce-client', null, '$2a$12$3yFkO1Dn807AUvYo2GBuUuT5Xsv49WD.zpir1f8UgAf2DwsCA04mG', 'READ,WRITE', 'authorization_code', 'http://localhost:63341/authorization-code-pkce-client/index.html', 'EDITAR_PRODUTOS,GERENCIAR_PEDIDOS,EDITAR_COZINHAS', 60, null, null, 'true');
