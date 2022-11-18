delimiter //
create procedure SP_Eliminar_Personal
(
	_cedula char(18)
)
begin
	/*delete from personal where CEDULA=_cedula;*/
    UPDATE PERSONAL SET ESTADO_A=0 WHERE CEDULA= _cedula ;
	select "PERSONAL ELIMINADO DE LA BASE DE DATOS" AS "MENSAJE";
end//
delimiter ;
