select nom_hotel, nom_ville, localisation.code_postal, nom_departement, nom_pays from hotel, localisation 
	where hotel.code_postal = localisation.code_postal;