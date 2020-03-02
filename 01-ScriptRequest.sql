--REQ01 : requête permettant de connaitre les tâches par projet affectées à chaque
--salarié
SELECT DISTINCT(t.Nom),p.description,s.num_matricule FROM TACHE t,PROJET p,salarie s
WHERE t.Id_projet=p.Id_projet 
AND s.Id_salarie=p.Id_salarie;


--REQ02 : requête permettant de connaitre le nombre de jours travaillés par salarié
--pour chaque équipe à laquelle il a participé
SELECT s.Id_salarie,(i.date_fin_equipe-i.date_debuequipe) AS Nb_Jours FROM INTEGRER i,EQUIPE e,salarie s
WHERE i.Id_equipe=e.Id_equipe 
AND s.Id_salarie=i.Id_salarie;


--REQ03 : requête permettant de connaitre la hiérarchie de l’entreprise.
SELECT preNom, Nom, num_matricule, num_matricule_supp AS chef
FROM SALARIE;


--REQ04 : requête permettant de connaitre la liste des clients pour lesquels chaque
--salarié a travaillé.
SELECT t.Nom FROM CLIENT t,PROJET p,SALARIE s
WHERE t.Id_client=p.Id_client
AND p.Id_salarie=s.Id_salarie;