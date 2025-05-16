# - Opérations du CRUD

Apprends à créer, lire, mettre à jour et supprimer des données.

## Ressources

- [SQL.sh](https://sql.sh/)
- [Manipulez vos données avec les opérations CRUD](https://openclassrooms.com/fr/courses/6971126-implementez-vos-bases-de-donnees-relationnelles-avec-sql/7142248-inserez-des-donnees-dans-votre-bdd)

## Contexte du projet

Maintenant que tu sais initialiser une base de données et créer une table, tu vas apprendre à requêter une base de données, comme insérer, sélectionner, modifier et supprimer des données.

Découvre les requêtes des opérations du **CRUD** :

- **C**reate : insérer des données
- **R**ead : sélectionner des données
- **U**pdate : mettre à jour des données
- **D**elete : supprimer des données

Je te présente une excellente ressource pour apprendre le SQL : [SQL.sh](https://sql.sh/), un site riche en cours sur SQL.

Tu vas y apprendre :

- Insérer des données : https://sql.sh/cours/insert-into
- Sélectionner des données : https://sql.sh/cours/select
- Utiliser des critères de sélection : https://sql.sh/cours/where
- Mettre à jour des données : https://sql.sh/cours/update
- Supprimer des données : https://sql.sh/cours/delete

## Modalités pédagogiques

Note les requêtes exécutées, car elles te seront demandées en solution.

Crée une base de données nommée "library" et une table "book", représentant un livre, avec les champs suivants :

- `book_id` : clé primaire numérique, auto-incrémentée
- `title` : non null, chaîne de taille maximum 255 caractères
- `description` : nullable, champ texte
- `release_date` : non null, date
- `authors` : non null, chaîne de taille maximum 255 caractères
- `available` : non null, booléen, vrai par défaut

- Insère le livre suivant : Moby Dick de Herman Melville, publié le 18 octobre 1851, "The book is the sailor Ishmael's narrative of the obsessive quest of Ahab, captain of the whaling ship Pequod, for revenge against Moby Dick, the giant white whale that on the ship's previous voyage bit off Ahab's leg at the knee.". Le livre est disponible.
- Insère le livre suivant : The Great Gatsby de F. Scott Fitzgerald, publié le 10 avril 1925, "Set in Jazz Age New York, it tells the tragic story of Jay Gatsby, a self-made millionaire, and his pursuit of Daisy Buchanan, a wealthy young woman whom he loved in his youth.". Le livre est disponible.
- Insère le livre suivant : Frankenstein de Mary Shelley, publié le 1 janvier 1818, "Victor Frankenstein tells Walton his story—a happy childhood, an unhealthy obsession with alchemy, and his engagement to his cousin Elizabeth. Victor enrolls at the University of Ingolstadt, where he discovers the secret of life and builds a creature from dead bodies.". Le livre est indisponible.
- Insère le livre suivant : Robinson Crusoe de Daniel Defoe, publié le 25 avril 1719, n'a pas de description (null). Le livre est disponible.
- Sélectionne tous les livres
- Sélectionne les livres de l'auteur Herman Melville
- Sélectionne les livres n'ayant pas de description (null)
- Sélectionne les livres sortis avant 1900.
- Modifie le livre dont le titre est "Robinson Crusoe" afin de changer sa description par : "Crusoe is on a ship bound for Africa, where he plans to buy slaves for his plantations in South America, when the ship is wrecked on an island and Crusoe is the only survivor. Alone on a desert island, Crusoe manages to survive thanks to his pluck and pragmatism."
- Sélectionne les livres dont la description contient le mot "ship"
- Supprime les livres indisponibles

## Critères de performance

- Comprendre la documentation technique de la base de données
- Connaissance du système de gestion de base de données relationnelles
- Connaissance du langage de requête SQL (Structured Query Language)
