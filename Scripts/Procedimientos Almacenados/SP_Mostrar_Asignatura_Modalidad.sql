delimiter //
create procedure SP_Mostrar_Asignatura_Modalidad
(
)
begin
	SELECT a.DESCRIPCION as ASIGNATURA, m.DESCRIPCION as MODALIDAD FROM ASIGNATURA a inner join asignatura_modalidad am on a.ID = am.ID_ASIGNATURA
								inner join modalidad m on am.ID_MODALIDAD = m.ID ORDER BY a.DESCRIPCION;
end//
delimiter ;

call SP_Mostrar_Asignatura_Modalidad();