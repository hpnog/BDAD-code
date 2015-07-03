--(a)
SELECT Servidor.hostname, Pessoa.nome FROM Servidor, Pessoa WHERE
	Servidor.idResponsavel = Pessoa.idPessoa AND
	Servidor.vulneravel = 'sim';

--(b)
SELECT Servidor.hostname, Bug.descricao, Pessoa.nome FROM Servidor, Bug, Pessoa, AplicacaoServidor WHERE
	Servidor.idResponsavel = Pessoa.idPessoa AND
	Servidor.idServidor = AplicacaoServidor.idServidor AND
	Bug.idAplicacao = AplicacaoServidor.idAplicacao AND
	Bug.vulnerabilidade = 'sim'
	ORDER BY hostname ASC;

--(c)
SELECT Servidor.hostname FROM Servidor, Bug, AplicacaoServidor, Pessoa WHERE
	Servidor.idServidor = AplicacaoServidor.idServidor AND
	Bug.idAplicacao = AplicacaoServidor.idAplicacao AND
	Servidor.idResponsavel = Pessoa.idPessoa AND
	Pessoa.email = 'joao.almeida@cica.pt' AND
	Servidor.hostname LIKE 'alu%';

--(d)
Select appNome FROM
	(Select Aplicacao.nome AS appNome, COUNT(*) AS nBugs FROM Aplicacao, Bug WHERE
		Aplicacao.idAplicacao = Bug.idAplicacao
		GROUP BY Aplicacao.hostname)
	WHERE MAX(nBugs) = nBugs;

--(e)
CREATE TRIGGER IF NOT EXISTS vulnerabilidadeTrigger AFTER INSERT ON AplicacaoServidor WHEN
	(
		NEW.idAplicacao
		IN
		(
			SELECT Bug.idAplicacao FROM Bug WHERE
				Bug.vulnerabilidade = 'sim'
				GROUP BY Bug.idAplicacao
		)
	)
	BEGIN
		UPDATE Servidor set Servidor.vulneravel = 'sim' WHERE Servidor.idServidor = NEW.Servidor;
	END;

--(f)
CREATE TRIGGER IF NOT EXISTS adicionadoBug AFTER INSERT ON Bug WHEN
	NEW.vulnerabilidade = 'sim'
	BEGIN
		UPDATE Servidor set Servidor.vulneravel = 'sim' WHERE
			Servidor.idServidor
			IN
			(
				SELECT AplicacaoServidor.Servidor FROM AplicacaoServidor, Bug WHERE
					Bug.idBug = NEW.idBug AND
					Bug.idAplicacao = AplicacaoServidor.idAplicacao
			);
		UPDATE Bug set Bug.prioridade = 1 WHERE Bug.idBug = NEW.idBug;
	END;