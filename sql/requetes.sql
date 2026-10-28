/* Q1.5 */

SELECT * FROM produits;
/* 
1	Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
2	Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
3	Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
5	Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
6	Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4
*/

SELECT * FROM produits
WHERE quantite = 0;
/*
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
*/
SELECT * FROM produits
ORDER BY prix DESC;
/*
1	Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
5	Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
2	Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
6	Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4
3	Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
*/

SELECT produits.nom, categories.nom AS categorie
FROM produits
INNER JOIN categories
ON produits.categorie_id = categories.id;
/*
Huile d'olive 1 L	Alimentation
Couscous moyen 1 kg	Alimentation
Eau minérale 1,5 L	Boissons
Jus d'orange 1 L	Boissons
Savon de Marseille	Hygiène
Cahier 96 pages	Papeterie
*/

SELECT categories.nom, COUNT(produits.id) AS nombre_produits
FROM categories
INNER JOIN produits
ON categories.id = produits.categorie_id
GROUP BY categories.id, categories.nom;
/*
Alimentation	2
Boissons	2
Hygiène	1
Papeterie	1
*/

SELECT SUM(prix * quantite) AS valeur_totale_stock
FROM produits;
/*
777.5  
*/


/*Q1.6*/

/*
a)
INSERT INTO produits (nom, prix, quantite, date_ajout, categorie_id)
VALUES ('Test prix', -5, 1, '2026-10-05T08:00:00', 1);

L'exécution s'est terminée avec des erreurs.
Résultat : CHECK constraint failed: prix >= 0
-> Prix négatif : CHECK constraint failed: prix >= 0

b)
INSERT INTO produits (nom, prix, quantite, date_ajout, categorie_id)
VALUES ('Test catégorie', 1, 1, '2026-10-05T08:00:00', 99);

L'exécution s'est terminée avec des erreurs.
Résultat : FOREIGN KEY constraint failed
-> Catégorie inexistante : FOREIGN KEY constraint failed

c)
DELETE FROM categories WHERE id = 1;
L'exécution s'est terminée avec des erreurs.
Résultat : FOREIGN KEY constraint failed

->Supprimer une catégorie utilisée : FOREIGN KEY constraint failed
*/