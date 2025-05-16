# Jointures

Les jointures en SQL permettent de combiner des lignes de deux ou plusieurs tables, basées sur une colonne relationnelle commune. Elles sont essentielles pour interroger des données liées réparties dans différentes tables.

## Types de Jointures

- **INNER JOIN** : Retourne les lignes correspondantes dans les deux tables.
- **LEFT JOIN** : Retourne toutes les lignes de la table de gauche et les lignes correspondantes de la table de droite.
- **RIGHT JOIN** : Inverse du LEFT JOIN, retourne toutes les lignes de la table de droite et les lignes correspondantes de la table de gauche.

---

# Contraintes ON DELETE et ON UPDATE

Ces contraintes permettent de définir le comportement à adopter lorsqu'une ligne référencée dans une autre table est supprimée ou mise à jour.

- **CASCADE** : Supprime ou met à jour automatiquement les lignes correspondantes dans la table enfant.
- **SET NULL** : Définit les valeurs de la table enfant à NULL.
- **RESTRICT** : Empêche l'opération si des lignes liées existent.
- **NO ACTION** : Identique à RESTRICT.
- **SET DEFAULT** : Définit la colonne à sa valeur par défaut (rarement utilisé en MySQL).

---

# Fonctions d'Agrégation

Les fonctions d’agrégation permettent de faire des calculs sur un ensemble de valeurs pour obtenir une valeur unique.

- **COUNT()** : Compte les lignes.
- **SUM()** : Somme les valeurs.
- **AVG()** : Moyenne des valeurs.
- **MAX()** : Valeur maximale.
- **MIN()** : Valeur minimale.

## GROUP BY

Utilisée avec les fonctions d’agrégation pour grouper les résultats selon une ou plusieurs colonnes.

## HAVING

Utilisée pour filtrer les groupes de résultats après l'agrégation (contrairement à WHERE qui filtre avant).

---

# Exercices Pratiques

1. Sélection de tous les étudiants
2. Sélection de toutes les formations
3. Sélection de tous les centres de formation
4. Sélection de la formation à laquelle Alice est inscrite
5. Quel est le statut de la formation où Bob s’est inscrit ?
6. Sélection des formations terminées
7. Sélection de tous les étudiants avec leurs formations associées, même s’ils ne sont pas inscrits à une formation (LEFT JOIN)
8. Afficher le nombre d’étudiants inscrits dans chaque formation (GROUP BY + COUNT)
9. Sélection des formations ayant plus de 2 étudiants (HAVING)
10. Sélection des étudiants non inscrits à une formation
11. Sélection de tous les étudiants avec leurs formations associées
12. Sélection de tous les centres de formation avec leurs formations associées, même sans formation (LEFT JOIN)
13. Sélection de tous les étudiants avec leurs formations associées (doublon intentionnel ?)
14. Sélection de tous les centres de formation avec leurs formations planifiées ou en cours (WHERE statut IN ('planifiée', 'en cours'))
15. Sélection de tous les centres de formation et le nombre de formations qu’ils dispensent
16. Même requête que 15 avec un tri décroissant (ORDER BY DESC)
17. Sélection de tous les centres de formation ayant un nombre de formations supérieur à 2 (HAVING)

---
