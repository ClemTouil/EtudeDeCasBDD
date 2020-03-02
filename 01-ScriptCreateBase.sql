DROP TABLE IF EXISTS INTEGRER
CASCADE;
DROP TABLE IF EXISTS EFFECTUER
CASCADE;
DROP TABLE IF EXISTS CLIENT
CASCADE;
DROP TABLE IF EXISTS CONTACT
CASCADE;
DROP TABLE IF EXISTS DIVISION
CASCADE;
DROP TABLE IF EXISTS EQUIPE
CASCADE;
DROP TABLE IF EXISTS MATERIEL
CASCADE;
DROP TABLE IF EXISTS PROJET
CASCADE;
DROP TABLE IF EXISTS SALARIE
CASCADE;
DROP TABLE IF EXISTS TACHE
CASCADE;


CREATE TABLE CLIENT
(
    Id_client SERIAL NOT NULL,
    Nom varchar,
    Raison_sociale varchar,
    Adresse varchar,
    Secteur_activite varchar
);


CREATE TABLE CONTACT
(
    Id_contact SERIAL NOT NULL,
    Nom varchar,
    PreNom varchar,
    Telephone CHARACTER(14) NULL,
    Mail varchar,
    RoleContact varchar,
    Id_client INT NOT NULL

);


CREATE TABLE DIVISION
(
    Id_division SERIAL NOT NULL,
    Numero NUMERIC(4) NULL,
    Nom varchar,
    adresse varchar,
    localite varchar

);


CREATE TABLE EQUIPE
(
    Id_equipe SERIAL NOT NULL,
    pole_de_competence varchar,
    nb_employe NUMERIC(10) NULL
);


CREATE TABLE MATERIEL
(
    Id_materiel SERIAL NOT NULL,
    Nom varchar,
    typeMateriel varchar,
    ref_constructeur varchar,
    Numero NUMERIC(20) NULL,
    date_debuemprunt date NULL,
    date_fin_emprunt date NULL,
    Id_salarie int not  NULL

);


CREATE TABLE PROJET
(
    Id_projet SERIAL NOT NULL,
    Numero NUMERIC(10) NULL,
    description varchar,
    theme varchar,
    date_debut DATE NULL,
    date_fin DATE NULL,
    Id_salarie int NOT NULL,
    Id_client int NOT NULL
);


CREATE TABLE SALARIE
(
    Id_salarie SERIAL NOT NULL,
    Nom varchar,
    preNom varchar,
    telephone CHARACTER(14) NULL,
    trigramme CHARACTER(3) NULL,
    mail varchar,
    num_matricule NUMERIC NULL,
    matricule_superieur NUMERIC NULL,
    salaire NUMERIC(20) NULL,
    Id_projet int NULL,
    Id_division int NOT NULL



);


CREATE TABLE TACHE
(
    Id_tache SERIAL NOT NULL,
    Numero NUMERIC(10) NULL,
    Nom varchar,
    description_tache varchar,
    Id_projet int NOT NULL
);

CREATE TABLE EFFECTUER
(
    date_debutache date null,
    date_fin_tache date null,
    Id_salarie int not null,
    Id_tache int not null

);
CREATE TABLE INTEGRER
(
    date_debuequipe date null,
    date_fin_equipe date null,
    Id_salarie int not null,
    Id_equipe int not null

);
