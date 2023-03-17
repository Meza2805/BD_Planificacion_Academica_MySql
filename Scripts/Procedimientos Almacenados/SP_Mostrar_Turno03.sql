delimiter //
create procedure SP_Mostrar_Turno03
(
)
begin
	select ID, DESCRIPCION, HORARIO from turno order by ID;
end

//
delimiter ;

CALL SP_Mostrar_Turno03