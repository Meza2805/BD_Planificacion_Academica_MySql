delimiter //
create procedure SP_Mostrar_Asignatura_SModalidad
(
 _ID_MODALIDAD INT
)
begin
	select a.ID,DESCRIPCION AS ASIGNATURA, if(ESTADO =1,'ACTIVO','NO ACTIVO') AS ESTADO from asignatura a
    inner join asignatura_modalidad am on a.ID = am.ID_ASIGNATURA
    WHERE ESTADO_A = 1 and am.ID_MODALIDAD =  _ID_MODALIDAD
    ORDER BY DESCRIPCION;
end//
delimiter ;

select * from asignatura;
select * from asignatura_modalidad;
select * from modalidad;

call SP_Mostrar_Asignatura_SModalidad (4);

call SP_Mostrar_Grupos() 