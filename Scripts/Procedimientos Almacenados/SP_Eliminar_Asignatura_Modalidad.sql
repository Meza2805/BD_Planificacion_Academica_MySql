delimiter //
create procedure SP_Eliminar_Asignatura_Modalidad
(
_ID INT
)
begin
	update asignatura_modalidad set ESTADO_AM = 0 where ID = _ID;
    SELECT "ASIGNACION A MODALIDAD ELIMINADA" AS "MENSAJE";
end//
delimiter ;


select * from asignatura_modalidad;