.bail ON
.mode columns
.headers on
.nullvalue NULL
.width 25 25 25 25 25 25 25

--FICHEIRO PARA INTRODUÇÃO DOS DADOS NAS TABELAS JÁ CRIADAS


INSERT INTO NATURALIDADE (cidade) VALUES ('Vila Real');
INSERT INTO NATURALIDADE (cidade) VALUES ('Guimaraes');
INSERT INTO NATURALIDADE (cidade) VALUES ('Alf. da Fe');
INSERT INTO NATURALIDADE (cidade) VALUES ('Mirandela');
INSERT INTO NATURALIDADE (cidade) VALUES ('Lixa');
INSERT INTO NATURALIDADE (cidade) VALUES ('Porto');

INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome, reputacao) VALUES (1, 912359725, '95-08-01', 'Rua Sesamo', 'Joao N.', 1);
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome, reputacao) VALUES (4, 937546824, '96-03-30', 'Av. Central', 'Manuel F.', 1);
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome, reputacao) VALUES (2, 964562873, '93-10-24', 'Rua Joao Fernandes', 'Rita L.', 2);
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (6, 945683261, '91-07-21', 'Av. 25 de Abril', 'Beatriz G.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (5, 935629874, '99-06-08', 'Tr. Sto Contestavel', 'Luis A.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (3, 924653867, '00-02-04', 'Rua Alfredo Costa', 'Jose R.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (2, 912356497, '02-09-13', 'Rua Direita', 'Gabriel G.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (3, 923568746, '94-08-26', 'Rua da Coutada', 'Marta L.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (2, 923568746, '95-12-06', 'Rua Leao', 'Luis O.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (6, 936774320, '92-05-20', 'Rua Dr Martins', 'Joana F.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (4, 919087246, '90-10-02', 'Av. Herculano', 'Ambrosio C.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (1, 917742665, '89-07-15', 'Rua Restauradores', 'Marco C.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (3, 938993131, '98-04-21', 'Rua dos Combatentes', 'Maria L.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (6, 917650241, '00-01-03', 'Tr. Antonio Fragoso', 'Carla M.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (5, 920908765, '93-12-24', 'Rua Roberto Frio', 'Joaquim B.');
INSERT INTO PERFIL (idNaturalidade, contacto, dataDeNascimento, morada, nome) VALUES (6, 919290653, '97-10-14', 'Rua dos Bragas', 'Tome D.');

INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita) VALUES (1, 5);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita) VALUES (4, 7);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita) VALUES (2, 3);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita) VALUES (6, 8);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita) VALUES (8, 9);

--Valores de numeroDeMensagens inicializados tendo em conta numero de mensagens adicionadas posteriormente
INSERT INTO CHAT (nome, numeroDeMensagens) VALUES ('Grupo de BDAD', 2);
INSERT INTO CHAT (nome, numeroDeMensagens) VALUES ('Turma de BDAD', 3);
INSERT INTO CHAT (nome, numeroDeMensagens) VALUES ('Grupo do ano', 1);

INSERT INTO MENSAGEM (idChat, data, hora, texto) VALUES (2, '15-04-18', '2015-04-18 15:12:04.154','Alguem ja entregou o primeiro projeto?');
INSERT INTO MENSAGEM (idChat, data, hora, texto) VALUES (2, '15-04-18', '2015-04-18 12:34:14.920','Eu ja.');
INSERT INTO MENSAGEM (idChat, data, hora, texto) VALUES (2, '15-04-20', '2015-04-20 18:56:04.525','Como organizaste os ficheiros?');
INSERT INTO MENSAGEM (idChat, data, hora, texto) VALUES (1, '15-04-17', '2015-04-17 20:12:09.125','Alguem ja entregou o primeiro projeto?');
INSERT INTO MENSAGEM (idChat, data, hora, texto) VALUES (1, '15-04-18', '2015-04-18 05:35:21.175','Ainda nao!');
INSERT INTO MENSAGEM (idChat, data, hora, texto) VALUES (3, '15-04-19', '2015-04-19 15:25:01.001','Alguem esta ai?');

INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (3, '15-06-21', 'B321', 'Aula de BDAD');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (4, '15-06-22', 'B310', 'Aula de CGRA');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (5, '15-06-23', 'B007', 'Aula de LPOO');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (1, '15-06-24', 'B214', 'Aula de CAL');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (3, '15-06-25', 'B008', 'Aula de BDAD');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (3, '15-06-26', 'B114', 'Aula de SOPE');

INSERT INTO GRUPO (idAdministrador, nome) VALUES (2, 'Grupo de 2 ano');
INSERT INTO GRUPO (idAdministrador, descricao, nome) VALUES (3, 'Grupo para duvidas.', 'Grupo de 1 ano');

INSERT INTO POST (idCriador, data, hora, texto, reputacao) VALUES (2, '15-02-20', '2015-02-20 14:13:13.344', 'Consegui bilhetes para o concerto', 2);
INSERT INTO POST (idCriador, data, hora, texto) VALUES (1, '15-03-04', '2015-03-04 09:31:55.520', 'Odeio transito!');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (3, '15-03-13', '2015-03-13 12:01:34.102', '#rasgaissotudo');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (6, '15-04-01', '2015-04-01 15:22:45.321', 'A dar tudo no estudo para o exames');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (8, '15-01-16', '2015-01-16 03:10:31.423', 'Outra vez meias no meu aniversario :(');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (5, '15-01-01', '2015-01-01 16:43:22.400', 'PDA muito agressiva...');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (4, '15-02-10', '2015-02-10 22:12:33.211', 'O acampamento até foi fixe');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (7, '15-03-21', '2015-01-21 19:20:41.111', 'Ta que ta!');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (3, '15-02-15', '2015-02-15 02:04:22.312', 'Curtindo a noite com as melhores');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (9, '15-04-19', '2015-04-19 04:20:00.000', 'São 4:20, pibs!');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (2, '15-04-17', '2015-04-17 16:11:52.432', 'Siga ver mais um episodio de GoT!');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (5, '15-04-17', '2015-04-17 11:29:44.100', 'Acordei com energia para trabalhar!');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (1, '15-03-24', '2015-03-24 21:02:21.227', 'Na fila do cinema #Furious7');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (3, '15-04-12', '2015-04-12 15:41:37.524', 'Quero Verao #summertimesadness');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (8, '15-01-20', '2015-01-20 08:04:00.434', 'Bom dia, gera marota!');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (4, '15-03-30', '2015-03-30 13:42:20.204', 'A estragar a dieta #mcdonalds');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (7, '15-01-26', '2015-01-26 00:04:24.532', '#ultimorecurso');
INSERT INTO POST (idCriador, data, hora, texto) VALUES (6, '15-03-20', '2015-03-20 14:32:53.234', 'https://youtu.be/AZViamYeYSo Hoje sinto-me assim');

INSERT INTO POSTPERFIL VALUES (1, 1);
INSERT INTO POSTPERFIL VALUES (2, 1);
INSERT INTO POSTPERFIL VALUES (3, 2);
INSERT INTO POSTPERFIL VALUES (4, 4);
INSERT INTO POSTPERFIL VALUES (13, 5);
INSERT INTO POSTPERFIL VALUES (14, 2);

INSERT INTO POSTGRUPO VALUES (5, 1);
INSERT INTO POSTGRUPO VALUES (6, 1);
INSERT INTO POSTGRUPO VALUES (7, 2);
INSERT INTO POSTGRUPO VALUES (12, 1);
INSERT INTO POSTGRUPO VALUES (15, 2);

INSERT INTO POSTEVENTO VALUES (8, 1);
INSERT INTO POSTEVENTO VALUES (9, 5);
INSERT INTO POSTEVENTO VALUES (10, 3);
INSERT INTO POSTEVENTO VALUES (11, 1);
INSERT INTO POSTEVENTO VALUES (16, 4);
INSERT INTO POSTEVENTO VALUES (17, 4);
INSERT INTO POSTEVENTO VALUES (18, 2);

INSERT INTO PERFILCHAT VALUES (1, 1);
INSERT INTO PERFILCHAT VALUES (2, 1);
INSERT INTO PERFILCHAT VALUES (3, 1);
INSERT INTO PERFILCHAT VALUES (1, 2);
INSERT INTO PERFILCHAT VALUES (2, 2);
INSERT INTO PERFILCHAT VALUES (3, 2);
INSERT INTO PERFILCHAT VALUES (4, 2);
INSERT INTO PERFILCHAT VALUES (5, 2);
INSERT INTO PERFILCHAT VALUES (6, 3);

INSERT INTO PERFILGRUPO VALUES (2, 2);
INSERT INTO PERFILGRUPO VALUES (3, 1);
INSERT INTO PERFILGRUPO VALUES (1, 1);
INSERT INTO PERFILGRUPO VALUES (1, 2);
INSERT INTO PERFILGRUPO VALUES (4, 1);
INSERT INTO PERFILGRUPO VALUES (4, 2);

INSERT INTO REPUTACAO DEFAULT VALUES;
INSERT INTO REPUTACAO DEFAULT VALUES;
INSERT INTO REPUTACAO DEFAULT VALUES;
INSERT INTO REPUTACAO DEFAULT VALUES;
INSERT INTO REPUTACAO DEFAULT VALUES;
INSERT INTO REPUTACAO DEFAULT VALUES;

INSERT INTO REPUTACAOPERFIL VALUES (1, 2, 1);
INSERT INTO REPUTACAOPERFIL VALUES (1, 3, 2);
INSERT INTO REPUTACAOPERFIL VALUES (2, 3, 3);
INSERT INTO REPUTACAOPERFIL VALUES (2, 1, 4);

INSERT INTO REPUTACAOPOST VALUES (4, 1, 5);
INSERT INTO REPUTACAOPOST VALUES (5, 1, 6);