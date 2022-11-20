delimiter //
create procedure SP_Eliminar_Modalidad
(
	_ID int
)
begin
	update modalidad set ESTADO_M = 0 where ID = _ID;
    select "MODALIDAD ELIMINADA DE LA BASE DE DATOS" AS "MENSAJE";
end//
delimiter ;
CALL SP_Eliminar_Modalidad(12)

