CREATE VIEW PrecoReparacao (idReparacao, preco) AS
(SELECT Reparacao.idReparacao, 
	NVL(SUM(Peca.custoUnitario*ReparacaoPeca.quantidade),0) + NVL(SUM(Especialidade.custoHorario*FuncionarioReparacao.numHoras),0)
	FROM ((((Especialidade INNER JOIN Funcionario ON Especialidade.idEspecialidade=Funcionario.idEspecialidade)
		INNER JOIN FuncionarioReparacao ON  Funcionario.idFuncionario=FuncionarioReparacao.idFuncionario) FULL JOIN Reparacao ON
	FuncionarioReparacao.idReparacao=Reparacao.idReparacao) FULL JOIN ReparacaoPeca ON Reparacao.idReparacao=ReparacaoPeca.idReparacao)
	FULL JOIN Peca ON ReparacaoPeca.idPeca=Peca.idpeca GROUP BY Reparacao.idReparacao);



SELECT * FROM (SELECT * FROM PrecoReparacao ORDER BY preco DESC) WHERE rownum <= 3;

