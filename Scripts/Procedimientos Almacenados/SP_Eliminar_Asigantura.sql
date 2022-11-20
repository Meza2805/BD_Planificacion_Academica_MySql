delimiter //
create procedure SP_Eliminar_Asigantura
(
	_ID int
)
begin
	update asignatura set ESTADO_A = 0 where ID = _ID;
    select "ASIGNATURA ELIMINADA CORRECTAMENTE" AS "MENSAJE";
end//
delimiter ;

select * from asignatura;