DROP TRIGGER IF EXISTS funcNull;
DROP TRIGGER IF EXISTS pecaInvalida;

CREATE TRIGGER IF NOT EXISTS funcNull AFTER INSERT ON Reparacao WHEN (NEW.idCLiente ISNULL)
	BEGIN
		UPDATE Reparacao SET idCliente = (SELECT MAX(idCLiente) FROM Carro WHERE Carro.idCarro = new.idCarro)
			WHERE idReparacao = NEW.idReparacao;
	END
;

CREATE TRIGGER IF NOT EXISTS pecaInvalida AFTER INSERT ON ReparacaoPeca WHEN
	
	(
		(
			(SELECT MAX(Carro.idModelo) FROM Carro, Reparacao, ReparacaoPeca WHERE
				ReparacaoPeca.idReparacao = Reparacao.idReparacao AND Reparacao.idCarro = Carro.idCarro)
	
			NOT IN
	
			(SELECT idModelo FROM PecaModelo WHERE
				NEW.idPeca = PecaModelo.idPeca)
		)

		OR

		(
			(SELECT MAX(Peca.quantidade) FROM Peca WHERE
				Peca.idPeca = NEW.idPeca)

			<

			NEW.quantidade
		)
	)

	BEGIN
		SELECT RAISE(ABORT, 'Atribuicao invalida 1') WHERE 
			(SELECT MAX(Carro.idModelo) FROM Carro, Reparacao, ReparacaoPeca WHERE
				ReparacaoPeca.idReparacao = Reparacao.idReparacao AND Reparacao.idCarro = Carro.idCarro)
	
			NOT IN
	
			(SELECT idModelo FROM PecaModelo WHERE
				NEW.idPeca = PecaModelo.idPeca);

		SELECT RAISE(ABORT, 'Atribuicao invalida 2') WHERE 
			(SELECT MAX(Peca.quantidade) FROM Peca WHERE
				Peca.idPeca = NEW.idPeca)

			<

			NEW.quantidade;
	END
;

