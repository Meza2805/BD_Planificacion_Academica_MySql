delimiter //
create procedure SP_Mostrar_Actividad01
(
	
)
begin
	select ID as CODIGO, DESCRIPCION from actividad;
end//
delimiter ;

CALL SP_Mostrar_Actividad01();
select * from asignatura;
