.read createDB.sql
.read addData.sql

--INTERROGACOES

--Perfis ordenados por número de amigos-------------------------------------------------------------
SELECT nome, COUNT(*) as numAmigos FROM AMIZADE, PERFIL
	WHERE (idPerfil = idPerfilPede OR idPerfil = idPerfilAceita)
		AND (aceita = 1)
		AND (idPerfilPede = 1 OR idPerfilAceita = 1)
	GROUP BY nome
	ORDER BY numAmigos DESC;
----------------------------------------------------------------------------------------------------

--Posts ordenados por reputacao---------------------------------------------------------------------
SELECT idPost, reputacao, texto FROM POST
ORDER BY reputacao DESC;
----------------------------------------------------------------------------------------------------

--Listar todos os amigos da naturalidade 1 - Guimaraes----------------------------------------------
SELECT nome FROM PERFIL, AMIZADE, NATURALIDADE WHERE
		(idPerfil != 1)
 	AND (1 = idPerfilPede OR 1 = idPerfilAceita)
 	AND  (idPerfil = idPerfilAceita OR idPerfil = idPerfilPede)
 	AND (idNatur = idNaturalidade)
 	AND (cidade = 'Guimaraes');
----------------------------------------------------------------------------------------------------

--Listar todos os grupos administrados pelo utilizador 1 - Manuel F.--------------------------------
SELECT nomeGrupo FROM GRUPO WHERE
	idAdministrador = (SELECT idPerfil FROM PERFIL WHERE nome = 'Manuel F.'); 
----------------------------------------------------------------------------------------------------

--Listar todos os eventos com o utilizador 5 - Rita L.----------------------------------------------
SELECT nome FROM EVENTO WHERE
	idCriador = (SELECT idPerfil FROM PERFIL WHERE nome = 'Rita L.');
----------------------------------------------------------------------------------------------------

--Listar todos os perfis de Naturalidade Vila Real--------------------------------------------------
SELECT nome FROM PERFIL, NATURALIDADE WHERE
	idNatur = idNaturalidade AND
	cidade = 'Vila Real';
----------------------------------------------------------------------------------------------------

--Listar amigos do utilizador 1 ordenadas por idade
SELECT nome, (date('now') - dataDeNascimento) as idade FROM PERFIL
	ORDER BY idade ASC; 
----------------------------------------------------------------------------------------------------

--Listar os 5 perfis com mais reputacao-------------------------------------------------------------
SELECT nome, reputacao FROM PERFIL
	ORDER BY reputacao DESC
	LIMIT 5;
----------------------------------------------------------------------------------------------------

--Mostrar a naturalidade com mais pessoas-----------------------------------------------------------
SELECT cidade, COUNT(*) as numDePerfis FROM PERFIL, NATURALIDADE WHERE
	idNatur = idNaturalidade
	GROUP BY cidade
	ORDER BY numDePerfis DESC
	LIMIT 1;
----------------------------------------------------------------------------------------------------

--Listar a média de idades dos amigos dos perfis ordenados por ordem crescente de medias------------
DROP VIEW IF EXISTS idades;
DROP VIEW IF EXISTS pedeAceita;

CREATE VIEW IF NOT EXISTS idades AS
	SELECT idPerfil, (date('now') - dataDeNascimento) as idade FROM PERFIL
		ORDER BY idade ASC; 
SELECT * FROM idades;

CREATE VIEW IF NOT EXISTS pedeAceita AS
	SELECT idPerfilPede as id, idade FROM AMIZADE, idades
		WHERE idPerfilAceita = idPerfil
	UNION
	SELECT idPerfilAceita, idade FROM AMIZADE, idades
		WHERE idPerfilPede = idPerfil;
SELECT * FROM pedeAceita;

SELECT nome, AVG(idade) as mediaDeIdades FROM pedeAceita, PERFIL
	WHERE (idPerfil = id)
	GROUP BY nome
	ORDER BY mediaDeIdades ASC;

DROP VIEW IF EXISTS idades;
DROP VIEW IF EXISTS pedeAceita;
----------------------------------------------------------------------------------------------------