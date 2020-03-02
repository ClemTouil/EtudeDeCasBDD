--Alter Table clé primaire
ALTER TABLE SALARIE 
  ADD CONSTRAINT pk_Id_salarie PRIMARY KEY (
    Id_salarie)  ;
ALTER TABLE MATERIEL 
  ADD CONSTRAINT pk_Id_materiel PRIMARY KEY (
    Id_materiel)  ;

ALTER TABLE PROJET 
  ADD CONSTRAINT pk_Id_projet PRIMARY KEY (
    Id_projet)  ;
ALTER TABLE EQUIPE 
  ADD CONSTRAINT pk_Id_equipe PRIMARY KEY (
    Id_equipe)  ;
ALTER TABLE TACHE 
  ADD CONSTRAINT pk_Id_tache PRIMARY KEY (
    Id_tache)  ;
ALTER TABLE CLIENT 
  ADD CONSTRAINT pk_Id_client PRIMARY KEY (
    Id_client)  ;
ALTER TABLE CONTACT 
  ADD CONSTRAINT pk_Id_contact PRIMARY KEY (
    Id_contact)  ;
ALTER TABLE DIVISION 
  ADD CONSTRAINT pk_Id_division PRIMARY KEY (
    Id_division)  ;
ALTER TABLE   INTEGRER
  ADD CONSTRAINT pk_Id_salarie_Id_equipe  PRIMARY KEY (
    Id_salarie, Id_equipe)  ;
ALTER TABLE  EFFECTUER
  ADD CONSTRAINT pk_Id_salarie_Id_tache  PRIMARY KEY (
    Id_salarie, Id_tache)  ;


--Alter Table pour les clés étrangères 
ALTER TABLE SALARIE
  ADD CONSTRAINT fk_division
    FOREIGN KEY (Id_division)
      REFERENCES DIVISION(Id_division);

ALTER TABLE SALARIE
  ADD CONSTRAINT fk_salarie
    FOREIGN KEY (Id_salarie)
      REFERENCES SALARIE(Id_salarie);

ALTER TABLE MATERIEL
  ADD CONSTRAINT fk_salarie
    FOREIGN KEY (Id_salarie)
      REFERENCES SALARIE;

ALTER TABLE MATERIEL
  ADD CONSTRAINT fk_materiel
    FOREIGN KEY (Id_materiel)
      REFERENCES MATERIEL(Id_materiel);

ALTER TABLE PROJET
  ADD CONSTRAINT fk_salarie
    FOREIGN KEY (Id_salarie)
      REFERENCES SALARIE(Id_salarie);



ALTER TABLE PROJET
  ADD CONSTRAINT fk_client
    FOREIGN KEY (Id_client)
      REFERENCES CLIENT(Id_client);

ALTER TABLE TACHE
  ADD CONSTRAINT fk_projet
    FOREIGN KEY (Id_projet)
      REFERENCES PROJET(Id_projet);

ALTER TABLE CONTACT
  ADD CONSTRAINT fk_client
    FOREIGN KEY (Id_client)
      REFERENCES CLIENT(Id_client);

ALTER TABLE INTEGRER
  ADD CONSTRAINT fk_salarie
    FOREIGN KEY (Id_salarie)
      REFERENCES SALARIE(Id_salarie);

ALTER TABLE INTEGRER
  ADD CONSTRAINT fk_equipe
    FOREIGN KEY (Id_equipe)
      REFERENCES EQUIPE(Id_equipe);

ALTER TABLE EFFECTUER
  ADD CONSTRAINT fk_salarie
    FOREIGN KEY (Id_salarie)
      REFERENCES SALARIE(Id_salarie);

ALTER TABLE EFFECTUER
  ADD CONSTRAINT fk_tache
    FOREIGN KEY (Id_tache)
      REFERENCES TACHE(Id_tache);