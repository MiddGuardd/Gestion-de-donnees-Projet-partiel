select nom,prenom,employes.nom_hotel from employes,hotel
	where employes.nom_hotel = hotel.nom_hotel 
	and employes.nom_hotel = 'BDD Hôtel'
	and salaire > 20000;