select nom_hotel, nom_departement, nb_chambres_occupees from hotel, localisation, chambres_global
	where hotel.code_postal = localisation.code_postal
		and hotel.nb_chambres_dispo = chambres_global.nb_chambres_dispo
		group by nom_hotel;