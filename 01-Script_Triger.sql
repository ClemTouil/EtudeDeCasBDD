--TRG02 : trigger permettant d’avoir toujours le nom d’une tâche en majuscule au
--sein de la base de données.
CREATE TRIGGER UpperNameTache ON TACHE.Nom
AFTER INSERT, UPDATE 
AS
  update t
     set Nom= ucase(i.Nom)
  FROM TACHE.Nom  t
  JOIN inserted i
    ON i.Id_tache = t.Id_tache
  WHERE t.Nom <> upper(i.Nom)