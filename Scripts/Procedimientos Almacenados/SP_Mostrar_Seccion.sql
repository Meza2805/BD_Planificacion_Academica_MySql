delimiter //
create procedure SP_Mostrar_Seccion
(
)
begin
	select ID,DESCRIPCION from seccion;
end//
delimiter ;

call SP_Eliminar_Asigantura(23)

call SP_Mostrar_Seccion;
SELECT * FROM ASIGNATURA;

SELECT concat(DESCRIPCION ,", HORARIO: ",  HORARIO)  FROM turno;

select ID,DESCRIPCION from seccion;