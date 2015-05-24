--INTERROGACOES

--Posts ordenados por reputacao
SELECT idPost, reputacao, texto FROM POST
ORDER BY reputacao DESC;

--Listar todos os amigos da naturalidade 1
SELECT nome FROM PERFIL, AMIZADE, NATURALIDADE WHERE
		(idPerfil != 1)
 	AND (1 = idPerfilPede OR 1 = idPerfilAceita)
 	AND  (idPerfil = idPerfilAceita OR idPerfil = idPerfilPede)
 	AND (idNatur = idNaturalidade)
 	AND (cidade = 'Guimaraes');

--Listar todos os grupos administrados pelo utilizador 1
SELECT nomeGrupo FROM GRUPO WHERE
	idAdministrador = (SELECT idPerfil FROM PERFIL WHERE nome = 'Manuel F.'); 

--Listar todos os eventos com o utilizador 5
SELECT nome FROM EVENTO WHERE
	idCriador = (SELECT idPerfil FROM PERFIL WHERE nome = 'Rita L.');

--Perfis ordenados por número de amigos
SELECT nome, COUNT(*) as numAmigos FROM AMIZADE, PERFIL
	WHERE (idPerfil = idPerfilPede OR idPerfil = idPerfilAceita)
		AND (aceita = 1)
	GROUP BY nome
	ORDER BY numAmigos DESC;

--Listar todos os perfis de Naturalidade Vila Real
SELECT nome FROM PERFIL, NATURALIDADE WHERE
	idNatur = idNaturalidade AND
	cidade = 'Vila Real';

--Listar amigos do utilizador 1 ordenadas por idade
SELECT nome, (date('now') - dataDeNascimento) as idade FROM PERFIL
	ORDER BY idade ASC; 

--Listar os 5 perfis com mais reputacao
SELECT nome, reputacao FROM PERFIL
	ORDER BY reputacao DESC
	LIMIT 5;

