# 🛠️ Opérations du CRUD en SQL : Projet « Library »

## 📁 1. Création de la base de données et de la table `book`

```sql
CREATE DATABASE library;
USE library;

CREATE TABLE book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    release_date DATE NOT NULL,
    authors VARCHAR(255) NOT NULL,
    available BOOLEAN NOT NULL DEFAULT TRUE
);
```

---

## ➕ 2. Insertion des livres (`CREATE`)

```sql
INSERT INTO book (title, description, release_date, authors, available)
VALUES (
  'Moby Dick',
  "The book is the sailor Ishmael's narrative of the obsessive quest of Ahab, captain of the whaling ship Pequod, for revenge against Moby Dick, the giant white whale that on the ship's previous voyage bit off Ahab's leg at the knee.",
  '1851-10-18',
  'Herman Melville',
  TRUE
);

INSERT INTO book (title, description, release_date, authors, available)
VALUES (
  'The Great Gatsby',
  "Set in Jazz Age New York, it tells the tragic story of Jay Gatsby, a self-made millionaire, and his pursuit of Daisy Buchanan, a wealthy young woman whom he loved in his youth.",
  '1925-04-10',
  'F. Scott Fitzgerald',
  TRUE
);

INSERT INTO book (title, description, release_date, authors, available)
VALUES (
  'Frankenstein',
  "Victor Frankenstein tells Walton his story—a happy childhood, an unhealthy obsession with alchemy, and his engagement to his cousin Elizabeth. Victor enrolls at the University of Ingolstadt, where he discovers the secret of life and builds a creature from dead bodies.",
  '1818-01-01',
  'Mary Shelley',
  FALSE
);

INSERT INTO book (title, release_date, authors, available)
VALUES (
  'Robinson Crusoe',
  '1719-04-25',
  'Daniel Defoe',
  TRUE
);
```

---

## 📖 3. Sélection de données (`READ`)

### 🔍 Tous les livres

```sql
SELECT * FROM book;
```

### 🔍 Livres de l’auteur « Herman Melville »

```sql
SELECT * FROM book
WHERE authors = 'Herman Melville';
```

### 🔍 Livres sans description

```sql
SELECT * FROM book
WHERE description IS NULL;
```

### 🔍 Livres publiés avant 1900

```sql
SELECT * FROM book
WHERE release_date < '1900-01-01';
```

---

## ✏️ 4. Mise à jour (`UPDATE`)

### 📝 Ajouter une description à « Robinson Crusoe »

```sql
UPDATE book
SET description = "Crusoe is on a ship bound for Africa, where he plans to buy slaves for his plantations in South America, when the ship is wrecked on an island and Crusoe is the only survivor. Alone on a desert island, Crusoe manages to survive thanks to his pluck and pragmatism."
WHERE title = 'Robinson Crusoe';
```

---

## 🔍 5. Recherche avancée

### 📘 Livres contenant le mot « ship » dans la description

```sql
SELECT * FROM book
WHERE description LIKE '%ship%';
```

---

## 🗑️ 6. Suppression (`DELETE`)

### 🚫 Supprimer les livres indisponibles

```sql
DELETE FROM book
WHERE available = FALSE;
```

---

## ✅ Critères atteints

- Utilisation des quatre opérations CRUD
- Bonne structuration de la base de données
- Requêtes complexes avec `LIKE`, `IS NULL`, comparateurs de dates
- Bonne compréhension des types SQL (`TEXT`, `BOOLEAN`, `DATE`, etc.)
