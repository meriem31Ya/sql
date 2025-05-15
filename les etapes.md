# 📚 Projet MySQL – Centre de Formation

Ce projet présente une base de données simple pour gérer un **centre de formation**, avec des **formations** et des **apprenants**. Il couvre les étapes depuis l’accès à la console MySQL jusqu’à la première requête SQL.

---

## ✅ Étape 1 : Accéder à la console MySQL

```bash
mysql -u root -p
ETAPE2 2
CREATE USER 'utilisateur1'@'localhost' IDENTIFIED BY 'motdepassefort';
GRANT ALL PRIVILEGES ON *.* TO 'testmeriem'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
#  select user
SELECT USER(), CURRENT_USER();
#  touts les utilisateurs
SELECT User, Host FROM mysql.user;


#  modifier mot de passe

#

SHOW databases;
CREATE DATABASE centre_formation;
USE centre_formation;

#  importer
source lien direct avec /

mysqldump -u root -p centre_formation > centre_formation.sql


# inserer des données
-- Formations
INSERT INTO formations (nom, duree) VALUES
('Développement Web', 60),
('Data Analyst', 45);

-- Apprenants
INSERT INTO apprenants (nom, prenom, email, id_formation) VALUES
('Durand', 'Alice', 'alice.durand@email.com', 1),
('Lemoine', 'Bob', 'bob.lemoine@email.com', 2);
#  on peut inserer aussi
INSET iNTO APPRENANTS SET NOM="", prenom=""
alter table
update set
select year()

#  avancés

# getsions des permissions
select * from posts where match(content ) against ('recherche' IN NATURAL LANGUAGE MODE)
lister les mots
seelct * from information_schema.innodb_ft_default_stopword;
# myissam et innodb
innodb moteur de recherche par defaut
-- requettes
SELECT
apprenants.nom AS Nom,
apprenants.prenom AS Prénom,
formations.nom AS Formation
FROM apprenants
JOIN formations ON apprenants.id_formation = formations.id;

#  backup database
# exporter



creer un user avec des provileges
crer une base de donnees
creer une table
inserer des données

#  restore database
#
jointures
json data type ( maria db et mysql)
recuperer author-> "$.age"
like fulltext la recherche (rajouter un index : fulltext (selectionner un attribut (champs de type de text)))


#  gestion des permissions
grant regarder la doc et phpmyadmin

#  sauvegarde avec mysqldump
mysqldump -u root -p centre_formation > centre_formation.sql


```
