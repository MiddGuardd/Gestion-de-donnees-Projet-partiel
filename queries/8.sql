select * from chambres_detail where statut = 'occupée' ;

UPDATE chambres_detail
	SET statut='libre'
	WHERE num_chambre=110;