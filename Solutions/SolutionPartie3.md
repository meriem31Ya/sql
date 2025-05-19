# 📘 TP SQL – Étudiants, Formations, Centres (Version mise à jour)

## Requêtes SQL avec solutions

### 1. Afficher tous les étudiants

```sql
SELECT * FROM student;
```

### 2. Afficher toutes les formations

```sql
SELECT * FROM training;
```

### 3. Afficher tous les centres de formation

```sql
SELECT * FROM training_center;
```

### 4. Afficher la formation à laquelle Alice est inscrite

```sql
SELECT t.*
FROM training t
JOIN student s ON t.training_id = s.training_id
WHERE s.student_name = 'Alice';
```

### 5. Quel est le statut de la formation suivie par Bob ?

```sql
SELECT t.training_status
FROM training t
JOIN student s ON s.training_id = t.training_id
WHERE s.student_name = 'Bob';
```

### 6. Afficher les formations ayant le statut "terminée"

```sql
SELECT * FROM training
WHERE training_status = 'finished';
```

### 7. Afficher tous les étudiants avec leurs formations (même sans inscription)

```sql
SELECT s.student_name, t.training_name AS training
FROM student s
LEFT JOIN training t ON t.training_id = s.training_id;
```

### 8. Nombre d’étudiants inscrits par formation

```sql
SELECT t.name, COUNT(s.student_id) AS nb_students
FROM training t
LEFT JOIN student s ON s.training_id = t.training_id
GROUP BY t.training_name;

```

### 9. Formations ayant plus de 2 étudiants

```sql
SELECT t.student_name, COUNT(s.id) AS nb_students
FROM training t
JOIN student s ON s.training_id = t.training_id
GROUP BY t.student_name
HAVING nb_students > 2;

```

### 10. Étudiants non inscrits à une formation

```sql
SELECT *
FROM student
WHERE training_id IS NULL;

```

### 11. Étudiants avec leurs formations associées (INNER JOIN)

```sql
SELECT s.name, t.name AS training
FROM student s
JOIN training t ON s.training_id = t.training_id;

```

### 12. Centres et leurs formations (y compris ceux sans formation)

```sql
SELECT tc.training_center_name AS center, t.training_name AS training
FROM training_center tc
LEFT JOIN teach te ON tc.training_center_id = te.training_center_id
LEFT JOIN training t ON te.training_id = t.training_id;
```

### 13. Centres avec formations en cours ou planifiées

```sql
SELECT tc.training_center_name AS center, t.training_name AS training, t.training_status As status
FROM training_center tc
JOIN teach te ON tc.training_center_id = te.training_center_id
JOIN training t ON te.training_id = t.training_id
WHERE t.training_status IN ('en cours', 'planifiée');

```

### 14. Nombre de formations par centre

```sql
SELECT tc.training_center_name AS center, COUNT(t.training_id) AS nb_trainings
FROM training_center tc
LEFT JOIN teach te ON tc.training_center_id = te.training_center_id
LEFT JOIN training t ON te.training_id = t.training_id
GROUP BY tc.training_center_name;

```

### 15. Centres avec plus de 2 formations

```sql
SELECT tc.training_center_name AS center, COUNT(t.training_id) AS nb_trainings
FROM training_center tc
LEFT JOIN teach te ON tc.training_center_id = te.training_center_id
LEFT JOIN training t ON te.training_id = t.training_id
GROUP BY tc.training_center_name;
HAVING COUNT(t.id) >2
```

### 16. Requête précédente avec tri décroissant

```sql
SELECT tc.training_center_name AS center, COUNT(t.training_id) AS nb_trainings
FROM training_center tc
LEFT JOIN teach te ON tc.training_center_id = te.training_center_id
LEFT JOIN training t ON te.training_id = t.training_id
GROUP BY tc.training_center_name;
HAVING COUNT(t.id) >2
ORDER BY nb_trainings DESC;

```

### 17. Formations sans étudiants

```sql

SELECT t.*
FROM training t
LEFT JOIN student s ON t.training_id = s.training_id
WHERE s.training_id IS NULL;

```

### 18. Procédure pour insérer un étudiant

```sql
DELIMITER //
CREATE PROCEDURE add_student (
  IN student_name VARCHAR(100),
  IN training_id INT
)
BEGIN
  INSERT INTO student(name, training_id)
  VALUES (student_name, training_id);
END //
DELIMITER ;
```
