delimiter //
create procedure SP_Mostrar_Cargo_Lista
(
)
begin
	select ID, DESCRIPCION, (if(ESTADO = 1,"ASIGNADO","SIN ASIGNACION")) AS ESTADO from cargo;
end//
delimiter ;
