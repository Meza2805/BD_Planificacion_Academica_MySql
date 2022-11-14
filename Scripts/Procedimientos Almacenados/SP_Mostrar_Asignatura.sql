delimiter //
create procedure SP_Mostrar_Asignatura
(
)
begin
	select ID,DESCRIPCION AS ASIGNATURA, if(ESTADO =1,'ACTIVO','NO ACTIVO') AS ESTADO from asignatura ORDER BY DESCRIPCION;
end//
delimiter ;

call SP_Mostrar_Asignatura()