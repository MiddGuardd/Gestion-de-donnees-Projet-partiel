select prenom, nom, chambres_detail.num_chambre, statut from clients, chambres_detail 
	where clients.num_chambre = chambres_detail.num_chambre 
	and (statut = "occupee" or statut = "reservee");