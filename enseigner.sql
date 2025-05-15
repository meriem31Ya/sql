CREATE TABLE IF NOT EXISTS apprenant (
    id_apprenant INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(10) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    date_naissance DATE NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS formation (
    id_formation INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    date_debut DATE,
    date_fin DATE NOT NULL,
    duree INT,
    statut VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS centre_formation (
    id_centre INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) DEFAULT 'simplon',
    adresse VARCHAR(50),
    statut ENUM ('en cours', 'passé', 'à venir') DEFAULT 'à venir'
);

-- Table d'association pour plusieurs apprenants dans plusieurs formations
CREATE TABLE IF NOT EXISTS inscription (
    id_apprenant INT,
    id_formation INT,
    PRIMARY KEY (id_apprenant, id_formation),
    FOREIGN KEY (id_apprenant) REFERENCES apprenant(id_apprenant),
    FOREIGN KEY (id_formation) REFERENCES formation(id_formation)
);

-- Table d'association entre formation et centre
CREATE TABLE IF NOT EXISTS enseigner (
    id_formation INT,
    id_centre INT,
    PRIMARY KEY(id_formation, id_centre),
    FOREIGN KEY (id_formation) REFERENCES formation(id_formation),
    FOREIGN KEY (id_centre) REFERENCES centre_formation(id_centre)
);
