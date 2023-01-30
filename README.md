# Gestion-de-donnees-Projet-partiel
Design : 

J'ai tout d'abord commencé par imaginer la structure de ma base, c'est à dire les différentes tables qu'elle va contenir ainsi que les
valeurs contenues dans chaque table.

Comme vous pouvez le voir sur le schéma de ma base, elle possède 6 tables différentes : 

- Hotel
- Employes
- Localisation
- Chambres_global
- Chambres_detail
- Clients

Je considère que ces tables permettent de présenter la majorité des variables dont l'hôtel a besoin de recenser pour fonctionner.
J'ai réalisé sur feuille différents brouillons de tables et de schéma avant d'en arriver à cette conclusion.

J'ai ensuite décidé de créer ma base avant de réaliser le schéma uml car dans l'éventualité où j'aurais mal designé mon architecture je ne 
voulais pas refaire de schéma uml, j'ai donc réalisé ma table selon mon schéma papier et décidé de faire le schéma uml à la fin.

Création :

J'ai donc crée ma base et mes tables en entrant des valeurs "test" afin de pouvoir effectuer des requêtes pour tester l'efficacité de ma base.
J'ai réalisé 12 requêtes permettant de parcourir la base.
Je vais documenter ces requêtes ci-dessous, mais vous pouvez les retrouver dans le dossier "queries".

Requêtes :

1. Tous les employés dont le prénom est "...." (ici Michel pour l'exemple) : Permet de retrouver efficacement un ou plusieurs employé(s) dans
la base.

![image](https://user-images.githubusercontent.com/72602625/215433623-0cbf3d30-d371-48e7-b102-f85f457a3bc1.png)

2. Montrer les 3 postes avec le salaire le plus élevé : Permet de vérifier qui nous coûte le plus cher.

![image](https://user-images.githubusercontent.com/72602625/215433892-cb103a75-b591-4ef6-b333-5c31a4a87fcd.png)

3. Voir le numéro de toutes les chambres réservées : Permet de voir quelles chambres sont réservées.

![image](https://user-images.githubusercontent.com/72602625/215434060-251e5ff8-d916-4d07-9ef5-97e0a6549d18.png)

4. Voir le numéro de toutes le chambres non-libres (reservées et occupées), ainsi que le nom/prénom des clients : Permet de voir quelles chambres
sont indisponibles et qui les occupe ou qui les a reservées.

![image](https://user-images.githubusercontent.com/72602625/215434175-fb1ffcb9-8cf8-4ff7-bb8a-64dee639658d.png)

5. Calculer les bénéfices de l'hôtel sur l'année passée et renommer le résultat "Benefices" : Permet de voir rapidement les bénéfices de
l'hôtel.

 ![image](https://user-images.githubusercontent.com/72602625/215434288-f53a3b0c-4131-4ef0-87cd-1aea591bbb59.png)

6. Voir toutes les chambres reservées dont le prix est supérieur à 70€/jour : Permet de voir si les chambres les plus coûteuses sont
reservées.

![image](https://user-images.githubusercontent.com/72602625/215434411-7a74c025-eb75-4e5c-b8eb-09c5fd5202f9.png)

7. Voir la date d'arrivée, le numéro de chambre et le nom/prenom de tous les clients ayant reservé une chambre : Permet de prévoir quand 
les clients vont arriver, pour préparer la chambre par exemple.

![image](https://user-images.githubusercontent.com/72602625/215434508-93d621d4-2cc6-4963-aba8-480238be0568.png)

8. Remplacer le statut d'une chambre de "occupée" à "libre" : Permet d'actualiser le statut d'une chambre.

![image](https://user-images.githubusercontent.com/72602625/215434676-7d48d8a2-0ab4-4af5-8cc6-6087c9f172cb.png)
![image](https://user-images.githubusercontent.com/72602625/215434863-f703db78-c519-4d1c-9a84-71ee33397a2e.png)

9. Calculer combien nous-coûtent les salaires à l'année : Permet de calculer les dépenses annuelles liées au salaire.

![image](https://user-images.githubusercontent.com/72602625/215434956-efaf942d-a149-433c-a8d5-3a8134268963.png)

10. Calculer le bénéfices des chambres de cette année pour l'instant : Permet de voir combien les chambres nous ont rapporté cette année.

![image](https://user-images.githubusercontent.com/72602625/215435052-cd6a7889-3801-4483-9691-2605fa0d470f.png)

11. Le nom et l'adresse complète de l'hôtel : Permet tout simplement de localiser l'hôtel.

![image](https://user-images.githubusercontent.com/72602625/215435143-e84388c1-9640-41cf-a01e-106e0451ab8e.png)

12. Le nombre de chambres occupées dans l'hôtel "BDD" situé en "Ile de France" : Permet de voir, par hôtel, le nombre de chambres 
occupées.

![image](https://user-images.githubusercontent.com/72602625/215435244-b07cfdde-1918-4d11-8276-5782e204ee39.png)

13. Tous les employés travaillant à l'hôtel "Hôtel BDD" : Permet de lister les employés par hôtel.

![image](https://user-images.githubusercontent.com/72602625/215435352-fbb705f4-e644-42fc-bda4-28db20c8d8a3.png)

14. Tous les employés travaillant à l'hôtel "Hôtel BDD" dont le salaire est supérieur à 20 000 €/an : Permet de filter les employés par
salaire.

![image](https://user-images.githubusercontent.com/72602625/215435507-70e1e152-c938-4a99-b5e4-8b7af753d618.png)
![image](https://user-images.githubusercontent.com/72602625/215435561-fe04a2f7-5d67-4eff-b3b5-b7b78b18828b.png)

15. Voir le nombre de cuisinier, leur nom, prénom et leur salaire : Donne toutes les informations des employés de tel ou tel poste.

![image](https://user-images.githubusercontent.com/72602625/215435693-f0670d95-b2b3-4c78-ac5a-ad661a5f8adb.png)

Finalisation du projet :

Une fois les requêtes réalisées, j'ai réalisé le schéma UML (que vous pouvez trouver dans le dossier du projet) afin que vous puissiez
avoir une vision claire de la base dans son ensemble.

Mon projet est donc terminé à cette étape. Je pense avoir réussi à réaliser une base de donnée fonctionnelle traitant bien les données
nécessaires à la gestion d'un hôtel et de sa clientèle/ses employés.

Merci de votre lecture.
