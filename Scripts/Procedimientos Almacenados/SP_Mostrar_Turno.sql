delimiter //
create procedure SP_Mostrar_Turno
(
)
begin
	SELECT ID, concat(DESCRIPCION ,", HORARIO: ",  HORARIO) as DESCRIPCION  FROM turno;
end//
delimiter ;

call SP_Eliminar_Asigantura(23)

call SP_Mostrar_Asignatura();
SELECT * FROM ASIGNATURA;

SELECT concat(DESCRIPCION ,", HORARIO: ",  HORARIO)  FROM turno;

select * from turno;