select prenom, nom, date_arrivee, clients.num_chambre from clients, chambres_detail
	where clients.num_chambre = chambres_detail.num_chambre and statut = "reservee";