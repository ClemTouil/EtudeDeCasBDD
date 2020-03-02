--Insertion du jeu de donnée 
INSERT INTO CLIENT
    (Nom,Raison_sociale,Adresse,Secteur_activite)
VALUES
    ('ROGS1', 'R1', 'Adre1', 'SA1'),
    ('ROGS2', 'R2', 'Adre2', 'SA2'),
    ('ROGS3', 'R3', 'Adre3', 'SA3')
,


INSERT INTO DIVISION
    (Numero,Nom,adresse,localite)
VALUES
    (1, 'NT1', 'ADRT1', 'TLOCAL1'),
    (2, 'NT2', 'ADRT2', 'TLOCAL2'),
    (3, 'NT3', 'ADRT3', 'TLOCAL3')
,


INSERT INTO CONTACT
    (Nom,PreNom,Telephone,Mail,RoleContact,Id_client)
VALUES
    ('N1', 'P1', '00.11.12.13.11', 'M1', 'R1', 1),
    ('N2', 'P2', '00.11.12.13.12', 'M2', 'R2', 2),
    ('N3', 'P3', '00.11.12.13.13', 'M3', 'R3', 3)
,


INSERT INTO SALARIE
    (Nom,preNom,telephone,trigramme,mail,num_matricule,matricule_superieur,salaire,Id_projet,Id_division)
VALUES
    ('N1', 'P1', 'TEL1', 'TR1', 'MAIL1', 1, 9, 1, 1, 1),
    ('N2', 'P2', 'TEL2', 'TR2', 'MAIL2', 2, 9, 2, 2, 2),
    ('N3', 'P3', 'TEL3', 'TR3', 'MAIL3', 3, 9, 3, 3, 3)
,

INSERT INTO MATERIEL
    (Nom,typeMateriel,ref_constructeur,Numero,date_debuemprunt,date_fin_emprunt,Id_salarie)
VALUES
    ('Nom1', 'TYPE1', 'REF1', 1, '11/08/2020', '21/08/2020', 1),
    ('Nom2', 'TYPE2', 'REF2', 2, '12/08/2020', '22/08/2020', 2),
    ('Nom3', 'TYPE3', 'REF3', 3, '13/08/2020', '23/08/2020', 3)
,


INSERT INTO PROJET
    (Numero,description,theme,date_debut,date_fin,Id_salarie,Id_client)
VALUES
    (1, 'DEACRIPTION1', 'THEME1', '11/08/2020', '21/08/2020', 1, 1),
    (2, 'DEACRIPTION2', 'THEME2', '12/08/2020', '22/08/2020', 2, 2),
    (3, 'DEACRIPTION3', 'THEME3', '13/08/2020', '23/08/2020', 3, 3)
,


INSERT INTO EQUIPE
    (pole_de_competence,nb_employe)
VALUES
    ('POLE1', 1),
    ('POLE2', 2),
    ('POLE3', 3)
,


INSERT INTO TACHE
    (Numero,Nom,description_tache,Id_projet)
VALUES
    ('1', 'N1', 'D1', 1),
    ('2', 'N2', 'D2', 2),
    ('3', 'N3', 'D3', 3)
,


INSERT INTO EFFECTUER
    (date_debutache,date_fin_tache,Id_salarie,Id_tache)
VALUES
    ('11/08/2020', '21/08/2020', 1, 1),
    ('12/08/2020', '22/08/2020', 2, 2),
    ('13/08/2020', '23/08/2020', 3, 3)
,



INSERT INTO INTEGRER
    (date_debuequipe,date_fin_equipe,Id_salarie,Id_equipe)
VALUES
    ('11/08/2020', '21/08/2020', 1, 1),
    ('12/08/2020', '22/08/2020', 2, 2),
    ('13/08/2020', '23/08/2020', 3, 3)
,
