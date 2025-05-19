# 🎮 TP SQL – Analyse d'une base de données de jeux vidéo

## 📥 Étape 1 : Importer la base de données

1. Télécharger le fichier de base de données fourni (ex : `video_games.sql`).
2. L’importer dans votre SGBD (MySQL, PostgreSQL, etc.).
3. Vérifier que toutes les tables ont bien été créées.

---

## 🧠 Étape 2 : Requêtes SQL à réaliser

> ✏️ Pour chaque question, écrivez la requête SQL correspondante et commentez-la brièvement.

---

### 🔍 Requêtes de base

1. Lister tous les jeux vidéo.
2. Afficher le nombre total de jeux.
3. Afficher le nom du jeu et le nom de son genre.
4. Afficher le nombre de jeux par genre.

---

### 🕹️ Plateformes

5. Combien de jeux sont disponibles sur la plateforme 'GBA' ?
6. Afficher le nombre de jeux par plateforme.

---

### 📊 Analyses avancées

7. Afficher les 5 genres les plus populaires (en nombre de jeux).
8. Lister les jeux dont le nom commence par "Super".
9. Afficher les jeux avec leur genre et leur plateforme.
10. Lister les genres qui n’ont aucun jeu associé.

---

### 🌍 Données régionales

11. Afficher les ventes totales par région.
12. Lister les 10 jeux les plus vendus en Europe.

---

### 🏢 Analyse des éditeurs

13. Lister tous les éditeurs distincts.
14. Afficher le nombre de jeux publiés par éditeur.
15. Afficher les ventes totales par éditeur.
16. Afficher les éditeurs ayant réalisé les meilleures ventes au Japon.
17. Afficher les éditeurs ayant réalisé les meilleures ventes en Europe.

---

## ⚙️ Étape 3 : Fonctions, procédures et triggers

18. Créer une **fonction** SQL qui retourne le **nom du jeu ayant eu le plus de ventes en Europe**.
19. Créer une **procédure** stockée qui affiche tous les jeux publiés par un éditeur dont le nom est passé en paramètre.
20. Créer un **trigger** qui enregistre dans une table `log_jeu` toute tentative de suppression d’un jeu vidéo (table `game`), en enregistrant l’ID, le nom du jeu et la date de suppression.

---

## ✅ Consignes

- Ajouter un **commentaire explicatif** au-dessus de chaque requête, fonction, procédure ou trigger.
- Sauvegarder le tout dans un fichier `.sql` ou `.md`.
- Tester votre travail sur votre base locale.

Bon courage ! 💪
