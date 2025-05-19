# 🎮 TP SQL – Solutions

## 📥 Importation de la base

Importer le fichier `video_games.sql` dans votre SGBD (ex : MySQL Workbench).

---

## 🧠 Requêtes SQL

1.

```sql
SELECT * FROM game;
```

2.

```sql
SELECT COUNT(*) AS total_games FROM game;
```

3.

```sql
SELECT g.game_name, ge.genre_name
FROM game g
JOIN genre ge ON g.genre_id = ge.id;
```

4.

```sql
SELECT ge.genre_name, COUNT(*) AS total
FROM game g
JOIN genre ge ON g.genre_id = ge.id
GROUP BY ge.genre_name;
```

5.

```sql
SELECT COUNT(*) FROM game_platform gp
JOIN platform p ON gp.platform_id = p.id
WHERE p.platform_name = 'GBA';
```

6.

```sql
SELECT p.platform_name, COUNT(*) AS total
FROM game_platform gp
JOIN platform p ON gp.platform_id = p.id
GROUP BY p.platform_name;
```

7.

```sql
SELECT ge.genre_name, COUNT(*) AS total
FROM game g
JOIN genre ge ON g.genre_id = ge.id
GROUP BY ge.genre_name
ORDER BY total DESC
LIMIT 5;
```

8.

```sql
SELECT game_name FROM game WHERE game_name LIKE 'Super%';
```

9.

```sql
SELECT g.game_name, ge.genre_name, p.platform_name
FROM game g
JOIN genre ge ON g.genre_id = ge.id
JOIN game_platform gp ON g.id = gp.game_id
JOIN platform p ON gp.platform_id = p.id;
```

10.

```sql
SELECT ge.genre_name
FROM genre ge
LEFT JOIN game g ON g.genre_id = ge.id
WHERE g.id IS NULL;
```

11.

```sql
SELECT r.region_name, SUM(rs.num_sales) AS total_sales
FROM region_sales rs
JOIN region r ON rs.region_id = r.id
GROUP BY r.region_name;
```

12.

```sql
SELECT g.game_name, SUM(rs.num_sales) AS total_sales
FROM game g
JOIN game_platform gp ON g.id = gp.game_id
JOIN region_sales rs ON gp.id = rs.game_platform_id
JOIN region r ON r.id = rs.region_id
WHERE r.region_name = 'Europe'
GROUP BY g.game_name
ORDER BY total_sales DESC
LIMIT 10;
```

13.

```sql
SELECT DISTINCT publisher_name FROM publisher;
```

14.

```sql
SELECT p.publisher_name, COUNT(*) AS total_games
FROM publisher p
JOIN game_publisher gp ON p.id = gp.publisher_id
GROUP BY p.publisher_name;
```

15.

```sql
SELECT p.publisher_name, SUM(rs.num_sales) AS total_sales
FROM publisher p
JOIN game_publisher gp ON p.id = gp.publisher_id
JOIN game_platform gplat ON gp.id = gplat.game_publisher_id
JOIN region_sales rs ON gplat.id = rs.game_platform_id
GROUP BY p.publisher_name;
```

16.

```sql
SELECT p.publisher_name, SUM(rs.num_sales) AS total_sales
FROM publisher p
JOIN game_publisher gp ON p.id = gp.publisher_id
JOIN game_platform gplat ON gp.id = gplat.game_publisher_id
JOIN region_sales rs ON gplat.id = rs.game_platform_id
JOIN region r ON rs.region_id = r.id
WHERE r.region_name = 'Japan'
GROUP BY p.publisher_name
ORDER BY total_sales DESC;
```

17.

```sql
SELECT p.publisher_name, SUM(rs.num_sales) AS total_sales
FROM publisher p
JOIN game_publisher gp ON p.id = gp.publisher_id
JOIN game_platform gplat ON gp.id = gplat.game_publisher_id
JOIN region_sales rs ON gplat.id = rs.game_platform_id
JOIN region r ON rs.region_id = r.id
WHERE r.region_name = 'Europe'
GROUP BY p.publisher_name
ORDER BY total_sales DESC;
```

---

## ⚙️ Fonctions, procédures et trigger

18. Fonction : jeu le plus vendu en Europe

```sql
DELIMITER //
CREATE FUNCTION jeu_plus_vendu_europe()
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
  DECLARE nom_jeu VARCHAR(255);
  SELECT g.game_name INTO nom_jeu
  FROM game g
  JOIN game_platform gp ON g.id = gp.game_id
  JOIN region_sales rs ON gp.id = rs.game_platform_id
  JOIN region r ON rs.region_id = r.id
  WHERE r.region_name = 'Europe'
  GROUP BY g.game_name
  ORDER BY SUM(rs.num_sales) DESC
  LIMIT 1;
  RETURN nom_jeu;
END //
DELIMITER ;
```

19. Procédure : jeux publiés par un éditeur donné

```sql
DELIMITER //
CREATE PROCEDURE jeux_par_editeur(IN nom_editeur VARCHAR(255))
BEGIN
  SELECT g.game_name, p.publisher_name
  FROM game g
  JOIN game_publisher gp ON g.id = gp.game_id
  JOIN publisher p ON gp.publisher_id = p.id
  WHERE p.publisher_name = nom_editeur;
END //
DELIMITER ;
```

20. Trigger : log de suppression de jeu

```sql
CREATE TABLE log_jeu (
  id INT AUTO_INCREMENT PRIMARY KEY,
  game_id INT,
  game_name VARCHAR(255),
  date_suppression DATETIME
);

DELIMITER //
CREATE TRIGGER log_suppression_jeu
BEFORE DELETE ON game
FOR EACH ROW
BEGIN
  INSERT INTO log_jeu(game_id, game_name, date_suppression)
  VALUES (OLD.id, OLD.game_name, NOW());
END //
DELIMITER ;
```
