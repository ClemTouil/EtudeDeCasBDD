--FCT01 : fonction qui, pour un salarié donné, retourne le nombre de tâches sur
--lesquelles il a travaillé ou sur lesquelles il travaille.
CREATE OR REPLACE FUNCTION NbTaches
(Id_salarie CHARACTER)
RETURNS INTEGER
AS $$
BEGIN
	RETURN 
	(SELECT COUNT(*)
	FROM SALARIE
	WHERE num_matricule = Id_salarie);
END;
$$ LANGUAGE plpgsql;


