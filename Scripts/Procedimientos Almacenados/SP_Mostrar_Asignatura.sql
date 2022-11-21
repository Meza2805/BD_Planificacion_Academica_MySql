delimiter //
create procedure SP_Mostrar_Asignatura
(
)
begin
	select ID,DESCRIPCION AS ASIGNATURA, if(ESTADO =1,'ACTIVO','NO ACTIVO') AS ESTADO from asignatura 
    WHERE ESTADO_A = 1
    ORDER BY DESCRIPCION;
end//
delimiter ;

call SP_Eliminar_Asigantura(23)

call SP_Mostrar_Asignatura();
SELECT * FROM ASIGNATURA;