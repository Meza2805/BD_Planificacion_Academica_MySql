delimiter //
create procedure SP_Eliminar_Asignatura_Modalidad
(
_ID INT
)
begin
	if ((select ESTADO_AM from asignatura_modalidad where ID = _ID) = 0) then
		/*update asignatura_modalidad set ESTADO_AM = 0 where ID = _ID;*/
        delete from asignatura_modalidad where ID = _ID;
		SELECT "ASIGNACION A MODALIDAD ELIMINADA" AS "MENSAJE";
        else 
        SELECT "NO ES POSIBLE ELIMINAR UNA ASIGNACION ACTIVA" AS "MENSAJE";
    end if;
    end//
delimiter ;


select * from asignatura_modalidad;
select ESTADO_AM from asignatura_modalidad;

CALL SP_Eliminar_Asignatura_Modalidad(32)




