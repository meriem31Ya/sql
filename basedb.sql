CREATE TABLE IF NOT EXISTS formation (
    id_formation INT PRIMARY KEY AUTO_INCREMENT,
    statut VARCHAR(50)
    nom VARCHAR(50),
    date_debut DATE,
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;;

CREATE TABLE IF NOT EXISTS centre_formation (
    id_centre INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    adresse VARCHAR(50) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS apprenant (
    id_apprenant INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    date_naissance DATE,
    adresse VARCHAR(20),
    id_formation INT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE IF NOT EXISTS inscription (
    id_apprenant INT,
    id_formation INT,
    PRIMARY KEY (id_apprenant, id_formation)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS proposer (
    id_formation INT,
    id_centre INT,
    PRIMARY KEY(id_formation,id_centre)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE apprenant ADD FOREIGN KEY (id_formation) REFERENCES formation(id_formation);

ALTER TABLE proposer ADD FOREIGN KEY (id_formation) REFERENCES formation(id_formation);

ALTER TABLE proposer ADD FOREIGN KEY (id_centre) REFERENCES centre_formation(id_centre);
