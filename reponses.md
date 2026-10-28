Q1.3 :
- disponible : stocké en INTEGER (1 = vrai, 0 = faux).
- date_ajout : stockée en TEXT
- AUTOINCREMENT : génère automatiquement un identifiant unique.
- UNIQUE sur nom : interdit les noms en double dans categories.
- CHECK (prix >= 0) : interdit les prix négatifs.
- ON DELETE RESTRICT : empêche de supprimer une catégorie utilisée par des produits.