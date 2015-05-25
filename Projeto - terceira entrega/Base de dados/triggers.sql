--Nao permite atribuir reputacao a posts criados por ele mesmo--------------------------------------
CREATE TRIGGER IF NOT EXISTS noReputationToOwnedPosts AFTER INSERT ON REPUTACAOPOST
	WHEN new.idPost = (SELECT idPost FROM POST WHERE new.idAtribuiu = idCriador)
	BEGIN
		DELETE FROM REPUTACAOPOST WHERE idReputacao = new.idReputacao;
		DELETE FROM REPUTACAO WHERE idReputacao = new.idReputacao;
		UPDATE POST set reputacao = reputacao - 1 WHERE POST.idPost = new.idPost;
	END;
----------------------------------------------------------------------------------------------------
--Ao adicionar uma reputacao a um post, incrementar o valor da reputacao----------------------------
CREATE TRIGGER IF NOT EXISTS incReputacaoOnPost AFTER INSERT ON REPUTACAOPOST
	BEGIN
		UPDATE POST set reputacao = reputacao + 1 WHERE POST.idPost = new.idPost;
	END;
----------------------------------------------------------------------------------------------------

------------------------------TRIGGERS EXTRA--------------------------------------------------------
--Ao adicionar uma reputacao a um PERFIL, incrementar o valor da reputacao--------------------------
CREATE TRIGGER IF NOT EXISTS incReputacaoOnPerfil AFTER INSERT ON REPUTACAOPERFIL
	BEGIN
		UPDATE PERFIL set reputacao = reputacao + 1 WHERE PERFIL.idPerfil = new.idPerfil;
	END;
----------------------------------------------------------------------------------------------------