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

Tu peux aussi suivre cette section d'OpenClassroom : [Manipulez vos données avec les opérations CRUD](https://openclassrooms.com/fr/courses/6971126-implementez-vos-bases-de-donnees-relationnelles-avec-sql/7142248-inserez-des-donnees-dans-votre-bdd).

## Modalités pédagogiques# 🧠 Exercices SQL : Requêtes et opérations CRUD

## 🎯 Objectif

Apprends à manipuler une base de données via les opérations **CRUD** :

- **C**reate : insérer des données
- **R**ead : lire/sélectionner des données
- **U**pdate : modifier des données
- **D**elete : supprimer des données

Travaille sur la base de données `training` et la table `students` que je viens de partager.

---

## 🏗️ Étapes initiales

1. Crée la base de données `training` **si elle n’existe pas déjà**.
2. Utilise la base `training`.
3. Crée la table `students` si elle n’existe pas, avec les colonnes suivantes :
   - `id` (clé primaire, auto-incrément),
   - `first_name`,
   - `last_name`,
   - `birth_date` (date),
   - `email` (unique),
   - `phone_number` (unique).

---

## ✏️ INSERT – Création de données

1. Insère l’étudiant suivant :  
   **John Doe**, né le **18 octobre 2006**, adresse mail : `john.doe@gmail.com`.

2. Insère l’étudiant suivant :  
   **Jane Smith**, née le **10 avril 2005**, adresse mail : `janesmith@outlook.fr`.

3. Insère l’étudiant suivant :  
   **Alice Johnson**, née le **1er janvier 2006**, adresse mail : `alicejohn@gmail.com`.

4. Insère l’étudiant suivant :  
   **Bob Williams**, né le **25 mars 2005**, adresse mail : `bobywiliams@live.fr`.

---

## 🔍 SELECT – Lecture de données

5. Sélectionne tous les étudiants.

6. Sélectionne uniquement les **noms** et **prénoms** des étudiants.

7. Sélectionne les étudiants **nés avant 2006**.

8. Sélectionne les étudiants **dont le nom commence par la lettre A**.

9. Sélectionne les étudiants **dont le nom contient la lettre E ou la lettre J**.

---

## 🛠️ UPDATE – Modification de données

10. Modifie la **date de naissance** de l’étudiante **Alice Johnson** pour la passer au **5 janvier 2006**.

---

## 🗑️ DELETE – Suppression de données

11. Supprime l’étudiant **Bob Williams**.

---

## ❓ Requête supplémentaire

12. Afficher le nombre d’etudiants dont le nom commence par la
    lettre J

13. Nombre total d'étudiants

14. Étudiant le plus jeune

15. Étudiant le plus âgé

16. Date de naissance la plus ancienne

17. Date de naissance la plus récente

---

## 📌 Consignes

- Écris chaque requête SQL correspondant à la question.
- Teste chaque requête une par une dans ton interface SQL.
- Relis bien les consignes avant d’exécuter une opération de mise à jour ou de suppression.

---
