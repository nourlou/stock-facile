Q1.3 :
- disponible : stocké en INTEGER (1 = vrai, 0 = faux).
- date_ajout : stockée en TEXT
- AUTOINCREMENT : génère automatiquement un identifiant unique.
- UNIQUE sur nom : interdit les noms en double dans categories.
- CHECK (prix >= 0) : interdit les prix négatifs.
- ON DELETE RESTRICT : empêche de supprimer une catégorie utilisée par des produits.

Q3.2
1-Deux appels à DatabaseHelper() créent un seul objet grâce au constructeur factory, qui retourne la même instance.

2- ??= affecte une valeur à une variable uniquement si elle est null.

3- onConfigure est exécuté à chaque ouverture de la base, contrairement à onCreate, qui s'exécute seulement lors de sa création.

4-onCreate est appelé une seule fois, lors de la première création de la base de données.