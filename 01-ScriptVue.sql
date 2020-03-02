CREATE OR REPLACE VIEW VUEBDD AS 
SELECT s.Id_salarie,s.Nom,s.preNom,s.mail,s.Id_division,d.Nom AS Nom_Division FROM SALARIE s,DIVISION d
WHERE s.Id_division=d.Id_division;

SELECT * FROM VUEBDD;