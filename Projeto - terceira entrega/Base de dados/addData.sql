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

INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome, reputacao) VALUES (1, 912359725, '1995-08-01', 'Rua Sesamo', 'Joao N.', 1);
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome, reputacao) VALUES (4, 937546824, '1996-03-30', 'Av. Central', 'Manuel F.', 1);
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome, reputacao) VALUES (2, 964562873, '1993-10-24', 'Rua Joao Fernandes', 'Rita L.', 2);
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (6, 945683261, '1991-07-21', 'Av. 25 de Abril', 'Beatriz G.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (5, 935629874, '1999-06-08', 'Tr. Sto Contestavel', 'Luis A.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (3, 924653867, '2000-02-04', 'Rua Alfredo Costa', 'Jose R.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (2, 912356497, '2002-09-13', 'Rua Direita', 'Gabriel G.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (3, 923568746, '1994-08-26', 'Rua da Coutada', 'Marta L.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (2, 923568746, '1995-12-06', 'Rua Leao', 'Luis O.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (6, 936774320, '1992-05-20', 'Rua Dr Martins', 'Joana F.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (4, 919087246, '1990-10-02', 'Av. Herculano', 'Ambrosio C.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (1, 917742665, '1989-07-15', 'Rua Restauradores', 'Marco C.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (3, 938993131, '1998-04-21', 'Rua dos Combatentes', 'Maria L.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (6, 917650241, '2000-01-03', 'Tr. Antonio Fragoso', 'Carla M.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (5, 920908765, '1993-12-24', 'Rua Roberto Frio', 'Joaquim B.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (6, 919290653, '1997-10-14', 'Rua dos Bragas', 'Tome D.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (2, 917263928, '1992-09-01', 'Av. Gonçalves Abreu', 'Hugo A.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (2, 939871277, '1985-07-21', 'Rua Direita', 'Cecilia J.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (4, 939077829, '1989-08-30', 'Av. Central', 'Carlos Q.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (3, 967872348, '1994-01-03', 'Rua Dr. Filipe Trigo', 'Patricia T.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (3, 912987372, '1988-11-05', 'Rua Alfredo Costa', 'Bruno V.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (5, 918723892, '1980-07-11', 'Tr. Sto Contestavel', 'Rita F.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (6, 960981201, '1991-12-23', 'Av. 25 de Abril', 'Vasco C.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (2, 967823479, '1982-06-12', 'Rua Leao', 'Nuno G.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (1, 912312325, '1999-05-02', 'Rua Restauradores', 'Xavier S.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (4, 918237755, '1981-13-09', 'Av. Central', 'Patricia P.');
INSERT INTO PERFIL (idNatur, contacto, dataDeNascimento, morada, nome) VALUES (6, 933242423, '1991-12-04', 'Av. 25 de Abril', 'Bruno G.');


INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (1, 5, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (1, 7, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (2, 3, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (3, 8, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (7, 1, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (6, 2, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (4, 8, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (9, 6, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (8, 5, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (10, 11, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (9, 12, 1);
INSERT INTO AMIZADE (idPerfilPede, idPerfilAceita, aceita) VALUES (3, 13, 1);
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

INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (3, '15-05-21', 'B321', 'Aula de BDAD');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (4, '15-05-22', 'B310', 'Aula de CGRA');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (5, '15-05-23', 'B007', 'Aula de LPOO');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (1, '15-05-24', 'B214', 'Aula de CAL');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (3, '15-06-13', 'Parque da Cidade', 'NOS Primavera Sound');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (3, '15-06-21', 'Edificio AEFEUP', 'FEUPCaffe');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (4, '15-04-01', 'Via Rapida', 'Baconal Amarelo');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (6, '15-05-04', 'Barraca 79', 'Motivators');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (1, '15-06-17', 'B002', 'Assembleia Geral');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (14, '15-05-25', 'B103', 'Eleicoes AEFEUP');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (12, '15-03-22', 'Auditorio da FEUP', 'Encontro Solidario de Tunas');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (9, '15-08-22', 'Paredes de Coura', 'Paredes de Coura');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (10, '15-01-22', 'Auditorio da FEUP', 'Jornadas de Engenharia');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (5, '15-08-10', 'Viana do Castelo', 'NEOPOP');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (17, '15-04-01', 'Auditorio da FEUP', 'Sarau Cultural');
INSERT INTO EVENTO (idCriador, data, local, nome) VALUES (4, '15-05-25', 'B310', 'Teste de PPIN');

INSERT INTO GRUPO (idAdministrador, nomeGrupo) VALUES (2, 'Grupo de 2 ano');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (5, 'Grupo para duvidas.', 'Grupo de 1 ano');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (17, 'Tudo o que queres saber.', 'Tradicoes Academicas');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (4, 'Utilizem as tags adequadamento', 'AEFEUP 2013/2014');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (5, 'TOP atualizado todos os dias', 'Musica POP');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (7, 'Grupo de Partilha sobre localizações de Radares.', 'Radares de Portugal');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (3, 'Grupo contra os bandidos que andam a patrulhar a FEUP', 'Movimento Anti-Gatuno');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (14, 'Partilha aqui os melhores momentos, músicas e eventos da noite do Porto.', 'Noite do Porto');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (8, 'Este grupo serve para conter todos os apontamentos da comunidade FEUP', 'Banco de Apontamentos');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (6, 'Local de convívio e partilha de fotos.', 'Pessoal que foi a LLoret 2012');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (12, 'Leiam as regras antes de postar', 'Negocios na Hora - Porto');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (9, 'Leiam as regras antes de postar', 'Negocios na Hora - Mirandela');
INSERT INTO GRUPO (idAdministrador, descricao, nomeGrupo) VALUES (11, 'Bem-vindos ao maior grupo de Football Manager de Portugal.', 'Football Manager Portugal');

INSERT INTO POST (idCriador, data, hora, texto, reputacao) VALUES (2, '15-02-20', '2015-02-20 14:13:13.344', 'Consegui bilhetes para o concerto', 4);
INSERT INTO POST (idCriador, data, hora, texto, reputacao) VALUES (1, '15-03-04', '2015-03-04 09:31:55.520', 'Odeio transito!', 1);
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
INSERT INTO REPUTACAO DEFAULT VALUES;
INSERT INTO REPUTACAO DEFAULT VALUES;
INSERT INTO REPUTACAO DEFAULT VALUES;

INSERT INTO REPUTACAOPERFIL VALUES (1, 2, 1);
INSERT INTO REPUTACAOPERFIL VALUES (1, 3, 2);
INSERT INTO REPUTACAOPERFIL VALUES (2, 3, 3);
INSERT INTO REPUTACAOPERFIL VALUES (2, 1, 4);

INSERT INTO REPUTACAOPOST VALUES (4, 1, 5);
INSERT INTO REPUTACAOPOST VALUES (5, 1, 6);
INSERT INTO REPUTACAOPOST VALUES (1, 2, 7);
INSERT INTO REPUTACAOPOST VALUES (2, 1, 8);
INSERT INTO REPUTACAOPOST VALUES (3, 1, 9);