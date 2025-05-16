# 🧠 SQL – Questions & Solutions : Opérations CRUD sur la base `training`

## 🎯 Solution

## 🏗️ 1. Initialisation de la base

### ❓ Créer la base de données `training` si elle n’existe pas, et l’utiliser :

```sql
CREATE DATABASE IF NOT EXISTS training;
USE training;
```

### ❓ Créer la table `students` avec les colonnes :

- `id` (clé primaire auto-incrémentée),
- `first_name` (prénom),
- `last_name` (nom),
- `birth_date` (date de naissance),
- `email` (adresse mail) :

```sql
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    email VARCHAR(100) UNIQUE
);
```

---

## ✏️ 2. INSERT – Création de données

### ❓ 1. Insérer l’étudiant John Doe, né le 18 octobre 2006, mail : john.doe@gmail.com

```sql
INSERT INTO student (first_name, last_name, birth_date, email)
VALUES ('John', 'Doe', '2006-10-18', 'john.doe@gmail.com');
```

### ❓ 2. Insérer Jane Smith, née le 10 avril 2005, mail : janesmith@outlook.fr

```sql
INSERT INTO students (first_name, last_name, birth_date, email)
VALUES ('Jane', 'Smith', '2005-04-10', 'janesmith@outlook.fr');
```

### ❓ 3. Insérer Alice Johnson, née le 1 janvier 2006, mail : alicejohn@gmail.com

```sql
INSERT INTO students (first_name, last_name, birth_date, email)
VALUES ('Alice', 'Johnson', '2006-01-01', 'alicejohn@gmail.com');
```

### ❓ 4. Insérer Bob Williams, né le 25 mars 2005, mail : bobywiliams@live.fr

```sql
INSERT INTO students (first_name, last_name, birth_date, email)
VALUES ('Bob', 'Williams', '2005-03-25', 'bobywiliams@live.fr');
```

---

## 🔍 3. SELECT – Lecture de données

### ❓ 5. Sélectionner tous les étudiants

```sql
SELECT * FROM students;
```

### ❓ 6. Sélectionner uniquement les prénoms et noms

```sql
SELECT first_name, last_name FROM students;
```

### ❓ 7. Sélectionner les étudiants nés avant 2006

```sql
SELECT * FROM students WHERE birth_date < '2006-01-01';
```

### ❓ 8. Sélectionner les étudiants dont le nom commence par la lettre "A"

```sql
SELECT * FROM students WHERE last_name LIKE 'A%';
```

### ❓ 9. Sélectionner les étudiants dont le nom contient la lettre "E" ou "J"

```sql
SELECT * FROM students
WHERE last_name LIKE '%E%' OR last_name LIKE '%J%';
```

---

## 🛠️ 4. UPDATE – Modification

### ❓ 10. Modifier la date de naissance d’Alice Johnson en 5 janvier 2006

```sql
UPDATE students
SET birth_date = '2006-01-05'
WHERE first_name = 'Alice' AND last_name = 'Johnson';
```

---

## 🗑️ 5. DELETE – Suppression

### ❓ 11. Supprimer l’étudiant Bob Williams

```sql
DELETE FROM students
WHERE first_name = 'Bob' AND last_name = 'Williams';
```

---

## ❓ 6. Bonus

### ❓ 12. Afficher le nombre total d’étudiants inscrits

```sql
SELECT COUNT(*) AS total_etudiants FROM students;



-- 12. Nombre d’étudiants dont le nom commence par J
SELECT COUNT(\*) FROM students WHERE last_name LIKE 'J%';

-- 13. Nombre total d'étudiants
SELECT COUNT(\*) AS total_students FROM students;

-- 14. Étudiant le plus jeune
SELECT \* FROM students ORDER BY birth_date DESC LIMIT 1;

-- 15. Étudiant le plus âgé
SELECT \* FROM students ORDER BY birth_date ASC LIMIT 1;

-- 16. Date de naissance la plus ancienne
SELECT MIN(birth_date) AS oldest_birth FROM students;

-- 17. Date de naissance la plus récente
SELECT MAX(birth_date) AS youngest_birth FROM students;

-- 18. Nombre d'étudiants par année de naissance
SELECT YEAR(birth_date) AS birth_year, COUNT(\*) AS total
FROM students
GROUP BY YEAR(birth_date);


```

---
